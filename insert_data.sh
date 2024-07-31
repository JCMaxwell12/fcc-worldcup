#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# Truncate tables before inserting
echo $($PSQL "TRUNCATE games, teams")
# Insert
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do
	if [[ $YEAR != year ]]
	then
	# Teams
		# Find out if winner already exists in DB
		W_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
		# Insert into teams otherwise
		if [[ -z $W_ID ]]
		then
			echo $($PSQL "INSERT INTO teams(name) values('$WINNER')")
			W_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
		fi

		# Find out if opponent already exists in DB
		O_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
		# Insert into teams otherwise
		if [[ -z $O_ID ]]
		then
			echo $($PSQL "INSERT INTO teams(name) values('$OPPONENT')")
			O_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
		fi

	# Games
		# Insert
		echo $($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values($YEAR,'$ROUND',$W_ID,$O_ID,$O_GOALS,$W_GOALS)")
	fi
done

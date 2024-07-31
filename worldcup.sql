--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(15) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 225, 226, 2, 4);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 227, 228, 0, 2);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 226, 228, 1, 2);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 225, 227, 0, 1);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 226, 229, 2, 3);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 228, 230, 0, 2);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 227, 231, 1, 2);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 225, 232, 0, 2);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 228, 233, 1, 2);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 230, 234, 0, 1);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 227, 235, 2, 3);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 231, 236, 0, 2);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 226, 237, 1, 2);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 229, 238, 1, 2);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 232, 239, 1, 2);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 225, 240, 3, 4);
INSERT INTO public.games VALUES (81, 2014, 'Final', 241, 240, 0, 1);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 242, 231, 0, 3);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 240, 242, 0, 1);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 241, 231, 1, 7);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 242, 243, 0, 1);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 240, 227, 0, 1);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 231, 233, 1, 2);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 241, 225, 0, 1);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 231, 244, 1, 2);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 233, 232, 0, 2);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 225, 245, 0, 2);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 241, 246, 1, 2);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 242, 236, 1, 2);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 243, 247, 1, 2);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 240, 234, 0, 1);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 227, 248, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (225, 'France');
INSERT INTO public.teams VALUES (226, 'Croatia');
INSERT INTO public.teams VALUES (227, 'Belgium');
INSERT INTO public.teams VALUES (228, 'England');
INSERT INTO public.teams VALUES (229, 'Russia');
INSERT INTO public.teams VALUES (230, 'Sweden');
INSERT INTO public.teams VALUES (231, 'Brazil');
INSERT INTO public.teams VALUES (232, 'Uruguay');
INSERT INTO public.teams VALUES (233, 'Colombia');
INSERT INTO public.teams VALUES (234, 'Switzerland');
INSERT INTO public.teams VALUES (235, 'Japan');
INSERT INTO public.teams VALUES (236, 'Mexico');
INSERT INTO public.teams VALUES (237, 'Denmark');
INSERT INTO public.teams VALUES (238, 'Spain');
INSERT INTO public.teams VALUES (239, 'Portugal');
INSERT INTO public.teams VALUES (240, 'Argentina');
INSERT INTO public.teams VALUES (241, 'Germany');
INSERT INTO public.teams VALUES (242, 'Netherlands');
INSERT INTO public.teams VALUES (243, 'Costa Rica');
INSERT INTO public.teams VALUES (244, 'Chile');
INSERT INTO public.teams VALUES (245, 'Nigeria');
INSERT INTO public.teams VALUES (246, 'Algeria');
INSERT INTO public.teams VALUES (247, 'Greece');
INSERT INTO public.teams VALUES (248, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 248, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


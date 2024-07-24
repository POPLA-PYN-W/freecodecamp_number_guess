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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: guessing; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guessing (
    game_id integer NOT NULL,
    user_id integer,
    total_guesses integer DEFAULT 0
);


ALTER TABLE public.guessing OWNER TO freecodecamp;

--
-- Name: guessing_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guessing_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guessing_game_id_seq OWNER TO freecodecamp;

--
-- Name: guessing_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guessing_game_id_seq OWNED BY public.guessing.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    total_played integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: guessing game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guessing ALTER COLUMN game_id SET DEFAULT nextval('public.guessing_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: guessing; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guessing VALUES (2, 15, 351);
INSERT INTO public.guessing VALUES (3, 15, 351);
INSERT INTO public.guessing VALUES (4, 16, 351);
INSERT INTO public.guessing VALUES (5, 16, 351);
INSERT INTO public.guessing VALUES (6, 15, 353);
INSERT INTO public.guessing VALUES (7, 15, 352);
INSERT INTO public.guessing VALUES (8, 15, 351);
INSERT INTO public.guessing VALUES (42, 27, 351);
INSERT INTO public.guessing VALUES (43, 27, 351);
INSERT INTO public.guessing VALUES (13, 18, 1);
INSERT INTO public.guessing VALUES (14, 18, 351);
INSERT INTO public.guessing VALUES (11, 17, 1);
INSERT INTO public.guessing VALUES (12, 17, 1);
INSERT INTO public.guessing VALUES (15, 17, 1);
INSERT INTO public.guessing VALUES (16, 17, 1);
INSERT INTO public.guessing VALUES (17, 17, 351);
INSERT INTO public.guessing VALUES (20, 20, 351);
INSERT INTO public.guessing VALUES (21, 20, 351);
INSERT INTO public.guessing VALUES (40, 26, 351);
INSERT INTO public.guessing VALUES (41, 26, 351);
INSERT INTO public.guessing VALUES (44, 26, 351);
INSERT INTO public.guessing VALUES (45, 26, 351);
INSERT INTO public.guessing VALUES (46, 26, 351);
INSERT INTO public.guessing VALUES (18, 19, 351);
INSERT INTO public.guessing VALUES (19, 19, 351);
INSERT INTO public.guessing VALUES (22, 19, 351);
INSERT INTO public.guessing VALUES (23, 19, 351);
INSERT INTO public.guessing VALUES (24, 19, 351);
INSERT INTO public.guessing VALUES (49, 29, 351);
INSERT INTO public.guessing VALUES (50, 29, 351);
INSERT INTO public.guessing VALUES (1, 10, 1);
INSERT INTO public.guessing VALUES (9, 10, 1);
INSERT INTO public.guessing VALUES (10, 10, 1);
INSERT INTO public.guessing VALUES (25, 10, 1);
INSERT INTO public.guessing VALUES (28, 23, 351);
INSERT INTO public.guessing VALUES (29, 23, 351);
INSERT INTO public.guessing VALUES (26, 22, 351);
INSERT INTO public.guessing VALUES (27, 22, 351);
INSERT INTO public.guessing VALUES (30, 22, 351);
INSERT INTO public.guessing VALUES (31, 22, 351);
INSERT INTO public.guessing VALUES (32, 22, 351);
INSERT INTO public.guessing VALUES (47, 28, 351);
INSERT INTO public.guessing VALUES (35, 25, 351);
INSERT INTO public.guessing VALUES (36, 25, 351);
INSERT INTO public.guessing VALUES (48, 28, 351);
INSERT INTO public.guessing VALUES (51, 28, 351);
INSERT INTO public.guessing VALUES (52, 28, 351);
INSERT INTO public.guessing VALUES (53, 28, 351);
INSERT INTO public.guessing VALUES (33, 24, 351);
INSERT INTO public.guessing VALUES (34, 24, 351);
INSERT INTO public.guessing VALUES (37, 24, 351);
INSERT INTO public.guessing VALUES (38, 24, 351);
INSERT INTO public.guessing VALUES (39, 24, 351);
INSERT INTO public.guessing VALUES (56, 31, 351);
INSERT INTO public.guessing VALUES (57, 31, 351);
INSERT INTO public.guessing VALUES (54, 30, 351);
INSERT INTO public.guessing VALUES (55, 30, 351);
INSERT INTO public.guessing VALUES (58, 30, 351);
INSERT INTO public.guessing VALUES (59, 30, 351);
INSERT INTO public.guessing VALUES (60, 30, 351);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '', 0);
INSERT INTO public.users VALUES (25, 'user_1721815962470', 2);
INSERT INTO public.users VALUES (24, 'user_1721815962471', 5);
INSERT INTO public.users VALUES (12, 'user_1721810631415', 2);
INSERT INTO public.users VALUES (27, 'user_1721817121337', 2);
INSERT INTO public.users VALUES (11, 'user_1721810631416', 5);
INSERT INTO public.users VALUES (13, 'player1', 1);
INSERT INTO public.users VALUES (14, 'yuna', 1);
INSERT INTO public.users VALUES (26, 'user_1721817121338', 5);
INSERT INTO public.users VALUES (16, 'user_1721812601222', 2);
INSERT INTO public.users VALUES (15, 'user_1721812601223', 5);
INSERT INTO public.users VALUES (29, 'user_1721817292493', 2);
INSERT INTO public.users VALUES (28, 'user_1721817292494', 5);
INSERT INTO public.users VALUES (18, 'user_1721813294749', 2);
INSERT INTO public.users VALUES (17, 'user_1721813294750', 5);
INSERT INTO public.users VALUES (20, 'user_1721814498285', 2);
INSERT INTO public.users VALUES (31, 'user_1721817509650', 2);
INSERT INTO public.users VALUES (19, 'user_1721814498286', 5);
INSERT INTO public.users VALUES (10, 'pop', 7);
INSERT INTO public.users VALUES (21, 'p', 0);
INSERT INTO public.users VALUES (30, 'user_1721817509651', 5);
INSERT INTO public.users VALUES (23, 'user_1721814772500', 2);
INSERT INTO public.users VALUES (22, 'user_1721814772501', 5);


--
-- Name: guessing_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guessing_game_id_seq', 60, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 31, true);


--
-- Name: guessing guessing_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guessing
    ADD CONSTRAINT guessing_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: guessing fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guessing
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


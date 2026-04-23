--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    username character varying(22),
    games_played integer,
    best_game integer,
    number_of_guesses integer
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', 0, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('bd', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776943624993', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776943624992', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776943666255', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776943666254', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776943908514', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776943908513', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776943976651', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776943976650', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944018642', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944018641', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944138762', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944138761', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944236997', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944236996', NULL, NULL, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944663041', 0, 0, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944663040', 0, 0, NULL);
INSERT INTO public.number_guess VALUES ('BD', 0, 0, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944738832', 0, 0, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944738831', 0, 0, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944885737', 0, 0, NULL);
INSERT INTO public.number_guess VALUES ('user_1776944885736', 0, 0, NULL);
INSERT INTO public.number_guess VALUES ('user_1776945528946', 2, 112, 112);
INSERT INTO public.number_guess VALUES ('user_1776945528947', 5, 234, 234);
INSERT INTO public.number_guess VALUES ('user_1776945562338', 2, 119, 119);
INSERT INTO public.number_guess VALUES ('user_1776945562339', 5, 34, 742);
INSERT INTO public.number_guess VALUES ('user_1776945721040', 2, 430, 449);
INSERT INTO public.number_guess VALUES ('user_1776945721041', 5, 188, 575);
INSERT INTO public.number_guess VALUES ('user_1776945732940', 2, 380, 380);
INSERT INTO public.number_guess VALUES ('user_1776945732941', 5, 30, 47);


--
-- PostgreSQL database dump complete
--


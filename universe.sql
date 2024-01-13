--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age numeric,
    area integer,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age numeric,
    area integer,
    distance integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    celes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age numeric,
    area integer,
    distance integer,
    moon_id integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age numeric,
    area integer,
    distance integer,
    planet_id integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', true, true, NULL, 5545, 2546, NULL);
INSERT INTO public.galaxy VALUES (3, 'g1', true, true, 11425, 5545, 2546, 2);
INSERT INTO public.galaxy VALUES (4, 'g1', true, true, 11425, 5545, 2546, 2);
INSERT INTO public.galaxy VALUES (5, 'g2', true, true, 11425, 5545, 2546, 2);
INSERT INTO public.galaxy VALUES (6, 'g3', false, true, 11425, 5545, 2546, 3);
INSERT INTO public.galaxy VALUES (7, 'g4', true, false, 11425, 5545, 246, 4);
INSERT INTO public.galaxy VALUES (8, 'g5', true, true, 1425, 5545, 2546, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mn1', true, false, 114, 5545, 2546, 1);
INSERT INTO public.moon VALUES (2, 'mn2', true, true, 1425, 545, 2546, 3);
INSERT INTO public.moon VALUES (3, 'mn3', false, false, 11425, 5545, 2546, 4);
INSERT INTO public.moon VALUES (4, 'pl4', true, false, 45, 5545, 246, 4);
INSERT INTO public.moon VALUES (5, 'pl5', true, true, 1425, 5545, 2546, 5);
INSERT INTO public.moon VALUES (6, 'pl6', true, true, 145, 545, 2546, 2);
INSERT INTO public.moon VALUES (7, 'pl7', false, false, 25, 5545, 2546, 3);
INSERT INTO public.moon VALUES (8, 'pl8', true, true, 25, 545, 2546, 2);
INSERT INTO public.moon VALUES (9, 'pl9', false, false, 11425, 5545, 2546, 3);
INSERT INTO public.moon VALUES (10, 'pl10', true, true, 1425, 545, 2546, 4);
INSERT INTO public.moon VALUES (11, 'pl11', false, false, 11425, 5545, 2546, 3);
INSERT INTO public.moon VALUES (12, 'pl12', true, true, 1425, 545, 2546, 2);
INSERT INTO public.moon VALUES (13, 'pl13', false, false, 11425, 5545, 2546, 5);
INSERT INTO public.moon VALUES (14, 'mn1', true, false, 114, 5545, 2546, 1);
INSERT INTO public.moon VALUES (15, 'mn2', true, true, 1425, 545, 2546, 3);
INSERT INTO public.moon VALUES (16, 'mn3', false, false, 11425, 5545, 2546, 4);
INSERT INTO public.moon VALUES (17, 'mn4', true, false, 45, 5545, 246, 11);
INSERT INTO public.moon VALUES (18, 'mn5', true, true, 1425, 5545, 2546, 8);
INSERT INTO public.moon VALUES (19, 'mn6', true, true, 145, 545, 2546, 4);
INSERT INTO public.moon VALUES (20, 'mn7', false, false, 25, 5545, 2546, 2);
INSERT INTO public.moon VALUES (21, 'mn8', true, true, 25, 545, 2546, 9);
INSERT INTO public.moon VALUES (22, 'mnl9', false, false, 11425, 5545, 2546, 3);
INSERT INTO public.moon VALUES (23, 'mn10', true, true, 1425, 545, 2546, 5);
INSERT INTO public.moon VALUES (24, 'mn11', false, false, 11425, 5545, 2546, 9);
INSERT INTO public.moon VALUES (25, 'mn12', true, true, 1425, 545, 2546, 2);
INSERT INTO public.moon VALUES (26, 'pl13', false, false, 11425, 5545, 2546, 5);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'g1', 'galaxy1');
INSERT INTO public.more_info VALUES (2, 3, 'pl3', 'planet3');
INSERT INTO public.more_info VALUES (3, 5, 'pl5', 'planet5');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pl1', true, false, 114, 5545, 2546, NULL, 2);
INSERT INTO public.planet VALUES (2, 'pl2', true, true, 1425, 545, 2546, NULL, 2);
INSERT INTO public.planet VALUES (3, 'pl3', false, false, 11425, 5545, 2546, NULL, 3);
INSERT INTO public.planet VALUES (4, 'pl4', true, false, 45, 5545, 246, NULL, 4);
INSERT INTO public.planet VALUES (5, 'pl5', true, true, 1425, 5545, 2546, NULL, 5);
INSERT INTO public.planet VALUES (6, 'pl6', true, true, 145, 545, 2546, NULL, 2);
INSERT INTO public.planet VALUES (7, 'pl7', false, false, 25, 5545, 2546, NULL, 3);
INSERT INTO public.planet VALUES (8, 'pl8', true, true, 25, 545, 2546, NULL, 2);
INSERT INTO public.planet VALUES (9, 'pl9', false, false, 11425, 5545, 2546, NULL, 3);
INSERT INTO public.planet VALUES (10, 'pl10', true, true, 1425, 545, 2546, NULL, 4);
INSERT INTO public.planet VALUES (11, 'pl11', false, false, 11425, 5545, 2546, NULL, 3);
INSERT INTO public.planet VALUES (12, 'pl12', true, true, 1425, 545, 2546, NULL, 2);
INSERT INTO public.planet VALUES (13, 'pl13', false, false, 11425, 5545, 2546, NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'st1', true, true, 11425, 5545, 2546, NULL, 1);
INSERT INTO public.star VALUES (2, 'st1', true, true, 11425, 5545, 2546, NULL, 1);
INSERT INTO public.star VALUES (3, 'st2', true, false, 1145, 55, 253, NULL, 1);
INSERT INTO public.star VALUES (4, 'st3', false, true, 11425, 555, 2546, NULL, 1);
INSERT INTO public.star VALUES (5, 'st4', false, true, 11005, 6785, 346, NULL, 1);
INSERT INTO public.star VALUES (6, 'st5', false, false, 114, 559, 346, NULL, 1);
INSERT INTO public.star VALUES (7, 'st6', true, true, 11425, 255, 255, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: more_info_more_info_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: galaxy gx_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT gx_unq UNIQUE (galaxy_id);


--
-- Name: moon mn_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT mn_unq UNIQUE (moon_id);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: more_info mr_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT mr_unq UNIQUE (more_info_id);


--
-- Name: planet pl_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pl_unq UNIQUE (planet_id);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: star str_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT str_unq UNIQUE (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


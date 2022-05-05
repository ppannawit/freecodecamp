--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    galaxy_types integer
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
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    planet_id integer NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    planet_types integer,
    star_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
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
-- Name: types_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types_galaxy (
    types_galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text
);


ALTER TABLE public.types_galaxy OWNER TO freecodecamp;

--
-- Name: types_galaxy_types_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_galaxy_types_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_galaxy_types_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: types_galaxy_types_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_galaxy_types_galaxy_id_seq OWNED BY public.types_galaxy.types_galaxy_id;


--
-- Name: types_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types_planet (
    types_planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text
);


ALTER TABLE public.types_planet OWNER TO freecodecamp;

--
-- Name: types_planet_types_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_planet_types_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_planet_types_planet_id_seq OWNER TO freecodecamp;

--
-- Name: types_planet_types_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_planet_types_planet_id_seq OWNED BY public.types_planet.types_planet_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: types_galaxy types_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_galaxy ALTER COLUMN types_galaxy_id SET DEFAULT nextval('public.types_galaxy_types_galaxy_id_seq'::regclass);


--
-- Name: types_planet types_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_planet ALTER COLUMN types_planet_id SET DEFAULT nextval('public.types_planet_types_planet_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy00', 'des_galaxy00', false, false, 100, 10000, 1);
INSERT INTO public.galaxy VALUES (2, 'galaxy01', 'des_galaxy01', true, false, 101, 10100, 2);
INSERT INTO public.galaxy VALUES (3, 'galaxy11', 'des_galaxy11', true, true, 111, 11100, 3);
INSERT INTO public.galaxy VALUES (4, 'galaxy10', 'des_galaxy10', true, false, 110, 11000, 4);
INSERT INTO public.galaxy VALUES (5, 'galaxy20', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy30', 'des_galaxy30', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moont00', 'des_moon00', false, false, 100, 10000, 1);
INSERT INTO public.moon VALUES (2, 'moon01', 'des_moon01', true, false, 101, 10100, 3);
INSERT INTO public.moon VALUES (3, 'moon11', 'des_moon11', true, true, 111, 11100, 1);
INSERT INTO public.moon VALUES (4, 'moon10', 'des_moon10', true, false, 110, 11000, 6);
INSERT INTO public.moon VALUES (5, 'moon20', '', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'moon30', 'des_moon30', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'moont60', 'des_moon600', false, false, 6100, 610000, 6);
INSERT INTO public.moon VALUES (8, 'moon501', 'des_moon51', true, false, 101, 10100, 5);
INSERT INTO public.moon VALUES (9, 'moon411', 'des_moon141', true, true, 4111, 411100, 4);
INSERT INTO public.moon VALUES (10, 'moon310', 'des_moon310', true, false, 3110, 121000, 3);
INSERT INTO public.moon VALUES (11, 'moon22', '', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, 'moon34', 'des_moon30', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'moont760', 'des_moon7600', false, false, 76100, 7610000, 1);
INSERT INTO public.moon VALUES (14, 'moon7501', 'des_moon751', true, false, 7101, 710100, 2);
INSERT INTO public.moon VALUES (15, 'moon4711', 'des_moon1471', true, true, 47111, 7411100, 3);
INSERT INTO public.moon VALUES (16, 'moon7310', 'des_moon7310', true, false, 73110, 7121000, 4);
INSERT INTO public.moon VALUES (17, 'moon272', '', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'moon734', 'des_moon370', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'moonyt760', 'des_moony7600', false, false, 76100, 7610000, 6);
INSERT INTO public.moon VALUES (20, 'moony7501', 'des_moony751', true, false, 7101, 710100, 5);
INSERT INTO public.moon VALUES (21, 'moony4711', 'des_moony1471', true, true, 47111, 7411100, 4);
INSERT INTO public.moon VALUES (22, 'moony7310', 'des_moony7310', true, false, 73110, 7121000, 3);
INSERT INTO public.moon VALUES (23, 'moony272', '', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (24, 'moony734', 'des_moony370', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet00', 'des_planet00', false, false, 100, 10000, 5, 1);
INSERT INTO public.planet VALUES (2, 'planet01', 'des_planet01', true, false, 101, 10100, 1, 3);
INSERT INTO public.planet VALUES (3, 'planet11', 'des_planet11', true, true, 111, 11100, 2, 1);
INSERT INTO public.planet VALUES (4, 'planet10', 'des_planet10', true, false, 110, 11000, NULL, 6);
INSERT INTO public.planet VALUES (5, 'planet20', '', NULL, NULL, NULL, NULL, 4, 2);
INSERT INTO public.planet VALUES (6, 'planet30', 'des_planet30', NULL, NULL, NULL, NULL, 3, 2);
INSERT INTO public.planet VALUES (19, 'planet90', 'des_planet90', false, false, 9100, 910000, 1, 4);
INSERT INTO public.planet VALUES (20, 'planet91', 'des_planet91', true, false, 901, 90100, 2, 2);
INSERT INTO public.planet VALUES (21, 'planet41', 'des_planet41', true, true, 111, 11100, 2, 6);
INSERT INTO public.planet VALUES (22, 'planet80', 'des_planet80', true, false, 810, 81000, NULL, 5);
INSERT INTO public.planet VALUES (23, 'planet70', '', NULL, NULL, NULL, NULL, 4, 5);
INSERT INTO public.planet VALUES (24, 'planet60', 'des_planet60', NULL, NULL, NULL, NULL, 3, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star00', 'des_star00', false, false, 100, 10000, 1);
INSERT INTO public.star VALUES (2, 'star01', 'des_star01', true, false, 101, 10100, 3);
INSERT INTO public.star VALUES (3, 'star11', 'des_star11', true, true, 111, 11100, 1);
INSERT INTO public.star VALUES (4, 'star10', 'des_star10', true, false, 110, 11000, 6);
INSERT INTO public.star VALUES (5, 'star20', '', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 'star30', 'des_star30', NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: types_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types_galaxy VALUES (1, 'g00', NULL);
INSERT INTO public.types_galaxy VALUES (2, 'g05', NULL);
INSERT INTO public.types_galaxy VALUES (3, 'g08', NULL);
INSERT INTO public.types_galaxy VALUES (4, 'g18', NULL);
INSERT INTO public.types_galaxy VALUES (5, 'g28', NULL);
INSERT INTO public.types_galaxy VALUES (6, 'g98', NULL);
INSERT INTO public.types_galaxy VALUES (7, 'g04', NULL);


--
-- Data for Name: types_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types_planet VALUES (1, 'p04', NULL);
INSERT INTO public.types_planet VALUES (2, 'p05', NULL);
INSERT INTO public.types_planet VALUES (3, 'p06', NULL);
INSERT INTO public.types_planet VALUES (4, 'p66', NULL);
INSERT INTO public.types_planet VALUES (5, 'p76', NULL);
INSERT INTO public.types_planet VALUES (6, 'p96', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: types_galaxy_types_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_galaxy_types_galaxy_id_seq', 7, true);


--
-- Name: types_planet_types_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_planet_types_planet_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: types_galaxy types_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_galaxy
    ADD CONSTRAINT types_galaxy_name_key UNIQUE (name);


--
-- Name: types_galaxy types_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_galaxy
    ADD CONSTRAINT types_galaxy_pkey PRIMARY KEY (types_galaxy_id);


--
-- Name: types_planet types_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_planet
    ADD CONSTRAINT types_planet_name_key UNIQUE (name);


--
-- Name: types_planet types_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_planet
    ADD CONSTRAINT types_planet_pkey PRIMARY KEY (types_planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- PostgreSQL database dump complete
--


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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(30),
    discovery_year integer NOT NULL
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    discovery_order_num integer NOT NULL,
    year1 integer,
    year2 integer
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
    name character varying(30),
    planet_id integer NOT NULL,
    discovery_order_num integer NOT NULL,
    astronaut_count numeric,
    mission_name text,
    id_discovered boolean
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
    name character varying(30),
    star_id integer NOT NULL,
    discovery_order_num integer NOT NULL,
    year1 integer
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    discovery_order_num integer NOT NULL,
    id_discovered boolean
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


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
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, NULL, 1959);
INSERT INTO public.fifth_table VALUES (2, NULL, 1960);
INSERT INTO public.fifth_table VALUES (3, NULL, 1961);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'croada', 10, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'driata', 11, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'formana', 12, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'formaza', 13, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'formapa', 14, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'formata', 15, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, NULL, 1, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, NULL, 1, 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, NULL, 1, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, NULL, 1, 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, NULL, 1, 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, NULL, 1, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, NULL, 1, 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, NULL, 1, 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, NULL, 1, 10, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, NULL, 1, 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, NULL, 1, 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, NULL, 1, 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, NULL, 1, 14, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, NULL, 1, 15, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, NULL, 1, 16, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, NULL, 1, 17, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, NULL, 1, 18, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, NULL, 1, 19, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, NULL, 1, 20, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 1, 1, NULL);
INSERT INTO public.planet VALUES (2, NULL, 1, 2, NULL);
INSERT INTO public.planet VALUES (3, NULL, 1, 3, NULL);
INSERT INTO public.planet VALUES (4, NULL, 1, 4, NULL);
INSERT INTO public.planet VALUES (5, NULL, 2, 5, NULL);
INSERT INTO public.planet VALUES (6, NULL, 2, 6, NULL);
INSERT INTO public.planet VALUES (7, NULL, 2, 7, NULL);
INSERT INTO public.planet VALUES (8, NULL, 2, 8, NULL);
INSERT INTO public.planet VALUES (9, NULL, 3, 9, NULL);
INSERT INTO public.planet VALUES (10, NULL, 3, 10, NULL);
INSERT INTO public.planet VALUES (11, NULL, 3, 11, NULL);
INSERT INTO public.planet VALUES (12, NULL, 3, 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'rerer', 1, 20, NULL);
INSERT INTO public.star VALUES (2, 'rererz', 1, 21, NULL);
INSERT INTO public.star VALUES (3, 'rererza', 2, 22, NULL);
INSERT INTO public.star VALUES (4, 'rererzat', 4, 23, NULL);
INSERT INTO public.star VALUES (5, 'rererzal', 5, 24, NULL);
INSERT INTO public.star VALUES (6, 'rererzalo', 6, 25, NULL);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fifth_table fifth_table_discovery_year_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_discovery_year_key UNIQUE (discovery_year);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: galaxy galaxy_discovery_order_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_discovery_order_num_key UNIQUE (discovery_order_num);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_discovery_order_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_discovery_order_num_key UNIQUE (discovery_order_num);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_discovery_order_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_discovery_order_num_key UNIQUE (discovery_order_num);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_discovery_order_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_discovery_order_num_key UNIQUE (discovery_order_num);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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


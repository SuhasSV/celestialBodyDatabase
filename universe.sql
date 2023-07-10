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
-- Name universe; Type DATABASE; Schema -; Owner freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

connect universe

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
-- Name black_hole; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    galaxy_id integer,
    name character varying(20) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name black_hole_black_hole_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name black_hole_black_hole_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name galaxy; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    num_of_millions_of_stars integer,
    distance_in_aum numeric,
    has_blackhole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name galaxy_galaxy_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
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
-- Name galaxy_galaxy_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name moon; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    a integer NOT NULL,
    z integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name moon_a_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.moon_a_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_a_seq OWNER TO freecodecamp;

--
-- Name moon_a_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.moon_a_seq OWNED BY public.moon.a;


--
-- Name moon_moon_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
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
-- Name moon_moon_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name moon_z_seq; Type SEQUENCE; Schema public; Owner freecodecamp
--

CREATE SEQUENCE public.moon_z_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_z_seq OWNER TO freecodecamp;

--
-- Name moon_z_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.moon_z_seq OWNED BY public.moon.z;


--
-- Name planet; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    has_moon boolean,
    name character varying(20) NOT NULL,
    no_of_moons integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name planet_planet_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
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
-- Name planet_planet_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name star; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    no_of_planets integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name star_star_id_seq; Type SEQUENCE; Schema public; Owner freecodecamp
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
-- Name star_star_id_seq; Type SEQUENCE OWNED BY; Schema public; Owner freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name black_hole black_hole_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'regclass);


--
-- Name galaxy galaxy_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'regclass);


--
-- Name moon moon_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'regclass);


--
-- Name moon a; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN a SET DEFAULT nextval('public.moon_a_seq'regclass);


--
-- Name moon z; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN z SET DEFAULT nextval('public.moon_z_seq'regclass);


--
-- Name planet planet_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'regclass);


--
-- Name star star_id; Type DEFAULT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'regclass);


--
-- Data for Name black_hole; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 1, 'abc');
INSERT INTO public.black_hole VALUES (2, 2, 'efg');
INSERT INTO public.black_hole VALUES (3, 3, 'lmn');


--
-- Data for Name galaxy; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MilkyWay', 200, 123.25, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 400, 250.45, false);
INSERT INTO public.galaxy VALUES (3, 'WhirlPool', 125, 800.85, true);
INSERT INTO public.galaxy VALUES (4, 'BlackEye', 560, 584.25, true);
INSERT INTO public.galaxy VALUES (5, 'Cigar', 240, 660.54, true);
INSERT INTO public.galaxy VALUES (6, 'PinWheel', 175, 335.33, true);


--
-- Data for Name moon; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.moon VALUES (24, 'moon', 1, 1, 1);
INSERT INTO public.moon VALUES (25, 'a', 2, 2, 2);
INSERT INTO public.moon VALUES (26, 'b', 3, 3, 3);
INSERT INTO public.moon VALUES (27, 'c', 4, 4, 4);
INSERT INTO public.moon VALUES (28, 'd', 5, 5, 5);
INSERT INTO public.moon VALUES (29, 'e', 6, 6, 6);
INSERT INTO public.moon VALUES (30, 'f', 7, 7, 7);
INSERT INTO public.moon VALUES (31, 'g', 8, 8, 8);
INSERT INTO public.moon VALUES (32, 'h', 7, 9, 9);
INSERT INTO public.moon VALUES (33, 'i', 8, 10, 10);
INSERT INTO public.moon VALUES (34, 'j', 9, 11, 11);
INSERT INTO public.moon VALUES (35, 'k', 10, 12, 12);
INSERT INTO public.moon VALUES (36, 'l', 10, 13, 13);
INSERT INTO public.moon VALUES (37, 'm', 11, 14, 14);
INSERT INTO public.moon VALUES (38, 'n', 12, 15, 15);
INSERT INTO public.moon VALUES (39, 'o', 1, 16, 16);
INSERT INTO public.moon VALUES (40, 'p', 4, 17, 17);
INSERT INTO public.moon VALUES (41, 'q', 3, 18, 18);
INSERT INTO public.moon VALUES (42, 'r', 1, 19, 19);
INSERT INTO public.moon VALUES (43, 's', 7, 20, 20);
INSERT INTO public.moon VALUES (44, 't', 8, 21, 21);
INSERT INTO public.moon VALUES (45, 'u', 9, 22, 22);
INSERT INTO public.moon VALUES (46, 'v', 12, 23, 23);


--
-- Data for Name planet; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.planet VALUES (1, false, 'Mercury', 0, 1);
INSERT INTO public.planet VALUES (2, false, 'Venus', 0, 1);
INSERT INTO public.planet VALUES (3, true, 'Earth', 1, 1);
INSERT INTO public.planet VALUES (4, true, 'Mars', 2, 2);
INSERT INTO public.planet VALUES (5, true, 'Jupyter', 3, 2);
INSERT INTO public.planet VALUES (6, true, 'Saturn', 4, 3);
INSERT INTO public.planet VALUES (7, false, 'Uranus', 0, 4);
INSERT INTO public.planet VALUES (8, true, 'Neptune', 1, 1);
INSERT INTO public.planet VALUES (9, false, 'Pluto', 0, 2);
INSERT INTO public.planet VALUES (10, true, 'Sirius', 1, 5);
INSERT INTO public.planet VALUES (11, false, 'Harry', 0, 6);
INSERT INTO public.planet VALUES (12, true, 'Emma', 2, 4);


--
-- Data for Name star; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.star VALUES (1, 'Jyesta', 'Belongs to scorpion', 10, 1);
INSERT INTO public.star VALUES (2, 'Vaishaka', 'Belongs to Meena', 5, 2);
INSERT INTO public.star VALUES (3, 'Anuradha', 'Belongs to Kumbha', 7, 3);
INSERT INTO public.star VALUES (4, 'Revati', 'Belongs to tula', 5, 4);
INSERT INTO public.star VALUES (5, 'Magha', 'Belongs to cancer', 5, 5);
INSERT INTO public.star VALUES (6, 'Moola', 'Belongs to kanya', 2, 6);


--
-- Name black_hole_black_hole_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name galaxy_galaxy_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name moon_a_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.moon_a_seq', 23, true);


--
-- Name moon_moon_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 46, true);


--
-- Name moon_z_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.moon_z_seq', 23, true);


--
-- Name planet_planet_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name star_star_id_seq; Type SEQUENCE SET; Schema public; Owner freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name black_hole black_hole_name_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name black_hole black_hole_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name galaxy galaxy_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name moon moon_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name planet planet_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name star star_pkey; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name galaxy unique_galaxy_name; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name moon unique_moon_name; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name planet unique_planet_name; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name star unique_star_name; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name star fk_galaxy; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name black_hole fk_galaxy; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name moon fk_planet; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name planet fk_star; Type FK CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


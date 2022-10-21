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
    name character varying(45),
    description text,
    has_life boolean NOT NULL,
    speciality text,
    what_makes_it_unique text
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
-- Name: hero; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.hero (
    hero_id integer NOT NULL,
    name character varying(45),
    age integer,
    planet_id integer NOT NULL,
    nickname text
);


ALTER TABLE public.hero OWNER TO freecodecamp;

--
-- Name: hero_hero_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.hero_hero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hero_hero_id_seq OWNER TO freecodecamp;

--
-- Name: hero_hero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.hero_hero_id_seq OWNED BY public.hero.hero_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(45),
    planet_id integer NOT NULL,
    brightness_frame integer,
    isvisible_from_origin boolean,
    what_makes_it_unique text
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
    name character varying(45),
    age_in_millions_of_years integer,
    distances_from_earth numeric,
    is_spherical boolean,
    star_id integer NOT NULL,
    what_makes_it_unique text
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
    name character varying(45),
    galaxy_id integer NOT NULL,
    lighting_measure numeric,
    isdangerous boolean,
    what_makes_it_unique text
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
-- Name: hero hero_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hero ALTER COLUMN hero_id SET DEFAULT nextval('public.hero_hero_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'West Eros', 'The world of dragons and white walkers', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Nin', 'Filled with supernatural ninja and dangers', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Walking Dead', 'Zombies Attacks killed nearly every one or transformed into zombies', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'U7', 'Super powers and powerful enemies capable of destroying planets and worlds', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Seven Deadly Sins', 'Fights between supernatural species that are creating massacres everywhere in the galaxy', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'One Piece', 'An unknown forgotten century that created a rebellion, increased sea piracy, and enhanced world government conspiracies', true, NULL, NULL);


--
-- Data for Name: hero; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.hero VALUES (1, 'Naruto', 30, 13, NULL);
INSERT INTO public.hero VALUES (2, 'Luffy', 19, 17, NULL);
INSERT INTO public.hero VALUES (3, 'Goku', 40, 10, NULL);
INSERT INTO public.hero VALUES (4, 'John Snow', 25, 23, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Eyes', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Kaguya Moon', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Centuros', 15, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Ototsuki', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Cats F', 14, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Skycoop', 16, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'ghabbin', 19, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'OmarHakuro', 17, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'The D', 19, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'nuMo', 20, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Blood Moon', 22, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon', 10, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Anneau', 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Blessing of Cents', 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'RoboTip', 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Sayazin', 10, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Deadly Fik', 21, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Treachorout', 21, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'toKio', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Devil versus Government', 18, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Monnlight', 14, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'last of You 87', 12, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (10, 'Earth', 700, 0, true, 6, NULL);
INSERT INTO public.planet VALUES (11, 'Namek', 50000, 15, true, 6, NULL);
INSERT INTO public.planet VALUES (12, 'World of Kai', 100000, 2, false, 6, NULL);
INSERT INTO public.planet VALUES (13, 'Konoha', 20, 0, true, 2, NULL);
INSERT INTO public.planet VALUES (14, 'Kinagature', 22, 3, false, 3, NULL);
INSERT INTO public.planet VALUES (15, 'Lighting', 20, 60, false, 3, NULL);
INSERT INTO public.planet VALUES (16, 'All Blue', 500, 0, true, 4, NULL);
INSERT INTO public.planet VALUES (17, 'New World', 30000, 1000, false, 4, NULL);
INSERT INTO public.planet VALUES (18, 'Heaven Gov', 200, 4, true, 4, NULL);
INSERT INTO public.planet VALUES (19, 'Red Line', 1000, 30, false, 4, NULL);
INSERT INTO public.planet VALUES (20, 'East Blue', 300, 1, true, 4, NULL);
INSERT INTO public.planet VALUES (21, 'King Landing', 30, 0, true, 1, NULL);
INSERT INTO public.planet VALUES (22, 'The Wall', 10000, 40, false, 1, NULL);
INSERT INTO public.planet VALUES (23, 'North', 5000, 30, false, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Irkif', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Hoshigakure', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Kinharu', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'The Unnamed', 6, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Infiniti', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'North Star', 4, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: hero_hero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.hero_hero_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_what_makes_it_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_what_makes_it_unique_key UNIQUE (what_makes_it_unique);


--
-- Name: hero hero_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hero
    ADD CONSTRAINT hero_nickname_key UNIQUE (nickname);


--
-- Name: hero hero_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hero
    ADD CONSTRAINT hero_pkey PRIMARY KEY (hero_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_what_makes_it_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_what_makes_it_unique_key UNIQUE (what_makes_it_unique);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_what_makes_it_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_what_makes_it_unique_key UNIQUE (what_makes_it_unique);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_what_makes_it_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_what_makes_it_unique_key UNIQUE (what_makes_it_unique);


--
-- Name: hero hero_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hero
    ADD CONSTRAINT hero_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


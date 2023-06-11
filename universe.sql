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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    numberofcountries integer,
    planet_id integer
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    diameter_lightyears integer,
    numberofstars integer
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
    name character varying(20) NOT NULL,
    description text,
    diameter_inkm integer,
    age_millionofyears integer,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    diameter_inkm integer,
    age_millionofyears integer,
    oxigen_percentage numeric,
    is_flat boolean,
    has_life boolean,
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
    name character varying(20) NOT NULL,
    description text,
    diameter_inkm integer,
    age_millionofyears integer,
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'America', 'It is divided in three subcontinents: South, Center and North', 35, 1);
INSERT INTO public.continent VALUES (2, 'Europe', 'Also known as The Old Continent', 44, 1);
INSERT INTO public.continent VALUES (3, 'Asia', 'The largest and most populous continent', 48, 1);
INSERT INTO public.continent VALUES (4, 'Africa', 'A diverse continent known for its rich cultural heritage', 54, 1);
INSERT INTO public.continent VALUES (5, 'Oceania', 'Kangaroos kingdom', 14, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'It is a barred spiral galaxy that is home to our Solar System', 120000, 400);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest major galaxy to the Milky Way', 220, 100000);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'It is known for its prominent spiral arms', 60, 120000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'It is distinctive due to its prominent dust lane', 50, 128000);
INSERT INTO public.galaxy VALUES (5, 'Centaurus', 'It exhibits characteristics of both elliptical and spiral galaxies', 200, 145000);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 'It is the third-largest member of the Local Group of galaxies', 60, 40000);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', 'It is known for its prominent spiral arms', 170, 180000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'The Earth natural satellite', 3474, 5, 1);
INSERT INTO public.moon VALUES (2, 'Titan', 'Saturn largest moon with a dense atmosphere', 5150, 4, 5);
INSERT INTO public.moon VALUES (3, 'Ganymede', 'Jupiter largest moon and the largest moon in the solar system', 5268, 5, 4);
INSERT INTO public.moon VALUES (4, 'Callisto', 'Jupiter second largest moon', 4820, 4, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter moon with a subsurface ocean and potential for life', 3122, 5, 4);
INSERT INTO public.moon VALUES (6, 'Io', 'One of Jupiter Galilean moons with active volcanoes', 3637, 5, 4);
INSERT INTO public.moon VALUES (7, 'Enceladus', 'Saturn moon with geysers of water vapor', 504, 4, 5);
INSERT INTO public.moon VALUES (8, 'Triton', 'Neptune largest moon with a retrograde orbit', 2707, 4, 7);
INSERT INTO public.moon VALUES (9, 'Charon', 'Pluto largest moon', 1212, 4, 8);
INSERT INTO public.moon VALUES (10, 'Phobos', 'One of Mars moons with an irregular shape', 22, 5, 2);
INSERT INTO public.moon VALUES (11, 'Deimos', 'One of Mars moons with a small size', 12, 4, 2);
INSERT INTO public.moon VALUES (12, 'Mimas', 'Saturn moon with a prominent impact crater', 396, 4, 4);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Saturn secondlargest moon', 1528, 5, 5);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'Saturn moon with a two-tone coloration', 1468, 5, 5);
INSERT INTO public.moon VALUES (15, 'Dione', 'Saturn moon with distinctive surface features', 1122, 5, 5);
INSERT INTO public.moon VALUES (16, 'Hyperion', 'Saturn moon with an irregular shape and chaotic rotation', 266, 5, 5);
INSERT INTO public.moon VALUES (17, 'Oberon', 'Uranus moon with a dark surface and ancient cratered terrain', 1523, 4, 8);
INSERT INTO public.moon VALUES (18, 'Miranda', 'Uranus moon with a varied and geologically active surface', 471, 5, 8);
INSERT INTO public.moon VALUES (19, 'Ariel', 'One of Uranus moons with a young and bright surface', 1157, 5, 8);
INSERT INTO public.moon VALUES (20, 'Umbriel', 'Uranus moon with a heavily cratered surface', 1169, 4, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'It is our home planet', 12742, 5, 21, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'It is a terrestrial planet with a reddish appearance', 6779, 5, 0.13, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'It is a rocky planet known for its extremely dense atmosphere', 12104, 5, 0, false, false, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'It is the largest planet in our solar system', 139820, 5, 0, false, false, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 'It is a gas giant known for its prominent ring system', 116460, 5, 0, false, false, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 'It is the closest planet to the Sun', 4879, 5, 0, false, false, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 'It is the eighth and farthest known planet from the Sun', 49530, 5, 0.8, false, false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'It has a unique tilted axis of rotation', 50724, 5, 0.1, false, false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 'It is an exoplanet orbiting a star similar to our Sun', 30245, 6, 0.3, false, true, 3);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'It is an exoplanet orbiting the closest known star to our Solar System', 39025, 5, 0.1, false, false, 3);
INSERT INTO public.planet VALUES (11, 'HD 189733b', 'It is an exoplanet located approximately 63 light-years away from Earth', 84256, 8, 5, false, false, 3);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 'It is a rocky planet and part of a seven-planet system', 65123, 10, 10, false, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'It is the star at the center of our Solar System', 2, 5, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', ' It is one of the largest and most luminous stars known', 1, 9, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 't is the brightest star in the night sky and can be seen from Earth', 4, 300, 3);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'It is too faint to be visible to the naked eye', 1, 5, 4);
INSERT INTO public.star VALUES (5, 'Rigel', 'It is a blue supergiant star', 108, 10, 5);
INSERT INTO public.star VALUES (6, 'Alpha Centauri', 'It is the closest star system to the Sun', 3, 7, 6);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


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
-- Name: continent continent_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


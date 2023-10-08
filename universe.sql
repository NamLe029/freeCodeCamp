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
-- Name: civil; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civil (
    civil_id integer NOT NULL,
    name character varying(20),
    age character varying(10) NOT NULL,
    population integer,
    population_in character varying(5),
    description text
);


ALTER TABLE public.civil OWNER TO freecodecamp;

--
-- Name: civil_link; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civil_link (
    civil_link_id integer NOT NULL,
    civil_id integer NOT NULL,
    on_planet boolean,
    planet_id integer,
    moon_id integer,
    name character varying(20)
);


ALTER TABLE public.civil_link OWNER TO freecodecamp;

--
-- Name: civil_link_link_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civil_link_link_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civil_link_link_id_seq OWNER TO freecodecamp;

--
-- Name: civil_link_link_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civil_link_link_id_seq OWNED BY public.civil_link.civil_link_id;


--
-- Name: civilization_civil_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilization_civil_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilization_civil_id_seq OWNER TO freecodecamp;

--
-- Name: civilization_civil_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilization_civil_id_seq OWNED BY public.civil.civil_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    dimension character varying(3) NOT NULL,
    age_in_millions_of_years numeric,
    description text
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
-- Name: intercom; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.intercom (
    intercom_id integer NOT NULL,
    "timestamp" integer NOT NULL,
    name character varying(40),
    message text,
    frequency integer NOT NULL,
    freq_unit character varying(4) NOT NULL
);


ALTER TABLE public.intercom OWNER TO freecodecamp;

--
-- Name: intercom_intercom_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.intercom_intercom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.intercom_intercom_id_seq OWNER TO freecodecamp;

--
-- Name: intercom_intercom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.intercom_intercom_id_seq OWNED BY public.intercom.intercom_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    planet_id integer NOT NULL,
    has_life boolean,
    age_in_millions_of_years numeric,
    description text
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
    name character varying(40),
    star_id integer NOT NULL,
    has_life boolean,
    age_in_millions_of_years numeric,
    description text
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
    name character varying(20),
    galaxy_id integer NOT NULL,
    age_in_millions_of_years numeric,
    description text
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
-- Name: civil civil_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil ALTER COLUMN civil_id SET DEFAULT nextval('public.civilization_civil_id_seq'::regclass);


--
-- Name: civil_link civil_link_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil_link ALTER COLUMN civil_link_id SET DEFAULT nextval('public.civil_link_link_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: intercom intercom_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.intercom ALTER COLUMN intercom_id SET DEFAULT nextval('public.intercom_intercom_id_seq'::regclass);


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
-- Data for Name: civil; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civil VALUES (0, 'ALL', 'none', 0, NULL, 'REFERENCES TO ALL CIVILIZATIONS');
INSERT INTO public.civil VALUES (1, 'Aurora Empire', 'Hyper', 125, 'M', 'An empire known for its advanced technology and vast territories.');
INSERT INTO public.civil VALUES (2, 'Nebula Kingdom', 'Modern', 200, 'K', 'A kingdom with a strong military and fortified castles.');
INSERT INTO public.civil VALUES (3, 'Cosmic Republic', 'Imperial', 75, 'B', 'A republic that values democracy and freedom.');
INSERT INTO public.civil VALUES (4, 'Galactic Dynasty', 'Castle', 300, 'M', 'A dynasty that has ruled for thousands of years.');
INSERT INTO public.civil VALUES (5, 'Stellar Federation', 'Feudal', 150, 'K', 'A federation with a focus on trade and commerce.');
INSERT INTO public.civil VALUES (6, 'Quasar Queendom', 'Dark', 225, 'B', 'A queendom known for its wise and just queen.');
INSERT INTO public.civil VALUES (7, 'Pulsar Principality', 'Hyper', 50, 'M', 'A principality with rich cultural heritage.');
INSERT INTO public.civil VALUES (8, 'Supernova Sultanate', 'Modern', 275, 'K', 'A sultanate located in the desert regions.');
INSERT INTO public.civil VALUES (9, 'Vortex Vatican', 'Imperial', 100, 'B', 'A small city-state with a religious significance.');
INSERT INTO public.civil VALUES (10, 'Eclipse Emirate', 'Castle', 250, 'M', 'An emirate rich in oil reserves.');
INSERT INTO public.civil VALUES (11, 'Meteor Monarchy', 'Feudal', 175, 'K', 'A monarchy with a constitutional form of government.');
INSERT INTO public.civil VALUES (12, 'Comet Commonwealth', 'Dark', 225, 'B', 'A commonwealth with a focus on mutual cooperation and welfare.');
INSERT INTO public.civil VALUES (13, 'Astro Archduchy', 'Hyper', 200, 'M', 'An archduchy known for its arts and music.');
INSERT INTO public.civil VALUES (14, 'Solar Shogunate', 'Modern', 50, 'K', 'A shogunate with a strong code of honor and discipline.');
INSERT INTO public.civil VALUES (15, 'Nebula Nomocracy', 'Imperial', 275, 'B', 'A nomocracy governed by the rule of law.');
INSERT INTO public.civil VALUES (16, 'Galaxy Grand Duchy', 'Castle', 125, 'M', 'A grand duchy with a grand duke or duchess as its head.');


--
-- Data for Name: civil_link; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civil_link VALUES (1, 15, true, 3, NULL, NULL);
INSERT INTO public.civil_link VALUES (2, 8, false, NULL, 3, NULL);
INSERT INTO public.civil_link VALUES (3, 6, true, 7, NULL, NULL);
INSERT INTO public.civil_link VALUES (4, 13, false, NULL, 8, NULL);
INSERT INTO public.civil_link VALUES (5, 2, true, 11, NULL, NULL);
INSERT INTO public.civil_link VALUES (6, 14, false, NULL, 9, NULL);
INSERT INTO public.civil_link VALUES (7, 7, true, 5, NULL, NULL);
INSERT INTO public.civil_link VALUES (8, 9, false, NULL, 14, NULL);
INSERT INTO public.civil_link VALUES (9, 16, true, 9, NULL, NULL);
INSERT INTO public.civil_link VALUES (10, 10, false, NULL, 18, NULL);
INSERT INTO public.civil_link VALUES (11, 12, true, 3, NULL, NULL);
INSERT INTO public.civil_link VALUES (12, 1, false, NULL, 21, NULL);
INSERT INTO public.civil_link VALUES (13, 11, true, 7, NULL, NULL);
INSERT INTO public.civil_link VALUES (14, 12, false, NULL, 14, NULL);
INSERT INTO public.civil_link VALUES (15, 13, true, 5, NULL, NULL);
INSERT INTO public.civil_link VALUES (16, 14, false, NULL, 18, NULL);
INSERT INTO public.civil_link VALUES (17, 15, true, 9, NULL, NULL);
INSERT INTO public.civil_link VALUES (18, 16, false, NULL, 21, NULL);
INSERT INTO public.civil_link VALUES (19, 1, true, 3, NULL, NULL);
INSERT INTO public.civil_link VALUES (20, 2, false, NULL, 3, NULL);
INSERT INTO public.civil_link VALUES (21, 3, true, 7, NULL, NULL);
INSERT INTO public.civil_link VALUES (22, 4, false, NULL, 8, NULL);
INSERT INTO public.civil_link VALUES (23, 5, true, 11, NULL, NULL);
INSERT INTO public.civil_link VALUES (24, 6, false, NULL, 9, NULL);
INSERT INTO public.civil_link VALUES (25, 7, true, 5, NULL, NULL);
INSERT INTO public.civil_link VALUES (26, 8, false, NULL, 14, NULL);
INSERT INTO public.civil_link VALUES (27, 9, true, 9, NULL, NULL);
INSERT INTO public.civil_link VALUES (28, 10, false, NULL, 18, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (0, 'ALL', '0D', 0, 'REFERENCES TO ALL GALAXIES');
INSERT INTO public.galaxy VALUES (1, 'Eagle Galaxy', '3D', 20000, 'The galaxy looks like an eagle');
INSERT INTO public.galaxy VALUES (2, 'Fast Galaxy', '3D', 40000, 'The galaxy moves at speed of light');
INSERT INTO public.galaxy VALUES (3, 'Fart Galaxy', '2D', 13000, 'Yes, you right. This galaxy appear similarly to a fart');
INSERT INTO public.galaxy VALUES (4, 'Hycon Galaxy', '4D', 142240, 'The first 4D galaxy in the universe');
INSERT INTO public.galaxy VALUES (5, 'Timeless Galaxy', '5D', 0, 'This galaxy doesnt have time');
INSERT INTO public.galaxy VALUES (6, 'Chaotic Galaxy', '3D', 46240, 'An chaotic galaxy');


--
-- Data for Name: intercom; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.intercom VALUES (0, 0, 'SYSTEM', 'INTERCOM has been invented!', 0, 'Hz');
INSERT INTO public.intercom VALUES (1, 3839, 'Supernovaman', 'Hi, anyone here', 42, 'Hz');
INSERT INTO public.intercom VALUES (2, 4142, 'Nebulanian', 'Hi, where are you?', 42, 'Hz');
INSERT INTO public.intercom VALUES (3, 4321, 'Supernovaman', 'I dont know', 42, 'Hz');
INSERT INTO public.intercom VALUES (4, 5722, 'Astroman', 'Hey, want some music?', 56, 'Hz');
INSERT INTO public.intercom VALUES (5, 6283, 'Pulsarian', 'Yea', 56, 'Hz');
INSERT INTO public.intercom VALUES (6, 6324, 'Auroian', 'Music time is over! Now become one of my territories', 56, 'Hz');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (0, 'ALL', 0, NULL, 0, 'REFERENCES TO ALL MOONS IN THE PLANET');
INSERT INTO public.moon VALUES (1, 'Lunar Labyrinth', 3, false, 7000, 'A moon with a complex network of canyons.');
INSERT INTO public.moon VALUES (2, 'Satellite Symphony', 6, false, 15000, 'A moon with a dense atmosphere.');
INSERT INTO public.moon VALUES (3, 'Orbital Oasis', 9, true, 20000, 'An ice-covered moon with a subsurface ocean.');
INSERT INTO public.moon VALUES (4, 'Celestial Citadel', 2, false, 25000, 'A small moon with a silicate rock surface.');
INSERT INTO public.moon VALUES (5, 'Galaxy Grotto', 5, false, 30000, 'A moon with a large impact crater.');
INSERT INTO public.moon VALUES (6, 'Nebula Nook', 8, false, 35000, 'A moon with an irregular shape.');
INSERT INTO public.moon VALUES (7, 'Pulsar Pavilion', 1, false, 40000, 'A moon with a thin atmosphere of neon.');
INSERT INTO public.moon VALUES (8, 'Quasar Quarters', 4, true, 4500, 'A moon orbiting close to its planet.');
INSERT INTO public.moon VALUES (9, 'Stellar Sanctuary', 7, true, 5000, 'A moon in the habitable zone of its planet.');
INSERT INTO public.moon VALUES (10, 'Atlas Veil', 10, false, 5500, 'An exomoon with extreme weather conditions.');
INSERT INTO public.moon VALUES (11, 'Eclipse Enclave', 11, false, 6000, 'A tidally locked moon with one side always facing its planet.');
INSERT INTO public.moon VALUES (12, 'Meteor Mosaic', 12, false, 6500, 'A moon with a surface marked by numerous impact craters.');
INSERT INTO public.moon VALUES (13, 'Comet Canopy', 1, false, 7000, 'A moon with a thin atmosphere and icy surface.');
INSERT INTO public.moon VALUES (14, 'Astro Archipelago', 2, true, 7500, 'A moon with a large ocean and scattered islands.');
INSERT INTO public.moon VALUES (15, 'Solar Scepter', 3, false, 8000, 'A moon that orbits its planet in a highly elliptical orbit.');
INSERT INTO public.moon VALUES (16, 'Galactic Galleon', 4, false, 8500, 'A moon with a magnetic field stronger than Earth.');
INSERT INTO public.moon VALUES (17, 'Nebula Navigator', 5, false, 9000, 'A moon with a thick, cloudy atmosphere.');
INSERT INTO public.moon VALUES (18, 'Pulsar Pearl', 6, true, 9500, 'A moon composed mostly of water ice.');
INSERT INTO public.moon VALUES (19, 'Quasar Quill', 7, false, 10000, 'A moon with a thin, wispy atmosphere of methane.');
INSERT INTO public.moon VALUES (20, 'Stellar Steeple', 8, false, 10500, 'A moon with towering mountain ranges.');
INSERT INTO public.moon VALUES (21, 'Vortex Vault', 9, true, 11000, 'A moon with a subsurface ocean of liquid water.');
INSERT INTO public.moon VALUES (22, 'Eclipse Echo', 10, false, 11500, 'A moon that is geologically active with numerous volcanoes.');
INSERT INTO public.moon VALUES (23, 'Meteor Mirage', 11, false, 12000, 'A moon that has an extremely thin atmosphere.');
INSERT INTO public.moon VALUES (24, 'Comet Crown', 12, false, 12500, 'A moon with a transient atmosphere created by outgassing.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (0, 'ALL', 0, NULL, 0, 'REFERENCES TO ALL PLANETS IN THE STAR');
INSERT INTO public.planet VALUES (1, 'Zephyronis', 1, false, 21000, 'The planet is covered by sand');
INSERT INTO public.planet VALUES (2, 'Vortex Prime', 1, false, 21230, 'The planet with extreme weaather condition');
INSERT INTO public.planet VALUES (3, 'Comet Vega', 1, true, 28330, 'This planet has water');
INSERT INTO public.planet VALUES (4, 'Aurora Oasis', 6, false, 4500, 'A rocky planet with a dense atmosphere.');
INSERT INTO public.planet VALUES (6, 'Cosmic Pinnacle', 3, false, 4200, 'An ice giant with a deep blue color.');
INSERT INTO public.planet VALUES (7, 'Galactic Halo', 4, true, 9000, 'A small rocky planet with iron core.');
INSERT INTO public.planet VALUES (8, 'Stellar Lagoon', 2, false, 4700, 'A gas giant with a wide equatorial band.');
INSERT INTO public.planet VALUES (10, 'Pulsar Prism', 6, false, 6000, 'A hot Jupiter-like planet.');
INSERT INTO public.planet VALUES (11, 'Supernova Sanctuary', 4, true, 25500, 'A super-Earth in the habitable zone.');
INSERT INTO public.planet VALUES (12, 'Vortex Veil', 3, false, 34000, 'An exoplanet with extreme weather conditions.');
INSERT INTO public.planet VALUES (5, 'Nebula Enclave', 2, true, 14600, 'A gas giant with a prominent ring system.');
INSERT INTO public.planet VALUES (9, 'Quasar Quiver', 5, true, 15000, 'A planet with a highly elliptical orbit.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (0, 'ALL', 0, 0, 'REFERENCES TO ALL STARS IN THE GALAXY');
INSERT INTO public.star VALUES (1, 'Red Heart', 6, 40000, 'The star has the shape of a heart');
INSERT INTO public.star VALUES (2, 'Blue Light', 1, 18000, 'A blue shining star');
INSERT INTO public.star VALUES (3, 'Two Side', 4, 130000, 'The star has two sides, one side omits yellow light, another omits dark blue light');
INSERT INTO public.star VALUES (4, 'Flat Circle', 3, 12200, '2D star?');
INSERT INTO public.star VALUES (5, 'Escar Star', 2, 42300, 'The most powerful star in the universe');
INSERT INTO public.star VALUES (6, 'Noneless Star', 5, 0, 'This star, has unknown shape, is still a mistery');


--
-- Name: civil_link_link_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civil_link_link_id_seq', 28, true);


--
-- Name: civilization_civil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilization_civil_id_seq', 16, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: intercom_intercom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.intercom_intercom_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: civil civil_civil_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil
    ADD CONSTRAINT civil_civil_id_key UNIQUE (civil_id);


--
-- Name: civil_link civil_link_civil_link_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil_link
    ADD CONSTRAINT civil_link_civil_link_id_key UNIQUE (civil_link_id);


--
-- Name: civil_link civil_link_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil_link
    ADD CONSTRAINT civil_link_pkey PRIMARY KEY (civil_link_id);


--
-- Name: civil civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civil_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: intercom intercom_intercom_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.intercom
    ADD CONSTRAINT intercom_intercom_id_key UNIQUE (intercom_id);


--
-- Name: intercom intercom_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.intercom
    ADD CONSTRAINT intercom_pkey PRIMARY KEY (intercom_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: civil_link civil_link_civil_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil_link
    ADD CONSTRAINT civil_link_civil_id_fkey FOREIGN KEY (civil_id) REFERENCES public.civil(civil_id);


--
-- Name: civil_link civil_link_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil_link
    ADD CONSTRAINT civil_link_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: civil_link civil_link_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil_link
    ADD CONSTRAINT civil_link_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_p_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_p_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_p_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_p_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_p_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_p_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


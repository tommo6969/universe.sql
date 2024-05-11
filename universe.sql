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
    description text,
    constellation text,
    apparent_magnitude integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    col4 text,
    col5 text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    col4 numeric(1,1),
    col5 text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    "boolean" boolean
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    flamsteed integer,
    is_it_binary boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'barred spiral', 'Andromeda', 3, 'Andromeda');
INSERT INTO public.galaxy VALUES (2, 'NGC 4038', 'Corvus', 11, 'Antennae');
INSERT INTO public.galaxy VALUES (3, 'face-on unbarred spiral', 'Centaurus', 13, 'Backward');
INSERT INTO public.galaxy VALUES (4, 'blue compact dwarf', 'Lynx', 12, 'Bear Paw');
INSERT INTO public.galaxy VALUES (5, 'isolated spiral', 'Coma Berenices', 9, 'Black Eye');
INSERT INTO public.galaxy VALUES (6, 'grand design spiral', 'Ursa Major', 7, 'Bodes');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon 2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon 3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon 4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon 5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon 6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon 7', 7, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon 8', 8, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon 9', 9, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon 10', 10, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon 11', 11, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon 12', 12, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon 13', 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon 14', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon 15', 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon 16', 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon 17', 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon 18', 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon 19', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon 20', 8, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mercury', 2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 4, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', 2, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 3, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'X', 4, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'B', 5, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Z', 6, NULL, NULL);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Planet', NULL);
INSERT INTO public.planet_types VALUES (2, 'Planet 2', NULL);
INSERT INTO public.planet_types VALUES (3, 'Planet 3', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 1, 21, NULL);
INSERT INTO public.star VALUES (2, '15 Lyn', 4, 15, NULL);
INSERT INTO public.star VALUES (3, 'Crv', 2, 4, NULL);
INSERT INTO public.star VALUES (4, 'Cen', 3, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Dubhe', 6, 50, NULL);
INSERT INTO public.star VALUES (6, 'Com', 5, 43, NULL);


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
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_types_id_key UNIQUE (planet_types_id);


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


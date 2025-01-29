--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

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
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    department_no integer NOT NULL,
    manager_id integer NOT NULL,
    name text NOT NULL,
    location character(50) NOT NULL,
    project_no integer NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    project_no integer NOT NULL,
    name character(5) NOT NULL,
    duration integer,
    manager_id integer NOT NULL
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: staff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    staff_name text NOT NULL,
    department_no integer NOT NULL,
    staff_sal real NOT NULL,
    age integer NOT NULL,
    mobile character varying(15) NOT NULL
);


ALTER TABLE public.staff OWNER TO postgres;

--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (department_no, manager_id, name, location, project_no) FROM stdin;
1	108	Administration	Ikeja                                             	44
2	101	Account	Egbeda                                            	11
3	100	Packaging	Ajah                                              	44
4	120	Research	V.I                                               	33
5	97	Account	Magodo                                            	22
6	122	Operations	Mile 2                                            	44
7	107	Packaging	Ketu                                              	55
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (project_no, name, duration, manager_id) FROM stdin;
11	A    	9	102
22	B    	14	97
33	C    	16	120
44	D    	25	108
55	E    	9	107
\.


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.staff (staff_id, staff_name, department_no, staff_sal, age, mobile) FROM stdin;
100	Mustapha Ali	3	175000	32	08012345671
107	Alokwe Martin	7	380000	48	08012345672
97	Dankade Aminat	5	550000	40	08012345673
108	Josiah Joshua	1	120000	30	08012345674
102	Mankinde Mary	2	450000	55	08012345675
120	Adeleke Jane	4	200000	38	08012345676
122	Osahon Mark	6	320000	44	08012345677
104	Kuti Lawal	1	750000	35	08012345679
117	Suleman Ajayi	3	800000	50	07030089981
\.


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_no);


--
-- Name: staff employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT employees_pkey PRIMARY KEY (staff_id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (project_no);


--
-- PostgreSQL database dump complete
--


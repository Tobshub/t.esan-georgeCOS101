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
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name text NOT NULL,
    age integer NOT NULL,
    email text NOT NULL,
    mobile character(15) NOT NULL,
    employee_id integer NOT NULL,
    data_id integer NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, name, age, email, mobile, employee_id, data_id) FROM stdin;
110	Musta Karim	35	m_karim@gmail.com	08055089112    	102	5
111	Lilian Jaiya	43	l_jaiye@gmail.com	08055185341    	100	3
112	Arthur Musa	50	a_musa@gmail.com	07055282813    	107	10
113	Philip Akonjo	41	p_akonjo@gmail.com	08055282813    	100	2
114	Marylene Mapa	33	m_mapa@gmail.com	08053333551    	120	5
115	Oghenero Agor	50	o_agor@gmail.com	07055566774    	117	11
116	Adams Bree	33	a_bree@gmail.com	08055282813    	102	1
117	Okafor Mathias	45	o_mathias@gmail.com	08055282814    	120	10
118	Adams Bree	33	a_bree@gmail.com	08055282815    	117	11
119	Adams Bree	33	a_bree@gmail.com	08055282816    	107	5
120	Adams Bree	33	a_bree@gmail.com	08055282818    	100	8
121	Adams Bree	33	a_bree@gmail.com	08055282819    	120	2
122	Adams Bree	33	a_bree@gmail.com	08055282820    	107	5
\.


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- PostgreSQL database dump complete
--


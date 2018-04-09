--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

-- Started on 2018-04-08 19:30:37 MDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13241)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16412)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    clave bigint NOT NULL,
    descripcion text NOT NULL,
    precio numeric NOT NULL,
    clasificacion text NOT NULL,
    existencia numeric NOT NULL,
    existencia_min numeric NOT NULL,
    existencia_max numeric NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16410)
-- Name: producto_clave_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_clave_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producto_clave_seq OWNER TO postgres;

--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 196
-- Name: producto_clave_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_clave_seq OWNED BY public.producto.clave;


--
-- TOC entry 2988 (class 2604 OID 16415)
-- Name: producto clave; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN clave SET DEFAULT nextval('public.producto_clave_seq'::regclass);


--
-- TOC entry 3113 (class 0 OID 16412)
-- Dependencies: 197
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (clave, descripcion, precio, clasificacion, existencia, existencia_min, existencia_max) FROM stdin;
26	Pepsi Cola 3lts	23	Refresco	7	3	10
27	Fresca 500ml	10	Refresco	13	4	18
28	Fresca 1lt	13.3	Refresco	14	4	15
29	Fresca 2lts	18.3	Refresco	8	4	10
30	Fresca 3lts	23	Refresco	5	3	10
31	Cocacola 2lts	18.3	Refresco	7	4	10
32	Cocacola 3lts	23	Refresco	7	3	10
33	Mountain Dew 500ml	10	Refresco	15	4	18
34	Mountain Dew 1lt	13.3	Refresco	10	4	15
35	Mountain Dew 2lts	18.3	Refresco	7	4	10
36	Mountain Dew 3lts	23	Refresco	7	3	10
37	Fanta Naranja 500ml	10	Refresco	15	4	18
38	Fanta Naranja 1lt	13.3	Refresco	18	4	15
39	Fanta Naranja 2lts	18.3	Refresco	7	4	10
40	Fanta Naranja 3lts	23	Refresco	5	3	10
41	Dr. Pepper 500ml	10	Refresco	18	4	18
42	Dr. Pepper 1lt	13.3	Refresco	5	4	15
43	Dr. Pepper 2lts	18.3	Refresco	4	4	10
44	Dr. Pepper 3lts	23	Refresco	5	3	10
45	Pepsi Cola 500ml	10	Refresco	15	4	18
46	Pepsi Cola 1lt	13.3	Refresco	10	4	15
47	Pepsi Colal 2lts	18.3	Refresco	7	4	10
48	Pepsi Cola 3lts	23	Refresco	7	3	10
49	Fresca 500ml	10	Refresco	13	4	18
50	Fresca 1lt	13.3	Refresco	14	4	15
51	Fresca 2lts	18.3	Refresco	8	4	10
52	Fresca 3lts	23	Refresco	5	3	10
53	Chips Fuego 50g	12	Papas Fritas	25	10	25
54	Chips fuego 150g	25	Papas Fritas	30	20	30
55	Chips Fuego 240g	35	Papas Fritas	23	20	30
56	Ruffles 50g	12	Papas Fritas	13	10	25
57	Ruffles 150g	16	Papas Fritas	18	20	30
58	Ruffles 240g	27	Papas Fritas	27	20	30
59	Crunch Diabla 50g	8	Papas Fritas	18	10	25
60	Crunch Diabla 150g	25	Papas Fritas	30	20	30
61	Crunch Diabla 240g	30	Papas Fritas	33	20	30
62	Chetos Torc50g	10	Papas Fritas	20	18	25
63	Chetos Torciditos 150g	15	Papas Fritas	23	20	30
64	Chetos Torciditos 240g	27	Papas Fritas	23	20	30
65	Takis Fuego 50g	9	Papas Fritas	28	10	25
66	Takis Fuego 150g	20	Papas Fritas	15	20	30
67	Takis Fuego 240g	25	Papas Fritas	7	20	30
68	Tostitos FlamminHot 50g	15	Papas Fritas	23	10	25
69	Tostitos FlamminHot 150g	25	Papas Fritas	23	20	30
70	Tostitos FlamminHot 240g	38	Papas Fritas	23	20	30
71	Leche 1lt	15	Lacteos	30	25	35
72	Leche 2tls	18	Lacteos	25	25	30
73	Leche 1Gal	25	Lacteos	124	25	30
74	Queso Oaxaca 125g	15	Lacteos	30	25	35
75	Queso Oaxaca 250g	18	Lacteos	25	25	30
76	Queso Oaxaca 500g	25	Lacteos	24	25	30
77	Crema La Villita 150mlts	30	Lacteos	30	25	35
78	Crema La Villita 250mlts	40	Lacteos	35	25	30
79	Crema La Villita 250400mlts	45	Lacteos	30	25	30
80	Panditas	15	Dulceria	30	25	35
81	Panchos	18	Dulceria	25	25	30
82	Bubaloo	25	Dulceria	124	25	30
83	Jarritos Paleta	25	Dulceria	124	25	30
84	Gusanitos	25	Dulceria	124	25	30
85	Rocaleta	25	Dulceria	124	25	30
86	Pelon Pelo Rico	25	Dulceria	124	25	30
87	Ferrero Rocher	25	Dulceria	124	25	30
88	Bolitochas	25	Lacteos	124	25	30
89	Carlos IV	25	Lacteos	124	25	30
90	Panditas	15	Dulceria	30	25	35
91	Nuevo Objeto	40.000000	IntroducidoCreate	20	25	15
92	Nuevo Objeto	40.000000	IntroducidoCreate	20	25	15
93	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
94	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
95	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
96	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
97	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
98	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
99	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
100	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
101	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
102	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
103	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
104	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
105	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
106	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
107	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
108	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
109	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
110	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
111	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
112	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
113	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
114	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
115	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
116	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
117	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
118	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
119	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
120	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
121	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
122	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
123	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
124	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
125	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
126	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
127	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
128	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
129	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
130	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
131	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
132	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
133	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
134	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
135	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
136	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
137	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
138	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
139	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
140	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
141	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
142	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
143	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
144	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
145	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
146	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
147	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
148	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
149	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
150	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
151	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
152	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
153	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
154	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
155	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
156	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
157	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
158	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
159	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
160	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
161	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
162	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
163	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
164	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
165	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
166	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
167	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
168	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
169	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
170	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
171	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
172	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
173	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
174	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
175	Nuevo Objeto	40.00	IntroducidoCreate	20	25	15
176	Curtidos	10.00	Enlatados	40	50	35
177	Elotitos	6.00	Enlatados	40	50	35
178	Zanahorias	7.00	Enlatados	40	50	35
179	Chicharos	7.00	Enlatados	40	50	35
180	Atun	10.00	Enlatados	40	50	35
181	Rajas	10.00	Enlatados	40	50	35
182	Frijoles	12.00	Enlatados	40	50	35
183	Ejotes	8.00	Enlatados	30	40	25
184	Mango en Almibar	14.00	Enlatados	30	40	35
185	Piña en Almibar	14.00	Enlatados	30	40	35
\.


--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 196
-- Name: producto_clave_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_clave_seq', 185, true);


--
-- TOC entry 2990 (class 2606 OID 16420)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (clave);


-- Completed on 2018-04-08 19:30:38 MDT

--
-- PostgreSQL database dump complete
--


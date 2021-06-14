--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

--
-- Name: genre; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.genre AS ENUM (
    'Strategy',
    'RPG',
    'Indie',
    'FPS',
    'Adventure',
    'Action',
    'Dating',
    'Arcade',
    'Horror',
    'Casual',
    'Fighting',
    'Racing',
    'Simulation',
    'Sport',
    'Survival'
);


ALTER TYPE public.genre OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: akun_admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.akun_admin (
    id integer NOT NULL,
    nama character varying(50),
    password character varying(25),
    email character varying(50)
);


ALTER TABLE public.akun_admin OWNER TO postgres;

--
-- Name: akun_admin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.akun_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.akun_admin_id_seq OWNER TO postgres;

--
-- Name: akun_admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.akun_admin_id_seq OWNED BY public.akun_admin.id;


--
-- Name: akun_pengguna; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.akun_pengguna (
    id integer NOT NULL,
    nama character varying(50),
    password character varying(25),
    lisensi_game text,
    email character varying(50),
    saldo bigint
);


ALTER TABLE public.akun_pengguna OWNER TO postgres;

--
-- Name: akun_pengguna_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.akun_pengguna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.akun_pengguna_id_seq OWNER TO postgres;

--
-- Name: akun_pengguna_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.akun_pengguna_id_seq OWNED BY public.akun_pengguna.id;


--
-- Name: game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.game (
    id integer NOT NULL,
    nama character varying(50),
    genre public.genre,
    harga integer,
    pengembang character varying(30),
    tanggal_rilis date,
    spesifikasi text,
    deskripsi text
);


ALTER TABLE public.game OWNER TO postgres;

--
-- Name: game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_id_seq OWNER TO postgres;

--
-- Name: game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.game_id_seq OWNED BY public.game.id;


--
-- Name: transaksi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksi (
    no_transaksi integer,
    game character varying(50),
    id_pembeli integer,
    tanggal_transaksi date
);


ALTER TABLE public.transaksi OWNER TO postgres;

--
-- Name: akun_admin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.akun_admin ALTER COLUMN id SET DEFAULT nextval('public.akun_admin_id_seq'::regclass);


--
-- Name: akun_pengguna id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.akun_pengguna ALTER COLUMN id SET DEFAULT nextval('public.akun_pengguna_id_seq'::regclass);


--
-- Name: game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.game ALTER COLUMN id SET DEFAULT nextval('public.game_id_seq'::regclass);


--
-- Data for Name: akun_admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.akun_admin (id, nama, password, email) FROM stdin;
\.


--
-- Data for Name: akun_pengguna; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.akun_pengguna (id, nama, password, lisensi_game, email, saldo) FROM stdin;
1	kontol	punyamu	\N	gede	\N
2	SDSD	123	\N	asd	\N
3	alik	567	\N	gmail.com	\N
4	kontol2	333	\N	kontol@jamuran.com	\N
5			\N		\N
6			\N		\N
7	dia	akucintadia	\N	aku@gmail.com	\N
8	Alik	ketangnetic	\N	amka@yahoo.com	\N
\.


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.game (id, nama, genre, harga, pengembang, tanggal_rilis, spesifikasi, deskripsi) FROM stdin;
7171	GTA IV	RPG	150000	Rockstar North	2001-05-15	Spek Tinggi	                                        ...\r\n                 adfdf                       
\.


--
-- Data for Name: transaksi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaksi (no_transaksi, game, id_pembeli, tanggal_transaksi) FROM stdin;
\.


--
-- Name: akun_admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.akun_admin_id_seq', 1, false);


--
-- Name: akun_pengguna_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.akun_pengguna_id_seq', 8, true);


--
-- Name: game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.game_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--


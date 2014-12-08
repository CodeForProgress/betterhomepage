--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: app_contact; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_contact (
    id integer NOT NULL,
    first_name character varying(15) NOT NULL,
    last_name character varying(15) NOT NULL,
    email character varying(255) NOT NULL,
    interested_in character varying(300),
    notes character varying(150) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.app_contact OWNER TO postgres;

--
-- Name: app_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.app_contact_id_seq OWNER TO postgres;

--
-- Name: app_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_contact_id_seq OWNED BY app_contact.id;


--
-- Name: app_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_contact_id_seq', 81, true);


--
-- Name: app_fellow; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_fellow (
    id integer NOT NULL,
    first_name character varying(15) NOT NULL,
    last_name character varying(15) NOT NULL,
    where_from character varying(300),
    current_job character varying(300),
    cohort character varying(100),
    post_2014_residency_q1 character varying(2000),
    post_2014_residency_q2 character varying(2000),
    post_2014_residency_q3 character varying(2000),
    post_2014_residency_q4 character varying(2000),
    page_text text,
    github_username character varying(45)
);


ALTER TABLE public.app_fellow OWNER TO postgres;

--
-- Name: app_fellow_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_fellow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.app_fellow_id_seq OWNER TO postgres;

--
-- Name: app_fellow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_fellow_id_seq OWNED BY app_fellow.id;


--
-- Name: app_fellow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_fellow_id_seq', 22, true);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 24, true);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 9, true);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 8, true);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_contact ALTER COLUMN id SET DEFAULT nextval('app_contact_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_fellow ALTER COLUMN id SET DEFAULT nextval('app_fellow_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Data for Name: app_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY app_contact (id, first_name, last_name, email, interested_in, notes, created_at, updated_at) FROM stdin;
1	Mark	Toth	marktoth@centurylink.net	[u'instructor']		2014-11-18 01:15:49.188399+00	2014-11-18 01:15:49.188477+00
2	Ryan	Gladstone	Ryan.gladstone@gmail.com	[u'coach', u'instructor', u'email_list']		2014-11-18 04:36:05.303459+00	2014-11-18 04:36:05.303538+00
3	Nicole	Castillo	nicole.p.castillo@gmail.com	[u'application', u'email_list']		2014-11-18 05:10:08.416691+00	2014-11-18 05:10:08.416748+00
4	Briana	Brown	brown.briana.nicole@gmail.com	[u'application']		2014-11-18 16:12:23.633121+00	2014-11-18 16:12:23.633178+00
5	Erin	Armstrong	earmstrong@crimson.ua.edu	[u'application', u'email_list']		2014-11-19 01:53:17.597126+00	2014-11-19 01:53:17.597183+00
6	Angie	Tran	angietran10@gmail.com	[u'application', u'email_list']		2014-11-19 03:02:49.52338+00	2014-11-19 03:02:49.523437+00
7	Jasmine	Merritt	itsjazelle@gmail.com	[u'application']		2014-11-19 19:56:03.167576+00	2014-11-19 19:56:03.167637+00
8	Liz	Keith	lkeith@probono.net	[u'email_list', u'other']		2014-11-20 07:15:01.275112+00	2014-11-20 07:15:01.275169+00
9	Tim	Chambers	tchambers@deweysquare.com	[u'other']		2014-11-20 17:19:44.473857+00	2014-11-20 17:19:44.473913+00
10	Sunday	Bitrus	sbitrus@outlook.com	[u'application', u'coach', u'instructor', u'mentor', u'email_list']		2014-11-21 00:33:51.971801+00	2014-11-21 00:33:51.971857+00
12	Doug	Richmond	dr@vt.edu	[u'email_list']		2014-11-21 15:04:23.314338+00	2014-11-21 15:04:23.314394+00
15	Constance	Ip	constanceip@gmail.com	[u'application']		2014-11-21 16:14:29.374063+00	2014-11-21 16:14:29.374118+00
16	Komal	Khan	k10kk022@gmail.com	[u'application', u'instructor', u'email_list', u'other']	I am in the Bay Area. Are there any events happening in the Oakland area ?	2014-11-21 16:33:55.368758+00	2014-11-21 16:33:55.368814+00
17	Aimee	Castenell	castenell@gmail.com	[u'application', u'email_list']		2014-11-21 17:09:31.09999+00	2014-11-21 17:09:31.100043+00
18	Deanna	Kosaraju	deanna@globaltechwomen.com	[u'other']	Hello!\r\n\r\nI would like to discuss a collaboration. Please contact me at your earliest convenience.\r\n\r\nKindest regards,\r\nDeanna	2014-11-21 20:06:23.554469+00	2014-11-21 20:06:23.554548+00
19	Neetu	Jain	nutshi@gmail.com	[u'coach', u'instructor', u'email_list']	I would love to explore how i can help .. I am a techie .. passionate about social change	2014-11-21 20:13:56.565118+00	2014-11-21 20:13:56.565175+00
20	Carolyn	Anderson	caronique2002@yahoo.com	[u'application', u'email_list']		2014-11-21 22:50:15.218332+00	2014-11-21 22:50:15.218389+00
21	Maria	Beltran	beltranm16@yahoo.com	[u'application']		2014-11-22 00:37:20.47798+00	2014-11-22 00:37:20.478036+00
22	Michelle 	Vo	emailmichellevo@gmail.com	[u'application', u'email_list', u'other']		2014-11-22 01:12:16.464255+00	2014-11-22 01:12:16.46431+00
23	Maiya	Edgerly	maiyaedge@yahoo.com	[u'application']		2014-11-22 08:54:00.282049+00	2014-11-22 08:54:00.282104+00
24	Steven	Leon	Steven_leon@live.com	[u'application', u'email_list', u'other']	Hello Code for Progress,\r\n\r\nDo you have a NYC partner office? The systematic bias here is a real problem as well.\r\n\r\nThanks	2014-11-22 14:45:32.084438+00	2014-11-22 14:45:32.084517+00
27	Leena	P	Leenap8563@gmail.com	[u'application', u'email_list']	I fit the description for the ideal candidate and would like to apply for the next round.	2014-11-22 19:45:55.271432+00	2014-11-22 19:45:55.27149+00
29	Matthew	Yeung	matthewyeung.student@gmail.com	[u'application']		2014-11-23 05:01:27.040195+00	2014-11-23 05:01:27.040274+00
30	Matthew	Parker	matthewaparker@icloud.com	[u'application']		2014-11-23 06:10:33.790359+00	2014-11-23 06:10:33.790414+00
31	Zaynaib	Giwa	zaynaibg@gmail.com	[u'application', u'email_list']		2014-11-23 06:50:15.332635+00	2014-11-23 06:50:15.33269+00
32	Monica	Oss	monicaoss@openminds.com	[u'email_list', u'other']		2014-11-23 13:46:15.152327+00	2014-11-23 13:46:15.152381+00
33	Monica	 Peters	monicapeters24@aol.com	[u'application']		2014-11-23 20:23:16.152602+00	2014-11-23 20:23:16.152687+00
34	Christine	Elasigue	celasigue@gmail.com	[u'application', u'email_list']		2014-11-23 20:41:04.087445+00	2014-11-23 20:41:04.087528+00
35	Aline	Anders	Aline153@aol.com	[u'application']		2014-11-24 00:23:44.275693+00	2014-11-24 00:23:44.275749+00
36	Marie	Tran	mariet1129@gmail.com	[u'application']		2014-11-24 06:27:32.843373+00	2014-11-24 06:27:32.843429+00
39	Robyn 	Stegman	stegmanre@gmail.com	[u'application', u'email_list']		2014-11-24 16:50:43.971447+00	2014-11-24 16:50:43.971529+00
40	Mia	Campbell	mr9525@my.bristol.ac.uk	[u'application']		2014-11-24 16:55:31.913028+00	2014-11-24 16:55:31.913083+00
41	Angie	Chamberland	angiechamberland@gmail.com	[u'application', u'email_list']	Dental Office Manager in DC interested in getting involved with healthcare IT and coding in order to provide better patient services. 	2014-11-24 18:30:41.493933+00	2014-11-24 18:30:41.493988+00
42	Karen 	Hambro	khambro@gmail.com	[u'application', u'email_list']		2014-11-24 20:48:29.099614+00	2014-11-24 20:48:29.09967+00
43	Nina	Armah	nina.armah@gmail.com	[u'application']		2014-11-24 21:31:54.938429+00	2014-11-24 21:31:54.938502+00
44	Emmi	Bevensee	emmicb@gmail.com	[u'application']	Thanks CFP!	2014-11-24 21:56:36.190016+00	2014-11-24 21:56:36.190072+00
45	Mi	Turn	m_turner@ymail.com	[u'application']		2014-11-25 09:37:57.344913+00	2014-11-25 09:37:57.344971+00
46	Lauren	Payne	laurenpayne1012@gmail.com	[u'application', u'email_list']		2014-11-25 16:03:46.487305+00	2014-11-25 16:03:46.487362+00
47	Zakia	Soomauroo	s.zakya@googlemail.com	[u'application']		2014-11-25 16:50:09.445989+00	2014-11-25 16:50:09.446045+00
48	Juliet	Camp	juliet.camp@gmail.com	[u'application', u'email_list']	I am changing careers.	2014-11-25 17:43:46.773196+00	2014-11-25 17:43:46.773252+00
49	Catherine	Frost	catherine.frost@pomona.edu	[u'application', u'email_list']	This is an amazing program and I would love to hear more about it! Thank you for your time!	2014-11-25 18:53:50.549463+00	2014-11-25 18:53:50.549554+00
50	Jacob	Chavez	jacob@affezi.com	[u'application', u'email_list']		2014-11-25 19:32:21.38487+00	2014-11-25 19:32:21.384928+00
51	Alex 	Aguilar	aaguilar82@student.rcc.edu	[u'application']		2014-11-25 19:32:42.506852+00	2014-11-25 19:32:42.506908+00
52	hannes	schneider	hannes.schneider@mail.de	[u'application']		2014-11-25 20:10:54.704413+00	2014-11-25 20:10:54.704469+00
53	Gina	Del Tito	deltitog@gmail.com	[u'application', u'email_list']		2014-11-25 20:18:25.066809+00	2014-11-25 20:18:25.066866+00
37	Camille	Burner	camilleburner@comcast.net	[u'application', u'other']		2014-11-24 15:36:32.113246+00	2014-11-25 20:50:13.147117+00
54	Brian	Grover	bgrooven@hotmail.com	[u'application', u'mentor']	I'd like to offer professional mentorship to individuals learning to code.	2014-11-25 21:02:00.252282+00	2014-11-25 21:02:00.252342+00
55	Gwendolyn	Holbrow	holbrow@hotmail.com	[u'application', u'email_list']	This sure sounds like a great fit for me. I look forward to learning more, and more, and more!\r\n\r\nRegards,\r\nGwen Holbrow	2014-11-25 21:17:33.601342+00	2014-11-25 21:17:33.601399+00
56	Makda 	Aman	makda.aman@gmail.com	[u'application', u'email_list']	This looks like an incredible opportunity, I'm excited to learn more about the fellowship. 	2014-11-25 22:18:49.200332+00	2014-11-25 22:18:49.200388+00
57	Erick	Chavarria	erickalan.chavarria@gmail.com	[u'application', u'email_list']		2014-11-25 22:30:54.997794+00	2014-11-25 22:30:54.997851+00
58	Kaitlyn	Martinez	kaitlyn.martinez1885@gmail.com	[u'application']		2014-11-25 23:20:26.560654+00	2014-11-25 23:20:26.560709+00
59	Chris	Gerdes	cgerdes714@gmail.com	[u'application', u'email_list']	.... I really do not know what it is all about, but I would like to find out more because this sounds interesting. 	2014-11-26 01:24:50.10506+00	2014-11-26 01:24:50.105115+00
60	Dawn	Walker	dawn.walker@mail.utoronto.ca	[u'application']		2014-11-26 01:43:17.327249+00	2014-11-26 01:43:17.327305+00
61	Satenik	Margaryan	satenikm@gmail.com	[u'application', u'email_list']		2014-11-26 02:33:07.749168+00	2014-11-26 02:33:07.749225+00
62	Nettie	morgan	netlucia@umd.edu	[u'application', u'email_list']		2014-11-26 05:54:41.370481+00	2014-11-26 05:54:41.370562+00
63	Nicoletta	Bortoluzzi	nico.bortoluzzi@alice.it	[u'application']		2014-11-26 13:33:51.207227+00	2014-11-26 13:33:51.207283+00
64	Cynthia	Sanchez	cyasanchez@gmail.com	[u'application']		2014-11-26 17:59:31.556284+00	2014-11-26 17:59:31.556341+00
65	Timothy	D'Agostino	tim.r.dagostino@gmail.com	[u'application', u'email_list']		2014-11-26 20:04:32.669569+00	2014-11-26 20:04:32.669624+00
66	Jennica	Billins 	Jbillins@gmail.com 	[u'application', u'email_list']		2014-11-27 01:29:42.913973+00	2014-11-27 01:29:42.914031+00
67	Kirk	Tolliver	Kirktolliver@yahoo.com	[u'application', u'email_list']	Hello, this program sounds life changing! I am eager to apply!\r\n\r\nSincerely \r\n\r\nKirk Tolliver	2014-11-27 17:38:29.578962+00	2014-11-27 17:38:29.579017+00
68	Vanessa	Johnson	Johnson.vanessa.m@gmail.com	[u'application']	What a wonderful opportunity- I look forward to learning more. Many thanks, Vanessa 	2014-11-28 03:42:57.278548+00	2014-11-28 03:42:57.27862+00
69	Iris	Xie	ixie@ucdavis.edu	[u'application', u'email_list']		2014-11-28 09:55:11.121689+00	2014-11-28 09:55:11.121762+00
70	Natasha	Chapman	tasha.l.chapman@gmail.com	[u'application']		2014-11-28 18:59:30.216431+00	2014-11-28 18:59:30.216509+00
71	Hannah	Le	hnnhnle@gmail.com	[u'application']	I have friends in HIPS who suggested this to me!  The time wasn't right before, but it is now.	2014-11-29 14:53:07.748099+00	2014-11-29 14:53:07.748178+00
72	Dominica Yasmin	Wambold	Dwambold@stanford.edu	[u'application']	I am looking forward to applying! 	2014-11-29 18:58:24.338464+00	2014-11-29 18:58:24.338546+00
73	John	Olson	jwolson@mac.com	[u'email_list']	I am a professional programmer and HS technology teacher. I am interested in your organization and want to learn more. Thanks!	2014-11-29 19:50:34.573626+00	2014-11-29 19:50:34.573682+00
74	Zavi	Smith	zavismith@gmail.com	[u'application']		2014-11-30 15:54:49.181675+00	2014-11-30 15:54:49.181731+00
75	Iris	Cano	iriscano27@gmail.com	[u'application']		2014-11-30 19:41:10.685654+00	2014-11-30 19:41:10.685712+00
76	Whitney	calk	whitneycalk@gmail.com	[u'email_list']		2014-12-01 03:56:15.089666+00	2014-12-01 03:56:15.089721+00
77	Jessica 	Burstrem 	jessica@burstrem.net	[u'application', u'email_list']		2014-12-01 05:34:11.822833+00	2014-12-01 05:34:11.822922+00
78	Teresa	Hodge	teresa@mission-launch.org	[u'application']	Excited to apply for the 2015 fellowship, with a passion for working on returning citizens issues via tech!	2014-12-01 16:48:41.435392+00	2014-12-01 16:48:41.435449+00
79	seshat	walker	seshatw@gmail.com	[u'application']		2014-12-01 18:15:49.302254+00	2014-12-01 18:15:49.302309+00
80	barbara	d	barbara@studiocityweb.com	[u'application', u'email_list']		2014-12-01 19:53:13.178299+00	2014-12-01 19:53:13.178356+00
\.


--
-- Data for Name: app_fellow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY app_fellow (id, first_name, last_name, where_from, current_job, cohort, post_2014_residency_q1, post_2014_residency_q2, post_2014_residency_q3, post_2014_residency_q4, page_text, github_username) FROM stdin;
12	Bobby Joe	Smith III	The Standing Rock Indian Reservation, ND	Front-end developer, NGP-VAN	2004 Spring	I built a widget and a widget generator that allowed people to embed a legislative alerts feed on their own webpage using the Sunlight Foundation's suite of sweet APIs.	Python. It's as powerful as it sounds.	Now that I know some of the capabilities of tech, I see digital solutions everywhere for common problems that plague my community. I don't think technology can or should solve everything, but I think useful tools that can be created to help people solve complex problems. Right now, I am especially interested in how Native communities can user mobile technology to learn and grow our diverse histories, languages, cultures, and values.	I went home and taught my mom how to use the command line. She's already started pushing code to her github repository. We do weekly online tutorials together, and I'm super excited to have someone so close to me as a partner and ally in developing digital tools for our community.	Now that I know some of the capabilities of tech, I see digital solutions everywhere for common problems that plague my community. I don't think technology can or should solve everything, but I think useful tools that can be created to help people solve complex problems. Right now, I am especially interested in how Native communities can user mobile technology to learn and grow our diverse histories, languages, cultures, and values.	bobbyjoesmith3
13	Dago	Bailon	Phoenix, AZ	Developer, United We Dream	2004 Spring	- Demographics app & Progress CRM reporting function it was great to see the skills that I learned put into practice	The language of LOVE (LMFAO)\n\n- PYTHON it allows you to do so many different things from web scrapping to web development\nplus the python libraries are very useful, makes things easier!	- I has changed dramatically I had no clue what programming or being a developer meant, now I can see the possibilities and tools that are helpful when organizing.	-Post-Residency I went back home to continue to help out organizing with the Arizona Queer Undocumented Immigrant Project ( QUIP), currently working on building a website for the organization!B4	Post-Residency I went back home to continue to help out organizing with the Arizona Queer Undocumented Immigrant Project ( QUIP), currently working on building a website for the organization!  [My view of coding] has changed dramatically - I had no clue what programming or being a developer meant, now I can see the possibilities and tools that are helpful when organizing.	dagobailon
14	Mariella	Paulino	The Bronx, NY	Full-stack developer, Fission Strategy	2004 Spring	Being able to create the front end or "prettification" of the final community project was an incredible accomplishment for me. It was the perfect manifestation of the transfer from idea to execution of design.	I have a deep appreciation and respect for Python and HTML. The way we interact with something and everything that may be going in the background that we don't see, I think that is something as powerful and interesting.	I see the potential of new software and new technologies in everything. From the moment I open my eyes eyes to the moment I go back to sleep, I have thought of at least 10 new applications I can create in my personal life that would improve how I interact and move around in the world as a woman and as a person with hearing loss. The fact that I could create these applications and create something that would have a positive impact on someone else, I think that is really powerful and empowering.	The last few weeks have been spent job searching. I have already got a few offers but want to make sure that wherever i go next is somewhere where i can contribute my master's in Public Relations, continue to develop tech, and contribute to social activism. A bit of a demanding and picky combination. I am waiting to hear back from my top choice program which combines all three *fingers crossed* so I shall see what happens.	I see the potential of new software and new technologies in everything. From the moment I open my eyes eyes to the moment I go back to sleep, I have thought of at least 10 new applications I can create in my personal life that would improve how I interact and move around in the world as a woman and as a person with hearing loss. The fact that I could create these applications and create something that would have a positive impact on someone else, I think that is really powerful and empowering.	mariellap123
15	Pam	Davis	El Cerrito, CA	Statewide data coordinator, the AFL-CIO	2004 Spring			I would have never thought after being illegally fired from Walmart, that I would be working for Making Change at Walmart here in DC....#walmartstrikers are FIRED UP and WE CAN'T TAKE IT ANYMORE! Thanks to Code for Progress, I'm using my coding skills, to help low wage workers' voices be heard all around the world, My dream is becoming a reality.		I joined Code for Progress to encourage, educate, and connect low-wage workers across the nation. Employees need to know they have the right to ask questions, and report problems without fear of retaliation or losing their jobs. We need tools that can give rapid response.	pam2071
16	Terri	Acker	Washington , DC	Junior developer, ECMC	2004 Spring	Something that I worked on that I am proud of is the Bread texting app	The program that I like the most is VAN	My role in the tech community is to share what I have learned	I have been learning new programs and looking for a job and\nfacilitating meetings at bread and doing my work at church and taking\ncare of family.	The issue in my community that I would like to help solve through code would be housing. Long time residents of SE Washington DC are being pushed out of the neighborhood, needing to find other residences. I want to build tools to help low-income tenants find the housing that they need.	terriacker
17	Selina	Musuta	Washington, DC	Front-end developer, the Democratic National Committee	2004 Spring	I'm building an app for promoters and music adventurers looking to diversify their line-up with women identified djays. I'm super excited to collaborate with others on this project.	I don't have a favorite. But my first love was python. The community and the resources it offered opened my mind to coding.	The fact that I think i can build tools to help my communities is a big vision change. The technology is definitely not the end goal so that hasn't changed.	I went on a road trip to Nevada with my friend of 22 years and counting. Reluctantly, got my drivers license for the adventure.	The fact that I think i can build tools to help my communities is a big vision change. I'm also building an app for promoters and music adventurers looking to diversify their line-up with women identified djays. I'm super excited to collaborate with others on this project.	selinamusuta
18	Aurea	Martinez	Costa Mesa, CA	Organizer, Detention Watch Network	2004 Spring	Spinning world map/globe using D-3	HTML & CSS	My goal is to continue working on my app that I started developing in the program and I want to pass the knowledge and help others learn to code and encourage people to code and support CFP to take over the world..jk...to keep growing!	Visited family & friends in California. Ate homemade food and enjoyed the beach life!	One issue that I want to address is finding people after they have entered the deportation system. It is very hard for family members to track them down, because they are constantly moved from one center to the next. Also, families don't know where to find resources or legal representation for their loved ones.\nThough ICE already has a website to locate these people, I want to make a more people-friendly tool that will include both government data and updates from social media. I want to provide information on trusted lawyers, bail bonds, how to get a hearing and community resources or organizations that are able to help families get their loved ones out of detention centers.	aureamartinez
19	Elaine	Kamlley	Brooklyn, NY	Innovation Specialist, 18F	2004 Spring	Building an MVP of ProgressCRM's Reporting Application. I felt incredible to see it integrated into the larger project.	Seriously, Python can crunch some numbers, scrape a document, and handle some intense data. Its no wonder coding feels like magic because when I get it to work, I may or may not have called myself a wizard. Please call me out if you have heard me say this.	I am a coder. In just four months Code For Progress given me the tools to build dynamic web applications. What I have been able to accomplish is beyond measure! I have built a data reporting application for a constituent relationship manager, written python scripts that cleans data and exports to a CSV, and can even make a button change colors just by hovering over it. Code For Progress not only taught me syntax, they have shifted how I want to be in this world.	My parents came to visit! They haven't visited me since I moved to Brooklyn from the Bay Area two and half years ago. We ate our way through neighborhoods, used our elbows in crowds of tourists, and took many cliché photos. I love them and was so proud to share my life with them. Oh and I was applying/interviewing potential employers!	I am a coder. In just four months Code For Progress given me the tools to build dynamic web applications. What I have been able to accomplish is beyond measure! I have built a data reporting application for a constituent relationship manager, written python scripts that cleans data and exports to a CSV, and can even make a button change colors just by hovering over it. Code For Progress not only taught me syntax, they have shifted how I want to be in this world.	elainekamlley
20	Jason	Towns	Washington, DC		2004 Spring	Getting an opportunity to teach some of the skills that I've developed in Code for Progress to young people at the #YesWeCode youth hackathon was an amazing experience for me.	One, Python has a strong on and offline support community. There are tons of resources & meetup groups.\nTwo, Python has a really wide range of use cases - from scientific research to web design. So, the chances of someone out there having some experience doing whatever you're trying to do are pretty high.\nThree, Python is (relatively) easy to learn. Had to throw the relatively in there because it's not easy but it is easier to grasp than most other programming languages.	The last four months have really just solidified my feeling that the world is changing... quickly.\nThere are some really exciting new ways to work, think and build & certain communities just aren't getting access to that. \nI'm dedicated to helping to build that bridge because if we don't do it now, we're going to regret it in the future. So, getting clarity on that has been dope. \n\nGetting an opportunity to teach some of the skills that I've developed in Code for Progress to young people at the #YesWeCode youth hackathon was an amazing experience for me.	I haven't had a chance to relax yet! Since the end of the program, I've been working. \nI'm going to take a break soon. i promise. A week in Nairobi is well overdue!	Getting an opportunity to teach some of the skills that I've developed in Code for Progress to young people at the #YesWeCode youth hackathon was an amazing experience for me.	jhtdc
21	Angie	Brilliance	Chicago, IL	Data coordinator, AFSCME	2004 Spring					Mass Incarceration is enslaving people of color at disproportionate rates. The prison industrial complex has created a profitable system that is funneling our people from schools, foster care, hospitals and other institutions into the prison system. We have to deconstruct this system because it is unjust, corrupt and purely for the profit of the corporations invested. There are more restorative and transformative alternatives to policing and incarceration.\n[I want to build an] app that would reduce the flow into the prison system by helping us to navigate the way that we interact with police on the streets. This app would give you a full understanding of each one of your rights as a youth, person of color, or member of the lgbtq community. It would also give you a direct number to the nearest free defense legal aid available in your area and a pre filled form of emergency information.	angiebrilliance
22	Katherine	Ortiz	Brooklyn, NY		2004 Spring					A problem that affects my community of Red Hook is repairs that need to be done in the apartments of public housing. Months go by and NYCHA doesn't respond to repair requests. It creates the feeling that the housing authority doesn't care about us, the tenants, so much so that we feel we can’t take pride in our community. By addressing this communication issue, peoples’ apartments will be more livable and the community can feel heard. I want to make tools that allow public housing residents to report issues and contact maintenance.	kittylee
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add contact	7	add_contact
20	Can change contact	7	change_contact
21	Can delete contact	7	delete_contact
22	Can add fellow	8	add_fellow
23	Can change fellow	8	change_fellow
24	Can delete fellow	8	delete_fellow
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$Wjfdze7oYDdd$oYF73wHCfaY4lwjumgdTnLzD88goS515kyZ6EwNz+Ac=	2014-12-01 20:50:38.413817+00	t	dirk			aliya@codeforprogress.org	t	t	2014-11-17 21:14:29.11005+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2014-11-21 15:14:25.930583+00	1	7	13	aliya@codeforprogress.org	3	
2	2014-11-21 15:14:31.052077+00	1	7	11	aliyaonthedecks@gmail.com	3	
3	2014-11-21 15:32:21.438144+00	1	7	14	aliya@codeforprogress.org	3	
4	2014-11-25 20:49:31.911271+00	1	7	26	Mkfoxdc@gmail.com	3	
5	2014-11-25 20:49:39.695669+00	1	7	25	d@irk.com	3	
6	2014-11-25 20:50:13.148984+00	1	7	37	camilleburner@comcast.net	2	Changed interested_in.
7	2014-11-25 20:50:25.908289+00	1	7	38	camilleburner@comcast.net	3	
8	2014-11-25 20:50:39.436881+00	1	7	28	aliya@codeforprogress.org	3	
9	2014-12-01 20:50:47.605368+00	1	7	81	aliya.rahman@yahoo.com	3	
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	contact	app	contact
8	fellow	app	fellow
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
2hx0himqjafqut88m0pyfx0olhol2xr1	OWQwNmE3ZjNmMzM5YTU0MjczYzY0NGNkMjc5ZDMyNGMzNDk5YTVkZTp7fQ==	2014-12-05 12:26:16.664812+00
mreio5yqzg32fmz6dobsios544ofe1vb	ZWYwZjU4NzI1MzhlMzFjOGIyNGMyODY3MjIzMjE0OTg2MTA0YzAzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2014-12-09 20:54:08.265044+00
rbkxd1xaq9csq4xz8nxm5zdkjagkh0uz	ZWYwZjU4NzI1MzhlMzFjOGIyNGMyODY3MjIzMjE0OTg2MTA0YzAzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2014-12-15 20:50:38.417095+00
\.


--
-- Name: app_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_contact
    ADD CONSTRAINT app_contact_pkey PRIMARY KEY (id);


--
-- Name: app_fellow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_fellow
    ADD CONSTRAINT app_fellow_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_93d2d1f8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT content_type_id_refs_id_93d2d1f8 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_c0d12874; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT user_id_refs_id_c0d12874 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


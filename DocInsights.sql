--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE "DocuInsightUser";
ALTER ROLE "DocuInsightUser" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:5RvIxQAR5OBGRh850t+j4A==$uA+tr+s4wHoib6f4fKs5pFC9dMnp8zVpXgepC5lvolE=:Q8dTCOE4gK8udbNms6zQr9WGkvisYe0bM/QgGLNbtHk=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:9e8qvwrlYH+9zNG7Q3fzPQ==$E19JVw+121T5gRpRroAjJekhdfDh0vkSbHDc4VIuiG0=:nLgOAN3mJz5taVc/DWA1MCAfMCA130t3YZob49/Ego4=';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- PostgreSQL database dump complete
--

--
-- Database "DocuInsights_Dev" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: DocuInsights_Dev; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "DocuInsights_Dev" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE "DocuInsights_Dev" OWNER TO postgres;

\connect "DocuInsights_Dev"

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
-- Name: OrganizationSetup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OrganizationSetup" (
    orgsetupid integer NOT NULL,
    orglogourl character varying(500) NOT NULL,
    orgtheme character varying(100) NOT NULL,
    createdby bigint NOT NULL,
    createdon date NOT NULL,
    modifiedby bigint,
    modifiedon date
);


ALTER TABLE public."OrganizationSetup" OWNER TO postgres;

--
-- Name: TABLE "OrganizationSetup"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."OrganizationSetup" IS 'Doc_M_OrganizationSetup';


--
-- Name: Doc_M_OrganizationSetup_orgsetupid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Doc_M_OrganizationSetup_orgsetupid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Doc_M_OrganizationSetup_orgsetupid_seq" OWNER TO postgres;

--
-- Name: Doc_M_OrganizationSetup_orgsetupid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Doc_M_OrganizationSetup_orgsetupid_seq" OWNED BY public."OrganizationSetup".orgsetupid;


--
-- Name: OrganizationSetup orgsetupid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrganizationSetup" ALTER COLUMN orgsetupid SET DEFAULT nextval('public."Doc_M_OrganizationSetup_orgsetupid_seq"'::regclass);


--
-- Data for Name: OrganizationSetup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OrganizationSetup" (orgsetupid, orglogourl, orgtheme, createdby, createdon, modifiedby, modifiedon) FROM stdin;
1	t	t	1	2020-05-06	\N	\N
\.


--
-- Name: Doc_M_OrganizationSetup_orgsetupid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Doc_M_OrganizationSetup_orgsetupid_seq"', 1, true);


--
-- Name: OrganizationSetup Doc_M_OrganizationSetup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrganizationSetup"
    ADD CONSTRAINT "Doc_M_OrganizationSetup_pkey" PRIMARY KEY (orgsetupid);


--
-- PostgreSQL database dump complete
--

--
-- Database "DocuInsights_UAT" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: DocuInsights_UAT; Type: DATABASE; Schema: -; Owner: DocuInsightUser
--

CREATE DATABASE "DocuInsights_UAT" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE "DocuInsights_UAT" OWNER TO "DocuInsightUser";

\connect "DocuInsights_UAT"

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
-- Name: getorganizationhierarchy(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.getorganizationhierarchy() RETURNS TABLE(organizationhierarchyid integer, organizationhierarchyname character varying, parentid integer, orghiertypeid integer, orghierarchytypename character varying, levels integer, createdby integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
RETURN query
WITH RECURSIVE ProjectCTE AS
(

SELECT OH.organizationhierarchyid, OH.organizationhierarchyname , OH.parentid, OH.orghiertypeid, OT.orghierarchytypename,
0 as levels,OH.createdby FROM doc_m_organizationhierarchynew AS OH INNER JOIN doc_m_orghierarchytype as OT on OH.orghiertypeid = OT.orghierarchytypeid AND OH.isactive = true


--UNION ALL

--SELECT OH.organizationhierarchyid, OH.organizationhierarchyname, OH.parentid, OH.orghiertypeid, OT.orghierarchytypename, ProjectCTE.levels + 1 as levels
	--FROM doc_m_organizationhierarchynew AS OH INNER JOIN ProjectCTE  ON OH.parentid = ProjectCTE.organizationhierarchyid
	--INNER JOIN doc_m_orghierarchytype as OT on OH.orghiertypeid = OT.orghierarchytypeid and OH.isactive = true
)

SELECT PC.organizationhierarchyid,
PC.organizationhierarchyname, 
PC.parentid,
PC.orghiertypeid,
PC.orghierarchytypename,
PC.levels,
PC.createdby
FROM ProjectCTE AS PC order by PC.parentid;      
    
END;
$$;


ALTER FUNCTION public.getorganizationhierarchy() OWNER TO postgres;

--
-- Name: getusecases(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.getusecases(p_orgid integer) RETURNS TABLE(organizationhierarchyid integer, organizationhierarchyname character varying, orghiertypeid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
RETURN query
WITH RECURSIVE hierarchy AS
(
  SELECT t.organizationhierarchyid,
         t.organizationhierarchyname,
		 t.orghiertypeid,
         t.parentid       
    FROM doc_m_organizationhierarchynew t
   WHERE t.parentid = p_orgid
  UNION ALL
  SELECT x.organizationhierarchyid,
         x.organizationhierarchyname,
		 x.orghiertypeid,
         x.parentid       
    FROM doc_m_organizationhierarchynew x
    JOIN hierarchy y ON y.organizationhierarchyid = x.parentid
 )  
 
SELECT PC.organizationhierarchyid,
PC.organizationhierarchyname, 
pc.orghiertypeid
FROM hierarchy AS PC where pc.orghiertypeid=8;  
 
END;
$$;


ALTER FUNCTION public.getusecases(p_orgid integer) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: doc_m_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_m_categories (
    categoryid integer NOT NULL,
    categoryname character varying(500) NOT NULL,
    usecasemappingid integer NOT NULL,
    colorcode character varying(200) NOT NULL,
    abbrevation character varying(500),
    createdby integer NOT NULL,
    createdon date NOT NULL,
    modifiedby integer,
    modifiedon date,
    isactive boolean
);


ALTER TABLE public.doc_m_categories OWNER TO postgres;

--
-- Name: doc_m_categories_categoryid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doc_m_categories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doc_m_categories_categoryid_seq OWNER TO postgres;

--
-- Name: doc_m_categories_categoryid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doc_m_categories_categoryid_seq OWNED BY public.doc_m_categories.categoryid;


--
-- Name: doc_m_inputoption; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_m_inputoption (
    inputoptionid integer NOT NULL,
    inputoptionname character varying(500) NOT NULL,
    createdby integer NOT NULL,
    createdon date NOT NULL,
    modifiedby integer,
    modifiedon date,
    isactive boolean
);


ALTER TABLE public.doc_m_inputoption OWNER TO postgres;

--
-- Name: doc_m_inputoption_inputoptionid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doc_m_inputoption_inputoptionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doc_m_inputoption_inputoptionid_seq OWNER TO postgres;

--
-- Name: doc_m_inputoption_inputoptionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doc_m_inputoption_inputoptionid_seq OWNED BY public.doc_m_inputoption.inputoptionid;


--
-- Name: doc_m_organizationhierarchynew; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_m_organizationhierarchynew (
    organizationhierarchyid integer NOT NULL,
    organizationhierarchyname character varying(50) NOT NULL,
    description character varying(250),
    parentid integer,
    orghiertypeid integer,
    isactive boolean NOT NULL,
    createddatetime timestamp(3) without time zone,
    updateddatetime timestamp(3) without time zone,
    createdby integer,
    updatedby integer
);


ALTER TABLE public.doc_m_organizationhierarchynew OWNER TO postgres;

--
-- Name: doc_m_organizationhierarchynew_organizationhierarchyid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doc_m_organizationhierarchynew_organizationhierarchyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doc_m_organizationhierarchynew_organizationhierarchyid_seq OWNER TO postgres;

--
-- Name: doc_m_organizationhierarchynew_organizationhierarchyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doc_m_organizationhierarchynew_organizationhierarchyid_seq OWNED BY public.doc_m_organizationhierarchynew.organizationhierarchyid;


--
-- Name: doc_m_organizationsetup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_m_organizationsetup (
    orgsetupid integer NOT NULL,
    orglogourl character varying(500) NOT NULL,
    orgtheme character varying(500) NOT NULL,
    createdby bigint,
    createdon date,
    modifiedby bigint,
    modifiedon date,
    isactive boolean
);


ALTER TABLE public.doc_m_organizationsetup OWNER TO postgres;

--
-- Name: doc_m_organizationsetup_orgsetupid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doc_m_organizationsetup_orgsetupid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doc_m_organizationsetup_orgsetupid_seq OWNER TO postgres;

--
-- Name: doc_m_organizationsetup_orgsetupid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doc_m_organizationsetup_orgsetupid_seq OWNED BY public.doc_m_organizationsetup.orgsetupid;


--
-- Name: doc_m_orghierarchytype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_m_orghierarchytype (
    orghierarchytypeid integer NOT NULL,
    orghierarchytypename character varying(50) NOT NULL,
    description character varying(250),
    isactive boolean NOT NULL,
    createddatetime timestamp(3) without time zone,
    updateddatetime timestamp(3) without time zone,
    createdby integer,
    updatedby integer
);


ALTER TABLE public.doc_m_orghierarchytype OWNER TO postgres;

--
-- Name: doc_m_orghierarchytype_orghierarchytypeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doc_m_orghierarchytype_orghierarchytypeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doc_m_orghierarchytype_orghierarchytypeid_seq OWNER TO postgres;

--
-- Name: doc_m_orghierarchytype_orghierarchytypeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doc_m_orghierarchytype_orghierarchytypeid_seq OWNED BY public.doc_m_orghierarchytype.orghierarchytypeid;


--
-- Name: doc_m_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_m_role (
    roleid integer NOT NULL,
    rolename character varying(500) NOT NULL,
    createdby integer NOT NULL,
    createdon date NOT NULL,
    isactive boolean
);


ALTER TABLE public.doc_m_role OWNER TO postgres;

--
-- Name: doc_m_role_roleid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doc_m_role_roleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doc_m_role_roleid_seq OWNER TO postgres;

--
-- Name: doc_m_role_roleid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doc_m_role_roleid_seq OWNED BY public.doc_m_role.roleid;


--
-- Name: doc_m_usecase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_m_usecase (
    uscasemappingid integer NOT NULL,
    organizationhierarchyid integer NOT NULL,
    usecaseid integer NOT NULL,
    usecasedescription character varying(2000),
    createdby integer NOT NULL,
    createdon date NOT NULL,
    modifiedby integer,
    modifiedon date,
    isactive boolean
);


ALTER TABLE public.doc_m_usecase OWNER TO postgres;

--
-- Name: doc_m_usecase_uscasemappingid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doc_m_usecase_uscasemappingid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doc_m_usecase_uscasemappingid_seq OWNER TO postgres;

--
-- Name: doc_m_usecase_uscasemappingid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doc_m_usecase_uscasemappingid_seq OWNED BY public.doc_m_usecase.uscasemappingid;


--
-- Name: doc_m_usecaseinput; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_m_usecaseinput (
    usecaseinputid integer NOT NULL,
    usecasemappingid integer NOT NULL,
    inputoptionid integer NOT NULL,
    createdby integer NOT NULL,
    createdon date NOT NULL,
    modifiedby integer,
    modifiedon date,
    isactive boolean
);


ALTER TABLE public.doc_m_usecaseinput OWNER TO postgres;

--
-- Name: doc_m_usecaseinput_usecaseinputid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doc_m_usecaseinput_usecaseinputid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doc_m_usecaseinput_usecaseinputid_seq OWNER TO postgres;

--
-- Name: doc_m_usecaseinput_usecaseinputid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doc_m_usecaseinput_usecaseinputid_seq OWNED BY public.doc_m_usecaseinput.usecaseinputid;


--
-- Name: doc_m_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_m_user (
    userid integer NOT NULL,
    username character varying(300) NOT NULL,
    organizationhierarchyid integer NOT NULL,
    empid integer,
    emppassword character varying(400) NOT NULL,
    contactnumber character varying(10),
    emailid character varying(300) NOT NULL,
    alternateemailid character varying(300),
    lostlogintime date,
    isadactive boolean,
    createdon date NOT NULL,
    isactive boolean,
    roles jsonb,
    projects jsonb,
    createdby integer,
    modifiedby integer,
    modifiedon date
);


ALTER TABLE public.doc_m_user OWNER TO postgres;

--
-- Name: doc_m_user_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doc_m_user_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doc_m_user_userid_seq OWNER TO postgres;

--
-- Name: doc_m_user_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doc_m_user_userid_seq OWNED BY public.doc_m_user.userid;


--
-- Name: doc_m_categories categoryid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_categories ALTER COLUMN categoryid SET DEFAULT nextval('public.doc_m_categories_categoryid_seq'::regclass);


--
-- Name: doc_m_inputoption inputoptionid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_inputoption ALTER COLUMN inputoptionid SET DEFAULT nextval('public.doc_m_inputoption_inputoptionid_seq'::regclass);


--
-- Name: doc_m_organizationhierarchynew organizationhierarchyid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_organizationhierarchynew ALTER COLUMN organizationhierarchyid SET DEFAULT nextval('public.doc_m_organizationhierarchynew_organizationhierarchyid_seq'::regclass);


--
-- Name: doc_m_organizationsetup orgsetupid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_organizationsetup ALTER COLUMN orgsetupid SET DEFAULT nextval('public.doc_m_organizationsetup_orgsetupid_seq'::regclass);


--
-- Name: doc_m_orghierarchytype orghierarchytypeid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_orghierarchytype ALTER COLUMN orghierarchytypeid SET DEFAULT nextval('public.doc_m_orghierarchytype_orghierarchytypeid_seq'::regclass);


--
-- Name: doc_m_role roleid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_role ALTER COLUMN roleid SET DEFAULT nextval('public.doc_m_role_roleid_seq'::regclass);


--
-- Name: doc_m_usecase uscasemappingid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_usecase ALTER COLUMN uscasemappingid SET DEFAULT nextval('public.doc_m_usecase_uscasemappingid_seq'::regclass);


--
-- Name: doc_m_usecaseinput usecaseinputid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_usecaseinput ALTER COLUMN usecaseinputid SET DEFAULT nextval('public.doc_m_usecaseinput_usecaseinputid_seq'::regclass);


--
-- Name: doc_m_user userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_user ALTER COLUMN userid SET DEFAULT nextval('public.doc_m_user_userid_seq'::regclass);


--
-- Data for Name: doc_m_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_m_categories (categoryid, categoryname, usecasemappingid, colorcode, abbrevation, createdby, createdon, modifiedby, modifiedon, isactive) FROM stdin;
5	Catag1	1	Color1	Abbre1	1	2020-12-30	\N	\N	t
6	Catag2	1	Color2	Abbre2	1	2020-12-30	\N	\N	t
\.


--
-- Data for Name: doc_m_inputoption; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_m_inputoption (inputoptionid, inputoptionname, createdby, createdon, modifiedby, modifiedon, isactive) FROM stdin;
1	Upload BLOB URL	1	2020-12-24	\N	\N	t
2	Third party API transfer	1	2020-12-24	\N	\N	t
3	Upload from Data ware house/Data lakes	1	2020-12-24	\N	\N	t
4	Upload from computer/device directly from the platform	1	2020-12-24	\N	\N	t
\.


--
-- Data for Name: doc_m_organizationhierarchynew; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_m_organizationhierarchynew (organizationhierarchyid, organizationhierarchyname, description, parentid, orghiertypeid, isactive, createddatetime, updateddatetime, createdby, updatedby) FROM stdin;
35	LNT Construction-2	\N	0	6	t	2020-12-28 18:39:05.807	\N	0	\N
36	Metro-2	\N	35	7	t	2020-12-28 18:40:43.085	\N	0	\N
37	Metro UnderBridge Devolopment-2	\N	35	7	t	2020-12-28 18:41:33.258	\N	1	\N
38	Metro UB Proj1-2	\N	37	8	t	2020-12-28 18:43:53.236	\N	1	\N
39	Metro Roadways Devolopment-2	\N	36	7	t	2020-12-28 18:43:25.466	\N	0	\N
40	Metro Overbridge  Division-2	\N	39	7	t	2020-12-28 18:44:38.254	\N	0	\N
41	Metro UG Project-2	\N	40	8	t	2020-12-28 18:45:23.483	\N	0	\N
42	Metro OB Project-2	\N	40	8	t	2020-12-28 18:45:11.213	\N	0	\N
\.


--
-- Data for Name: doc_m_organizationsetup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_m_organizationsetup (orgsetupid, orglogourl, orgtheme, createdby, createdon, modifiedby, modifiedon, isactive) FROM stdin;
1	test	test	10	2020-12-16	0	0001-01-01	\N
\.


--
-- Data for Name: doc_m_orghierarchytype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_m_orghierarchytype (orghierarchytypeid, orghierarchytypename, description, isactive, createddatetime, updateddatetime, createdby, updatedby) FROM stdin;
6	Organisation	\N	t	2020-12-21 00:00:00	\N	1	\N
7	Others	\N	t	2020-12-21 00:00:00	\N	1	\N
8	Project	\N	t	2020-12-21 00:00:00	\N	1	\N
\.


--
-- Data for Name: doc_m_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_m_role (roleid, rolename, createdby, createdon, isactive) FROM stdin;
1	SuperUser	1	2020-12-31	t
2	QC	1	2020-12-31	t
3	TrainingUser	1	2020-12-31	t
4	LiveUser	1	2020-12-31	t
5	DataScientist	1	2020-12-31	t
6	AdminUser	1	2020-12-31	t
\.


--
-- Data for Name: doc_m_usecase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_m_usecase (uscasemappingid, organizationhierarchyid, usecaseid, usecasedescription, createdby, createdon, modifiedby, modifiedon, isactive) FROM stdin;
1	35	41	Metro UG Project-2	1	2020-12-30	0	2020-12-30	t
\.


--
-- Data for Name: doc_m_usecaseinput; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_m_usecaseinput (usecaseinputid, usecasemappingid, inputoptionid, createdby, createdon, modifiedby, modifiedon, isactive) FROM stdin;
3	1	1	1	2020-12-30	\N	\N	t
\.


--
-- Data for Name: doc_m_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_m_user (userid, username, organizationhierarchyid, empid, emppassword, contactnumber, emailid, alternateemailid, lostlogintime, isadactive, createdon, isactive, roles, projects, createdby, modifiedby, modifiedon) FROM stdin;
5	GnanavelSekar	35	0	xxxx8638JN	9626838447	gnanavel.sekar@lntinfotech.com		\N	t	2021-01-02	t	[{"RoleID": 1, "RoleName": "SuperUser"}]	[{"UseCaseID": 41, "UseCaseName": "Metro UG Project-2"}, {"UseCaseID": 42, "UseCaseName": "Metro OB Project-2"}]	1	\N	\N
6	Vamsi	35	0	nkqa7918FQ	9876543210	vamsi@lntinfotech.com	string	\N	t	2021-01-05	t	[{"RoleID": 1, "RoleName": "SuperUser"}]	[{"UseCaseID": 41, "UseCaseName": "Metro UG Project-2"}]	1	\N	\N
\.


--
-- Name: doc_m_categories_categoryid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doc_m_categories_categoryid_seq', 6, true);


--
-- Name: doc_m_inputoption_inputoptionid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doc_m_inputoption_inputoptionid_seq', 4, true);


--
-- Name: doc_m_organizationhierarchynew_organizationhierarchyid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doc_m_organizationhierarchynew_organizationhierarchyid_seq', 42, true);


--
-- Name: doc_m_organizationsetup_orgsetupid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doc_m_organizationsetup_orgsetupid_seq', 1, true);


--
-- Name: doc_m_orghierarchytype_orghierarchytypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doc_m_orghierarchytype_orghierarchytypeid_seq', 8, true);


--
-- Name: doc_m_role_roleid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doc_m_role_roleid_seq', 6, true);


--
-- Name: doc_m_usecase_uscasemappingid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doc_m_usecase_uscasemappingid_seq', 1, true);


--
-- Name: doc_m_usecaseinput_usecaseinputid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doc_m_usecaseinput_usecaseinputid_seq', 3, true);


--
-- Name: doc_m_user_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doc_m_user_userid_seq', 6, true);


--
-- Name: doc_m_categories doc_m_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_categories
    ADD CONSTRAINT doc_m_categories_pkey PRIMARY KEY (categoryid);


--
-- Name: doc_m_inputoption doc_m_inputoption_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_inputoption
    ADD CONSTRAINT doc_m_inputoption_pkey PRIMARY KEY (inputoptionid);


--
-- Name: doc_m_organizationhierarchynew doc_m_organizationhierarchynew_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_organizationhierarchynew
    ADD CONSTRAINT doc_m_organizationhierarchynew_pkey PRIMARY KEY (organizationhierarchyid);


--
-- Name: doc_m_organizationsetup doc_m_organizationsetup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_organizationsetup
    ADD CONSTRAINT doc_m_organizationsetup_pkey PRIMARY KEY (orgsetupid);


--
-- Name: doc_m_orghierarchytype doc_m_orghierarchytype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_orghierarchytype
    ADD CONSTRAINT doc_m_orghierarchytype_pkey PRIMARY KEY (orghierarchytypeid);


--
-- Name: doc_m_role doc_m_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_role
    ADD CONSTRAINT doc_m_role_pkey PRIMARY KEY (roleid);


--
-- Name: doc_m_usecase doc_m_usecase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_usecase
    ADD CONSTRAINT doc_m_usecase_pkey PRIMARY KEY (uscasemappingid);


--
-- Name: doc_m_usecaseinput doc_m_usecaseinput_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_usecaseinput
    ADD CONSTRAINT doc_m_usecaseinput_pkey PRIMARY KEY (usecaseinputid);


--
-- Name: doc_m_user doc_m_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_user
    ADD CONSTRAINT doc_m_user_pkey PRIMARY KEY (userid);


--
-- Name: doc_m_organizationhierarchynew uc_organizationhierarchynameparent; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_organizationhierarchynew
    ADD CONSTRAINT uc_organizationhierarchynameparent UNIQUE (organizationhierarchyname, parentid);


--
-- Name: doc_m_orghierarchytype uc_orghierarchytypename; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_orghierarchytype
    ADD CONSTRAINT uc_orghierarchytypename UNIQUE (orghierarchytypename);


--
-- Name: doc_m_organizationhierarchynew fk_orghier_orgtype; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_organizationhierarchynew
    ADD CONSTRAINT fk_orghier_orgtype FOREIGN KEY (orghiertypeid) REFERENCES public.doc_m_orghierarchytype(orghierarchytypeid);


--
-- Name: doc_m_user fk_user_orghierarchy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_m_user
    ADD CONSTRAINT fk_user_orghierarchy FOREIGN KEY (organizationhierarchyid) REFERENCES public.doc_m_organizationhierarchynew(organizationhierarchyid);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--


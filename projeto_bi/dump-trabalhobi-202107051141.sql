PGDMP     8    )                y         
   trabalhobi    13.2 (Debian 13.2-1.pgdg100+1)    13.3 $    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24748 
   trabalhobi    DATABASE     ^   CREATE DATABASE trabalhobi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE trabalhobi;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    24769 	   dim_curso    TABLE     ?   CREATE TABLE public.dim_curso (
    id_curso bigint NOT NULL,
    id integer,
    category bigint,
    fullname character varying(254)
);
    DROP TABLE public.dim_curso;
       public         heap    postgres    false    3            ?            1259    24767    dim_curso_id_curso_seq    SEQUENCE        CREATE SEQUENCE public.dim_curso_id_curso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dim_curso_id_curso_seq;
       public          postgres    false    3    203            ?           0    0    dim_curso_id_curso_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dim_curso_id_curso_seq OWNED BY public.dim_curso.id_curso;
          public          postgres    false    202            ?            1259    24749    dim_disciplina    TABLE     ?  CREATE TABLE public.dim_disciplina (
    id integer,
    category bigint,
    sortorder bigint,
    fullname character varying(254),
    shortname character varying(255),
    idnumber character varying(100),
    summary text,
    summaryformat integer,
    formato character varying(21),
    showgrades integer,
    newsitems integer,
    startdate bigint,
    enddate bigint,
    marker bigint,
    maxbytes bigint,
    legacyfiles integer,
    showreports integer,
    visible boolean,
    visibleold boolean,
    groupmode integer,
    groupmodeforce integer,
    defaultgroupingid bigint,
    lang character varying(30),
    calendartype character varying(30),
    theme character varying(50),
    timecreated bigint,
    timemodified bigint,
    requested boolean,
    enablecompletion boolean,
    completionnotify boolean,
    cacherev bigint,
    id_1 bigint,
    nome character varying(255),
    idnumber_1 character varying(100),
    description text,
    descriptionformat integer,
    parent bigint,
    sortorder_1 bigint,
    coursecount bigint,
    visible_1 boolean,
    visibleold_1 boolean,
    timemodified_1 bigint,
    profundidade bigint,
    caminho character varying(255),
    theme_1 character varying(50),
    id_disciplina bigint NOT NULL
);
 "   DROP TABLE public.dim_disciplina;
       public         heap    postgres    false    3            ?            1259    24755     dim_disciplina_id_disciplina_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_disciplina_id_disciplina_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.dim_disciplina_id_disciplina_seq;
       public          postgres    false    200    3            ?           0    0     dim_disciplina_id_disciplina_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.dim_disciplina_id_disciplina_seq OWNED BY public.dim_disciplina.id_disciplina;
          public          postgres    false    201            ?            1259    24795 	   dim_tempo    TABLE     ?   CREATE TABLE public.dim_tempo (
    id_tempo bigint NOT NULL,
    ano integer,
    mes integer,
    dia_ano integer,
    dia_mes integer,
    dia_semana integer,
    semana_ano integer,
    semestre integer
);
    DROP TABLE public.dim_tempo;
       public         heap    postgres    false    3            ?            1259    24793    dim_tempo_id_tempo_seq    SEQUENCE        CREATE SEQUENCE public.dim_tempo_id_tempo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dim_tempo_id_tempo_seq;
       public          postgres    false    209    3            ?           0    0    dim_tempo_id_tempo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dim_tempo_id_tempo_seq OWNED BY public.dim_tempo.id_tempo;
          public          postgres    false    208            ?            1259    24776    dim_usuario    TABLE     ?  CREATE TABLE public.dim_usuario (
    id_usuario bigint NOT NULL,
    id bigint,
    auth character varying(20),
    confirmed boolean,
    policyagreed boolean,
    deleted boolean,
    suspended boolean,
    mnethostid bigint,
    username character varying(100),
    password character varying(255),
    idnumber character varying(255),
    firstname character varying(100),
    lastname character varying(100),
    email character varying(100),
    emailstop boolean,
    icq character varying(15),
    skype character varying(50),
    yahoo character varying(50),
    aim character varying(50),
    msn character varying(50),
    phone1 character varying(20),
    phone2 character varying(20),
    institution character varying(255),
    department character varying(255),
    address character varying(255),
    city character varying(120),
    country character varying(2),
    lang character varying(30),
    calendartype character varying(30),
    theme character varying(50),
    timezone character varying(100),
    firstaccess bigint,
    lastaccess bigint,
    lastlogin bigint,
    currentlogin bigint,
    lastip character varying(45),
    secret character varying(15),
    picture bigint,
    url character varying(255),
    description text,
    descriptionformat smallint,
    mailformat boolean,
    maildigest boolean,
    maildisplay smallint,
    autosubscribe boolean,
    trackforums boolean,
    timecreated bigint,
    timemodified bigint,
    trustbitmask bigint,
    imagealt character varying(255),
    lastnamephonetic character varying(255),
    firstnamephonetic character varying(255),
    middlename character varying(255),
    alternatename character varying(255)
);
    DROP TABLE public.dim_usuario;
       public         heap    postgres    false    3            ?            1259    24774    dim_usuario_id_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.dim_usuario_id_usuario_seq;
       public          postgres    false    205    3            ?           0    0    dim_usuario_id_usuario_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.dim_usuario_id_usuario_seq OWNED BY public.dim_usuario.id_usuario;
          public          postgres    false    204            ?            1259    24785    fato_evento    TABLE     ?  CREATE TABLE public.fato_evento (
    id_fato bigint NOT NULL,
    id bigint,
    eventname character varying(255),
    acao character varying(100),
    target character varying(100),
    origin character varying(10),
    ip character varying(45),
    username character varying(100),
    firstname character varying(100),
    lastname character varying(100),
    email character varying(100),
    city character varying(120),
    lastip character varying(45),
    nome character varying(255),
    primeiro_acesso timestamp without time zone,
    tempo_criacao timestamp without time zone,
    ultimo_acesso timestamp without time zone,
    ultimo_login timestamp without time zone,
    recente_login timestamp without time zone
);
    DROP TABLE public.fato_evento;
       public         heap    postgres    false    3            ?            1259    24783    fato_evento_id_fato_seq    SEQUENCE     ?   CREATE SEQUENCE public.fato_evento_id_fato_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.fato_evento_id_fato_seq;
       public          postgres    false    3    207            ?           0    0    fato_evento_id_fato_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.fato_evento_id_fato_seq OWNED BY public.fato_evento.id_fato;
          public          postgres    false    206                       2604    24772    dim_curso id_curso    DEFAULT     x   ALTER TABLE ONLY public.dim_curso ALTER COLUMN id_curso SET DEFAULT nextval('public.dim_curso_id_curso_seq'::regclass);
 A   ALTER TABLE public.dim_curso ALTER COLUMN id_curso DROP DEFAULT;
       public          postgres    false    203    202    203                       2604    24757    dim_disciplina id_disciplina    DEFAULT     ?   ALTER TABLE ONLY public.dim_disciplina ALTER COLUMN id_disciplina SET DEFAULT nextval('public.dim_disciplina_id_disciplina_seq'::regclass);
 K   ALTER TABLE public.dim_disciplina ALTER COLUMN id_disciplina DROP DEFAULT;
       public          postgres    false    201    200                       2604    24798    dim_tempo id_tempo    DEFAULT     x   ALTER TABLE ONLY public.dim_tempo ALTER COLUMN id_tempo SET DEFAULT nextval('public.dim_tempo_id_tempo_seq'::regclass);
 A   ALTER TABLE public.dim_tempo ALTER COLUMN id_tempo DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    24779    dim_usuario id_usuario    DEFAULT     ?   ALTER TABLE ONLY public.dim_usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.dim_usuario_id_usuario_seq'::regclass);
 E   ALTER TABLE public.dim_usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    204    205    205                       2604    24788    fato_evento id_fato    DEFAULT     z   ALTER TABLE ONLY public.fato_evento ALTER COLUMN id_fato SET DEFAULT nextval('public.fato_evento_id_fato_seq'::regclass);
 B   ALTER TABLE public.fato_evento ALTER COLUMN id_fato DROP DEFAULT;
       public          postgres    false    206    207    207            ?          0    24769 	   dim_curso 
   TABLE DATA           E   COPY public.dim_curso (id_curso, id, category, fullname) FROM stdin;
    public          postgres    false    203            ?          0    24749    dim_disciplina 
   TABLE DATA           <  COPY public.dim_disciplina (id, category, sortorder, fullname, shortname, idnumber, summary, summaryformat, formato, showgrades, newsitems, startdate, enddate, marker, maxbytes, legacyfiles, showreports, visible, visibleold, groupmode, groupmodeforce, defaultgroupingid, lang, calendartype, theme, timecreated, timemodified, requested, enablecompletion, completionnotify, cacherev, id_1, nome, idnumber_1, description, descriptionformat, parent, sortorder_1, coursecount, visible_1, visibleold_1, timemodified_1, profundidade, caminho, theme_1, id_disciplina) FROM stdin;
    public          postgres    false    200            ?          0    24795 	   dim_tempo 
   TABLE DATA           k   COPY public.dim_tempo (id_tempo, ano, mes, dia_ano, dia_mes, dia_semana, semana_ano, semestre) FROM stdin;
    public          postgres    false    209            ?          0    24776    dim_usuario 
   TABLE DATA           `  COPY public.dim_usuario (id_usuario, id, auth, confirmed, policyagreed, deleted, suspended, mnethostid, username, password, idnumber, firstname, lastname, email, emailstop, icq, skype, yahoo, aim, msn, phone1, phone2, institution, department, address, city, country, lang, calendartype, theme, timezone, firstaccess, lastaccess, lastlogin, currentlogin, lastip, secret, picture, url, description, descriptionformat, mailformat, maildigest, maildisplay, autosubscribe, trackforums, timecreated, timemodified, trustbitmask, imagealt, lastnamephonetic, firstnamephonetic, middlename, alternatename) FROM stdin;
    public          postgres    false    205            ?          0    24785    fato_evento 
   TABLE DATA           ?   COPY public.fato_evento (id_fato, id, eventname, acao, target, origin, ip, username, firstname, lastname, email, city, lastip, nome, primeiro_acesso, tempo_criacao, ultimo_acesso, ultimo_login, recente_login) FROM stdin;
    public          postgres    false    207            ?           0    0    dim_curso_id_curso_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dim_curso_id_curso_seq', 3, true);
          public          postgres    false    202            ?           0    0     dim_disciplina_id_disciplina_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dim_disciplina_id_disciplina_seq', 3, true);
          public          postgres    false    201            ?           0    0    dim_tempo_id_tempo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dim_tempo_id_tempo_seq', 2, true);
          public          postgres    false    208            ?           0    0    dim_usuario_id_usuario_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.dim_usuario_id_usuario_seq', 10, true);
          public          postgres    false    204            ?           0    0    fato_evento_id_fato_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.fato_evento_id_fato_seq', 88, true);
          public          postgres    false    206            ?   )   x?3?4?4?t*-??K-.V??+I???LO?KN?????? ??	?      ?   ?   x?M?1?0Eg?=?NS?ڭc?*?U???&?????b8?J?gx???>!"A?L>???.d7?~r?:h;F&?/????6	??? KW?ԨO?d?F[???P?55?G?8???WgC?????6Ȝ1.?a}???3m?e?d??b??w?V?A)?1?3?      ?      x?3?4?47?4R d?i?i????? 3??      ?   -  x???Ms?@??????uYf@?[??.ůT.#?= ?_??X?R{?nu?Lu?=?S#|d?)?????MA?7!ל&?%	?|???d ??VY????lcwu????uG?&????xӁZ?0%	`@Y??	??GX3??=??_??N?&?Y?5.U5??1E????`?r??q?`?s?$?~????`?$?2i???'?f	%?-??P?? ?!?9??????????^?EZZd??a$?#븪.??㡑?=u?k?|?Ak)???&?h?FN)???N ???Q?Z?X???????8?A?:E??Ia??;?"/\?'?RB??Υ?:?eAod6?8~?Om?h????e?W??xbl???:zʔOEs??????"Sʀ&_$???OUa?ɏ>????k?x?y=?5?2???n?ͤ}v?lF??K?k?$?0˵???:?K?<?]?;???M?u(?????}]E??w???ּC??1???JA<1???a???y+??vܙd?????F??+?c?:=?s{?;u??????? ??c[???6?m?n?      ?   ?  x???ˎ?0???S???mX?/?]wH(M?)?Ȥ???h)??H???)Ɔ??_>?93J???t??*???1T????M?ף߲K95???Ʉ??2??2??`?????vߴ?G?????z??l??Y???l??KQX??ŋ(???T??Ef??iעT*F_??Rʒ?Ls??e???????f?+m@+gh?????>?~fzz?Xzz?X???R?sz?Xzz{K?۾??M;??v??׷??^??-?^??X,?fF?[???z?c???xߊK?3?????]?>?欠c???`sc??:9?u???}??24~8??c??i5?<??P??S?????̼?6???ط?i??>*??????<-????P?L?IY
?EN?
ӑ???*%!+?KGʑڦKJ??#?H)???J?G)?䢫?? ??^?%??c?T??A?x?NǄs?Ѓ?6??re??r:???+????HiF? ??f?h?J(?݊m?Yv?H?d?s^??ü?\???H?t?a`{/??V?ݔ?????i?K:I?????i?+???6?I?N?j????|"&??,?#)?ȦL??(?}}????|?????z?_-X/???Q?FJ??8;??H?e??`ֽ?Vfq???l?s?Y5?T?Lg?N?8rДG?????09h:C????w??ƶ?t's	?H??????忿?????륏???*[?V?;?      $    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24748 
   trabalhobi    DATABASE     ^   CREATE DATABASE trabalhobi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE trabalhobi;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    24769 	   dim_curso    TABLE     ?   CREATE TABLE public.dim_curso (
    id_curso bigint NOT NULL,
    id integer,
    category bigint,
    fullname character varying(254)
);
    DROP TABLE public.dim_curso;
       public         heap    postgres    false    3            ?            1259    24767    dim_curso_id_curso_seq    SEQUENCE        CREATE SEQUENCE public.dim_curso_id_curso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dim_curso_id_curso_seq;
       public          postgres    false    3    203            ?           0    0    dim_curso_id_curso_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dim_curso_id_curso_seq OWNED BY public.dim_curso.id_curso;
          public          postgres    false    202            ?            1259    24749    dim_disciplina    TABLE     ?  CREATE TABLE public.dim_disciplina (
    id integer,
    category bigint,
    sortorder bigint,
    fullname character varying(254),
    shortname character varying(255),
    idnumber character varying(100),
    summary text,
    summaryformat integer,
    formato character varying(21),
    showgrades integer,
    newsitems integer,
    startdate bigint,
    enddate bigint,
    marker bigint,
    maxbytes bigint,
    legacyfiles integer,
    showreports integer,
    visible boolean,
    visibleold boolean,
    groupmode integer,
    groupmodeforce integer,
    defaultgroupingid bigint,
    lang character varying(30),
    calendartype character varying(30),
    theme character varying(50),
    timecreated bigint,
    timemodified bigint,
    requested boolean,
    enablecompletion boolean,
    completionnotify boolean,
    cacherev bigint,
    id_1 bigint,
    nome character varying(255),
    idnumber_1 character varying(100),
    description text,
    descriptionformat integer,
    parent bigint,
    sortorder_1 bigint,
    coursecount bigint,
    visible_1 boolean,
    visibleold_1 boolean,
    timemodified_1 bigint,
    profundidade bigint,
    caminho character varying(255),
    theme_1 character varying(50),
    id_disciplina bigint NOT NULL
);
 "   DROP TABLE public.dim_disciplina;
       public         heap    postgres    false    3            ?            1259    24755     dim_disciplina_id_disciplina_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_disciplina_id_disciplina_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.dim_disciplina_id_disciplina_seq;
       public          postgres    false    200    3            ?           0    0     dim_disciplina_id_disciplina_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.dim_disciplina_id_disciplina_seq OWNED BY public.dim_disciplina.id_disciplina;
          public          postgres    false    201            ?            1259    24795 	   dim_tempo    TABLE     ?   CREATE TABLE public.dim_tempo (
    id_tempo bigint NOT NULL,
    ano integer,
    mes integer,
    dia_ano integer,
    dia_mes integer,
    dia_semana integer,
    semana_ano integer,
    semestre integer
);
    DROP TABLE public.dim_tempo;
       public         heap    postgres    false    3            ?            1259    24793    dim_tempo_id_tempo_seq    SEQUENCE        CREATE SEQUENCE public.dim_tempo_id_tempo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.dim_tempo_id_tempo_seq;
       public          postgres    false    209    3            ?           0    0    dim_tempo_id_tempo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.dim_tempo_id_tempo_seq OWNED BY public.dim_tempo.id_tempo;
          public          postgres    false    208            ?            1259    24776    dim_usuario    TABLE     ?  CREATE TABLE public.dim_usuario (
    id_usuario bigint NOT NULL,
    id bigint,
    auth character varying(20),
    confirmed boolean,
    policyagreed boolean,
    deleted boolean,
    suspended boolean,
    mnethostid bigint,
    username character varying(100),
    password character varying(255),
    idnumber character varying(255),
    firstname character varying(100),
    lastname character varying(100),
    email character varying(100),
    emailstop boolean,
    icq character varying(15),
    skype character varying(50),
    yahoo character varying(50),
    aim character varying(50),
    msn character varying(50),
    phone1 character varying(20),
    phone2 character varying(20),
    institution character varying(255),
    department character varying(255),
    address character varying(255),
    city character varying(120),
    country character varying(2),
    lang character varying(30),
    calendartype character varying(30),
    theme character varying(50),
    timezone character varying(100),
    firstaccess bigint,
    lastaccess bigint,
    lastlogin bigint,
    currentlogin bigint,
    lastip character varying(45),
    secret character varying(15),
    picture bigint,
    url character varying(255),
    description text,
    descriptionformat smallint,
    mailformat boolean,
    maildigest boolean,
    maildisplay smallint,
    autosubscribe boolean,
    trackforums boolean,
    timecreated bigint,
    timemodified bigint,
    trustbitmask bigint,
    imagealt character varying(255),
    lastnamephonetic character varying(255),
    firstnamephonetic character varying(255),
    middlename character varying(255),
    alternatename character varying(255)
);
    DROP TABLE public.dim_usuario;
       public         heap    postgres    false    3            ?            1259    24774    dim_usuario_id_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.dim_usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.dim_usuario_id_usuario_seq;
       public          postgres    false    205    3            ?           0    0    dim_usuario_id_usuario_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.dim_usuario_id_usuario_seq OWNED BY public.dim_usuario.id_usuario;
          public          postgres    false    204            ?            1259    24785    fato_evento    TABLE     ?  CREATE TABLE public.fato_evento (
    id_fato bigint NOT NULL,
    id bigint,
    eventname character varying(255),
    acao character varying(100),
    target character varying(100),
    origin character varying(10),
    ip character varying(45),
    username character varying(100),
    firstname character varying(100),
    lastname character varying(100),
    email character varying(100),
    city character varying(120),
    lastip character varying(45),
    nome character varying(255),
    primeiro_acesso timestamp without time zone,
    tempo_criacao timestamp without time zone,
    ultimo_acesso timestamp without time zone,
    ultimo_login timestamp without time zone,
    recente_login timestamp without time zone
);
    DROP TABLE public.fato_evento;
       public         heap    postgres    false    3            ?            1259    24783    fato_evento_id_fato_seq    SEQUENCE     ?   CREATE SEQUENCE public.fato_evento_id_fato_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.fato_evento_id_fato_seq;
       public          postgres    false    3    207            ?           0    0    fato_evento_id_fato_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.fato_evento_id_fato_seq OWNED BY public.fato_evento.id_fato;
          public          postgres    false    206                       2604    24772    dim_curso id_curso    DEFAULT     x   ALTER TABLE ONLY public.dim_curso ALTER COLUMN id_curso SET DEFAULT nextval('public.dim_curso_id_curso_seq'::regclass);
 A   ALTER TABLE public.dim_curso ALTER COLUMN id_curso DROP DEFAULT;
       public          postgres    false    203    202    203                       2604    24757    dim_disciplina id_disciplina    DEFAULT     ?   ALTER TABLE ONLY public.dim_disciplina ALTER COLUMN id_disciplina SET DEFAULT nextval('public.dim_disciplina_id_disciplina_seq'::regclass);
 K   ALTER TABLE public.dim_disciplina ALTER COLUMN id_disciplina DROP DEFAULT;
       public          postgres    false    201    200                       2604    24798    dim_tempo id_tempo    DEFAULT     x   ALTER TABLE ONLY public.dim_tempo ALTER COLUMN id_tempo SET DEFAULT nextval('public.dim_tempo_id_tempo_seq'::regclass);
 A   ALTER TABLE public.dim_tempo ALTER COLUMN id_tempo DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    24779    dim_usuario id_usuario    DEFAULT     ?   ALTER TABLE ONLY public.dim_usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.dim_usuario_id_usuario_seq'::regclass);
 E   ALTER TABLE public.dim_usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    204    205    205                       2604    24788    fato_evento id_fato    DEFAULT     z   ALTER TABLE ONLY public.fato_evento ALTER COLUMN id_fato SET DEFAULT nextval('public.fato_evento_id_fato_seq'::regclass);
 B   ALTER TABLE public.fato_evento ALTER COLUMN id_fato DROP DEFAULT;
       public          postgres    false    206    207    207            ?          0    24769 	   dim_curso 
   TABLE DATA           E   COPY public.dim_curso (id_curso, id, category, fullname) FROM stdin;
    public          postgres    false    203   ?       ?          0    24749    dim_disciplina 
   TABLE DATA           <  COPY public.dim_disciplina (id, category, sortorder, fullname, shortname, idnumber, summary, summaryformat, formato, showgrades, newsitems, startdate, enddate, marker, maxbytes, legacyfiles, showreports, visible, visibleold, groupmode, groupmodeforce, defaultgroupingid, lang, calendartype, theme, timecreated, timemodified, requested, enablecompletion, completionnotify, cacherev, id_1, nome, idnumber_1, description, descriptionformat, parent, sortorder_1, coursecount, visible_1, visibleold_1, timemodified_1, profundidade, caminho, theme_1, id_disciplina) FROM stdin;
    public          postgres    false    200   3        ?          0    24795 	   dim_tempo 
   TABLE DATA           k   COPY public.dim_tempo (id_tempo, ano, mes, dia_ano, dia_mes, dia_semana, semana_ano, semestre) FROM stdin;
    public          postgres    false    209   ?        ?          0    24776    dim_usuario 
   TABLE DATA           `  COPY public.dim_usuario (id_usuario, id, auth, confirmed, policyagreed, deleted, suspended, mnethostid, username, password, idnumber, firstname, lastname, email, emailstop, icq, skype, yahoo, aim, msn, phone1, phone2, institution, department, address, city, country, lang, calendartype, theme, timezone, firstaccess, lastaccess, lastlogin, currentlogin, lastip, secret, picture, url, description, descriptionformat, mailformat, maildigest, maildisplay, autosubscribe, trackforums, timecreated, timemodified, trustbitmask, imagealt, lastnamephonetic, firstnamephonetic, middlename, alternatename) FROM stdin;
    public          postgres    false    205   (        ?          0    24785    fato_evento 
   TABLE DATA           ?   COPY public.fato_evento (id_fato, id, eventname, acao, target, origin, ip, username, firstname, lastname, email, city, lastip, nome, primeiro_acesso, tempo_criacao, ultimo_acesso, ultimo_login, recente_login) FROM stdin;
    public          postgres    false    207   7       ?           0    0    dim_curso_id_curso_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dim_curso_id_curso_seq', 3, true);
          public          postgres    false    202            ?           0    0     dim_disciplina_id_disciplina_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dim_disciplina_id_disciplina_seq', 3, true);
          public          postgres    false    201            ?           0    0    dim_tempo_id_tempo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dim_tempo_id_tempo_seq', 2, true);
          public          postgres    false    208            ?           0    0    dim_usuario_id_usuario_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.dim_usuario_id_usuario_seq', 10, true);
          public          postgres    false    204            ?           0    0    fato_evento_id_fato_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.fato_evento_id_fato_seq', 88, true);
          public          postgres    false    206           
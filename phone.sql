PGDMP             
            z            phone    14.2    14.2    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            O           1262    62688    phone    DATABASE     i   CREATE DATABASE phone WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE phone;
                postgres    false            �            1259    62689    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false            �            1259    62694    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    209            P           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    210            �            1259    62695    admin_permissions_role_links    TABLE     e   CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            �            1259    62698    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false            �            1259    62703    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    212            Q           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    213            �            1259    62704    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    postgres    false            �            1259    62709    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    214            R           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    215            �            1259    62710    admin_users_roles_links    TABLE     Z   CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            �            1259    62713    cac_san_phams    TABLE     �  CREATE TABLE public.cac_san_phams (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    gia_tien_goc bigint,
    gia_khuyen_mai bigint,
    thong_tin text,
    product_id integer
);
 !   DROP TABLE public.cac_san_phams;
       public         heap    postgres    false            �            1259    62718 "   cac_san_phams_hangdienthoais_links    TABLE     v   CREATE TABLE public.cac_san_phams_hangdienthoais_links (
    cac_san_pham_id integer,
    hangdienthoai_id integer
);
 6   DROP TABLE public.cac_san_phams_hangdienthoais_links;
       public         heap    postgres    false            �            1259    62721    cac_san_phams_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cac_san_phams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cac_san_phams_id_seq;
       public          postgres    false    217            S           0    0    cac_san_phams_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cac_san_phams_id_seq OWNED BY public.cac_san_phams.id;
          public          postgres    false    219            �            1259    62722    components_themvao_meta_socials    TABLE     �   CREATE TABLE public.components_themvao_meta_socials (
    id integer NOT NULL,
    title character varying(255),
    motathongtin character varying(255),
    social_network character varying(255)
);
 3   DROP TABLE public.components_themvao_meta_socials;
       public         heap    postgres    false            �            1259    62727 &   components_themvao_meta_socials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_themvao_meta_socials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_themvao_meta_socials_id_seq;
       public          postgres    false    220            T           0    0 &   components_themvao_meta_socials_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_themvao_meta_socials_id_seq OWNED BY public.components_themvao_meta_socials.id;
          public          postgres    false    221            �            1259    62728     components_themvao_right_buttons    TABLE     �   CREATE TABLE public.components_themvao_right_buttons (
    id integer NOT NULL,
    title character varying(255),
    lable character varying(255)
);
 4   DROP TABLE public.components_themvao_right_buttons;
       public         heap    postgres    false            �            1259    62733 '   components_themvao_right_buttons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_themvao_right_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_themvao_right_buttons_id_seq;
       public          postgres    false    222            U           0    0 '   components_themvao_right_buttons_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_themvao_right_buttons_id_seq OWNED BY public.components_themvao_right_buttons.id;
          public          postgres    false    223            �            1259    62734    components_thongtin_mangxahois    TABLE     p   CREATE TABLE public.components_thongtin_mangxahois (
    id integer NOT NULL,
    url character varying(255)
);
 2   DROP TABLE public.components_thongtin_mangxahois;
       public         heap    postgres    false            �            1259    62737 %   components_thongtin_mangxahois_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_thongtin_mangxahois_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_thongtin_mangxahois_id_seq;
       public          postgres    false    224            V           0    0 %   components_thongtin_mangxahois_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_thongtin_mangxahois_id_seq OWNED BY public.components_thongtin_mangxahois.id;
          public          postgres    false    225            �            1259    62738    files    TABLE     {  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    postgres    false            �            1259    62743    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    226            W           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    227            �            1259    62744    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false            �            1259    62749    hangdienthoais    TABLE     &  CREATE TABLE public.hangdienthoais (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.hangdienthoais;
       public         heap    postgres    false            �            1259    62752    hangdienthoais_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hangdienthoais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.hangdienthoais_id_seq;
       public          postgres    false    229            X           0    0    hangdienthoais_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.hangdienthoais_id_seq OWNED BY public.hangdienthoais.id;
          public          postgres    false    230            �            1259    62753    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            �            1259    62758    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    231            Y           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    232            �            1259    62759    lien_hes    TABLE     5  CREATE TABLE public.lien_hes (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    title character varying(255),
    thong_tin text
);
    DROP TABLE public.lien_hes;
       public         heap    postgres    false            �            1259    62764    lien_hes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lien_hes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.lien_hes_id_seq;
       public          postgres    false    233            Z           0    0    lien_hes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.lien_hes_id_seq OWNED BY public.lien_hes.id;
          public          postgres    false    234            �            1259    62765    lienhes    TABLE     �   CREATE TABLE public.lienhes (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.lienhes;
       public         heap    postgres    false            �            1259    62768    lienhes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lienhes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.lienhes_id_seq;
       public          postgres    false    235            [           0    0    lienhes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.lienhes_id_seq OWNED BY public.lienhes.id;
          public          postgres    false    236            �            1259    62769    newss    TABLE     �   CREATE TABLE public.newss (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.newss;
       public         heap    postgres    false            �            1259    62772    newss_id_seq    SEQUENCE     �   CREATE SEQUENCE public.newss_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.newss_id_seq;
       public          postgres    false    237            \           0    0    newss_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.newss_id_seq OWNED BY public.newss.id;
          public          postgres    false    238            �            1259    62773    strapi_api_tokens    TABLE     h  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false            �            1259    62778    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    239            ]           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    240            �            1259    62779    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            �            1259    62784 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    241            ^           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    242            �            1259    62785    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            �            1259    62790    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    243            _           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    244            �            1259    62791    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            �            1259    62794    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    245            `           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    246            �            1259    62795    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            �            1259    62800    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    247            a           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    248            �            1259    62801    tin_tucs    TABLE     5  CREATE TABLE public.tin_tucs (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    thong_tin text
);
    DROP TABLE public.tin_tucs;
       public         heap    postgres    false            �            1259    62806    tin_tucs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tin_tucs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tin_tucs_id_seq;
       public          postgres    false    249            b           0    0    tin_tucs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tin_tucs_id_seq OWNED BY public.tin_tucs.id;
          public          postgres    false    250            �            1259    62807    tintucs    TABLE     �   CREATE TABLE public.tintucs (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.tintucs;
       public         heap    postgres    false            �            1259    62810    tintucs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tintucs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tintucs_id_seq;
       public          postgres    false    251            c           0    0    tintucs_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tintucs_id_seq OWNED BY public.tintucs.id;
          public          postgres    false    252            �            1259    62811 
   tranghomes    TABLE       CREATE TABLE public.tranghomes (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.tranghomes;
       public         heap    postgres    false            �            1259    62814    tranghomes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tranghomes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tranghomes_id_seq;
       public          postgres    false    253            d           0    0    tranghomes_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tranghomes_id_seq OWNED BY public.tranghomes.id;
          public          postgres    false    254            �            1259    62815    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false                        1259    62818    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    255            e           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    256                       1259    62819    up_permissions_role_links    TABLE     b   CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                       1259    62822    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false                       1259    62827    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    258            f           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    259                       1259    62828    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    postgres    false                       1259    62833    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    260            g           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    261                       1259    62834    up_users_role_links    TABLE     V   CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false            �           2604    62837    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    62838    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    62839    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    62840    cac_san_phams id    DEFAULT     t   ALTER TABLE ONLY public.cac_san_phams ALTER COLUMN id SET DEFAULT nextval('public.cac_san_phams_id_seq'::regclass);
 ?   ALTER TABLE public.cac_san_phams ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    217            �           2604    62841 "   components_themvao_meta_socials id    DEFAULT     �   ALTER TABLE ONLY public.components_themvao_meta_socials ALTER COLUMN id SET DEFAULT nextval('public.components_themvao_meta_socials_id_seq'::regclass);
 Q   ALTER TABLE public.components_themvao_meta_socials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    62842 #   components_themvao_right_buttons id    DEFAULT     �   ALTER TABLE ONLY public.components_themvao_right_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_themvao_right_buttons_id_seq'::regclass);
 R   ALTER TABLE public.components_themvao_right_buttons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    62843 !   components_thongtin_mangxahois id    DEFAULT     �   ALTER TABLE ONLY public.components_thongtin_mangxahois ALTER COLUMN id SET DEFAULT nextval('public.components_thongtin_mangxahois_id_seq'::regclass);
 P   ALTER TABLE public.components_thongtin_mangxahois ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    62844    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    62845    hangdienthoais id    DEFAULT     v   ALTER TABLE ONLY public.hangdienthoais ALTER COLUMN id SET DEFAULT nextval('public.hangdienthoais_id_seq'::regclass);
 @   ALTER TABLE public.hangdienthoais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    62846    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    62847    lien_hes id    DEFAULT     j   ALTER TABLE ONLY public.lien_hes ALTER COLUMN id SET DEFAULT nextval('public.lien_hes_id_seq'::regclass);
 :   ALTER TABLE public.lien_hes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    62848 
   lienhes id    DEFAULT     h   ALTER TABLE ONLY public.lienhes ALTER COLUMN id SET DEFAULT nextval('public.lienhes_id_seq'::regclass);
 9   ALTER TABLE public.lienhes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    62849    newss id    DEFAULT     d   ALTER TABLE ONLY public.newss ALTER COLUMN id SET DEFAULT nextval('public.newss_id_seq'::regclass);
 7   ALTER TABLE public.newss ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    62850    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    62851    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    62852    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            �           2604    62853    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            �           2604    62854    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            �           2604    62855    tin_tucs id    DEFAULT     j   ALTER TABLE ONLY public.tin_tucs ALTER COLUMN id SET DEFAULT nextval('public.tin_tucs_id_seq'::regclass);
 :   ALTER TABLE public.tin_tucs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    62856 
   tintucs id    DEFAULT     h   ALTER TABLE ONLY public.tintucs ALTER COLUMN id SET DEFAULT nextval('public.tintucs_id_seq'::regclass);
 9   ALTER TABLE public.tintucs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            �           2604    62857    tranghomes id    DEFAULT     n   ALTER TABLE ONLY public.tranghomes ALTER COLUMN id SET DEFAULT nextval('public.tranghomes_id_seq'::regclass);
 <   ALTER TABLE public.tranghomes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            �           2604    62858    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            �           2604    62859    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            �           2604    62860    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260                      0    62689    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    209   �c                0    62695    admin_permissions_role_links 
   TABLE DATA           N   COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
    public          postgres    false    211   �j                0    62698    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    212   |k                0    62704    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    214   \l                0    62710    admin_users_roles_links 
   TABLE DATA           C   COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
    public          postgres    false    216   �l                0    62713    cac_san_phams 
   TABLE DATA           �   COPY public.cac_san_phams (id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, gia_tien_goc, gia_khuyen_mai, thong_tin, product_id) FROM stdin;
    public          postgres    false    217   m                0    62718 "   cac_san_phams_hangdienthoais_links 
   TABLE DATA           _   COPY public.cac_san_phams_hangdienthoais_links (cac_san_pham_id, hangdienthoai_id) FROM stdin;
    public          postgres    false    218   ��                0    62722    components_themvao_meta_socials 
   TABLE DATA           b   COPY public.components_themvao_meta_socials (id, title, motathongtin, social_network) FROM stdin;
    public          postgres    false    220   ��      !          0    62728     components_themvao_right_buttons 
   TABLE DATA           L   COPY public.components_themvao_right_buttons (id, title, lable) FROM stdin;
    public          postgres    false    222   �      #          0    62734    components_thongtin_mangxahois 
   TABLE DATA           A   COPY public.components_thongtin_mangxahois (id, url) FROM stdin;
    public          postgres    false    224   :�      %          0    62738    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    226   l�      '          0    62744    files_related_morphs 
   TABLE DATA           a   COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    228   �      (          0    62749    hangdienthoais 
   TABLE DATA           v   COPY public.hangdienthoais (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    229   ��      *          0    62753    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    231   f�      ,          0    62759    lien_hes 
   TABLE DATA           |   COPY public.lien_hes (id, created_at, updated_at, published_at, created_by_id, updated_by_id, title, thong_tin) FROM stdin;
    public          postgres    false    233   ��      .          0    62765    lienhes 
   TABLE DATA           i   COPY public.lienhes (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    235   ��      0          0    62769    newss 
   TABLE DATA           g   COPY public.newss (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237   ��      2          0    62773    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    239   	�      4          0    62779    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    241   &�      6          0    62785    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    243         8          0    62791    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    245         :          0    62795    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    247         <          0    62801    tin_tucs 
   TABLE DATA           |   COPY public.tin_tucs (id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, thong_tin) FROM stdin;
    public          postgres    false    249   <      >          0    62807    tintucs 
   TABLE DATA           i   COPY public.tintucs (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    251         @          0    62811 
   tranghomes 
   TABLE DATA           l   COPY public.tranghomes (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    253   8      B          0    62815    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    255   U      D          0    62819    up_permissions_role_links 
   TABLE DATA           K   COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
    public          postgres    false    257   �!      E          0    62822    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    258   I"      G          0    62828    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    260   �"      I          0    62834    up_users_role_links 
   TABLE DATA           ?   COPY public.up_users_role_links (user_id, role_id) FROM stdin;
    public          postgres    false    262   �#      h           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 205, true);
          public          postgres    false    210            i           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    213            j           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    215            k           0    0    cac_san_phams_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cac_san_phams_id_seq', 20, true);
          public          postgres    false    219            l           0    0 &   components_themvao_meta_socials_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_themvao_meta_socials_id_seq', 2, true);
          public          postgres    false    221            m           0    0 '   components_themvao_right_buttons_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_themvao_right_buttons_id_seq', 1, false);
          public          postgres    false    223            n           0    0 %   components_thongtin_mangxahois_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_thongtin_mangxahois_id_seq', 1, true);
          public          postgres    false    225            o           0    0    files_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.files_id_seq', 222, true);
          public          postgres    false    227            p           0    0    hangdienthoais_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hangdienthoais_id_seq', 5, true);
          public          postgres    false    230            q           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    232            r           0    0    lien_hes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.lien_hes_id_seq', 1, false);
          public          postgres    false    234            s           0    0    lienhes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lienhes_id_seq', 1, false);
          public          postgres    false    236            t           0    0    newss_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.newss_id_seq', 1, false);
          public          postgres    false    238            u           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    240            v           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 36, true);
          public          postgres    false    242            w           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 55, true);
          public          postgres    false    244            x           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    246            y           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    248            z           0    0    tin_tucs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tin_tucs_id_seq', 2, true);
          public          postgres    false    250            {           0    0    tintucs_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tintucs_id_seq', 1, true);
          public          postgres    false    252            |           0    0    tranghomes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tranghomes_id_seq', 1, false);
          public          postgres    false    254            }           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 58, true);
          public          postgres    false    256            ~           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    259                       0    0    up_users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_users_id_seq', 3, true);
          public          postgres    false    261                       2606    62871 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    209                       2606    62873    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    212                       2606    62875    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    214                       2606    62877     cac_san_phams cac_san_phams_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cac_san_phams
    ADD CONSTRAINT cac_san_phams_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cac_san_phams DROP CONSTRAINT cac_san_phams_pkey;
       public            postgres    false    217                       2606    62879 D   components_themvao_meta_socials components_themvao_meta_socials_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_themvao_meta_socials
    ADD CONSTRAINT components_themvao_meta_socials_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_themvao_meta_socials DROP CONSTRAINT components_themvao_meta_socials_pkey;
       public            postgres    false    220                       2606    62881 F   components_themvao_right_buttons components_themvao_right_buttons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_themvao_right_buttons
    ADD CONSTRAINT components_themvao_right_buttons_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_themvao_right_buttons DROP CONSTRAINT components_themvao_right_buttons_pkey;
       public            postgres    false    222                       2606    62883 B   components_thongtin_mangxahois components_thongtin_mangxahois_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_thongtin_mangxahois
    ADD CONSTRAINT components_thongtin_mangxahois_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_thongtin_mangxahois DROP CONSTRAINT components_thongtin_mangxahois_pkey;
       public            postgres    false    224                       2606    62885    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    226            "           2606    62887 "   hangdienthoais hangdienthoais_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.hangdienthoais
    ADD CONSTRAINT hangdienthoais_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.hangdienthoais DROP CONSTRAINT hangdienthoais_pkey;
       public            postgres    false    229            &           2606    62889    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    231            *           2606    62891    lien_hes lien_hes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.lien_hes
    ADD CONSTRAINT lien_hes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.lien_hes DROP CONSTRAINT lien_hes_pkey;
       public            postgres    false    233            .           2606    62893    lienhes lienhes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lienhes
    ADD CONSTRAINT lienhes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.lienhes DROP CONSTRAINT lienhes_pkey;
       public            postgres    false    235            2           2606    62895    newss newss_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.newss
    ADD CONSTRAINT newss_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.newss DROP CONSTRAINT newss_pkey;
       public            postgres    false    237            6           2606    62897 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    239            9           2606    62899 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    241            ;           2606    62901 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    243            =           2606    62903 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    245            ?           2606    62905 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    247            B           2606    62907    tin_tucs tin_tucs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tin_tucs
    ADD CONSTRAINT tin_tucs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tin_tucs DROP CONSTRAINT tin_tucs_pkey;
       public            postgres    false    249            F           2606    62909    tintucs tintucs_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tintucs
    ADD CONSTRAINT tintucs_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tintucs DROP CONSTRAINT tintucs_pkey;
       public            postgres    false    251            J           2606    62911    tranghomes tranghomes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tranghomes
    ADD CONSTRAINT tranghomes_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tranghomes DROP CONSTRAINT tranghomes_pkey;
       public            postgres    false    253            N           2606    62913 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    255            T           2606    62915    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    258            X           2606    62917    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    260            �           1259    62918 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    209                       1259    62919    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    211                       1259    62920 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    211                       1259    62921 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    209                       1259    62922    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    212                       1259    62923    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    212            	           1259    62924    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    214                       1259    62925    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    216                       1259    62926    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    216                       1259    62927    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    214                       1259    62928    cac_san_phams_created_by_id_fk    INDEX     a   CREATE INDEX cac_san_phams_created_by_id_fk ON public.cac_san_phams USING btree (created_by_id);
 2   DROP INDEX public.cac_san_phams_created_by_id_fk;
       public            postgres    false    217                       1259    62929 %   cac_san_phams_hangdienthoais_links_fk    INDEX        CREATE INDEX cac_san_phams_hangdienthoais_links_fk ON public.cac_san_phams_hangdienthoais_links USING btree (cac_san_pham_id);
 9   DROP INDEX public.cac_san_phams_hangdienthoais_links_fk;
       public            postgres    false    218                       1259    62930 )   cac_san_phams_hangdienthoais_links_inv_fk    INDEX     �   CREATE INDEX cac_san_phams_hangdienthoais_links_inv_fk ON public.cac_san_phams_hangdienthoais_links USING btree (hangdienthoai_id);
 =   DROP INDEX public.cac_san_phams_hangdienthoais_links_inv_fk;
       public            postgres    false    218                       1259    62931    cac_san_phams_updated_by_id_fk    INDEX     a   CREATE INDEX cac_san_phams_updated_by_id_fk ON public.cac_san_phams USING btree (updated_by_id);
 2   DROP INDEX public.cac_san_phams_updated_by_id_fk;
       public            postgres    false    217                       1259    62932    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    226                       1259    62933    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    228                       1259    62934    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    226                        1259    62935    hangdienthoais_created_by_id_fk    INDEX     c   CREATE INDEX hangdienthoais_created_by_id_fk ON public.hangdienthoais USING btree (created_by_id);
 3   DROP INDEX public.hangdienthoais_created_by_id_fk;
       public            postgres    false    229            #           1259    62936    hangdienthoais_updated_by_id_fk    INDEX     c   CREATE INDEX hangdienthoais_updated_by_id_fk ON public.hangdienthoais USING btree (updated_by_id);
 3   DROP INDEX public.hangdienthoais_updated_by_id_fk;
       public            postgres    false    229            $           1259    62937    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    231            '           1259    62938    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    231            (           1259    62939    lien_hes_created_by_id_fk    INDEX     W   CREATE INDEX lien_hes_created_by_id_fk ON public.lien_hes USING btree (created_by_id);
 -   DROP INDEX public.lien_hes_created_by_id_fk;
       public            postgres    false    233            +           1259    62940    lien_hes_updated_by_id_fk    INDEX     W   CREATE INDEX lien_hes_updated_by_id_fk ON public.lien_hes USING btree (updated_by_id);
 -   DROP INDEX public.lien_hes_updated_by_id_fk;
       public            postgres    false    233            ,           1259    62941    lienhes_created_by_id_fk    INDEX     U   CREATE INDEX lienhes_created_by_id_fk ON public.lienhes USING btree (created_by_id);
 ,   DROP INDEX public.lienhes_created_by_id_fk;
       public            postgres    false    235            /           1259    62942    lienhes_updated_by_id_fk    INDEX     U   CREATE INDEX lienhes_updated_by_id_fk ON public.lienhes USING btree (updated_by_id);
 ,   DROP INDEX public.lienhes_updated_by_id_fk;
       public            postgres    false    235            0           1259    62943    newss_created_by_id_fk    INDEX     Q   CREATE INDEX newss_created_by_id_fk ON public.newss USING btree (created_by_id);
 *   DROP INDEX public.newss_created_by_id_fk;
       public            postgres    false    237            3           1259    62944    newss_updated_by_id_fk    INDEX     Q   CREATE INDEX newss_updated_by_id_fk ON public.newss USING btree (updated_by_id);
 *   DROP INDEX public.newss_updated_by_id_fk;
       public            postgres    false    237            4           1259    62945 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    239            7           1259    62946 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    239            @           1259    62947    tin_tucs_created_by_id_fk    INDEX     W   CREATE INDEX tin_tucs_created_by_id_fk ON public.tin_tucs USING btree (created_by_id);
 -   DROP INDEX public.tin_tucs_created_by_id_fk;
       public            postgres    false    249            C           1259    62948    tin_tucs_updated_by_id_fk    INDEX     W   CREATE INDEX tin_tucs_updated_by_id_fk ON public.tin_tucs USING btree (updated_by_id);
 -   DROP INDEX public.tin_tucs_updated_by_id_fk;
       public            postgres    false    249            D           1259    62949    tintucs_created_by_id_fk    INDEX     U   CREATE INDEX tintucs_created_by_id_fk ON public.tintucs USING btree (created_by_id);
 ,   DROP INDEX public.tintucs_created_by_id_fk;
       public            postgres    false    251            G           1259    62950    tintucs_updated_by_id_fk    INDEX     U   CREATE INDEX tintucs_updated_by_id_fk ON public.tintucs USING btree (updated_by_id);
 ,   DROP INDEX public.tintucs_updated_by_id_fk;
       public            postgres    false    251            H           1259    62951    tranghomes_created_by_id_fk    INDEX     [   CREATE INDEX tranghomes_created_by_id_fk ON public.tranghomes USING btree (created_by_id);
 /   DROP INDEX public.tranghomes_created_by_id_fk;
       public            postgres    false    253            K           1259    62952    tranghomes_updated_by_id_fk    INDEX     [   CREATE INDEX tranghomes_updated_by_id_fk ON public.tranghomes USING btree (updated_by_id);
 /   DROP INDEX public.tranghomes_updated_by_id_fk;
       public            postgres    false    253            L           1259    62953    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    255            P           1259    62954    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    257            Q           1259    62955     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    257            O           1259    62956    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    255            R           1259    62957    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    258            U           1259    62958    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    258            V           1259    62959    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    260            Z           1259    62960    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    262            [           1259    62961    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    262            Y           1259    62962    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    260            \           2606    62963 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    209    3339    214            ^           2606    62968 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    211    3329    209            _           2606    62973 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    3335    211    212            ]           2606    62978 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    3339    209    214            `           2606    62983 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    214    212    3339            a           2606    62988 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    214    212    3339            b           2606    62993 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    214    3339    214            d           2606    62998 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    214    3339    216            e           2606    63003 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    216    3335    212            c           2606    63008 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    3339    214    214            f           2606    63013 ,   cac_san_phams cac_san_phams_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cac_san_phams
    ADD CONSTRAINT cac_san_phams_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.cac_san_phams DROP CONSTRAINT cac_san_phams_created_by_id_fk;
       public          postgres    false    214    217    3339            h           2606    63018 H   cac_san_phams_hangdienthoais_links cac_san_phams_hangdienthoais_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cac_san_phams_hangdienthoais_links
    ADD CONSTRAINT cac_san_phams_hangdienthoais_links_fk FOREIGN KEY (cac_san_pham_id) REFERENCES public.cac_san_phams(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.cac_san_phams_hangdienthoais_links DROP CONSTRAINT cac_san_phams_hangdienthoais_links_fk;
       public          postgres    false    3345    218    217            i           2606    63023 L   cac_san_phams_hangdienthoais_links cac_san_phams_hangdienthoais_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cac_san_phams_hangdienthoais_links
    ADD CONSTRAINT cac_san_phams_hangdienthoais_links_inv_fk FOREIGN KEY (hangdienthoai_id) REFERENCES public.hangdienthoais(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.cac_san_phams_hangdienthoais_links DROP CONSTRAINT cac_san_phams_hangdienthoais_links_inv_fk;
       public          postgres    false    229    3362    218            g           2606    63028 ,   cac_san_phams cac_san_phams_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cac_san_phams
    ADD CONSTRAINT cac_san_phams_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.cac_san_phams DROP CONSTRAINT cac_san_phams_updated_by_id_fk;
       public          postgres    false    217    214    3339            j           2606    63033    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    226    3339    214            l           2606    63038 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    3357    226    228            k           2606    63043    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    3339    226    214            m           2606    63048 .   hangdienthoais hangdienthoais_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hangdienthoais
    ADD CONSTRAINT hangdienthoais_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.hangdienthoais DROP CONSTRAINT hangdienthoais_created_by_id_fk;
       public          postgres    false    229    3339    214            n           2606    63053 .   hangdienthoais hangdienthoais_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hangdienthoais
    ADD CONSTRAINT hangdienthoais_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.hangdienthoais DROP CONSTRAINT hangdienthoais_updated_by_id_fk;
       public          postgres    false    3339    229    214            o           2606    63058 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    3339    214    231            p           2606    63063 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    231    3339    214            q           2606    63068 "   lien_hes lien_hes_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lien_hes
    ADD CONSTRAINT lien_hes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.lien_hes DROP CONSTRAINT lien_hes_created_by_id_fk;
       public          postgres    false    214    233    3339            r           2606    63073 "   lien_hes lien_hes_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lien_hes
    ADD CONSTRAINT lien_hes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.lien_hes DROP CONSTRAINT lien_hes_updated_by_id_fk;
       public          postgres    false    214    233    3339            s           2606    63078     lienhes lienhes_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lienhes
    ADD CONSTRAINT lienhes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lienhes DROP CONSTRAINT lienhes_created_by_id_fk;
       public          postgres    false    3339    214    235            t           2606    63083     lienhes lienhes_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.lienhes
    ADD CONSTRAINT lienhes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.lienhes DROP CONSTRAINT lienhes_updated_by_id_fk;
       public          postgres    false    214    3339    235            u           2606    63088    newss newss_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.newss
    ADD CONSTRAINT newss_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.newss DROP CONSTRAINT newss_created_by_id_fk;
       public          postgres    false    214    3339    237            v           2606    63093    newss newss_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.newss
    ADD CONSTRAINT newss_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.newss DROP CONSTRAINT newss_updated_by_id_fk;
       public          postgres    false    237    3339    214            w           2606    63098 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    214    239    3339            x           2606    63103 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    239    3339    214            y           2606    63108 "   tin_tucs tin_tucs_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tin_tucs
    ADD CONSTRAINT tin_tucs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.tin_tucs DROP CONSTRAINT tin_tucs_created_by_id_fk;
       public          postgres    false    249    214    3339            z           2606    63113 "   tin_tucs tin_tucs_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tin_tucs
    ADD CONSTRAINT tin_tucs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.tin_tucs DROP CONSTRAINT tin_tucs_updated_by_id_fk;
       public          postgres    false    3339    214    249            {           2606    63118     tintucs tintucs_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tintucs
    ADD CONSTRAINT tintucs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.tintucs DROP CONSTRAINT tintucs_created_by_id_fk;
       public          postgres    false    251    3339    214            |           2606    63123     tintucs tintucs_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tintucs
    ADD CONSTRAINT tintucs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.tintucs DROP CONSTRAINT tintucs_updated_by_id_fk;
       public          postgres    false    214    3339    251            }           2606    63128 &   tranghomes tranghomes_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tranghomes
    ADD CONSTRAINT tranghomes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.tranghomes DROP CONSTRAINT tranghomes_created_by_id_fk;
       public          postgres    false    214    253    3339            ~           2606    63133 &   tranghomes tranghomes_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tranghomes
    ADD CONSTRAINT tranghomes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.tranghomes DROP CONSTRAINT tranghomes_updated_by_id_fk;
       public          postgres    false    214    3339    253                       2606    63138 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    214    255    3339            �           2606    63143 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    3406    255    257            �           2606    63148 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    257    258    3412            �           2606    63153 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    3339    255    214            �           2606    63158 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    258    214    3339            �           2606    63163 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    214    258    3339            �           2606    63168 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    214    3339    260            �           2606    63173 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    262    260    3416            �           2606    63178 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    258    3412    262            �           2606    63183 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    260    3339    214               �  x��ZK��H>{~�����m�����F{�[E���`� gv���tc�]��g����wW&�}~xʊ8>��2I�J&����շW>��G�����=�a�nDCW_����N�&u-���(፜��8�w� ��O�ݙѝ���h?���7���g����g��xH�!.�s�������9����O�OxK�}��b�9>�6߸M�u? �N>�n<@��'��MY4�h�]R$O�r�?��R:4���jg/�]V�YY(�*d�m�%�yZ����)��\�r���$�ۇ}U~�RY��/e��ϕT�����Y-����U��QSP�������*s��{AP�~��~8V�O�ĵؼt)��~ ��0M��y?�2�?�Z���Z\k�Z�Y�K�y�˶(7<*�|����~ <{Gkq����2���U����5sx�y�/�9��<43���{Gg��i��!�SS�3�5��8f���Q�Q������tvB`�
�R�素�שq;�&=�,&������z�cYP�=�w4�!�e���a&i��ķ$k` �.t��"#�;xoG8K���U��*�fiP�̯��_��%�'�e"`��(˼D��D9bE?�2��B9���o�<�Ȏ��i�n�+*�u@f��`l�� H���<�(��kRld�,)� hx�ix�_D��(���;���D���$������Z�#����YE��N	{��pTO� �D�)�[��.��e��v��	�^�~���Β�U�$��H�ҏ�	�Dr(p4��fN6u�h���-�g�I&����9?��<p�����gbQ�\bD�Qg�T�|F�������F�� ��~���R���9߶ߵ�B�k�b,sޱ�����}o,�U�O��~_�����-	:\K�c��Z���2�X&ʫ֙�õT>���u���Zj_]�>s�vs�t��a-8�Fx׺��p-8�F���F�ע#�h�������c��L3)�8.�K����O��9w���fE����<��Kh����Z�dGZ5u5����3ڍ��T��Ss/��KB�F��ǔ�A�č�]�N��Ո(���
޲��haIBb���M��kf�}��h���z��������������&k�������Zl�ǇmY<=d��&bO�<Aܨ	/��y��JރLqFx�jM�<��V��?P9s��E�kfDG	���$��Md�ןs��?�F���1����J��m��n���4��# n�A�k��7�2��nTA�(|�+�-X�fˍ�hK�95T��]J��7j`��ݠ�4aO�Q�"�z5�v����!٪�H�ͶL2w�i\��m�&�|����~���ت�OT�O��)�=�Ό|��7o4��)��Ei�FeD��}��@\�za�g�g�O����r�qͿ��[�� q������6V$lO\�>q9	A�(�h�#W\�ɠ�Nq��{�(=�	,伻A�4���4�]��a�btt�v�g�#��x<7�?&�!�fD�O������jh��F��FNۍ���$�j�d��q7j �#\�! n檅��`�0?M��hs9ō
b��X2���p3; ���D[��e��`� "���n���
�K��:p���1�7�^��E�%�e:����Ӥ?�f�B��a�/��Ua33��wY�{Wn��?��WY��d#s�/��Z�t-=l�?~�Z+Z���y��
���ZD��2�G�u�$���VD��G�vx����ݻ��� B�-+         �   x�%�ɍ�0Dѳ�@�$1��?��/Xp������w�Nީ;닱�;}�&a�s"�$�X�&�7|G8��p�#�@"�D �@"�HD"��D$"�(D!
Q�B��(�ⓥS��P'n�mmr���w�]�]O�s��+H�VOS�-�-�-�f[�e�?�ۧڝjv�کn���5�k��T��S/��M�����v�G(         �   x�u��n! k�+��q�W�­�n6��!���.����A�;H��J]�L	���bI8��_��_���b �������4��Pr�ʙD|��6�כ^��>��v+���sY�Q'�%����Ta�X��6���6� >�)� 2F&�7�2�Wd�Ԋj4-Iku�嶿$�S�oIŴ���?0�w!�|��|��U��{n�~5         �   x�3��(��K�t*����,�J3��s3s���s9U�UT��J\���KR��,�=+-2��+�����|C��-3�����]Ҝ2���L���R���@ƂL�LQFFF�f�&
�V��V&�z�8����b���� @(-�            x�3�4����� ]            x��}��u�g���i5[�=��Y(Ҧ�2�Ud������N�3=�ٙ���?X ���@Pt�/�PAKT p	�����$�U]���w��8����r�U�N���<�}��?�Ǐ~������0ҫ�q��$�:�8��ҙ��$�k��q+H��8Y�բV�m?�I�^o��kQg�Sr}=�7������j���_�Ep����<,�����̮,nf|�z��~p���o�'�i�F�f��'����^��o���ç�ī�mqs3�����`�;_�A��/�r5�n6}���G�����d=�0�������������q��z�
p`/?�(�p�>�v�q����+pQ������%��� ��=~t+h^�̮�Yl���I;n����x3:�9X|��0�`���VL�GwG�|��(�M��峠w��N�g_J���4���8�[=�Vo0`���3���ї�5~�~�//��Ƥ�����?	�Q�3]|�#Z����~̎ݐQ��*3wx{@�(ŋ3[܃�����q�o}�����0��oO���ϳ`oq3��4������6=`��لfY`X����p���eX٠�63��@��!�d']�x��S�%���{� �/~����,��)>nWg�&��0�� f���D�F��^|/���A�N35d$���`wę��aZ������w'��3��>�W���!�h��ԏ�VZ~ ,�0�]���`����6�9����U��4�F�s����l'��=��Cf��l:? ^�mMC�ґ�>` ��~��g�2�Y��ofp^�n���~��Ŀ	��
7]0J�(xu�����KJ�t���E�ݛ�\8�g�UF�F­�;�e��6�ko����:0M�v�(���z&.�'c��T�H@�����A~ty�G��wB��3^�LQ �T`t8������[�w�
��n��bxǿe�пnɞ���=\�`�6�&d&x>�2m�ɿ���<���̰�NJ{`����y����vG�4th�N�SU.��&�bSV��&�=4�G��9Ux#��5�6��dͷ8o���G��1��E��d.~�ԅ���#��ǵ���9��>3����[�`�d��/�� -�s���䦈��.�#VkU���\Z#��p��O`ʴ_���c�V�zH�g6�%��� ���6�;�bLm�k��m�1�w58u���_͌y���^��F�;��@�3�B���I?�Ud��	�����=l�ƺ	7/�H��1���o"��1[s@�a@�1���l<�-{��l#�$Dp��f������8��,-J/�_�;��mˏ��&������&�ʫ�hXT?{�8<hC���Ͳ�v�`��sb���i>�X���"IL$�U_	sde�2�n�b��)����e�vP�ACm�;�f4�h)��E�kd6���(�bp6N^{6>w��2#%�C�d;�;)p�CYa3B	�;��'xY�:���օǧ���	:�Pp����X@ܞ�$�I��'�>Ś$r�WH)~:~F$7��R���L6��٬a�Z�~	��Dm`�!�(�Fh�!g��^��F�%Ҿ8ر� �ޞX)jH�E\EL�+}�Yܝ�H�R�Wq?	� ��)�lxbr~��t�uE�Y�A��Į�G.����t�ߟ?�? m���Ko�k�\�>�ԗ�í��/�+X XmT05���/�'�MBTQ%b��.��>���d#��f!B �
��#���� ,��	[���q#�F٢�Ȧw���'�6��i���B�mO��O3d�/e�6d�}��J�,㹱 W�F�愒���\�Y���T�i�������l/����bLjN�b,��Pǡ
ˌ�2�E�b�-4	�\�g�q���M�	�7P�K�{��ؙ�eZ��`�h�}�z��~n���P#��xɓ��-Za��1�X��O�J��+��`fqfT�V��>����*���Nj��8Ex��� �Mt��z�KwY,�<3��=�}|���'� [d\��g���tN���ۻs��Lx�!n�P��c�����lERF�9���\��3�|'�6B(����d�t[$|d�	�_���[�x3ӫw����E��/'	����'���j�/sJ�]r����2Dy�F#_3gJ��dD�����b\)t`'-1�Q��~�6���fe��Q暐p���o�:4xe�0}�Yh���<���l�BF�S�ѽ9����P;�Y��Ħ�ۨ���5�����R�]�ɣb'��$	��\S���V������nׇ<��S!9h �"e�����+�12�q`��]
{�.p�6��=�G3����`'�pB�F|g�������5�_=!���m藰n'I�a��#��Y��⼉���b��yD��m/�`_E�7��M�2�lس�az",�#X����Ǹ�M<�aEL�)8�����i����n�BeQ�=� ���
g_���Gn��������J�G��O�]T�(��z��(Ҭ�8�gD�Bv�J��j�l��&;]���m|�THGx����i�JW�	��Ha���h��",�Ә��q��(���?ܶ�-rb~���sO�/J�k讦�JὌ�z� ��Ź����v�MJ}�djTLPs�+NB�t���Ӟ�{��g�6��J�><�6"$sQ�+W[m�!���^��ݠ�D����5��G��(d��$�T��<�-�޴eh��4ls����=���l��&��F���ld�J=Ua�V>so��O ��VW�0����2�˷Y>tY"�d���"�dMV�,�'i�=�A߼��m����3����<	��V��@�Kɐ����}dL��`x$%� ߃ �W���0�F`:�w;�ഊ�4}�V)Mf6��[)E�ai?:2�ZLv@l�a�M�ɋ���!j/�7@MD�A�A�ļG?�f�1�����w��$5X����X���D�2:�x�^�ntG���/w����`#I^@x>N�:fۄɭ���F=�;/fۈדN�l6��m��^oG��m[���$M���_��=ih�"ܼ��q�KɺWH�%?iE��8�g~�<�{!۞��mx�н�H��v�_¶C쓬�0�k1ޚ��nd�����{;��ς~g��%�ۮ����l�7��^$�7=�}���o�Y�a���������~5M�����Vd�+�x.�~1%���'�'!�`K�`ނ#�'	��r����)R$ύ��fN0�UhL�B�N(s�9���x����5NѵvI�X�ZՈ���gB��j�&څ�h<.�4��r�m�I����C��py<M��npy����J{���%��kHT��|��$���v �ڞ�$���	�; Q-�ܹG!�����Cm�����Vm��mB�֜�!��ٷr��"g�N3�q0c����4���N���ns��lΌT�tN:��<AHFq(�؄�1���4�^U�H���6���X�M����7q�ɬ.�	�m�(:#�F�^�`�0���Φ��J�8}��:.V�]iut{$������Ղ�Jl�p��ǃY�h���LV�B�ʀ+ރ<�2ȏ��B�gan��AD�qA�˞�@��F�CC�;E�AqF��2�}2���gO6S���	1�$��VQH�i"!B��b�6Z�Q"���/ZQ   �
[� �8��/��6�hF���%��Z�<ԡ��.��e���g���P�rO��O2���b�Y�w�[��~��d�ߡ����o�����V�l Qfa�@�c"��������n��,�$�H+�%7R��R<�V;�;��E3�.� C�����3^HxŃQC�?쳍K�� ����2���A/��I�s��Ҹ�i����%^P�;}�K��c4�f"G� ��$(���jc�ϕ�������r	W�S��%s )*L5zз!ŻA�@B%�    �����m��{�we�� ��+`�%h�ld+�D���mO�E�!xBeR���tp���ӑ)��P
j������uqE��+f�	������l�l����T�|NDl��EC�{�*
b�xpF��ʲf92�55�l�Ę��8f���-��3&�b�G4X��F�Q�sm!��qT������hh�Ǐ���pKm\́
~)�:�*Si�b��0���I���?��r������v)��7�����[Q��q�f��I��F-���9��7�ψs��[��b-j=���(Y���6�]��F��n�!��)Y��ӡf��ֻQX�7���\���,��9��e��D�5���Q[o�E�$.^߈��N�W�U��u�)?��sW��k/����K,Sp��8��v:K��9w���+��+4���۳�|l\�[��JU�T/]#�4oi@Z���Tp �I�8k��)+��#���գ��|;?�m�0y���)��Jds�\��5'Oή�`q������i�*��4��'lH���ҟa\U:�c�U!���?�s:E5��&� ,)38�ˌns�>N]�^��M�wlP�0@�f�±3Rj��������������/K����	�]���W�1���wMj����թ�b����
�w�q��6 �ſ�r�]T��ς7�����՛+8�z�NA	����P��<,�WH� Ś)eG%JɚK�K���(�k��Ӕ��y�� �T��: K��UF�g�����X|>���X7��7&��UeO��B�3�$M�d�u����{���W	��\�-N$���((�����'��ԉ�~q	����ß�Ao�rG&���r1�@$�S(�������P�ŰΡ������k�BJ����|6��e.i5�!Y�x����9p�.�.a��0k�`.0����q�
.����Fm��\�8��� *��l@R;MǏ~MN)f�;pN�\)ea'���-_��D�D���8����H�l��9�g������ ��+I@�6Nh�}pbp�eF�\iӖك6��**��hU��ʜn ����Oٕh������x�Z���4ng��
�T6��s.�B��`鳙]�ɰ;.�O2�*{��D�`�ym¾4�%�`�Y���;�����E��v�P�����hY�6��X7�7�&�n3*z�m�����s�FM�I���������˗� �%	��� �X
Z�!���~�Y��mN(��b9@����e�*1V�WLj�dʺ���#�f����5����9�L\SVEX�y&$��4����z��������U��Z�Z�������Z�{H�Wkg���~���2��T=y�R��[��X&y��J��I��d�:�
	@�E��hf�*�"���fs�Ld��lgNq��X�AM���d Q�يfqY���I��{5`Nn��GX6�A��$9)
��V���h,<�+����u����"T��,A���3�.���)%�x�ou�|���0��~V׵�N�UV����S��6�⋥st+Y_'B\�ژ7jKCw���H��pΜ˅���y~!�[5#n �������JU�I��6!�_���M��X�V}EӳV0�63�^[�d�*��S�7e�I81*=�0`�QQ'K`��X����aa�Z��Xh�ցri�わ���O��DgwoI��������.����{��-.�iu�� �F�4��,��8�Wu�����2�1J'�v]��M5�y��t�U/�҇���JP����7bz�5/�%q78)��y��y��PJ��!"*�n��$��xlID[��OK��3����rJ9� �Ʒ�ai��I�Ղ}p]��������%�*��bV,�Е/�[r�s�˺O��;N���ے+d+$��5ph��(�I��w�8͜�,n�OP/�ăծ[,�zp�i+N�����A��sp���窘
�h*�ؐ�,TNL�C+�=?']���&��8D=�Ǔ�x+��)��K���ZN���#.0"��S�SՑ��B�4u1�1�1��TJ���q/������$�����U]�U�>�m�_�u9�&�J)�b��)�o>�XM�����P�e�!��;��`ٝ�<�߭Ǯq�����:�/��D	��3�k����x�U�L�>���Bo����8f�o&'�Dr�eJ��[qܢ.&�熭��1�F�ʣA�b�_ǔ9a�Z�Ҽ�]8�O����-�����`SL�AG�%'��[l\aU"�}�闗���j�uR�F?�O�?�1u6��T����P�*�@4����➤E��Z�b#��v��!\��f5����S�ʫ,���������cV����O��Yڑ��U�"42���{�='����B��Y�勣)k�=���e'��ڮD3���B2�(>�Mc���hl��Q�q4?kӮF(^ EK��;�1��d^�<#ch���i<ת�'Ϳ+�Wj	�O4�BYIm=��z�f?oc�E��7����ےm!�����6��%JFX�V -m��m��{��-��[(���t���i�&Ӑ�L��+��KP
�pʢ̦�:D=���\*���Ss*q��i�F֬<�R#4�]����)6�g�塰B�3+�ql��EOP7��Z`D^�_6��������_8M̥�P�M�GoVW5�M�C�>�n�}���A�u
�a,�kx�6I��$*��3�$����'_����K�vi8�gu9�9"���;.O��-��q�G�ϤB)��[<<0B�P�MƊ��T>�l���<M�u��R�yM�-IK D�X����;�R��l'�c+p�*���z��Ꝃ�i�' ��u�s�:�&K���@\aù[�h����̻�T�q6y��sOW���fE]Z=y���ʄ-�h�$o
yZ-�79��P#8_Y��\�}�ui:��^�rj���R���ke%]G9��|�4G�<�[��J����O���W0m��t̝�H�Iɾ�bޔޙ{��#j�Z�8>��.5�↣!�6�"H��#�>�KNh�aƓa7�B��%�bĈ*.$yĒ��e���R%���h�k�B�2�7'��X��/<�JƂy���+�Z,O��b!>�Q�_���8Lp`qho����I�2M��'<B6�K���Q	�iǞ\y�]�T�����뱴�;���#ώ���8�U�:{g���1c�u����,˒e~M~52M	���׻{^��9����;�X�o&�5J��/*���lI��\)�O�� osv��@i�_�n��6�D8���Y�lɶ����Ƚ�l^��ee
��:�n��Jچ����&O�cp����a)�U�������m3�W�T�z�����4���hs��bTͪ�v���܆�u�����]�"%��L ��M{������Yw&͵�
>U&�tD�=t8�-�S�QT+��ɿ�Z�G�[\i-�Sd�D|ȴ~�k����/��:�<ـs'�1TU|`Ŕ���� �
{�Mn�%�|H��9X�2χ�؉ܟ3���h�Ai�;EO\եDz,����i��x���O�F=����T����x�	 qƝppظ���rrt��0�[>=����?�Ͷ�KY�s�FaR��ї#��b--�l>ta����x\�B���蕍s���n�0u�Ȼ*|1��3����2u�6$�2��t����:x�nXI#�qc��U�2ћ9��i?�.p7�%����SUR&;Q�&#Ӛ�EE��4���TY`a�i��U��Yy0�VJ���R6�{��e�ðm�5Zo��k����¢�le֮���J�V�Q@6(�;'�Rm��#�7���qxB\
B/��9�<��d1Eۑ+��Ќiqs_6p�g��3�ى�t�\砌��˻M�+E��TX?M�sC͍^�Bޘ���?:87Ьc�����G��
+�+;�	�����Y����؞u.s�[�����`�n�<��P���8٣3�t�|���}N]&�<ʽ����O�D�x�y����i�	⟢h��s�%�}_�0��4�<���8���{����tf]���� p  ����^0M@i�{)�R1Rǆ�-�l=��&��7��'yݷZ��l8���o�󪹍��@69W:�H�n�+��>Nr���Z�E*v;�1�g�C��ۨ����Q��oV�=�y���� ��?�&�d��r����4t
O�.�(���Бg��:U���m���x��z9�����z\�:I�������D��z%�9�k�3,�FS��֞�RS�q����<�P|��YT�J;��ٿ�����r��-�U����xN^T_���["D�Z;-DQE_xdޣn?F�_S7���P�=Q�
}k�^�U���E��P�ںo�A�;	98��@JCa,�I6��)�b�2�Ku>>=��H='%ij�+Cj��k�r|&,�5N�]�z͙�m!�00v+�	k���܉�e!0�5�JFA�g������# �m�GE�Maey��[A���p�,)���w�Q��źeW\������z�5��EL��F����^��.�qs�X�.V��U�b�X�.V��U�b�X�.V��U�b�X�.V��U�b�X�.V��?V�".IZ�rϤ����a��$j����)�hM��ȯoD���S��Bq*�W1����չO�F�:wcu����nīs7��܍�Y�M�ʈWge���X���_yVF�:+��ᬌxuV�ꬌ�Y��2��2��a�%F$�F}����v�V8:!����QR�����N�Y���aR��kK�k����T4k��-}w�nK˩?v/��r�0[�e[a�I��8^�O��K)�����?$�vg����	&���dڛθ�-��D�n�\߯|�h �l��LO8��~��pxу�?ѯ��䎖�&��:���)��Ϝ�6U�K2Z����H��1�jП�iU���ehs���8L�g]���Gĳ��$���1A�O�D�/��˶���t<�3ޢ�E���J�d�A�/S*H"fUz��s^�+ԖCQ`�n�3��nֲ�t��
iGP:E��p��FB�LHB/�tC�훙(`��B3g:����e<�YT%h��R׺ހ�؉z���HZAZ"��u���������{�?����4�!���{����2+x�*e������䵜�����~j-pk�&P��;�Ype��_�J���������^���=pE�5��m�dz2y�fܾ�g���ji&�v�ms��A��7�f����N���fԌ���ZR�#�Z��)�6j�z��?���ɑ�����OWՠ�
5MV� ��/�M�T*�k����	M�%��x�:�G5�Fi��ݯ�m�:��������u��-gQ��x�ؒ�ŝqr�X���ڷ�6~�AbKto}����fb���*�,C����K�Z����Ę��3����-� {��p<SEulr@gф#J�!A4�>U:�󘑈{��b�c=,��z�:�!�W�+-��,��KA���:�A�`,�Y] �����X�ezv�ǩ�Ȫ�-t��gK�w�QxIH��H�C�p����N¾F׆�����ϙ��oz�K؊�\��7�&��q�����ow�o$�ř$*Q��s����(A�s��a�S�_�'%s�|\??��Ϗ���w��vz8z���q-��7�j�?Lv�����p���}��z;��w�w��w�Mw�m�z��䝵zc�VpΣ�S����|�P7YFůMXN7��F>����D��W����-�"�G���A�M�Vy܋a��EeCg��rU�6��>
!��IY��a�@�1���4�����큭	fh��[v�J��<����(ɠݒ�A�;�y�rf=�(�/���^�M��ItJ�������syǮ	�A�"T%�R�5�R� *�f#�Oa`�e�>׭i �3���n/}'��M<ق�8g����&��䶎�!r�
k�\�����v�P?i�m�u�ȍ���t^���ǣ{ƾ�m,&��}N��+W[mr j˔;׈g��^$�;�2�֓:�m/u�ʤ����N��A��d��2#�/,�n.]��yk���e�Xݜ��P?�{U�I�g��*�R,�/�d�K�eV蔊E���)��R@��*�9�N�Jl�z�0s��؎Y�h�	#�\ȼ�P�03�|Ƭrꩍo��^�%VL�����R0����:�]/~9v~�@� 6t�%�X�ɐ�]~�A_�5e�Ό�B�+�0
�2�C��є��^��a:��'*6�k�x�n����z�5[(��owZ\���<[��?�S�N��=���%�1��[Au�Q�R��V̮̏�7��9{*w7�ץ��O̎ז]���Q:�o�#��kb�y�4JV�RT���z�ۭ�*u���JE]���RQW���T�U*�*u���JE]���RQW���T�����I���Nи�!	M��j�M<v�4�v���N�h�>����DrK�P�g�o9^�l��Xu�]�A~�hu-G�1åyz�rr"`�Xo�Ph5�ޫX����K�oD͘{�&�Β�WO�������mfdtR�����z!�r4	�#e;�LW�XK���Ju������x��B� ��q��Nyaފ�Ԩd'�]��t׆��H*.]r�����p)9�ѕ;�����%]�6U���!����c� �W���I��	���K�V{�&Ip��ե��e�Cҽ��w�'��l� ��LN�1��3�9)=�Y��n��m|������=8��;"y�S^��'�*�Q#�L�e �F�����ݾ"9,��xgHx#��u��a>e������!�&�v��$�:���t�S��wn	���N��,E�\�;�:'v��sr|�21Ʋ��%Ar��ui5@��lo�F���t���C����`c��t2-J���Е�N���:=����0�=�%�hP�O���5%��D�83�E�$��T"3���e�4����U��'0�CH��2m��H"	?�Ӳ�#�cK��#V�n���)����,
�J�ʦ�y�R	�i�xX��vy��Tqz������lDv�����W�3�L������(=`<��a��;��>I��)Fd�j����z҉j��cH7����gM��s&O��4������:������VUxzUx���5˛l�fU���u|OW���,���R��MgUTX]T�,|���I��9�(���?�������OD���         @   x�̹ 1C��c�zq�u��0 3GH�nL,i�(�pD�
�igy>��l��l=y�)��            x�3�� .C3F��� O�R      !      x������ � �      #   "   x�3���O�,�(��K/.�/J�+������ }L]      %      x�ݽ[��8����)
���a�N*ߺ桞f1؞}@���#�T\r""k�k��~��P+��E/f�)=YS]I������H�F�������_��>1����P����Y��ˇ�_>��?�����˟����.�����?���߾^���������/�|\*��������In_m?M?>�����/�_�6�����q��������봕�����ޯ���Ӿ�����o?���Z)M�]���y�=�2J�ڲ��㧵�J����e����ǋ�������%��l r�u_������/����/��oof�e�ZM�B�w
�( �C���~�r�:=��o/gꀵ���Ք��&f�k�R��`����H7�Ã����,��Û8�$��������y��r�D����/���$��F���O��������@3|a1����k��U�.��F^�u,�B͏�ة%��z֡���%\V�� ִ�����h�e�Zk"X/����0�!Y�W���9m��0��w�%%��e"�2����(�����]`b�*>G�f�W��Ҹ���D￵m���d�U,���������Իh!�)��D7�z��C���h	1'��7���q�/�E����5�?,��Z�|�e�b����20�*z���S-�X�!��x��C���ei��e�]�B��������[������K�~VY����!���HaԨjԆ�A���}z�������������K���W���v�
u�1F�1��ѯŰ`���P�,c,����˒H��a�6y�hb��Q�Z�Qv9�-V�.,���X<,�f����`:G༱Y�&����o�^gF/W;G\c�W�E�Һ~�V�Dt2�*��H#�Ò��Իx�!�^�Տa���g�	�&�~F���.��u��/H�¨Y�W֘���������\���3��L���Vt�(i�eR�#�)����ٔ�y�	�U��烻)׈YY��ؠ��%��3�)˲T@��-SF��j����ޅ�;؁��Г���гo�a��롷[�_�Uk:}IC/h�=�_c������=�$�z�ޯ3���C�c�M=d�5#v�F�B=�
H��!��1�mL�a�E��hx�����c��������=�X^���������t�ۓx�_��Bm@�U;.Վ�j�G�˄]�7�'}�e�C,S]��q t��8�QkS@�9ІXJɡ�N�u!�PY ��Ͳ�sG�<�*�Y�K�qH��!����N�^p�h�Ձh��T�N Y�!"��?�*?<�����������������[��cu�udl���}��ZG9\���T�����~���Ɉ�2��k����D����עQ��@�yZ"�Xo	obN�Eɱ́i�4���Y
�ҏք�b�p$Մ���|+�T�(���=i�P���II������U?����AOX�U91*(B���MX�Y!21:D��":�VoY�J�&�P�s	��o�?唄�'�ڀ��G�WJ�O� �l�qH攖;/͸շ�M҃�ڛ�A1e�b��?�Td�m���8l�e`^�ױt�%o���:���ί�Tq��9,s�Y��.O�e���=����y���H�9HpAm�X�c�c�F��E"6wT�Q*;苶w���V:*Y֍%��LɁ6�tT��X�d��r�-k�����0�pT�t�2n��!��F�3�tTu�jE��q���M)�~�������2m�:�I��Z�K��R��W1N�v_Ɛ�%�Y�.���\���k��*wq�Wa���@�\�f٫k�B%O��Y^c��[�,��h��;���u���R-_9y����!6�Q��?8i̓Q�OZrR.���+�f|�rҵ*��С�V�L���*�$�_�K7o�2 �*8		!�iN�m�x�:NB�X�}C�0i��&}i LZBe���! <���.y��jfen�~�ꆅ�kUI,*�2�:�ipV各TXs��T� ��iVIP��=��i9�u��DDL&�z�\~x��(�kR��Pl�V�pfҷ�P�*�����!"f��(�#ѕI,��/L�QYk��<�����s�fzkk��=�����KAx�6(�f9���b����m�g��HꇚG�@�߄C����Xl��6i�����.|A�`�Y;8{���:���@V����n�}���x������=�3vpR�d7���!v����ٷӟKRB�P�N�����Y�!ؑG� qOZH�P'��2�f��ÉY�.��ſ	���W�G�$��*wٍWA��!]$a�f٫�o#,1�l!	ˁ�,Yu�E�t:p���B��jc�am���{+�v�[p����0�YX>j�kd�n*.3�����ׯ�����C[3+�.��x1�t�C7G'V�a>�r�C�i'�bEɱ-�(^���r`4��`V�𙜔H�v8�&Z���a;&�>}���yz^�=k�ҵ���4�G��01�������Y��+�REt��'V�]>J�ZH2t%)V�aI�j.}�R�&9�e �+�wb'�J��0�hJ#��R�h�c�n�p]�㞴Z��׳�w��4�,�Y�-�f��Ȑ��b����*[�cTX��"�I�f�ˀ4+\�c��4�����oY�vǈ"�e���o�GJ�8�vk���7��'�y��9�I+N�ί�L�4M�F�L���8�Yx����IX�U'1*p�Fv�$,Ҭ��!uw;r�oY�I�(�hg{��B?�%wv�1ڀ��"�ɾ�?89�g#,��[�>�igv�,�f�.J۔��b&:�˲��clʸ�߸���@�?ʨ��L���8���ڕ�� 63Ʊu�Mq�`H�J�Sa�反��ڷxv��GMh�m�$�f��_$�w�a�&:�#7ucs,�@��+g�� �֮�X-��x(<[��B^bu1�� 3�F���/߼ 5����"�^��\Fҩ!4B�k�$�-��}��NNШ��k��t�%,ʨ��kC_$F�U!Q�J�Ȯ��mX�F\j5�>�i_h�f�B�Z���k���E\$���_C�g�m�BEn� ���������7`"� ʨ��}��	pVeLD}�����h�b(�)s�)C��،�p�ɘ, �E�o�&*�p��i�FL|�z2�n�$�ފ	1�aͺnXc$@A�[M����Ϊ��ȭjv�F�a1Q?7�Ƣ߾�65�c���<4xq�V���>S���=ka�Y�ٻ�ݘ�]>%�~�VԺ����.�x-��u�i$V�a63��kxQrl���������ė���܆�`�OJ#���yM#č�ð�1�Y;��z���~�� ��Ș])F��?���8X-�v��y(Y����@cw=�#V����~3��(����)�.�S�U�Ծ[���~�5��'����<�÷`���ߠ�ј]>G�~ſ����.��x-41�ҁ�@p4�q8���$J�mH��p7�α���4��-�R�x)�Ēa���݄����^��Z����q��	)C|'�t�L����Z`�J'�-����EX1І�3R�B�A]���(9�5SR�4�d�4�H?��	�POK��p
���R��E�� 4�7z;"/���|��A���Nlh7�þ,ʨh�uz��uމ� gU�o�J6�ɐ�ˬ��ڰx��o�=%����ɸ,�td�(��Ł��6��X��<1�q������u�l��r�9�F�b�v��K�iW��B�X���%j�]t>ڃmX<�Dm����Eɱ��_�Έ���D~+��!9a�o)�y��;�k����������-���z��j.���ϐ�ӷ,w~�)7w/�'�޲��:DݟL7/(,I�i�'u<ȸН}��4y�u�P�@��p�xKCV\ʧ�Y�8��?X+��M�d��XC�d%�O��[��3k���z    �VoY�Zd��9;N�$��EM٨֙��4y�u��t��C��o�,s=�bmX+��:��_6�����Wo�nO�������|���&�4���ʥ�ף�7A�/
��*��x�mӎ3V�H�lz��=����ޔx�b�E��ͤ�Kz�-�g�2xR3������V��0�Gi?i��5T�K;��lՀ�kU�IB���{q2�Ϊ���
��O�ɴ
H�
L���n9v�dZ�e&AQ22��Z:��P���1�³ɵ|Ť�����|��?1N?�ýe�׻�W�*m�2>>���;�!/w���B��8�C|XfdH�K�]~Y�]i=����nM���*�;�^��*h�/���v�z�^Ě��ƈ|)�{�w����^�&9�`4/6�24�l发�F �$"c����b���d��F� ��U9�_z�z��XpV�$�T`QݽX�fL���=�����x�:�B�h�
n}G'*IN_������o�G�	:b4���uT�Q_Sw+&��kU� a�<á�VgU㨀~	�sG�)�fU~
����:��i9�~��(�t&�XCy d *6�질\2g_.��Gw�c��)��?k��ǖ��kx��OvX�+�ӯ�TB�/��֮��8-�z�^�a!=qr�e��=h/J�m9Cq�ȌL �V�Y�Q��4盆�l��盯���g�I*�;�j��:���#izd���S���Ց�z���H�mXIR`��H��YxMrl�A
8��͜��Z�/�)���i�`�3�o��������ixH�P�/,g�V�8<z�FO\���e֑h�����.��Ҋ�^��5h��aV�az�A��o������>�n�O2��2��\޷��D�B��t7Ct@-3��?�69�C�J6#�0�>ߧE��A!�x�ok�m�.HKu4(DZ���׃v��#�߰E)��=��nŌ���*�|�� �}��7�)�CiG@�Y:���?��;%:�	?i����ߨ��yP3c�*�]�А����vW�*��wW #�����H���HN�pbhZ�e��
$�$<�3�0���%��}m�h�
��N�x���_��|������1�o���Ĵ�^n�~nɫ���IM�{�*�l��cM]�\/ӑsBW�7��������L�5��q�Y���W7���j�K��BH���g���[@�������
ޥ��?���Wo3OlK��ZoY��j���i@2��mY��r\���=��RZ`�궬�ZX�(p���h��+�ɣN��/J�m����H�o�Q�\�Ж�Q#�6�e��� U�u�Jߓ-j�ڕ#�_��f�w��"��L�u�1δOC��0�z�C7���{��.Rt����\��>K��(t�&�N�t�-�`�h�<r�e�D#�c�`�!4����"�)Z�Wj��S�F�t�׋p���x�&�逫T��׋p��p�d��C��*�ga��6C�aR��t�51�ɞh��-��ձ� �X0�r+,TE�����SH�h�<��Oٝ�v���{��4ZO����!�V�w����h�J���fh'�����-^qE����4O����+����&��)u���F��w�bY? �I��s�RE�ױE�M������m����R��<��!�u�K��~�hK*�.7�p
�ʜ/�=�/�h�[SrU�YeN�3TX�|���h�f�3�!$K2��-޲`��#
"��B�V.�7o���������T�^^�!�QT>ܺ����U�wy�S�lhVK�S)'C���: �Jp��aMo�/��֮��H-��0[��Rhb+�b���6�bd�c3�O���56�x)pS�P��%����B=4��.&.�H����<|o||D4=�(Ewx=|���)O�=�����| �c��#LJ8��"�/�M�=O����V�� ����^�W^�#��*�8��*k��T��P�J}�_����ѳ�_"Q�H�|ꅻ�~0bSNe��Bi�����)͚|�C�h�6y�$�TGp�-��P��
ʘ�)�v78�NLd{��/A��U���3n�oŏ�{�n���)�da���5c��&�\��Kz�2(�r�s�ﰉ��6hP��u��j�mآl7�/\�Z���t�QF�{���������(WU#������N�9l��p�����I�9{Zl����寘zR�|.���q�{|�{����ÕM�(Dؼ���k�����n�=oY��y�2%Z	&ҵI�y䲔*���C���&Nf��4��K6�?�)�ut�a��p��Z���Jc���A��Nl\��W�Ng��͛�	Lu3�M��B��m�\#f����R���ft�/Y�U|�7ڏ�V��N@�O\�.���|�^
���`��\��缉ۅWE�M��U�^�ӣ�Vl�xo�
8���TXf��ߙ�H�"���t]W 9�E�F�hyT�ʱ���q��HirR���=��<��(1O�QR>z�� )�.��*�����Ȼ%!pV���U��=7щ��H�bJ�BHJ�i����[�PŸ�q%�-��TёieL��:x]�V��<���"$��d�E�̝߭�I&����u�v?��6hP�� u{�z�އ����-����E�nw�g�eT�� ����Ø��v��?M(��<� ;𬌖?��Ӯ7{�Я�q���~g��RS j4o���+�D'#7:8�R
�ڷq�wPw��<^J��*�9����a��n���M1����~ �<��x2I�0��J<13���(�Y�s+i�O[_��O�H�xJ*�k�O�Frpo�9OI�
�h�'@/��<ON�Cqf�?_���)�rA��Z`V�L_?=���p���#vJ�7a�K��K��8�FsD4Fܶ�F�.�V���Z�/L�q�r�I�����N�})xr4���N������_#��v@���l(�ng>�����5<_����J��E�vL��J��n��P��M���)�Ҭ��X%,ѝ]�(%�vEPEj�%z_ �W$ô�H]���w���F?�ɺ�����G�x`!�?����)ԓt����0�#5��d&��{=���,Ҵ�B�a��\�!:̥{�p���C�g��g�p�w�?�s�I	�0_rb�g���n��@6�\���?�+I�'L����^��}�.$c� `̍^8��;.$�hU��E���O����*��@$�n��N�H��D���@�5"�oY��I��p��B��@l��^����Z�8�/�3���XA�����>suxx�`6�>ƻ̐��s�TW�/�〃�k�����%3�to�!��[�ϠA�����:'��۾=>��<8o;�������1k��-|� ���n�֘Y	5���������jK�+_;�� !�f��9Xκ��PJ`���s��@3�"�U�9XM(zymc(o���nD��qv冷�pJ���G��Eˁݯ�^�0�Y18�����		�4+'�(�p��NH	�]98�D*RcnB�d�Vqs�`Ӂ���сifRD����Z���>�2dx���F�3�x�W:3K�2�E����0�\ކ�~�V������+��t���K�P�%�{B`���¥1���ű�&?�����ޅ���/�ݓH�Y}EMx���]I�uMߪ�^�+�����ɫt���x���Dt�	�1�~	���R��}�{+�s�I!��3R}L�k�,��z��?,e	D^��bnH�G�DQ��6J�� {� G�� KBK�^J�!p$�a��`A^��of�t���K��Yrb�o��=G��!�3�~����X��p�A^�H��~	t3�����(j�-���|�(��	^���l�B_eF���{������B�+ItǄE`����vI!Dk���'M�aR�W
ޤ �	6�6��KÙ��yeY�Wk��+�>�������ǧ�����{��xsQ�=*��K��V�T�X+{[�:��14�r-ީ����o    �l!�fX��4a<a�J`�� ,Ђ��قd���@�L� N�m�<�w7f���8]Ⱥ?��C���xД�|���2�td�U��Q�	�2%@UP2-�v��!2%Ϊ��@!�=��)-І�d~D��9�}�	�:Iţ.0�c���ʗ��޾g������p�b�C��׋������밵��0�z����6�ת��B����e[�^(O&;o����9¤xk�X���mS������]u"�z���,�C��V,%��JXU�B�K_��}�i*'	�.i���p7�\�&��x� ,M�q> 3��6�ڼ�%��6y�(�TG1��Y���"k�]At3���з�������]p���L�k��:W�,3JQ���ϯU��+�m0���<�����}�����&˸�(i� �D�LK<#�ɳ��3Ja�^���(��Z<�����P4���Cq,�%���K^CWV��?�<���X|w|�x㈍�4���"�	c4��86���#��@�Um;�ʽͰ��QJ	�]����n:f��V$ôz��aW`�5�F�ݠ��2(}@p�Pb�G��!�s$�lD<j��GL��"��3Uhl�f���{�6�B �*����쑊![	�]6�xIA�H�$ô���0J0��F��%MR���&'̆6����tӆ]����(m�ج;k_�����4�n%�2�r��g�z��o B�,�*g-F�5
=yoHCg-�M�u����d�����F�T;k1J�F�;k�����:���������E����?��u )3����
}3���5���wWfJ�2�Y�Ck}Z�hT�Uպ�	T���Z�kW��z߹Q	(�ּP���P��#b�����T���8����Q�و봌Dh:�f|��ae�>�l�H�
JBBhw��3p4%֮��w��7��M)�aZ	LH�`���n��� ���H:�����7͑��� ��������������}�/4�]���>˦�Kp�o��Q��˸}ܸ}��t~��q�� �]rﾱ�
��Q(�RD�� �9�Z]a�P�*3�CYCU�k,P�t�ԝ}4�j4��I��S�Ȋ�����r��G��A�-�� uV������~`p���� ģ�K�5�cRR6�K$ahV�D�r۬{���*K�4�X"����Yai%�v5kH>����k��"��k0ۙ�]#�m�=+:���n
�l�5�{I�gm�G�}+|���Ʈrb��ŠY�o8tx�o��[I	�4��@�T�s�(�B`��|+��\q�#:�H�i�o:�k�L�`�#���"~��N8�dz)pS���Q�xԔ�k���vWJj9���Up<��{�`�-Ҭ����]e����&���9[��JnD	7�6�>i�^+�⦯�M�t���M�O_~~Z߿�=8������[���^� ���&3H��,�/����1�)3�>���3]"l}����2a�@db벵w�D�U���˴ʽS�u��mjm�.�Y��{���1�\�@(�I��S��������;��*����Ōb�M�{/�����~�^�do�Hwy}�C^B���C�a}�|Ik��J$]Sn%һ���5���v�+QU*���y;i[��`|+"�;����N�Ǉ,��[� �Ց�W���2�?��<}�����ӯ߿=m!Lزr��V����Զ�P���=��3�>v��?���'����g�},�s��}n���w4@�7�����n)�����2G�f$������م��5"��?1������;�e��19��i��_L�<Ss���������̅�F�H֥�
+g�)�R>)�?U�w�^�ju����"Uٲ��p�����5��Ӌ����g��6���\�Hd�^��5YGt��Dib��s���z�:���.��D�6������.��T3>LroT�g-������)S���*v��,_!�!5u�8����
ºA�ϓ�mX�E�V�Vr#ɾ}!�@~W0�����A=2��x��|��A��+|P�kVH P��e�v"SB �j0	Elh7]OP����U�
pbD%�W;�2�H�i-2���a��澍���e�������)C����/�����xR�ؓ2�q;�.���Ȗ鶙8�N�;6;_д��n���hܝ�(Q2LK��e�fp�	�*9�ŌE�"bO�,J�L��"5Rn��������x�I\/��V�����7�z!��j���=�qs��7Fϒ]�0�y�'hZI_�j�dςoZ��J�B�0M�	 �*9����t�6�ȿ|��d�7�/��rǧ��m��zF��WAC}[��c�%�{uK�������m����ܦ�����y%�v��o��
+7S
�g����iX�ju����E����I|�h�iX k}����E�*Jɼ���ۤ�{�eHp�e�"��j%4����3�{��]�C��Mlur�xģ��q���.Wv_�3p�(�U8�5�5�}��s<-Ҭ�9	��{�^?�xZ	�]�s�BH��L��V$ô�9�Xܽv�s�m���hȐ>���:h�7|=����
��G7�c����
u��e`soV�M��oI�)ai!�fU�N����͔X�:l���y�u�?6S�d�VcJ&AK��6�.��}}@lj��Z� �3⛓?�F>(Gs3�
m��^ަ�޴zSp�i���yS1%J�i��"��>��(Qrl���P7I�i�E��i�dOrk��j���M4����Q��=E�&l-����h��Pi��w��/v2t�耼�6hZ�������r(Q2L��e���*9���M�"����:�7�N�y�?(7]o}�m�75�ꅈ����ɬ�9Y�\�4Nc�'v�Rf��\�{�
Gp�vp�>X�%@U� �*��X���qpV5� ���Ӡ	h�6�t@��%��}�|O*�.�9�����T��%�s{�ꎺK�Ñ�l�B)n��kVH�9�5'!2%Ҭ����%���2�֮
��{}MOv*.S�d��"����6�sʁ�D�pP�t��O���j�?��2��m6�=n��_���ƤQJS�u�A���<�7u8G�u5�%ôr5�S)r�%�(Qrlk������?{1�V'Ӽ�b޾r��9�y���kk�U��#���(`+����2��o����kF1�i�ܹa�_״�8�Çt�nS��E�0��/$ʚB�<��Uɱ��/���=t}��d�7�/�� r�ϡ��V��Kt���^ }�Yr��A_��2�0�����7��r���XA�j��IP��w��D�0��/E �Kmz�7�J�m=}��q���7�N�y�Ba�9^�E�}[=��?U���Q/����^��m��c�e��{ܜ�k^��z�������i%y��!Z{yӢd�V�L�C	�*�%oZ��Z�B�H�~Y� oZ�L��P�\n[��k�#���^ y)%���7��b���N���;$��u�N��s�����UPAĉY!R�d�V�e����ٴ*9���t�cN�"u2���H�1nyY!�m�cdr�-�L_�p��7��\oj$'����A�N���~Ϥ�޴���Z�'QΣoJ��j�n����F��c[O_`M��$���7�N�y����V��	��g}�@�2�;���w��ۧ���a���o�~����ό��/���?��͓����,</4n�4�~Ը|�z�_���vr΄�YI\Q!��y�D���&&ZQ������bG�F�
枣n�{����5�G�F���=��4�NCe�T�35җ�C�PΝ�.�w�S���G�ʿ0�I"������Xƽ��<ݿ}�=�'^+d?o���Ǹּ,��2�+yw��� ��.'�}�O81�����'�����(к0�&�@
�e\��@K��g�t���W�+�,w��YXDZJG!�gO��8^�h���񓠽�6&����"�Ÿޏrڰȕ�(�Jǎ����#�S�d�V:v Q���3C�S����:v ]�:�\tZ�L��    H#I��P�}[}�β�шP�^p�ev��}�\joj$����;�W��NZ�E�L��M���)7Cg��D�0��/�'�k�z�7�J�m=}�`>�9�Cߔ:��M�\��ϣﾭ>}0Y�z���:|�e-���������W��%<ŭx������q�~���̍�ݢ������.������"G��

i�'�r�s� ;G��J�'�@�Ya�9rUR��<�x~v�T�}������'�t�T��k�Fxϻq�Gc���R7��M:�ְ�"��+hDx��r�3��Ȕ]A#§eb����/G��Z>-_�:k���WQ%�VM��� ~�����Z4�:���4tS�V��'z�r�<��/�>o������K�7��w&2b[��ȡ����"uɱ��O�tY�l�q	)L�q�~"$�B�Ӧ�H�r�[�'B2���[#��
����f ��Y�ʷw��l��G>n�Ѷkz*#���]��YvM+=��U17/lW�vZ��J�6$
cn�����*9��mHN�O͔V'Ӽ�G�H����x�ݶ�SbF8����=�&��h^�ģ��\]���}�{6��&/3gj�'���J ��1>�䴀@��J���Cz�ι���d�R�Fb�>-	�k� ĠL�U)+��Z&�Ƴ�)�}�`ېcb+�h=��"����{И��~U�z�2��׶�����X��vo�tɱ��10��伣��.Y�h������$�ʵoC�L����'���-Ü_h�x���k�Fc� �э� W��m'��3�%�W�;؞���N 0��G���L�4�	���ϣ;�stʯ��V ��PdϨ3wSrU�p'0-��φ�jw(�z�����0⭈�o��.8��UW���|�X)n�v��"��+h�x����p��L�4B<�j!�|§dʯ��Ͼ �{Zs�*��!�_!ѹ��T���ל��;�F�vp��[���Sy�n�8����=�������Dlk�=�}�<�K�mm��˚��;���dW�z��F�r� �ɵo����t��֏��ˬ��5C=t�&��|�o�dިe��_�i��_�/뀶����(�RƆ+��yM�X�����rO���*G���D#I��Pj��+3U���D.�T]3'vS���ѶM�9S+,pߏS%ɩR]
����#���,<�����_��I/ ��{d�#5����NUx@���.0���pmJ��T)]rlk�.Lvjv��0Y��+H��R��4'e�J	�k�b�����=�i���J�!�%���J��=[���|����߿>=���������_�{�2������m��t]�>=>�Ǜ�k��?��:n�121.�1.�1n�1n�1R}�l�2���Z� G+��8lV�Y6ԪVV������ĭ>�+�Z�
�Aÿ^8��s�M'���ה344�͒a����s{��\�ǿއ�m��C�
~oÆ��������o3f8(~�������o�(�yb�v��m��z {�sMDj����Ю��F�J;��	�9	B��Z&(�uQx�p�����C
JJu�s.T��W!�:��������b��r���A�ő���@��=���j-����[��ȵ�uq(ݕu��;�@J��Z�ȉ;�i]����C�2¸��'eH	�k��?ɤ�\L����������6p�ނ��lk�Fc/��M���s����x�!j������/��_\�ZCwi)M�y�@i]rlki��F��73R�,�j��jrV�.�>��-h�d�ŏ�6���ģ���4�*L�|���Ow'Hz�}ރ�b4׻����ͥ�޶����X��{�8�K�m=���U�?R�,�4�k����J�k��`|on*�Hk}/S(D|����`z�|ñ���ML~����X/����U�<������XC������8-K�m-�!Y�:�S��%˸Ɛ2ܸ0O�qZ�\�0�d:��s`���!/?Y�����B;�[�c烈7A [���06�ÕY!.B��Flkal�d�����qZ��ZC���M�'��q�&˸ǐ4R���i�r�[��ɸ�Y8v[�;�m*9WB3p����b+�"D؇����矟��s�喗Gy��8���vè�v��y�i,f#}�O�u�@�	�� c��i� ����F�y����̕@��QϺ��<�v9x�UÒ�zH��?ʹ,�����( �R����^c@�-���o�W�zgZ�66��F�,�7���.�Г�Wy�3�cj��'U����ԙ�2t�T����it�����t�n)m�*�'�e�J�̝[7޴��M�-��|p/2	�d5=��9#Cxa�xԑAP�����)�ݟC��G��R�eȪ
_f�V�8i1��t�#aj���>�8�
���6�EF(��C�@)��b�,��H�i�
t��'��h/J8�Fߡk���(}@^H�콕o���/�������OA*`�5C�K�#�̚�4L%lW
�]�R��<q�V+j�b�����Cpw2��(9�5��H���f��J?_� ��������6��lcY�Ƿ��QP��=���ȯB���^p��Fl���x�cVӺ�����QR˷��=�Ha��l�)&�y�e!ʵo�1����)&���(6D�6揚�;A*t1�V�M�hbc=�[������ث�������o��u�gņtɱ�ߘ���0���)a��l����R�l�ʵo�1��ɸ��gn��[�o�KT�_3������[#_?M_o�����͖ׯ���B��N��J����g�$"�U��
�޲x��RD�!�m�]��k��(u= ��4����*_iG�a"lx���o0�$<�a��!@����1ΐ��Q98���'&���n�Hj������2���A��mX@�'�lp��w��.��>xA�V�`��/��ü��~��M�˴fB��#B��k�D�g���l�.�4.�4��z����H wY]��c�&q<�\1����U�cM]y<��q�Ub�Y�?�VȪ�2�RZb����\R���֗?���*��=�Tno�k�"�m����i��ȵ|��`���ͷ�ן��/��^��1#��D�Z&/�!)����'E�+����;'�!B��ʖ��9��AU���T�$)TP0���7б����L����(�a�~N I�Ƨ2���56t�ţx[Qp<x$E�/�i�bG��F*v�s�H���H��"�����U��4��+j5Ҡ��˅L�+���H�RP"��#��4�*k9��~·C�%#M��Hc����Pgx����F��5�S�m�֯���-��N�v�y�ddW�ҷ��[?k��^�K�p�մt��q�
w�-�\i=M�g�vB��ӧ;Β
VT��]�]�c���郿j�D�<'��/��l�o�7C���Cp����O_����0�ܤ�s<	�~ظ~���<�� M$IDquU#NR��Ē�a�G�A+����e��乚�#R����ՍPe�.�G��0r3eTY=r��+�����;Dz��B��M9�����mD�U�w}a�����^����/��YV����Z�����^[?�
VT�rᄻ�us�U�XSW�E�rDF���@�jVV�zA��TR��.�����ו<oa��h0I�V�E5X�����������#L���������F{�[ŧ�N�CT��Q��z`����VW�r�B�*�8 R����gheכL:o95ѷI��G8<�1��\�_�h7(b3c�p�"�P�ʷ1��\}Ђ������/�ņIh#�ȅ�eu5� b��������Vǚ��::rJ�YK�l!�*k�/Ĭ��B�?�Y
Z[_s7!jA����퍿�5�Q(�a�`xE&_dJ}��y���y=����缎�k��˕��sRlծ��j�az&�hg)�zb��Oa�=R]�/I�Tr���@��&S��f�(�o�fy�"B�ny'
d�2�!rٯ��kL7�h��Z7R'��	o���ۼ_�<P_��O��=�����9��k�o�)y�&���~��,�/�]V���B�|Z)�*k��    BI��6� 7Bʺښ��Pb*I�نд���.+�����RwU�?!WՐ����
]湕oÕB&ߞ���w��O˧������d9����^t�O��$<�~�߈������$�PD%��9��+����ɧ�+��NZĚ�Z5�Ϙ�Y+����+��*o��UG]���Q�@�g_������'�����"WN���r��-(�� �Q���������=N�0rVV�tx�	��;?:}���Z_c���w#|�G�P���^�2���:Z�m�P�.�mz���y��ߗ��輗���g�VX��}V"c C��t?�L|�o�h�l+5�jk���R�+����@9+�k���TZ"�]e�Z_c�~��֍�,����O��ixʴ0mCy߶�m �dH8����D�&/w����ZS#��5��[Q�q�E�8�NJB�'_qEM&H>f\��������v$�����<�*k>�@j*2��@���:����k����m�y}x	�>��p��}��?^����ĸ�xٍ�߭h^BE�22:.�2.�2.�2>>e���~7WuM�8�ԓ7̠t������^/\i=yL�p��D`[��R�]qE��K�z����M��5u�,�������%���*��I�q%WcpX�<Q��oÊ	���k��6VV��8�'3OW���bǂT�RK���9ІX�ɱ��OOi���o��v�"�'o����%�8�E�hׇ��Vv��O�)��V�uغ����o�[m��2u���1[����~�\�B�ȴaX�V	��/l�'�5-ڰ���̐�wS����[֡dM��8���i]����
���*;�3���h�u����o�Z���3AO����V>;ۙ���)!+���Om:mMɁ6���h�nDF�ikJ�e��5��D$2)v���t�2n0mf&nB�i뾝[��������V�CǗ�򍭑�������O�ȼ[i�y���Y���q҂�IOTU�tjk�ݹW&��	����"Ԭ����'J�5�l7u���յ�E	�^�vn
�Y�kl�7�׶J��7V�^Q��K��*5��K��m �-M/�S��wB_r�̷�&�t��C�qݞ'"���n�bϽNP�,�]MLZ&Il�����YW�Zb20Kb�_��*A��+�ߔD(e��l����^V-����sda>��>��Q�뷟����[��ǣ���j�Φ�Z���Z�ߒ^�I��^�C��x�L�N���ŀ���)�(�>��S���cLdԨ����]A�'�H&9$s�7q�URG�{�H2��Ny���y>&=gRC �K�i�,�V�!]%Q���������a��릅�R��V��KYU� �{�S��䴼=�A�
�h�z�X�8�'����&�G�u8�w�A�
�i�~�ϒ�*�{m��Rp"(n �	�ڲh��vѱ쥉hA���yO�(���4��=cO�5�ړe@,���ɦ�@V��Br�yO�ړM끷�ۓ�½\��ħ)]����d���NwF��};��O0��Q'pO��p��Z�`��aB�TH�ac��uCZ)j���f��5�b��S��6DkZ�aZ!5���I�l�ִx�:�B���.��9�dW�RG�dYC��m���)���	wQ!o�V��U���VH��`F-�DYZ�j�^bH&�CFf/�<ss�ALVS�q\����+����­���CW+WZO�3���n*����v|��Q��H����?t�e
�:@y�����}-�@�1�ӊ���G����W�tp��4*u�_�UR�\0u��0IM��M�V�5̔�XSW��S��-�!yY!�*�ʤT� �->������G��tb���e��ӕ	B�#VsxxR���[�6<�h}b�V+P�h��ё��8lnv�]�.��E�n�k/�7�B:l�=�-��F��3Cl�M�B��#L�6:��Nٍ�k
ଊw-�?���`�B�rۓh3Ά2
o���uY�S˿ 4�����~�8�I�o�#w�gW�Ɨ�!�܍�3|9�
�i��A	� Z�2��T���F��v�E����
VT�Η��Q9�d�/'Ѕ�d-���@"�!�[�c ����ß�3`J�V�#d��r��V+)卧����ӋdHF��y1=�-r���z�s��2���l�"��ԍ��7�� gUBH��p�f��6h�e~ �!܏��jd�b�)~��zΈh�6Y�д֚��Fcf���v�,�|Ȩ4��Φ�̈́��4�,�D�������2,\a5�&�ᖡ�t8�Y�\i=�&��$���D(XQU��2FG�-�̖�>�<,����g�J�]�k�6��]��N�Ti;ײo��u.�H��ޢԵ��_JD*K�r��E�k9�sN�/J��2���b�r��k^��|�)	pV5�e�����-�[���N�w	hBn�[G�7�Y\_�������y��'��h�j�t�M�/��Ǖ�l��8񁊛���ʸ*J)�|��5J4�&�	VPE)|�t���J��:��] �H���dR\&\a55�/���?&&ø����|�M|< E����&��� 1x(�}��H���� �s���/�.*,��RX}3�I8��,K9��.�]��(�>�f�"x�R��aڽ��l#I�i1�q�,6K�<��Rn6f�j�G]i�C�R�g�y(��Q��V{��ݾ^���7�ͷ׺߇f��f7e�ـ֥��z���!���fr�U'Ϻ��xus��4��ʓi^Le�@�I�u⌕)��B����AQ��X�=T/�d�����}'"�d+��CQ��*��)�>Y���Ge��Wq7�rҾ����}ԍ��*�Q�}�35b��i��+(�x�Lk��9S�,�J�(�y�d�мp�d�C��7�!b
���7����B&�اm���/��Y���5�	�����V��v@��-k��"\���v�v@�d�Vy;`Q�������&Ϻ�ہ���7��ǖ���$��mg�V0lM8��Z���'�
17�y���y���Jq��2���o1�nvJ�i?yN�k�b�^�f�g�{L��"eW�d�^��݈��&�i�J�h5yzDW%Lu[�<Kd�l_C��B���k��s� �������Y=4���
q�ԅ,k&�
���)޲f��9Q'͝!I2L��ΰ(R�a���ΐ4yֵsgX }ȍ��;[�_P���3a�Z��Ba[��Z���ɰ��q�K/%�׈�U��p����.�֪,u޻�uq��+h1�eb��ٝuA\���̤A������Η��*���dTM��1e���;th[�#����Bǵ���$�{�@��:�^��z�&s��aUъ�@�u.	�������V�Ĳ��>�+VI�������.S������n� �+�qM�F �,������1 <�ׯ���~x��㉩�����hw}���������ӧU�������/��ץ���ki��v�S���ذ1'ƍ�#G���G��G��G��G��G��G����#��em5���o�<L�[��@RU'v`)�*��1��������۠N�P�Z^�]�fNa}_ƀ���=|��xY�GԄE~/��ܨޜ��ږ0� jU�>��	�3I�I�R�7	��f��/J��8�ZG˷Q���K���{E��JlŖ�|��.T* yx�"sQ��"�����z�s�"s����2�V�3[���0�]o ;��%{�GI��*X< �X�Y���ܖ���$1��~1-R���/��a�c�������/k�79ޯb�L�
�	��m@�:I�E�#��_�4 K#���fp�A�B���-����#�R��ؔsJ�h�.�@��t#�a1�5 �L��-��d�Z��ZL���>�Y��l���`�ZҽN��R]��/#��N�Ӓ.Ku4($X���l���l�y�M9���A�}��Y�
�Վh LP-�&�ţ
�*]�n��F}���~�׍-J��XR�Tz�6��T�a��uf��̸QX�֙��#L�י@J8J��s�u��� gU��L��)�-e���ʾ@e���L�|c�:ξ7ncJ� �  ������ʩ�Q�\����-]�R�)[��E�:1�~�zP=G���ݠ�=T�u��� gU1�� �1�`��H�eV�����'=_�[��8}��
�,]ڊq�Y�ەQ6wu�0ε(ctV�R���K��(c�s���}"��:¤r�%7�fGƥ�Y�3�!�m�e�c�"�8_�q�[���o�3�}� �ҥ�v�hS�:���o��(�9�f3��r���;�d�?��]G���#@?n�f�캓�� gU�� � �{����o�����A�=����h��9������o_?>}�>O���ӏ��_?���+���{��r"��>n��K��Z���}����MO\O,�G�=�����gI�G@I�F��X��h4tIk[�Qvh�֨��["�r�J��!u�d�(��V�q]lK��)��(A��|-�x> fV����s62�'��u����۷�9 �m�qS�Q�}�����x
�S"eW�����=���b����@x.���X���ި6`�~�t��V�@�@[����B��}b�61���۷Az�jk.{d�-�(׾���?��)��+hD��JL�-Qn�X%u�#zZ2Ah�}�j��X�5D]E�7�3��Ak�;��n�a���]M���m�n�_*榎=��)�r��=�c�;���Dʮ���2�7�v;T.VI��������[�!]p�)�Ga��I��:I琿�c�*/us��q,�K��,��SA#�Kz#F.���yy+dʮ���د:ܸ{�&�S~�\0��.��f�I��*i腁�
0z7�ݡ�b���0GA�#���E��?�OK�H�;�����>��&�l�]�[>���x��7N�C�־t�5ʵ�e;F�e��N���"eWPv�L���雥�X%u��:F2��֗u�����h3=�a�J�B��[C���%�b��5��^HW#�^�'9dN�}�6HN{�3=1�F��m�t/�8��)��+hD��J���;�)�J�ht�G�>h� ��V�!�����c��{�t�X"`����h��~�JQ��}��Sk,@W��0�k�k��@קp
�SeW��i�,9=�����v<~zn����[����湌L���]N{�s���s>އ�7#.E>��}�u��Ȟ��F��mx�r����H�4:p T�-�E�X%u�C:��@X��e��υJ,ҏ�HW�����@q:�<��^Hg�M��l��I���o�t D} ��i�r�r�� �v�Ow��Dʮ�ҁu�1�G�X%u�C:��l< }�j?�2_�X�5��n�;���ҽS��x�~��I<�0���7��?Ƶ�Q,#�0MVK�e��-�����)�%l?��n�.9���F�2�N�>�F�e\Ji�2�s�F'R�\�
2�e�8��r��~�yr���,Jc��T����T-�h�}� ��>oOc�1��|�76D�8�lkil�/�u�}i��%Ƕ�Ɛ.L���&˸ǐ4�y����H�r�[��I�b�����-1�#�	�`-_i���Ӄ��>oO��
{�I�/3��@Flki^��\gY_�uɱ��1xqϲF?qr�&˸���>���@�k���?���nk}4'6������̍�z��w��M���=��z��W6L7~ˣ�k[Kc_�&��G�c[KcH�ܻ+:�8-L�q5�!i�k=N�qZ�\�8�d:�Ld��m��cAT�\MB3ǖE�7{�&�Q n����X-BʦɊ)�U����X_-�p��8�K�m-�!]8wn��L�.Y��4��Y�S�[
�2�r�[�����i�����A������6Z���;��&���/O�����I於՞�K�#��Ge&��}�^�C5Բ��u�L���Q*��Zz㔲=�R����j��b���
�1������_#�œ�P�C���w��j�B��eˍ�����HG"��y�[}��qK��6����95�@>�d��={I�R�5�@>�[��(�
�h}X,�f��#�IVVK+���)��k�sZ��x�*PK��,��t�w@ґG�P��V��mD��X�y����P-�/`�Ĝ;Ǉ�ʯ��a�4韯*K��*����祬ʒ���V���[t�������?@	J	�~P:Z��;B�(�P,�}���C��4ݯt�w�2YC�+xJ!��h��)�_C��J1KL�S�YRTф��XB�����|H��ZZ1N�WldC���Н���>'��W}-ސ��t2(�����!�E؉5]Y>�5�@���ڍ��|H��Z V�	�l�	ȇ�*��	�a��toF8��de��B>,�$2�F�d��sCD<��%�|&y��}&>|���_�'�t��;2��s|�p��R�K'���w��I�`I�H��0t��-��,|3;ό;�iD۬�cl�<�쿴�u7�Ri���\-}ɶy��}� �G�z�ŉ2�7��|��Ə���FMbs��3�՛�_N���Mg�	��b��ᩮu��Ou!��kh1Յ�Z���V�	S]H��*�Lua��P��Mb$+���TN�g����ǖ�S݁P�iʘ��TW��0����;ye�9-X�h����N��3�]L$wҤh���-Q���-��<¤h��Q�v�mV�16eS]T�����TRiV<��upp��l�š	�MuCz�S]�L�|[�S�c*�7���6ǵ�:ߨT��Ѥ�z�{��t���<¤�z�4�z7zP�=Ʀ�zp��@���ߏz�
H�b�!����[���So�*�P/����ݚo����1�X܈zۄv��}�"v�yҤ�z�_�� fuaRD=��Z���A=���2�!|0܍Z�G=H�Y1�?�� L�c���|C�P/�L=�m࿕o��.�do`q#��mB;Hig�,��;�QO�lM:O���#L�����eq�zP�16eЃ�/L���,�f�Ѓ����ޱm>�,hz!=������1�X�z����<O*�E@�hR=�{�D�A�G�Q�<�]��g�cSF=��|��>�z�
H�b�!~���d�B{6���RO۰[o-ߨ�^96<ɿ>���]��������˿E�7����u|�u�Z_���w�fd`�,�~��_ c�ӿeh��0,��5�8�L f��-���R�Q&�up�i���)#4�m,ِ�cXtxA��̐ep�
\*��¼�2��_v�4�QF��iu�T�A���q��^�S�������7^�}�?��-.��8�}�Y����ͼt{�'�1�|T�݉o��dM�9#V�Q>&�����F��
�T�/(��*�j�6,�#R宦R��X���3u.�G�sq8&�}/߸h|�a�%�q�M��U߮�+v�&�4 v�P'���b�;�L��3���r��/�{�/�R* ͪؗ��+�#߾m��!����@P�~~/ߨgs�؜/]�r*���\/�� �;�۔O��N�n����cl�'��pp���6L	�2��-߀�D�X����$i]h�����	HAA�k�|���SMƖ���� ����<�y���1�bJ8?�i]A�(�bB�ɨ���j��*'"��8���"1�ڰ
��O���$GE�}~jkM�N`����1z��AEN�W�[av�񻜤��[y7������g�eo%!��?��JB����{+�-,�[9��r8^W�^��}�����i�����뼴�O���7��WY�di�����q���xgdb\�'n�Dz[Ƌ���?��o���/��cm����1	�/�����|��/|����a.�A�ύ�:���vw͇H���KX���/>��t:#J�@��/aQv�s7��8wնh�
�)���`�$M`Q�b.
�-�b@ᯢ{e'��s���{sIF�%ּ�!г0
�?q�翰e��u�|E�#��O�����      '   �  x����n1е�/6D��]w��l��������r҇��*0p2)��F{-,o���i9ޗ��m].��aݮ�r]����߷����t��7l������b�R���˷�v������vږ/��o��hx���x����|���e;���1�Cf���P�c��wg,���<�|�x`�� Ϧ���I��u�6��H�a�ם�_'�ɯ����E
��*�XI�B�K~=$נJ��s#|��ϒ'������~�D�)��[��ϳ(v��T-3�H��FDڭz�z�&L���\����D	h$<F�����5�Q3�+|!|���CE�1_�g�n�~\��~����:K'VR,J�FN�_7Q�ffz�_�}�N��K���}�s�$8�>	��7�;6�y��	�$�w$��́2��2�y����{M~�����jŶF"�Z	o�f���RB����4v�"���sFqh'ƌ��BLm��Q�?o��Hx�r(�ˑ�d4?b��Ȅ��W����m��𨆉�3of!�u�Jx�;���G��I\�u�[������M�ǡ2b�Kz,��!:V����C'��;��6�;S���Hxˏ��o��1x~\~o��Ix�Tu�ۥj��=�!�@���D1h.~�ހ�)S
ӯ�Q�x5�����QD� 6}      (   �   x�u�1�0���9�;���ta`�PA%Ҳp�V,M�~z�m��4,u�̝׎�B	��!��҉�������ʊ7�։QRsms�kU��y-�؎DQ5x�(�ķW#���]�Q��	ɁgL���]���s?R2D+      *   <   x�3�t�K��,�P�H���L��4202�50�50Q0��25�20�37��)�D\1z\\\ ��i      ,      x������ � �      .      x������ � �      0      x������ � �      2      x������ � �      4      x��]K��>�����f�}ycO9N��ul�n�+�ZO�0$FB�"e���ĥ���r��9��K�_�ߤ@Q�j&�r�#6�h �_7����2[�P>M���y=]��`I~_�٪5*��Y�������,a�@U���i�B��d�P�G�
�5�g�����*�����
�/PV�RRAP&s�����~p�h� (�����Ԭ�^�UV�.����2�%�=}��x�����T,"�Oc�������_�����t�df�~�qEްb&Yh"UI����?Xf ��"c��W�BZ+��֊+�d"a�:�Lj���4���w��˲�*T#X��ԨC�j�ץ� Ye�Ky�}`�X��uy�a���JJ����4�,��#6o+D���O�Z���烳yt5�!���i���8��:�Ͳ�X�Ti�7��H���uƄx3����A�����f\�%
�O�G��������2�h�0U^�8[��������y�ǽ��َM*�P.�v�uh�㽸36ܮKqv�e�q(�W6�|�MCe3wE��CHj�B�
�^��;v	���&� Z�d*��
yǝ��� �F#������8�x����R�S��y��'����,k%g���3#��y6�3Sv�z��^ܚjۣ��`��f�{��h�T҆Tc�@�䔴!�Ԙ��	�~f>!a	砅/���L��L�Y�*�!r���K^紸��8�Sjٽ̈́�b�Y1�l�]h�>���tUOqr�;IB`�y�Pㅓ7Bc�=�9��d�Y�\B�-
�#�x�m��X����V��7̬2�l�9�Ľ�|�Ds�ҏ6���^#�q�^=��D���v�J���!Ҽ�S��<\���Ӂ�L4k��#m#�5�����>�=X��t���%!�ZĮխ�"z擔>BD�8�m[��kx��&�üsSܣ�;@7�1v���i+�a�F�	B�����4z�'[yV��d��
�N0���Z�� �� ���8�� p�j�ё	� /b@v��z���Ppo�l�wNB@�:h��(��.�i��R�;l�>�w���A�1�u�[�P�n��F�|�8�L%�Z<iJ�� 9J�qP�Tz7���A6����^!x��_>�:��b��u�hs�,/F(�K0�"�T(m�BCJ��_1�č�D �w%��<�-\r8�Hų���Q�ξ-��]�F1�gp��8,{���T1�ȟb&���lYs�ٯ�-�Hn���Y0�$V�tIs���Z�4�� ��l�$�A�h�"��v=� �rS�fE2xo��.1r���ь\��bqc� 6�⋊���+Y��M���{g	G�v�o_,UdS;�+�C~�c�g$ܶ��ɗ������b�h��m�tѝ"E���׺� o��J1�lд%������f:���������CD���q3"�lm!���Rv�i?b��N�(�1=� �{Eyd�d��L��N������8�����q�֍�N+O�\�9�仩�� ��<^�g�F���}K,���������U]�(F'^�mrX�>���+��y�WK���a*@	�>�_��XR7��*��(�g��%�Ɨ$wL��r��ƨ����lH-�{���x��$WIH�t�p��ō�Eg$	+�yQ\��!�W?�@	��#�z�QB̊b��(��@��Y�M��z�:ok���.��m��J�N���EU\�-b\�<-��.rH���L���T���5_��%:����qC(�j�Me�Ҕ*ӡ1Y���S������Wm�~u٥�M�M�!�o�d�uh�ycWO��j���p(o�A� ��㕣�f��b�1�N�< M1WT����.Z��*_��ӂDp���f"N�b� /o�e����gN=��-%L�n��h��\}���-�]�P9H��-b���1������U�8�f����å�R�٨��\�[�#���z@�����Q��\��;DS}w�Uv�?'e&5\��5�XEe��<��T��SeAa��8O�I2yPn��0�#�C�⸄���w��MP1^�NE1��yn���2�DY`K�gW�-?��q����9�G8�eEE�(e��/qʛ8��-��G�-?�����y|���E�߿��]�����% �����Ȳ��و�è.Ft��vN8W��_�f�ݫoF����$���}���ϟ�'Fۧs�_V�l,����6X�<y�˹J�0т�}���$)Vy=�3f�����EQ���JH�
��!31W��9g�F��;��;�� ���d(��^�Y�s������i̎���ҧ/>��}�l�{�ly �yS���Vr�xxN�j*�.��K J��8_e��.����'VJ$s�>������=��5֑��/:�p��Q�LҠ�(�l~������{^��VL�jݷ�w,��=��Sz:zJL+�x�E�$��W�|y'�n��F���{�!�i8�
��&�{qqS	�@̔��D.*��6���/�lOg�*lt���������C�Y�=w�X�>f}�7;_(�û{�Q�<2��ȡeȐ��P�z����Kt���M!*�����Y�q:(��3r��ߥ&ȥ�e	Xa�L�Zj���b'ze^Q�Y���C�B*ٵ}�l/~oδ�=޺�}�M��zğ88��i�"�T���]��¬�45(g4.֯ƴq�7D��F읐�E:��ɍF�Z�P�i�70���.b�6��ʿ/P~jZ��J��T7[L,�%�S�O)��e�L98M��"�E(jT~�\vʚ�J��R|J���"�<j���i� ���8�W�X��ڭCB�E��G�����>�r�1�O�n�G��̌{m�`�-�7[Y�~�������9ʷ4������{�;J �Ĳ�������7h�4��1��U�0yy��<�m�I�?�38/0| �DS��9����6�B�o����'l�|G.v��	�6e�iK���.��Yq�>F��#f�(2��賢ϊ>�n������
ۗ��njq=�ԯ2�-��i ���� �W|���-� �DP}��"�p����J��N�m��榼 �%7d1��0d�v��0u��z�]��7��}��G�n5�	dp�9$P��mw.��"���h!�9>]���=�0A��i�%�5F��e��Dwb:ݗqZ�K�I܅ `�jK���M|� =.����*ˎ����z�6��u+�.�+���s{��$B�[����XW��l�m�g����U*�yc�ϪA�$�lxN�a1��i,_ _T}�vf����bT�V�
�i^��Κ`x�_�XA��y�����	y�q�4V����7�
�� Ypu~	�vm���V�nc�V=Ɇ�)��ƾg�*�(�s�\iP�O����S�#�G������_*����[32�e����;�����7j��7���r�@:��{�+*�	��Fm@8NKpQ?�ӗ��c�r�H�d1� ?�O޿߈s����c�pPb�v�v�ï��  6o$� L��^-�k��Ճ��	�7&�.��ū�e�q�徏�	;�!
����,,�x�vKb}t�.����h�w�����c.�_!Q��]Ί�	Y)A�ӇƁj�醤��[.{'�J�"^�<
���7��A�VV"Fp�E�����hl�E٥$�Ce���p���J#�Dع-������qζQ�i���`���VCFڸ����yU�ŲR�0�k;�c��6��;;��}�|��3<�I���v�i��+��G_��hc�CS�挮������)��-�*�c�A�qE �@���y�(2��Ɛw�(R��$�& 9�@~����D�A�	�P����Tl��1�[��\(�$�A������M���lt�Fu�'�[��9���l�|y�'-3�VNv/��d��C�/QI�DB����V)*إ�_"p�`�e�膂f"e��z����� ����I��y��N� %J�5�}�	4�,%����6�Ҍ3I�w�28M�_���z��7]%�W�y2�v@-�R4��n�Yvwb\�˸lC�&���`� �  ��[
�~h��Sg�g�9zCo�k>�|���M®�X��6v]��5��iώa��&�Yu�1K�
� ��;=��m��=Lk4�.DW]m��g����=ٛ[��V�ͦh��֒ �F��?�w��;�4Rg:o;e"��)��'Q�uO�P>���t��cC��J�+Ѽ2����}3�� �C�z�����@�VVQ�M�$�m��Q��j�ת��#=���L�"F<�}j��F��N �c��+���y ��𺚐�R�e�(/k�Ds~^��磗�_���p[�X"��.��*�/�!E�'��&�y��PR���^%�o��&�3�uZ&Ip��?v�
�����u(W� �y�JS��fȶVn�L�n9Ia��y������z�W�&�տ���d����l���q�y��s�����p�`Q�,{4x���<u0� �Q���W8��m�'��3�W6'Q����l��@�mUߞ����<|0�G{�C�^���9?|�����V^WXB<�W����r�c<Fu������!���Bg�#��;�N:��Ao�&.�y���J�௎��o����q��t�c�!��{}]��1;��A#���Q���d}$)R N9;�}<�|j�S��\"�\=	5����Z�Ti;3J�5)�ې��c(HC��x�!���kK�Q��`2�vƱG^EHb�����[^IBV�y�.��׎�:){��6�"�O��Vúc�q�=Q�!�^��#���U;��f��:�Y�u�-�""��~'���K}T3!1�ّ�i��D&�Q�c��.�"�M3/�Р�'�{"ۦΜ�����~�"A s�~�v'��[�/��D�j��2�Ck5"3}]����Rp�s���a}]��>A�Cl��ش�J���=�0�c�Tv:�s�����m�>��P�����;:;6����,��̞C�M���$l�����/�fL�׳i��G�P����G�D��QMp�ُ`^ -��I�*<�·����=Ŵ��#�
qqv�0������*�u����w%�8B�eq"	+���-�n�F��~e(HC��x����ن���-m����mQ�)�g=�ݼ
r��{����܂V����FC;ȥڣ����`�i�����E."����u}�6T��p{Pm������N�[:8.ܺ�����[��8���8( ���q ºbp��L�}�a���q;�" ���=h��z�Y����s���V6�~?y�w�L�r      6   �  x��Os�8���S0>�ɖ�1��Y���.�Q�[Ė2��R���N��q�$�^J(m,�?���=[���ճ_���Ro��/�����*I��BIU��b<L���x ?����Td!�V�"�^���K=̋߹/!�rIT�ˆs�*����?���'��� �4�՝��<��ǅ���m/�e<ն@���4N��`m�L�Z۠�Ӯl��^H���q
~��x/<,>ꯨP��������F�о�o� ��I$��Fm��0d2>E�F@��F��T��հ]��M�V"b"D�ۍZ$��9Ȅ�)���͈�N�  ��2�yՈ�jG�N�$��jG���T�e���0	܇�ny�V"�tJ���7R�]� 1���׏wϿ����g�i����������@i6�>j��K��Z1��/x��jʢ)Y�Z9_yh*V��u\�8����7��<ν����؟3V��Q��Ӣ2M� ���b�4�ER�dqɐV�z)�.�������)��®1c��#l�P��)���B�:$��xRj"J� 5�KY~)�gF|m,%yŲ�ā�2}�e�r)P�Y
�$�<�h�ٮ�8��B�:ˊ�Aϲb)�nYa`~Ya���ؙ��� R_�9�����9cwu:�W�=-�m43FpS�-���=�vP~j��^���iJ�����S�Zk����m��`���9�o{܋U~-�yBV�x���i�*�:˛k�,��
=o����4��@J�H�ϊ�@'��������3���`pO�Ո��G�APT'�83\�v���$>�aw�Vi`\�Ueتٌ�¬܌u�ۓ�'�xx�<���:��1��[`�c&��{Ax�����ֱ�]�-�k�f!�ʭj��Y��n�v<�\��Y��&�Y��Y�P��?�{�ۡg���/���'y^x��Y�S</��9g]��$���#����Z��[�b+	��3�p��ұb*F��!�D1�$~��,�dE=�5���MW ��T$x�}��0�=���2_�f�K4�'<��,�یs�w�a���'e-	���8�m�����X�����{AI}��Q�Q��q^TEmk"�Qcr��b��E��4s�8�~qp��Q�Q�$T�r_&�F�Gdd�0��GD���`�!c|-{ۂ��-��2p΁ˁˁ���uQ��®�1��l��"L���xAsWĎʎ��R��}�l�����a��0I�}��qs�mDXc��U�83t�����#�"���6Q$*��n�T�Lw�����_�%B��
�v���f�bu/�̾�=� �w�I���vq������fu$�	��{����/=�w����YK��գQ�l�m�p�b_4D��Tq}l묊�
���"*���w_߿�������ȴr�.�v�{�� ���1Ԭ]�ғ�n�A�hܬ�u�ݑ���/����(<�K�Cb�H�N���O=P�/���l"�<�|cj�ec�F�B�8AG�g����G�Ԅ9�+_O���S1�^W!kv�߳���hm~D��.Ô��V9�/��ƶ���u�E����vÃ��]�z��6�UG;t��<�R���wk�SGt��׼^�ҽuz��]C^kx�Fj3������݁n�$iec����`�!N�������g�����������x�v|������g�o�o�k�7�k:������߼�yW���������      8      x������ � �      :      x������ � �      <   �  x��VMo�F=ۿb�	��$#ɴ.��v��"���B�-!r)P�������0�Z��i��@PA���tf��H�i9deȝyoޛY�s��dG@��t2�lT �(6� M�=`�>���_1t��>�q�� ���CpX4W��< ��ȅ��֘�M۾mVo[�͚��lۨ��5�a-ڟ��Y�o��D���O]��1�oE��(�C�� �c��N>@�&��Q�1b�c89��f�HCy0��E�%O��J�&�В���]7X�lp�/��)����Ġ˽B���Q �R�+bj9�gf�����Ok�z;D�ZvE�w[�>7�N�Q�|9��{�#�����BY�j�#v� V��U(
��H�f�I�4�*+ƦX'�UK�6�I������|+�3MN��5�g�!�m|�X(U�d̰�(�v����E�2���g�0H'�c���=#$;�.������fy���?��J��H'g=	�:I >?�����nY��U���A �J��w�i���8e��8�`L����XC�گD<��H����o���trHG�!�`�=ۑj�I��C�)�!{�P	<Tv`�Q��m��׆;6���Q��,��p ���v��rP�i4���:t�1�"Ȫ�'0�� �졣�:Hq���߇��-���e�[JB%��Da���r��i�Ld�H�_���"�X��t�����ᴌ{tf�5E������۵��|��UQ
5p��>�i�-�����KYX�k���Rs+���H'/hPd[R�T��+��`\mg�./��\��y���+��<��>�{_ճU��b�^�i��3��]ӝ�u{����v��=�ζ)��TZ�¹�⑫o�����;��1����}/��B�ϟ����5��ʲ�^؎���e;����_��Iޓ���u��<��z�P�!$/<�>��@/w���H�W�h+�
.�qY��'�b��	�W�8�u\`ɘv#�D�]l���%U�Yv���f�`�@�wu�>��A�ߒhE����@�sCu9���W�o��ԩ�Ը$��r�#q�^��g�-/��[Y��%C�%��b�#�f�q�,��Í.y�~��M����p�i�Po���yG�.����K���z=�=�1Ѵ���;Tٟ{�5x(ڴ����ŏ1s,�V��lǰ셋8�o�j�p��,nRܬ�*�qg�V��6��7���� Cè�      >      x������ � �      @      x������ � �      B   c  x���M��  �ur�\@
T��~��������Y�퇔$ig  TuUڷ�ޓ��Nc�^;��:�i�F9ݺy�5�.-��d��0�8�E�2NKKP0���g���G�M:�o2�.��KԿ�N��+��7�H?�|�$�ݼ�)�G(r�h|c�y-�l*[q��_�j�"D9��T ��7x��T2�'��
um:��v�?��O���(����V���hz���c�θ!K7�+��Zm�ҩlYk�����������`b��&c?��>�ݩL���Z� Z2g���[J����)��8� Ǯ�������#:���$��S��M4^��F�2/��IG�*bE:�3���������M�˿�,r�M�\#�����J����yQjG�v̋:v��>}���\ge#Ӫ|�F���TdW��M�Ѥ.�܎&���'j��.Q��⅍L{m3��I/��p���_��Wn6m�N�:V>�}˟Qf_k�7��U�qP:<��\>�O��PT��l�3�}�3N(���7��tk�9�ߓ��u����A��.���zu�M�"�@� �4����}q�>`|��^XrT�����7�����֙      D   q   x�Ϲ�0A[������8����L�r�9r]���EHJK��p�<�8O!���l��Gޝ:%�qaEQDE�DM4�DM4�DC1v�	c��1v�c��[k�*c#A      E   �   x�u�A
�0��ur��@��X;&;��x�nj�i��締�
����Oj_�ݧ�.��:�kWb�i�n�����(?�c���¦�к�8ӈ]�]mZ#D�=ΧY��9��O�������w���@8�#1�O�5Z�\�E�      G   �   x�}�]O�0���W��u����8qcS� �[7���!��_o�L�1���s��<6�����(��r�W��d�TH7�L#2�Q+��x'�{���H�BrR'�Q�$�]x^���7���0��|b�z��P�1�c�G �-�'�p��OO(���Ѧ.��������I�G�v>#4�5z��m��&��<W��kK�OҴ���� a�}��h�����ۈ!��c�1\"      I      x�3�4�2�=... ��     
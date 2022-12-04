PGDMP                         z            pos    14.5    14.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16878    pos    DATABASE     a   CREATE DATABASE pos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Bolivia.1252';
    DROP DATABASE pos;
                postgres    false                        2615    16895    configuration    SCHEMA        CREATE SCHEMA configuration;
    DROP SCHEMA configuration;
                postgres    false                        2615    16913    sale    SCHEMA        CREATE SCHEMA sale;
    DROP SCHEMA sale;
                postgres    false                        2615    16879    security    SCHEMA        CREATE SCHEMA security;
    DROP SCHEMA security;
                postgres    false            �            1259    17014 
   enterprise    TABLE     n  CREATE TABLE configuration.enterprise (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    nit character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    phone character varying(20) NOT NULL,
    id_currency integer NOT NULL,
    id_time_zone integer NOT NULL,
    id_country integer NOT NULL,
    direction character varying(100) NOT NULL,
    postal_code character varying(15) NOT NULL,
    logo bytea,
    created_by character varying(30),
    created_date timestamp without time zone NOT NULL,
    updated_by character varying(30),
    updated_date timestamp without time zone
);
 %   DROP TABLE configuration.enterprise;
       configuration         heap    postgres    false    4            �            1259    17013    business_id_seq    SEQUENCE     �   CREATE SEQUENCE configuration.business_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE configuration.business_id_seq;
       configuration          postgres    false    232    4            �           0    0    business_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE configuration.business_id_seq OWNED BY configuration.enterprise.id;
          configuration          postgres    false    231            �            1259    17038    country    TABLE     �   CREATE TABLE configuration.country (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone NOT NULL
);
 "   DROP TABLE configuration.country;
       configuration         heap    postgres    false    4            �            1259    17037    country_id_seq    SEQUENCE     �   CREATE SEQUENCE configuration.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE configuration.country_id_seq;
       configuration          postgres    false    234    4            �           0    0    country_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE configuration.country_id_seq OWNED BY configuration.country.id;
          configuration          postgres    false    233            �            1259    17064    currency    TABLE     �  CREATE TABLE configuration.currency (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    name character varying(20) NOT NULL,
    simbol character varying(5) NOT NULL,
    "precision" integer NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone NOT NULL,
    updated_by character varying(25),
    updated_date timestamp without time zone,
    id_currency_separator integer
);
 #   DROP TABLE configuration.currency;
       configuration         heap    postgres    false    4            �            1259    17063    currency_id_seq    SEQUENCE     �   CREATE SEQUENCE configuration.currency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE configuration.currency_id_seq;
       configuration          postgres    false    4    238            �           0    0    currency_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE configuration.currency_id_seq OWNED BY configuration.currency.id;
          configuration          postgres    false    237            �            1259    17228 	   separator    TABLE     l   CREATE TABLE configuration.separator (
    id integer NOT NULL,
    value character varying(30) NOT NULL
);
 $   DROP TABLE configuration.separator;
       configuration         heap    postgres    false    4            �            1259    17227    separator_id_seq    SEQUENCE     �   CREATE SEQUENCE configuration.separator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE configuration.separator_id_seq;
       configuration          postgres    false    4    246            �           0    0    separator_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE configuration.separator_id_seq OWNED BY configuration.separator.id;
          configuration          postgres    false    245            �            1259    16897    tax    TABLE     [  CREATE TABLE configuration.tax (
    id integer NOT NULL,
    name character varying(10) NOT NULL,
    value numeric NOT NULL,
    state boolean DEFAULT true NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone NOT NULL,
    updated_by character varying(25),
    updated_date timestamp without time zone
);
    DROP TABLE configuration.tax;
       configuration         heap    postgres    false    4            �            1259    16896 
   tax_id_seq    SEQUENCE     �   CREATE SEQUENCE configuration.tax_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE configuration.tax_id_seq;
       configuration          postgres    false    4    216            �           0    0 
   tax_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE configuration.tax_id_seq OWNED BY configuration.tax.id;
          configuration          postgres    false    215            �            1259    17045 	   time_zone    TABLE     �   CREATE TABLE configuration.time_zone (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone NOT NULL
);
 $   DROP TABLE configuration.time_zone;
       configuration         heap    postgres    false    4            �            1259    17044    time_zone_id_seq    SEQUENCE     �   CREATE SEQUENCE configuration.time_zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE configuration.time_zone_id_seq;
       configuration          postgres    false    236    4            �           0    0    time_zone_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE configuration.time_zone_id_seq OWNED BY configuration.time_zone.id;
          configuration          postgres    false    235            �            1259    17130    buy    TABLE     c  CREATE TABLE sale.buy (
    id integer NOT NULL,
    id_provider integer NOT NULL,
    neto numeric NOT NULL,
    id_tax integer NOT NULL,
    total numeric NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone,
    updated_by character varying,
    updated_date timestamp without time zone,
    discount numeric
);
    DROP TABLE sale.buy;
       sale         heap    postgres    false    6            �            1259    17129 
   buy_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.buy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE sale.buy_id_seq;
       sale          postgres    false    242    6            �           0    0 
   buy_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE sale.buy_id_seq OWNED BY sale.buy.id;
          sale          postgres    false    241            �            1259    17121    buy_item    TABLE     3  CREATE TABLE sale.buy_item (
    id integer NOT NULL,
    id_buy integer NOT NULL,
    id_product integer NOT NULL,
    amount integer NOT NULL,
    total_price numeric NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone NOT NULL,
    unit_price numeric NOT NULL
);
    DROP TABLE sale.buy_item;
       sale         heap    postgres    false    6            �            1259    17120    buy_item_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.buy_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE sale.buy_item_id_seq;
       sale          postgres    false    240    6            �           0    0    buy_item_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE sale.buy_item_id_seq OWNED BY sale.buy_item.id;
          sale          postgres    false    239            �            1259    16924    category    TABLE     2  CREATE TABLE sale.category (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    state boolean DEFAULT true NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone,
    updated_by character varying(25),
    updated_date timestamp without time zone
);
    DROP TABLE sale.category;
       sale         heap    postgres    false    6            �            1259    16923    category_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE sale.category_id_seq;
       sale          postgres    false    6    220            �           0    0    category_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE sale.category_id_seq OWNED BY sale.category.id;
          sale          postgres    false    219            �            1259    16947    client    TABLE     �  CREATE TABLE sale.client (
    id integer NOT NULL,
    nit character varying(25),
    full_name character varying(30) NOT NULL,
    phone character varying(25),
    address character varying(30),
    web_page character varying(255),
    created_by character varying(25),
    created_date timestamp without time zone,
    updated_by character varying(25),
    updated_date timestamp without time zone
);
    DROP TABLE sale.client;
       sale         heap    postgres    false    6            �            1259    16940    contact    TABLE     �  CREATE TABLE sale.contact (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    phone character varying(30) NOT NULL,
    email character varying(30),
    created_by character varying(25),
    created_date timestamp without time zone NOT NULL,
    updated_by character varying(25),
    updated_date timestamp without time zone,
    id_provider integer NOT NULL,
    last_name character varying(30)
);
    DROP TABLE sale.contact;
       sale         heap    postgres    false    6            �            1259    16939    client_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.client_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE sale.client_contact_id_seq;
       sale          postgres    false    222    6            �           0    0    client_contact_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE sale.client_contact_id_seq OWNED BY sale.contact.id;
          sale          postgres    false    221            �            1259    16946    client_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE sale.client_id_seq;
       sale          postgres    false    6    224            �           0    0    client_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE sale.client_id_seq OWNED BY sale.client.id;
          sale          postgres    false    223            �            1259    16954    invoice    TABLE     d  CREATE TABLE sale.invoice (
    id integer NOT NULL,
    id_client integer NOT NULL,
    "id_ payment_method" integer NOT NULL,
    id_user integer NOT NULL,
    total numeric NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone,
    updated_by character varying(25),
    updated_date timestamp without time zone
);
    DROP TABLE sale.invoice;
       sale         heap    postgres    false    6            �            1259    16953    invoice_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE sale.invoice_id_seq;
       sale          postgres    false    6    226            �           0    0    invoice_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE sale.invoice_id_seq OWNED BY sale.invoice.id;
          sale          postgres    false    225            �            1259    17001    payment_method    TABLE     h   CREATE TABLE sale.payment_method (
    id integer NOT NULL,
    value character varying(20) NOT NULL
);
     DROP TABLE sale.payment_method;
       sale         heap    postgres    false    6            �            1259    17000    payment_method_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.payment_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE sale.payment_method_id_seq;
       sale          postgres    false    230    6            �           0    0    payment_method_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE sale.payment_method_id_seq OWNED BY sale.payment_method.id;
          sale          postgres    false    229            �            1259    16915    product    TABLE     �  CREATE TABLE sale.product (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    presentation character varying(30),
    description character varying(100),
    id_category integer NOT NULL,
    state boolean DEFAULT true NOT NULL,
    stock integer NOT NULL,
    sale_price numeric NOT NULL,
    image bytea,
    created_by character varying(25),
    created_date timestamp without time zone,
    updated_by character varying(25),
    updated_date timestamp without time zone
);
    DROP TABLE sale.product;
       sale         heap    postgres    false    6            �            1259    16914    product_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE sale.product_id_seq;
       sale          postgres    false    6    218            �           0    0    product_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE sale.product_id_seq OWNED BY sale.product.id;
          sale          postgres    false    217            �            1259    17215    provider    TABLE     �  CREATE TABLE sale.provider (
    id integer NOT NULL,
    nit character varying(25) NOT NULL,
    full_name character varying(30) NOT NULL,
    phone character varying(25),
    web_page character varying(255),
    created_by character varying(25),
    created_date timestamp without time zone,
    updated_by character varying(25),
    updated_date timestamp without time zone,
    street character varying(30),
    city character varying(30),
    postal_code character varying(30),
    region character varying(30),
    id_country integer,
    contact_name character varying(60),
    contact_phone character varying(30),
    contact_email character varying(40)
);
    DROP TABLE sale.provider;
       sale         heap    postgres    false    6            �            1259    17214    provider_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE sale.provider_id_seq;
       sale          postgres    false    6    244            �           0    0    provider_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE sale.provider_id_seq OWNED BY sale.provider.id;
          sale          postgres    false    243            �            1259    16982    sale    TABLE     �  CREATE TABLE sale.sale (
    id integer NOT NULL,
    id_client integer NOT NULL,
    discount numeric DEFAULT 0 NOT NULL,
    neto numeric NOT NULL,
    id_tax integer NOT NULL,
    total numeric NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone NOT NULL,
    updated_by character varying(25),
    updated_date timestamp without time zone,
    id_payment_method integer NOT NULL
);
    DROP TABLE sale.sale;
       sale         heap    postgres    false    6            �            1259    16981    sale_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE sale.sale_id_seq;
       sale          postgres    false    6    228            �           0    0    sale_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE sale.sale_id_seq OWNED BY sale.sale.id;
          sale          postgres    false    227            �            1259    17298 	   sale_item    TABLE     _  CREATE TABLE sale.sale_item (
    id integer NOT NULL,
    id_sale integer NOT NULL,
    id_product integer NOT NULL,
    amount integer NOT NULL,
    total_price numeric NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone,
    updated_by character varying(25),
    updated_date timestamp without time zone
);
    DROP TABLE sale.sale_item;
       sale         heap    postgres    false    6            �            1259    17297    sale_item_id_seq    SEQUENCE     �   CREATE SEQUENCE sale.sale_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE sale.sale_item_id_seq;
       sale          postgres    false    248    6            �           0    0    sale_item_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE sale.sale_item_id_seq OWNED BY sale.sale_item.id;
          sale          postgres    false    247            �            1259    16881    user    TABLE       CREATE TABLE security."user" (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    last_name character varying(50) NOT NULL,
    username character varying(25) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    id_group integer NOT NULL,
    state boolean DEFAULT true NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone NOT NULL,
    updated_by character varying(25),
    updated_date timestamp without time zone
);
    DROP TABLE security."user";
       security         heap    postgres    false    3            �            1259    16889 
   user_group    TABLE     '  CREATE TABLE security.user_group (
    id integer NOT NULL,
    level_administrator character varying(30) NOT NULL,
    created_by character varying(25),
    created_date timestamp without time zone NOT NULL,
    updated_by character varying(25),
    updated_date timestamp without time zone
);
     DROP TABLE security.user_group;
       security         heap    postgres    false    3            �            1259    16888    user_group_id_seq    SEQUENCE     �   CREATE SEQUENCE security.user_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE security.user_group_id_seq;
       security          postgres    false    214    3            �           0    0    user_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE security.user_group_id_seq OWNED BY security.user_group.id;
          security          postgres    false    213            �            1259    16880    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE security.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE security.usuario_id_seq;
       security          postgres    false    212    3            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE security.usuario_id_seq OWNED BY security."user".id;
          security          postgres    false    211            �           2604    17041 
   country id    DEFAULT     v   ALTER TABLE ONLY configuration.country ALTER COLUMN id SET DEFAULT nextval('configuration.country_id_seq'::regclass);
 @   ALTER TABLE configuration.country ALTER COLUMN id DROP DEFAULT;
       configuration          postgres    false    234    233    234            �           2604    17067    currency id    DEFAULT     x   ALTER TABLE ONLY configuration.currency ALTER COLUMN id SET DEFAULT nextval('configuration.currency_id_seq'::regclass);
 A   ALTER TABLE configuration.currency ALTER COLUMN id DROP DEFAULT;
       configuration          postgres    false    237    238    238            �           2604    17017    enterprise id    DEFAULT     z   ALTER TABLE ONLY configuration.enterprise ALTER COLUMN id SET DEFAULT nextval('configuration.business_id_seq'::regclass);
 C   ALTER TABLE configuration.enterprise ALTER COLUMN id DROP DEFAULT;
       configuration          postgres    false    231    232    232            �           2604    17231    separator id    DEFAULT     z   ALTER TABLE ONLY configuration.separator ALTER COLUMN id SET DEFAULT nextval('configuration.separator_id_seq'::regclass);
 B   ALTER TABLE configuration.separator ALTER COLUMN id DROP DEFAULT;
       configuration          postgres    false    246    245    246            �           2604    16900    tax id    DEFAULT     n   ALTER TABLE ONLY configuration.tax ALTER COLUMN id SET DEFAULT nextval('configuration.tax_id_seq'::regclass);
 <   ALTER TABLE configuration.tax ALTER COLUMN id DROP DEFAULT;
       configuration          postgres    false    215    216    216            �           2604    17048    time_zone id    DEFAULT     z   ALTER TABLE ONLY configuration.time_zone ALTER COLUMN id SET DEFAULT nextval('configuration.time_zone_id_seq'::regclass);
 B   ALTER TABLE configuration.time_zone ALTER COLUMN id DROP DEFAULT;
       configuration          postgres    false    235    236    236            �           2604    17133    buy id    DEFAULT     \   ALTER TABLE ONLY sale.buy ALTER COLUMN id SET DEFAULT nextval('sale.buy_id_seq'::regclass);
 3   ALTER TABLE sale.buy ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    241    242    242            �           2604    17124    buy_item id    DEFAULT     f   ALTER TABLE ONLY sale.buy_item ALTER COLUMN id SET DEFAULT nextval('sale.buy_item_id_seq'::regclass);
 8   ALTER TABLE sale.buy_item ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    239    240    240            �           2604    16927    category id    DEFAULT     f   ALTER TABLE ONLY sale.category ALTER COLUMN id SET DEFAULT nextval('sale.category_id_seq'::regclass);
 8   ALTER TABLE sale.category ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    220    219    220            �           2604    16950 	   client id    DEFAULT     b   ALTER TABLE ONLY sale.client ALTER COLUMN id SET DEFAULT nextval('sale.client_id_seq'::regclass);
 6   ALTER TABLE sale.client ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    224    223    224            �           2604    16943 
   contact id    DEFAULT     k   ALTER TABLE ONLY sale.contact ALTER COLUMN id SET DEFAULT nextval('sale.client_contact_id_seq'::regclass);
 7   ALTER TABLE sale.contact ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    222    221    222            �           2604    16957 
   invoice id    DEFAULT     d   ALTER TABLE ONLY sale.invoice ALTER COLUMN id SET DEFAULT nextval('sale.invoice_id_seq'::regclass);
 7   ALTER TABLE sale.invoice ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    226    225    226            �           2604    17004    payment_method id    DEFAULT     r   ALTER TABLE ONLY sale.payment_method ALTER COLUMN id SET DEFAULT nextval('sale.payment_method_id_seq'::regclass);
 >   ALTER TABLE sale.payment_method ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    229    230    230            �           2604    16918 
   product id    DEFAULT     d   ALTER TABLE ONLY sale.product ALTER COLUMN id SET DEFAULT nextval('sale.product_id_seq'::regclass);
 7   ALTER TABLE sale.product ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    217    218    218            �           2604    17218    provider id    DEFAULT     f   ALTER TABLE ONLY sale.provider ALTER COLUMN id SET DEFAULT nextval('sale.provider_id_seq'::regclass);
 8   ALTER TABLE sale.provider ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    244    243    244            �           2604    16985    sale id    DEFAULT     ^   ALTER TABLE ONLY sale.sale ALTER COLUMN id SET DEFAULT nextval('sale.sale_id_seq'::regclass);
 4   ALTER TABLE sale.sale ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    227    228    228            �           2604    17301    sale_item id    DEFAULT     h   ALTER TABLE ONLY sale.sale_item ALTER COLUMN id SET DEFAULT nextval('sale.sale_item_id_seq'::regclass);
 9   ALTER TABLE sale.sale_item ALTER COLUMN id DROP DEFAULT;
       sale          postgres    false    247    248    248            �           2604    16884    user id    DEFAULT     k   ALTER TABLE ONLY security."user" ALTER COLUMN id SET DEFAULT nextval('security.usuario_id_seq'::regclass);
 :   ALTER TABLE security."user" ALTER COLUMN id DROP DEFAULT;
       security          postgres    false    212    211    212            �           2604    16892    user_group id    DEFAULT     r   ALTER TABLE ONLY security.user_group ALTER COLUMN id SET DEFAULT nextval('security.user_group_id_seq'::regclass);
 >   ALTER TABLE security.user_group ALTER COLUMN id DROP DEFAULT;
       security          postgres    false    213    214    214            �          0    17038    country 
   TABLE DATA           L   COPY configuration.country (id, name, created_by, created_date) FROM stdin;
    configuration          postgres    false    234    �       �          0    17064    currency 
   TABLE DATA           �   COPY configuration.currency (id, code, name, simbol, "precision", created_by, created_date, updated_by, updated_date, id_currency_separator) FROM stdin;
    configuration          postgres    false    238   ��       �          0    17014 
   enterprise 
   TABLE DATA           �   COPY configuration.enterprise (id, name, nit, email, phone, id_currency, id_time_zone, id_country, direction, postal_code, logo, created_by, created_date, updated_by, updated_date) FROM stdin;
    configuration          postgres    false    232   ��       �          0    17228 	   separator 
   TABLE DATA           5   COPY configuration.separator (id, value) FROM stdin;
    configuration          postgres    false    246   ��      �          0    16897    tax 
   TABLE DATA           p   COPY configuration.tax (id, name, value, state, created_by, created_date, updated_by, updated_date) FROM stdin;
    configuration          postgres    false    216   ب      �          0    17045 	   time_zone 
   TABLE DATA           N   COPY configuration.time_zone (id, name, created_by, created_date) FROM stdin;
    configuration          postgres    false    236   s�      �          0    17130    buy 
   TABLE DATA              COPY sale.buy (id, id_provider, neto, id_tax, total, created_by, created_date, updated_by, updated_date, discount) FROM stdin;
    sale          postgres    false    242   �      �          0    17121    buy_item 
   TABLE DATA           s   COPY sale.buy_item (id, id_buy, id_product, amount, total_price, created_by, created_date, unit_price) FROM stdin;
    sale          postgres    false    240   ��      �          0    16924    category 
   TABLE DATA           e   COPY sale.category (id, name, state, created_by, created_date, updated_by, updated_date) FROM stdin;
    sale          postgres    false    220   O�      �          0    16947    client 
   TABLE DATA           �   COPY sale.client (id, nit, full_name, phone, address, web_page, created_by, created_date, updated_by, updated_date) FROM stdin;
    sale          postgres    false    224   Ϋ      �          0    16940    contact 
   TABLE DATA           �   COPY sale.contact (id, name, phone, email, created_by, created_date, updated_by, updated_date, id_provider, last_name) FROM stdin;
    sale          postgres    false    222   2�      �          0    16954    invoice 
   TABLE DATA           �   COPY sale.invoice (id, id_client, "id_ payment_method", id_user, total, created_by, created_date, updated_by, updated_date) FROM stdin;
    sale          postgres    false    226   �      �          0    17001    payment_method 
   TABLE DATA           1   COPY sale.payment_method (id, value) FROM stdin;
    sale          postgres    false    230   ��      �          0    16915    product 
   TABLE DATA           �   COPY sale.product (id, name, presentation, description, id_category, state, stock, sale_price, image, created_by, created_date, updated_by, updated_date) FROM stdin;
    sale          postgres    false    218   �      �          0    17215    provider 
   TABLE DATA           �   COPY sale.provider (id, nit, full_name, phone, web_page, created_by, created_date, updated_by, updated_date, street, city, postal_code, region, id_country, contact_name, contact_phone, contact_email) FROM stdin;
    sale          postgres    false    244   ��      �          0    16982    sale 
   TABLE DATA           �   COPY sale.sale (id, id_client, discount, neto, id_tax, total, created_by, created_date, updated_by, updated_date, id_payment_method) FROM stdin;
    sale          postgres    false    228   �      �          0    17298 	   sale_item 
   TABLE DATA           �   COPY sale.sale_item (id, id_sale, id_product, amount, total_price, created_by, created_date, updated_by, updated_date) FROM stdin;
    sale          postgres    false    248   x�      �          0    16881    user 
   TABLE DATA           �   COPY security."user" (id, name, last_name, username, email, password, id_group, state, created_by, created_date, updated_by, updated_date) FROM stdin;
    security          postgres    false    212   ��      �          0    16889 
   user_group 
   TABLE DATA           s   COPY security.user_group (id, level_administrator, created_by, created_date, updated_by, updated_date) FROM stdin;
    security          postgres    false    214   ��      �           0    0    business_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('configuration.business_id_seq', 1, true);
          configuration          postgres    false    231            �           0    0    country_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('configuration.country_id_seq', 17, true);
          configuration          postgres    false    233            �           0    0    currency_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('configuration.currency_id_seq', 50, true);
          configuration          postgres    false    237            �           0    0    separator_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('configuration.separator_id_seq', 2, true);
          configuration          postgres    false    245            �           0    0 
   tax_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('configuration.tax_id_seq', 15, true);
          configuration          postgres    false    215            �           0    0    time_zone_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('configuration.time_zone_id_seq', 7, true);
          configuration          postgres    false    235            �           0    0 
   buy_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('sale.buy_id_seq', 13, true);
          sale          postgres    false    241            �           0    0    buy_item_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('sale.buy_item_id_seq', 15, true);
          sale          postgres    false    239            �           0    0    category_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('sale.category_id_seq', 5, true);
          sale          postgres    false    219            �           0    0    client_contact_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('sale.client_contact_id_seq', 9, true);
          sale          postgres    false    221            �           0    0    client_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('sale.client_id_seq', 22, true);
          sale          postgres    false    223            �           0    0    invoice_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('sale.invoice_id_seq', 1, false);
          sale          postgres    false    225            �           0    0    payment_method_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('sale.payment_method_id_seq', 1, false);
          sale          postgres    false    229            �           0    0    product_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('sale.product_id_seq', 34, true);
          sale          postgres    false    217            �           0    0    provider_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('sale.provider_id_seq', 25, true);
          sale          postgres    false    243            �           0    0    sale_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('sale.sale_id_seq', 7, true);
          sale          postgres    false    227            �           0    0    sale_item_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('sale.sale_item_id_seq', 1, true);
          sale          postgres    false    247            �           0    0    user_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('security.user_group_id_seq', 19, true);
          security          postgres    false    213            �           0    0    usuario_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('security.usuario_id_seq', 31, true);
          security          postgres    false    211            �           2606    17043    country country_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY configuration.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY configuration.country DROP CONSTRAINT country_pkey;
       configuration            postgres    false    234            �           2606    17069    currency currency_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY configuration.currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY configuration.currency DROP CONSTRAINT currency_pkey;
       configuration            postgres    false    238            �           2606    17021    enterprise enterprise_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY configuration.enterprise
    ADD CONSTRAINT enterprise_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY configuration.enterprise DROP CONSTRAINT enterprise_pkey;
       configuration            postgres    false    232                       2606    17233    separator separator_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY configuration.separator
    ADD CONSTRAINT separator_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY configuration.separator DROP CONSTRAINT separator_pkey;
       configuration            postgres    false    246            �           2606    16905    tax tax_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY configuration.tax
    ADD CONSTRAINT tax_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY configuration.tax DROP CONSTRAINT tax_pkey;
       configuration            postgres    false    216            �           2606    17050    time_zone time_zone_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY configuration.time_zone
    ADD CONSTRAINT time_zone_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY configuration.time_zone DROP CONSTRAINT time_zone_pkey;
       configuration            postgres    false    236            �           2606    17128    buy_item buy_item_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY sale.buy_item
    ADD CONSTRAINT buy_item_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY sale.buy_item DROP CONSTRAINT buy_item_pkey;
       sale            postgres    false    240                        2606    17137    buy buy_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY sale.buy
    ADD CONSTRAINT buy_pkey PRIMARY KEY (id);
 4   ALTER TABLE ONLY sale.buy DROP CONSTRAINT buy_pkey;
       sale            postgres    false    242            �           2606    16930    category category_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY sale.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY sale.category DROP CONSTRAINT category_pkey;
       sale            postgres    false    220            �           2606    16945    contact client_contact_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY sale.contact
    ADD CONSTRAINT client_contact_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY sale.contact DROP CONSTRAINT client_contact_pkey;
       sale            postgres    false    222            �           2606    16952    client client_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY sale.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY sale.client DROP CONSTRAINT client_pkey;
       sale            postgres    false    224            �           2606    16961    invoice invoice_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY sale.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (id_client);
 <   ALTER TABLE ONLY sale.invoice DROP CONSTRAINT invoice_pkey;
       sale            postgres    false    226            �           2606    17006 "   payment_method payment_method_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY sale.payment_method
    ADD CONSTRAINT payment_method_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY sale.payment_method DROP CONSTRAINT payment_method_pkey;
       sale            postgres    false    230            �           2606    16922    product product_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY sale.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY sale.product DROP CONSTRAINT product_pkey;
       sale            postgres    false    218                       2606    17220    provider provider_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY sale.provider
    ADD CONSTRAINT provider_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY sale.provider DROP CONSTRAINT provider_pkey;
       sale            postgres    false    244            
           2606    17305    sale_item sale_item_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY sale.sale_item
    ADD CONSTRAINT sale_item_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY sale.sale_item DROP CONSTRAINT sale_item_pkey;
       sale            postgres    false    248            �           2606    16990    sale sale_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY sale.sale
    ADD CONSTRAINT sale_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY sale.sale DROP CONSTRAINT sale_pkey;
       sale            postgres    false    228            �           2606    17258    product unique_name 
   CONSTRAINT     L   ALTER TABLE ONLY sale.product
    ADD CONSTRAINT unique_name UNIQUE (name);
 ;   ALTER TABLE ONLY sale.product DROP CONSTRAINT unique_name;
       sale            postgres    false    218            �           2606    16894    user_group user_group_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY security.user_group
    ADD CONSTRAINT user_group_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY security.user_group DROP CONSTRAINT user_group_pkey;
       security            postgres    false    214            �           2606    17205    user usuario_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY security."user"
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY security."user" DROP CONSTRAINT usuario_pkey;
       security            postgres    false    212            �           1259    17106    fki_c    INDEX     I   CREATE INDEX fki_c ON configuration.enterprise USING btree (id_country);
     DROP INDEX configuration.fki_c;
       configuration            postgres    false    232            �           1259    17094    fki_empresa_currency_fk    INDEX     \   CREATE INDEX fki_empresa_currency_fk ON configuration.enterprise USING btree (id_currency);
 2   DROP INDEX configuration.fki_empresa_currency_fk;
       configuration            postgres    false    232            �           1259    17100    fki_enterprise_time_zone_fk    INDEX     a   CREATE INDEX fki_enterprise_time_zone_fk ON configuration.enterprise USING btree (id_time_zone);
 6   DROP INDEX configuration.fki_enterprise_time_zone_fk;
       configuration            postgres    false    232            �           1259    17239    fki_separator_curreny_fk    INDEX     e   CREATE INDEX fki_separator_curreny_fk ON configuration.currency USING btree (id_currency_separator);
 3   DROP INDEX configuration.fki_separator_curreny_fk;
       configuration            postgres    false    238            �           1259    17155    fki_buy_item_buy_fk    INDEX     H   CREATE INDEX fki_buy_item_buy_fk ON sale.buy_item USING btree (id_buy);
 %   DROP INDEX sale.fki_buy_item_buy_fk;
       sale            postgres    false    240            �           1259    17161    fki_buy_item_product    INDEX     M   CREATE INDEX fki_buy_item_product ON sale.buy_item USING btree (id_product);
 &   DROP INDEX sale.fki_buy_item_product;
       sale            postgres    false    240                       1259    17143    fki_buy_provider_fk    INDEX     H   CREATE INDEX fki_buy_provider_fk ON sale.buy USING btree (id_provider);
 %   DROP INDEX sale.fki_buy_provider_fk;
       sale            postgres    false    242            �           1259    17191    fki_client_contact_fk    INDEX     N   CREATE INDEX fki_client_contact_fk ON sale.contact USING btree (id_provider);
 '   DROP INDEX sale.fki_client_contact_fk;
       sale            postgres    false    222                       1259    17149    fki_i    INDEX     5   CREATE INDEX fki_i ON sale.buy USING btree (id_tax);
    DROP INDEX sale.fki_i;
       sale            postgres    false    242            �           1259    17167    fki_product_category    INDEX     M   CREATE INDEX fki_product_category ON sale.product USING btree (id_category);
 &   DROP INDEX sale.fki_product_category;
       sale            postgres    false    218            �           1259    17226    fki_provider_contact_fk    INDEX     P   CREATE INDEX fki_provider_contact_fk ON sale.contact USING btree (id_provider);
 )   DROP INDEX sale.fki_provider_contact_fk;
       sale            postgres    false    222                       1259    17252    fki_provider_country_fk    INDEX     P   CREATE INDEX fki_provider_country_fk ON sale.provider USING btree (id_country);
 )   DROP INDEX sale.fki_provider_country_fk;
       sale            postgres    false    244            �           1259    17173    fki_sale_client_fk    INDEX     F   CREATE INDEX fki_sale_client_fk ON sale.sale USING btree (id_client);
 $   DROP INDEX sale.fki_sale_client_fk;
       sale            postgres    false    228            �           1259    17287    fki_sale_method_p_fk    INDEX     P   CREATE INDEX fki_sale_method_p_fk ON sale.sale USING btree (id_payment_method);
 &   DROP INDEX sale.fki_sale_method_p_fk;
       sale            postgres    false    228            �           1259    17185    fki_sale_payment_method    INDEX     S   CREATE INDEX fki_sale_payment_method ON sale.sale USING btree (id_payment_method);
 )   DROP INDEX sale.fki_sale_payment_method;
       sale            postgres    false    228            �           1259    17276    fki_sale_tax_fk    INDEX     @   CREATE INDEX fki_sale_tax_fk ON sale.sale USING btree (id_tax);
 !   DROP INDEX sale.fki_sale_tax_fk;
       sale            postgres    false    228            �           1259    17179    fki_t    INDEX     6   CREATE INDEX fki_t ON sale.sale USING btree (id_tax);
    DROP INDEX sale.fki_t;
       sale            postgres    false    228                       1259    17270    fki_tex_buy_fk    INDEX     >   CREATE INDEX fki_tex_buy_fk ON sale.buy USING btree (id_tax);
     DROP INDEX sale.fki_tex_buy_fk;
       sale            postgres    false    242            �           1259    17012    fki_user_group_fk    INDEX     J   CREATE INDEX fki_user_group_fk ON security."user" USING btree (id_group);
 '   DROP INDEX security.fki_user_group_fk;
       security            postgres    false    212                       2606    17089    enterprise empresa_currency_fk    FK CONSTRAINT     �   ALTER TABLE ONLY configuration.enterprise
    ADD CONSTRAINT empresa_currency_fk FOREIGN KEY (id_currency) REFERENCES configuration.currency(id) NOT VALID;
 O   ALTER TABLE ONLY configuration.enterprise DROP CONSTRAINT empresa_currency_fk;
       configuration          postgres    false    232    3321    238                       2606    17101     enterprise enterprise_country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY configuration.enterprise
    ADD CONSTRAINT enterprise_country_fk FOREIGN KEY (id_country) REFERENCES configuration.country(id) NOT VALID;
 Q   ALTER TABLE ONLY configuration.enterprise DROP CONSTRAINT enterprise_country_fk;
       configuration          postgres    false    232    234    3317                       2606    17095 "   enterprise enterprise_time_zone_fk    FK CONSTRAINT     �   ALTER TABLE ONLY configuration.enterprise
    ADD CONSTRAINT enterprise_time_zone_fk FOREIGN KEY (id_time_zone) REFERENCES configuration.time_zone(id) NOT VALID;
 S   ALTER TABLE ONLY configuration.enterprise DROP CONSTRAINT enterprise_time_zone_fk;
       configuration          postgres    false    232    3319    236                       2606    17240    currency foreign_key_name    FK CONSTRAINT     �   ALTER TABLE ONLY configuration.currency
    ADD CONSTRAINT foreign_key_name FOREIGN KEY (id_currency_separator) REFERENCES configuration.separator(id);
 J   ALTER TABLE ONLY configuration.currency DROP CONSTRAINT foreign_key_name;
       configuration          postgres    false    246    238    3336                       2606    17150    buy_item buy_item_buy_fk    FK CONSTRAINT     z   ALTER TABLE ONLY sale.buy_item
    ADD CONSTRAINT buy_item_buy_fk FOREIGN KEY (id_buy) REFERENCES sale.buy(id) NOT VALID;
 @   ALTER TABLE ONLY sale.buy_item DROP CONSTRAINT buy_item_buy_fk;
       sale          postgres    false    3328    240    242                       2606    17156    buy_item buy_item_product    FK CONSTRAINT     �   ALTER TABLE ONLY sale.buy_item
    ADD CONSTRAINT buy_item_product FOREIGN KEY (id_product) REFERENCES sale.product(id) NOT VALID;
 A   ALTER TABLE ONLY sale.buy_item DROP CONSTRAINT buy_item_product;
       sale          postgres    false    218    240    3289                       2606    17260    buy buy_provider_fk    FK CONSTRAINT        ALTER TABLE ONLY sale.buy
    ADD CONSTRAINT buy_provider_fk FOREIGN KEY (id_provider) REFERENCES sale.provider(id) NOT VALID;
 ;   ALTER TABLE ONLY sale.buy DROP CONSTRAINT buy_provider_fk;
       sale          postgres    false    3334    244    242                       2606    17144    buy buy_tax_fk    FK CONSTRAINT     y   ALTER TABLE ONLY sale.buy
    ADD CONSTRAINT buy_tax_fk FOREIGN KEY (id_tax) REFERENCES configuration.tax(id) NOT VALID;
 6   ALTER TABLE ONLY sale.buy DROP CONSTRAINT buy_tax_fk;
       sale          postgres    false    3286    216    242                       2606    17162    product product_category    FK CONSTRAINT     �   ALTER TABLE ONLY sale.product
    ADD CONSTRAINT product_category FOREIGN KEY (id_category) REFERENCES sale.category(id) NOT VALID;
 @   ALTER TABLE ONLY sale.product DROP CONSTRAINT product_category;
       sale          postgres    false    218    3293    220                       2606    17221    contact provider_contact_fk    FK CONSTRAINT     �   ALTER TABLE ONLY sale.contact
    ADD CONSTRAINT provider_contact_fk FOREIGN KEY (id_provider) REFERENCES sale.provider(id) NOT VALID;
 C   ALTER TABLE ONLY sale.contact DROP CONSTRAINT provider_contact_fk;
       sale          postgres    false    222    3334    244                       2606    17247    provider provider_country_fk    FK CONSTRAINT     �   ALTER TABLE ONLY sale.provider
    ADD CONSTRAINT provider_country_fk FOREIGN KEY (id_country) REFERENCES configuration.country(id) NOT VALID;
 D   ALTER TABLE ONLY sale.provider DROP CONSTRAINT provider_country_fk;
       sale          postgres    false    3317    234    244                       2606    17277    sale sale_client_fk    FK CONSTRAINT     {   ALTER TABLE ONLY sale.sale
    ADD CONSTRAINT sale_client_fk FOREIGN KEY (id_client) REFERENCES sale.client(id) NOT VALID;
 ;   ALTER TABLE ONLY sale.sale DROP CONSTRAINT sale_client_fk;
       sale          postgres    false    228    3299    224                       2606    17306    sale_item sale_item_sale_fk    FK CONSTRAINT     u   ALTER TABLE ONLY sale.sale_item
    ADD CONSTRAINT sale_item_sale_fk FOREIGN KEY (id_sale) REFERENCES sale.sale(id);
 C   ALTER TABLE ONLY sale.sale_item DROP CONSTRAINT sale_item_sale_fk;
       sale          postgres    false    248    3308    228                       2606    17282    sale sale_method_p_fk    FK CONSTRAINT     �   ALTER TABLE ONLY sale.sale
    ADD CONSTRAINT sale_method_p_fk FOREIGN KEY (id_payment_method) REFERENCES sale.payment_method(id) NOT VALID;
 =   ALTER TABLE ONLY sale.sale DROP CONSTRAINT sale_method_p_fk;
       sale          postgres    false    3310    230    228                       2606    17311    sale_item sale_product_fk    FK CONSTRAINT     y   ALTER TABLE ONLY sale.sale_item
    ADD CONSTRAINT sale_product_fk FOREIGN KEY (id_product) REFERENCES sale.product(id);
 A   ALTER TABLE ONLY sale.sale_item DROP CONSTRAINT sale_product_fk;
       sale          postgres    false    3289    248    218                       2606    17271    sale sale_tax_fk    FK CONSTRAINT     {   ALTER TABLE ONLY sale.sale
    ADD CONSTRAINT sale_tax_fk FOREIGN KEY (id_tax) REFERENCES configuration.tax(id) NOT VALID;
 8   ALTER TABLE ONLY sale.sale DROP CONSTRAINT sale_tax_fk;
       sale          postgres    false    228    3286    216                       2606    17265    buy tex_buy_fk    FK CONSTRAINT     y   ALTER TABLE ONLY sale.buy
    ADD CONSTRAINT tex_buy_fk FOREIGN KEY (id_tax) REFERENCES configuration.tax(id) NOT VALID;
 6   ALTER TABLE ONLY sale.buy DROP CONSTRAINT tex_buy_fk;
       sale          postgres    false    242    216    3286                       2606    17007    user user_group_fk    FK CONSTRAINT     �   ALTER TABLE ONLY security."user"
    ADD CONSTRAINT user_group_fk FOREIGN KEY (id_group) REFERENCES security.user_group(id) NOT VALID;
 @   ALTER TABLE ONLY security."user" DROP CONSTRAINT user_group_fk;
       security          postgres    false    214    3284    212            �   �   x���1�0���>E.Pd�-Ў�0!$�XB�P����e�8#'h&/��'3�>�Vg�k8Nګ��f!���BjE�r��Y�j��'�2�A.S؅��.S&�
�~ҏ�� ��o��f�%����hb��9UǴ?����,�
v��O�3Z�m��p\�      �   �   x�}�=k�0��W�B�ט�I�6;�
u�[ш`p�b7��+��)-�����ܣ��z�+i���Ⲃ�t�Q�a	?`b�Q�c+�Y�*�m�0�wr�/��G�B\
���f#��Q}#�`��ư&٧y��|L����Csw���=>7B��C��2����@�Ӻ�u{U�E�$�c�LS*c��%ψI~�N>_����%-U�m0]7����ly,���~V
      �      x���ɮ-;v]���7`k�gÿ�d$��|��}_Bpי��w��w��9W��?������������[)c�����w��?��������o�����Z��s�[��������_��|����<��_����������_<�=��a>���g��������S�(o���?�zrm9���]���������Ԕ{�y��6�������~��?��?/�����ǧ9��֞�YBz�|o�1��r~�����Z�����8�2ڟ}�?�7��s���74x��S�j��}r�ϩ���3�#�Jn}��~����]F)��}��u�0ߓFk����sjg�N���_<���>��C:9���N#5~8~����󨫥���R�9�������Gn#<�)ap�'9-��~a�%��x��;_��L��Ox�v�Ny��|���ճ������,��*��s�J�<k����*7������������w|��ˑ���JT~'���9�>÷��p1oX�xc,;�6��4Oz�������[k��{��Ե����v>4?���������K���pe�E�ߐ'W��=>o�-����*���S���8��c��[O\����<��rGrvψX��k_�3�w���v����6/ͯ�z�=�c�i���֙��:�GH����̀P��+z� ף�}��1�������/��;Ə��#|H^�m��&T*?�sq �W={	/��i�5xO�u�!����^�=p��~>ď�A)�����N�6Z{��X�l;�־1Џ3Tg��?S^t!E5�OV�_e�GCO^��4��i��w(8���p�'�h,���=߉��MbW�_�u<�Ǌ'��a��r\�+�`Շ��|Uo�o^<@�Xҕ߉̤:�,OsL���gt6?4��y�O�F�Nt���P+,�@���k-��B��c�5��Ϩq��g��A:xЏ�}b돪�sS 2?�ڃ�=���zΉ���ڋ�>�:�׃���rO�wZߗ_��Eq0��Ex���x��3ݵ�-�8Fl|`A�r̥w�X���2g�Йn�C8����U�5q���V��M�Pk�����Vz�����&�'{54��UpC��k�3}u����rh'���ܡ񤨖��s�����ƫ�K�N��O���uqVo
g����lo�g���}����<�<!�]��������g�<��<�F.0���n�<��o�>��Xk�����R��}��ݯ����o?	]E5�T%y���U�zݜ,�:�&���[SX5���F�*
����{"�V-�|��������p�c�����ùj���W��=�����?4���A�Q�v8
<2��%�����3���޾�46ʀX�Z ml����6���댪�� �A�C<9��m�Py��ްSm�0��=�i�#�FHum����^�9�t���Ɖ!�a�Wt���Ǌ\(v{:QȀ����Ǒ�g��'
�Qq� `Kx��.��%[�����A��|Ct0ڋG~Q7�v�>w�j�i^/Bq�s����RZ�D�0�(ki⫾���ӉY��<f��������c}}bap����6*Z8����1��u����I�}m��7��?p��q���)��7Gjg�s*��'�G��-�jƫ������YS�^��x�@�V@�0���I�W�	��ZV�5J�<+	�
�Y=�&<;�)4s�]Ax��%�qct'���Yr��9{��<4�Ck�Yn�wȻ���)lۋ���#��"�:����F P ��|��]8Y�?���}#l�l����_|\8�pq%���)@��!�=�_.(�)M�z��q���*`�o�7��h�lZ��p��5��R��T��C�dî8�����/PDǠ-A5o��Mzd�h�������wEz,� �W7�g:% N�	��c�{�(���X�M��2�2��3G(_Y�C`&�� ~���̡��+�������C���_�OR"7����(�p� l � ��TT�	����W6��HR�!��bݥᯑ��L>e�O�Ѳ�E��q�u_�]W�P������0w��b�Ѓ>>Y�^Wā>_*vQ�9�7j����>�va G�
�"^�˥��D��y�B���=�y:��<H'��#	�#���}����!�`k�#��,�*��EH��d`��yaao�S{��(�T,>'��rn�cS��]_�|���=B��D�N�rUh=��p)s�X�VUh�H��{�2=A뾆~�:|"D��dWc��~��oԄGV�S�� �PR��D�'���߰��qoPNiu|!���E?�2�A*o�YR� cBq8#ptx'  �|&����j)�Mjz����"�KJ���_@jߋ��=�3�1�0��2D^a������.P6>�18 Ͱ�v�f��8$N���s3��0F�K)sB��?ߗ��[M� ��e�����Xu�����ł�aO~h���R��7
�)dו��0���g
���.� U6T� g����&,a怅b`����	��p��U��W���ŧ!'��˅�Р���� `��B�� �@�q���n��n�>/�s�E�g=�E���I�p�A)�:��N_����j �C� \ˎ�AȰ2�0�"C@�(&�SБ51Zx�c�� ��)�G��|��@��W�	>���S��`�g�!ل�,�$2=���c=�ƽ��;7�� (a˧ǐ&�����O�Px�/y���/q�^��d"�&�$�>�B����9��;aI�t�]LZ�� *�|�n�OǀG�$	ʀWU����8���� c����|�`!+�����Q��q
�f�F����������3�u����0���	\�v�w��'�R�i{��7�d˛W��\-�>'���h,��tF�v@=~��Cs��\��q��AZ`S��FI���̗��gF�4�x^wΡ tM��nP��s��˗x灅J"g�J/��RԀ�n *@Qn�5\��J���C�t�p��������	��T���IU���Ak ɀd+�'��1�u�\�]A�R��a��R�x_��s�H??V��(ʊ�|1"�@�}�'z�����B�L���/�Nм3N�r��/	�	ze�:�	"�2thA���UsZ��|�`/��T�1���=R�8�A�0�c((��l����X�A�pY5/{{8۞��T�:���֏ֻs�=|u�����^l$��{���+�����Q�#u�=ÞQ�1r�
&���*^;� Q	e� ����v��>�? �Ŀ�@�0�a�:����W�p����V�������s)��8���]B�N�M܌rB"���+��H��^b��'i��w�g���H���3'��A��X.wf�BqK���F��'�5�a��uUm�*�
�hJ��l��(y#U赢�ń)�$>�����H-�5&�(�ǅ��t1�����,,���=�,�2��N�.�U�R0�`�����c��eh~��M�x	��d��\	MM@� /�v�a�i e��08E� ����ӄo찯�S��4I���x�㚐Lb{��͍g~�,6���J���_Կ�׭���Ƈ�5�� �xzۣ���?�Z_S�>
Fek�#0��WyO8#�'ńE/ʵ�C���9�R�Wk�W��|�}���YU��;���V�q� �B>1��$ܿW���I�� �X  �KǋF�&6���x�t`"/�Y�zgQ����Y���������mh��A�[����o���9ñ0Ӹ��y��ݢ�&��>90�W"��N6������
7��'��0��F��/N�Ч�δ,xϸ����Ez����xY�����>NPL��\��������8ۋ��?�>wa滌Y����6�s^����0�� �@`:t|E���W]`��-�j���M���ςM("/������\��AEc�f�"0��[`�[n_֋-�    
qB�"`1'��}���<|&��c!W6˰T�?�:F���̦��Bqq�ǘ���
<,�h�w}F�܆�k��}�͏qST���I���3��2{Fe�6��q�xK���J�qH.�����e\*�Y\D/��]8b�2���P�5p#�������{�𬅧���Oΐ�w��_п��)���ڔ�����u�����a��f��8C���a���dN`M@0(�� x1�<S��⌌������(U���/�K�
��7�u�$a�N1��e�Ӗ�A>�Xu��S�¿WDI'��x��������>?�1?�H,eN~�������G_m K�
[G�N��	)��������.@p{��U#"8+`�[�@6Ӧ�ڐQ40iA"�&ւ�_X��K�P>f��ӳ$�����a�7o�h	��i�jT(�p�*���.�E8���/�?��3
^`�P4S������ %�+�ngg3�}|�֔7�kV����мL���l��yb�44���C�&����W�^Xt�j�����Y`��u��3țs�OmAn<��F
w�����zUi�b>�#��C)���Z�e�@T`W� �8�f�J�HƔG��1�	O��_FS�p$���Ŭ�\6#���L�ؚI���O�7~/?�#`4`����b�yӄ�/�ӫ��-�X�͓����5�|/	�����2�K�V�z<<�).�'r�׉�,�B�8ā��w�]���`A��2ܡ�F,pe�9%�U��*�6�T�C��0"���ՀN4��� v�8 �m��V� y�⎱c�C)�	�~��Ks\y2��2e�&�f#(�lBk��a#nx��|Þx�W��`� Z��6���>���҉�r	����`�8�9~�ωZ@
=���G�?̝�P>c���~�Q;L�� :�{ĝtp}��9#���3���C�0H{;@Y�_o��X 3S�[J~����I�č�y�FA��g-m@�-���2�pc�vu��x	b+�Ce EaV��%(��y#"NJP{X�H��ٍJ?��	�� u\C��֭xn+f��.t�x�����p���b+-+Δ���֚�ޱC��&`2�$I�82�TO�1܆�}��u�C\��ri]lb��T�5����Rop�
����cH�{E�;$pQ U.��Ğ '���A���B�}D�q\�rRF~^?���ݖW� ���,ڳC�fo=�+=�P��2b ��^���M��VV��_M�w`YS,�d*t�)�I����s�<ߟ��!�y2�ȥ?�8`�&>��g[˂7�D��@t� Tp�B�i ^:�� 6(9���(����#u�]�",o���R�ú�朥p
;��)�����x�F��D�X�O����xLVbn]� �|�,	ǅ�y��Qd_� ��h�r؁TPn@5fʇ, 2�o�R���c����nQϘ ;��{�gw� �i�޸7��5�v�����J{� �F�8��5��8~�En�G�>���]l�s�!ý�;^(���c�xA����	q�]��`p���Ds���c<���ۿ�6Ab_K\���+��,.O�c�8?N5����ֳ�h\�9pq�F���pa���SR��h4q� �:��T�4�O�N	���M������d�������h7�bZNG��E��xmP����Ԍ�`T0��	(�%�=���p�P�����J(f]���x4�+Är��F�d�[����P�2���l\� �Ǫ�xm�!�|<Ϩi� Ȅ#X\�6�o&	��J6f�0\xS�� 31�1�w��w+I�[�3��_�2��I��q����#�l�kNـx��5����d��E0�R����3(��aC��7�o����S���^,�j��<�k��8Mkk����7�?L7�pe�������8���������Ɔ�<��B���d�����/o�в2	�����`��w�GU^�W/_=��H.x�{�d������ф�XP�Q����	��A,\kU���`�F𭵸��KC��O�`bfa� ?��
)���������d��÷:����CCRy�J�r �f秵5�ٻ�Z>p[c�12�`*Q��yP���}E��\��[FY��P0���Z5��	O�[@�5� �jx�%5�z�-�M̖��¯N��!�o<���������ӻ��{�Ti�D��pbpL~=����x�����ך��q�V��˄G���)%{�`|�2$��4uD^>��7f0�Mo�E|7�ۆ�����%K�ƾx�OV�KP�kp�����]0��ʚn��T����#�A��ݴ�q	�fG�v�*��j0�! �~���p�;��x7��ij��oF�}A�g�8��4�@�7y��u�'��r�O'���Y��5m��I�+\7�7���k>a���������@�c-��Q���=�R�V$�4�5�	x���8���&7���	s�m<l2 �N4�*CE9�//˝i�& KM��Vd�dBe�G#~	Z�
�,r�ǅ��7��q[�tA��9N���^^��<[L�1Ƕ��å "�{����r �?�Q��s�Rl���	�nt���)����Nˏ���%7ٽnԫ�w`��4��JF�6�X�]1a֘����k� K	�=v�	�i�:��z��j@�Y�b]���o���؏����V\pAH���A�\�0	38a_xs�����։ ����ɣ��}R@��f3�g����b����ܸl����n�b]��>�P~#���Z��k���)�\�5�s�]y,v��<o����pO<5V����'��.ktl`�p8�O�(��&sU�ui.D�+4aq�����8[��%XV��b�Ź��a͟�^�\�,C+�����2%�k��jXC�6�����c-ҳQ I�k@y@�`�|ϟ6*U�g��v�ߘ�o|8��pՏ�삪B�1y�9�옫�缧t��5����oxV�Z~���D`_�rjj.������ȳ�� �t����הx�
��� Ǡ����X��h�y�r8L�|GiȦ��>�m����5Y���ִ/-��,����/B|�}�q���+���ڃ�Ǎ놮�c�t00d�~jw<hK�g� ����@[�lM�#����E�����-����آ54�9/��Waų6�͠×��1,\p@��C��F!��C�a����<L��c�ñc�-C]����\� ��+?��A<�5&��6��U�r[���c1�=���*�Y�����%�hM@�Պ�y��l��x4�����D��(��eɚ�;	�.֩H��c��%���NZ3��@+�C<X���;����D+�4N�w����Q�d�٩�k�n��q��2 _\&�S>���p���Op�n�߫v�J����!$�5O�.!��~��a��u�m�$�N�,�����EY��.ŚEs����y�d�&l@�s4�
x�����X���ۅS��
6C���G��u����X^�)����a	p5!2���L�} �	m2L�!������<b#%베��5�_& ,[k�>3'�Ll�P��P��ۘ�|�r)��[��������Db�r��&0�����on�ӂ��>�b�r'�b���#pK�H��m�Y�bzb4m�q�\�'��"�X�	�mA�X`�H��r��S��?�����ﳧ�$�����g,Ro 0<.đgh����Ͼ��L�~�� O'_�:�Q[r��s#�'�д���,`SxP���~
�2�^���@K^ˋpI/'�����i���n�Q���a<������|�h�J���*�[�傘��'�lBޘ�w�������4�B[�h�y���r��@Y^�D&������˖�����26��Z�e6�ah	><F�l-���Z}>k���S�    `Z
�� h��3N��DO�hq`%ǊQ2|fi�zL�� �Б��T6�B����-m��2��J�h]�u\�1�hp�����Y�<-"J��{X��I�4.�i�VI�s;��S�ʍ>���>�yF���5P�[�
k�0m'���D��(
�prCs��K��[����-�`�@�8{@0
�q4�8nu!fvmA�xbƲ�� �����Y��)�#W!�+s�,���gbZ����B�Pp��v�}+?ǵxl�n �-`�S��lC���'���b�ӭ���H�,*HP�Q�V�,#j� (��\�5�s[@�q#.?�[��Y��ʨ����� �T�z�(��6�`��#��̗)�֬�����`N���+1~mI���:g�9�\�5����=neɴ��{a.S�{���g,|��Tcl$�3���#oEb��OO#�WC��Bu�f�o��NK��mUذX�z:�r�{!�x`������@��k�z]����-�#����B�Z|�d^iF|AkxE�4,�sYZ7��>��66ky��v  l3�fB-ф��������{���'@�����=�h�dAr��{B6րy� ��u�lM
g�S�3�(��엩|1� D 5B����7L�p�2Kܤ���a��l2눉�	��>�"bb��S���#m��۠��y�٢�w��Voެ���j�B�[��2�Uh��a�������9,�=����!���]���y������7�R #�w0��*'����v+�.�XE�Y1���+n�o����l��ۣT�Ǆ�S��8qM���`w$V(�h5ˑ�c����bt��RkB�-���g��6�q���1m��kc�Sz̦�z��a��S>�2=��fC�PQ�h9�% �aI��Хj��+J������xR�BN�r�1&�,�
X�dm:��Fxp��8��������E;�U����]���E�K4ʁ�piX4;���Gq��y�טk�ZA�?ރ�Us� U���)��j'_穠9����Z�����*w��"�7!��,��zhCgmS6��E?��xU3���\@����ip�d���2�e23��
TR����es?�vHU��f �,"�ԧD؍�A�g�5�+G�Z��\X�1@���/	6 ᕠ�����B�}����%����J� l-����l3t�n ��Y�m�EZ���7?�@�G�}|oM�Q �7��n���ܯ�@Ţ�elf�
�ږ��vp�xKl��À�ɠ���5��<P0�O.�׍�&8�1�A@�:/!*9jT8Ƃ��"q�]��Z�b� Xr����:�/�����A6G1�����:� K`��H<��v>���G�]_¯U�S�|��Vᬷ�+A@��- ���89\7�b5�kϹQ��'���mvF��"`8Kb�UU�%@���/�Dpa��e� 	B�KK�� ������j��g�4ݖ�Pm��d�Hg#R��-;�[��hb�����3?��!ʶ�zK8�����dy|��۪�eۦ��/X?{{�A؀d���U=߶��6�_����fL<g�Q&�{�ȲvM�#���� s
�l�T�����
5]n�f7?�����)�{%#�Ԛ�ŗ>|���^��W�޵��s�u� V[,�0:O,ċ�;2@s���^r�8�n4��DC6Tʿ1��
�G2�f)h�d˸��I{h
t	b�퀄{�a`>�ڀ��=�^&&�"�b��7�ڧAn�n;,(�Vul�<���=� A�8�$"O[��@F������	��p�tx���
Y��m, ޭ�s�<V�!�p�`�!jc.���n[kW���pe^sNJ�%�!�&N�\�p1ֻX]��s��!��8&`7����T!J"!���/�����(������ȧ���,���7'�D����-{�q�O�"*�r���Q�:P��TVB����*TܸP�2��R����N�f�dc�0���h,����?X��ZĭB��/Ql�7�i�:����8	�٨ �����4=� ^�{�fe�)�'�2[Pm������3{\�'�e@^²hg�,qYS��xk 0�-n�Z0�U}��P��>^�$�c���7�GC8׽�/�OB��/��|�͜K�?;�w'�i��l�\Lu��������J��Y���q{\H�����X70ku�W���q@�.�h&	��G�VW��{a��ǲv~T�_�ǯs����\�2㳚IyO����L���dǹ�K�&�M7���r���*�������Gy9����O�%��5��}���,�E�v7ﺧ�i1�R\��)*�X���|��\�̚b��pIQ��_3����e�q�g�&�.ܲ��aH�vHnxi��Ǒ7I���bu��ǳ�Mqۨ�}@�,F4S������0?�Da�}���兇����}������G2�۱e���p[(%�e��җPK�B��=p�19'9��^������.#��z����̣M$����|�B/  ����,�<n��dd�A~��\�/XHQU�����?��}/,ǌ�z� ��G��_���!.��O�U�A'x(���00��Ʉ��X��o� �)�Ă�}��bUb�  ��*t���C;f��@Y�H�=�ME�Fvc�!:X-�k��2�J������'{��'��Ȁ��&����K>���=e��6ZP!��4��3{��m��kRξݿ0����� "bf0� U�0�R9�_l���q��L-�������C?!:�R�m�9��=�X�{�p�xK���Wm7 �s�k�?��D�c���ӭ���Y�-���Ý_�["
���惊���.~Kqx!c��
�\vo�n߫h��g=��)��g� ��<�5Ae0C�	̜+�r��l}�������eSPT�yj�,~y7 �/��:�[���X��W>�'w���Wt�h��n���W/�����J��y�7_�4�� �a�>�<A$)'O��l��?��vdG�� �f
��HhF/����E��|V��������fN憝lg�g�I��0L�d�9l�4F�%�3�.�᪍v�&��1zf�M�Y��n}��-5B]��~��p�!m�O��4/�؍�٨!6T�Ȑ��m~�����y8%4��s�nQͭ�i7�ʙ��ڲ
���2܊3��	�3�9P�X6" O�+m�}n�%����O'6������2p�&oQDS�Z|}'m��IS���l,!���s�~�C�c�P�}~��Y�&�ET�^Mc>��1wN�t�1�X�Ɠe�:�\ُG^�������1
P��L!�_��C~�����7n5'�mL��"�ל�ѡsa;^5��	�@R���&��Y�%�&��Ѷ �c�x1�c0I�+Av��!KH��^t[���$�c���%V�XfP�����+��e0eAб_N?-��=R;aQh���8�O��%��a���dU���w��w��� �\}af�0����.�K��;?�ŭ�
g$[��`|��6nV���C����=P��Gs8�0��2|�����3���l�
0�M��OLI}rp`�7&z)��2c݀<��a�L8�Ȁ����6����+�/�ׁ}�R;8f��C�Ɀ�ESX�
�Wl�,o��N-����Nw��ۘ�c�Ȥ��K������u.ϓ��"�̪����-_��0��\�����fE>���u��XT���;�9�shY_�0���6� ���G��`�e%6�٪N+��u��&jP�-�����5���8�O0JE�1�|�E�8�6o�7�yl��oWC��8���nh�	<�(��q�\���Iq �t멲7�sV��*\����d�T�B��ㄚSR������2�� .��'�}��>N�9a��7<�N��9���&N��,lSO��:�8���	9e`�
�l$r�=�Ք���'=�Ѯ���5c��';���    N+΅{t�?D�SĤ#x@T�\x�G�o>��`��4���F�$󱁳�5�� ���A2@��R�mr*6�"(���4�5� a�Ƒ>��B\M-f E�$���a��iX��.�T��Y��[|[:���$�� �M'�AEǬ��_����;!|H�SP�o���4V{ت����\v�ks��?R�.��Or<���/x�h���܃���M�6*k��d�}�ٞU�� up_�J�&�eF U6�~x�a��F�1��.�ȶwv��h���s�D�;H��q7x��1���a\Ε����KF����Ȅ����mK9O�S�(9��4�k�	CٺX}[G*�I�9#���"�Y6���*�����ҿh�$t��k�̛��M�8��\v�2�n�>��@��a�7x'N� �a@����9��B�(����e.$�	�&��"���sl6����5ʣ�q2*��`��ُ����������[����A�c��u���h�_C�l��=�&��Ѯ�9��,�w�c��E��8����]F���T�on9�^�p���Y�{�� ��ak��V�n��\C�ZB��R�  8x��O0� |�E�*�d��t����c۱s���7�S^��4�O��N1 �����:�%�A���K���:� ��M�>�p�L�/��j"�. _6,��c������탏��,Q,V�Xɻ��x�|���n��v��:�l�|� uNs�����Vjy���qe��׮�cv���i3���dGm���#-�%˝�ӭ#|C�������@B
{�ם������^I9��v��6��IB�6}�WU7�;�dt@d��	���_��h.�
~�o8�C�9��:�hk� )p-h/�PX����XI�����p�[u�M�Sp/�?��#§���`Қ˙��G݁gI��@ fE�"N����{|��[��Xd%�:��!z��t���y����~Kx09��E���1��[�BoWP�A �6�hK�۸Fɚd�*�^��s�o�,Z@��*��R�������c���YmhU�| �@�4������;�hⴶ~K�"�@�o����ˆ���b�<�N��!]�k�4����Zl�ؠSN�t�lf��2��s�גf�Z�����P!@�0��,�r� :~]�vD�_�-�_s����gk�p��Y�5^h��9. �$�~��.h�o�[����8l�;B�-f)�o��m6^f����u8���_��'ǌ�=/Ύ���bYw�o3��O�196GѰ����n����Q���U����ᔎ��N�,�� ���M�n��������OS� �K��zgQ8�d�ƀ��a) bH@	�	��8�p�M*���~s��eNk�X}�$��z������d+��w ^jK��	<!`��bq�B��4�.��G�p��EN�"�`L�Z+"����Q���!8Lu��p
��(`���,ٯšh#jasPـ6f[��PK���]�aV���e�Xy;7�e������|LG��>����zZ�i�"�$r�c�8.�*�a�3_��5DkS��wh��9/?��o�:H5މ?"�n]�ľ�阏]y�M߃�>Gu�,W;��'��I�n�J�q"wFE�[U?�`�|���)�^��6d6Eq��?�'9`� `.�Q�6R�g�#6��T��:N��w���L��6z��?��g`!*���<*l
;f
<^n��Y+5��sv�H˓�����[����GI�9�Um^O�����-�5��g.�I%w���A/A�Xg�4��]���6���?i�z�My���{����!����;��-q�w`ɍv��FNۆ�o["NI�To�v��&:~3��T���	�C�M� >ߗ�;�@����>c��f��S�*d��;�V�Z�.@ �ג1gA:
 �q�41e�~b1���@Mܰc��f��b�h4����-�ǽ�C  ����@�XN������4��K�[j�W����5i��B�fr�g����MTl�
�	v~9Qjb�zČ���	�I�ȝ+�t��T�������ʉ�|s��v�ï��e5R|��X.�`��tTtz�^NZ(����V��H��zmR�2[�����V�;\7���9�.��M/k~"������GhW
�W��������K����@ͺf�̀�Os؋ٞd�<������X褃�N<\υ1D����@6�Y��|#�8-!�SMlN=��o��j�[��l'���<&�uj���	���*�2�oῧ@{0����ssD�QpG!Y��'�c���}�9���d�#;F�{˻N���j��6�Z�3�$�*�/N� ݹ�vc`Y��	���E�%�h�����yy��ʗ��~3���'�\�S�n���ߵ!�h�h��0��+��m�:p��Q��w�A[gV���v�8��!��*^t|�)FƎ��╜B��{دeWה�����"	���i~��v!{��gi� $�?w��l72��ssR�X��s��a	k��+�X�MA�ɉ�﷣���b�Fw���"#9,�yP�Q��t���}T��:�h �T�U�!Ǭ���̯��2N�f�QY����!4�}�/F0V��yL+�b���ʻ&GȚ������C{j�a�I��jr��F��l�i��[�x��	���dHC�Gp���T�-�U@��т��8(:J�sn*,א0�����d�r[R�SA"��s��G�`k��%��Ϲ�A�W����N��gg�^��`�!��b�0�8��-�f3�n�VYF�PG?�qx�qn�g�w�qv��u��x]���b�\"�"����c@�!8�2FP{^�����A�e9Ñ#L<��:qEV&�v-�t2m�VFd1��M�m)w�'&�ڹ���
ׄ8G�>C̤M9(�]���9�o�g���F[�_������p��9�zS\�f��)��A���|{ ��R�i!���c,r��9 �tصgھ��rHcA��%���v^��� V������s�;�? �U5U���Eg���3���fZϔ�߄^E �g�,�b	����:�Dc7�)�89�sL�k���.��*c����ZȤ��;9��D~�2�S���
�4��s��m���7:��!�N��N�����<a��YS���9�)���jF+���X�a	0z�-L�(Ȏx׵��H��a�k�<Q�9�	�C�i&�����/�;�2�M�h~ީ�c�ߚ],�������@Ts�qxn'�l��̵B6�����L_�ZX��J�l����_�j�0��f{�$��>Q�WЯ�(9.�O�C�����A���_U�J����,h�T9a��h��� �ۼ1�Pl�)�������X��z"<�-�V���;9�=��� #P�i���
�=�9�09��sR���W:m�){��N.�" ����8b��5Q�B��r¯\�4�;�h�[�n�f��w�m���֞N9_�J.�<ܩ����m",�k�DL�=]�Y|O�:m��^vwKZ���Ƕ}���x�Zzz���{��!�C�����c�!dXx��y�V��UEv=m/m�s'_O��޵;e��*g[mS���m����5�:�u��m|XU��h��Z�}�"g�u$�F��X݊���\�8-��i	U�u�����nF��<N'��}�N;�Pv �\w�fz�@��'���[��l��zlh1�|�q�?�?o��y@@�ѱ�&G��s�����,���-X��n9'�]�4Ƈ��%t��c� ��u�Z����_�%�㲎a����~�����j�͙qN �����?Yߠ�s8V�Ӥ�5�l��NEEŰ蘃���0��}�s'@~��whP_Q�}h�*;u��X���6�}�{jT�^=��l�r�_�?X�q\́5�[���һ�֨[�J�^u��.ӻV(�A��0���G�    β���%,�M6������e8��ֳ���LPUǱo[X?��k�-����<�U�vo��E��P��mwN �d#����M"/�Z�EC�y����F�M����X��T�c��6�,��2SaP6G��$�^؎�ܺ��Ʊ�,ɴ$���4��c�Alׅ���7��l��%�⠈�􈁰s	��m,���ɂ�K�s�u���'��������z����a[;���I�B�U��xF��z�?0�0$ �:�z}���8�on���!>IGS�w�eȣ�l��~�J�s�'��O}��-+|��0��95TG쎋�`�y�xA�-�r8�	�NG.��A1-`�};�lԳ�7r;i�f���9��l�M����r��>`�ۢo�ݦ�*R^�[�z8`.TC���v��mQ����`|w�6��8}����-^P���!��(��Or�������x���.l��$k�mk��>�PΎ�v�<7�KR,f���A�/���<��h^�t6� jp@������vkj>��۵ַm]�G���NJ� "z���eiH6�t9�Ys8�}D��T�}����֝�n+� &fޝ1q����KO;�{o;��:��������l��Z���kgo�=o��~ l�ͽ%'�J��p���¼��A�F�Kc08�<,vw"]�2������[�{�!�,:&��H������s$��V�������g�
�@���5�����^�y-&p�U�B���3b��;�� �cH����@N�tJi;�
�7���?�
K^΄�杬t.V�������0���ׯ�N����Ƨ;T�,�cم5_��J�>L��䌾\��f��P��|Xp�N+p��CC�S��X�L�B,N_߱���ᥐ��l"稠:�s���"ƌ���ï1U�30�6��*]{�a��D���r���Z!�	�cYZ��:�턊�r3�ksc��<C�6�JQS�c4�Ql^��Wӝ�6sh��+�3:1��ZbX|lNKLC-Y^��ѩ�	�r����U�T��O��"�q5�>@����I�nU��Qu�����ǝ�
��m����k�>�w|&��ep�z��<�8��,��%δ�����خ3��_��w���%��4-�բ6�I�M�;��� B�lxC��8�D�`�u�U�Eƿ伴�,+��b|��z>������-�r��A��pdv�>�i!�+�F�\�'�q�?x$p=�h����3ۜnW��y0�jVd�
�����}��a9do�K�
�@��XrL��.1��=fu��O����pߡj�Y�C�ǌ��@ bw�g�;�v��)�H0�:,ڶ�y�d�8��"��b�������A�I���H�b�nf���z���t���lw�hW���X)n2-�����c8�\�s��DBƺ���(�6�Cѹ�2�0�2�&�"��do�O���t�A`�=BgE٠�P�m�D�����_;CR�?7����}3v��NK~̫ 禉�f��m����ɹ�8�<�`c��>�h�#�*_P�w	<��1�W�q��X6y] M`�S���,�u~��(�����C�E�bLVs�}�n;w���Ū=~�l��S3�(���F]�N�"�Ǡy�K.;��������]���D.܈;��
�0x	��x~�ٴo�s��� W���	`�����(��ӱ	nM��q���a��!�Y�P�d̍@�斦���{��2�T�S��Z�֜]���b�a"e2�M�\�o��c�؛�|�A}�)�uuJq�����m0���GJݦ���,~����U��8����]���Աﰻ��s���t�)kͬ�Z���z�*&����:/�Usx�C]|w{�80�����t�uv�㤐f�^|$���(�I�`y\Vw(\�΋�05Al�X���f�O�mB �����v�T�E�r�y�a��k�v�;������;
����L�[L?L�@�>�b��l������S\\�Nm<�m2�ho �vګq���E/o��<+�
����I��p�r�E��ϕY|8LX����A$?�2*ل#D�(����5��k�cu�ݕƀy��:3�,���v��%��)�&��|Ԏ��&Ӗ4���0�y���LO/N��%���Ҝ	���OL���|����_P͸+�\��$6,�]�f2��2��uC�w�f��
�9����f.?t0����;�+��M�8�y-���[V�c��Ĕ$o}��T\����e4T��-�J�<[��t�ҷ^ۇ�K@���n���Ų#x�S�B#�ސ���q��as~�u@���S9�iV�dǷ�吆T+������+w3��_1���Mݕ�0�0��l��\�|�	y���܉l���W��p����V�֘�݌X�o�A���ܣ�"��K`B&�Oٽ�A��|w�F�"�7C��.@�+�~rw��%�Q��J�E=�0Ǥ��9���� 9�[��t|8�s�o��kYz��4��g��eq��v����ӻ�:�E�fS8Qp��~`w��s���i��������u���l��>ŉ���Bw���*&��%�5��qڎ�3`��Z�.j:�����sfE�UP�r�$�wat5p��8���0�*�|ټӇ�r��)}�GE[f����\:`��*��o[��#��x:���5�ssN���\U�G��p��:�ԕݠ��'h�=��7���[�)��Qv�I�هP*�p�+w���ئ�����
�Q��nk����;m���W���R�e�z[Q�U����m���|G��B��@��_�ӮV�:��
uA�F�6E:(����?-D��"�܋�p��J:�םnh�:�(���N�¶[W�[�N���.��>�q���Q5��$/h��e��"2p�d��թ�C'��=�x�����94ï���3��6��m�y�Ff�{����#~T{�WtQ��P��W����M帖uTO����'Л*�e�ۢo��^����X0i�s��L�;��aBN�ʩ�������AK!O�s���I�|�;Eg����o�s/�҃�v/�s񒝆HbR����ecVv�c�Y�r7�w �B�/�ؖ�N`�၎aw(��b��I�,��7�b�u��W-λjúV��:L�>8ԅ�~��q'��J���	�DU��1]�bἭ��*p�K��6逈-��@=8���������V�ؿ���@��	,t�%bK�g�X���w呖��]c��B#���.<n�}Gq8�C/����QX�"o��B����nV3�Tm�.�4�|5=nϤ+�p��>�;'�V-��O����яeK��A�/l�~tDu�W0�����3� 7&���_v�����rŝڃ����n���Oj���ǽ;H��cN�ձ���XG4�X&����yk$�Y�E�is����ufF}�_��E-?/xG�@Ǝx�?�l�{|�s�^??@bf�w4�N�̆��A
�#ݭd)��f�1����:�ήt�THw��rÈU2#���6(�\��W����A{zax���O  qQ��>Nk��'��34�>̲9&\���.��Fm���)Q�O����6��Y�f~��ۇ����(V�:�6%@7.h�U͆q���)E`�E�NA�x���c
�ͳn,Hֱ,�2쁰�W�v�a�t�x�D7��v��ly�ҁ�nW��N����K1���`M�+l�^'\�?��g��Ur�A���Ut��ם���]��f�6@ٶ����-FyeYCl�'f�D#�.��o��1]W��8d��|7C�dax�k�R��՞w�ȹSl��QA#n���b#�F{Ȩ�����=B�(�n�ֵe��lp�d��yӯ ���t���������b��Ha��[�y�c�ußlsj2��j�t0j��I'������۪�{s���7` P��d�mBGd_O�����-�����X�ƾ���I�I���S��nɑ)�+��j*/������
��l��I��V��    �� �l�Vwvxv�g��.T�n}>�^:Jw��-�[�3�00@�(���?NOyl�6*��B��m�uB��N>�*{��f53�h�SO��OB�T/[�
�x��>�N>@�莒sï�r<0ٌvS���Uܦ�c�/�3�09��=�P������[��Y��uƩoߩ���t�<a�ܮ�pM ���w�]����oPN�e��r\sv��	~���s����D���T'Cڣ�̭[:��?3��q&실.7.����+��[69�ww�k;[�C�����X�R�Dm��;Ya�X%�v8g�3 ����?��J�z�f\޸�mF�qM���s��Ķ��N���6H��0��<X���es��r'���,�j���#f�-o>��?'��R�;;������&Y'ϵ��1��`�C����� 0$D倭�/����t{�c&�4���֍Ⱥ�ðt�Ey!��7���N-�A�|@�����t����ޝٱ�š�@�~�\������m��pg:�"b0j;0�N��Nܞs�6��F2��GWZ�#k~���U>���z�Z��`=�L��`��J�g�rh��wI�K���؝q1�xDg�"�N���/�C���v�aDL>��F��0�iug��C\�r�kt�3X.:�E���9�O7
u��պ5yU!~S�:V jh���U����0v�]-N��ޫ-��ts?�l;�а�_h���nm�%=ϭ�<؜���^�q� ��v����>�G���}W:}ۦ��ztc ��Zy��jp�A����x���w(iz�䐙ι)O��%8�`��y�F��۠��m;��!�ձ�Ģ}=��iGY�QJ��ݱ��z��ޒ����s�2ؤ`�. �G�$��Nv�]��.,ykVd&�qqTVy,��M��?A	N����r�'YO��?'���Q���C��J�?���;��A��ޠa`��r�0�S�Z~?���{��=�r�zƭ�::;^2��܍�<Qg7n��r>S�r��q�,� [��N�z��Ż�n?~�"cҗ7���4�|vsָ+�jp��M�U�.�8&Y��'S�Չ@�B|wӹ���qc�q>��_�-�pg��~�l8k��9��.ְ���՝.�w��t��%� �l�%ޑ.69P��a���q5����B�y3�l�ojw��C[��\��Y�_��%�0��k���r�1?�h���>�4;9=�)�%tƳE0��u��8;��a��p���}��ߒ1�P@$G5Z��e-�|�dj����OmUq.��י��`Z�sw��5pj�]���*Km�N2BGL�~��Vxt`�,ј�t��]6���n��]�x��5�Dj��d�k��9�q�8��{Wj��i
.Ľq`ڸ0m���\Ϫ=l�Y���:��L��>��Vt��݅��b��Q�r�` 7��p]ݷ�Np������4�k�E�6�E�����-'wm���;[�5>���
?��=�Ȥ��"����Ra���:V�VH{�m��`lPO.BZŸ�~E<>�mގ�V��ra��i%�-k��Ն���ίO_q��[wQ����0�ﲯ���K��pE������	��!���apv�9&�)S�'����hC�a�m�@u&�kUj#��-^*��Eu�w�X�w��TDm걯)�.���9�t݁�f����c��H�1����#��y �nӈױaS��#�^c���#�ߎšt��1��曞�y���㭪���M��|�ֻW��v�����РNn������o�S\p}M�B�b*����)\$�t�-|����,"hn^� 5��S%8	-Nw�R��/@)�$�q���^��n��"��j�h���8v{:ִ@�e�w-(�k�Ar�s�]�ᘣ�R���C��o�BD{����썓�A��;���1����'�.�=����{G�.�8)���\�w7VY�~�Adh�~EFo��R���� �X�e������QĜ�g{���A����:l�:�t�":�'���q�͊��6k��8D�	A�5��gD�#`=��Yk�p����S�m�X�;��p
���۱3����X-�������6��.�A��0���]�3w/Ǎ�8�tx�]��#����d���ÏS<���4��p�����8`�qx�r�/���^�����Vk?��.H��ё>#Jˀ�mD�`q�;�ԩ(�_Ŷ L g��[�Yw<\UT]^���׵F�lJ�$G�����9/_�l��rk�T͎�����&L��i��^���}�a��Me�pÈPw\�忦\��_"�l�W�8�fћX˰�#�m�7��Zv�����ksv��̪$�1�v�]q���mn��y�m�q�أ�T�Н��i{�-A�Ʌ��J���ΝJ!���F�<���-���8?8��0�XN
�cr��8��(θY�	�S���G���v�c�mV�����[h�hC'X'[�/@{Gm�ܖ�X��"G%�/����X���8XL��O�w�<��Q��+�tf�=>�"	�mUsp��3��M������x\zާS��sa���t�z�\�&�����CU�n�m����b���J��.����m{��:�6 �8ӿ�"�qJ0ǵ���Rd����z,����\���9{�l����n��m�6�Ɠ���p��ѷ@{�8�(����L�hܽl�D���l�o��3�O�)����4l�S$`߰��ݵ.VyRV��g�u�A3B��|m Jۮ� ��	���Ǻ��.2)��H�ݨc��6k�o����)�,�����6��6@�ݞb��m���[w�6H������.�?��5�Pt�~�ް`�ڐ�}lu>�=цE 
f��L	[������'~�@� �r�p����	t�Xt/�3�;���=��n�s���)!�qׯu���u��w�M4�;��ة�ji/N7��@�]�r�m��cΐ�ϥ�2���>vI~.C���n�YF�D�;�k��� ��3�8y����l��Y]�K -�u�d�RD
8��V}ܞ��]��9R�@�5ko�݈e���w��d϶I���m:�e#���4�Ӄ���ot��r(��JpBL�h�rqأ�q�Ĳ��,J˱e>Nu������caV52�'v�|�<�K�w����pf��TmKlf4;��
UA��M�S�gu���^��7�ln�ӑ� �G˩hcf�њ��_�T�!����q���s��,�+��̡Y���a����"�;ċ�]b����w�xt������K9[�)�����
�KW�Z�w5RLK>�nQq22���Yq�"[�}{6$�_�����]��E����;����q9��fs��c��ˌ67��\dw$$��� �w�*�E���c��j�/8���q��*`����g�:ís5Y�0���C]�����-v�q��.�v1Ppe�<�jGSǑY ����c��!y��!�y��� Qæ�bע��.�E6���VX�;�v4Ɔ�L�z���f��e�:x��C�{���N2-����4�0��vK��fܮ
��{m��6=����{��\�a���%��r����|�IN��Ir�Lw�-� 	/���ݕ���;?>�|����"����UX��G��
�=�����wM�� ���+�j�B^+�9���_t��͸`:V����Nu����Aw7;S� �n��.W���L�U�Jr��{B�s�)��tes��:�ĉl��|l�W�i|�j�=j���c��x���{�pQ�A#��Ҟ���hs4
�֊��"��%�ǹj���U7��Ŗ����)����e�D^2��ş7�V���ZO��h9%ꧠ@�a����_6�iHл��ؕ`)�$ ��+�����:�	l,����S�
K�*q�w�%Y'<y=	����k�0�O&ݵ��\��Tt�h�:)�f�4�\3���r<�3�Zh5�wm~�ws.�ܞ"(���٥�&���*����2���sq�SCa�1��ˢ�N̷3�.�o��Tv�����N:. ��\��Fj���y"�`u    �ؔ���[���J�5R��P��z�F��X�İ���I%f	�9u4�k�-P^�&9�%?��^���=7�����?��S�=|�5��Gɖ���o\����CJ��O"B׽�C���#�@�f��mO��m��l�Y�~�Uk��]%�C�.��x-Q&�HMB�hܾ�x8��f�q�5��6Q�G]?�=�5G�dEIb�<ϱ�n��7�sz�4�T��#�C�c�N��	���	��%�t�k�m3wl�<mp1o=k
dC�0��	��<����p��T�����z>���Fge;�7�Q���Mc��|� ?rɒ��3&�ܨgߛ")X��3�\�����w�{�W�E���]�>��\cymǼIe/��S-8����g6-��$m������H��cЉ_Y칃���; ��4���5��5�8J�E�cѳ���:پS��M�/�Ī�'�*��7���5�G���D d�21�e~�����%�:x_�rKT3���x��%��|HtS�J��bt J��6mNq^���;��&	��:�#���&zw�l���y�v�N�JI1�AK�vn���.:r����'t���\~*�Gs8���ڵs��ϧ�:���m�`�ų�A(�;RL�O�A	c�x�k��?S��~��Zt��w�k�R��ɀL�Efz�Z�\k��R3k��5��|�(!v�K�f:�������vQ�.��]ɑr4Hz����O�V���_7�&�u���PW	N���N��������{n*�-_�G ٞ`OY�u�[e�~PJ��,�5��;I�\W<����o������a����m;��sr
Rx��M~-����L��	��z;M]�:p?�vZ�T�<���D��nFr��)�6����o�25?rM/�?ۮe��������3�]ɢf�����	h�Q�����+�hx�_,����'���"i�c�۳� |�m�x�S�7�6H,���Z�N��.M��FD���+&��������-�����蟠q`Mѕ���	i�hZ&R�I��][Q�&�$�{�1A�������{��H���*��O�����fCZƀ�����!Y��Q�q��d�{-}�@ŔN�a`���#���BA)�{������������R;�����7�|2�����I���Z�f����|.��N���'�5n��D�5�s�G�+	�8x�4b�9py��. �+�vL|���t=	��K��uy��I/�Fi�����'m�N�3��]E ������K�2����t�Lč��Ga+W�$l�D��p�b�t�Xʥ:_?�����11���-	����ٛp�~p��c�yK�s�f �nJ�^7vc�0Z��`���sћ�I.*��K�]-��IZ�7�Ү��ߒ?[:�$N7�?�z�xL�O)<_��$��Ʉx��wڻjePn#椗�J'���SOb��`��F���<,�o�Oˡe��s(	����a�)[fR)]3��u��c��qf�ɥ�`ڕK�+����+�kaʋĩu��m�Z	/#�@#����X���
$3�T�0W�CY�sv��rڅ��Г��>V_�jP��Q��H>z!��x#�&�6&�y����B�3W`�q?�HS�H�F���A�"�!��ON�}!�����Ab��.X�OK��c��`��s�D������{�M���m9.��7� ?2�˰�����z�cvk�<�)�ھK��Y*�v������W&�89���-д���$�ݩ�4�^����eV���ּ�'8Ҳ@��i}�Z�{+M�{�6n+�dR�+��_�a�>��`z��7�'�;@n�����(Y?�<�r~�Fӹ���4�dc\Ƀ�W3G>���4�%1v4��]��'�[�e�mx��1u��8'p-^�ݢ��o�QR������g�0V:!��o�͆�;e���ݶҭ)"�A�k���#������7�>i�<A`�v�0h�B-l��\R���$�+ʆ鰂����-��#��������ּ�u#��{v\�wòߟxz�����V�H�<�<LKz��H�F��3G���䳻�_;�FI�)Cz~}R.��t���;��_���@'�qa�҅[�F�$q�ϵd�^�G���Z�-y�����<Y�fju����(lù�ŉ���^�8;b9=���n����ñE���.��d?���`9a7E��%є�鳹.:��r��TP�`��A6`[%܀�%�!G���3�2��VPN�#�k?��l�{^M�ʝ�)� �s�I�@�+�&c����iS�	�Dr�?~�$��d��Ӿ�j�:P- ��Gn$a�F��R'��|�����e���U��F@T2��"��E�'6��J�0�z��c+i�"sC,E!��#�'�^��L������D�y?�"�BB�p��wk����F2!�s�r��K;���	��Փ>I�:v��lϺA �kro�m\�����tP������<I*f��ts��@\η�9r�d-h�ծ'�N{%�Tt�<��A�kZHz*4���(7��uqYNZ�w��	H����Fk�0�1�9�;���]b3����/ _GØ2@�%�N/�L�T[i�T��$/Q�QSɹ[7�ʚ�q�D/s˷bT� |&>�R�4����3|5 nD�Y���nT'X�����_�Y���'S�� ��Ll����8�e���W2);ٟ��Km�����������R$^����_���b�о�oZ�=�~Q�����05ϒ/�*&�	��6��/u�"�T��:%zC�ҿ�f�SB���x^@�r�g������$��NݛH�/��q��{��r��ǎ)�	Vo��^8���Œ`-��V^Hr%O�� [���AwJ�̇��nK0V@���o�Vi% 8HN�f^,o��C�}.ΧJr"g��GO�׃��ݕ
|rLK�2�,%A��$r�w���JVҰ���Y�
���Eŷ/'����@/1H��d�H#��F��IE�T<'��+{:*c��r�;��Z0]����.�K�eP�zNfr�P�H�)��?�{*��A� ��nÄY�F��:�Ab������^9��p ��~��.U������KK��n&x#������NB׀���2��2�?�s���g�~$��_a"D��GR�!$�I��zOR�
Ƥ0�G,*����F>L�,S�� �|�6�f��Gy����A�Od��1��8=AF$DR����G�Zx�yV<
���LȺ�C;')Os��L��2#�W���yE��K4��.�vh#���u�S�-%�[��[3�N CA�='�8�=~��SZ�H�9R]Z�ťb��6ؒ����K.��q]|A/bJ7�}��=��+��r���I4%~��nݓ\�o�#���)��j�ԚV�(:/�+n�H
�!]����T��T��D݁|ʜ��d�F�*M�6H0��N�ꑌ�2W$R�*V皀�)��v�Y��H��!2��Q�W&�Tw-FH+6�q@��j]`��3����<Gmi^43�����d��/d��`��� $�E\�*��*�Nβ�Rp;G�%7MҎ�f����\�)ک��c/2ek��0	�+n���h���/=kNa�ͤ�v�������$z2�%'v�d�HU3��;	d�/	�T��(0�L%�Z���i?~�v�m��E�l�KOmЩ>�o�` H���&���?���*-\�{%�����ػF���o�t?��Tp'TZ����'�1`I0Mɘ"���Jt�|Q�}H�fBw���\6�#�j��R؝b�]Ћ���n��1p�)�;G3�{�e�لv��9���&X�0�)?�;nl�#rb'F�f߰W�Sj2	0�l���x�I�dZ�5�?H�������&�5�y��(�n��`E�!7��
�k��<�|��A��bw���N��/��Y�M���E/��׶���`ʴ�.J�uB�~Z�V;:�cC��:hk�t捝�$���z�
�&y��A�<?%`�ZhLĺ�0)Y�3^9Y��YH�^lr6�<�]�I�������L�2�!�OD~�̊'/��:ꬶ�*���    ��[�
6�b^�/e3а�t�y/��V�b�Q���t�~����ג��"�rb����P),�7���e���#��H���<�R�
�|NsRS�X�@�eY���}�O~�o���Ј���ӉwӋKp�6G� 4�S	+�cA2)8�}E�]�A�ؖd�/f��q;U����u�o��?�D�UG�m�8"�MJ ,ݘ}�R1Ծ
.�l�c�o=��Ҫ2i�@��)wP,��+/{��f�K�BXr}������X=��7��	-���Hc���ݓ��m��d���q']���ek�bS�9�N	ܲH
����v�Y$���Q���մ!c��.�x6G�k?R.�x"������^+�� gR3�el�\8�=
��\�9L�\�z�B���?)����5���R6����k��@�:�:�7��z��I�w�CXػ�jc+�{�I�je�Fk��}� �R�M�y�"�|�@2���o��Re%Ū6�;i�k��?'���9@��`P˗<	qUy�	*�(��^�����h <��p�SD�o W0�#^ʆ��u�I����YO�Zj$�)��]Űf&d&�\�<��U�3�.�IԖ�θ�i|���� ���l�?�}ꀿ'���)��bu��"��M{v9�E�	!&�����Q^Z/!�����{�zZ�og^�����K� [�Қ��S�N��I�[��$�]FS���/7��, �L���-K"!!!�P'�DU����yu�bG�ĝ�u9������DFFq�en�}$���0� ���sSa��Ti��A����7�7�z8�	R�M�,Mr�I��MR���X�n���a_"@�c9+.�F�ˬ��c+2����FR=���������l_����Ѓ��]SQ������~��H�#���[c��#��������~ɫ�����*��̺Z(GR~߽���B|A��R39�Z~H�dN�u��.Oя$Vq�K#�L�6ܞ����L�k���.�(8)�^��}W����Mn�9-�6f��:0x��P�/�/����z��w{ӎTW�O"�~q�8V��LV�A������^�����̐��	��� �T�=%�翠�7���Z�Y1;�~3�^LH���q��XYڲ����6�8֪���}O�xR��e5��b<�/��h�cg'�+���ʼ+�v	^l)�(�Z��q�n��4/-���H�S1����D�`M"�L�^
�O%���g���8�b��/X%���v䞴�s~���/���>��r��Qa>�C_v�ٶ�]$E�X�Iv�<~!��|c�=��-��%��n|�O���g�j���9���,LG�"����3�Y��gj}P�y�����L0\M�up�N/>��4gE�J�I��cA��)��ӿ�y�yOM���y�����d�r���WJ9\.��Q���~�K��T�i���̣�͋�iz0Tr�F��x����Z�� �+��d�Ú��]?z}���V�#W�X0A��Z�<.����w(�Ɓ��n7ܛY��������Ƌd�1R�h�mZ�K���XG�]��Z�
�ɭ4� ����(��.O��+�8��H�ꥆJNb�q��JHP�K`~~��/~�?��f���@?<$X�Td)�W���칧�[>8��n�~���� ��)�ޡ;���{����79u[��Br�S��={j����$
�ߔ��w�p
�:��)��|`��b�q��|��gZ��+�8�"Ճ�pT��z�����A�r��� C#���&d%�$�^�úlq�5���a��c���YIȣ������L�Ԝ�s��JR�×r7!nKh��k/맸>�&z�I�Z�:�?B������s�������'�5��	�L�����ز��e?���vߒ�le� �@M�ܾ��0��؛�K��-n�˯�C�A3�]$ȼ�1FB�w��h�����	�tR����3����C�H�<IQ�D��=�IE"��n�%�۝(�$9���͍T��^��MǬ��j<�N���OQÐ6�9��Ȕ0�����	)���@�Y�GJL2̍�HUٌ��G9$M{�W���	ɁI �H��
�0^ty�n2k��V��{�U�I�*�A^M/d#5�*����O��{wY�����	��kE� HPt}�Hb�����*��k_��ڂ}�cYT˰�Y�mg�O��e9�#sP��%9P*w�L욃�Z�+����5?8����lE�D������%H�X���g O��iY�4g�rLT�@[�R��$��q$H+�1�D��������1e`Ȉ���sXI	s��L;uNr)� &�\8n�t��ݾ��6����?�˩�Np�z�)K���Be�0M�ټܒO�!�U
�\~~���H���H�Obu'�F��u�nmJ��/���س���G���~�9�{��}�N�rö����m�kDD��iNL�W�bm��9lNN�z����Nل��&�����|*8���<~~���'ǐ�F5�Q��b*�+.�ܐ�����,�K`}��G�4��|��_g��g���P�P������Y�P��a�$�0�"���U'8�IK	'� )���]�+N�5�-a>��ɾ%A���W�_�='��S��L��*�tr
7�L��V�o][\9j�e���:W"���>sz�=�6e��ύ�Dn���� qN��g�*�yM��k`X�<��mh�µ?31��܁���S8�l�����3�#%Q��_&8�����a��!RAΫJ�T��l}c���}vi0?��"�m�ې�'�?�*r�Z=n��ѿ��^��v��A��o�9�&d��cm��R�Q�%��+���O
''z$[�9���l%ג��5� <�^��#rP��P���!!�?o7����%���j��b6:�X����==�T��x��'@�[��� Ë9YP
�����9S��)�8�/M�@���\���O�dIJ�xO�T��k��ɗ�E��y��[��i.B�%��q�&�[��}��!Uj����f0�@�� A,!;?��E��)΁%ř��D�2V*yE��eh�*�|lx�6��G��T�����	����-��Lt�b�Թg��>[~v�f�!�/�r�+��H���(���,�ד/:y��Vnu�d��^[ �Y�`�n	�y�]���A�M�.p|�W%;p�iN�G���d L&M��7�+n�A��̋�'�����خ	t,}�S��P�S>�J�c��Ӑ���~�ӹ��4Y�N�����3�l+֫.pBDN*�V]Z>�͂g�rN�;n��p�Ͻ��Ϲ�-'
t�>�b.���$���2P�)=V3�=�[o�R+1/�V#����k��S���c��ӊ�5� �@�ǲ��G���pe��'	,�e�j>ı��a�Wh=9���u�]4�j�o���]�~��n�h��峛;�4��݆#�[���(�1�K]qٛ;�J�89��JP3��^e���!B�s8�q��O�ׅ���4&�̻���'��)Y��Y�{�|$�N��`?O�.}ü�^�/j��g�\�){nI<t8���l��f�jX�I�w�S��hl�*sc�������)H%��rm_UCA'�S�n��fq�v~�0)���RvF;��|⯹]W]t819A���H�%�mKD�����~��-�W�(���kd��Z;�9=���YV��n9�~����)y����/*ӵi��["����u~O$_�9u'�r}eUEP@h+��*�l��[���\<{Sբ�v�)��kc�������>���I����R�]ԝ���E!_OTp�|�9
�O����m	m#�{,:�|�'+�\xji'Rkʁ����OI�i�9�QKg��V9�����,vk�����G~�%��^�6#�q-�~��m��iM������	���̖xR��J��K�ܕ���2G��LyÇ�:o>�=�[��4.��&<���V���D;a;�Xy�73�w��[�f�J�sg�.�?�M��9M�Z�Nx��T;�g�=�.�798x����|W�Cl_G�-    g�Զ�
�K=Ĺ'g�:������d �@�5`�{!�l?�^}N�M�����q%��Gϸ�4�PtX+�R�nDy7Pp��?�?�>ٕY= bL�|2�<#J�)�1��2t��]�^d~��J�\�#����d	�jt�#�q��T�� ��b@��9�s�脡3oS�ƫ#�3����I��EH��j��K��0�Ш"�K�;7�RLy��L�K�%3:9����RNNz�U�9*3��K9p%�V%�|�5�,�幍@¤��3Z�����A_}-����Iw�J'��?�TǠN�� �2�8'���~����_rײ��\���g?�'��G�	
��n�&6��䂤����Lf?S�F�=!{�_7k_�BV��i`�X��K�5����gR�N�aWX��yLy�8<�Ax���y�z����)cbL`��%�e# d`tw�N0ͤ���S�@�\�{��;�c��7	�?�r`�TB%��.����L�W�� i�Bt���KߚJX}H�Ӻ��8h��w���"?�d֠���m�Tc�s!G�f��dBw����د�Ĝ��ܐ��������oj���A �"⩽��KH��d}��O��`K��*S� ��b��4�I��cM�K�t}r�Q�,�+ �D�I� �� -���+0���հק��Acɐ���޳>�pwӀm�mU^k�dd�$sn	����mT��cΑ�m%��Ǜԗ�����	���r{�~��E�%�����Ú$)mC�%3�sc͆5�d�~_96�x&����+�ކ����0ܭv�AwoV&	Z��&)?���g���]I�E7'�_ƑI�'I�$�1H�h��-���ii?iM֠w�0p\�f�8q=����Y�:�V4�����Y���9vb[A��Z�e?�>	���CJ5�14ܾ��^>�n!]�?V���$m��`���>��9�$:	�%(�#�%��;l��ӡ����Z~D�;�
��](�����h���e�a�kֿ֥�)��慠��������g�hE���Β��/u�|�$�$����<+�M�<���A� n��,9X����5��)�#}�Y���_�h��z����I엢�;nQ:���������?����Z���<�f,�1�@'N��ԟ���6
�ݭ�h%0j��������c6�����z;�;+�~Њ�Y}�k��9�Aa�*=�v�����W��֭��vJ�?B���d^��My��H��~~ۓ��-�6� ��-"� ����iq��k��}%*��?:R۶sD?���j�ñ�|���>����/�7vlsR�)�#�`��~VS�-���d����^�y�σ�M�jꥫ�+1e�Oc#��±$�N��T�Fj���ږ��V@D˷珗&����3��/��.����ѸQ�������k�d���*�i\,�lݯ��T��w���Ӫ��z�N<�u�9���5��ub�6Ұ�/��5h�egt'ڣ��m_���a*5�C���k�Ƚ�ڷ����6Dr�/ܚ�y7�XbJ�`� .������|%%ʺz	�@65��� �"�-C&�H���  ��@y����M1�תQ+��<�o�^&,�S����rbBj@��Ӥ��)�������Hg���=g��p��+�n��柡�����L֛�U��5�?f=��~eʒD�15��t`V��?8k�"�W �t5+@�x�	#æ�f`�(�)}�%4D�q�'�^>��@�j��07m,�s6W|��ll�R����5l�!�2H� ���"��&��o�5���pS�J�U6 �K��V3x��7�R�g�=�������]�{��W�n�y�i�|,��u_���i�g�]���|�<�D�wQ�ϑHݾTǝJ�%3JrhR"T�{s�J6��[�z��][�ҦweY8���h����o0�7o��G����>���%ágy$vݛ�Gɰ�5���(������-�h��Q�2ǋ�E������.XJ�����y�5%���� tE�XB�tz�Vv�����5�\W�mg�����	K�H(�h�L�.EN�E\��<�H9]���߾��,����|� � ���s�D.1��>/L�u�k
?��;aN�L��{��Gg�9I��)Eɢ��G}Պӆ�A�^�{��ȝ�٘u
#�xϞ�t9�ڔvhu�@����p��v5�ߋ5�L��?��- �LLs�a�~���������V������g�>�� �]D�r�;�٭����%�s�rK�}x��r���������L�:�y/6g�d>��[��'��封�i�FЂ�ܭ7�$!]�����<*�E們@�w�lH��`$:BR9���:0fF��MRK��E(eS��NNA۽�����Tױ�S�IOp8�$\��-�]�΄�L,���Я3�q�����oNJ;)���^����4�����T����ߘ�,B��䩻'�����=��$���T@G�>r��x���碦`#F��r�F���$��<Q�f�y�b��[���8���H,����J�!�C9���ѽ�vAl��1�;s�����.����C�>ٱ;Yd�����><*U)��@�%{ѹFq@?[:.AQ_�����2{h����ni��`��5Dֹ�^��ϭ����> I�$�:	�_���u�>DԘz����n�>�ݬ3%�J�w+hF�:!1�t!��c��U��k�L��6>��s�2��N1����ޒ6D��!F��~�0�~������ �t�ft+/~�ʞ'ؖg��(��ՍQ��A���xI���&i��a�ឮNBP�X�ɽy����A��q%��9��O4V�kb���?O�>�e�+�ǃ�7�L��&���������ZxV`�'G6=W��9[
��Zg?�_I���|r�V���aB�Z��8�<<&:F2�k���4������߮7��Y�)����%fO���M�;� ���!��6�l�YͰd������e����	���\�>�zy�%`�R���4;V4Ѽ����tRT�4��d�r�V����cg?�c�g��?W?Ή{@ɻ�!�_����[ީ�20����y�̴�*g�ש�����l7=�=陮��~��̡����8߽���=|ZIsMW�	?�i�dN���v 01���:u㴱�Z���Ἵڈyv���]$aF�/G�u������承��63�F۰uv�L�F��z��˨�M����|^n��)��'Q�@�c��}z�u��$?���=��@}�)�d��p)�R�L��K��c;Q����`�8��!U�}�VQV��@�~�y+�	U������\,3�2/4%��g-&q1zV��%�&���?r����,��'�t,q�V����nO��()�#̣Q���N]�Ie��׽*�1V�L���Y�M��}&�r��~����v�����`EO>���3�N����{xVmJ�K�q���y;�Ш�>y���������?r*�(�����w�"^�]���_�:˫���9�R���M�_��auG=�fiy�Z,IH�%�+uE�3;�f[g0a��Qy
���T�˩���Suа}�ri��HaB���c�<BQ�Xa���~�};�;�&�cT�'FkT�	B��pgڳ����6�Z�;7��UzH��W��Qnu�-�t�{�:Rl&��q���	,v__�EI�?�#k��Om2��sl2��&sQ�K��\��A�*c7��~r��ø�����i�d���˒�C)>Wpg����Y���_l�_w��&BY��(���ֱ[E�����}��y�5�GD�r��j`^�W����Y�:q.SQ�ʬ|�jɮ�>�]�����,�	�.�m�F��k�׽a^�-�FF�ߗ�3}��������f���KM���?JI#�}O9z�������J08�_��O�	"4��'���R���P�Ad,q�-�!5E��Tg$v������V���~x��|���l������ǖ��!���l�j,p��+�mNE�{���dG�H�[/    ������Sq�D���SH0.�)*������)�D$
>:;��_"_� S*�A�]!'���L��%Ӝ�:�3v�m����w9����;J�K��?OU�N=�ڹ8h��m�r�6����i���,�������5�dE¿�S���5Ｎ���b��RKr��pk��c� w�_3�j�Mp�(�/u	��I !i>�ae׌�;��W�*�T�(&oZ�è���g�sX\,^���ST�� �|3�� �ፖ�%���h�����_j�ƛiI ��_[ågr��rvh�#��7���s��хZ�1P.d�M�7��"?�<�JC{�_�	Ȓ�N���x��A������T	�)*!G
u{��(����M��o�T��I'�<���/�����床6�>h.-�*��Kf-E�CV�t�w�qR	��{p1�4���X�l��#"�r���[�>�Ih�Y��&m߁U;i&���I���v��X!������D���Zh�����Z�WbۯvJr����kǠ �G��6����^_�^�m���b��`amn'�C�����'W���]��L�4�9mĈf�E&�p��%�t���gx=.~�gZ?�ܖR<Q���6���o�w�j؜��!�X �|wh��9�� Z��k�/��z�D5��	�d%��K��ҚO���m�"A�j�h��ؒS��5�a�W~(��f,�l7D �|�r}N�s�3��%�d�(E^)DVst�NtZ1(��gQ����FJ\��۵.)̐ L�1��nh�sFI �iO�Oxw_$�1�'�<��Cƕ�����̻$0i���?�Eg�=�5͊c�(za�́n7���'q����Ҁ",��.L����{X9s��%��C�/�v����m�T_����d���`X=z�H�d����c��t��0�͂,�A�K �������e�!����IZ�P���
D,V�������^��` �TP�7��H<kê���ԩ�չ���6^\�&=��W��5�I���$���s~XY��hNy}�O�9iG���=P?i�|�ŏ�$BnF c�����^+��#&�w�����ߝ� E��G�+�Zjc�l�9m���iP/o�v"��=XG|Ԕ���r�o$g�K�%��^6��Kg��O�QC����p�&`/��Č�Λ���CEݤ�Rv�j)�$��7���S��Pq�"�pc1Ww�_�O�p�7���0l�.�(�=.q�ՄR4�vo�md~���|}
�T�_��|У���y�]8��G��rC, �	�]y�'��YZ���� o���t��Z^ة�I���Qh�9�w�a[Li5��i��Բt>�%#��0���Q�i����i�!��Z2��ɢ����c���^:A��)�J�\J�ȫ�#��=��O[�!`�i�r�X�_g�*o D*�n"���tB'X�)�'/����I+~D��L���FK��v�Y$poo(KIЂxk>"��)��g�L�=��()��
� ���}k}|��Z*)�B�6]2�mw-I�?˹�qLɐ/�R�H �;�sz6���1���O��
�䄍���io��?
ѫ�V�C2۝�ɪH�gp P�Rh��7}'BSZ��/�4X�i�)������0��W�Nx��I��W��)�x%�:�6�=ҷy����y�y}�/�K��$9c*�ǅx��'t��P�̘�*޻��J���O�鷱���9��}�rk)���,Wn��d`y��$x����r�a?�&V��B���?��D��ü�M,6�TV| ���	$�-���DOP J�(..��IWV�ݷǚ��Jp�����mj�2��8����bș���9������x��︬�����.����:��׎!���R�4Kʸ���>�Yd�3�I�J�|,L%sl��00N��T�����y	ANA ��F�|	�ߵIpE˝����\����I9�[:���6��U��Y�B�*��h��z�r^��>(�곆��	.���p�������rD^��p?�Hs릳��V߁�UN����;���eZ#O�j�^�܄��$=_��ԑo��=��%A0�]�1�⯙O���Z��Z��k͐~fr-ee̗_��k�p���%�l{�w�8f��V]��c�Y�u��`E�)|�r���`��r7M�Gᶚ��.�>X����ܮ�A�6��!O��,D��ٽK�EeQ������8�]b���/.-�|j���u�O�?8�T�5���F]ʓ���OD{&�wm�:�c/�s* �w#�i{��j�5����j��y��q[L�D����,�v�et�ʈ�}��b��YʵT�yY��\K )E���%��Ǽv%�ҩ�4ǫۗN�L���9���2n"�������������Hi��&��f�`�'���z� ��9<[��׿����^�_JΜ���r���o~�-Y�b�5�4���MDS���頁��RKi����ok;�7�~,����4p�h\����qr�n���S���ۙ����Q�˻q����ꨍ���N 5����w�3���M&��ڵ(Ϊ�S=���󳩻[�M��RrNU���l�>���qa���8�����v-��X7)���eQ'.V)��Fx��I��F�l�q"K��c�GG�^8��Ԝ敃��� �3�ܰl�/�Y,��:��_J�q��!�O�ӅL��<���t� 
S���\�C�&�զɧ݈��d�"wd��`0 �!�����}Pw�m�A(��.�"�*׈�R�q��#ћ��A9���{*]M�+w�A��R�I�{ύ�L�p_������&��O�8ND����O���x�R����ҏ��l���i�]��@��M�X��d'1�uk�?�+�"��:�%�{3LV�cg���t�Sc~Xu�O޸lfiޟ�y�8|�a~�~jn2J>
.5NM�JT�u�~e�k�s�	��)?����.o�`�Ԕ$�cAb��%Ԃml���=r�dc1��k?+lύ�f�yeQ�
�(Z���	B� .�O���x�0ff~&�%�n���˚�y��	��}�ܮR�v"H�Μ����KW��w�L�j��������bc,E{"TB"c"gb�wS|Od�3�H6�fu��]y�)�f?(U	�L�iA�����6�Vʬۥ�e��%��)��J���'�[�l���p�c�%!���>x�r�+��qz���;�}�㵝Դ��r�דi�!�@-��c�^�b��/�L��v�EA�75ŷ�(����� �,~�{r�V1 ��t!��V��f�f���s�K�G�a-8e�z{�Bss��	���%c��v&��fP�tv3I�'�;����R�k���`W�$s��������ь!���GH�Cv��sⅤJ����3�J	���kg�����#�-{@���Qݦ�``��	�o)
�A�@�lvN��׭�&|��P���k|���ܢ}+=�T��V��$�s�_���{�bj�<�����s�lC�9���
.��dvj��T
�z�J�z����~�����(�V~�0��6�64����{j��o3��A����o��z�U���8�]�����#�^f�����L��7#Tz��<���{��=�F�y�~�؟{}�y���A�g"
H7�;9��~�2`&��KG��02&�����h�YK��'E�5/y)fղ$���*f9�AԼ���R������30E��s�[�]�*�"?ru���(	!�v�w����iɃa��'��O�̨p�l��ǆ`�V@��r�+╋�L�xL�Z��]���nd����$	����9ܕ0ՕJ��[q�|�|�\��@d�r�z�N��ч�g��;�U��L*;�~�ܚsD_/���ފ.��\9�ЏEzL͕��F��k*~���~��L��b�5S�hg�d�o?di�R����/slx �~�I�2>q��v�-+�]��z�>ޅ��Ly}b��|��&O�y�`�uW'ɝ'�)<�������m^�P�t��Ml��w��É�@;*�HWۜ{B�ǣoA��,}�����1�IrPF�    h�v�(Zk�8�v�ݘ��?�1&-��� 藢!�[y_��� ���,��B�ր��~"p�ط0�$Rp�H)�%+nT�Ϥ��&�ͺ#=��k��_	3�>v�AQ��<Ob��ti�crx�<4(͏�|����a*$�$�^ D���Y߲͑��0�$���fO�A4'?�;�0�)�s]���X�Aٳ2y�=����K�j6$Nxh�')�.t��A��Rgue��JyH,7A�0|
zWT�c�L��Yx�o��'��y�b�����ۑ�M�(��%�7Sr�չЃ·��	�*O��n�8�J��P�/e�%�=�-�F�ͅ ���}��I��eJ�tW׷���H�Ha� �Y��x<6-�SJ�� �˲i1+>����4�`���Q�֓d��a�=_yS��NV̊��}-��`xf�*X
���Ŏ�?��eϝb��'9��ิ�f��~�����ah[�p��� :�#Bܓ�H�n5��9F%�v��#ͺ�&R6�ΓxZ�5wj00Y��\�E7����<~��p&Î�w�/����g��#���*곲tL@;$�7�8�|�ܵ��_v}YC�xݦخe����"�Jr��Xq%��Bh��3ϙ,�O��t�U�@�@�γ{cf����)ȵ���ٸ�ٖ�Xem�P�����r[X��[h1�^�?��8��%���B���\X�
��N-����Yє�k3�2�kՄ�־�����-�1Yw�}�-��G����yk&��9>ɼ�v�^�>EC�%J�9H�X6�1��X1�szzCAH���罹�8���T/b�/no�4���5���+���9s�Y��<���a�}A�ua%�֕�*�C�c�)TS�}ɭ%�2�����i�opD?:���4rЙ��3����W���0%b��It�H
5M��C�C>Ʃd�B�7�ՙ�o�)w!�Fx`%A�>���Si���׍)���r�]���	d�ݩ1߈8�)���Ty6���I��Qi%c���ה�u�tH�`�͹���`��+B�LysL���i�l:��ō�Ұ
j��o=K	�X=�7n+s��A�a�'����t��ŭnVn�1�ؓIa-����4��2�S3�"oB׈`���_y�)g�l&1?��Pjp��&
`q��*�-ᶶ�o���[�J!�ܓ�E7���M�ۊ��v='M�@���Fr���;��$��M�k��1qIJ��&�����4s�Oi1_��ߧ4Ot^�c�z?銎�����ZW}. �~���X������?��Kf��IӉ�E�2�Z]4��o)��${���|G����bs��^�5��Tl�g*��J��	wJ�����9�EYR�	��cҧ�|B���^ERW�4�o1g�
O̼Ԡ�T���e�Z�>E��� ����	���x]�;���76qnm>t�}�c<���eL�����������'e�k_�ޔ��������JQ�\����(-�SkxzX�{�Y>ɹ���m?��$<�j ��#��z!��mJD�#�hXgkL����]0�w�%.��~�	��@�;x�ɍ��'��Yi��4�}�����#]m3;�G4�F�F~�?����n!6��Lx�AJ@��b���_�[7�5Rg����R�>e��\��4�X�y��rP��ES�?d��ͧj�t�kk+Aٜٓ�TrFJ�蘋���h�8'p�`z�1+���$E�2\�0�y�%����`n`
�'��q{`c�pJ�.D*�R��7�Ͻ�4$����ǵ�q�,0' � >��>�,&�<o��׮�v�[���={pzK��&�p�x5B��U
���c��rn���#h�C�4}l��-Ap��~�~�Vm?:�5�����A�`ҙ��
��99��K\�P�Β�� H�<+�ֶv^V*����`Y(��V��b�+��I�� R 
0���t�iE0��~X���mb&Bq�y9m���|�ka��[m{O��/9UT�ҧ��s�D�@ 䲱��4翗��rۮy�a���)z׾�Pa9�'N��E�x��3��K���<h\�o���9"E�lD�C�־����g�~~��2o�t�dk�]�,��jAl�L��<����;�+��%�(XKc^<) RSLL��q���;� �6~7�)y3+g����]����!�S͜�������#b�4�a���x��D���>W)w��a��qxׁb�>1u��T���ȱ�G!(G#9��`��ug�6����`�c-=^�\��~�$��=����E�X��8rv�"s�r(+府"�~(D���w�Ey�G^��r88=aME~>��Wޔ�>=��͋�b������&z�R���]���Z*���G���ys��K�H�x�Ԙ�E���$D6�����ɗ��t���gƤ�fs*��S*�!��\��sLskR�\�+����&$W�����D���t�I�J��2k�ĵĜ���qL.Pb����0��|e�[4�ɿDA[O���m�d�r}o"7�D'j�?kx�A�9�����{�;�q'���,);r��6�p�E�t�P����O����d�G�X�V�WK)�!�a�$��V�Z.�ͧ.�8_6��b����(�"�¤+��4/>��h��LёI������L�A��z!�|����n ���;�_[5��w[X���ƂY P�Yڟe�k�|HT��$0�J֟Nwǚ�3p��g�}�7���z�����v��L�"�R��NL�RH���Ck�'�?��2*}�¿Hg�]6n�S�W1]>�GVO=0aq#w{�m�֣+N&g\2fi�:rj'�#SY{�w���6��IH�W�����"
��H��>)�R��%n���Q��)��A!m��s������_s�����^i�Q}jq�Y�Ȁ�6���5�A6�F�TRS]�d=�T��%�m8�spn�uW拸7]���خz���I����"'�0�l�vu��{?��U^aa��tI��^�+���~��4��lP��3���ɲ���Y\+��n\wD4�u5��g"�� ���BH|��E��X�y�O5G�@�\����D��D=6��HtRQ$�r�9���t}���F6(��Ke(A�8�烾zG(?�<-��D�qW���O�2v�b��ނv��+ꦤ^�r�� �}��&�T7���Z��D��{X�%�rUzU3K��>$�Y&��xK������l�w�gj�}~v�,�2����������;�Ul��j*[�Ҕ:*�������׉��q����P}�'m�����8�4�t�Ƶ~�-���r4ڳ9I���	��W+1�$/����y/�6�T�jI�$'p�I.�^2�ط@��V&u�V��$�b���/����پ�&˰tA�0!*�'x�Gmu��S���I:�>��x�?7>���&m˫BI�M4��|��7���d��6F�P������$��4'sHv�x˨�!5�Lo�j;4ae�[S�;JH/'�/�3�Y�灞��� JT�Y]��HeZ~
Y�`�cF�P+Sy��ռ-
�]ϕ.$��դ�'&̼���5d��K��.�V;I�%�L���A?rƒBo��'�nؿM�(��U��9�S���讛��ʂ���K�LI��-u��A
9�|�=��6d%�v��f�������#�kR�����f�!�qOd ���hc�I+�%������8s׈�-<���%��|�1�6IĨ��1�֝�W����<�!����I���f��_a/S�`��]4ɶ��VA����\�/��%O�-�N�m0��Ħ/"�L�>,���D訜i�����[�+�OY�/�U"�:H[��u[�-W�<����8��F���À�!w[7?�d�^�w��&뼉thM�J�;!�A�SW�9)�'��=���4Lz��o���iɸ��)�s~��H��e��s~@e�)�u���,a�U_'��LU�]��i@Pd+���OvI��~?n�����:v���0U͘�6k`��{�'�p�}ٕHy'�XNf�WN�X�o*���������G��Y�k�nrI8泲���ё,7U�    Л[���#�\4�l�[npvB�j�=oe����� U�A�Fyx~c��S�ݟ�fׂ�TJR����B�Z�ʡq0���Z�`��ûX�cEW��0�R'@y?�55c�q�z�\���q���)����^O2i��o7�č��g�y3[�$�I���W�	�Ɏr�#l���/��������x� ʱ�Z(�����]��=^�g���X��j���s��^k�{���2���s
׺v�KJ����oJ0nσ�Lykx��{j�d�|������+���0
ƣ� ���6W�Jy����(M� ��m��o��M��vh#��y8��.<!��C�ȯk]-�^���$�����D˿�Y�ZC/ɶ|�~���s�%�p���_��)$oj��@��2k);���W��H=?��X��DVo9P�vjhX|�߿�E�Ϋ�ͧ�+CN��p1N�_I���������q����z]+�����5���Y�G�<�f��ÿ�~�ޭ��~Ĺs�s��>X�#����o���$���Ӳ�R���!{�e���<G#�lo������n}��c��Ȅ�n=nR����)��0���_QϾ�8W{��Ͽ�^��n~�Ꝓ-���=���ҁ���2^��������ݴ�SyQ ��\Ey���������r�Y��_�z��~2���O��fsC�l�¾��S���M�T�\�W��R����IK[�t8��䄠�=o1Q��@��+��cm!����w�x	�l��S��b� Y��c���NZ	Fk��b#�����ߤ+�X�攷�*�@��ֈA�I0x����O�Tz6|���v��dd� L���Skʁ�F�{{�/�GTA�:�c ;�d���J��_�Q
�ۺ�Ic37�YĴ�$=&�~�W(r�'��a��ҲMl�rLZ�?��4��$/�,Az��ƈ�$���#�k�rg�-�=j�m^����.c���@�ď>�J��
��l9I�\���⣩�k'����t�a$���������H�&@Ò7��?n�ֹ3y9mh3 �\� /0���e3}b�)=,dj���{�c3�H��YY2b��+����ޞZ.Ч����a��MJ.�,��Ps6bɨ�?����N��N�3���@*w�0F.ϓkQԃ���������C��[ʍ�E\�~U�/.��P�ݹ�`�:��s��i��s@�)y�Ӡ�4�Q�4��t�d�{���_ixd�����g�%��-�?g������ ��W�
K51h�l=�Y�K�i>���mERK\CQM΁�����0�r'��9OJ��Q^��Ir:�U.C���cb޹!�܍L�231>��[�W�oQ{�zy?����	����fg`���F��>��l��k"��"x߼9Uğ��N^�NA�KMLL����m�#��&JJ��@����
�En� J[\(�ח��!lMy	j.7+�*;~&���G~t#���'�U�
���NC�H�}�w������'	T�/N�˾q ���EνJ(u;�%����H��%=�5o�����گ���X*R��p"��8�`IV��U�F!��~T&��2P�%��"yi'�!��\��"��:*G;_����( =�Po���ܾ����K�-��JFb��6�b��a��F*�j���V�������s,G�rt2���d��6��@�`VR���NT�%�ejZ{(��;�&�qv�6h=�o`�$�*!�椙Z��ė�-����{���l���G���B�6�7+0��|�,����ϙH���l�n*���1c�j����U?�_|Ka�l� �����g&>r����;Ia�����$ ���Q-s�T�7]���i��J�o�h��[�{���ئ�#P�+��3��*�Q�T�,�����t7_�+cln�"Hp�⻆W_��;2X��t@�cAwA�
��c݃?%6n��ѭ��~9&x���������V�Y%��`�^̟z����5�Z�����%f�q6bxYM�)�Y��L���6��7-1|��c�������<(�>�V��� ~*�lv�9v����ɝG10�B���H,��y����:k���PͶ�>�y�2`��EB@�?�h�I�<�����￲H�s��~��w��t��D�HEaj����;6G��������"k-��0).n�����o1�j:y�F�m4^Ve��Z��;{��/�!X��M�\��U���:��B��p5�V�<s�z"��W���I/��]��\�/��!c�/1�}�zb�n���z�̓TnN]P�@b�~ֲrY6����&0��5ټ��4�cS�[�\'�{WqQ����7���X�y[[?���6p���3�Un��UJ�(����Xj�l9�y���[�����\��
faʙ�l����ȚG�pT�J\����ݖN���Kr��G�ɀM�u��t���zYV���auC�'A���Ј��S��W~8?��cm��2��������%�?�8'��,{?*�ӄ�R:&@�V4_K���7���U�l'�_��o��wv+�9(!��no���g����-g�J�S�:���RhY������0>pn�%�h���~U��rsm��%��6o����n��ϓz�WM�͆>� � Ղ��9�1�.i!a�}�L�D��"&��Β���+�Q�����+);.������V���=kY�j�ņ��̦T���\�D��Ae��/�qW[� n]�`R���+d)|g�z�/�d���IO�6�w��Խ�_��;\ur~8�O2X�kQ��[%B��u�x�}�C�MTE¹���	G?l�HO��Yz?�(���I���eԛ�%��+;��,���$����Y���<���;ⓖ�5xh>��S,5��������=��\]Ԗ�2Eu�XN�v�Ev[����w�K���6�-qjn� n�Y�ˍ[V�e�w_�V������8���Pu�x��S���nm{Y
��}\�2!7��N�Vj1i�����ō��n��LN	 ���%�{��v�����Kӥ�>�3qMz�qh�x �m$�[~��ЙE��R��R��$�r���hf:�jOA:�Q��#���</�6^I�������B�$�(��d�@�y���
��.�R�N�5��􎊨��I��r����G��ן
�.����{�yg귏F��$b�FL��BH;�]�s��B6*Yh��[³��/�ښX=B2��'g}�+Ib3M�L=��[)54C��Ǔ�Lk�_�>�+ Ք�>��Q��ť5�e��I�삈�o<��ج��F�60�r�</���6įq�Ϳ9��0kP�!P
|�DdفL��y+H^<x]2�7C��e;�@w����H��jU��E��l�ƫ�8�b��9��u���C�A���M
�]C�/��Z9A,�O�7�ż}	J�Ey��RK���Ԟ�Y�Ļ�V�jl�S��	��I.+t�_�� �sn7�qT2�tl3�7'�\痧���?^[�0� CG`s����"�����p@�c�w����&?J/󵞜���4\���23�(Fg��o%����tumh�Vt7\ߛ�Or�e�P�:y��F�c��إ����/lu��Z�A��U(*��������㲱Y�G�k���"��("R�| �F)��;M$�����*���q"�㶯�V����xs��X��1ydLn�f-���Խ�̈́|�\�i9tk�G����L:H���de-�����
	ؾ~�ۥ���t�HYX�QC��=z�s�͠��5�������.�$��w%)��tv����k�^�5���td�*i��l	�q�W�AI󸕡���P>�R\:���X�J_'w�ɜD�c?�%Q&���&��|mrߪ+_����!n����<��.(?ʅ������P�	]o���#ʓ���R�'e�Me~lwy���ȵ�zkP����v �#@�b��Ԇ���Tfr�!��v<i9Wif%�б��k�R2o��������\��Hj���@���a�P?�LR�r�α?�K� �  t�Hp`��R��%�i���Ki���X;ߒh�Rc���{S�@4\L�h�����f�\x���m����`�}��6|9�./+�{��K�K��9U�N?T�}��J��k@��|Byr-�����z�Zf�c,�<���W��I��6>�+���S�������V��̯t���P�X�i&x�s�Q9u8o�Hb#E�w�-Q���5��B�/��'�%6�j'}��4~����N��ɧr.@���)���_I�VFs��pcd��d��1�O��� ���l(�"�b
	cC�ɫ�O����> y�s�ou��=�S��P��,g�H.2�<�������piF�N{����Q�bR���a14p�X#XyI�=��#k�уR�bv��3"z���S�%���D����Nm�d�<��:�{��R�1hk4�?���jK�f�XnLM��Uw᙭/9��� <����sZ'?,$����~���@��1�C�"��{�������:�q��n�MLRw)82B�,�Dr�{/��T�ۏ$|sN��Y�L��x�О����b���d�{f��W ��6幔�0Km9rh��ϖ�H�3��n��^Kfǣ$�1�kZ8I� �u�ݗ�|���B��W�(�*���uZ+��0�M�/[���Ѽ9@�;iѵ3[9!��<�s�*=��ܬ���;�n���P=f����O���n�ު��A����@Mnʧ�����X�� }r�O�L�:�Sw��{?�'y#���j�6d����C!��i(�C��lA�!�5	*��x���>K�'y9�B�>E�����s�Ȭ��W��J���+��O�:Њ���}5?#%��/.��$�;(�'�^3����d�d���U�H�+k��B�#f*�v�?6N���Vc����t�W�)A7?e"�^YVR��7�񝿯��zI�I�2|�@$�nX�87���j�)D��C�<eZ�7UK5�ϗ�$>p�Ҧ���==%�d�烙D�Pkh�/�c:�T6���w|OTj�AgA6�v���Ƹ��}�%M�����s�}S�I�ᛘ@�g�ʭ:�ضt�,�]l�[����򉏟O��5��n��.�F��F��r��ѳƲ��،(�{cMC}# `��$��r�9�G�&nyN&���[���YԒ	�_=�W�1��9��?��\ j ��kbNS����,�L�������W�*pl��0��3O/� � '�:!	������ 	K������3g�����ꄋ�:�)b�ĉ�s}�b����[d�E�z�[u��c�ۖRp3�lE�M ���'���m�<���q�+-�PJ0��y�ө��TP@JbPm՘t��r�AF�o���6c�|�="���2 �8j�As,��	�f6�����\B��e�w�7ȁ$9g�VX�L�^]��S��orbn�32ڝ�E.�u�^����^�^N�b��*'��,�4��)����R
e?�~�e�T�[Ң<��C?7��(v�b�������ewkx�}�J��M2|P�Z�����s(���л�$��r�6�À8�Wy�r̈́�%��>�~:=��;�,�ɱͭ��!��C�"Ny�Ξ���#p��lt��DS��Vb���qߩDs>R-$�륦f
|KIw�v�U�#�pj�!�d���tݹ3�}1�sԒ|�M�a�^�<rf�F�K�6���g;Y��D(�Y^�W��b�Ʊ'u.��y�,q����,���w����R8�.�죿�Jғ8{�ϛ�̻��v̆���:��P@�j�/���1hg�H���s}��	H��)y�FמJjF��xyh��ss�E[�6�rZ[�����P/��CTaN�,j+����}�� p���f�Yq>^Ū��5Św7�'?E�:�qH960��S�jT �<z��r�����}o��qNk�
{��
d�1��R�^�=9����Gr;]k��
�1�/U��k�|�N�g��"�q�}�
���L���������㭸����I�tc��b���N���#k�TG�x^BE�yI�9���N��%R����WG��#�� ��6ʩ}@��KY�P���s	���Ӟێ"Ob��>%0�	 ��%p֨���.HY��M��p��H1�Z[�5ܚp��D��I�%���5�"�E¶��U��RH�
��b[�(i�ߥ�j��-�%�[�r�k�=^�x���b���sXu1��#JU��PA��fj���u�I��6Í5��D�ci��ۑ�V�cy�CL�&��3��u�C�ߦ��B��h%���r ��D�O
�%��ޗ�OD3;8g9g�%֪3�x��/ۻq��U�Zy}^]��4�$9�^+��i�[
$o��͹��&����41�i�Y�W��VK�W�����3b��&�l�����h�re��o���5�VS� ��	J�V�=�$�eb��~$�n�w�6�)[�� 2��\_�v��gJf����%hu:Y(QW��	����ϣ�����i�K��T�Ud���~ �o���u�\�T��T�L��@��SE��n���Ϛ"���V򊩽���=��%
���II�s�5��y5��ݭ��r�?ΗHe�K��P��G�O���N�%��� ��VLu��7������%���RSKE���x�(�Ы����qZ��gr��9/I"��Nsϡ��5͇������KLuG���y　�%A�N*��R(?dsF0�۹���|� ��6��֜H��H='Pa݋�W1s���?�!���<q���+�<P[�б ���}G�׬Q����^�Z*I'�FՂ�Y���l%_u��5�����΋Zo��jyyOA�qV�=�K	���0�ǺM<!�O�f�b�DYbC\�	l7��~b��k�K��<]4u���}�,�[GV�<R�އ�I��JF'h:�:&y��n|�ғXd�O��V�ͨ��ː>Q�u_^ڼ��*� �fN5�‪P-O��Ϯ�ɫv?1/XlՄ�&�8�!�-Va���\/�<���y��al_J��H�\�0�� �K���8�ЇTLA/��-�?��sY!$� Í�̹Y���x����,�2L��c�Z�ƾLj'ze'x�*���$��5�m(�ז�=/a'����	+ML㫕�̔<���d�F�4&��ă3�9�ЎH�W
�dH����q%�j>��~�:ݔC�v|����yǖ�l���0���LmNs�c��ik0��"F��Wro��U��P���g6���&�䯵�&`�����Ѣ�k�$�q�i1I+FE����[ �@�^�s���
!��}`Bê��j�'�È�z�[l� �?\x)U~.����S��a�XGi((�I�|9v)��(�
g�a�e�iɢT�L�[C������ �1uߨ52�-�|Tn ;I|vܲDI+�8��AM�ܗR{b��޹�l� Ƚ��,�rOi}zTn"ʬ��[Ol���y	������݆��ӌ�)e�<T��o�I޽7IAy��(��sM�i��r�䝢��l��"G�^&͔�:[�#�ª�E@f��k~�{0�\A��u⻝Oo�/X"�(A�|����W�L�}�sX���POL\�ܓ<���>)W�2�]��E{�<�-��K����9�G�̠S��T_6�]�<�9�b7T�w8rL�'r~y��U<K���kp����NR�7�ג.�v
/�4��p>��'ꚋ�4'n�?A޽8J�埤�DIo⵭6����8��G�3�Wk��^W����̌�p 20��Ly�W�E���v,������/�O?o��ݩ'9�R^\���h`%<:��,	!+�e������iz���P_��W����<���P��
&~#��+I�\c���
N�~0yR�?^aц��C��g(��G��	��$�q�B&���me���c6a�yJ�{اO?�q��������O�_���|�o��m�?}��o���4}��o��Ӳ-������� Vi��      �   ,   x�3�LIM��M����T����I,����2�����4�b���� �.
      �   �   x��α
�@�z�+�r��e=o;ӝ�	��X��B���M��F%0�<fe<�s ������>� $�PnD=�q2bL�%NPJׁi�i��(��Ȯ�v}�P\��S���`N�E$��HL9�U)���5���95��$�E%      �   �   x�3�t�M-�LN�w���,�L��*M�SH-J��4202�5��52U00�22�20�2�kp,JO�+��#�ň��ŵ�$1%�X!4/H��g�e��ZZ�_ �V�xx#{��La�=��sKR��h1�2�;-9#3�4��h1�25����� #V�      �   s   x���!�0Pݞ�@�ߍ�A8�� �pz6@�H�T���&�(�)u�ǲ5�'A�Vb߈&E���TGK�C��Qz7W���r��������՛���M��8w�|.s,�      �   �   x���;�@�N�x5�~9B�(p��m�Hir��r[THo� �j�$$t�<_�c�_R�����
�:	gR5���8�F��G�4_*����)��Tz�y�Ǯ��df�1��P"�b�d����8r�O�k�q
��z��R�J�n�T%�����N�      �   o   x�3�tv�ur�,��*M�SH-J��4202�5��52U00�26�26��".#�W�Ýn�~���C�s:��x�RnUn��|x�o@hA�P��;���'F��� ��>�      �   T  x��T�N�0=;_����8��P	��`���8�]wM̺Ia��;n�Rj��*J��{�f^̕&�W䷇%D´&�xt1�i�r0��+��'L�pIkd�e�x�ʸ�IY袮�fù�>,HU�U]W)�����Esz��5~i�iCn���a
���H�׹$�V��.��.t�:O��U;0E��L�
�!����&�QJk���t�d5B�5�|�67sRW��͢)�7KW
�8�����l���B	�A��ž�sY�Ez:������ޑr�q8��a:t8��졁�!��b)��I�ކ6���4t=X����I]P�I�"gK� ��f۝��h��,:��:�X�xJ ����Pu���}}�]���,��䧴8V]�TuY4���#�R�m�C� �T���R�9��e�^�.���3��l�����=�MY7��Y���5FR9i�p@�:�W(kD�+1��9N]��N=�4]�7��+�0�7�҅ j�3]o������0��|A^h��H��ݑ 9�<�;�Π��Q1i���l8�eQ|A&&rU�g��*!ލx9x��pC6��8qk��#b"9dsP}Z�M��Jg�y�e� '^�      �   =  x���Mn�0���)|�D��f�h�(4�l�RZSW�v�[��X'$�Ȧ�㟑��7�d�
1$얐��W23�uGhL���P?�A��S	n�������s��Y���?9�ԇl�,�<�/��U>eC(��~T-y0ִ�´��b�K���Xx�2�`XM
g�O�R��q����ͺ����kF��
� O6�d�"��/�fi�^����s�ϓ[���V�ޛ�E�bZh�8�����'�5��7HC��`�}L7h5�BIޟ
�P�����K)�В�-˶>vno쾲8�è�3�J'�->v��N�v�{�n�y����      �      x������ � �      �   6   x�3�t�Qp��qt��2�tTpru���2�	r�vsr�s�t����� ��
]      �   �  x���Kn�0���s×$rg#]$p��N�.��-6Q!��Lf��� =E.VI���+B�����L������ޭ��%�&��j��!�'����YހMus�:5v�:Aq�R�nw�z�w��
�8_�^p�DFTF��b�Ʉ�C8v)�:�[��s��^�Pׇ:b@��s 9�@�� ��mT����0J��<u#AWU\%�2�4���������Cx[{<%��z����tN���!��]�/Ɍԯ(cNH�(i��u%3	�("���o������󮷇&x�[��\���/��H�\�"�po����}|���}z����r�������E�(��R��?;(��{�@j�y�9�
X�.�������l�B�+ߞ+��y{�$]���������J�<˲���      �   s  x����n�0���)|�Bl��t���iӨ�\&`-H�����o�g�u`a�fWmS��3����{B�E*Ś|2�������a�;�9�@�J�Ǐ亇�~2�l�`B�1}&4<�:aj���}���҇�VВ���mK�p�%Bh%���r��9�kSp��b��x�b�#%����Z�8��Uփ�,��O�~-��5�nK4-�w]�&����/궃���Om5 ����%a��؏�:ª�F���,m���MmYZJ.��iOP=�P�}���w�+JQ��]�"�]E9y\���1�6m�)��f�X�-�l`Sq�!��,�5Nx���XN�0��^[��5Y�Bfg�X,y��$}9��7���UP�[lc��{��4����~��+�ng�Qj��Z������H�b�4;�xZ$͋�|4W$�º� w:o�C�����]/��@5�lWF�b��ozAb���L�H5D.�{���`)���Em\{��<LX���j̝���qPC4^L��=%Ãu�s�;>��0�� ��S��܈�`rX�~p���)2!*���ݘ�<�f��^��q�a��W�o۸��̏�*$D"�$���D��ڏkm���I�>����n���      �   a   x�3�42��4�450�4�455��*M�SH-J��4202�5��52U00�2�"�?2�2j�j4k43į���ш�f�)X��Fpc���� r#�      �      x�3�4�4�4�4���#�=... >�      �   �  x���Ks�0F��`�6B?�Wc7`��t�hl����~}MJ�β��ܑ��{�tϥH��i�s�Bh^D��߶�)Uڄ�1jS���I삠��Tأ��B�{��Gq0�K�K�����q�:v��L A�< �@Qw]�Al��h310�T�x"��y)*�X�^�X��(NJG�P���3r	s�ML�#�5�k��ql������o �2����E��J�˱��U�ū���Y.{%��B���Y�$�5��>_#�;<��.(yޚ
-.Q��"Ե���gBb"ע�t�b0�:������p��η��%�󝋏&䀘��U��u���{���ljH�$>�E:�ގ�5��]�VT��7=5h��D(�xd����#;����Vz90Wq����Q����Q"i������nC��v1��/��8���P��[~�������X����]d}ym"H	66�0�_n��<      �   �   x�}���0���S�6������Dc�Y�t�@kJY|z�bI�����±|�cN]\�.w��HTs ]۲���޾O���iti�5k8Ő��dYh,WV�� ����{us!7��d�F6Zo|i�FVd6��%O�?Hs9%K�Կ���G-^m�^�k�~�.�+q�H�B| �]�     
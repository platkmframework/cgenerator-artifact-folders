CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_id_seq OWNER TO postgres;


CREATE TABLE public.category (
    id bigint DEFAULT nextval('public.category_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;


CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.country_id_seq OWNER TO postgres;


CREATE TABLE public.country (
    id bigint DEFAULT nextval('public.country_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;


CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_id_seq OWNER TO postgres;


CREATE TABLE public.customer (
    id bigint DEFAULT nextval('public.customer_id_seq'::regclass) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255),
    email character varying(255),
    cellphone_number character varying(255),
    address character varying(255),
    job_title character varying(50),
    birthdate timestamp without time zone,
    country_id_fk bigint
);


ALTER TABLE public.customer OWNER TO postgres;


CREATE SEQUENCE public.customer_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_order_id_seq OWNER TO postgres;


CREATE TABLE public.customer_order (
    id bigint DEFAULT nextval('public.customer_order_id_seq'::regclass) NOT NULL,
    description character varying(255),
    customer_id_fk bigint NOT NULL,
    order_date time without time zone
);


ALTER TABLE public.customer_order OWNER TO postgres;


CREATE SEQUENCE public.product_order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_order_details_id_seq OWNER TO postgres;


CREATE TABLE public.customer_order_details (
    id bigint DEFAULT nextval('public.product_order_details_id_seq'::regclass) NOT NULL,
    product_id_fk bigint NOT NULL,
    order_id_fk bigint NOT NULL,
    quantity integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.customer_order_details OWNER TO postgres;


CREATE SEQUENCE public.municipality_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.municipality_id_seq OWNER TO postgres;


CREATE TABLE public.municipality (
    id bigint DEFAULT nextval('public.municipality_id_seq'::regclass) NOT NULL,
    name character varying(150) NOT NULL,
    province_id_fk bigint
);


ALTER TABLE public.municipality OWNER TO postgres;


CREATE SEQUENCE public.my_seq_category
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.my_seq_category OWNER TO postgres;


CREATE SEQUENCE public.my_seq_country
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.my_seq_country OWNER TO postgres;



CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_seq OWNER TO postgres;


CREATE TABLE public.product (
    id bigint DEFAULT nextval('public.product_id_seq'::regclass) NOT NULL,
    name character varying(150) NOT NULL,
    code character varying(50) NOT NULL,
    category_id_fk bigint NOT NULL,
    description character varying(255),
    price double precision NOT NULL,
    vat double precision
);


ALTER TABLE public.product OWNER TO postgres;


CREATE SEQUENCE public.province_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.province_id_seq OWNER TO postgres;


CREATE TABLE public.province (
    id bigint DEFAULT nextval('public.province_id_seq'::regclass) NOT NULL,
    name character varying(150) NOT NULL,
    country_id_fk bigint
);


ALTER TABLE public.province OWNER TO postgres;


CREATE SEQUENCE public.supplier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.supplier_id_seq OWNER TO postgres;


CREATE TABLE public.supplier (
    id bigint DEFAULT nextval('public.supplier_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    office_phone_number character varying(50),
    cellphone_number character varying(50),
    nif character varying(50),
    register_date timestamp without time zone,
    active boolean NOT NULL,
    description text,
    country_id_fk bigint,
    province_id_fk bigint,
    zipcode character varying(10),
    municipality_id_fk bigint,
    payment_type character varying(20),
    present_madrid bit(1)
);


ALTER TABLE public.supplier OWNER TO postgres;


COMMENT ON COLUMN public.supplier.payment_type IS 'Efectivo
Transferencia
Ambos';


CREATE SEQUENCE public.supplier_order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.supplier_order_details_id_seq OWNER TO postgres;


CREATE SEQUENCE public.supplier_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.supplier_product_id_seq OWNER TO postgres;


CREATE TABLE public.supplier_product (
    id bigint DEFAULT nextval('public.supplier_product_id_seq'::regclass) NOT NULL,
    supplier_id_fk bigint NOT NULL,
    product_id_fk bigint NOT NULL
);


ALTER TABLE public.supplier_product OWNER TO postgres;


CREATE SEQUENCE public.supply_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.supply_order_id_seq OWNER TO postgres;


CREATE TABLE public.supply_order (
    id bigint DEFAULT nextval('public.supply_order_id_seq'::regclass) NOT NULL,
    code character varying(50) NOT NULL,
    order_date timestamp without time zone,
    description character varying(255),
    supplier_id_fk bigint
);


ALTER TABLE public.supply_order OWNER TO postgres;


CREATE TABLE public.supply_order_details (
    id bigint DEFAULT nextval('public.supplier_order_details_id_seq'::regclass) NOT NULL,
    product_id_fk bigint NOT NULL,
    supply_order_id_fk bigint NOT NULL,
    quantity integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.supply_order_details OWNER TO postgres;


CREATE SEQUENCE public.tutorials_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tutorials_seq OWNER TO postgres;


ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.municipality
    ADD CONSTRAINT municipality_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.customer_order_details
    ADD CONSTRAINT product_order_details_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.supply_order_details
    ADD CONSTRAINT supplier_order_details_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.supply_order
    ADD CONSTRAINT supply_order_id_pk PRIMARY KEY (id);


ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_country_id_fk FOREIGN KEY (country_id_fk) REFERENCES public.country(id);


ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_customer_id_fk FOREIGN KEY (customer_id_fk) REFERENCES public.customer(id);


ALTER TABLE ONLY public.customer_order_details
    ADD CONSTRAINT customer_order_details_order_id_fk FOREIGN KEY (order_id_fk) REFERENCES public.customer_order(id);


ALTER TABLE ONLY public.customer_order_details
    ADD CONSTRAINT customer_order_details_product_id_fk FOREIGN KEY (product_id_fk) REFERENCES public.product(id);


ALTER TABLE ONLY public.municipality
    ADD CONSTRAINT municipality_province_id_fk FOREIGN KEY (province_id_fk) REFERENCES public.province(id);


ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_category_id_fk FOREIGN KEY (category_id_fk) REFERENCES public.category(id);


ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_country_id_fk FOREIGN KEY (country_id_fk) REFERENCES public.country(id);



ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_country_id_fk FOREIGN KEY (country_id_fk) REFERENCES public.country(id);



ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_municipality_id_fk FOREIGN KEY (municipality_id_fk) REFERENCES public.municipality(id);


ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_product_id_fk FOREIGN KEY (product_id_fk) REFERENCES public.product(id);



ALTER TABLE ONLY public.supplier_product
    ADD CONSTRAINT supplier_product_supplier_id_fk FOREIGN KEY (supplier_id_fk) REFERENCES public.supplier(id);



ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_province_id_fk FOREIGN KEY (province_id_fk) REFERENCES public.province(id);



ALTER TABLE ONLY public.supply_order_details
    ADD CONSTRAINT supply_order_details_order_id_fk FOREIGN KEY (supply_order_id_fk) REFERENCES public.supply_order(id);


ALTER TABLE ONLY public.supply_order_details
    ADD CONSTRAINT supply_order_details_product_id_fk FOREIGN KEY (product_id_fk) REFERENCES public.product(id);


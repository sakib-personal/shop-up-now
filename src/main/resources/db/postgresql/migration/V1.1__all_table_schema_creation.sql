-- Table: public.addresses

-- DROP TABLE IF EXISTS public.addresses;

CREATE TABLE IF NOT EXISTS public.addresses
(
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone,
    id uuid NOT NULL,
    address_line_one character varying(255) COLLATE pg_catalog."default" NOT NULL,
    address_line_two character varying(255) COLLATE pg_catalog."default",
    apartment character varying(255) COLLATE pg_catalog."default" NOT NULL,
    city character varying(255) COLLATE pg_catalog."default" NOT NULL,
    country character varying(255) COLLATE pg_catalog."default" NOT NULL,
    province character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT addresses_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.addresses
    OWNER to postgres;


-- Table: public.customers

-- DROP TABLE IF EXISTS public.customers;

CREATE TABLE IF NOT EXISTS public.customers
(
    date_of_birth date NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone,
    id uuid NOT NULL,
    email character varying(255) COLLATE pg_catalog."default" NOT NULL,
    first_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    username character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT customers_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.customers
    OWNER to postgres;


-- Table: public.customer_addresses

-- DROP TABLE IF EXISTS public.customer_addresses;

CREATE TABLE IF NOT EXISTS public.customer_addresses
(
    address_id uuid NOT NULL,
    customer_id uuid NOT NULL,
    CONSTRAINT customer_addresses_address_id_key UNIQUE (address_id),
    CONSTRAINT fkr1slolu32ed39bkvk90p6qrn4 FOREIGN KEY (address_id)
        REFERENCES public.addresses (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fkrvr6wl9gll7u98cda18smugp4 FOREIGN KEY (customer_id)
        REFERENCES public.customers (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.customer_addresses
    OWNER to postgres;


-- Table: public.product_categories

-- DROP TABLE IF EXISTS public.product_categories;

CREATE TABLE IF NOT EXISTS public.product_categories
(
    created_at timestamp(6) without time zone NOT NULL,
    deleted_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    id uuid NOT NULL,
    category_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    description character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT product_categories_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product_categories
    OWNER to postgres;


-- Table: public.products

-- DROP TABLE IF EXISTS public.products;

CREATE TABLE IF NOT EXISTS public.products
(
    price double precision NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    deleted_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    id uuid NOT NULL,
    product_category_id uuid,
    description character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT products_pkey PRIMARY KEY (id),
    CONSTRAINT fk_product_product_category FOREIGN KEY (product_category_id)
        REFERENCES public.product_categories (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.products
    OWNER to postgres;


-- Table: public.inventories

-- DROP TABLE IF EXISTS public.inventories;

CREATE TABLE IF NOT EXISTS public.inventories
(
    quantity integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    deleted_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    id uuid NOT NULL,
    product_id uuid,
    CONSTRAINT inventories_pkey PRIMARY KEY (id),
    CONSTRAINT inventories_product_id_key UNIQUE (product_id),
    CONSTRAINT fk8drmqyx629j3oo8ct9jnc5y3y FOREIGN KEY (product_id)
        REFERENCES public.products (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.inventories
    OWNER to postgres;


-- Table: public.discounts

-- DROP TABLE IF EXISTS public.discounts;

CREATE TABLE IF NOT EXISTS public.discounts
(
    is_active boolean NOT NULL,
    percent real NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    deleted_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    id uuid NOT NULL,
    product_id uuid,
    description character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT discounts_pkey PRIMARY KEY (id),
    CONSTRAINT discounts_product_id_key UNIQUE (product_id),
    CONSTRAINT fke3tqxsyxv7qcy8uvf2lns1hx8 FOREIGN KEY (product_id)
        REFERENCES public.products (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.discounts
    OWNER to postgres;


-- Table: public.wishlists

-- DROP TABLE IF EXISTS public.wishlists;

CREATE TABLE IF NOT EXISTS public.wishlists
(
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone,
    customer_id uuid NOT NULL,
    id uuid NOT NULL,
    product_id uuid NOT NULL,
    CONSTRAINT wishlists_pkey PRIMARY KEY (id),
    CONSTRAINT fk60mulb9dr06pbuur46ywfp8fk FOREIGN KEY (customer_id)
        REFERENCES public.customers (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fkl7ao98u2bm8nijc1rv4jobcrx FOREIGN KEY (product_id)
        REFERENCES public.products (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.wishlists
    OWNER to postgres;



-- Table: public.carts

-- DROP TABLE IF EXISTS public.carts;

CREATE TABLE IF NOT EXISTS public.carts
(
    quantity integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone,
    customer_id uuid NOT NULL,
    id uuid NOT NULL,
    product_id uuid NOT NULL,
    CONSTRAINT carts_pkey PRIMARY KEY (id),
    CONSTRAINT carts_customer_id_key UNIQUE (customer_id),
    CONSTRAINT carts_product_id_key UNIQUE (product_id),
    CONSTRAINT fk8ba3sryid5k8a9kidpkvqipyt FOREIGN KEY (customer_id)
        REFERENCES public.customers (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fkmd2ap4oxo3wvgkf4fnaye532i FOREIGN KEY (product_id)
        REFERENCES public.products (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.carts
    OWNER to postgres;


-- Table: public.orders

-- DROP TABLE IF EXISTS public.orders;

CREATE TABLE IF NOT EXISTS public.orders
(
    status smallint NOT NULL,
    total double precision NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    customer_id uuid NOT NULL,
    id uuid NOT NULL,
    CONSTRAINT orders_pkey PRIMARY KEY (id),
    CONSTRAINT fkpxtb8awmi0dk6smoh2vp1litg FOREIGN KEY (customer_id)
        REFERENCES public.customers (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT orders_status_check CHECK (status >= 0 AND status <= 4)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.orders
    OWNER to postgres;


-- Table: public.order_items

-- DROP TABLE IF EXISTS public.order_items;

CREATE TABLE IF NOT EXISTS public.order_items
(
    amount_discounted double precision NOT NULL,
    original_price double precision NOT NULL,
    quantity integer NOT NULL,
    sell_price double precision NOT NULL,
    total_sold_price_amount double precision NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    id uuid NOT NULL,
    order_id uuid NOT NULL,
    product_id uuid NOT NULL,
    CONSTRAINT order_items_pkey PRIMARY KEY (id),
    CONSTRAINT fkbioxgbv59vetrxe0ejfubep1w FOREIGN KEY (order_id)
        REFERENCES public.orders (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fkocimc7dtr037rh4ls4l95nlfi FOREIGN KEY (product_id)
        REFERENCES public.products (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.order_items
    OWNER to postgres;


-- Table: public.payments

-- DROP TABLE IF EXISTS public.payments;

CREATE TABLE IF NOT EXISTS public.payments
(
    amount double precision NOT NULL,
    payment_method smallint NOT NULL,
    status smallint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone,
    id uuid NOT NULL,
    order_id uuid NOT NULL,
    CONSTRAINT payments_pkey PRIMARY KEY (id),
    CONSTRAINT payments_order_id_key UNIQUE (order_id),
    CONSTRAINT fk81gagumt0r8y3rmudcgpbk42l FOREIGN KEY (order_id)
        REFERENCES public.orders (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT payments_payment_method_check CHECK (payment_method >= 0 AND payment_method <= 4),
    CONSTRAINT payments_status_check CHECK (status >= 0 AND status <= 1)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.payments
    OWNER to postgres;


-- Table: public.shipments

-- DROP TABLE IF EXISTS public.shipments;

CREATE TABLE IF NOT EXISTS public.shipments
(
    status smallint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    shipping_date timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone,
    id uuid NOT NULL,
    order_id uuid NOT NULL,
    address character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT shipments_pkey PRIMARY KEY (id),
    CONSTRAINT shipments_order_id_key UNIQUE (order_id),
    CONSTRAINT fkrnt4wht95lxxplspltrg9681s FOREIGN KEY (order_id)
        REFERENCES public.orders (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT shipments_status_check CHECK (status >= 0 AND status <= 5)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.shipments
    OWNER to postgres;


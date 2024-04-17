--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)

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
-- Name: action_mailbox_inbound_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.action_mailbox_inbound_emails (
    id bigint NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    message_id character varying NOT NULL,
    message_checksum character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_mailbox_inbound_emails OWNER TO postgres;

--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.action_mailbox_inbound_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_mailbox_inbound_emails_id_seq OWNER TO postgres;

--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.action_mailbox_inbound_emails_id_seq OWNED BY public.action_mailbox_inbound_emails.id;


--
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO postgres;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_text_rich_texts_id_seq OWNER TO postgres;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.friendly_id_slugs (
    id integer NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO postgres;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO postgres;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: paypal_commerce_platform_sources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paypal_commerce_platform_sources (
    id bigint NOT NULL,
    payment_method_id integer,
    authorization_id character varying,
    capture_id character varying,
    paypal_email character varying,
    paypal_order_id character varying,
    refund_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    paypal_funding_source integer
);


ALTER TABLE public.paypal_commerce_platform_sources OWNER TO postgres;

--
-- Name: paypal_commerce_platform_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paypal_commerce_platform_sources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paypal_commerce_platform_sources_id_seq OWNER TO postgres;

--
-- Name: paypal_commerce_platform_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paypal_commerce_platform_sources_id_seq OWNED BY public.paypal_commerce_platform_sources.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    description text,
    price numeric,
    category_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: spree_addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_addresses (
    id integer NOT NULL,
    firstname character varying,
    lastname character varying,
    address1 character varying,
    address2 character varying,
    city character varying,
    zipcode character varying,
    phone character varying,
    state_name character varying,
    alternative_phone character varying,
    company character varying,
    state_id integer,
    country_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    name character varying
);


ALTER TABLE public.spree_addresses OWNER TO postgres;

--
-- Name: spree_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_addresses_id_seq OWNER TO postgres;

--
-- Name: spree_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_addresses_id_seq OWNED BY public.spree_addresses.id;


--
-- Name: spree_adjustment_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_adjustment_reasons (
    id integer NOT NULL,
    name character varying,
    code character varying,
    active boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_adjustment_reasons OWNER TO postgres;

--
-- Name: spree_adjustment_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_adjustment_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_adjustment_reasons_id_seq OWNER TO postgres;

--
-- Name: spree_adjustment_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_adjustment_reasons_id_seq OWNED BY public.spree_adjustment_reasons.id;


--
-- Name: spree_adjustments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_adjustments (
    id integer NOT NULL,
    source_type character varying,
    source_id integer,
    adjustable_type character varying,
    adjustable_id integer NOT NULL,
    amount numeric(10,2),
    label character varying,
    eligible boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    order_id integer NOT NULL,
    included boolean DEFAULT false,
    promotion_code_id integer,
    adjustment_reason_id integer,
    finalized boolean DEFAULT false NOT NULL
);


ALTER TABLE public.spree_adjustments OWNER TO postgres;

--
-- Name: spree_adjustments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_adjustments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_adjustments_id_seq OWNER TO postgres;

--
-- Name: spree_adjustments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_adjustments_id_seq OWNED BY public.spree_adjustments.id;


--
-- Name: spree_assets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_assets (
    id integer NOT NULL,
    viewable_type character varying,
    viewable_id integer,
    attachment_width integer,
    attachment_height integer,
    attachment_file_size integer,
    "position" integer,
    attachment_content_type character varying,
    attachment_file_name character varying,
    type character varying(75),
    attachment_updated_at timestamp without time zone,
    alt text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_assets OWNER TO postgres;

--
-- Name: spree_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_assets_id_seq OWNER TO postgres;

--
-- Name: spree_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_assets_id_seq OWNED BY public.spree_assets.id;


--
-- Name: spree_calculators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_calculators (
    id integer NOT NULL,
    type character varying,
    calculable_type character varying,
    calculable_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    preferences text
);


ALTER TABLE public.spree_calculators OWNER TO postgres;

--
-- Name: spree_calculators_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_calculators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_calculators_id_seq OWNER TO postgres;

--
-- Name: spree_calculators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_calculators_id_seq OWNED BY public.spree_calculators.id;


--
-- Name: spree_cartons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_cartons (
    id integer NOT NULL,
    number character varying,
    external_number character varying,
    stock_location_id integer,
    address_id integer,
    shipping_method_id integer,
    tracking character varying,
    shipped_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    imported_from_shipment_id integer
);


ALTER TABLE public.spree_cartons OWNER TO postgres;

--
-- Name: spree_cartons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_cartons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_cartons_id_seq OWNER TO postgres;

--
-- Name: spree_cartons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_cartons_id_seq OWNED BY public.spree_cartons.id;


--
-- Name: spree_countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_countries (
    id integer NOT NULL,
    iso_name character varying,
    iso character varying,
    iso3 character varying,
    name character varying,
    numcode integer,
    states_required boolean DEFAULT false,
    updated_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.spree_countries OWNER TO postgres;

--
-- Name: spree_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_countries_id_seq OWNER TO postgres;

--
-- Name: spree_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_countries_id_seq OWNED BY public.spree_countries.id;


--
-- Name: spree_credit_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_credit_cards (
    id integer NOT NULL,
    month character varying,
    year character varying,
    cc_type character varying,
    last_digits character varying,
    gateway_customer_profile_id character varying,
    gateway_payment_profile_id character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    name character varying,
    user_id integer,
    payment_method_id integer,
    "default" boolean DEFAULT false NOT NULL,
    address_id integer
);


ALTER TABLE public.spree_credit_cards OWNER TO postgres;

--
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_credit_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_credit_cards_id_seq OWNER TO postgres;

--
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_credit_cards_id_seq OWNED BY public.spree_credit_cards.id;


--
-- Name: spree_customer_returns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_customer_returns (
    id integer NOT NULL,
    number character varying,
    stock_location_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_customer_returns OWNER TO postgres;

--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_customer_returns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_customer_returns_id_seq OWNER TO postgres;

--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_customer_returns_id_seq OWNED BY public.spree_customer_returns.id;


--
-- Name: spree_inventory_units; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_inventory_units (
    id integer NOT NULL,
    state character varying,
    variant_id integer,
    shipment_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    pending boolean DEFAULT true,
    line_item_id integer,
    carton_id integer
);


ALTER TABLE public.spree_inventory_units OWNER TO postgres;

--
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_inventory_units_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_inventory_units_id_seq OWNER TO postgres;

--
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_inventory_units_id_seq OWNED BY public.spree_inventory_units.id;


--
-- Name: spree_line_item_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_line_item_actions (
    id integer NOT NULL,
    line_item_id integer NOT NULL,
    action_id integer NOT NULL,
    quantity integer DEFAULT 0,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_line_item_actions OWNER TO postgres;

--
-- Name: spree_line_item_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_line_item_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_line_item_actions_id_seq OWNER TO postgres;

--
-- Name: spree_line_item_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_line_item_actions_id_seq OWNED BY public.spree_line_item_actions.id;


--
-- Name: spree_line_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_line_items (
    id integer NOT NULL,
    variant_id integer,
    order_id integer,
    quantity integer NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    cost_price numeric(10,2),
    tax_category_id integer,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL
);


ALTER TABLE public.spree_line_items OWNER TO postgres;

--
-- Name: spree_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_line_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_line_items_id_seq OWNER TO postgres;

--
-- Name: spree_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_line_items_id_seq OWNED BY public.spree_line_items.id;


--
-- Name: spree_log_entries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_log_entries (
    id integer NOT NULL,
    source_type character varying,
    source_id integer,
    details text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_log_entries OWNER TO postgres;

--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_log_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_log_entries_id_seq OWNER TO postgres;

--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_log_entries_id_seq OWNED BY public.spree_log_entries.id;


--
-- Name: spree_option_type_prototypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_type_prototypes (
    id integer NOT NULL,
    prototype_id integer,
    option_type_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_option_type_prototypes OWNER TO postgres;

--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_type_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_type_prototypes_id_seq OWNER TO postgres;

--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_type_prototypes_id_seq OWNED BY public.spree_option_type_prototypes.id;


--
-- Name: spree_option_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_types (
    id integer NOT NULL,
    name character varying(100),
    presentation character varying(100),
    "position" integer DEFAULT 0 NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_option_types OWNER TO postgres;

--
-- Name: spree_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_types_id_seq OWNER TO postgres;

--
-- Name: spree_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_types_id_seq OWNED BY public.spree_option_types.id;


--
-- Name: spree_option_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_values (
    id integer NOT NULL,
    "position" integer,
    name character varying,
    presentation character varying,
    option_type_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_option_values OWNER TO postgres;

--
-- Name: spree_option_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_values_id_seq OWNER TO postgres;

--
-- Name: spree_option_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_values_id_seq OWNED BY public.spree_option_values.id;


--
-- Name: spree_option_values_variants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_option_values_variants (
    id integer NOT NULL,
    variant_id integer,
    option_value_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_option_values_variants OWNER TO postgres;

--
-- Name: spree_option_values_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_option_values_variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_values_variants_id_seq OWNER TO postgres;

--
-- Name: spree_option_values_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_option_values_variants_id_seq OWNED BY public.spree_option_values_variants.id;


--
-- Name: spree_order_mutexes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_order_mutexes (
    id integer NOT NULL,
    order_id integer NOT NULL,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.spree_order_mutexes OWNER TO postgres;

--
-- Name: spree_order_mutexes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_order_mutexes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_order_mutexes_id_seq OWNER TO postgres;

--
-- Name: spree_order_mutexes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_order_mutexes_id_seq OWNED BY public.spree_order_mutexes.id;


--
-- Name: spree_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_orders (
    id integer NOT NULL,
    number character varying(32),
    item_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    total numeric(10,2) DEFAULT 0.0 NOT NULL,
    state character varying,
    adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    user_id integer,
    completed_at timestamp without time zone,
    bill_address_id integer,
    ship_address_id integer,
    payment_total numeric(10,2) DEFAULT 0.0,
    shipment_state character varying,
    payment_state character varying,
    email character varying,
    special_instructions text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    currency character varying,
    last_ip_address character varying,
    created_by_id integer,
    shipment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    channel character varying DEFAULT 'spree'::character varying,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    item_count integer DEFAULT 0,
    approver_id integer,
    approved_at timestamp without time zone,
    confirmation_delivered boolean DEFAULT false,
    guest_token character varying,
    canceled_at timestamp without time zone,
    canceler_id integer,
    store_id integer,
    approver_name character varying,
    frontend_viewable boolean DEFAULT true NOT NULL
);


ALTER TABLE public.spree_orders OWNER TO postgres;

--
-- Name: spree_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_orders_id_seq OWNER TO postgres;

--
-- Name: spree_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_orders_id_seq OWNED BY public.spree_orders.id;


--
-- Name: spree_orders_promotions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_orders_promotions (
    id integer NOT NULL,
    order_id integer,
    promotion_id integer,
    promotion_code_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_orders_promotions OWNER TO postgres;

--
-- Name: spree_orders_promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_orders_promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_orders_promotions_id_seq OWNER TO postgres;

--
-- Name: spree_orders_promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_orders_promotions_id_seq OWNED BY public.spree_orders_promotions.id;


--
-- Name: spree_payment_capture_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_payment_capture_events (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0,
    payment_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_payment_capture_events OWNER TO postgres;

--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_payment_capture_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payment_capture_events_id_seq OWNER TO postgres;

--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_payment_capture_events_id_seq OWNED BY public.spree_payment_capture_events.id;


--
-- Name: spree_payment_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_payment_methods (
    id integer NOT NULL,
    type character varying,
    name character varying,
    description text,
    active boolean DEFAULT true,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    auto_capture boolean,
    preferences text,
    preference_source character varying,
    "position" integer DEFAULT 0,
    available_to_users boolean DEFAULT true,
    available_to_admin boolean DEFAULT true,
    type_before_removal character varying
);


ALTER TABLE public.spree_payment_methods OWNER TO postgres;

--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_payment_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payment_methods_id_seq OWNER TO postgres;

--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_payment_methods_id_seq OWNED BY public.spree_payment_methods.id;


--
-- Name: spree_payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_payments (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    order_id integer,
    source_type character varying,
    source_id integer,
    payment_method_id integer,
    state character varying,
    response_code character varying,
    avs_response character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    number character varying,
    cvv_response_code character varying,
    cvv_response_message character varying
);


ALTER TABLE public.spree_payments OWNER TO postgres;

--
-- Name: spree_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payments_id_seq OWNER TO postgres;

--
-- Name: spree_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_payments_id_seq OWNED BY public.spree_payments.id;


--
-- Name: spree_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_preferences (
    id integer NOT NULL,
    value text,
    key character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_preferences OWNER TO postgres;

--
-- Name: spree_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_preferences_id_seq OWNER TO postgres;

--
-- Name: spree_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_preferences_id_seq OWNED BY public.spree_preferences.id;


--
-- Name: spree_prices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_prices (
    id integer NOT NULL,
    variant_id integer NOT NULL,
    amount numeric(10,2) NOT NULL,
    currency character varying,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    country_iso character varying(2)
);


ALTER TABLE public.spree_prices OWNER TO postgres;

--
-- Name: spree_prices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prices_id_seq OWNER TO postgres;

--
-- Name: spree_prices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_prices_id_seq OWNED BY public.spree_prices.id;


--
-- Name: spree_product_option_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_product_option_types (
    id integer NOT NULL,
    "position" integer,
    product_id integer,
    option_type_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_product_option_types OWNER TO postgres;

--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_product_option_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_option_types_id_seq OWNER TO postgres;

--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_product_option_types_id_seq OWNED BY public.spree_product_option_types.id;


--
-- Name: spree_product_promotion_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_product_promotion_rules (
    id integer NOT NULL,
    product_id integer,
    promotion_rule_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_product_promotion_rules OWNER TO postgres;

--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_product_promotion_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_promotion_rules_id_seq OWNER TO postgres;

--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_product_promotion_rules_id_seq OWNED BY public.spree_product_promotion_rules.id;


--
-- Name: spree_product_properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_product_properties (
    id integer NOT NULL,
    value character varying,
    product_id integer,
    property_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    "position" integer DEFAULT 0
);


ALTER TABLE public.spree_product_properties OWNER TO postgres;

--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_product_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_properties_id_seq OWNER TO postgres;

--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_product_properties_id_seq OWNED BY public.spree_product_properties.id;


--
-- Name: spree_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_products (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description text,
    available_on timestamp without time zone,
    deleted_at timestamp without time zone,
    slug character varying,
    meta_description text,
    meta_keywords character varying,
    tax_category_id integer,
    shipping_category_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    promotionable boolean DEFAULT true,
    meta_title character varying,
    discontinue_on timestamp without time zone
);


ALTER TABLE public.spree_products OWNER TO postgres;

--
-- Name: spree_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_products_id_seq OWNER TO postgres;

--
-- Name: spree_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_products_id_seq OWNED BY public.spree_products.id;


--
-- Name: spree_products_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_products_taxons (
    id integer NOT NULL,
    product_id integer,
    taxon_id integer,
    "position" integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_products_taxons OWNER TO postgres;

--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_products_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_products_taxons_id_seq OWNER TO postgres;

--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_products_taxons_id_seq OWNED BY public.spree_products_taxons.id;


--
-- Name: spree_promotion_action_line_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_action_line_items (
    id integer NOT NULL,
    promotion_action_id integer,
    variant_id integer,
    quantity integer DEFAULT 1,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_promotion_action_line_items OWNER TO postgres;

--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_action_line_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_action_line_items_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_action_line_items_id_seq OWNED BY public.spree_promotion_action_line_items.id;


--
-- Name: spree_promotion_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_actions (
    id integer NOT NULL,
    promotion_id integer,
    "position" integer,
    type character varying,
    deleted_at timestamp without time zone,
    preferences text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_promotion_actions OWNER TO postgres;

--
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_actions_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_actions_id_seq OWNED BY public.spree_promotion_actions.id;


--
-- Name: spree_promotion_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    code character varying
);


ALTER TABLE public.spree_promotion_categories OWNER TO postgres;

--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_categories_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_categories_id_seq OWNED BY public.spree_promotion_categories.id;


--
-- Name: spree_promotion_code_batches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_code_batches (
    id integer NOT NULL,
    promotion_id integer NOT NULL,
    base_code character varying NOT NULL,
    number_of_codes integer NOT NULL,
    email character varying,
    error character varying,
    state character varying DEFAULT 'pending'::character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    join_characters character varying DEFAULT '_'::character varying NOT NULL
);


ALTER TABLE public.spree_promotion_code_batches OWNER TO postgres;

--
-- Name: spree_promotion_code_batches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_code_batches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_code_batches_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_code_batches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_code_batches_id_seq OWNED BY public.spree_promotion_code_batches.id;


--
-- Name: spree_promotion_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_codes (
    id integer NOT NULL,
    promotion_id integer NOT NULL,
    value character varying NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    promotion_code_batch_id integer
);


ALTER TABLE public.spree_promotion_codes OWNER TO postgres;

--
-- Name: spree_promotion_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_codes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_codes_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_codes_id_seq OWNED BY public.spree_promotion_codes.id;


--
-- Name: spree_promotion_rule_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rule_taxons (
    id integer NOT NULL,
    taxon_id integer,
    promotion_rule_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_promotion_rule_taxons OWNER TO postgres;

--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rule_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rule_taxons_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rule_taxons_id_seq OWNED BY public.spree_promotion_rule_taxons.id;


--
-- Name: spree_promotion_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rules (
    id integer NOT NULL,
    promotion_id integer,
    product_group_id integer,
    type character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    code character varying,
    preferences text
);


ALTER TABLE public.spree_promotion_rules OWNER TO postgres;

--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rules_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rules_id_seq OWNED BY public.spree_promotion_rules.id;


--
-- Name: spree_promotion_rules_stores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rules_stores (
    id bigint NOT NULL,
    store_id bigint NOT NULL,
    promotion_rule_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_promotion_rules_stores OWNER TO postgres;

--
-- Name: spree_promotion_rules_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rules_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rules_stores_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_rules_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rules_stores_id_seq OWNED BY public.spree_promotion_rules_stores.id;


--
-- Name: spree_promotion_rules_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotion_rules_users (
    id integer NOT NULL,
    user_id integer,
    promotion_rule_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_promotion_rules_users OWNER TO postgres;

--
-- Name: spree_promotion_rules_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotion_rules_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rules_users_id_seq OWNER TO postgres;

--
-- Name: spree_promotion_rules_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotion_rules_users_id_seq OWNED BY public.spree_promotion_rules_users.id;


--
-- Name: spree_promotions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_promotions (
    id integer NOT NULL,
    description character varying,
    expires_at timestamp without time zone,
    starts_at timestamp without time zone,
    name character varying,
    type character varying,
    usage_limit integer,
    match_policy character varying DEFAULT 'all'::character varying,
    advertise boolean DEFAULT false,
    path character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    promotion_category_id integer,
    per_code_usage_limit integer,
    apply_automatically boolean DEFAULT false
);


ALTER TABLE public.spree_promotions OWNER TO postgres;

--
-- Name: spree_promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotions_id_seq OWNER TO postgres;

--
-- Name: spree_promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_promotions_id_seq OWNED BY public.spree_promotions.id;


--
-- Name: spree_properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_properties (
    id integer NOT NULL,
    name character varying,
    presentation character varying NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_properties OWNER TO postgres;

--
-- Name: spree_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_properties_id_seq OWNER TO postgres;

--
-- Name: spree_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_properties_id_seq OWNED BY public.spree_properties.id;


--
-- Name: spree_property_prototypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_property_prototypes (
    id integer NOT NULL,
    prototype_id integer,
    property_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_property_prototypes OWNER TO postgres;

--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_property_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_property_prototypes_id_seq OWNER TO postgres;

--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_property_prototypes_id_seq OWNED BY public.spree_property_prototypes.id;


--
-- Name: spree_prototype_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_prototype_taxons (
    id integer NOT NULL,
    taxon_id integer,
    prototype_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_prototype_taxons OWNER TO postgres;

--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_prototype_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prototype_taxons_id_seq OWNER TO postgres;

--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_prototype_taxons_id_seq OWNED BY public.spree_prototype_taxons.id;


--
-- Name: spree_prototypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_prototypes (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_prototypes OWNER TO postgres;

--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prototypes_id_seq OWNER TO postgres;

--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_prototypes_id_seq OWNED BY public.spree_prototypes.id;


--
-- Name: spree_refund_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_refund_reasons (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    code character varying
);


ALTER TABLE public.spree_refund_reasons OWNER TO postgres;

--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_refund_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_refund_reasons_id_seq OWNER TO postgres;

--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_refund_reasons_id_seq OWNED BY public.spree_refund_reasons.id;


--
-- Name: spree_refunds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_refunds (
    id integer NOT NULL,
    payment_id integer,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    transaction_id character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    refund_reason_id integer,
    reimbursement_id integer
);


ALTER TABLE public.spree_refunds OWNER TO postgres;

--
-- Name: spree_refunds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_refunds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_refunds_id_seq OWNER TO postgres;

--
-- Name: spree_refunds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_refunds_id_seq OWNED BY public.spree_refunds.id;


--
-- Name: spree_reimbursement_credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_reimbursement_credits (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    reimbursement_id integer,
    creditable_id integer,
    creditable_type character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_reimbursement_credits OWNER TO postgres;

--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_reimbursement_credits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursement_credits_id_seq OWNER TO postgres;

--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_reimbursement_credits_id_seq OWNED BY public.spree_reimbursement_credits.id;


--
-- Name: spree_reimbursement_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_reimbursement_types (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    type character varying
);


ALTER TABLE public.spree_reimbursement_types OWNER TO postgres;

--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_reimbursement_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursement_types_id_seq OWNER TO postgres;

--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_reimbursement_types_id_seq OWNED BY public.spree_reimbursement_types.id;


--
-- Name: spree_reimbursements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_reimbursements (
    id integer NOT NULL,
    number character varying,
    reimbursement_status character varying,
    customer_return_id integer,
    order_id integer,
    total numeric(10,2),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_reimbursements OWNER TO postgres;

--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_reimbursements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursements_id_seq OWNER TO postgres;

--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_reimbursements_id_seq OWNED BY public.spree_reimbursements.id;


--
-- Name: spree_return_authorizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_return_authorizations (
    id integer NOT NULL,
    number character varying,
    state character varying,
    order_id integer,
    memo text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    stock_location_id integer,
    return_reason_id integer
);


ALTER TABLE public.spree_return_authorizations OWNER TO postgres;

--
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_return_authorizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_authorizations_id_seq OWNER TO postgres;

--
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_return_authorizations_id_seq OWNED BY public.spree_return_authorizations.id;


--
-- Name: spree_return_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_return_items (
    id integer NOT NULL,
    return_authorization_id integer,
    inventory_unit_id integer,
    exchange_variant_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    amount numeric(12,4) DEFAULT 0.0 NOT NULL,
    included_tax_total numeric(12,4) DEFAULT 0.0 NOT NULL,
    additional_tax_total numeric(12,4) DEFAULT 0.0 NOT NULL,
    reception_status character varying,
    acceptance_status character varying,
    customer_return_id integer,
    reimbursement_id integer,
    exchange_inventory_unit_id integer,
    acceptance_status_errors text,
    preferred_reimbursement_type_id integer,
    override_reimbursement_type_id integer,
    resellable boolean DEFAULT true NOT NULL,
    return_reason_id integer
);


ALTER TABLE public.spree_return_items OWNER TO postgres;

--
-- Name: spree_return_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_return_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_items_id_seq OWNER TO postgres;

--
-- Name: spree_return_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_return_items_id_seq OWNED BY public.spree_return_items.id;


--
-- Name: spree_return_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_return_reasons (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_return_reasons OWNER TO postgres;

--
-- Name: spree_return_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_return_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_reasons_id_seq OWNER TO postgres;

--
-- Name: spree_return_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_return_reasons_id_seq OWNED BY public.spree_return_reasons.id;


--
-- Name: spree_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_roles (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_roles OWNER TO postgres;

--
-- Name: spree_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_roles_id_seq OWNER TO postgres;

--
-- Name: spree_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_roles_id_seq OWNED BY public.spree_roles.id;


--
-- Name: spree_roles_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_roles_users (
    id integer NOT NULL,
    role_id integer,
    user_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_roles_users OWNER TO postgres;

--
-- Name: spree_roles_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_roles_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_roles_users_id_seq OWNER TO postgres;

--
-- Name: spree_roles_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_roles_users_id_seq OWNED BY public.spree_roles_users.id;


--
-- Name: spree_shipments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipments (
    id integer NOT NULL,
    tracking character varying,
    number character varying,
    cost numeric(10,2) DEFAULT 0.0,
    shipped_at timestamp without time zone,
    order_id integer,
    deprecated_address_id integer,
    state character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    stock_location_id integer,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL
);


ALTER TABLE public.spree_shipments OWNER TO postgres;

--
-- Name: spree_shipments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipments_id_seq OWNER TO postgres;

--
-- Name: spree_shipments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipments_id_seq OWNED BY public.spree_shipments.id;


--
-- Name: spree_shipping_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_shipping_categories OWNER TO postgres;

--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_categories_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_categories_id_seq OWNED BY public.spree_shipping_categories.id;


--
-- Name: spree_shipping_method_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_method_categories (
    id integer NOT NULL,
    shipping_method_id integer NOT NULL,
    shipping_category_id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_shipping_method_categories OWNER TO postgres;

--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_method_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_method_categories_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_method_categories_id_seq OWNED BY public.spree_shipping_method_categories.id;


--
-- Name: spree_shipping_method_stock_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_method_stock_locations (
    id integer NOT NULL,
    shipping_method_id integer,
    stock_location_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_shipping_method_stock_locations OWNER TO postgres;

--
-- Name: spree_shipping_method_stock_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_method_stock_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_method_stock_locations_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_method_stock_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_method_stock_locations_id_seq OWNED BY public.spree_shipping_method_stock_locations.id;


--
-- Name: spree_shipping_method_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_method_zones (
    id integer NOT NULL,
    shipping_method_id integer,
    zone_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_shipping_method_zones OWNER TO postgres;

--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_method_zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_method_zones_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_method_zones_id_seq OWNED BY public.spree_shipping_method_zones.id;


--
-- Name: spree_shipping_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_methods (
    id integer NOT NULL,
    name character varying,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    tracking_url character varying,
    admin_name character varying,
    tax_category_id integer,
    code character varying,
    available_to_all boolean DEFAULT true,
    carrier character varying,
    service_level character varying,
    available_to_users boolean DEFAULT true
);


ALTER TABLE public.spree_shipping_methods OWNER TO postgres;

--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_methods_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_methods_id_seq OWNED BY public.spree_shipping_methods.id;


--
-- Name: spree_shipping_rate_taxes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_rate_taxes (
    id integer NOT NULL,
    amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    tax_rate_id integer,
    shipping_rate_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_shipping_rate_taxes OWNER TO postgres;

--
-- Name: spree_shipping_rate_taxes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_rate_taxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_rate_taxes_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_rate_taxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_rate_taxes_id_seq OWNED BY public.spree_shipping_rate_taxes.id;


--
-- Name: spree_shipping_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_shipping_rates (
    id integer NOT NULL,
    shipment_id integer,
    shipping_method_id integer,
    selected boolean DEFAULT false,
    cost numeric(8,2) DEFAULT 0.0,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    tax_rate_id integer
);


ALTER TABLE public.spree_shipping_rates OWNER TO postgres;

--
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_shipping_rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_rates_id_seq OWNER TO postgres;

--
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_shipping_rates_id_seq OWNED BY public.spree_shipping_rates.id;


--
-- Name: spree_state_changes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_state_changes (
    id integer NOT NULL,
    name character varying,
    previous_state character varying,
    stateful_id integer,
    user_id integer,
    stateful_type character varying,
    next_state character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_state_changes OWNER TO postgres;

--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_state_changes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_state_changes_id_seq OWNER TO postgres;

--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_state_changes_id_seq OWNED BY public.spree_state_changes.id;


--
-- Name: spree_states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_states (
    id integer NOT NULL,
    name character varying,
    abbr character varying,
    country_id integer,
    updated_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone
);


ALTER TABLE public.spree_states OWNER TO postgres;

--
-- Name: spree_states_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_states_id_seq OWNER TO postgres;

--
-- Name: spree_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_states_id_seq OWNED BY public.spree_states.id;


--
-- Name: spree_stock_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_items (
    id integer NOT NULL,
    stock_location_id integer,
    variant_id integer,
    count_on_hand integer DEFAULT 0 NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    backorderable boolean DEFAULT false,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_stock_items OWNER TO postgres;

--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_stock_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_items_id_seq OWNER TO postgres;

--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_stock_items_id_seq OWNED BY public.spree_stock_items.id;


--
-- Name: spree_stock_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_locations (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    "default" boolean DEFAULT false NOT NULL,
    address1 character varying,
    address2 character varying,
    city character varying,
    state_id integer,
    state_name character varying,
    country_id integer,
    zipcode character varying,
    phone character varying,
    active boolean DEFAULT true,
    backorderable_default boolean DEFAULT false,
    propagate_all_variants boolean DEFAULT true,
    admin_name character varying,
    "position" integer DEFAULT 0,
    restock_inventory boolean DEFAULT true NOT NULL,
    fulfillable boolean DEFAULT true NOT NULL,
    code character varying,
    check_stock_on_transfer boolean DEFAULT true
);


ALTER TABLE public.spree_stock_locations OWNER TO postgres;

--
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_stock_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_locations_id_seq OWNER TO postgres;

--
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_stock_locations_id_seq OWNED BY public.spree_stock_locations.id;


--
-- Name: spree_stock_movements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stock_movements (
    id integer NOT NULL,
    stock_item_id integer,
    quantity integer DEFAULT 0,
    action character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    originator_type character varying,
    originator_id integer
);


ALTER TABLE public.spree_stock_movements OWNER TO postgres;

--
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_stock_movements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_movements_id_seq OWNER TO postgres;

--
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_stock_movements_id_seq OWNED BY public.spree_stock_movements.id;


--
-- Name: spree_store_credit_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_store_credit_categories OWNER TO postgres;

--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_categories_id_seq OWNER TO postgres;

--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_categories_id_seq OWNED BY public.spree_store_credit_categories.id;


--
-- Name: spree_store_credit_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_events (
    id integer NOT NULL,
    store_credit_id integer NOT NULL,
    action character varying NOT NULL,
    amount numeric(8,2),
    user_total_amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    authorization_code character varying NOT NULL,
    deleted_at timestamp without time zone,
    originator_type character varying,
    originator_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    amount_remaining numeric(8,2) DEFAULT NULL::numeric,
    store_credit_reason_id integer
);


ALTER TABLE public.spree_store_credit_events OWNER TO postgres;

--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_events_id_seq OWNER TO postgres;

--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_events_id_seq OWNED BY public.spree_store_credit_events.id;


--
-- Name: spree_store_credit_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_reasons (
    id bigint NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_store_credit_reasons OWNER TO postgres;

--
-- Name: spree_store_credit_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_reasons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_reasons_id_seq OWNER TO postgres;

--
-- Name: spree_store_credit_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_reasons_id_seq OWNED BY public.spree_store_credit_reasons.id;


--
-- Name: spree_store_credit_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credit_types (
    id integer NOT NULL,
    name character varying,
    priority integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_store_credit_types OWNER TO postgres;

--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credit_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_types_id_seq OWNER TO postgres;

--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credit_types_id_seq OWNED BY public.spree_store_credit_types.id;


--
-- Name: spree_store_credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_credits (
    id integer NOT NULL,
    user_id integer,
    category_id integer,
    created_by_id integer,
    amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    amount_used numeric(8,2) DEFAULT 0.0 NOT NULL,
    amount_authorized numeric(8,2) DEFAULT 0.0 NOT NULL,
    currency character varying,
    memo text,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    type_id integer,
    invalidated_at timestamp without time zone
);


ALTER TABLE public.spree_store_credits OWNER TO postgres;

--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_credits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credits_id_seq OWNER TO postgres;

--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_credits_id_seq OWNED BY public.spree_store_credits.id;


--
-- Name: spree_store_payment_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_payment_methods (
    id integer NOT NULL,
    store_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_payment_methods OWNER TO postgres;

--
-- Name: spree_store_payment_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_payment_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_payment_methods_id_seq OWNER TO postgres;

--
-- Name: spree_store_payment_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_payment_methods_id_seq OWNED BY public.spree_store_payment_methods.id;


--
-- Name: spree_store_shipping_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_store_shipping_methods (
    id bigint NOT NULL,
    store_id bigint NOT NULL,
    shipping_method_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_shipping_methods OWNER TO postgres;

--
-- Name: spree_store_shipping_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_store_shipping_methods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_shipping_methods_id_seq OWNER TO postgres;

--
-- Name: spree_store_shipping_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_store_shipping_methods_id_seq OWNED BY public.spree_store_shipping_methods.id;


--
-- Name: spree_stores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_stores (
    id integer NOT NULL,
    name character varying,
    url character varying,
    meta_description text,
    meta_keywords text,
    seo_title character varying,
    mail_from_address character varying,
    default_currency character varying,
    code character varying,
    "default" boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    cart_tax_country_iso character varying,
    available_locales character varying,
    bcc_email character varying
);


ALTER TABLE public.spree_stores OWNER TO postgres;

--
-- Name: spree_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stores_id_seq OWNER TO postgres;

--
-- Name: spree_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_stores_id_seq OWNED BY public.spree_stores.id;


--
-- Name: spree_tax_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_tax_categories (
    id integer NOT NULL,
    name character varying,
    description character varying,
    is_default boolean DEFAULT false,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    tax_code character varying
);


ALTER TABLE public.spree_tax_categories OWNER TO postgres;

--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_tax_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tax_categories_id_seq OWNER TO postgres;

--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_tax_categories_id_seq OWNED BY public.spree_tax_categories.id;


--
-- Name: spree_tax_rate_tax_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_tax_rate_tax_categories (
    id integer NOT NULL,
    tax_category_id integer NOT NULL,
    tax_rate_id integer NOT NULL
);


ALTER TABLE public.spree_tax_rate_tax_categories OWNER TO postgres;

--
-- Name: spree_tax_rate_tax_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_tax_rate_tax_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tax_rate_tax_categories_id_seq OWNER TO postgres;

--
-- Name: spree_tax_rate_tax_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_tax_rate_tax_categories_id_seq OWNED BY public.spree_tax_rate_tax_categories.id;


--
-- Name: spree_tax_rates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_tax_rates (
    id integer NOT NULL,
    amount numeric(8,5),
    zone_id integer,
    included_in_price boolean DEFAULT false,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    name character varying,
    show_rate_in_label boolean DEFAULT true,
    deleted_at timestamp without time zone,
    starts_at timestamp without time zone,
    expires_at timestamp without time zone,
    level integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.spree_tax_rates OWNER TO postgres;

--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_tax_rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tax_rates_id_seq OWNER TO postgres;

--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_tax_rates_id_seq OWNED BY public.spree_tax_rates.id;


--
-- Name: spree_taxonomies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_taxonomies (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    "position" integer DEFAULT 0
);


ALTER TABLE public.spree_taxonomies OWNER TO postgres;

--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_taxonomies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_taxonomies_id_seq OWNER TO postgres;

--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_taxonomies_id_seq OWNED BY public.spree_taxonomies.id;


--
-- Name: spree_taxons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_taxons (
    id integer NOT NULL,
    parent_id integer,
    "position" integer DEFAULT 0,
    name character varying NOT NULL,
    permalink character varying,
    taxonomy_id integer,
    lft integer,
    rgt integer,
    icon_file_name character varying,
    icon_content_type character varying,
    icon_file_size integer,
    icon_updated_at timestamp without time zone,
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    meta_title character varying,
    meta_description character varying,
    meta_keywords character varying,
    depth integer
);


ALTER TABLE public.spree_taxons OWNER TO postgres;

--
-- Name: spree_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_taxons_id_seq OWNER TO postgres;

--
-- Name: spree_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_taxons_id_seq OWNED BY public.spree_taxons.id;


--
-- Name: spree_unit_cancels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_unit_cancels (
    id integer NOT NULL,
    inventory_unit_id integer NOT NULL,
    reason character varying,
    created_by character varying,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_unit_cancels OWNER TO postgres;

--
-- Name: spree_unit_cancels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_unit_cancels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_unit_cancels_id_seq OWNER TO postgres;

--
-- Name: spree_unit_cancels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_unit_cancels_id_seq OWNED BY public.spree_unit_cancels.id;


--
-- Name: spree_user_addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_user_addresses (
    id integer NOT NULL,
    user_id integer NOT NULL,
    address_id integer NOT NULL,
    "default" boolean DEFAULT false,
    archived boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    default_billing boolean DEFAULT false
);


ALTER TABLE public.spree_user_addresses OWNER TO postgres;

--
-- Name: spree_user_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_user_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_user_addresses_id_seq OWNER TO postgres;

--
-- Name: spree_user_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_user_addresses_id_seq OWNED BY public.spree_user_addresses.id;


--
-- Name: spree_user_stock_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_user_stock_locations (
    id integer NOT NULL,
    user_id integer,
    stock_location_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_user_stock_locations OWNER TO postgres;

--
-- Name: spree_user_stock_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_user_stock_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_user_stock_locations_id_seq OWNER TO postgres;

--
-- Name: spree_user_stock_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_user_stock_locations_id_seq OWNED BY public.spree_user_stock_locations.id;


--
-- Name: spree_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_users (
    id integer NOT NULL,
    encrypted_password character varying(128),
    password_salt character varying(128),
    email character varying,
    remember_token character varying,
    persistence_token character varying,
    reset_password_token character varying,
    perishable_token character varying,
    sign_in_count integer DEFAULT 0 NOT NULL,
    failed_attempts integer DEFAULT 0 NOT NULL,
    last_request_at timestamp without time zone,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    login character varying,
    ship_address_id integer,
    bill_address_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    spree_api_key character varying(48),
    authentication_token character varying,
    unlock_token character varying,
    locked_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    reset_password_sent_at timestamp without time zone,
    deleted_at timestamp without time zone,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying
);


ALTER TABLE public.spree_users OWNER TO postgres;

--
-- Name: spree_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_users_id_seq OWNER TO postgres;

--
-- Name: spree_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_users_id_seq OWNED BY public.spree_users.id;


--
-- Name: spree_variant_property_rule_conditions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_variant_property_rule_conditions (
    id integer NOT NULL,
    option_value_id integer,
    variant_property_rule_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_variant_property_rule_conditions OWNER TO postgres;

--
-- Name: spree_variant_property_rule_conditions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_variant_property_rule_conditions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_variant_property_rule_conditions_id_seq OWNER TO postgres;

--
-- Name: spree_variant_property_rule_conditions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_variant_property_rule_conditions_id_seq OWNED BY public.spree_variant_property_rule_conditions.id;


--
-- Name: spree_variant_property_rule_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_variant_property_rule_values (
    id integer NOT NULL,
    value text,
    "position" integer DEFAULT 0,
    property_id integer,
    variant_property_rule_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_variant_property_rule_values OWNER TO postgres;

--
-- Name: spree_variant_property_rule_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_variant_property_rule_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_variant_property_rule_values_id_seq OWNER TO postgres;

--
-- Name: spree_variant_property_rule_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_variant_property_rule_values_id_seq OWNED BY public.spree_variant_property_rule_values.id;


--
-- Name: spree_variant_property_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_variant_property_rules (
    id integer NOT NULL,
    product_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    apply_to_all boolean DEFAULT true NOT NULL
);


ALTER TABLE public.spree_variant_property_rules OWNER TO postgres;

--
-- Name: spree_variant_property_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_variant_property_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_variant_property_rules_id_seq OWNER TO postgres;

--
-- Name: spree_variant_property_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_variant_property_rules_id_seq OWNED BY public.spree_variant_property_rules.id;


--
-- Name: spree_variants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_variants (
    id integer NOT NULL,
    sku character varying DEFAULT ''::character varying NOT NULL,
    weight numeric(8,2) DEFAULT 0.0,
    height numeric(8,2),
    width numeric(8,2),
    depth numeric(8,2),
    deleted_at timestamp without time zone,
    is_master boolean DEFAULT false,
    product_id integer,
    cost_price numeric(10,2),
    "position" integer,
    cost_currency character varying,
    track_inventory boolean DEFAULT true,
    tax_category_id integer,
    updated_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    shipping_category_id bigint
);


ALTER TABLE public.spree_variants OWNER TO postgres;

--
-- Name: spree_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_variants_id_seq OWNER TO postgres;

--
-- Name: spree_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_variants_id_seq OWNED BY public.spree_variants.id;


--
-- Name: spree_wallet_payment_sources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_wallet_payment_sources (
    id integer NOT NULL,
    user_id integer NOT NULL,
    payment_source_type character varying NOT NULL,
    payment_source_id integer NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_wallet_payment_sources OWNER TO postgres;

--
-- Name: spree_wallet_payment_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_wallet_payment_sources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_wallet_payment_sources_id_seq OWNER TO postgres;

--
-- Name: spree_wallet_payment_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_wallet_payment_sources_id_seq OWNED BY public.spree_wallet_payment_sources.id;


--
-- Name: spree_zone_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_zone_members (
    id integer NOT NULL,
    zoneable_type character varying,
    zoneable_id integer,
    zone_id integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_zone_members OWNER TO postgres;

--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_zone_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_zone_members_id_seq OWNER TO postgres;

--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_zone_members_id_seq OWNED BY public.spree_zone_members.id;


--
-- Name: spree_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spree_zones (
    id integer NOT NULL,
    name character varying,
    description character varying,
    zone_members_count integer DEFAULT 0,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.spree_zones OWNER TO postgres;

--
-- Name: spree_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spree_zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_zones_id_seq OWNER TO postgres;

--
-- Name: spree_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spree_zones_id_seq OWNED BY public.spree_zones.id;


--
-- Name: action_mailbox_inbound_emails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails ALTER COLUMN id SET DEFAULT nextval('public.action_mailbox_inbound_emails_id_seq'::regclass);


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Name: paypal_commerce_platform_sources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paypal_commerce_platform_sources ALTER COLUMN id SET DEFAULT nextval('public.paypal_commerce_platform_sources_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: spree_addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_addresses ALTER COLUMN id SET DEFAULT nextval('public.spree_addresses_id_seq'::regclass);


--
-- Name: spree_adjustment_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_adjustment_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_adjustment_reasons_id_seq'::regclass);


--
-- Name: spree_adjustments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_adjustments ALTER COLUMN id SET DEFAULT nextval('public.spree_adjustments_id_seq'::regclass);


--
-- Name: spree_assets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_assets ALTER COLUMN id SET DEFAULT nextval('public.spree_assets_id_seq'::regclass);


--
-- Name: spree_calculators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_calculators ALTER COLUMN id SET DEFAULT nextval('public.spree_calculators_id_seq'::regclass);


--
-- Name: spree_cartons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_cartons ALTER COLUMN id SET DEFAULT nextval('public.spree_cartons_id_seq'::regclass);


--
-- Name: spree_countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_countries ALTER COLUMN id SET DEFAULT nextval('public.spree_countries_id_seq'::regclass);


--
-- Name: spree_credit_cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_credit_cards ALTER COLUMN id SET DEFAULT nextval('public.spree_credit_cards_id_seq'::regclass);


--
-- Name: spree_customer_returns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_customer_returns ALTER COLUMN id SET DEFAULT nextval('public.spree_customer_returns_id_seq'::regclass);


--
-- Name: spree_inventory_units id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_inventory_units ALTER COLUMN id SET DEFAULT nextval('public.spree_inventory_units_id_seq'::regclass);


--
-- Name: spree_line_item_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_line_item_actions ALTER COLUMN id SET DEFAULT nextval('public.spree_line_item_actions_id_seq'::regclass);


--
-- Name: spree_line_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_line_items ALTER COLUMN id SET DEFAULT nextval('public.spree_line_items_id_seq'::regclass);


--
-- Name: spree_log_entries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_log_entries ALTER COLUMN id SET DEFAULT nextval('public.spree_log_entries_id_seq'::regclass);


--
-- Name: spree_option_type_prototypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_type_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_option_type_prototypes_id_seq'::regclass);


--
-- Name: spree_option_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_option_types_id_seq'::regclass);


--
-- Name: spree_option_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values ALTER COLUMN id SET DEFAULT nextval('public.spree_option_values_id_seq'::regclass);


--
-- Name: spree_option_values_variants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values_variants ALTER COLUMN id SET DEFAULT nextval('public.spree_option_values_variants_id_seq'::regclass);


--
-- Name: spree_order_mutexes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_order_mutexes ALTER COLUMN id SET DEFAULT nextval('public.spree_order_mutexes_id_seq'::regclass);


--
-- Name: spree_orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders ALTER COLUMN id SET DEFAULT nextval('public.spree_orders_id_seq'::regclass);


--
-- Name: spree_orders_promotions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders_promotions ALTER COLUMN id SET DEFAULT nextval('public.spree_orders_promotions_id_seq'::regclass);


--
-- Name: spree_payment_capture_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_capture_events ALTER COLUMN id SET DEFAULT nextval('public.spree_payment_capture_events_id_seq'::regclass);


--
-- Name: spree_payment_methods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_payment_methods_id_seq'::regclass);


--
-- Name: spree_payments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payments ALTER COLUMN id SET DEFAULT nextval('public.spree_payments_id_seq'::regclass);


--
-- Name: spree_preferences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_preferences ALTER COLUMN id SET DEFAULT nextval('public.spree_preferences_id_seq'::regclass);


--
-- Name: spree_prices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prices ALTER COLUMN id SET DEFAULT nextval('public.spree_prices_id_seq'::regclass);


--
-- Name: spree_product_option_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_product_option_types_id_seq'::regclass);


--
-- Name: spree_product_promotion_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_promotion_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_product_promotion_rules_id_seq'::regclass);


--
-- Name: spree_product_properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_product_properties_id_seq'::regclass);


--
-- Name: spree_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products ALTER COLUMN id SET DEFAULT nextval('public.spree_products_id_seq'::regclass);


--
-- Name: spree_products_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_products_taxons_id_seq'::regclass);


--
-- Name: spree_promotion_action_line_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_action_line_items ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_action_line_items_id_seq'::regclass);


--
-- Name: spree_promotion_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_actions ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_actions_id_seq'::regclass);


--
-- Name: spree_promotion_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_categories_id_seq'::regclass);


--
-- Name: spree_promotion_code_batches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_code_batches ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_code_batches_id_seq'::regclass);


--
-- Name: spree_promotion_codes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_codes ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_codes_id_seq'::regclass);


--
-- Name: spree_promotion_rule_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rule_taxons_id_seq'::regclass);


--
-- Name: spree_promotion_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rules_id_seq'::regclass);


--
-- Name: spree_promotion_rules_stores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules_stores ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rules_stores_id_seq'::regclass);


--
-- Name: spree_promotion_rules_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules_users ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rules_users_id_seq'::regclass);


--
-- Name: spree_promotions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotions ALTER COLUMN id SET DEFAULT nextval('public.spree_promotions_id_seq'::regclass);


--
-- Name: spree_properties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_properties_id_seq'::regclass);


--
-- Name: spree_property_prototypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_property_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_property_prototypes_id_seq'::regclass);


--
-- Name: spree_prototype_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototype_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_prototype_taxons_id_seq'::regclass);


--
-- Name: spree_prototypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_prototypes_id_seq'::regclass);


--
-- Name: spree_refund_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refund_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_refund_reasons_id_seq'::regclass);


--
-- Name: spree_refunds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refunds ALTER COLUMN id SET DEFAULT nextval('public.spree_refunds_id_seq'::regclass);


--
-- Name: spree_reimbursement_credits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_credits_id_seq'::regclass);


--
-- Name: spree_reimbursement_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_types ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_types_id_seq'::regclass);


--
-- Name: spree_reimbursements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursements ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursements_id_seq'::regclass);


--
-- Name: spree_return_authorizations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_authorizations ALTER COLUMN id SET DEFAULT nextval('public.spree_return_authorizations_id_seq'::regclass);


--
-- Name: spree_return_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_items ALTER COLUMN id SET DEFAULT nextval('public.spree_return_items_id_seq'::regclass);


--
-- Name: spree_return_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_return_reasons_id_seq'::regclass);


--
-- Name: spree_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles ALTER COLUMN id SET DEFAULT nextval('public.spree_roles_id_seq'::regclass);


--
-- Name: spree_roles_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles_users ALTER COLUMN id SET DEFAULT nextval('public.spree_roles_users_id_seq'::regclass);


--
-- Name: spree_shipments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipments ALTER COLUMN id SET DEFAULT nextval('public.spree_shipments_id_seq'::regclass);


--
-- Name: spree_shipping_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_categories_id_seq'::regclass);


--
-- Name: spree_shipping_method_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_categories_id_seq'::regclass);


--
-- Name: spree_shipping_method_stock_locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_stock_locations ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_stock_locations_id_seq'::regclass);


--
-- Name: spree_shipping_method_zones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_zones_id_seq'::regclass);


--
-- Name: spree_shipping_methods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_methods_id_seq'::regclass);


--
-- Name: spree_shipping_rate_taxes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_rate_taxes ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_rate_taxes_id_seq'::regclass);


--
-- Name: spree_shipping_rates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_rates ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_rates_id_seq'::regclass);


--
-- Name: spree_state_changes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_state_changes ALTER COLUMN id SET DEFAULT nextval('public.spree_state_changes_id_seq'::regclass);


--
-- Name: spree_states id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_states ALTER COLUMN id SET DEFAULT nextval('public.spree_states_id_seq'::regclass);


--
-- Name: spree_stock_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_items ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_items_id_seq'::regclass);


--
-- Name: spree_stock_locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_locations ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_locations_id_seq'::regclass);


--
-- Name: spree_stock_movements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_movements ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_movements_id_seq'::regclass);


--
-- Name: spree_store_credit_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_categories_id_seq'::regclass);


--
-- Name: spree_store_credit_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_events ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_events_id_seq'::regclass);


--
-- Name: spree_store_credit_reasons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_reasons_id_seq'::regclass);


--
-- Name: spree_store_credit_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_types ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_types_id_seq'::regclass);


--
-- Name: spree_store_credits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credits_id_seq'::regclass);


--
-- Name: spree_store_payment_methods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_payment_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_store_payment_methods_id_seq'::regclass);


--
-- Name: spree_store_shipping_methods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_shipping_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_store_shipping_methods_id_seq'::regclass);


--
-- Name: spree_stores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stores ALTER COLUMN id SET DEFAULT nextval('public.spree_stores_id_seq'::regclass);


--
-- Name: spree_tax_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_categories_id_seq'::regclass);


--
-- Name: spree_tax_rate_tax_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rate_tax_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_rate_tax_categories_id_seq'::regclass);


--
-- Name: spree_tax_rates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rates ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_rates_id_seq'::regclass);


--
-- Name: spree_taxonomies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxonomies ALTER COLUMN id SET DEFAULT nextval('public.spree_taxonomies_id_seq'::regclass);


--
-- Name: spree_taxons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_taxons_id_seq'::regclass);


--
-- Name: spree_unit_cancels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_unit_cancels ALTER COLUMN id SET DEFAULT nextval('public.spree_unit_cancels_id_seq'::regclass);


--
-- Name: spree_user_addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_user_addresses ALTER COLUMN id SET DEFAULT nextval('public.spree_user_addresses_id_seq'::regclass);


--
-- Name: spree_user_stock_locations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_user_stock_locations ALTER COLUMN id SET DEFAULT nextval('public.spree_user_stock_locations_id_seq'::regclass);


--
-- Name: spree_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_users ALTER COLUMN id SET DEFAULT nextval('public.spree_users_id_seq'::regclass);


--
-- Name: spree_variant_property_rule_conditions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rule_conditions ALTER COLUMN id SET DEFAULT nextval('public.spree_variant_property_rule_conditions_id_seq'::regclass);


--
-- Name: spree_variant_property_rule_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rule_values ALTER COLUMN id SET DEFAULT nextval('public.spree_variant_property_rule_values_id_seq'::regclass);


--
-- Name: spree_variant_property_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_variant_property_rules_id_seq'::regclass);


--
-- Name: spree_variants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variants ALTER COLUMN id SET DEFAULT nextval('public.spree_variants_id_seq'::regclass);


--
-- Name: spree_wallet_payment_sources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_wallet_payment_sources ALTER COLUMN id SET DEFAULT nextval('public.spree_wallet_payment_sources_id_seq'::regclass);


--
-- Name: spree_zone_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zone_members ALTER COLUMN id SET DEFAULT nextval('public.spree_zone_members_id_seq'::regclass);


--
-- Name: spree_zones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_zones_id_seq'::regclass);


--
-- Data for Name: action_mailbox_inbound_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.action_mailbox_inbound_emails (id, status, message_id, message_checksum, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	icon	Spree::Taxon	2	1	2024-04-11 10:37:39.988575
2	image	ActiveStorage::VariantRecord	1	2	2024-04-11 10:37:44.92103
3	attachment	Spree::Asset	1	3	2024-04-11 10:48:48.445355
4	image	ActiveStorage::VariantRecord	2	4	2024-04-11 10:48:48.552623
5	image	ActiveStorage::VariantRecord	3	5	2024-04-11 10:48:48.653671
6	image	ActiveStorage::VariantRecord	4	6	2024-04-11 10:48:58.009725
7	image	ActiveStorage::VariantRecord	5	7	2024-04-11 10:48:58.100126
8	attachment	Spree::Asset	2	8	2024-04-11 10:49:14.928042
9	image	ActiveStorage::VariantRecord	6	9	2024-04-11 10:49:15.146358
10	image	ActiveStorage::VariantRecord	7	10	2024-04-11 10:49:15.372854
11	image	ActiveStorage::VariantRecord	8	11	2024-04-11 10:49:23.077764
12	image	ActiveStorage::VariantRecord	9	12	2024-04-11 10:49:23.254875
13	attachment	Spree::Asset	3	13	2024-04-11 14:35:52.966399
14	attachment	Spree::Asset	4	14	2024-04-11 14:35:53.001828
15	attachment	Spree::Asset	5	15	2024-04-11 14:35:53.05258
16	attachment	Spree::Asset	6	16	2024-04-11 14:35:53.114603
17	attachment	Spree::Asset	7	17	2024-04-11 14:35:53.193375
18	attachment	Spree::Asset	8	18	2024-04-11 14:35:53.25921
19	attachment	Spree::Asset	9	19	2024-04-11 14:35:53.332275
20	attachment	Spree::Asset	10	20	2024-04-11 14:35:53.388344
21	attachment	Spree::Asset	11	21	2024-04-11 14:35:53.453499
22	attachment	Spree::Asset	12	22	2024-04-11 14:35:53.516044
23	attachment	Spree::Asset	13	23	2024-04-11 14:35:53.55982
24	attachment	Spree::Asset	14	24	2024-04-11 14:35:53.60497
25	attachment	Spree::Asset	15	25	2024-04-11 14:35:53.645728
26	attachment	Spree::Asset	16	26	2024-04-11 14:35:53.686008
27	attachment	Spree::Asset	17	27	2024-04-11 14:35:53.745844
28	attachment	Spree::Asset	18	28	2024-04-11 14:35:53.786936
29	attachment	Spree::Asset	19	29	2024-04-11 14:35:53.838063
30	attachment	Spree::Asset	20	30	2024-04-11 14:35:53.88231
31	attachment	Spree::Asset	21	31	2024-04-11 14:35:53.937529
32	attachment	Spree::Asset	22	32	2024-04-11 14:35:53.982226
33	attachment	Spree::Asset	23	33	2024-04-11 14:35:54.028477
34	attachment	Spree::Asset	24	34	2024-04-11 14:35:54.066593
35	attachment	Spree::Asset	25	35	2024-04-11 14:35:54.108291
36	attachment	Spree::Asset	26	36	2024-04-11 14:35:54.148497
37	attachment	Spree::Asset	27	37	2024-04-11 14:35:54.189495
38	attachment	Spree::Asset	28	38	2024-04-11 14:35:54.230129
39	attachment	Spree::Asset	29	39	2024-04-11 14:35:54.27527
40	attachment	Spree::Asset	30	40	2024-04-11 14:35:54.313876
41	attachment	Spree::Asset	31	41	2024-04-11 14:35:54.356461
42	attachment	Spree::Asset	32	42	2024-04-11 14:35:54.40062
43	attachment	Spree::Asset	33	43	2024-04-11 14:35:54.450039
44	attachment	Spree::Asset	34	44	2024-04-11 14:35:54.489451
45	attachment	Spree::Asset	35	45	2024-04-11 14:35:54.555482
46	attachment	Spree::Asset	36	46	2024-04-11 14:35:54.611669
47	attachment	Spree::Asset	37	47	2024-04-11 14:35:54.658594
48	attachment	Spree::Asset	38	48	2024-04-11 14:35:54.699482
49	attachment	Spree::Asset	39	49	2024-04-11 14:35:54.749794
50	attachment	Spree::Asset	40	50	2024-04-11 14:35:54.795555
51	attachment	Spree::Asset	41	51	2024-04-11 14:35:54.841653
52	attachment	Spree::Asset	42	52	2024-04-11 14:35:54.909903
53	attachment	Spree::Asset	43	53	2024-04-11 14:35:54.962884
54	attachment	Spree::Asset	44	54	2024-04-11 14:35:55.020235
55	attachment	Spree::Asset	45	55	2024-04-11 14:35:55.076153
56	attachment	Spree::Asset	46	56	2024-04-11 14:35:55.119904
57	attachment	Spree::Asset	47	57	2024-04-11 14:35:55.170523
58	attachment	Spree::Asset	48	58	2024-04-11 14:35:55.227853
59	attachment	Spree::Asset	49	59	2024-04-11 14:35:55.278049
60	attachment	Spree::Asset	50	60	2024-04-11 14:35:55.338943
61	image	ActiveStorage::VariantRecord	10	61	2024-04-11 14:36:10.370739
62	image	ActiveStorage::VariantRecord	11	62	2024-04-11 14:36:10.488127
63	image	ActiveStorage::VariantRecord	12	63	2024-04-11 14:36:10.597831
64	image	ActiveStorage::VariantRecord	13	64	2024-04-11 14:36:10.71533
65	image	ActiveStorage::VariantRecord	14	65	2024-04-11 14:36:10.824482
66	image	ActiveStorage::VariantRecord	15	66	2024-04-11 14:36:10.949994
67	image	ActiveStorage::VariantRecord	16	67	2024-04-11 14:36:11.062395
68	image	ActiveStorage::VariantRecord	17	68	2024-04-11 14:36:11.170411
69	image	ActiveStorage::VariantRecord	18	69	2024-04-11 14:36:25.248275
70	image	ActiveStorage::VariantRecord	19	70	2024-04-11 14:36:25.397437
71	image	ActiveStorage::VariantRecord	20	71	2024-04-11 14:36:25.570334
72	image	ActiveStorage::VariantRecord	21	72	2024-04-11 14:36:25.660671
73	image	ActiveStorage::VariantRecord	22	73	2024-04-12 06:34:47.283866
74	image	ActiveStorage::VariantRecord	23	74	2024-04-12 06:34:47.413175
75	image	ActiveStorage::VariantRecord	24	75	2024-04-12 06:34:47.519826
76	image	ActiveStorage::VariantRecord	25	76	2024-04-12 06:34:47.598249
77	image	ActiveStorage::VariantRecord	26	77	2024-04-12 06:34:47.683504
78	image	ActiveStorage::VariantRecord	27	78	2024-04-12 06:34:47.766155
79	image	ActiveStorage::VariantRecord	28	79	2024-04-12 06:34:47.854786
80	image	ActiveStorage::VariantRecord	29	80	2024-04-12 06:34:47.954963
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	akbywfcdxu7wjcimc6t09919790j	Screenshot from 2023-12-26 17-06-15.png	image/png	{"identified":true,"width":1920,"height":1080,"analyzed":true}	local	198292	DHwxq452nji75/vjXuvKSw==	2024-04-11 10:37:39.985004
2	om8k991xagdn9cg2it8rutsu1l7r	Screenshot from 2023-12-26 17-06-15.png	image/png	{"identified":true,"width":32,"height":18,"analyzed":true}	local	887	4hEUhED+3XwqrBPBNA+PRQ==	2024-04-11 10:37:44.916016
3	bllc7k0hqgrdbaw5vn2rkww9l1tw	Screenshot from 2024-04-10 19-46-09.png	image/png	{"identified":true,"width":959,"height":474,"analyzed":true}	local	13143	IJJrRNYfM04dNTP45fi+Bw==	2024-04-11 10:48:48.440036
4	ec63dxd7g82loi5l87136g3qovgw	Screenshot from 2024-04-10 19-46-09.png	image/png	{"identified":true,"width":48,"height":24,"analyzed":true}	local	459	d1qkSRZHXoEm9Y+8N1xj9Q==	2024-04-11 10:48:48.548014
5	nadh5eewqwfg5tvg6pb3igcwbl8o	Screenshot from 2024-04-10 19-46-09.png	image/png	{"identified":true,"width":959,"height":474,"analyzed":true}	local	12995	rB7q3xfDbTdmCi0Gv7E9XQ==	2024-04-11 10:48:48.649993
6	q33zprghwsywwpoxkn6qhql6jmkq	Screenshot from 2024-04-10 19-46-09.png	image/png	{"identified":true,"width":400,"height":198,"analyzed":true}	local	5686	CWCCuVbeclka6gAE3deP7g==	2024-04-11 10:48:58.005036
7	uw9mm9x0wlbk8txlam6msk2shwsp	Screenshot from 2024-04-10 19-46-09.png	image/png	{"identified":true,"width":680,"height":336,"analyzed":true}	local	12026	Oq7IrwEW7ZuC7bl4b3j5qQ==	2024-04-11 10:48:58.09656
8	w5knmbmn8nfxzd0s08djtftzmij4	Screenshot from 2024-03-05 17-30-24.png	image/png	{"identified":true,"width":1920,"height":1080,"analyzed":true}	local	533413	6MKJrP3pEilP3V2+DuhDcQ==	2024-04-11 10:49:14.924577
9	lfbbnb3a397ol4yvb26yxd8vhtiv	Screenshot from 2024-03-05 17-30-24.png	image/png	{"identified":true,"width":48,"height":27,"analyzed":true}	local	1920	n3l2A/KQF6ah8nollB1yig==	2024-04-11 10:49:15.14122
10	biiskd44lzmg027s6kij7vc4c4jv	Screenshot from 2024-03-05 17-30-24.png	image/png	{"identified":true,"width":1200,"height":675,"analyzed":true}	local	329167	R7362xDcPK3r1i4W+MfSzA==	2024-04-11 10:49:15.36711
11	d5zcrg6yyhz1naxxml7f49dj3rog	Screenshot from 2024-03-05 17-30-24.png	image/png	{"identified":true,"width":400,"height":225,"analyzed":true}	local	57102	YRHIdLHb7/vLnm2Vit+Iig==	2024-04-11 10:49:23.070648
12	ei7jvugfvzhc7p3xda5k3b23gyra	Screenshot from 2024-03-05 17-30-24.png	image/png	{"identified":true,"width":680,"height":383,"analyzed":true}	local	134694	ZsydK9Jw7MZtOYZRJiHBkw==	2024-04-11 10:49:23.247748
14	rb2402dc77jr8uzkb3h4q81lsknf	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_back_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	100323	fEl7matt7/kDskGYa9x1PA==	2024-04-11 14:35:53.000031
13	2u19cyu15vt2nf3pkbag444reodl	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	96988	iNflS5AGB1BlfLe+35zCUg==	2024-04-11 14:35:52.964394
15	zu3fepv4o0dhyk9now9tfna4lazo	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	75514	lI9KpBxROm1yoGtX2hj04A==	2024-04-11 14:35:53.049727
16	5zi86wffaj42uwyddyh5y566figx	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_back_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	92686	Am1bwwzjAwRoeMqWwClM7A==	2024-04-11 14:35:53.110532
17	kqjz7bcph9cs2ba8o7xiztkqcjeq	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	59965	JYxVBllRfbEQ+feVZUgZtQ==	2024-04-11 14:35:53.189244
18	g1ifuke892pomkd4i3swpszrsrvo	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_back_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	70115	KzEzb06JGvrxpYHSZYW+lA==	2024-04-11 14:35:53.255056
19	vhcwvckqz3tho650srivn2v3yutg	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	96988	iNflS5AGB1BlfLe+35zCUg==	2024-04-11 14:35:53.326932
20	orztgcdcuby0ryxdu5mnw4zw8frv	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_back_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	100323	fEl7matt7/kDskGYa9x1PA==	2024-04-11 14:35:53.384873
21	nnlgv5h00magixveq54loar632ni	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	59965	JYxVBllRfbEQ+feVZUgZtQ==	2024-04-11 14:35:53.449907
22	7yydm64pgdnc2tcnhw55la5d76y2	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_back_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	70115	KzEzb06JGvrxpYHSZYW+lA==	2024-04-11 14:35:53.513614
23	owsro2c80p3h8xtg4odwxev681i0	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	75514	lI9KpBxROm1yoGtX2hj04A==	2024-04-11 14:35:53.557685
24	96d1sfb8lin07b8axrozb5ntomg9	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_back_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	92686	Am1bwwzjAwRoeMqWwClM7A==	2024-04-11 14:35:53.602611
25	e5ckissimsplkifog9nv17xdp54l	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	96988	iNflS5AGB1BlfLe+35zCUg==	2024-04-11 14:35:53.643814
29	r9yevf16acbawqm253dkwnn9rxh7	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	45723	BW7+UmMJUyAap7a125zEIw==	2024-04-11 14:35:53.833623
30	dzuo6q9mhv2220x8jfr7posxad94	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_back_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	52170	igErrr4KtTGH4oL1tGv+HQ==	2024-04-11 14:35:53.878672
26	thxw1q0ie5jm44blk8lfz7guogqq	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_tshirt_back_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	100323	fEl7matt7/kDskGYa9x1PA==	2024-04-11 14:35:53.683921
27	v3q96gc9rei47poceptqmfr5jt13	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	59757	tHWJol3LbgZRtdKEoxIGlg==	2024-04-11 14:35:53.741536
28	yewm565bxcjcj8kmqte6bonxyr01	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_back_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	66197	iXo/4t3S/w3M3OIJ/nowHg==	2024-04-11 14:35:53.784818
53	3xfun4i3lqlr5k22kjuuy2yd4noi	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/ruby_hoodie.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	69219	5Kga0IQ3b4UgzHVeBCJycw==	2024-04-11 14:35:54.958484
55	ysayqnggn58altvpkc8qct8v5en5	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/ruby_polo.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	41125	pvYLCrSy7WRs92ntN2ChEg==	2024-04-11 14:35:55.07235
57	mjdel5erx364v7qkjhqp6us2c357	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_mug.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	19279	gOYbAPxFhymxeaSl6Ty2DQ==	2024-04-11 14:35:55.166144
31	j6cwxu7hbgmn1eyx3cr1uuhf7432	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	82306	FWzbOkRQAup1xPrrP++J3w==	2024-04-11 14:35:53.934668
32	huakx6a6hbtgybs0pt2cr93jqpib	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_back_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	82479	A9CFJVC171jcLiBzPSwkXQ==	2024-04-11 14:35:53.973966
33	8e0ked923d0egd6druk400l6h00h	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	45723	BW7+UmMJUyAap7a125zEIw==	2024-04-11 14:35:54.02484
34	wkieushzcc9zaqp13iqc6rptthx6	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_back_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	52170	igErrr4KtTGH4oL1tGv+HQ==	2024-04-11 14:35:54.064642
35	f7sati20sem71wa6ihy8tpiggzga	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	59757	tHWJol3LbgZRtdKEoxIGlg==	2024-04-11 14:35:54.106161
36	79e10edjdccxoos01h100u63f3yr	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_back_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	66197	iXo/4t3S/w3M3OIJ/nowHg==	2024-04-11 14:35:54.146449
37	deqr6s8a0lt8d9v1h85p1jgvi3ao	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	82306	FWzbOkRQAup1xPrrP++J3w==	2024-04-11 14:35:54.187524
38	lj8ijyno3wfpvhp6efyxttsw4mfo	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_back_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	82479	A9CFJVC171jcLiBzPSwkXQ==	2024-04-11 14:35:54.228205
39	xl9e738ysurcwzxcdvjzi7qkm17n	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	45723	BW7+UmMJUyAap7a125zEIw==	2024-04-11 14:35:54.272599
40	80ae9rbsb5m2e9hojyyd42nr971k	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_back_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	52170	igErrr4KtTGH4oL1tGv+HQ==	2024-04-11 14:35:54.311426
41	vetu0iev6xwi3b7hixkxo64aritb	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	59757	tHWJol3LbgZRtdKEoxIGlg==	2024-04-11 14:35:54.354324
42	3cxv1hd9w64jy59hoa1aj8lgotzu	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_back_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	66197	iXo/4t3S/w3M3OIJ/nowHg==	2024-04-11 14:35:54.397975
43	yqrkevgxymbd2ih9a7iuvqimwhhf	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	82306	FWzbOkRQAup1xPrrP++J3w==	2024-04-11 14:35:54.448057
44	a4yyyp5kz8wk4xb14dbeedjdl84i	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_long_back_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	82479	A9CFJVC171jcLiBzPSwkXQ==	2024-04-11 14:35:54.487347
45	uudq5ifjj5lu1keerxo1mbkzqwre	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_womens_tshirt_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	63112	sxe9Fa9Y1p2YwNz/sZIYkA==	2024-04-11 14:35:54.553532
46	bw1142w8u27q2a39aaxcreziri85	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_womens_tshirt_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	88792	0CU2OYI0CqZKCfVqxqY10w==	2024-04-11 14:35:54.608899
47	sldko5ln55kybyq0ivy39hxwygpa	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_womens_tshirt_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	56189	X3uTZx7bV+Mhyfl9tHlgeA==	2024-04-11 14:35:54.656193
48	21mnym8aeml6k3jtzijecgp0o7n3	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_womens_tshirt_blue.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	88792	0CU2OYI0CqZKCfVqxqY10w==	2024-04-11 14:35:54.697421
49	ifd445fi2sjujd8i6ej2llr4p04y	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_womens_tshirt_white.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	56189	X3uTZx7bV+Mhyfl9tHlgeA==	2024-04-11 14:35:54.744755
50	bu31mnoefc9xsg27xmbt4xwcj0fl	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_womens_tshirt_black.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	63112	sxe9Fa9Y1p2YwNz/sZIYkA==	2024-04-11 14:35:54.792611
51	q145lh05cfv1fy7e02d67mn2hgoh	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_snapback_cap.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	39261	L6nq1opEm3pJ1sgd5S5DhQ==	2024-04-11 14:35:54.836657
52	d1ulat4t7j9ihhiwok5sx1pexxth	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/solidus_hoodie.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	123966	6eK0433ZndIoKmMD6h9R4g==	2024-04-11 14:35:54.904545
59	0tv3u4e2sknnm684csobvu8nm5hd	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/tote_bag_solidus.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	75349	rEDBWFvl4kuC891968O/FA==	2024-04-11 14:35:55.27533
60	7nuvw0h0bqlt2gx54f1g5fw45ds9	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/tote_bag_ruby.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	78676	ZnF0oGj8tAHiBLIJYIlSLA==	2024-04-11 14:35:55.334952
54	22bt0t95y8vxdoufyx1lp47nl0j4	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/ruby_hoodie_zip.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	125409	7DCnd2pwxvQ2l6Wg+dsE5Q==	2024-04-11 14:35:55.018107
56	46mtpuj7oc7meh7739la01cews0i	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/ruby_polo_back.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	29616	5IlNo766PxuCZK2KQQnJgw==	2024-04-11 14:35:55.117919
58	iwmp9fl1xqpj3gwqbjzw1lylsxb9	/home/rordev/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/solidus_sample-3.4.6/db/samples/images/ruby_mug.jpg	image/jpeg	{"identified":true,"width":1200,"height":1200,"analyzed":true}	local	29824	PyJM8YCN1zIHEEnmptdxog==	2024-04-11 14:35:55.22497
61	nimqffq8cozif5h1vsl58wu9uplr	ruby_hoodie.jpg	image/jpeg	{"identified":true,"width":48,"height":48,"analyzed":true}	local	1122	WbNHCwQYczYWu32kXazOrg==	2024-04-11 14:36:10.367169
62	3v4x5tha4ez09cddrt4hdjmmdyg3	ruby_hoodie_zip.jpg	image/jpeg	{"identified":true,"width":48,"height":48,"analyzed":true}	local	707	IB/oACaeLQ5TaS9VuGlyYQ==	2024-04-11 14:36:10.484643
63	5wqaftkl86ofaygakor0xk0h8k8k	ruby_mug.jpg	image/jpeg	{"identified":true,"width":48,"height":48,"analyzed":true}	local	695	3+2kjl+vCHxbS/Na9e7JKg==	2024-04-11 14:36:10.593277
64	5schp2jvezz9h3duzvg4tzvizelf	ruby_polo.jpg	image/jpeg	{"identified":true,"width":48,"height":48,"analyzed":true}	local	897	nwgbYVRTXROsOaYSjAUGzQ==	2024-04-11 14:36:10.711389
65	dx7v5za2mzjy4t9frgrzzdfu7jhh	tote_bag_ruby.jpg	image/jpeg	{"identified":true,"width":48,"height":48,"analyzed":true}	local	684	Bl+/PF96rh99Q00VuRepGw==	2024-04-11 14:36:10.820995
66	qbjz3y1jae03tahq6ex8gqz6b9mu	solidus_hoodie.jpg	image/jpeg	{"identified":true,"width":48,"height":48,"analyzed":true}	local	1103	ofzl6OR+hdHCHIkapdBWzQ==	2024-04-11 14:36:10.942019
67	9owgbwjdezy3kip6rswrvpkl2su3	solidus_long_black.jpg	image/jpeg	{"identified":true,"width":48,"height":48,"analyzed":true}	local	862	D+60C76eY8DfpKQknEfkwA==	2024-04-11 14:36:11.05836
68	eu9hk9b8rkqebj60mpfpf4z952hh	solidus_mug.jpg	image/jpeg	{"identified":true,"width":48,"height":48,"analyzed":true}	local	632	gHXrADuXqOIMqdbzj0koUg==	2024-04-11 14:36:11.166696
69	albwgk74wse55f7tfl5qw211e7ci	ruby_hoodie_zip.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	14637	fPFWk0Xnlrv0Q3EovNfQLw==	2024-04-11 14:36:25.24436
70	plqo0qop7gaz1p9024uoyqgxhs19	ruby_hoodie.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	16941	W5mPwTXGqaZpHOiBhlrU9w==	2024-04-11 14:36:25.392312
71	qwp5d17ywerg3cyik14h8j3f8fg0	ruby_mug.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	8392	ZY6sdoVNi/h8bCQ40WopSA==	2024-04-11 14:36:25.566779
72	sbwxzlmsyuabn787t3v04yhnk5i8	ruby_polo.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	10964	MTHQGNEBKR07g246C8hyDQ==	2024-04-11 14:36:25.656444
73	945c58wwwrtfcdwmllnew529yqo8	tote_bag_ruby.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	9735	YuaZNnO2S4mkuxPuh/eEcA==	2024-04-12 06:34:47.280578
74	er4y8hpfew86ir8fiq1dvfa2ocv6	tote_bag_solidus.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	8684	OTCScwOmD7uFpeQS29IadA==	2024-04-12 06:34:47.410186
75	br765ino2k6glxe48psfa7gap65m	solidus_snapback_cap.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	5787	WPPyOr6QtWCf1+dOL8rWNg==	2024-04-12 06:34:47.516874
76	5mqhuxyh1w47pujxwl2kgtd6dxo7	solidus_tshirt_blue.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	11826	tlIQnYe1N8qrPi8VToLoAg==	2024-04-12 06:34:47.595468
77	yz9tgs2i9vkxztmyakgcorbfaozt	solidus_hoodie.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	17771	jfrGp3astVWUvsxAO4MRxQ==	2024-04-12 06:34:47.680572
78	34oj6i2iz8u3hswjmpsp1p5rj7dh	solidus_mug.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	5670	6E/NGEXWnrz6PtgP6PfqlA==	2024-04-12 06:34:47.763008
79	cthgos3uveg2tz8ml9eu6mnt78n5	solidus_long_black.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	10294	9HSGC8mO5YBwvgHRO60pAQ==	2024-04-12 06:34:47.851879
80	flus0oqep1bfacn7m22fmypkbsh8	solidus_womens_tshirt_black.jpg	image/jpeg	{"identified":true,"width":400,"height":400,"analyzed":true}	local	10490	ZLSg97d1Is1cmwUG5jKIeg==	2024-04-12 06:34:47.951933
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
1	1	DkjLJYtjI8vS7S4tPvFGEgEPeQw=
2	3	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
3	3	5OgfcLX3sNzIWw092tKLEQF2wBk=
4	3	usOTKXT2Qsf+dT56pxyMnX0pEdY=
5	3	ieFBOdmAz71XyJev5gOcw9DbQTs=
6	8	I2dYAVaiwj80Kk7zCZyo3cGJ+DQ=
7	8	5OgfcLX3sNzIWw092tKLEQF2wBk=
8	8	usOTKXT2Qsf+dT56pxyMnX0pEdY=
9	8	ieFBOdmAz71XyJev5gOcw9DbQTs=
10	53	V8PTsMORauK55OQ/F2z5ESQIPFQ=
11	54	V8PTsMORauK55OQ/F2z5ESQIPFQ=
12	58	V8PTsMORauK55OQ/F2z5ESQIPFQ=
13	55	V8PTsMORauK55OQ/F2z5ESQIPFQ=
14	60	V8PTsMORauK55OQ/F2z5ESQIPFQ=
15	52	V8PTsMORauK55OQ/F2z5ESQIPFQ=
16	27	V8PTsMORauK55OQ/F2z5ESQIPFQ=
17	57	V8PTsMORauK55OQ/F2z5ESQIPFQ=
18	54	i3ksIYlbQ8gQQ1zok89RypLQnk8=
19	53	i3ksIYlbQ8gQQ1zok89RypLQnk8=
20	58	i3ksIYlbQ8gQQ1zok89RypLQnk8=
21	55	i3ksIYlbQ8gQQ1zok89RypLQnk8=
22	60	i3ksIYlbQ8gQQ1zok89RypLQnk8=
23	59	i3ksIYlbQ8gQQ1zok89RypLQnk8=
24	51	i3ksIYlbQ8gQQ1zok89RypLQnk8=
25	13	i3ksIYlbQ8gQQ1zok89RypLQnk8=
26	52	i3ksIYlbQ8gQQ1zok89RypLQnk8=
27	57	i3ksIYlbQ8gQQ1zok89RypLQnk8=
28	27	i3ksIYlbQ8gQQ1zok89RypLQnk8=
29	45	i3ksIYlbQ8gQQ1zok89RypLQnk8=
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-04-01 17:34:46.684419	2024-04-01 17:34:46.684419
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, created_at, updated_at) FROM stdin;
1	Bag	2024-04-09 11:29:20.046367	2024-04-09 11:29:20.046367
2	Laptop	2024-04-09 11:40:12.178835	2024-04-09 11:40:12.178835
3	Pen	2024-04-09 11:40:25.890256	2024-04-09 11:40:25.890256
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at, updated_at) FROM stdin;
1	my-product	1	Spree::Product	\N	2024-04-11 10:48:21.622753	2024-04-11 10:48:21.622753
2	my-product-70	2	Spree::Product	\N	2024-04-11 10:53:42.574323	2024-04-11 10:53:42.574323
3	solidus-t-shirt	3	Spree::Product	\N	2024-04-11 14:35:46.705442	2024-04-11 14:35:46.705442
4	solidus-long-sleeve	4	Spree::Product	\N	2024-04-11 14:35:46.810039	2024-04-11 14:35:46.810039
5	solidus-women-s-t-shirt	5	Spree::Product	\N	2024-04-11 14:35:46.86173	2024-04-11 14:35:46.86173
6	solidus-snapback-cap	6	Spree::Product	\N	2024-04-11 14:35:46.926109	2024-04-11 14:35:46.926109
7	solidus-hoodie-zip	7	Spree::Product	\N	2024-04-11 14:35:46.979029	2024-04-11 14:35:46.979029
8	ruby-hoodie	8	Spree::Product	\N	2024-04-11 14:35:47.029311	2024-04-11 14:35:47.029311
9	ruby-hoodie-zip	9	Spree::Product	\N	2024-04-11 14:35:47.081856	2024-04-11 14:35:47.081856
10	ruby-polo	10	Spree::Product	\N	2024-04-11 14:35:47.132783	2024-04-11 14:35:47.132783
11	solidus-mug	11	Spree::Product	\N	2024-04-11 14:35:47.181309	2024-04-11 14:35:47.181309
12	ruby-mug	12	Spree::Product	\N	2024-04-11 14:35:47.237548	2024-04-11 14:35:47.237548
13	solidus-tote	13	Spree::Product	\N	2024-04-11 14:35:47.289012	2024-04-11 14:35:47.289012
14	ruby-tote	14	Spree::Product	\N	2024-04-11 14:35:47.347835	2024-04-11 14:35:47.347835
\.


--
-- Data for Name: paypal_commerce_platform_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paypal_commerce_platform_sources (id, payment_method_id, authorization_id, capture_id, paypal_email, paypal_order_id, refund_id, created_at, updated_at, paypal_funding_source) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, description, price, category_id, created_at, updated_at) FROM stdin;
1	bag1	\N	12.0	1	2024-04-09 11:30:58.138386	2024-04-09 11:30:58.138386
2	bag2	\N	12.0	1	2024-04-09 11:37:07.324357	2024-04-09 11:37:07.324357
3	bag2	\N	12.0	1	2024-04-09 11:37:11.638207	2024-04-09 11:37:11.638207
4	bag2	\N	12.0	2	2024-04-09 11:46:01.719435	2024-04-09 11:46:01.719435
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20230316131044
20230316131046
20230316131047
20230316131048
20230316131049
20230316131050
20230316131051
20230316131052
20230316131053
20230316131054
20230316131055
20230316131056
20230316131057
20230316131058
20230316131059
20230316131060
20230316131061
20230316131062
20230316131063
20230316131064
20230316131065
20230316131066
20230316131067
20230316131068
20230316131069
20230316131070
20230316131071
20230316131072
20230316131073
20230316131074
20230316131075
20230316131076
20230316131077
20230316131078
20230316131079
20230316131080
20230316131081
20230316131082
20230316131083
20230316131084
20230316131085
20230316131086
20230316131156
20230316131157
20230316131158
20230316131159
20230316131160
20230316131161
20230316131162
20230316131163
20230316131164
20230316131239
20230316131240
20240409111649
20240409112153
\.


--
-- Data for Name: spree_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_addresses (id, firstname, lastname, address1, address2, city, zipcode, phone, state_name, alternative_phone, company, state_id, country_id, created_at, updated_at, name) FROM stdin;
1	\N	\N	67016 Murphy Fork	Apt. 351	Keeblerfort	16804	1-744-701-0536 x30504	\N	\N	\N	3471	233	2024-04-11 14:35:55.406854	2024-04-11 14:35:55.406854	Jessika Daugherty
2	\N	\N	7377 Jacobi Passage	Apt. 351	Lucilefurt	16804	(855)317-6523	\N	\N	\N	3471	233	2024-04-11 14:35:55.412965	2024-04-11 14:35:55.412965	Mi Gaylord
\.


--
-- Data for Name: spree_adjustment_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_adjustment_reasons (id, name, code, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_adjustments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_adjustments (id, source_type, source_id, adjustable_type, adjustable_id, amount, label, eligible, created_at, updated_at, order_id, included, promotion_code_id, adjustment_reason_id, finalized) FROM stdin;
1	Spree::TaxRate	1	Spree::LineItem	1	0.80	North America 5.0%	t	2024-04-11 14:35:55.781602	2024-04-11 14:35:55.93418	2	f	\N	\N	t
2	Spree::TaxRate	1	Spree::Shipment	1	0.25	North America 5.0%	t	2024-04-11 14:35:55.78664	2024-04-11 14:35:55.944898	2	f	\N	\N	t
3	Spree::TaxRate	1	Spree::LineItem	2	1.15	North America 5.0%	t	2024-04-11 14:35:56.224338	2024-04-11 14:35:56.392376	3	f	\N	\N	t
4	Spree::TaxRate	1	Spree::Shipment	2	0.25	North America 5.0%	t	2024-04-11 14:35:56.233407	2024-04-11 14:35:56.402207	3	f	\N	\N	t
\.


--
-- Data for Name: spree_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_assets (id, viewable_type, viewable_id, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) FROM stdin;
1	Spree::Variant	1	\N	\N	\N	1	\N	\N	Spree::Image	\N	dfghjk	2024-04-11 10:48:48.41421	2024-04-11 10:48:57.914152
37	Spree::Variant	33	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.640334	2024-04-11 14:35:54.660072
2	Spree::Variant	1	\N	\N	\N	2	\N	\N	Spree::Image	\N	ss	2024-04-11 10:49:14.898466	2024-04-11 10:49:22.868427
3	Spree::Variant	15	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:52.954044	2024-04-11 14:35:52.968054
4	Spree::Variant	15	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:52.988776	2024-04-11 14:35:53.003398
5	Spree::Variant	16	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.033248	2024-04-11 14:35:53.055074
6	Spree::Variant	16	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.090997	2024-04-11 14:35:53.118293
7	Spree::Variant	17	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.160119	2024-04-11 14:35:53.195876
8	Spree::Variant	17	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.23347	2024-04-11 14:35:53.261655
9	Spree::Variant	18	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.297339	2024-04-11 14:35:53.337069
10	Spree::Variant	18	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.365404	2024-04-11 14:35:53.391047
11	Spree::Variant	19	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.430262	2024-04-11 14:35:53.457347
12	Spree::Variant	19	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.499417	2024-04-11 14:35:53.517737
13	Spree::Variant	20	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.543131	2024-04-11 14:35:53.562073
14	Spree::Variant	20	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.587303	2024-04-11 14:35:53.606635
15	Spree::Variant	21	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.631336	2024-04-11 14:35:53.647452
16	Spree::Variant	21	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.670003	2024-04-11 14:35:53.687883
17	Spree::Variant	22	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.721149	2024-04-11 14:35:53.748742
18	Spree::Variant	22	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.771246	2024-04-11 14:35:53.788815
19	Spree::Variant	23	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.816105	2024-04-11 14:35:53.840686
20	Spree::Variant	23	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.860845	2024-04-11 14:35:53.885518
21	Spree::Variant	24	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.914433	2024-04-11 14:35:53.939843
22	Spree::Variant	24	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:53.958546	2024-04-11 14:35:53.985461
23	Spree::Variant	25	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.008921	2024-04-11 14:35:54.030806
24	Spree::Variant	25	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.050651	2024-04-11 14:35:54.068401
25	Spree::Variant	26	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.092806	2024-04-11 14:35:54.110525
26	Spree::Variant	26	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.132681	2024-04-11 14:35:54.15076
27	Spree::Variant	27	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.173419	2024-04-11 14:35:54.191316
28	Spree::Variant	27	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.213937	2024-04-11 14:35:54.231902
29	Spree::Variant	28	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.260347	2024-04-11 14:35:54.277085
30	Spree::Variant	28	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.298934	2024-04-11 14:35:54.315701
31	Spree::Variant	29	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.33532	2024-04-11 14:35:54.358559
32	Spree::Variant	29	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.382503	2024-04-11 14:35:54.402576
33	Spree::Variant	30	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.435417	2024-04-11 14:35:54.451787
34	Spree::Variant	30	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.473339	2024-04-11 14:35:54.491314
35	Spree::Variant	31	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.537883	2024-04-11 14:35:54.557043
36	Spree::Variant	32	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.592957	2024-04-11 14:35:54.613901
38	Spree::Variant	34	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.685231	2024-04-11 14:35:54.701377
39	Spree::Variant	35	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.732689	2024-04-11 14:35:54.752224
40	Spree::Variant	36	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.780234	2024-04-11 14:35:54.798965
41	Spree::Variant	6	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.820333	2024-04-11 14:35:54.844565
42	Spree::Variant	7	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.877192	2024-04-11 14:35:54.912897
43	Spree::Variant	8	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.938905	2024-04-11 14:35:54.969709
44	Spree::Variant	9	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:54.998942	2024-04-11 14:35:55.022086
45	Spree::Variant	10	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:55.053216	2024-04-11 14:35:55.079503
46	Spree::Variant	10	\N	\N	\N	2	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:55.104646	2024-04-11 14:35:55.121671
47	Spree::Variant	11	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:55.149116	2024-04-11 14:35:55.172799
48	Spree::Variant	12	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:55.20549	2024-04-11 14:35:55.230053
49	Spree::Variant	13	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:55.258016	2024-04-11 14:35:55.282118
50	Spree::Variant	14	\N	\N	\N	1	\N	\N	Spree::Image	\N	\N	2024-04-11 14:35:55.314171	2024-04-11 14:35:55.342226
\.


--
-- Data for Name: spree_calculators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_calculators (id, type, calculable_type, calculable_id, created_at, updated_at, preferences) FROM stdin;
1	Spree::Calculator::DefaultTax	Spree::TaxRate	1	2024-04-11 14:35:46.283021	2024-04-11 14:35:46.298011	\N
2	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	1	2024-04-11 14:35:46.388707	2024-04-11 14:35:46.531551	---\n:amount: 5\n:currency: USD\n
5	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	4	2024-04-11 14:35:46.413343	2024-04-11 14:35:46.540603	---\n:amount: 5\n:currency: USD\n
4	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	3	2024-04-11 14:35:46.40602	2024-04-11 14:35:46.549213	---\n:amount: 15\n:currency: USD\n
3	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	2	2024-04-11 14:35:46.397732	2024-04-11 14:35:46.55783	---\n:amount: 10\n:currency: USD\n
6	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	5	2024-04-11 14:35:46.419735	2024-04-11 14:35:46.566377	---\n:amount: 8\n:currency: EUR\n
\.


--
-- Data for Name: spree_cartons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_cartons (id, number, external_number, stock_location_id, address_id, shipping_method_id, tracking, shipped_at, created_at, updated_at, imported_from_shipment_id) FROM stdin;
1	C13661450547	\N	1	1	1	\N	2024-04-11 14:35:56.939433	2024-04-11 14:35:56.96744	2024-04-11 14:35:56.96744	\N
\.


--
-- Data for Name: spree_countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_countries (id, iso_name, iso, iso3, name, numcode, states_required, updated_at, created_at) FROM stdin;
1	ANDORRA	AD	AND	Andorra	20	t	\N	\N
2	UNITED ARAB EMIRATES	AE	ARE	United Arab Emirates	784	t	\N	\N
3	AFGHANISTAN	AF	AFG	Afghanistan	4	t	\N	\N
4	ANTIGUA AND BARBUDA	AG	ATG	Antigua and Barbuda	28	t	\N	\N
5	ANGUILLA	AI	AIA	Anguilla	660	f	\N	\N
6	ALBANIA	AL	ALB	Albania	8	t	\N	\N
7	ARMENIA	AM	ARM	Armenia	51	t	\N	\N
8	ANGOLA	AO	AGO	Angola	24	t	\N	\N
9	ANTARCTICA	AQ	ATA	Antarctica	10	f	\N	\N
10	ARGENTINA	AR	ARG	Argentina	32	t	\N	\N
11	AMERICAN SAMOA	AS	ASM	American Samoa	16	f	\N	\N
12	AUSTRIA	AT	AUT	Austria	40	t	\N	\N
13	AUSTRALIA	AU	AUS	Australia	36	t	\N	\N
14	ARUBA	AW	ABW	Aruba	533	f	\N	\N
15	ÅLAND ISLANDS	AX	ALA	Åland Islands	248	f	\N	\N
16	AZERBAIJAN	AZ	AZE	Azerbaijan	31	t	\N	\N
17	BOSNIA AND HERZEGOVINA	BA	BIH	Bosnia and Herzegovina	70	t	\N	\N
18	BARBADOS	BB	BRB	Barbados	52	t	\N	\N
19	BANGLADESH	BD	BGD	Bangladesh	50	t	\N	\N
20	BELGIUM	BE	BEL	Belgium	56	t	\N	\N
21	BURKINA FASO	BF	BFA	Burkina Faso	854	t	\N	\N
22	BULGARIA	BG	BGR	Bulgaria	100	t	\N	\N
23	BAHRAIN	BH	BHR	Bahrain	48	t	\N	\N
24	BURUNDI	BI	BDI	Burundi	108	t	\N	\N
25	BENIN	BJ	BEN	Benin	204	t	\N	\N
26	SAINT BARTHÉLEMY	BL	BLM	Saint Barthélemy	652	f	\N	\N
27	BERMUDA	BM	BMU	Bermuda	60	t	\N	\N
28	BRUNEI DARUSSALAM	BN	BRN	Brunei Darussalam	96	t	\N	\N
29	BOLIVIA, PLURINATIONAL STATE OF	BO	BOL	Bolivia, Plurinational State of	68	t	\N	\N
30	BONAIRE, SINT EUSTATIUS AND SABA	BQ	BES	Bonaire, Sint Eustatius and Saba	535	t	\N	\N
31	BRAZIL	BR	BRA	Brazil	76	t	\N	\N
32	BAHAMAS	BS	BHS	Bahamas	44	t	\N	\N
33	BHUTAN	BT	BTN	Bhutan	64	t	\N	\N
34	BOUVET ISLAND	BV	BVT	Bouvet Island	74	f	\N	\N
35	BOTSWANA	BW	BWA	Botswana	72	t	\N	\N
36	BELARUS	BY	BLR	Belarus	112	t	\N	\N
37	BELIZE	BZ	BLZ	Belize	84	t	\N	\N
38	CANADA	CA	CAN	Canada	124	t	\N	\N
39	COCOS (KEELING) ISLANDS	CC	CCK	Cocos (Keeling) Islands	166	f	\N	\N
40	CONGO, THE DEMOCRATIC REPUBLIC OF THE	CD	COD	Congo, The Democratic Republic of the	180	t	\N	\N
41	CENTRAL AFRICAN REPUBLIC	CF	CAF	Central African Republic	140	t	\N	\N
42	CONGO	CG	COG	Congo	178	t	\N	\N
43	SWITZERLAND	CH	CHE	Switzerland	756	t	\N	\N
44	CÔTE D'IVOIRE	CI	CIV	Côte d'Ivoire	384	t	\N	\N
45	COOK ISLANDS	CK	COK	Cook Islands	184	f	\N	\N
46	CHILE	CL	CHL	Chile	152	t	\N	\N
47	CAMEROON	CM	CMR	Cameroon	120	t	\N	\N
48	CHINA	CN	CHN	China	156	t	\N	\N
49	COLOMBIA	CO	COL	Colombia	170	t	\N	\N
50	COSTA RICA	CR	CRI	Costa Rica	188	t	\N	\N
51	CUBA	CU	CUB	Cuba	192	t	\N	\N
52	CABO VERDE	CV	CPV	Cabo Verde	132	t	\N	\N
53	CURAÇAO	CW	CUW	Curaçao	531	f	\N	\N
54	CHRISTMAS ISLAND	CX	CXR	Christmas Island	162	f	\N	\N
55	CYPRUS	CY	CYP	Cyprus	196	t	\N	\N
56	CZECHIA	CZ	CZE	Czechia	203	t	\N	\N
57	GERMANY	DE	DEU	Germany	276	t	\N	\N
58	DJIBOUTI	DJ	DJI	Djibouti	262	t	\N	\N
59	DENMARK	DK	DNK	Denmark	208	t	\N	\N
60	DOMINICA	DM	DMA	Dominica	212	t	\N	\N
61	DOMINICAN REPUBLIC	DO	DOM	Dominican Republic	214	t	\N	\N
62	ALGERIA	DZ	DZA	Algeria	12	t	\N	\N
63	ECUADOR	EC	ECU	Ecuador	218	t	\N	\N
64	ESTONIA	EE	EST	Estonia	233	t	\N	\N
65	EGYPT	EG	EGY	Egypt	818	t	\N	\N
66	WESTERN SAHARA	EH	ESH	Western Sahara	732	f	\N	\N
67	ERITREA	ER	ERI	Eritrea	232	t	\N	\N
68	SPAIN	ES	ESP	Spain	724	t	\N	\N
69	ETHIOPIA	ET	ETH	Ethiopia	231	t	\N	\N
70	FINLAND	FI	FIN	Finland	246	t	\N	\N
71	FIJI	FJ	FJI	Fiji	242	t	\N	\N
72	FALKLAND ISLANDS (MALVINAS)	FK	FLK	Falkland Islands (Malvinas)	238	f	\N	\N
73	MICRONESIA, FEDERATED STATES OF	FM	FSM	Micronesia, Federated States of	583	t	\N	\N
74	FAROE ISLANDS	FO	FRO	Faroe Islands	234	f	\N	\N
75	FRANCE	FR	FRA	France	250	t	\N	\N
76	GABON	GA	GAB	Gabon	266	t	\N	\N
77	UNITED KINGDOM	GB	GBR	United Kingdom	826	t	\N	\N
78	GRENADA	GD	GRD	Grenada	308	t	\N	\N
79	GEORGIA	GE	GEO	Georgia	268	t	\N	\N
80	FRENCH GUIANA	GF	GUF	French Guiana	254	f	\N	\N
81	GUERNSEY	GG	GGY	Guernsey	831	f	\N	\N
82	GHANA	GH	GHA	Ghana	288	t	\N	\N
83	GIBRALTAR	GI	GIB	Gibraltar	292	f	\N	\N
84	GREENLAND	GL	GRL	Greenland	304	t	\N	\N
85	GAMBIA	GM	GMB	Gambia	270	t	\N	\N
86	GUINEA	GN	GIN	Guinea	324	t	\N	\N
87	GUADELOUPE	GP	GLP	Guadeloupe	312	f	\N	\N
88	EQUATORIAL GUINEA	GQ	GNQ	Equatorial Guinea	226	t	\N	\N
89	GREECE	GR	GRC	Greece	300	t	\N	\N
90	SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS	GS	SGS	South Georgia and the South Sandwich Islands	239	f	\N	\N
91	GUATEMALA	GT	GTM	Guatemala	320	t	\N	\N
92	GUAM	GU	GUM	Guam	316	f	\N	\N
93	GUINEA-BISSAU	GW	GNB	Guinea-Bissau	624	t	\N	\N
94	GUYANA	GY	GUY	Guyana	328	t	\N	\N
95	HONG KONG	HK	HKG	Hong Kong	344	f	\N	\N
96	HEARD ISLAND AND MCDONALD ISLANDS	HM	HMD	Heard Island and McDonald Islands	334	f	\N	\N
97	HONDURAS	HN	HND	Honduras	340	t	\N	\N
98	CROATIA	HR	HRV	Croatia	191	t	\N	\N
99	HAITI	HT	HTI	Haiti	332	t	\N	\N
100	HUNGARY	HU	HUN	Hungary	348	t	\N	\N
101	INDONESIA	ID	IDN	Indonesia	360	t	\N	\N
102	IRELAND	IE	IRL	Ireland	372	t	\N	\N
103	ISRAEL	IL	ISR	Israel	376	t	\N	\N
104	ISLE OF MAN	IM	IMN	Isle of Man	833	f	\N	\N
105	INDIA	IN	IND	India	356	t	\N	\N
106	BRITISH INDIAN OCEAN TERRITORY	IO	IOT	British Indian Ocean Territory	86	f	\N	\N
107	IRAQ	IQ	IRQ	Iraq	368	t	\N	\N
108	IRAN, ISLAMIC REPUBLIC OF	IR	IRN	Iran, Islamic Republic of	364	t	\N	\N
109	ICELAND	IS	ISL	Iceland	352	t	\N	\N
110	ITALY	IT	ITA	Italy	380	t	\N	\N
111	JERSEY	JE	JEY	Jersey	832	f	\N	\N
112	JAMAICA	JM	JAM	Jamaica	388	t	\N	\N
113	JORDAN	JO	JOR	Jordan	400	t	\N	\N
114	JAPAN	JP	JPN	Japan	392	t	\N	\N
115	KENYA	KE	KEN	Kenya	404	t	\N	\N
116	KYRGYZSTAN	KG	KGZ	Kyrgyzstan	417	t	\N	\N
117	CAMBODIA	KH	KHM	Cambodia	116	t	\N	\N
118	KIRIBATI	KI	KIR	Kiribati	296	t	\N	\N
119	COMOROS	KM	COM	Comoros	174	t	\N	\N
120	SAINT KITTS AND NEVIS	KN	KNA	Saint Kitts and Nevis	659	t	\N	\N
121	KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF	KP	PRK	Korea, Democratic People's Republic of	408	t	\N	\N
122	KOREA, REPUBLIC OF	KR	KOR	Korea, Republic of	410	t	\N	\N
123	KUWAIT	KW	KWT	Kuwait	414	t	\N	\N
124	CAYMAN ISLANDS	KY	CYM	Cayman Islands	136	f	\N	\N
125	KAZAKHSTAN	KZ	KAZ	Kazakhstan	398	t	\N	\N
126	LAO PEOPLE'S DEMOCRATIC REPUBLIC	LA	LAO	Lao People's Democratic Republic	418	t	\N	\N
127	LEBANON	LB	LBN	Lebanon	422	t	\N	\N
128	SAINT LUCIA	LC	LCA	Saint Lucia	662	f	\N	\N
129	LIECHTENSTEIN	LI	LIE	Liechtenstein	438	t	\N	\N
130	SRI LANKA	LK	LKA	Sri Lanka	144	t	\N	\N
131	LIBERIA	LR	LBR	Liberia	430	t	\N	\N
132	LESOTHO	LS	LSO	Lesotho	426	t	\N	\N
133	LITHUANIA	LT	LTU	Lithuania	440	t	\N	\N
134	LUXEMBOURG	LU	LUX	Luxembourg	442	t	\N	\N
135	LATVIA	LV	LVA	Latvia	428	t	\N	\N
136	LIBYA	LY	LBY	Libya	434	t	\N	\N
137	MOROCCO	MA	MAR	Morocco	504	t	\N	\N
138	MONACO	MC	MCO	Monaco	492	t	\N	\N
139	MOLDOVA, REPUBLIC OF	MD	MDA	Moldova, Republic of	498	t	\N	\N
140	MONTENEGRO	ME	MNE	Montenegro	499	t	\N	\N
141	SAINT MARTIN (FRENCH PART)	MF	MAF	Saint Martin (French part)	663	f	\N	\N
142	MADAGASCAR	MG	MDG	Madagascar	450	t	\N	\N
143	MARSHALL ISLANDS	MH	MHL	Marshall Islands	584	t	\N	\N
144	NORTH MACEDONIA	MK	MKD	North Macedonia	807	t	\N	\N
145	MALI	ML	MLI	Mali	466	t	\N	\N
146	MYANMAR	MM	MMR	Myanmar	104	t	\N	\N
147	MONGOLIA	MN	MNG	Mongolia	496	t	\N	\N
148	MACAO	MO	MAC	Macao	446	f	\N	\N
149	NORTHERN MARIANA ISLANDS	MP	MNP	Northern Mariana Islands	580	f	\N	\N
150	MARTINIQUE	MQ	MTQ	Martinique	474	f	\N	\N
151	MAURITANIA	MR	MRT	Mauritania	478	t	\N	\N
152	MONTSERRAT	MS	MSR	Montserrat	500	f	\N	\N
153	MALTA	MT	MLT	Malta	470	t	\N	\N
154	MAURITIUS	MU	MUS	Mauritius	480	t	\N	\N
155	MALDIVES	MV	MDV	Maldives	462	t	\N	\N
156	MALAWI	MW	MWI	Malawi	454	t	\N	\N
157	MEXICO	MX	MEX	Mexico	484	t	\N	\N
158	MALAYSIA	MY	MYS	Malaysia	458	t	\N	\N
159	MOZAMBIQUE	MZ	MOZ	Mozambique	508	t	\N	\N
160	NAMIBIA	NA	NAM	Namibia	516	t	\N	\N
161	NEW CALEDONIA	NC	NCL	New Caledonia	540	f	\N	\N
162	NIGER	NE	NER	Niger	562	t	\N	\N
163	NORFOLK ISLAND	NF	NFK	Norfolk Island	574	f	\N	\N
164	NIGERIA	NG	NGA	Nigeria	566	t	\N	\N
165	NICARAGUA	NI	NIC	Nicaragua	558	t	\N	\N
166	NETHERLANDS	NL	NLD	Netherlands	528	t	\N	\N
167	NORWAY	NO	NOR	Norway	578	t	\N	\N
168	NEPAL	NP	NPL	Nepal	524	t	\N	\N
169	NAURU	NR	NRU	Nauru	520	t	\N	\N
170	NIUE	NU	NIU	Niue	570	f	\N	\N
171	NEW ZEALAND	NZ	NZL	New Zealand	554	t	\N	\N
172	OMAN	OM	OMN	Oman	512	t	\N	\N
173	PANAMA	PA	PAN	Panama	591	t	\N	\N
174	PERU	PE	PER	Peru	604	t	\N	\N
175	FRENCH POLYNESIA	PF	PYF	French Polynesia	258	f	\N	\N
176	PAPUA NEW GUINEA	PG	PNG	Papua New Guinea	598	t	\N	\N
177	PHILIPPINES	PH	PHL	Philippines	608	t	\N	\N
178	PAKISTAN	PK	PAK	Pakistan	586	t	\N	\N
179	POLAND	PL	POL	Poland	616	t	\N	\N
180	SAINT PIERRE AND MIQUELON	PM	SPM	Saint Pierre and Miquelon	666	f	\N	\N
181	PITCAIRN	PN	PCN	Pitcairn	612	f	\N	\N
182	PUERTO RICO	PR	PRI	Puerto Rico	630	f	\N	\N
183	PALESTINE, STATE OF	PS	PSE	Palestine, State of	275	t	\N	\N
184	PORTUGAL	PT	PRT	Portugal	620	t	\N	\N
185	PALAU	PW	PLW	Palau	585	t	\N	\N
186	PARAGUAY	PY	PRY	Paraguay	600	t	\N	\N
187	QATAR	QA	QAT	Qatar	634	t	\N	\N
188	RÉUNION	RE	REU	Réunion	638	f	\N	\N
189	ROMANIA	RO	ROU	Romania	642	t	\N	\N
190	SERBIA	RS	SRB	Serbia	688	t	\N	\N
191	RUSSIA	RU	RUS	Russia	643	t	\N	\N
192	RWANDA	RW	RWA	Rwanda	646	t	\N	\N
193	SAUDI ARABIA	SA	SAU	Saudi Arabia	682	t	\N	\N
194	SOLOMON ISLANDS	SB	SLB	Solomon Islands	90	t	\N	\N
195	SEYCHELLES	SC	SYC	Seychelles	690	t	\N	\N
196	SUDAN	SD	SDN	Sudan	729	t	\N	\N
197	SWEDEN	SE	SWE	Sweden	752	t	\N	\N
198	SINGAPORE	SG	SGP	Singapore	702	t	\N	\N
199	SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA	SH	SHN	Saint Helena, Ascension and Tristan da Cunha	654	t	\N	\N
200	SLOVENIA	SI	SVN	Slovenia	705	t	\N	\N
201	SVALBARD AND JAN MAYEN	SJ	SJM	Svalbard and Jan Mayen	744	f	\N	\N
202	SLOVAKIA	SK	SVK	Slovakia	703	t	\N	\N
203	SIERRA LEONE	SL	SLE	Sierra Leone	694	t	\N	\N
204	SAN MARINO	SM	SMR	San Marino	674	t	\N	\N
205	SENEGAL	SN	SEN	Senegal	686	t	\N	\N
206	SOMALIA	SO	SOM	Somalia	706	t	\N	\N
207	SURINAME	SR	SUR	Suriname	740	t	\N	\N
208	SOUTH SUDAN	SS	SSD	South Sudan	728	t	\N	\N
209	SAO TOME AND PRINCIPE	ST	STP	Sao Tome and Principe	678	t	\N	\N
210	EL SALVADOR	SV	SLV	El Salvador	222	t	\N	\N
211	SINT MAARTEN (DUTCH PART)	SX	SXM	Sint Maarten (Dutch part)	534	f	\N	\N
212	SYRIAN ARAB REPUBLIC	SY	SYR	Syrian Arab Republic	760	t	\N	\N
213	ESWATINI	SZ	SWZ	Eswatini	748	t	\N	\N
214	TURKS AND CAICOS ISLANDS	TC	TCA	Turks and Caicos Islands	796	f	\N	\N
215	CHAD	TD	TCD	Chad	148	t	\N	\N
216	FRENCH SOUTHERN TERRITORIES	TF	ATF	French Southern Territories	260	f	\N	\N
217	TOGO	TG	TGO	Togo	768	t	\N	\N
218	THAILAND	TH	THA	Thailand	764	t	\N	\N
219	TAJIKISTAN	TJ	TJK	Tajikistan	762	t	\N	\N
220	TOKELAU	TK	TKL	Tokelau	772	f	\N	\N
221	TIMOR-LESTE	TL	TLS	Timor-Leste	626	t	\N	\N
222	TURKMENISTAN	TM	TKM	Turkmenistan	795	t	\N	\N
223	TUNISIA	TN	TUN	Tunisia	788	t	\N	\N
224	TONGA	TO	TON	Tonga	776	t	\N	\N
225	TURKEY	TR	TUR	Turkey	792	t	\N	\N
226	TRINIDAD AND TOBAGO	TT	TTO	Trinidad and Tobago	780	t	\N	\N
227	TUVALU	TV	TUV	Tuvalu	798	t	\N	\N
228	TAIWAN	TW	TWN	Taiwan	158	t	\N	\N
229	TANZANIA, UNITED REPUBLIC OF	TZ	TZA	Tanzania, United Republic of	834	t	\N	\N
230	UKRAINE	UA	UKR	Ukraine	804	t	\N	\N
231	UGANDA	UG	UGA	Uganda	800	t	\N	\N
232	UNITED STATES MINOR OUTLYING ISLANDS	UM	UMI	United States Minor Outlying Islands	581	t	\N	\N
233	UNITED STATES	US	USA	United States	840	t	\N	\N
234	URUGUAY	UY	URY	Uruguay	858	t	\N	\N
235	UZBEKISTAN	UZ	UZB	Uzbekistan	860	t	\N	\N
236	HOLY SEE (VATICAN CITY STATE)	VA	VAT	Holy See (Vatican City State)	336	f	\N	\N
237	SAINT VINCENT AND THE GRENADINES	VC	VCT	Saint Vincent and the Grenadines	670	t	\N	\N
238	VENEZUELA, BOLIVARIAN REPUBLIC OF	VE	VEN	Venezuela, Bolivarian Republic of	862	t	\N	\N
239	VIRGIN ISLANDS, BRITISH	VG	VGB	Virgin Islands, British	92	f	\N	\N
240	VIRGIN ISLANDS, U.S.	VI	VIR	Virgin Islands, U.S.	850	f	\N	\N
241	VIETNAM	VN	VNM	Vietnam	704	t	\N	\N
242	VANUATU	VU	VUT	Vanuatu	548	t	\N	\N
243	WALLIS AND FUTUNA	WF	WLF	Wallis and Futuna	876	f	\N	\N
244	SAMOA	WS	WSM	Samoa	882	t	\N	\N
245	YEMEN	YE	YEM	Yemen	887	t	\N	\N
246	MAYOTTE	YT	MYT	Mayotte	175	f	\N	\N
247	SOUTH AFRICA	ZA	ZAF	South Africa	710	t	\N	\N
248	ZAMBIA	ZM	ZMB	Zambia	894	t	\N	\N
249	ZIMBABWE	ZW	ZWE	Zimbabwe	716	t	\N	\N
\.


--
-- Data for Name: spree_credit_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_credit_cards (id, month, year, cc_type, last_digits, gateway_customer_profile_id, gateway_payment_profile_id, created_at, updated_at, name, user_id, payment_method_id, "default", address_id) FROM stdin;
1	12	2026	visa	1111	BGS-1234	\N	2024-04-11 14:35:56.499412	2024-04-11 14:35:56.499412	Sean Schofield	\N	\N	f	\N
\.


--
-- Data for Name: spree_customer_returns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_customer_returns (id, number, stock_location_id, created_at, updated_at) FROM stdin;
1	CR536874651	1	2024-04-11 14:35:57.176758	2024-04-11 14:35:57.509931
\.


--
-- Data for Name: spree_inventory_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_inventory_units (id, state, variant_id, shipment_id, created_at, updated_at, pending, line_item_id, carton_id) FROM stdin;
1	on_hand	13	1	2024-04-11 14:35:55.697273	2024-04-11 14:35:56.003158	f	1	\N
2	returned	6	2	2024-04-11 14:35:56.136631	2024-04-11 14:35:57.218344	f	2	1
\.


--
-- Data for Name: spree_line_item_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_line_item_actions (id, line_item_id, action_id, quantity, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_line_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_line_items (id, variant_id, order_id, quantity, price, created_at, updated_at, cost_price, tax_category_id, adjustment_total, additional_tax_total, promo_total, included_tax_total) FROM stdin;
1	13	2	1	15.99	2024-04-11 14:35:55.52591	2024-04-11 14:35:55.935784	17.00	1	0.80	0.80	0.00	0.00
2	6	3	1	22.99	2024-04-11 14:35:55.537348	2024-04-11 14:35:56.393918	17.00	1	1.15	1.15	0.00	0.00
\.


--
-- Data for Name: spree_log_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_log_entries (id, source_type, source_id, details, created_at, updated_at) FROM stdin;
1	Spree::Refund	1	--- !ruby/object:ActiveMerchant::Billing::Response\nparams: {}\nmessage: 'Bogus Gateway: Forced success'\nsuccess: true\ntest: true\nauthorization: '12345'\nfraud_review: \nerror_code: \nemv_authorization: \nnetwork_transaction_id: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n	2024-04-11 14:35:57.452678	2024-04-11 14:35:57.452678
\.


--
-- Data for Name: spree_option_type_prototypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_type_prototypes (id, prototype_id, option_type_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_option_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_types (id, name, presentation, "position", created_at, updated_at) FROM stdin;
2	clothing-size	Size	1	2024-04-11 14:35:48.122879	2024-04-11 14:35:48.122879
1	product1	cvjfsj	3	2024-04-11 10:35:01.764591	2024-04-11 14:35:48.146215
3	clothing-color	Color	2	2024-04-11 14:35:48.143888	2024-04-11 14:35:48.143888
\.


--
-- Data for Name: spree_option_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_values (id, "position", name, presentation, option_type_id, created_at, updated_at) FROM stdin;
1	1	pr2	sdfgh	1	2024-04-11 10:35:26.760084	2024-04-11 10:35:26.767697
2	1	Small	S	2	2024-04-11 14:35:48.169883	2024-04-11 14:35:48.175243
3	2	Medium	M	2	2024-04-11 14:35:48.185235	2024-04-11 14:35:48.190015
4	3	Large	L	2	2024-04-11 14:35:48.196306	2024-04-11 14:35:48.200852
5	4	Extra Large	XL	2	2024-04-11 14:35:48.207289	2024-04-11 14:35:48.212144
8	1	Black	Black	3	2024-04-11 14:35:48.240444	2024-04-11 14:35:48.244994
9	2	White	White	3	2024-04-11 14:35:48.251215	2024-04-11 14:35:48.256053
6	9	Red	Red	3	2024-04-11 14:35:48.218531	2024-04-11 14:35:48.264462
7	7	Green	Green	3	2024-04-11 14:35:48.229392	2024-04-11 14:35:48.264462
10	3	Blue	Blue	3	2024-04-11 14:35:48.262135	2024-04-11 14:35:48.266865
\.


--
-- Data for Name: spree_option_values_variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_option_values_variants (id, variant_id, option_value_id, created_at, updated_at) FROM stdin;
1	15	2	2024-04-11 14:35:49.941014	2024-04-11 14:35:49.941014
2	15	10	2024-04-11 14:35:49.944206	2024-04-11 14:35:49.944206
3	16	2	2024-04-11 14:35:49.985879	2024-04-11 14:35:49.985879
4	16	8	2024-04-11 14:35:49.987294	2024-04-11 14:35:49.987294
5	17	2	2024-04-11 14:35:50.020075	2024-04-11 14:35:50.020075
6	17	9	2024-04-11 14:35:50.021462	2024-04-11 14:35:50.021462
7	18	3	2024-04-11 14:35:50.053841	2024-04-11 14:35:50.053841
8	18	10	2024-04-11 14:35:50.055207	2024-04-11 14:35:50.055207
9	19	4	2024-04-11 14:35:50.092515	2024-04-11 14:35:50.092515
10	19	9	2024-04-11 14:35:50.094142	2024-04-11 14:35:50.094142
11	20	4	2024-04-11 14:35:50.126203	2024-04-11 14:35:50.126203
12	20	8	2024-04-11 14:35:50.127632	2024-04-11 14:35:50.127632
13	21	5	2024-04-11 14:35:50.159559	2024-04-11 14:35:50.159559
14	21	10	2024-04-11 14:35:50.160873	2024-04-11 14:35:50.160873
15	22	2	2024-04-11 14:35:50.197775	2024-04-11 14:35:50.197775
16	22	8	2024-04-11 14:35:50.199166	2024-04-11 14:35:50.199166
17	23	2	2024-04-11 14:35:50.23765	2024-04-11 14:35:50.23765
18	23	9	2024-04-11 14:35:50.239042	2024-04-11 14:35:50.239042
19	24	2	2024-04-11 14:35:50.271371	2024-04-11 14:35:50.271371
20	24	10	2024-04-11 14:35:50.272733	2024-04-11 14:35:50.272733
21	25	3	2024-04-11 14:35:50.30541	2024-04-11 14:35:50.30541
22	25	9	2024-04-11 14:35:50.306921	2024-04-11 14:35:50.306921
23	26	3	2024-04-11 14:35:50.338871	2024-04-11 14:35:50.338871
24	26	8	2024-04-11 14:35:50.340226	2024-04-11 14:35:50.340226
25	27	3	2024-04-11 14:35:50.371026	2024-04-11 14:35:50.371026
26	27	10	2024-04-11 14:35:50.372372	2024-04-11 14:35:50.372372
27	28	4	2024-04-11 14:35:50.403235	2024-04-11 14:35:50.403235
28	28	9	2024-04-11 14:35:50.404693	2024-04-11 14:35:50.404693
29	29	4	2024-04-11 14:35:50.435649	2024-04-11 14:35:50.435649
30	29	8	2024-04-11 14:35:50.436961	2024-04-11 14:35:50.436961
31	30	4	2024-04-11 14:35:50.468202	2024-04-11 14:35:50.468202
32	30	10	2024-04-11 14:35:50.469628	2024-04-11 14:35:50.469628
33	31	2	2024-04-11 14:35:50.511765	2024-04-11 14:35:50.511765
34	31	8	2024-04-11 14:35:50.513123	2024-04-11 14:35:50.513123
35	32	2	2024-04-11 14:35:50.550535	2024-04-11 14:35:50.550535
36	32	10	2024-04-11 14:35:50.55192	2024-04-11 14:35:50.55192
37	33	2	2024-04-11 14:35:50.582886	2024-04-11 14:35:50.582886
38	33	9	2024-04-11 14:35:50.584204	2024-04-11 14:35:50.584204
39	34	3	2024-04-11 14:35:50.614777	2024-04-11 14:35:50.614777
40	34	10	2024-04-11 14:35:50.616127	2024-04-11 14:35:50.616127
41	35	3	2024-04-11 14:35:50.646452	2024-04-11 14:35:50.646452
42	35	9	2024-04-11 14:35:50.647777	2024-04-11 14:35:50.647777
43	36	3	2024-04-11 14:35:50.677905	2024-04-11 14:35:50.677905
44	36	8	2024-04-11 14:35:50.67928	2024-04-11 14:35:50.67928
45	37	2	2024-04-11 14:35:50.713752	2024-04-11 14:35:50.713752
46	38	3	2024-04-11 14:35:50.750519	2024-04-11 14:35:50.750519
47	39	4	2024-04-11 14:35:50.781977	2024-04-11 14:35:50.781977
48	40	2	2024-04-11 14:35:50.819891	2024-04-11 14:35:50.819891
49	41	3	2024-04-11 14:35:50.856393	2024-04-11 14:35:50.856393
50	42	4	2024-04-11 14:35:50.891862	2024-04-11 14:35:50.891862
51	43	2	2024-04-11 14:35:50.927884	2024-04-11 14:35:50.927884
52	44	3	2024-04-11 14:35:50.964253	2024-04-11 14:35:50.964253
53	45	4	2024-04-11 14:35:50.995776	2024-04-11 14:35:50.995776
54	46	2	2024-04-11 14:35:51.031991	2024-04-11 14:35:51.031991
55	47	3	2024-04-11 14:35:51.066714	2024-04-11 14:35:51.066714
56	48	4	2024-04-11 14:35:51.096588	2024-04-11 14:35:51.096588
57	49	2	2024-04-11 14:35:51.132037	2024-04-11 14:35:51.132037
58	50	3	2024-04-11 14:35:51.167461	2024-04-11 14:35:51.167461
59	51	4	2024-04-11 14:35:51.19825	2024-04-11 14:35:51.19825
\.


--
-- Data for Name: spree_order_mutexes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_order_mutexes (id, order_id, created_at) FROM stdin;
\.


--
-- Data for Name: spree_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_orders (id, number, item_total, total, state, adjustment_total, user_id, completed_at, bill_address_id, ship_address_id, payment_total, shipment_state, payment_state, email, special_instructions, created_at, updated_at, currency, last_ip_address, created_by_id, shipment_total, additional_tax_total, promo_total, channel, included_tax_total, item_count, approver_id, approved_at, confirmation_delivered, guest_token, canceled_at, canceler_id, store_id, approver_name, frontend_viewable) FROM stdin;
1	R551840851	0.00	0.00	cart	0.00	\N	\N	\N	\N	0.00	\N	\N	\N	\N	2024-04-11 14:27:31.125475	2024-04-11 14:35:56.67212	USD	\N	2	0.00	0.00	0.00	spree	0.00	0	\N	\N	f	nLb_dnRuccTdSNmqILfvQQ	\N	\N	1	\N	f
2	R123456789	15.99	22.04	complete	1.05	\N	2024-04-11 14:35:56.024486	2	1	0.00	pending	balance_due	solidus@example.com	\N	2024-04-11 14:35:55.48713	2024-04-11 14:35:56.728101	USD	\N	\N	5.00	1.05	0.00	spree	0.00	1	\N	\N	t	2able5op7SGXE9w7bVeCvA	\N	\N	1	\N	t
3	R987654321	22.99	29.39	returned	1.40	\N	2024-04-11 14:35:56.454528	2	1	5.25	shipped	paid	solidus@example.com	\N	2024-04-11 14:35:55.499087	2024-04-11 14:35:57.498169	USD	\N	\N	5.00	1.40	0.00	spree	0.00	1	\N	\N	t	-dXivW0xFcDnWGItJfYusg	\N	\N	1	\N	t
\.


--
-- Data for Name: spree_orders_promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_orders_promotions (id, order_id, promotion_id, promotion_code_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_payment_capture_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_payment_capture_events (id, amount, payment_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_payment_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_payment_methods (id, type, name, description, active, deleted_at, created_at, updated_at, auto_capture, preferences, preference_source, "position", available_to_users, available_to_admin, type_before_removal) FROM stdin;
1	Spree::PaymentMethod::StoreCredit	Store Credit	Store credit	t	\N	2024-04-11 13:05:04.763117	2024-04-11 13:05:04.763117	\N	---\n:server: test\n:test_mode: true\n	\N	1	f	f	\N
2	Spree::PaymentMethod::BogusCreditCard	Credit Card	Bogus payment gateway	t	\N	2024-04-11 14:35:46.163099	2024-04-11 14:35:46.163099	\N	---\n:server: test\n:test_mode: true\n	\N	2	t	t	\N
3	Spree::PaymentMethod::Check	Check	Pay by check.	t	\N	2024-04-11 14:35:46.188035	2024-04-11 14:35:46.188035	\N	---\n:server: test\n:test_mode: true\n	\N	3	t	t	\N
\.


--
-- Data for Name: spree_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_payments (id, amount, order_id, source_type, source_id, payment_method_id, state, response_code, avs_response, created_at, updated_at, number, cvv_response_code, cvv_response_message) FROM stdin;
2	0.00	3	\N	\N	3	invalid	\N	\N	2024-04-11 14:35:56.036228	2024-04-11 14:35:56.596286	TNY685DE	\N	\N
4	0.00	1	Spree::CreditCard	1	2	pending	12345	\N	2024-04-11 14:35:56.668359	2024-04-11 14:35:56.668359	T8HB6ZJS	\N	\N
1	0.00	2	\N	\N	3	invalid	\N	\N	2024-04-11 14:35:55.554043	2024-04-11 14:35:56.726299	YXLZRWRK	\N	\N
5	22.04	2	Spree::CreditCard	1	2	pending	12345	\N	2024-04-11 14:35:56.719662	2024-04-11 14:35:56.719662	RRMGPUVG	\N	\N
3	29.39	3	Spree::CreditCard	1	2	completed	12345	\N	2024-04-11 14:35:56.589588	2024-04-11 14:35:56.864346	CLPND4H4	\N	\N
\.


--
-- Data for Name: spree_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_preferences (id, value, key, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_prices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_prices (id, variant_id, amount, currency, deleted_at, created_at, updated_at, country_iso) FROM stdin;
1	1	23.00	USD	\N	2024-04-11 10:48:21.583444	2024-04-11 10:48:21.583444	\N
2	2	300.00	USD	\N	2024-04-11 10:53:42.549544	2024-04-11 10:53:42.549544	\N
3	3	19.99	USD	\N	2024-04-11 14:35:46.651236	2024-04-11 14:35:46.651236	\N
4	3	16.00	EUR	\N	2024-04-11 14:35:46.762254	2024-04-11 14:35:46.762254	\N
5	4	19.99	USD	\N	2024-04-11 14:35:46.794438	2024-04-11 14:35:46.794438	\N
6	4	16.00	EUR	\N	2024-04-11 14:35:46.823445	2024-04-11 14:35:46.823445	\N
7	5	19.99	USD	\N	2024-04-11 14:35:46.846739	2024-04-11 14:35:46.846739	\N
8	5	16.00	EUR	\N	2024-04-11 14:35:46.877482	2024-04-11 14:35:46.877482	\N
9	6	15.99	USD	\N	2024-04-11 14:35:46.90138	2024-04-11 14:35:46.90138	\N
10	6	14.00	EUR	\N	2024-04-11 14:35:46.939576	2024-04-11 14:35:46.939576	\N
11	7	29.99	USD	\N	2024-04-11 14:35:46.96374	2024-04-11 14:35:46.96374	\N
12	7	27.00	EUR	\N	2024-04-11 14:35:46.992089	2024-04-11 14:35:46.992089	\N
13	8	29.99	USD	\N	2024-04-11 14:35:47.014575	2024-04-11 14:35:47.014575	\N
14	8	27.00	EUR	\N	2024-04-11 14:35:47.042125	2024-04-11 14:35:47.042125	\N
15	9	29.99	USD	\N	2024-04-11 14:35:47.066561	2024-04-11 14:35:47.066561	\N
16	9	27.00	EUR	\N	2024-04-11 14:35:47.094651	2024-04-11 14:35:47.094651	\N
17	10	26.99	USD	\N	2024-04-11 14:35:47.118127	2024-04-11 14:35:47.118127	\N
18	10	23.00	EUR	\N	2024-04-11 14:35:47.145012	2024-04-11 14:35:47.145012	\N
19	11	9.99	USD	\N	2024-04-11 14:35:47.166789	2024-04-11 14:35:47.166789	\N
20	11	7.00	EUR	\N	2024-04-11 14:35:47.196388	2024-04-11 14:35:47.196388	\N
21	12	9.99	USD	\N	2024-04-11 14:35:47.22173	2024-04-11 14:35:47.22173	\N
22	12	7.00	EUR	\N	2024-04-11 14:35:47.250404	2024-04-11 14:35:47.250404	\N
23	13	15.99	USD	\N	2024-04-11 14:35:47.273648	2024-04-11 14:35:47.273648	\N
24	13	14.00	EUR	\N	2024-04-11 14:35:47.308499	2024-04-11 14:35:47.308499	\N
25	14	15.99	USD	\N	2024-04-11 14:35:47.332684	2024-04-11 14:35:47.332684	\N
26	14	14.00	EUR	\N	2024-04-11 14:35:47.360269	2024-04-11 14:35:47.360269	\N
27	15	19.99	USD	\N	2024-04-11 14:35:49.945795	2024-04-11 14:35:49.945795	\N
28	16	19.99	USD	\N	2024-04-11 14:35:49.988716	2024-04-11 14:35:49.988716	\N
29	17	19.99	USD	\N	2024-04-11 14:35:50.022955	2024-04-11 14:35:50.022955	\N
30	18	19.99	USD	\N	2024-04-11 14:35:50.056577	2024-04-11 14:35:50.056577	\N
31	19	19.99	USD	\N	2024-04-11 14:35:50.095663	2024-04-11 14:35:50.095663	\N
32	20	19.99	USD	\N	2024-04-11 14:35:50.129061	2024-04-11 14:35:50.129061	\N
33	21	19.99	USD	\N	2024-04-11 14:35:50.162188	2024-04-11 14:35:50.162188	\N
34	22	19.99	USD	\N	2024-04-11 14:35:50.200558	2024-04-11 14:35:50.200558	\N
35	23	19.99	USD	\N	2024-04-11 14:35:50.240464	2024-04-11 14:35:50.240464	\N
36	24	19.99	USD	\N	2024-04-11 14:35:50.274092	2024-04-11 14:35:50.274092	\N
37	25	19.99	USD	\N	2024-04-11 14:35:50.308351	2024-04-11 14:35:50.308351	\N
38	26	19.99	USD	\N	2024-04-11 14:35:50.341567	2024-04-11 14:35:50.341567	\N
39	27	19.99	USD	\N	2024-04-11 14:35:50.373727	2024-04-11 14:35:50.373727	\N
40	28	19.99	USD	\N	2024-04-11 14:35:50.406091	2024-04-11 14:35:50.406091	\N
41	29	19.99	USD	\N	2024-04-11 14:35:50.438275	2024-04-11 14:35:50.438275	\N
42	30	19.99	USD	\N	2024-04-11 14:35:50.471049	2024-04-11 14:35:50.471049	\N
43	31	19.99	USD	\N	2024-04-11 14:35:50.514509	2024-04-11 14:35:50.514509	\N
44	32	19.99	USD	\N	2024-04-11 14:35:50.553349	2024-04-11 14:35:50.553349	\N
45	33	19.99	USD	\N	2024-04-11 14:35:50.585514	2024-04-11 14:35:50.585514	\N
46	34	19.99	USD	\N	2024-04-11 14:35:50.617464	2024-04-11 14:35:50.617464	\N
47	35	19.99	USD	\N	2024-04-11 14:35:50.649073	2024-04-11 14:35:50.649073	\N
48	36	19.99	USD	\N	2024-04-11 14:35:50.680586	2024-04-11 14:35:50.680586	\N
49	37	15.99	USD	\N	2024-04-11 14:35:50.715196	2024-04-11 14:35:50.715196	\N
50	38	15.99	USD	\N	2024-04-11 14:35:50.752008	2024-04-11 14:35:50.752008	\N
51	39	15.99	USD	\N	2024-04-11 14:35:50.783802	2024-04-11 14:35:50.783802	\N
52	40	29.99	USD	\N	2024-04-11 14:35:50.821392	2024-04-11 14:35:50.821392	\N
53	41	29.99	USD	\N	2024-04-11 14:35:50.858042	2024-04-11 14:35:50.858042	\N
54	42	29.99	USD	\N	2024-04-11 14:35:50.893327	2024-04-11 14:35:50.893327	\N
55	43	29.99	USD	\N	2024-04-11 14:35:50.929326	2024-04-11 14:35:50.929326	\N
56	44	29.99	USD	\N	2024-04-11 14:35:50.965818	2024-04-11 14:35:50.965818	\N
57	45	29.99	USD	\N	2024-04-11 14:35:50.997289	2024-04-11 14:35:50.997289	\N
58	46	29.99	USD	\N	2024-04-11 14:35:51.033491	2024-04-11 14:35:51.033491	\N
59	47	29.99	USD	\N	2024-04-11 14:35:51.068137	2024-04-11 14:35:51.068137	\N
60	48	29.99	USD	\N	2024-04-11 14:35:51.098012	2024-04-11 14:35:51.098012	\N
61	49	26.99	USD	\N	2024-04-11 14:35:51.133512	2024-04-11 14:35:51.133512	\N
62	50	26.99	USD	\N	2024-04-11 14:35:51.168926	2024-04-11 14:35:51.168926	\N
63	51	26.99	USD	\N	2024-04-11 14:35:51.199727	2024-04-11 14:35:51.199727	\N
\.


--
-- Data for Name: spree_product_option_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_product_option_types (id, "position", product_id, option_type_id, created_at, updated_at) FROM stdin;
3	1	1	2	2024-04-11 14:35:48.289844	2024-04-11 14:35:48.289844
4	1	8	2	2024-04-11 14:35:48.321171	2024-04-11 14:35:48.321171
5	1	9	2	2024-04-11 14:35:48.345737	2024-04-11 14:35:48.345737
6	1	10	2	2024-04-11 14:35:48.368616	2024-04-11 14:35:48.368616
7	1	13	2	2024-04-11 14:35:48.393506	2024-04-11 14:35:48.393506
8	1	2	2	2024-04-11 14:35:48.419282	2024-04-11 14:35:48.419282
9	1	3	2	2024-04-11 14:35:48.44121	2024-04-11 14:35:48.44121
10	2	3	3	2024-04-11 14:35:48.4542	2024-04-11 14:35:48.4542
11	1	4	2	2024-04-11 14:35:48.475446	2024-04-11 14:35:48.475446
12	2	4	3	2024-04-11 14:35:48.488654	2024-04-11 14:35:48.488654
13	1	11	2	2024-04-11 14:35:48.511889	2024-04-11 14:35:48.511889
14	1	5	2	2024-04-11 14:35:48.540857	2024-04-11 14:35:48.540857
15	2	5	3	2024-04-11 14:35:48.554641	2024-04-11 14:35:48.554641
16	1	6	2	2024-04-11 14:35:48.57689	2024-04-11 14:35:48.57689
17	1	7	2	2024-04-11 14:35:48.60086	2024-04-11 14:35:48.60086
18	1	12	2	2024-04-11 14:35:48.624092	2024-04-11 14:35:48.624092
19	1	14	2	2024-04-11 14:35:48.647037	2024-04-11 14:35:48.647037
\.


--
-- Data for Name: spree_product_promotion_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_product_promotion_rules (id, product_id, promotion_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_product_properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_product_properties (id, value, product_id, property_id, created_at, updated_at, "position") FROM stdin;
1	70	1	2	2024-04-11 10:50:57.07665	2024-04-11 10:50:57.07665	1
2	Tote	13	3	2024-04-11 14:35:48.703465	2024-04-11 14:35:48.703465	1
3	15" x 18" x 6"	13	4	2024-04-11 14:35:48.72956	2024-04-11 14:35:48.72956	2
4	Canvas	13	5	2024-04-11 14:35:48.750922	2024-04-11 14:35:48.750922	3
5	Tote	14	3	2024-04-11 14:35:48.769249	2024-04-11 14:35:48.769249	1
6	15" x 18" x 6"	14	4	2024-04-11 14:35:48.785864	2024-04-11 14:35:48.785864	2
7	Canvas	14	5	2024-04-11 14:35:48.802272	2024-04-11 14:35:48.802272	3
8	Snapback Cap	6	3	2024-04-11 14:35:48.819463	2024-04-11 14:35:48.819463	1
9	One Size	6	4	2024-04-11 14:35:48.83524	2024-04-11 14:35:48.83524	2
10	100% Cotton	6	5	2024-04-11 14:35:48.851605	2024-04-11 14:35:48.851605	3
11	Jerseys	3	6	2024-04-11 14:35:48.871547	2024-04-11 14:35:48.871547	1
12	Conditioned	3	7	2024-04-11 14:35:48.890545	2024-04-11 14:35:48.890545	2
13	TL9002	3	8	2024-04-11 14:35:48.909582	2024-04-11 14:35:48.909582	3
14	Ringer T	3	9	2024-04-11 14:35:48.928727	2024-04-11 14:35:48.928727	4
15	Short	3	10	2024-04-11 14:35:48.952649	2024-04-11 14:35:48.952649	5
16	100% Cotton	3	11	2024-04-11 14:35:48.971028	2024-04-11 14:35:48.971028	6
17	Loose	3	12	2024-04-11 14:35:48.991043	2024-04-11 14:35:48.991043	7
18	Men's	3	13	2024-04-11 14:35:49.009471	2024-04-11 14:35:49.009471	8
19	Wilson	4	6	2024-04-11 14:35:49.026673	2024-04-11 14:35:49.026673	1
20	Wannabe Sports	4	7	2024-04-11 14:35:49.042559	2024-04-11 14:35:49.042559	2
21	TL9002	4	8	2024-04-11 14:35:49.057987	2024-04-11 14:35:49.057987	3
22	Jersey	4	9	2024-04-11 14:35:49.073514	2024-04-11 14:35:49.073514	4
23	Long	4	10	2024-04-11 14:35:49.08995	2024-04-11 14:35:49.08995	5
24	100% cotton	4	11	2024-04-11 14:35:49.106285	2024-04-11 14:35:49.106285	6
25	Loose	4	12	2024-04-11 14:35:49.122169	2024-04-11 14:35:49.122169	7
26	Men's	4	13	2024-04-11 14:35:49.137735	2024-04-11 14:35:49.137735	8
27	Jerseys	7	6	2024-04-11 14:35:49.153642	2024-04-11 14:35:49.153642	1
28	Wannabe Sports	7	7	2024-04-11 14:35:49.168235	2024-04-11 14:35:49.168235	2
29	HD9001	7	8	2024-04-11 14:35:49.183098	2024-04-11 14:35:49.183098	3
30	Jersey	7	9	2024-04-11 14:35:49.197985	2024-04-11 14:35:49.197985	4
31	Long	7	10	2024-04-11 14:35:49.213757	2024-04-11 14:35:49.213757	5
32	100% cotton	7	11	2024-04-11 14:35:49.229496	2024-04-11 14:35:49.229496	6
33	Loose	7	12	2024-04-11 14:35:49.244803	2024-04-11 14:35:49.244803	7
34	Unisex	7	13	2024-04-11 14:35:49.260131	2024-04-11 14:35:49.260131	8
35	Wilson	8	6	2024-04-11 14:35:49.276281	2024-04-11 14:35:49.276281	1
36	Resiliance	8	7	2024-04-11 14:35:49.291791	2024-04-11 14:35:49.291791	2
37	HD2001	8	8	2024-04-11 14:35:49.311512	2024-04-11 14:35:49.311512	3
38	Baseball	8	9	2024-04-11 14:35:49.327402	2024-04-11 14:35:49.327402	4
39	Long	8	10	2024-04-11 14:35:49.3432	2024-04-11 14:35:49.3432	5
40	90% Cotton, 10% Nylon	8	11	2024-04-11 14:35:49.359728	2024-04-11 14:35:49.359728	6
41	Loose	8	12	2024-04-11 14:35:49.376453	2024-04-11 14:35:49.376453	7
42	Unisex	8	13	2024-04-11 14:35:49.392754	2024-04-11 14:35:49.392754	8
43	Jerseys	9	6	2024-04-11 14:35:49.40948	2024-04-11 14:35:49.40948	1
44	Wannabe Sports	9	7	2024-04-11 14:35:49.425188	2024-04-11 14:35:49.425188	2
45	HD9001	9	8	2024-04-11 14:35:49.440478	2024-04-11 14:35:49.440478	3
46	Jersey	9	9	2024-04-11 14:35:49.456379	2024-04-11 14:35:49.456379	4
47	Long	9	10	2024-04-11 14:35:49.47194	2024-04-11 14:35:49.47194	5
48	100% cotton	9	11	2024-04-11 14:35:49.487527	2024-04-11 14:35:49.487527	6
49	Loose	9	12	2024-04-11 14:35:49.502814	2024-04-11 14:35:49.502814	7
50	Unisex	9	13	2024-04-11 14:35:49.521156	2024-04-11 14:35:49.521156	8
51	Wilson	10	6	2024-04-11 14:35:49.539794	2024-04-11 14:35:49.539794	1
52	Resiliance	10	7	2024-04-11 14:35:49.556373	2024-04-11 14:35:49.556373	2
53	PL9001	10	8	2024-04-11 14:35:49.572577	2024-04-11 14:35:49.572577	3
54	Ringer T	10	9	2024-04-11 14:35:49.591329	2024-04-11 14:35:49.591329	4
55	Short	10	10	2024-04-11 14:35:49.609469	2024-04-11 14:35:49.609469	5
56	100% Cotton	10	11	2024-04-11 14:35:49.627066	2024-04-11 14:35:49.627066	6
57	Slim	10	12	2024-04-11 14:35:49.644995	2024-04-11 14:35:49.644995	7
58	Men's	10	13	2024-04-11 14:35:49.662185	2024-04-11 14:35:49.662185	8
59	Mug	11	3	2024-04-11 14:35:49.684004	2024-04-11 14:35:49.684004	1
60	4.5" tall, 3.25" dia.	11	4	2024-04-11 14:35:49.701084	2024-04-11 14:35:49.701084	2
61	Mug	12	3	2024-04-11 14:35:49.719273	2024-04-11 14:35:49.719273	1
62	4.5" tall, 3.25" dia.	12	4	2024-04-11 14:35:49.737035	2024-04-11 14:35:49.737035	2
63	Jerseys	5	6	2024-04-11 14:35:49.755247	2024-04-11 14:35:49.755247	1
64	Conditioned	5	7	2024-04-11 14:35:49.773866	2024-04-11 14:35:49.773866	2
65	WM6001	5	8	2024-04-11 14:35:49.792261	2024-04-11 14:35:49.792261	3
66	Skinny	5	9	2024-04-11 14:35:49.810002	2024-04-11 14:35:49.810002	4
67	Short	5	10	2024-04-11 14:35:49.82778	2024-04-11 14:35:49.82778	5
68	90% Cotton, 10% Nylon	5	11	2024-04-11 14:35:49.844541	2024-04-11 14:35:49.844541	6
69	Slim	5	12	2024-04-11 14:35:49.861091	2024-04-11 14:35:49.861091	7
70	Women's	5	13	2024-04-11 14:35:49.877044	2024-04-11 14:35:49.877044	8
71	Tapered	1	14	2024-04-12 09:28:23.316897	2024-04-12 09:28:23.316897	2
\.


--
-- Data for Name: spree_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title, discontinue_on) FROM stdin;
7	Solidus Hoodie Zip	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	solidus-hoodie-zip	\N	\N	1	3	2024-04-11 14:35:46.958647	2024-04-11 14:35:54.91983	t	\N	\N
14	Ruby Tote	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	ruby-tote	\N	\N	1	3	2024-04-11 14:35:47.327704	2024-04-11 14:35:55.352853	t	\N	\N
8	Ruby Hoodie	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	ruby-hoodie	\N	\N	1	3	2024-04-11 14:35:47.009972	2024-04-11 14:35:54.978902	t	\N	\N
13	Solidus Tote	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	solidus-tote	\N	\N	1	3	2024-04-11 14:35:47.268909	2024-04-11 14:35:56.002963	t	\N	\N
9	Ruby Hoodie Zip	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	ruby-hoodie-zip	\N	\N	1	3	2024-04-11 14:35:47.061341	2024-04-11 14:35:55.03086	t	\N	\N
10	Ruby Polo	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	ruby-polo	\N	\N	1	3	2024-04-11 14:35:47.113463	2024-04-11 14:35:55.130753	t	\N	\N
4	Solidus Long Sleeve	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	solidus-long-sleeve	\N	\N	1	3	2024-04-11 14:35:46.789395	2024-04-11 14:35:54.497415	t	\N	\N
11	Solidus Mug	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	solidus-mug	\N	\N	1	3	2024-04-11 14:35:47.162282	2024-04-11 14:35:55.177623	t	\N	\N
6	Solidus Snapback Cap	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	solidus-snapback-cap	\N	\N	1	3	2024-04-11 14:35:46.896622	2024-04-11 14:35:57.245237	t	\N	\N
1	My product	hello this is my first product	2024-04-13 00:00:00	\N	my-product	wertyuiop	sdfghjk	\N	1	2024-04-11 10:48:21.568972	2024-04-12 09:28:23.3216	t	sdfghjk	2024-04-15 00:00:00
3	Solidus T-Shirt	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	solidus-t-shirt	\N	\N	1	3	2024-04-11 14:35:46.64517	2024-04-11 14:35:53.692423	t	\N	\N
5	Solidus Women's T-Shirt	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	solidus-women-s-t-shirt	\N	\N	1	3	2024-04-11 14:35:46.841976	2024-04-11 14:35:54.804311	t	\N	\N
12	Ruby Mug	Perferendis sed voluptatem error ipsam voluptatem esse ipsa incidunt. Doloremque quos ratione quia voluptas consequatur mollitia optio. Optio sed iure aut aliquid voluptatum facilis mollitia cum. Dignissimos in saepe consequatur et consequatur dolorem blanditiis.	2024-04-11 14:35:46.57601	\N	ruby-mug	\N	\N	1	3	2024-04-11 14:35:47.216593	2024-04-11 14:35:55.236322	t	\N	\N
2	New Product	qwertyuioihgfdfgh	2024-04-15 00:00:00	\N	my-product-70	hey	sdfghjk	\N	1	2024-04-11 10:53:42.518172	2024-04-11 14:35:51.618911	t	sdfghjk	2024-04-16 00:00:00
\.


--
-- Data for Name: spree_products_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_products_taxons (id, product_id, taxon_id, "position", created_at, updated_at) FROM stdin;
1	1	1	1	2024-04-11 10:51:26.118413	2024-04-11 10:51:26.118413
2	2	2	1	2024-04-11 10:53:42.53422	2024-04-11 10:53:42.53422
3	6	6	1	2024-04-11 14:35:47.509282	2024-04-11 14:35:47.509282
4	13	7	1	2024-04-11 14:35:47.560085	2024-04-11 14:35:47.560085
5	14	7	2	2024-04-11 14:35:47.564055	2024-04-11 14:35:47.564055
6	11	8	1	2024-04-11 14:35:47.621779	2024-04-11 14:35:47.621779
7	12	8	2	2024-04-11 14:35:47.625692	2024-04-11 14:35:47.625692
8	4	9	1	2024-04-11 14:35:47.699336	2024-04-11 14:35:47.699336
9	10	9	2	2024-04-11 14:35:47.703691	2024-04-11 14:35:47.703691
10	5	9	3	2024-04-11 14:35:47.709687	2024-04-11 14:35:47.709687
11	7	10	1	2024-04-11 14:35:47.786667	2024-04-11 14:35:47.786667
12	8	10	2	2024-04-11 14:35:47.79108	2024-04-11 14:35:47.79108
13	9	10	3	2024-04-11 14:35:47.795339	2024-04-11 14:35:47.795339
14	3	11	1	2024-04-11 14:35:47.851037	2024-04-11 14:35:47.851037
15	3	12	1	2024-04-11 14:35:47.91642	2024-04-11 14:35:47.91642
16	4	12	2	2024-04-11 14:35:47.920332	2024-04-11 14:35:47.920332
17	6	12	3	2024-04-11 14:35:47.924153	2024-04-11 14:35:47.924153
18	7	12	4	2024-04-11 14:35:47.927982	2024-04-11 14:35:47.927982
19	11	12	5	2024-04-11 14:35:47.931905	2024-04-11 14:35:47.931905
20	13	12	6	2024-04-11 14:35:47.935805	2024-04-11 14:35:47.935805
21	5	12	7	2024-04-11 14:35:47.939626	2024-04-11 14:35:47.939626
22	8	13	1	2024-04-11 14:35:48.040823	2024-04-11 14:35:48.040823
23	9	13	2	2024-04-11 14:35:48.044978	2024-04-11 14:35:48.044978
24	10	13	3	2024-04-11 14:35:48.049077	2024-04-11 14:35:48.049077
25	12	13	4	2024-04-11 14:35:48.05314	2024-04-11 14:35:48.05314
26	14	13	5	2024-04-11 14:35:48.057191	2024-04-11 14:35:48.057191
\.


--
-- Data for Name: spree_promotion_action_line_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_action_line_items (id, promotion_action_id, variant_id, quantity, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_promotion_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_actions (id, promotion_id, "position", type, deleted_at, preferences, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_promotion_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_categories (id, name, created_at, updated_at, code) FROM stdin;
1	Promotion	2024-04-11 10:57:11.247275	2024-04-11 10:57:11.247275	\N
2	Voucher or coupon with purchase	2024-04-11 10:59:54.108133	2024-04-11 10:59:54.108133	\N
3	Buy one get one free deal.	2024-04-11 11:00:07.748444	2024-04-11 11:00:07.748444	\N
\.


--
-- Data for Name: spree_promotion_code_batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_code_batches (id, promotion_id, base_code, number_of_codes, email, error, state, created_at, updated_at, join_characters) FROM stdin;
\.


--
-- Data for Name: spree_promotion_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_codes (id, promotion_id, value, created_at, updated_at, promotion_code_batch_id) FROM stdin;
1	1	203020	2024-04-11 10:58:01.043898	2024-04-11 10:58:01.043898	\N
2	2	promo	2024-04-11 11:02:45.066116	2024-04-11 11:02:45.066116	\N
3	3	zfga	2024-04-11 11:04:03.523151	2024-04-11 11:04:03.523151	\N
\.


--
-- Data for Name: spree_promotion_rule_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rule_taxons (id, taxon_id, promotion_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rules (id, promotion_id, product_group_id, type, created_at, updated_at, code, preferences) FROM stdin;
1	2	\N	Spree::Promotion::Rules::OneUsePerUser	2024-04-11 11:03:06.879062	2024-04-11 11:03:06.879062	\N	\N
2	3	\N	Spree::Promotion::Rules::UserLoggedIn	2024-04-11 11:04:08.46714	2024-04-11 11:04:08.46714	\N	\N
\.


--
-- Data for Name: spree_promotion_rules_stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rules_stores (id, store_id, promotion_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rules_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotion_rules_users (id, user_id, promotion_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_promotions (id, description, expires_at, starts_at, name, type, usage_limit, match_policy, advertise, path, created_at, updated_at, promotion_category_id, per_code_usage_limit, apply_automatically) FROM stdin;
1	eitiewrriwfsdsf	2024-04-19 00:00:00	2024-04-15 00:00:00	Promotion	\N	10	all	f	\N	2024-04-11 10:58:01.034025	2024-04-11 10:58:01.034025	1	\N	f
2	asdfghjklwertyui	2024-04-20 00:00:00	2024-04-15 00:00:00	Promotion	\N	20	all	f	\N	2024-04-11 11:02:45.056548	2024-04-11 11:02:45.056548	3	\N	f
3		\N	\N	New one promotion	\N	20	all	f	\N	2024-04-11 11:04:03.516383	2024-04-11 11:04:03.516383	\N	\N	f
\.


--
-- Data for Name: spree_properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_properties (id, name, presentation, created_at, updated_at) FROM stdin;
1	property	hello	2024-04-11 10:36:02.241243	2024-04-11 10:36:02.241243
2	property1	hey	2024-04-11 10:36:24.647564	2024-04-11 10:36:24.647564
3	Type	Type	2024-04-11 14:35:48.682874	2024-04-11 14:35:48.682874
4	Size	Size	2024-04-11 14:35:48.725085	2024-04-11 14:35:48.725085
5	Material	Material	2024-04-11 14:35:48.746792	2024-04-11 14:35:48.746792
6	Manufacturer	Manufacturer	2024-04-11 14:35:48.867677	2024-04-11 14:35:48.867677
7	Brand	Brand	2024-04-11 14:35:48.886733	2024-04-11 14:35:48.886733
8	Model	Model	2024-04-11 14:35:48.905572	2024-04-11 14:35:48.905572
9	Shirt Type	Shirt Type	2024-04-11 14:35:48.924673	2024-04-11 14:35:48.924673
10	Sleeve Type	Sleeve Type	2024-04-11 14:35:48.948729	2024-04-11 14:35:48.948729
11	Made from	Made from	2024-04-11 14:35:48.967206	2024-04-11 14:35:48.967206
12	Fit	Fit	2024-04-11 14:35:48.987088	2024-04-11 14:35:48.987088
13	Gender	Gender	2024-04-11 14:35:49.005667	2024-04-11 14:35:49.005667
14	fit	fit	2024-04-12 09:28:23.30086	2024-04-12 09:28:23.30086
\.


--
-- Data for Name: spree_property_prototypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_property_prototypes (id, prototype_id, property_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_prototype_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_prototype_taxons (id, taxon_id, prototype_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_prototypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_prototypes (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_refund_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_refund_reasons (id, name, active, mutable, created_at, updated_at, code) FROM stdin;
1	Return processing	t	f	2024-04-11 13:05:20.068841	2024-04-11 13:05:20.068841	\N
\.


--
-- Data for Name: spree_refunds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_refunds (id, payment_id, amount, transaction_id, created_at, updated_at, refund_reason_id, reimbursement_id) FROM stdin;
1	3	24.14	12345	2024-04-11 14:35:57.432917	2024-04-11 14:35:57.450101	1	1
\.


--
-- Data for Name: spree_reimbursement_credits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_reimbursement_credits (id, amount, reimbursement_id, creditable_id, creditable_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_reimbursement_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_reimbursement_types (id, name, active, mutable, created_at, updated_at, type) FROM stdin;
1	Store Credit	t	t	2024-04-11 13:05:04.809608	2024-04-11 13:05:04.809608	Spree::ReimbursementType::StoreCredit
2	Original	t	t	2024-04-11 13:05:04.820721	2024-04-11 13:05:04.820721	Spree::ReimbursementType::OriginalPayment
\.


--
-- Data for Name: spree_reimbursements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_reimbursements (id, number, reimbursement_status, customer_return_id, order_id, total, created_at, updated_at) FROM stdin;
1	RI031035088	reimbursed	1	3	24.14	2024-04-11 14:35:57.344345	2024-04-11 14:35:57.507474
\.


--
-- Data for Name: spree_return_authorizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_return_authorizations (id, number, state, order_id, memo, created_at, updated_at, stock_location_id, return_reason_id) FROM stdin;
1	RA218541602	authorized	3	\N	2024-04-11 14:35:57.135742	2024-04-11 14:35:57.135742	1	8
\.


--
-- Data for Name: spree_return_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_return_items (id, return_authorization_id, inventory_unit_id, exchange_variant_id, created_at, updated_at, amount, included_tax_total, additional_tax_total, reception_status, acceptance_status, customer_return_id, reimbursement_id, exchange_inventory_unit_id, acceptance_status_errors, preferred_reimbursement_type_id, override_reimbursement_type_id, resellable, return_reason_id) FROM stdin;
1	1	2	\N	2024-04-11 14:35:57.139885	2024-04-11 14:35:57.378296	22.9900	0.0000	1.1500	received	accepted	1	1	\N	--- {}\n	2	\N	t	\N
\.


--
-- Data for Name: spree_return_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_return_reasons (id, name, active, mutable, created_at, updated_at) FROM stdin;
1	Better price available	t	t	2024-04-11 13:05:05.604637	2024-04-11 13:05:05.604637
2	Missed estimated delivery date	t	t	2024-04-11 13:05:05.610135	2024-04-11 13:05:05.610135
3	Missing parts or accessories	t	t	2024-04-11 13:05:05.615019	2024-04-11 13:05:05.615019
4	Damaged/Defective	t	t	2024-04-11 13:05:05.620091	2024-04-11 13:05:05.620091
5	Different from what was ordered	t	t	2024-04-11 13:05:05.628681	2024-04-11 13:05:05.628681
6	Different from description	t	t	2024-04-11 13:05:05.633931	2024-04-11 13:05:05.633931
7	No longer needed/wanted	t	t	2024-04-11 13:05:05.639455	2024-04-11 13:05:05.639455
8	Accidental order	t	t	2024-04-11 13:05:05.645689	2024-04-11 13:05:05.645689
9	Unauthorized purchase	t	t	2024-04-11 13:05:05.65124	2024-04-11 13:05:05.65124
\.


--
-- Data for Name: spree_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_roles (id, name, created_at, updated_at) FROM stdin;
1	Admin	2024-04-10 07:34:00.80416	2024-04-10 07:34:00.80416
2	Manager	2024-04-10 07:34:11.732907	2024-04-10 07:34:11.732907
3	Employee	2024-04-10 07:34:53.528123	2024-04-10 07:34:53.528123
4	User	2024-04-10 07:35:03.268627	2024-04-10 07:35:03.268627
5	Student	2024-04-10 07:35:21.893712	2024-04-10 07:35:21.893712
6	admin	2024-04-11 10:22:20.933914	2024-04-11 10:22:20.933914
\.


--
-- Data for Name: spree_roles_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_roles_users (id, role_id, user_id, created_at, updated_at) FROM stdin;
1	1	2	2024-04-11 10:12:02.960644	2024-04-11 10:12:02.960644
2	6	2	2024-04-11 10:29:44.16102	2024-04-11 10:29:44.16102
\.


--
-- Data for Name: spree_shipments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipments (id, tracking, number, cost, shipped_at, order_id, deprecated_address_id, state, created_at, updated_at, stock_location_id, adjustment_total, additional_tax_total, promo_total, included_tax_total) FROM stdin;
1	\N	H83126242351	5.00	\N	2	\N	pending	2024-04-11 14:35:55.694617	2024-04-11 14:35:55.946329	1	0.25	0.25	0.00	0.00
2	\N	H08276408326	5.00	2024-04-11 14:35:56.977615	3	\N	shipped	2024-04-11 14:35:56.132889	2024-04-11 14:35:57.219976	1	0.25	0.25	0.00	0.00
\.


--
-- Data for Name: spree_shipping_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_categories (id, name, created_at, updated_at) FROM stdin;
1	Standard	2024-04-11 10:46:59.799564	2024-04-11 10:46:59.799564
2	Local delivery	2024-04-11 11:01:27.201545	2024-04-11 11:01:27.201545
3	Default	2024-04-11 13:05:20.09526	2024-04-11 13:05:20.09526
\.


--
-- Data for Name: spree_shipping_method_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_method_categories (id, shipping_method_id, shipping_category_id, created_at, updated_at) FROM stdin;
1	1	3	2024-04-11 14:35:46.478752	2024-04-11 14:35:46.478752
2	2	3	2024-04-11 14:35:46.491574	2024-04-11 14:35:46.491574
3	3	3	2024-04-11 14:35:46.502859	2024-04-11 14:35:46.502859
4	4	3	2024-04-11 14:35:46.513945	2024-04-11 14:35:46.513945
5	5	3	2024-04-11 14:35:46.524895	2024-04-11 14:35:46.524895
\.


--
-- Data for Name: spree_shipping_method_stock_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_method_stock_locations (id, shipping_method_id, stock_location_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_shipping_method_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_method_zones (id, shipping_method_id, zone_id, created_at, updated_at) FROM stdin;
1	1	2	2024-04-11 14:35:46.481183	2024-04-11 14:35:46.481183
2	2	2	2024-04-11 14:35:46.493055	2024-04-11 14:35:46.493055
3	3	2	2024-04-11 14:35:46.504264	2024-04-11 14:35:46.504264
4	4	1	2024-04-11 14:35:46.515364	2024-04-11 14:35:46.515364
5	5	1	2024-04-11 14:35:46.526237	2024-04-11 14:35:46.526237
\.


--
-- Data for Name: spree_shipping_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_methods (id, name, deleted_at, created_at, updated_at, tracking_url, admin_name, tax_category_id, code, available_to_all, carrier, service_level, available_to_users) FROM stdin;
1	UPS Ground (USD)	\N	2024-04-11 14:35:46.47456	2024-04-11 14:35:46.47456	\N	\N	1	\N	t	\N	\N	t
2	UPS Two Day (USD)	\N	2024-04-11 14:35:46.488565	2024-04-11 14:35:46.488565	\N	\N	1	\N	t	\N	\N	t
3	UPS One Day (USD)	\N	2024-04-11 14:35:46.499808	2024-04-11 14:35:46.499808	\N	\N	1	\N	t	\N	\N	t
4	UPS Ground (EU)	\N	2024-04-11 14:35:46.511093	2024-04-11 14:35:46.511093	\N	\N	1	\N	t	\N	\N	t
5	UPS Ground (EUR)	\N	2024-04-11 14:35:46.522008	2024-04-11 14:35:46.522008	\N	\N	1	\N	t	\N	\N	t
\.


--
-- Data for Name: spree_shipping_rate_taxes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_rate_taxes (id, amount, tax_rate_id, shipping_rate_id, created_at, updated_at) FROM stdin;
1	0.25	1	1	2024-04-11 14:35:55.703197	2024-04-11 14:35:55.703197
2	0.50	1	2	2024-04-11 14:35:55.708043	2024-04-11 14:35:55.708043
3	0.75	1	3	2024-04-11 14:35:55.711889	2024-04-11 14:35:55.711889
4	0.25	1	4	2024-04-11 14:35:56.143038	2024-04-11 14:35:56.143038
5	0.50	1	5	2024-04-11 14:35:56.149182	2024-04-11 14:35:56.149182
6	0.75	1	6	2024-04-11 14:35:56.156569	2024-04-11 14:35:56.156569
\.


--
-- Data for Name: spree_shipping_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_shipping_rates (id, shipment_id, shipping_method_id, selected, cost, created_at, updated_at, tax_rate_id) FROM stdin;
1	1	1	t	5.00	2024-04-11 14:35:55.700254	2024-04-11 14:35:55.700254	\N
2	1	2	f	10.00	2024-04-11 14:35:55.705946	2024-04-11 14:35:55.705946	\N
3	1	3	f	15.00	2024-04-11 14:35:55.709894	2024-04-11 14:35:55.709894	\N
4	2	1	t	5.00	2024-04-11 14:35:56.139004	2024-04-11 14:35:56.139004	\N
5	2	2	f	10.00	2024-04-11 14:35:56.14514	2024-04-11 14:35:56.14514	\N
6	2	3	f	15.00	2024-04-11 14:35:56.152853	2024-04-11 14:35:56.152853	\N
\.


--
-- Data for Name: spree_state_changes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_state_changes (id, name, previous_state, stateful_id, user_id, stateful_type, next_state, created_at, updated_at) FROM stdin;
1	order	cart	2	\N	Spree::Order	address	2024-04-11 14:35:55.587552	2024-04-11 14:35:55.587552
2	order	address	2	\N	Spree::Order	delivery	2024-04-11 14:35:55.726049	2024-04-11 14:35:55.726049
3	order	delivery	2	\N	Spree::Order	payment	2024-04-11 14:35:55.861671	2024-04-11 14:35:55.861671
4	order	payment	2	\N	Spree::Order	confirm	2024-04-11 14:35:55.894024	2024-04-11 14:35:55.894024
5	order	confirm	2	\N	Spree::Order	complete	2024-04-11 14:35:55.920168	2024-04-11 14:35:55.920168
6	payment	\N	2	\N	Spree::Order	balance_due	2024-04-11 14:35:56.019974	2024-04-11 14:35:56.019974
7	shipment	\N	2	\N	Spree::Order	pending	2024-04-11 14:35:56.021592	2024-04-11 14:35:56.021592
8	order	cart	3	\N	Spree::Order	address	2024-04-11 14:35:56.072129	2024-04-11 14:35:56.072129
9	order	address	3	\N	Spree::Order	delivery	2024-04-11 14:35:56.186762	2024-04-11 14:35:56.186762
10	order	delivery	3	\N	Spree::Order	payment	2024-04-11 14:35:56.324128	2024-04-11 14:35:56.324128
11	order	payment	3	\N	Spree::Order	confirm	2024-04-11 14:35:56.355454	2024-04-11 14:35:56.355454
12	order	confirm	3	\N	Spree::Order	complete	2024-04-11 14:35:56.380039	2024-04-11 14:35:56.380039
13	payment	\N	3	\N	Spree::Order	balance_due	2024-04-11 14:35:56.449881	2024-04-11 14:35:56.449881
14	shipment	\N	3	\N	Spree::Order	pending	2024-04-11 14:35:56.451599	2024-04-11 14:35:56.451599
15	payment	checkout	2	\N	Spree::Payment	invalid	2024-04-11 14:35:56.619445	2024-04-11 14:35:56.619445
16	payment	checkout	1	\N	Spree::Payment	invalid	2024-04-11 14:35:56.751661	2024-04-11 14:35:56.751661
17	payment	balance_due	3	\N	Spree::Order	paid	2024-04-11 14:35:56.920921	2024-04-11 14:35:56.920921
18	shipment	pending	3	\N	Spree::Order	ready	2024-04-11 14:35:56.922766	2024-04-11 14:35:56.922766
19	payment	pending	3	\N	Spree::Payment	completed	2024-04-11 14:35:56.925395	2024-04-11 14:35:56.925395
20	shipment	ready	3	\N	Spree::Order	shipped	2024-04-11 14:35:57.041302	2024-04-11 14:35:57.041302
21	shipment	ready	2	\N	Spree::Shipment	shipped	2024-04-11 14:35:57.047004	2024-04-11 14:35:57.047004
22	order	complete	3	\N	Spree::Order	returned	2024-04-11 14:35:57.255133	2024-04-11 14:35:57.255133
\.


--
-- Data for Name: spree_states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_states (id, name, abbr, country_id, updated_at, created_at) FROM stdin;
1	Canillo	02	1	2024-04-11 13:05:05.682786	2024-04-11 13:05:05.682786
2	Encamp	03	1	2024-04-11 13:05:05.689319	2024-04-11 13:05:05.689319
3	La Massana	04	1	2024-04-11 13:05:05.696232	2024-04-11 13:05:05.696232
4	Ordino	05	1	2024-04-11 13:05:05.700702	2024-04-11 13:05:05.700702
5	Sant Julià de Lòria	06	1	2024-04-11 13:05:05.704969	2024-04-11 13:05:05.704969
6	Andorra la Vella	07	1	2024-04-11 13:05:05.70915	2024-04-11 13:05:05.70915
7	Escaldes-Engordany	08	1	2024-04-11 13:05:05.713018	2024-04-11 13:05:05.713018
8	'Ajmān	AJ	2	2024-04-11 13:05:05.717067	2024-04-11 13:05:05.717067
9	Abū Ȥaby [Abu Dhabi]	AZ	2	2024-04-11 13:05:05.721256	2024-04-11 13:05:05.721256
10	Dubayy	DU	2	2024-04-11 13:05:05.725061	2024-04-11 13:05:05.725061
11	Al Fujayrah	FU	2	2024-04-11 13:05:05.728739	2024-04-11 13:05:05.728739
12	Ra’s al Khaymah	RK	2	2024-04-11 13:05:05.732887	2024-04-11 13:05:05.732887
13	Ash Shāriqah	SH	2	2024-04-11 13:05:05.737098	2024-04-11 13:05:05.737098
14	Umm al Qaywayn	UQ	2	2024-04-11 13:05:05.740941	2024-04-11 13:05:05.740941
15	Balkh	BAL	3	2024-04-11 13:05:05.744834	2024-04-11 13:05:05.744834
16	Bāmyān	BAM	3	2024-04-11 13:05:05.748724	2024-04-11 13:05:05.748724
17	Bādghīs	BDG	3	2024-04-11 13:05:05.752491	2024-04-11 13:05:05.752491
18	Badakhshān	BDS	3	2024-04-11 13:05:05.756316	2024-04-11 13:05:05.756316
19	Baghlān	BGL	3	2024-04-11 13:05:05.760088	2024-04-11 13:05:05.760088
20	Dāykundī	DAY	3	2024-04-11 13:05:05.763736	2024-04-11 13:05:05.763736
21	Farāh	FRA	3	2024-04-11 13:05:05.768463	2024-04-11 13:05:05.768463
22	Fāryāb	FYB	3	2024-04-11 13:05:05.77204	2024-04-11 13:05:05.77204
23	Ghaznī	GHA	3	2024-04-11 13:05:05.775453	2024-04-11 13:05:05.775453
24	Ghōr	GHO	3	2024-04-11 13:05:05.778861	2024-04-11 13:05:05.778861
25	Helmand	HEL	3	2024-04-11 13:05:05.782518	2024-04-11 13:05:05.782518
26	Herāt	HER	3	2024-04-11 13:05:05.786123	2024-04-11 13:05:05.786123
27	Jowzjān	JOW	3	2024-04-11 13:05:05.789398	2024-04-11 13:05:05.789398
28	Kābul	KAB	3	2024-04-11 13:05:05.792669	2024-04-11 13:05:05.792669
29	Kandahār	KAN	3	2024-04-11 13:05:05.795958	2024-04-11 13:05:05.795958
30	Kāpīsā	KAP	3	2024-04-11 13:05:05.799335	2024-04-11 13:05:05.799335
31	Kunduz	KDZ	3	2024-04-11 13:05:05.802791	2024-04-11 13:05:05.802791
32	Khōst	KHO	3	2024-04-11 13:05:05.806103	2024-04-11 13:05:05.806103
33	Kunar	KNR	3	2024-04-11 13:05:05.809383	2024-04-11 13:05:05.809383
34	Laghmān	LAG	3	2024-04-11 13:05:05.813032	2024-04-11 13:05:05.813032
35	Lōgar	LOG	3	2024-04-11 13:05:05.816625	2024-04-11 13:05:05.816625
36	Nangarhār	NAN	3	2024-04-11 13:05:05.820047	2024-04-11 13:05:05.820047
37	Nīmrōz	NIM	3	2024-04-11 13:05:05.823585	2024-04-11 13:05:05.823585
38	Nūristān	NUR	3	2024-04-11 13:05:05.827026	2024-04-11 13:05:05.827026
39	Panjshayr	PAN	3	2024-04-11 13:05:05.830629	2024-04-11 13:05:05.830629
40	Parwān	PAR	3	2024-04-11 13:05:05.834116	2024-04-11 13:05:05.834116
41	Paktiyā	PIA	3	2024-04-11 13:05:05.837503	2024-04-11 13:05:05.837503
42	Paktīkā	PKA	3	2024-04-11 13:05:05.840874	2024-04-11 13:05:05.840874
43	Samangān	SAM	3	2024-04-11 13:05:05.844295	2024-04-11 13:05:05.844295
44	Sar-e Pul	SAR	3	2024-04-11 13:05:05.847787	2024-04-11 13:05:05.847787
45	Takhār	TAK	3	2024-04-11 13:05:05.85119	2024-04-11 13:05:05.85119
46	Uruzgān	URU	3	2024-04-11 13:05:05.854704	2024-04-11 13:05:05.854704
47	Wardak	WAR	3	2024-04-11 13:05:05.858228	2024-04-11 13:05:05.858228
48	Zābul	ZAB	3	2024-04-11 13:05:05.861916	2024-04-11 13:05:05.861916
49	Saint George	03	4	2024-04-11 13:05:05.865502	2024-04-11 13:05:05.865502
50	Saint John	04	4	2024-04-11 13:05:05.86901	2024-04-11 13:05:05.86901
51	Saint Mary	05	4	2024-04-11 13:05:05.872489	2024-04-11 13:05:05.872489
52	Saint Paul	06	4	2024-04-11 13:05:05.877103	2024-04-11 13:05:05.877103
53	Saint Peter	07	4	2024-04-11 13:05:05.880654	2024-04-11 13:05:05.880654
54	Saint Philip	08	4	2024-04-11 13:05:05.88407	2024-04-11 13:05:05.88407
55	Barbuda	10	4	2024-04-11 13:05:05.887549	2024-04-11 13:05:05.887549
56	Redonda	11	4	2024-04-11 13:05:05.891153	2024-04-11 13:05:05.891153
57	Berat	01	6	2024-04-11 13:05:05.894878	2024-04-11 13:05:05.894878
58	Durrës	02	6	2024-04-11 13:05:05.898481	2024-04-11 13:05:05.898481
59	Elbasan	03	6	2024-04-11 13:05:05.902006	2024-04-11 13:05:05.902006
60	Fier	04	6	2024-04-11 13:05:05.905417	2024-04-11 13:05:05.905417
61	Gjirokastër	05	6	2024-04-11 13:05:05.908824	2024-04-11 13:05:05.908824
62	Korçë	06	6	2024-04-11 13:05:05.912363	2024-04-11 13:05:05.912363
63	Kukës	07	6	2024-04-11 13:05:05.915988	2024-04-11 13:05:05.915988
64	Lezhë	08	6	2024-04-11 13:05:05.919496	2024-04-11 13:05:05.919496
65	Dibër	09	6	2024-04-11 13:05:05.922981	2024-04-11 13:05:05.922981
66	Shkodër	10	6	2024-04-11 13:05:05.926435	2024-04-11 13:05:05.926435
67	Tiranë	11	6	2024-04-11 13:05:05.92996	2024-04-11 13:05:05.92996
68	Vlorë	12	6	2024-04-11 13:05:05.933537	2024-04-11 13:05:05.933537
69	Aragacotn	AG	7	2024-04-11 13:05:05.937089	2024-04-11 13:05:05.937089
70	Ararat	AR	7	2024-04-11 13:05:05.9405	2024-04-11 13:05:05.9405
71	Armavir	AV	7	2024-04-11 13:05:05.946327	2024-04-11 13:05:05.946327
72	Erevan	ER	7	2024-04-11 13:05:05.951806	2024-04-11 13:05:05.951806
73	Gegarkunik'	GR	7	2024-04-11 13:05:05.955306	2024-04-11 13:05:05.955306
74	Kotayk'	KT	7	2024-04-11 13:05:05.958604	2024-04-11 13:05:05.958604
75	Lory	LO	7	2024-04-11 13:05:05.961872	2024-04-11 13:05:05.961872
76	Sirak	SH	7	2024-04-11 13:05:05.965067	2024-04-11 13:05:05.965067
77	Syunik'	SU	7	2024-04-11 13:05:05.96837	2024-04-11 13:05:05.96837
78	Tavus	TV	7	2024-04-11 13:05:05.971662	2024-04-11 13:05:05.971662
79	Vayoc Jor	VD	7	2024-04-11 13:05:05.975068	2024-04-11 13:05:05.975068
80	Bengo	BGO	8	2024-04-11 13:05:05.978593	2024-04-11 13:05:05.978593
81	Benguela	BGU	8	2024-04-11 13:05:05.982054	2024-04-11 13:05:05.982054
82	Bié	BIE	8	2024-04-11 13:05:05.985344	2024-04-11 13:05:05.985344
83	Cabinda	CAB	8	2024-04-11 13:05:05.988756	2024-04-11 13:05:05.988756
84	Cuando-Cubango	CCU	8	2024-04-11 13:05:05.99222	2024-04-11 13:05:05.99222
85	Cunene	CNN	8	2024-04-11 13:05:05.995787	2024-04-11 13:05:05.995787
86	Cuanza Norte	CNO	8	2024-04-11 13:05:05.999474	2024-04-11 13:05:05.999474
87	Cuanza Sul	CUS	8	2024-04-11 13:05:06.002906	2024-04-11 13:05:06.002906
88	Huambo	HUA	8	2024-04-11 13:05:06.006617	2024-04-11 13:05:06.006617
89	Huíla	HUI	8	2024-04-11 13:05:06.014238	2024-04-11 13:05:06.014238
90	Lunda Norte	LNO	8	2024-04-11 13:05:06.017951	2024-04-11 13:05:06.017951
91	Lunda Sul	LSU	8	2024-04-11 13:05:06.021648	2024-04-11 13:05:06.021648
92	Luanda	LUA	8	2024-04-11 13:05:06.025219	2024-04-11 13:05:06.025219
93	Malange	MAL	8	2024-04-11 13:05:06.028812	2024-04-11 13:05:06.028812
94	Moxico	MOX	8	2024-04-11 13:05:06.032383	2024-04-11 13:05:06.032383
95	Namibe	NAM	8	2024-04-11 13:05:06.035848	2024-04-11 13:05:06.035848
96	Uíge	UIG	8	2024-04-11 13:05:06.039356	2024-04-11 13:05:06.039356
97	Zaire	ZAI	8	2024-04-11 13:05:06.042949	2024-04-11 13:05:06.042949
98	Salta	A	10	2024-04-11 13:05:06.046652	2024-04-11 13:05:06.046652
99	Buenos Aires	B	10	2024-04-11 13:05:06.050395	2024-04-11 13:05:06.050395
100	Ciudad Autónoma de Buenos Aires	C	10	2024-04-11 13:05:06.054626	2024-04-11 13:05:06.054626
101	San Luis	D	10	2024-04-11 13:05:06.05871	2024-04-11 13:05:06.05871
102	Entre Rios	E	10	2024-04-11 13:05:06.062497	2024-04-11 13:05:06.062497
103	Santiago del Estero	G	10	2024-04-11 13:05:06.066494	2024-04-11 13:05:06.066494
104	Chaco	H	10	2024-04-11 13:05:06.070251	2024-04-11 13:05:06.070251
105	San Juan	J	10	2024-04-11 13:05:06.073872	2024-04-11 13:05:06.073872
106	Catamarca	K	10	2024-04-11 13:05:06.077538	2024-04-11 13:05:06.077538
107	La Pampa	L	10	2024-04-11 13:05:06.081084	2024-04-11 13:05:06.081084
108	Mendoza	M	10	2024-04-11 13:05:06.084537	2024-04-11 13:05:06.084537
109	Misiones	N	10	2024-04-11 13:05:06.088143	2024-04-11 13:05:06.088143
110	Formosa	P	10	2024-04-11 13:05:06.091653	2024-04-11 13:05:06.091653
111	Neuquen	Q	10	2024-04-11 13:05:06.094995	2024-04-11 13:05:06.094995
112	Rio Negro	R	10	2024-04-11 13:05:06.098404	2024-04-11 13:05:06.098404
113	Santa Fe	S	10	2024-04-11 13:05:06.101761	2024-04-11 13:05:06.101761
114	Tucuman	T	10	2024-04-11 13:05:06.105157	2024-04-11 13:05:06.105157
115	Chubut	U	10	2024-04-11 13:05:06.108505	2024-04-11 13:05:06.108505
116	Tierra del Fuego	V	10	2024-04-11 13:05:06.11181	2024-04-11 13:05:06.11181
117	Corrientes	W	10	2024-04-11 13:05:06.115171	2024-04-11 13:05:06.115171
118	Cordoba	X	10	2024-04-11 13:05:06.118581	2024-04-11 13:05:06.118581
119	Jujuy	Y	10	2024-04-11 13:05:06.121805	2024-04-11 13:05:06.121805
120	Santa Cruz	Z	10	2024-04-11 13:05:06.125257	2024-04-11 13:05:06.125257
121	La Rioja	F	10	2024-04-11 13:05:06.128582	2024-04-11 13:05:06.128582
122	Burgenland	1	12	2024-04-11 13:05:06.131933	2024-04-11 13:05:06.131933
123	Kärnten	2	12	2024-04-11 13:05:06.135385	2024-04-11 13:05:06.135385
124	Niederösterreich	3	12	2024-04-11 13:05:06.138762	2024-04-11 13:05:06.138762
125	Oberösterreich	4	12	2024-04-11 13:05:06.142086	2024-04-11 13:05:06.142086
126	Salzburg	5	12	2024-04-11 13:05:06.145335	2024-04-11 13:05:06.145335
127	Steiermark	6	12	2024-04-11 13:05:06.148593	2024-04-11 13:05:06.148593
128	Tirol	7	12	2024-04-11 13:05:06.151867	2024-04-11 13:05:06.151867
129	Vorarlberg	8	12	2024-04-11 13:05:06.155173	2024-04-11 13:05:06.155173
130	Wien	9	12	2024-04-11 13:05:06.158537	2024-04-11 13:05:06.158537
131	Australian Capital Territory	ACT	13	2024-04-11 13:05:06.161854	2024-04-11 13:05:06.161854
132	New South Wales	NSW	13	2024-04-11 13:05:06.165257	2024-04-11 13:05:06.165257
133	Northern Territory	NT	13	2024-04-11 13:05:06.16862	2024-04-11 13:05:06.16862
134	Queensland	QLD	13	2024-04-11 13:05:06.171991	2024-04-11 13:05:06.171991
135	South Australia	SA	13	2024-04-11 13:05:06.175385	2024-04-11 13:05:06.175385
136	Tasmania	TAS	13	2024-04-11 13:05:06.178829	2024-04-11 13:05:06.178829
137	Victoria	VIC	13	2024-04-11 13:05:06.184313	2024-04-11 13:05:06.184313
138	Western Australia	WA	13	2024-04-11 13:05:06.188546	2024-04-11 13:05:06.188546
139	Abşeron	ABS	16	2024-04-11 13:05:06.19303	2024-04-11 13:05:06.19303
140	Ağstafa	AGA	16	2024-04-11 13:05:06.200897	2024-04-11 13:05:06.200897
141	Ağcabədi	AGC	16	2024-04-11 13:05:06.204853	2024-04-11 13:05:06.204853
142	Ağdam	AGM	16	2024-04-11 13:05:06.208416	2024-04-11 13:05:06.208416
143	Ağdaş	AGS	16	2024-04-11 13:05:06.212109	2024-04-11 13:05:06.212109
144	Ağsu	AGU	16	2024-04-11 13:05:06.215672	2024-04-11 13:05:06.215672
145	Astara	AST	16	2024-04-11 13:05:06.219312	2024-04-11 13:05:06.219312
146	Bakı	BA	16	2024-04-11 13:05:06.222804	2024-04-11 13:05:06.222804
147	Balakən	BAL	16	2024-04-11 13:05:06.226209	2024-04-11 13:05:06.226209
148	Bərdə	BAR	16	2024-04-11 13:05:06.229713	2024-04-11 13:05:06.229713
149	Beyləqan	BEY	16	2024-04-11 13:05:06.233246	2024-04-11 13:05:06.233246
150	Biləsuvar	BIL	16	2024-04-11 13:05:06.236627	2024-04-11 13:05:06.236627
151	Cəbrayıl	CAB	16	2024-04-11 13:05:06.239912	2024-04-11 13:05:06.239912
152	Cəlilabab	CAL	16	2024-04-11 13:05:06.243165	2024-04-11 13:05:06.243165
153	Daşkəsən	DAS	16	2024-04-11 13:05:06.24652	2024-04-11 13:05:06.24652
154	Füzuli	FUZ	16	2024-04-11 13:05:06.250048	2024-04-11 13:05:06.250048
155	Gəncə	GA	16	2024-04-11 13:05:06.253738	2024-04-11 13:05:06.253738
156	Gədəbəy	GAD	16	2024-04-11 13:05:06.258233	2024-04-11 13:05:06.258233
157	Goranboy	GOR	16	2024-04-11 13:05:06.262076	2024-04-11 13:05:06.262076
158	Göyçay	GOY	16	2024-04-11 13:05:06.265632	2024-04-11 13:05:06.265632
159	Göygöl	GYG	16	2024-04-11 13:05:06.269164	2024-04-11 13:05:06.269164
160	Hacıqabul	HAC	16	2024-04-11 13:05:06.272939	2024-04-11 13:05:06.272939
161	İmişli	IMI	16	2024-04-11 13:05:06.276535	2024-04-11 13:05:06.276535
162	İsmayıllı	ISM	16	2024-04-11 13:05:06.280218	2024-04-11 13:05:06.280218
163	Kəlbəcər	KAL	16	2024-04-11 13:05:06.283989	2024-04-11 13:05:06.283989
164	Kürdəmir	KUR	16	2024-04-11 13:05:06.287636	2024-04-11 13:05:06.287636
165	Lənkəran	LA	16	2024-04-11 13:05:06.291337	2024-04-11 13:05:06.291337
166	Laçın	LAC	16	2024-04-11 13:05:06.294871	2024-04-11 13:05:06.294871
167	Lənkəran	LAN	16	2024-04-11 13:05:06.298579	2024-04-11 13:05:06.298579
168	Lerik	LER	16	2024-04-11 13:05:06.302306	2024-04-11 13:05:06.302306
169	Masallı	MAS	16	2024-04-11 13:05:06.305906	2024-04-11 13:05:06.305906
170	Mingəçevir	MI	16	2024-04-11 13:05:06.309374	2024-04-11 13:05:06.309374
171	Naftalan	NA	16	2024-04-11 13:05:06.312783	2024-04-11 13:05:06.312783
172	Neftçala	NEF	16	2024-04-11 13:05:06.316307	2024-04-11 13:05:06.316307
173	Naxçıvan	NX	16	2024-04-11 13:05:06.319886	2024-04-11 13:05:06.319886
174	Oğuz	OGU	16	2024-04-11 13:05:06.323437	2024-04-11 13:05:06.323437
175	Qəbələ	QAB	16	2024-04-11 13:05:06.326967	2024-04-11 13:05:06.326967
176	Qax	QAX	16	2024-04-11 13:05:06.330567	2024-04-11 13:05:06.330567
177	Qazax	QAZ	16	2024-04-11 13:05:06.333988	2024-04-11 13:05:06.333988
178	Quba	QBA	16	2024-04-11 13:05:06.337462	2024-04-11 13:05:06.337462
179	Qubadlı	QBI	16	2024-04-11 13:05:06.340835	2024-04-11 13:05:06.340835
180	Qobustan	QOB	16	2024-04-11 13:05:06.344241	2024-04-11 13:05:06.344241
181	Qusar	QUS	16	2024-04-11 13:05:06.347746	2024-04-11 13:05:06.347746
182	Şəki	SA	16	2024-04-11 13:05:06.351131	2024-04-11 13:05:06.351131
183	Sabirabad	SAB	16	2024-04-11 13:05:06.354555	2024-04-11 13:05:06.354555
184	Şəki	SAK	16	2024-04-11 13:05:06.358005	2024-04-11 13:05:06.358005
185	Salyan	SAL	16	2024-04-11 13:05:06.361325	2024-04-11 13:05:06.361325
186	Saatlı	SAT	16	2024-04-11 13:05:06.364644	2024-04-11 13:05:06.364644
187	Şabran	SBN	16	2024-04-11 13:05:06.368098	2024-04-11 13:05:06.368098
188	Siyəzən	SIY	16	2024-04-11 13:05:06.371484	2024-04-11 13:05:06.371484
189	Şəmkir	SKR	16	2024-04-11 13:05:06.374965	2024-04-11 13:05:06.374965
190	Sumqayıt	SM	16	2024-04-11 13:05:06.37853	2024-04-11 13:05:06.37853
191	Şamaxı	SMI	16	2024-04-11 13:05:06.382073	2024-04-11 13:05:06.382073
192	Samux	SMX	16	2024-04-11 13:05:06.385451	2024-04-11 13:05:06.385451
193	Şirvan	SR	16	2024-04-11 13:05:06.38921	2024-04-11 13:05:06.38921
194	Şuşa	SUS	16	2024-04-11 13:05:06.392785	2024-04-11 13:05:06.392785
195	Tərtər	TAR	16	2024-04-11 13:05:06.396235	2024-04-11 13:05:06.396235
196	Tovuz	TOV	16	2024-04-11 13:05:06.399942	2024-04-11 13:05:06.399942
197	Ucar	UCA	16	2024-04-11 13:05:06.403555	2024-04-11 13:05:06.403555
198	Xankəndi	XA	16	2024-04-11 13:05:06.407063	2024-04-11 13:05:06.407063
199	Xaçmaz	XAC	16	2024-04-11 13:05:06.413682	2024-04-11 13:05:06.413682
200	Xocalı	XCI	16	2024-04-11 13:05:06.417438	2024-04-11 13:05:06.417438
201	Xızı	XIZ	16	2024-04-11 13:05:06.421229	2024-04-11 13:05:06.421229
202	Xocavənd	XVD	16	2024-04-11 13:05:06.42486	2024-04-11 13:05:06.42486
203	Yardımlı	YAR	16	2024-04-11 13:05:06.428544	2024-04-11 13:05:06.428544
204	Yevlax	YE	16	2024-04-11 13:05:06.432144	2024-04-11 13:05:06.432144
205	Yevlax	YEV	16	2024-04-11 13:05:06.435673	2024-04-11 13:05:06.435673
206	Zəngilan	ZAN	16	2024-04-11 13:05:06.439429	2024-04-11 13:05:06.439429
207	Zaqatala	ZAQ	16	2024-04-11 13:05:06.442969	2024-04-11 13:05:06.442969
208	Zərdab	ZAR	16	2024-04-11 13:05:06.44951	2024-04-11 13:05:06.44951
209	Federacija Bosne i Hercegovine	BIH	17	2024-04-11 13:05:06.456008	2024-04-11 13:05:06.456008
210	Brčko distrikt	BRC	17	2024-04-11 13:05:06.45962	2024-04-11 13:05:06.45962
211	Republika Srpska	SRP	17	2024-04-11 13:05:06.463028	2024-04-11 13:05:06.463028
212	Christ Church	01	18	2024-04-11 13:05:06.466415	2024-04-11 13:05:06.466415
213	Saint Andrew	02	18	2024-04-11 13:05:06.469749	2024-04-11 13:05:06.469749
214	Saint George	03	18	2024-04-11 13:05:06.473156	2024-04-11 13:05:06.473156
215	Saint James	04	18	2024-04-11 13:05:06.476586	2024-04-11 13:05:06.476586
216	Saint John	05	18	2024-04-11 13:05:06.479931	2024-04-11 13:05:06.479931
217	Saint Joseph	06	18	2024-04-11 13:05:06.483198	2024-04-11 13:05:06.483198
218	Saint Lucy	07	18	2024-04-11 13:05:06.486578	2024-04-11 13:05:06.486578
219	Saint Michael	08	18	2024-04-11 13:05:06.489891	2024-04-11 13:05:06.489891
220	Saint Peter	09	18	2024-04-11 13:05:06.493155	2024-04-11 13:05:06.493155
221	Saint Philip	10	18	2024-04-11 13:05:06.496534	2024-04-11 13:05:06.496534
222	Saint Thomas	11	18	2024-04-11 13:05:06.499889	2024-04-11 13:05:06.499889
223	Barisal	A	19	2024-04-11 13:05:06.503155	2024-04-11 13:05:06.503155
224	Chittagong	B	19	2024-04-11 13:05:06.506549	2024-04-11 13:05:06.506549
225	Dhaka	C	19	2024-04-11 13:05:06.509863	2024-04-11 13:05:06.509863
226	Khulna	D	19	2024-04-11 13:05:06.513302	2024-04-11 13:05:06.513302
227	Rajshahi	E	19	2024-04-11 13:05:06.516661	2024-04-11 13:05:06.516661
228	Rangpur	F	19	2024-04-11 13:05:06.519958	2024-04-11 13:05:06.519958
229	Sylhet	G	19	2024-04-11 13:05:06.523211	2024-04-11 13:05:06.523211
230	Rangpur bibhag	7	19	2024-04-11 13:05:06.526608	2024-04-11 13:05:06.526608
231	Brussels-Capital Region	BRU	20	2024-04-11 13:05:06.530008	2024-04-11 13:05:06.530008
232	Flemish Region	VLG	20	2024-04-11 13:05:06.533364	2024-04-11 13:05:06.533364
233	Walloon Region	WAL	20	2024-04-11 13:05:06.536756	2024-04-11 13:05:06.536756
234	Boucle du Mouhoun	01	21	2024-04-11 13:05:06.540027	2024-04-11 13:05:06.540027
235	Cascades	02	21	2024-04-11 13:05:06.543237	2024-04-11 13:05:06.543237
236	Centre	03	21	2024-04-11 13:05:06.546542	2024-04-11 13:05:06.546542
237	Centre-Est	04	21	2024-04-11 13:05:06.549923	2024-04-11 13:05:06.549923
238	Centre-Nord	05	21	2024-04-11 13:05:06.553725	2024-04-11 13:05:06.553725
239	Centre-Ouest	06	21	2024-04-11 13:05:06.557277	2024-04-11 13:05:06.557277
240	Centre-Sud	07	21	2024-04-11 13:05:06.560673	2024-04-11 13:05:06.560673
241	Est	08	21	2024-04-11 13:05:06.563996	2024-04-11 13:05:06.563996
242	Hauts-Bassins	09	21	2024-04-11 13:05:06.567319	2024-04-11 13:05:06.567319
243	Nord	10	21	2024-04-11 13:05:06.570588	2024-04-11 13:05:06.570588
244	Plateau-Central	11	21	2024-04-11 13:05:06.573957	2024-04-11 13:05:06.573957
245	Sahel	12	21	2024-04-11 13:05:06.577396	2024-04-11 13:05:06.577396
246	Sud-Ouest	13	21	2024-04-11 13:05:06.580708	2024-04-11 13:05:06.580708
247	Blagoevgrad	01	22	2024-04-11 13:05:06.58397	2024-04-11 13:05:06.58397
248	Burgas	02	22	2024-04-11 13:05:06.587197	2024-04-11 13:05:06.587197
249	Varna	03	22	2024-04-11 13:05:06.590579	2024-04-11 13:05:06.590579
250	Veliko Tarnovo	04	22	2024-04-11 13:05:06.593974	2024-04-11 13:05:06.593974
251	Vidin	05	22	2024-04-11 13:05:06.597412	2024-04-11 13:05:06.597412
252	Vratsa	06	22	2024-04-11 13:05:06.600868	2024-04-11 13:05:06.600868
253	Gabrovo	07	22	2024-04-11 13:05:06.604272	2024-04-11 13:05:06.604272
254	Dobrich	08	22	2024-04-11 13:05:06.607609	2024-04-11 13:05:06.607609
255	Kardzhali	09	22	2024-04-11 13:05:06.610909	2024-04-11 13:05:06.610909
256	Kyustendil	10	22	2024-04-11 13:05:06.61431	2024-04-11 13:05:06.61431
257	Lovech	11	22	2024-04-11 13:05:06.617687	2024-04-11 13:05:06.617687
258	Montana	12	22	2024-04-11 13:05:06.621084	2024-04-11 13:05:06.621084
259	Pazardzhik	13	22	2024-04-11 13:05:06.624607	2024-04-11 13:05:06.624607
260	Pernik	14	22	2024-04-11 13:05:06.627988	2024-04-11 13:05:06.627988
261	Pleven	15	22	2024-04-11 13:05:06.631431	2024-04-11 13:05:06.631431
262	Plovdiv	16	22	2024-04-11 13:05:06.634836	2024-04-11 13:05:06.634836
263	Razgrad	17	22	2024-04-11 13:05:06.638205	2024-04-11 13:05:06.638205
264	Ruse	18	22	2024-04-11 13:05:06.641587	2024-04-11 13:05:06.641587
265	Silistra	19	22	2024-04-11 13:05:06.644991	2024-04-11 13:05:06.644991
266	Sliven	20	22	2024-04-11 13:05:06.64845	2024-04-11 13:05:06.64845
267	Smolyan	21	22	2024-04-11 13:05:06.651987	2024-04-11 13:05:06.651987
268	Sofia-Grad	22	22	2024-04-11 13:05:06.655439	2024-04-11 13:05:06.655439
269	Sofia	23	22	2024-04-11 13:05:06.658838	2024-04-11 13:05:06.658838
270	Stara Zagora	24	22	2024-04-11 13:05:06.662213	2024-04-11 13:05:06.662213
271	Targovishte	25	22	2024-04-11 13:05:06.665653	2024-04-11 13:05:06.665653
272	Haskovo	26	22	2024-04-11 13:05:06.668958	2024-04-11 13:05:06.668958
273	Shumen	27	22	2024-04-11 13:05:06.672436	2024-04-11 13:05:06.672436
274	Yambol	28	22	2024-04-11 13:05:06.675832	2024-04-11 13:05:06.675832
275	Al Manāmah (Al ‘Āşimah)	13	23	2024-04-11 13:05:06.679356	2024-04-11 13:05:06.679356
276	Al Janūbīyah	14	23	2024-04-11 13:05:06.6828	2024-04-11 13:05:06.6828
277	Al Muḩarraq	15	23	2024-04-11 13:05:06.686216	2024-04-11 13:05:06.686216
278	Al Wusţá	16	23	2024-04-11 13:05:06.68966	2024-04-11 13:05:06.68966
279	Ash Shamālīyah	17	23	2024-04-11 13:05:06.693163	2024-04-11 13:05:06.693163
280	Bubanza	BB	24	2024-04-11 13:05:06.699829	2024-04-11 13:05:06.699829
281	Bujumbura Rural	BL	24	2024-04-11 13:05:06.706607	2024-04-11 13:05:06.706607
282	Bujumbura Mairie	BM	24	2024-04-11 13:05:06.710003	2024-04-11 13:05:06.710003
283	Bururi	BR	24	2024-04-11 13:05:06.713456	2024-04-11 13:05:06.713456
284	Cankuzo	CA	24	2024-04-11 13:05:06.716817	2024-04-11 13:05:06.716817
285	Cibitoke	CI	24	2024-04-11 13:05:06.720345	2024-04-11 13:05:06.720345
286	Gitega	GI	24	2024-04-11 13:05:06.723855	2024-04-11 13:05:06.723855
287	Kirundo	KI	24	2024-04-11 13:05:06.727258	2024-04-11 13:05:06.727258
288	Karuzi	KR	24	2024-04-11 13:05:06.730666	2024-04-11 13:05:06.730666
289	Kayanza	KY	24	2024-04-11 13:05:06.73497	2024-04-11 13:05:06.73497
290	Makamba	MA	24	2024-04-11 13:05:06.738835	2024-04-11 13:05:06.738835
291	Muramvya	MU	24	2024-04-11 13:05:06.74258	2024-04-11 13:05:06.74258
292	Mwaro	MW	24	2024-04-11 13:05:06.746254	2024-04-11 13:05:06.746254
293	Ngozi	NG	24	2024-04-11 13:05:06.750022	2024-04-11 13:05:06.750022
294	Rutana	RT	24	2024-04-11 13:05:06.75353	2024-04-11 13:05:06.75353
295	Ruyigi	RY	24	2024-04-11 13:05:06.757007	2024-04-11 13:05:06.757007
296	Atakora	AK	25	2024-04-11 13:05:06.76065	2024-04-11 13:05:06.76065
297	Alibori	AL	25	2024-04-11 13:05:06.764082	2024-04-11 13:05:06.764082
298	Atlantique	AQ	25	2024-04-11 13:05:06.767559	2024-04-11 13:05:06.767559
299	Borgou	BO	25	2024-04-11 13:05:06.771097	2024-04-11 13:05:06.771097
300	Collines	CO	25	2024-04-11 13:05:06.77464	2024-04-11 13:05:06.77464
301	Donga	DO	25	2024-04-11 13:05:06.778171	2024-04-11 13:05:06.778171
302	Kouffo	KO	25	2024-04-11 13:05:06.781781	2024-04-11 13:05:06.781781
303	Littoral	LI	25	2024-04-11 13:05:06.785296	2024-04-11 13:05:06.785296
304	Mono	MO	25	2024-04-11 13:05:06.788923	2024-04-11 13:05:06.788923
305	Ouémé	OU	25	2024-04-11 13:05:06.792495	2024-04-11 13:05:06.792495
306	Plateau	PL	25	2024-04-11 13:05:06.796081	2024-04-11 13:05:06.796081
307	Zou	ZO	25	2024-04-11 13:05:06.799868	2024-04-11 13:05:06.799868
308	Devenshire	DEV	27	2024-04-11 13:05:06.803669	2024-04-11 13:05:06.803669
309	Hamilton	HAM	27	2024-04-11 13:05:06.810513	2024-04-11 13:05:06.810513
310	Paget	PAG	27	2024-04-11 13:05:06.814156	2024-04-11 13:05:06.814156
311	Pembroke	PEM	27	2024-04-11 13:05:06.81774	2024-04-11 13:05:06.81774
312	Saint George's	SGE	27	2024-04-11 13:05:06.821304	2024-04-11 13:05:06.821304
313	Sandys	SAN	27	2024-04-11 13:05:06.824858	2024-04-11 13:05:06.824858
314	Smiths	SMI	27	2024-04-11 13:05:06.828534	2024-04-11 13:05:06.828534
315	Southampton	SOU	27	2024-04-11 13:05:06.832174	2024-04-11 13:05:06.832174
316	Warwick	WAR	27	2024-04-11 13:05:06.835724	2024-04-11 13:05:06.835724
317	Belait	BE	28	2024-04-11 13:05:06.83946	2024-04-11 13:05:06.83946
318	Brunei-Muara	BM	28	2024-04-11 13:05:06.842975	2024-04-11 13:05:06.842975
319	Temburong	TE	28	2024-04-11 13:05:06.846534	2024-04-11 13:05:06.846534
320	Tutong	TU	28	2024-04-11 13:05:06.850094	2024-04-11 13:05:06.850094
321	El Beni	B	29	2024-04-11 13:05:06.853856	2024-04-11 13:05:06.853856
322	Cochabamba	C	29	2024-04-11 13:05:06.858825	2024-04-11 13:05:06.858825
323	Chuquisaca	H	29	2024-04-11 13:05:06.86379	2024-04-11 13:05:06.86379
324	La Paz	L	29	2024-04-11 13:05:06.867777	2024-04-11 13:05:06.867777
325	Pando	N	29	2024-04-11 13:05:06.87151	2024-04-11 13:05:06.87151
326	Oruro	O	29	2024-04-11 13:05:06.875198	2024-04-11 13:05:06.875198
327	Potosí	P	29	2024-04-11 13:05:06.879058	2024-04-11 13:05:06.879058
328	Santa Cruz	S	29	2024-04-11 13:05:06.882817	2024-04-11 13:05:06.882817
329	Tarija	T	29	2024-04-11 13:05:06.88652	2024-04-11 13:05:06.88652
330	Bonaire	BO	30	2024-04-11 13:05:06.890134	2024-04-11 13:05:06.890134
331	Saba	SA	30	2024-04-11 13:05:06.893645	2024-04-11 13:05:06.893645
332	Sint Eustatius	SE	30	2024-04-11 13:05:06.897215	2024-04-11 13:05:06.897215
333	Acre	AC	31	2024-04-11 13:05:06.900839	2024-04-11 13:05:06.900839
334	Alagoas	AL	31	2024-04-11 13:05:06.904254	2024-04-11 13:05:06.904254
335	Amazonas	AM	31	2024-04-11 13:05:06.907745	2024-04-11 13:05:06.907745
336	Amapá	AP	31	2024-04-11 13:05:06.91119	2024-04-11 13:05:06.91119
337	Bahia	BA	31	2024-04-11 13:05:06.914592	2024-04-11 13:05:06.914592
338	Ceará	CE	31	2024-04-11 13:05:06.917999	2024-04-11 13:05:06.917999
339	Distrito Federal	DF	31	2024-04-11 13:05:06.921455	2024-04-11 13:05:06.921455
340	Espírito Santo	ES	31	2024-04-11 13:05:06.924917	2024-04-11 13:05:06.924917
341	Goiás	GO	31	2024-04-11 13:05:06.928449	2024-04-11 13:05:06.928449
342	Maranhão	MA	31	2024-04-11 13:05:06.931876	2024-04-11 13:05:06.931876
343	Minas Gerais	MG	31	2024-04-11 13:05:06.935237	2024-04-11 13:05:06.935237
344	Mato Grosso do Sul	MS	31	2024-04-11 13:05:06.93851	2024-04-11 13:05:06.93851
345	Mato Grosso	MT	31	2024-04-11 13:05:06.941854	2024-04-11 13:05:06.941854
346	Pará	PA	31	2024-04-11 13:05:06.946949	2024-04-11 13:05:06.946949
347	Paraíba	PB	31	2024-04-11 13:05:06.954111	2024-04-11 13:05:06.954111
348	Pernambuco	PE	31	2024-04-11 13:05:06.957676	2024-04-11 13:05:06.957676
349	Piauí	PI	31	2024-04-11 13:05:06.961119	2024-04-11 13:05:06.961119
350	Paraná	PR	31	2024-04-11 13:05:06.964552	2024-04-11 13:05:06.964552
351	Rio de Janeiro	RJ	31	2024-04-11 13:05:06.968023	2024-04-11 13:05:06.968023
352	Rio Grande do Norte	RN	31	2024-04-11 13:05:06.971492	2024-04-11 13:05:06.971492
353	Rondônia	RO	31	2024-04-11 13:05:06.975028	2024-04-11 13:05:06.975028
354	Roraima	RR	31	2024-04-11 13:05:06.978576	2024-04-11 13:05:06.978576
355	Rio Grande do Sul	RS	31	2024-04-11 13:05:06.981997	2024-04-11 13:05:06.981997
356	Santa Catarina	SC	31	2024-04-11 13:05:06.985435	2024-04-11 13:05:06.985435
357	Sergipe	SE	31	2024-04-11 13:05:06.988819	2024-04-11 13:05:06.988819
358	São Paulo	SP	31	2024-04-11 13:05:06.992091	2024-04-11 13:05:06.992091
359	Tocantins	TO	31	2024-04-11 13:05:06.995632	2024-04-11 13:05:06.995632
360	Acklins	AK	32	2024-04-11 13:05:06.99919	2024-04-11 13:05:06.99919
361	Bimini	BI	32	2024-04-11 13:05:07.002616	2024-04-11 13:05:07.002616
362	Black Point	BP	32	2024-04-11 13:05:07.005938	2024-04-11 13:05:07.005938
363	Berry Islands	BY	32	2024-04-11 13:05:07.009196	2024-04-11 13:05:07.009196
364	Central Eleuthera	CE	32	2024-04-11 13:05:07.012506	2024-04-11 13:05:07.012506
365	Cat Island	CI	32	2024-04-11 13:05:07.015888	2024-04-11 13:05:07.015888
366	Crooked Island and Long Cay	CK	32	2024-04-11 13:05:07.019282	2024-04-11 13:05:07.019282
367	Central Abaco	CO	32	2024-04-11 13:05:07.022828	2024-04-11 13:05:07.022828
368	Central Andros	CS	32	2024-04-11 13:05:07.0264	2024-04-11 13:05:07.0264
369	East Grand Bahama	EG	32	2024-04-11 13:05:07.029877	2024-04-11 13:05:07.029877
370	Exuma	EX	32	2024-04-11 13:05:07.033364	2024-04-11 13:05:07.033364
371	City of Freeport	FP	32	2024-04-11 13:05:07.036723	2024-04-11 13:05:07.036723
372	Grand Cay	GC	32	2024-04-11 13:05:07.039993	2024-04-11 13:05:07.039993
373	Harbour Island	HI	32	2024-04-11 13:05:07.043584	2024-04-11 13:05:07.043584
374	Hope Town	HT	32	2024-04-11 13:05:07.047073	2024-04-11 13:05:07.047073
375	Inagua	IN	32	2024-04-11 13:05:07.05071	2024-04-11 13:05:07.05071
376	Long Island	LI	32	2024-04-11 13:05:07.054717	2024-04-11 13:05:07.054717
377	Mangrove Cay	MC	32	2024-04-11 13:05:07.058266	2024-04-11 13:05:07.058266
378	Mayaguana	MG	32	2024-04-11 13:05:07.061733	2024-04-11 13:05:07.061733
379	Moore's Island	MI	32	2024-04-11 13:05:07.065323	2024-04-11 13:05:07.065323
380	North Eleuthera	NE	32	2024-04-11 13:05:07.068859	2024-04-11 13:05:07.068859
381	North Abaco	NO	32	2024-04-11 13:05:07.072336	2024-04-11 13:05:07.072336
382	North Andros	NS	32	2024-04-11 13:05:07.07582	2024-04-11 13:05:07.07582
383	Rum Cay	RC	32	2024-04-11 13:05:07.079217	2024-04-11 13:05:07.079217
384	Ragged Island	RI	32	2024-04-11 13:05:07.082619	2024-04-11 13:05:07.082619
385	South Andros	SA	32	2024-04-11 13:05:07.086026	2024-04-11 13:05:07.086026
386	South Eleuthera	SE	32	2024-04-11 13:05:07.089442	2024-04-11 13:05:07.089442
387	South Abaco	SO	32	2024-04-11 13:05:07.092927	2024-04-11 13:05:07.092927
388	San Salvador	SS	32	2024-04-11 13:05:07.096467	2024-04-11 13:05:07.096467
389	Spanish Wells	SW	32	2024-04-11 13:05:07.099916	2024-04-11 13:05:07.099916
390	West Grand Bahama	WG	32	2024-04-11 13:05:07.103339	2024-04-11 13:05:07.103339
391	Paro	11	33	2024-04-11 13:05:07.106772	2024-04-11 13:05:07.106772
392	Chhukha	12	33	2024-04-11 13:05:07.110208	2024-04-11 13:05:07.110208
393	Ha	13	33	2024-04-11 13:05:07.113796	2024-04-11 13:05:07.113796
394	Samtee	14	33	2024-04-11 13:05:07.117251	2024-04-11 13:05:07.117251
395	Thimphu	15	33	2024-04-11 13:05:07.120662	2024-04-11 13:05:07.120662
396	Tsirang	21	33	2024-04-11 13:05:07.124172	2024-04-11 13:05:07.124172
397	Dagana	22	33	2024-04-11 13:05:07.127611	2024-04-11 13:05:07.127611
398	Punakha	23	33	2024-04-11 13:05:07.131274	2024-04-11 13:05:07.131274
399	Wangdue Phodrang	24	33	2024-04-11 13:05:07.134817	2024-04-11 13:05:07.134817
400	Sarpang	31	33	2024-04-11 13:05:07.138234	2024-04-11 13:05:07.138234
401	Trongsa	32	33	2024-04-11 13:05:07.14162	2024-04-11 13:05:07.14162
402	Bumthang	33	33	2024-04-11 13:05:07.144964	2024-04-11 13:05:07.144964
403	Zhemgang	34	33	2024-04-11 13:05:07.148368	2024-04-11 13:05:07.148368
404	Trashigang	41	33	2024-04-11 13:05:07.151872	2024-04-11 13:05:07.151872
405	Monggar	42	33	2024-04-11 13:05:07.155347	2024-04-11 13:05:07.155347
406	Pemagatshel	43	33	2024-04-11 13:05:07.158807	2024-04-11 13:05:07.158807
407	Lhuentse	44	33	2024-04-11 13:05:07.162346	2024-04-11 13:05:07.162346
408	Samdrup Jongkha	45	33	2024-04-11 13:05:07.165773	2024-04-11 13:05:07.165773
409	Gasa	GA	33	2024-04-11 13:05:07.169474	2024-04-11 13:05:07.169474
410	Trashi Yangtse	TY	33	2024-04-11 13:05:07.173004	2024-04-11 13:05:07.173004
411	Central	CE	35	2024-04-11 13:05:07.176528	2024-04-11 13:05:07.176528
412	Ghanzi	GH	35	2024-04-11 13:05:07.180039	2024-04-11 13:05:07.180039
413	Kgalagadi	KG	35	2024-04-11 13:05:07.187601	2024-04-11 13:05:07.187601
414	Kgatleng	KL	35	2024-04-11 13:05:07.192764	2024-04-11 13:05:07.192764
415	Kweneng	KW	35	2024-04-11 13:05:07.197225	2024-04-11 13:05:07.197225
416	North-East	NE	35	2024-04-11 13:05:07.204972	2024-04-11 13:05:07.204972
417	North-West	NW	35	2024-04-11 13:05:07.20933	2024-04-11 13:05:07.20933
418	South-East	SE	35	2024-04-11 13:05:07.215685	2024-04-11 13:05:07.215685
419	Southern	SO	35	2024-04-11 13:05:07.219661	2024-04-11 13:05:07.219661
420	Brèsckaja voblasc'	BR	36	2024-04-11 13:05:07.223426	2024-04-11 13:05:07.223426
421	Horad Minsk	HM	36	2024-04-11 13:05:07.227096	2024-04-11 13:05:07.227096
422	Homel'skaja voblasc'	HO	36	2024-04-11 13:05:07.230869	2024-04-11 13:05:07.230869
423	Hrodzenskaja voblasc'	HR	36	2024-04-11 13:05:07.234546	2024-04-11 13:05:07.234546
424	Mahilëuskaja voblasc'	MA	36	2024-04-11 13:05:07.238099	2024-04-11 13:05:07.238099
425	Minskaja voblasc'	MI	36	2024-04-11 13:05:07.241675	2024-04-11 13:05:07.241675
426	Vicebskaja voblasc'	VI	36	2024-04-11 13:05:07.245254	2024-04-11 13:05:07.245254
427	Belize	BZ	37	2024-04-11 13:05:07.248965	2024-04-11 13:05:07.248965
428	Cayo	CY	37	2024-04-11 13:05:07.252686	2024-04-11 13:05:07.252686
429	Corozal	CZL	37	2024-04-11 13:05:07.256224	2024-04-11 13:05:07.256224
430	Orange Walk	OW	37	2024-04-11 13:05:07.259727	2024-04-11 13:05:07.259727
431	Stann Creek	SC	37	2024-04-11 13:05:07.263263	2024-04-11 13:05:07.263263
432	Toledo	TOL	37	2024-04-11 13:05:07.266792	2024-04-11 13:05:07.266792
433	Alberta	AB	38	2024-04-11 13:05:07.270275	2024-04-11 13:05:07.270275
434	British Columbia	BC	38	2024-04-11 13:05:07.273608	2024-04-11 13:05:07.273608
435	Manitoba	MB	38	2024-04-11 13:05:07.277048	2024-04-11 13:05:07.277048
436	New Brunswick	NB	38	2024-04-11 13:05:07.280442	2024-04-11 13:05:07.280442
437	Newfoundland and Labrador	NL	38	2024-04-11 13:05:07.283789	2024-04-11 13:05:07.283789
438	Nova Scotia	NS	38	2024-04-11 13:05:07.287067	2024-04-11 13:05:07.287067
439	Northwest Territories	NT	38	2024-04-11 13:05:07.29043	2024-04-11 13:05:07.29043
440	Nunavut	NU	38	2024-04-11 13:05:07.293688	2024-04-11 13:05:07.293688
441	Ontario	ON	38	2024-04-11 13:05:07.296988	2024-04-11 13:05:07.296988
442	Prince Edward Island	PE	38	2024-04-11 13:05:07.300555	2024-04-11 13:05:07.300555
443	Quebec	QC	38	2024-04-11 13:05:07.303916	2024-04-11 13:05:07.303916
444	Saskatchewan	SK	38	2024-04-11 13:05:07.307295	2024-04-11 13:05:07.307295
445	Yukon Territory	YT	38	2024-04-11 13:05:07.310687	2024-04-11 13:05:07.310687
446	Bas-Congo	BC	40	2024-04-11 13:05:07.314111	2024-04-11 13:05:07.314111
447	Bandundu	BN	40	2024-04-11 13:05:07.3175	2024-04-11 13:05:07.3175
448	Équateur	EQ	40	2024-04-11 13:05:07.320988	2024-04-11 13:05:07.320988
449	Katanga	KA	40	2024-04-11 13:05:07.324492	2024-04-11 13:05:07.324492
450	Kasai-Oriental	KE	40	2024-04-11 13:05:07.327959	2024-04-11 13:05:07.327959
451	Kinshasa	KN	40	2024-04-11 13:05:07.331332	2024-04-11 13:05:07.331332
452	Kasai-Occidental	KW	40	2024-04-11 13:05:07.334681	2024-04-11 13:05:07.334681
453	Maniema	MA	40	2024-04-11 13:05:07.337983	2024-04-11 13:05:07.337983
454	Nord-Kivu	NK	40	2024-04-11 13:05:07.341397	2024-04-11 13:05:07.341397
455	Orientale	OR	40	2024-04-11 13:05:07.344763	2024-04-11 13:05:07.344763
456	Sud-Kivu	SK	40	2024-04-11 13:05:07.348258	2024-04-11 13:05:07.348258
457	Ouham	AC	41	2024-04-11 13:05:07.351852	2024-04-11 13:05:07.351852
458	Bamingui-Bangoran	BB	41	2024-04-11 13:05:07.355413	2024-04-11 13:05:07.355413
459	Bangui	BGF	41	2024-04-11 13:05:07.358782	2024-04-11 13:05:07.358782
460	Basse-Kotto	BK	41	2024-04-11 13:05:07.362145	2024-04-11 13:05:07.362145
461	Haute-Kotto	HK	41	2024-04-11 13:05:07.365493	2024-04-11 13:05:07.365493
462	Haut-Mbomou	HM	41	2024-04-11 13:05:07.368956	2024-04-11 13:05:07.368956
463	Haute-Sangha / Mambéré-Kadéï	HS	41	2024-04-11 13:05:07.37245	2024-04-11 13:05:07.37245
464	Gribingui	KB	41	2024-04-11 13:05:07.375892	2024-04-11 13:05:07.375892
465	Kémo-Gribingui	KG	41	2024-04-11 13:05:07.379261	2024-04-11 13:05:07.379261
466	Lobaye	LB	41	2024-04-11 13:05:07.382619	2024-04-11 13:05:07.382619
467	Mbomou	MB	41	2024-04-11 13:05:07.385968	2024-04-11 13:05:07.385968
468	Ombella-M'poko	MP	41	2024-04-11 13:05:07.389424	2024-04-11 13:05:07.389424
469	Nana-Mambéré	NM	41	2024-04-11 13:05:07.392759	2024-04-11 13:05:07.392759
470	Ouham-Pendé	OP	41	2024-04-11 13:05:07.396197	2024-04-11 13:05:07.396197
471	Sangha	SE	41	2024-04-11 13:05:07.399776	2024-04-11 13:05:07.399776
472	Ouaka	UK	41	2024-04-11 13:05:07.403228	2024-04-11 13:05:07.403228
473	Vakaga	VK	41	2024-04-11 13:05:07.406672	2024-04-11 13:05:07.406672
474	Bouenza	11	42	2024-04-11 13:05:07.410048	2024-04-11 13:05:07.410048
475	Pool	12	42	2024-04-11 13:05:07.413354	2024-04-11 13:05:07.413354
476	Sangha	13	42	2024-04-11 13:05:07.416792	2024-04-11 13:05:07.416792
477	Plateaux	14	42	2024-04-11 13:05:07.420305	2024-04-11 13:05:07.420305
478	Cuvette-Ouest	15	42	2024-04-11 13:05:07.42375	2024-04-11 13:05:07.42375
479	Lékoumou	2	42	2024-04-11 13:05:07.427149	2024-04-11 13:05:07.427149
480	Kouilou	5	42	2024-04-11 13:05:07.430502	2024-04-11 13:05:07.430502
481	Likouala	7	42	2024-04-11 13:05:07.433993	2024-04-11 13:05:07.433993
482	Cuvette	8	42	2024-04-11 13:05:07.437607	2024-04-11 13:05:07.437607
483	Niari	9	42	2024-04-11 13:05:07.440995	2024-04-11 13:05:07.440995
484	Brazzaville	BZV	42	2024-04-11 13:05:07.444374	2024-04-11 13:05:07.444374
485	Aargau	AG	43	2024-04-11 13:05:07.450101	2024-04-11 13:05:07.450101
486	Appenzell Innerrhoden	AI	43	2024-04-11 13:05:07.458131	2024-04-11 13:05:07.458131
487	Appenzell Ausserrhoden	AR	43	2024-04-11 13:05:07.462175	2024-04-11 13:05:07.462175
488	Bern	BE	43	2024-04-11 13:05:07.466127	2024-04-11 13:05:07.466127
489	Basel-Landschaft	BL	43	2024-04-11 13:05:07.469972	2024-04-11 13:05:07.469972
490	Basel-Stadt	BS	43	2024-04-11 13:05:07.473713	2024-04-11 13:05:07.473713
491	Fribourg	FR	43	2024-04-11 13:05:07.477527	2024-04-11 13:05:07.477527
492	Genève	GE	43	2024-04-11 13:05:07.48126	2024-04-11 13:05:07.48126
493	Glarus	GL	43	2024-04-11 13:05:07.485128	2024-04-11 13:05:07.485128
494	Graubünden	GR	43	2024-04-11 13:05:07.488918	2024-04-11 13:05:07.488918
495	Jura	JU	43	2024-04-11 13:05:07.492657	2024-04-11 13:05:07.492657
496	Luzern	LU	43	2024-04-11 13:05:07.496415	2024-04-11 13:05:07.496415
497	Neuchâtel	NE	43	2024-04-11 13:05:07.5002	2024-04-11 13:05:07.5002
498	Nidwalden	NW	43	2024-04-11 13:05:07.503928	2024-04-11 13:05:07.503928
499	Obwalden	OW	43	2024-04-11 13:05:07.507525	2024-04-11 13:05:07.507525
500	Sankt Gallen	SG	43	2024-04-11 13:05:07.511145	2024-04-11 13:05:07.511145
501	Schaffhausen	SH	43	2024-04-11 13:05:07.51496	2024-04-11 13:05:07.51496
502	Solothurn	SO	43	2024-04-11 13:05:07.518558	2024-04-11 13:05:07.518558
503	Schwyz	SZ	43	2024-04-11 13:05:07.522189	2024-04-11 13:05:07.522189
504	Thurgau	TG	43	2024-04-11 13:05:07.525799	2024-04-11 13:05:07.525799
505	Ticino	TI	43	2024-04-11 13:05:07.52933	2024-04-11 13:05:07.52933
506	Uri	UR	43	2024-04-11 13:05:07.533263	2024-04-11 13:05:07.533263
507	Vaud	VD	43	2024-04-11 13:05:07.536815	2024-04-11 13:05:07.536815
508	Valais	VS	43	2024-04-11 13:05:07.540392	2024-04-11 13:05:07.540392
509	Zug	ZG	43	2024-04-11 13:05:07.544067	2024-04-11 13:05:07.544067
510	Zürich	ZH	43	2024-04-11 13:05:07.547582	2024-04-11 13:05:07.547582
511	Lagunes (Région des)	01	44	2024-04-11 13:05:07.551486	2024-04-11 13:05:07.551486
512	Haut-Sassandra (Région du)	02	44	2024-04-11 13:05:07.555703	2024-04-11 13:05:07.555703
513	Savanes (Région des)	03	44	2024-04-11 13:05:07.559489	2024-04-11 13:05:07.559489
514	Vallée du Bandama (Région de la)	04	44	2024-04-11 13:05:07.563252	2024-04-11 13:05:07.563252
515	Moyen-Comoé (Région du)	05	44	2024-04-11 13:05:07.566978	2024-04-11 13:05:07.566978
516	18 Montagnes (Région des)	06	44	2024-04-11 13:05:07.570708	2024-04-11 13:05:07.570708
517	Lacs (Région des)	07	44	2024-04-11 13:05:07.574347	2024-04-11 13:05:07.574347
518	Zanzan (Région du)	08	44	2024-04-11 13:05:07.577981	2024-04-11 13:05:07.577981
519	Bas-Sassandra (Région du)	09	44	2024-04-11 13:05:07.58174	2024-04-11 13:05:07.58174
520	Denguélé (Région du)	10	44	2024-04-11 13:05:07.585363	2024-04-11 13:05:07.585363
521	Nzi-Comoé (Région)	11	44	2024-04-11 13:05:07.588956	2024-04-11 13:05:07.588956
522	Marahoué (Région de la)	12	44	2024-04-11 13:05:07.592509	2024-04-11 13:05:07.592509
523	Sud-Comoé (Région du)	13	44	2024-04-11 13:05:07.59616	2024-04-11 13:05:07.59616
524	Worodouqou (Région du)	14	44	2024-04-11 13:05:07.59988	2024-04-11 13:05:07.59988
525	Sud-Bandama (Région du)	15	44	2024-04-11 13:05:07.603656	2024-04-11 13:05:07.603656
526	Agnébi (Région de l')	16	44	2024-04-11 13:05:07.607382	2024-04-11 13:05:07.607382
527	Bafing (Région du)	17	44	2024-04-11 13:05:07.611162	2024-04-11 13:05:07.611162
528	Fromager (Région du)	18	44	2024-04-11 13:05:07.617444	2024-04-11 13:05:07.617444
529	Moyen-Cavally (Région du)	19	44	2024-04-11 13:05:07.621564	2024-04-11 13:05:07.621564
530	Aisén del General Carlos Ibáñez del Campo	AI	46	2024-04-11 13:05:07.625553	2024-04-11 13:05:07.625553
531	Antofagasta	AN	46	2024-04-11 13:05:07.629464	2024-04-11 13:05:07.629464
532	Arica y Parinacota	AP	46	2024-04-11 13:05:07.633322	2024-04-11 13:05:07.633322
533	Araucanía	AR	46	2024-04-11 13:05:07.637059	2024-04-11 13:05:07.637059
534	Atacama	AT	46	2024-04-11 13:05:07.640704	2024-04-11 13:05:07.640704
535	Bío-Bío	BI	46	2024-04-11 13:05:07.64442	2024-04-11 13:05:07.64442
536	Coquimbo	CO	46	2024-04-11 13:05:07.648106	2024-04-11 13:05:07.648106
537	Libertador General Bernardo O'Higgins	LI	46	2024-04-11 13:05:07.651811	2024-04-11 13:05:07.651811
538	Los Lagos	LL	46	2024-04-11 13:05:07.655464	2024-04-11 13:05:07.655464
539	Los Ríos	LR	46	2024-04-11 13:05:07.659155	2024-04-11 13:05:07.659155
540	Magallanes y Antártica Chilena	MA	46	2024-04-11 13:05:07.662756	2024-04-11 13:05:07.662756
541	Maule	ML	46	2024-04-11 13:05:07.666272	2024-04-11 13:05:07.666272
542	Región Metropolitana de Santiago	RM	46	2024-04-11 13:05:07.669897	2024-04-11 13:05:07.669897
543	Tarapacá	TA	46	2024-04-11 13:05:07.673608	2024-04-11 13:05:07.673608
544	Valparaíso	VS	46	2024-04-11 13:05:07.677247	2024-04-11 13:05:07.677247
545	Adamaoua	AD	47	2024-04-11 13:05:07.680806	2024-04-11 13:05:07.680806
546	Centre	CE	47	2024-04-11 13:05:07.684362	2024-04-11 13:05:07.684362
547	Far North	EN	47	2024-04-11 13:05:07.688045	2024-04-11 13:05:07.688045
548	East	ES	47	2024-04-11 13:05:07.691586	2024-04-11 13:05:07.691586
549	Littoral	LT	47	2024-04-11 13:05:07.694983	2024-04-11 13:05:07.694983
550	North	NO	47	2024-04-11 13:05:07.701272	2024-04-11 13:05:07.701272
551	North-West (Cameroon)	NW	47	2024-04-11 13:05:07.706995	2024-04-11 13:05:07.706995
552	West	OU	47	2024-04-11 13:05:07.71061	2024-04-11 13:05:07.71061
553	South	SU	47	2024-04-11 13:05:07.713965	2024-04-11 13:05:07.713965
554	South-West	SW	47	2024-04-11 13:05:07.717367	2024-04-11 13:05:07.717367
555	Anhui Sheng	AH	48	2024-04-11 13:05:07.720909	2024-04-11 13:05:07.720909
556	Beijing Shi	BJ	48	2024-04-11 13:05:07.724311	2024-04-11 13:05:07.724311
557	Chongqing Shi	CQ	48	2024-04-11 13:05:07.727798	2024-04-11 13:05:07.727798
558	Fujian Sheng	FJ	48	2024-04-11 13:05:07.731365	2024-04-11 13:05:07.731365
559	Guangdong Sheng	GD	48	2024-04-11 13:05:07.735813	2024-04-11 13:05:07.735813
560	Gansu Sheng	GS	48	2024-04-11 13:05:07.739902	2024-04-11 13:05:07.739902
561	Guangxi Zhuangzu Zizhiqu	GX	48	2024-04-11 13:05:07.743566	2024-04-11 13:05:07.743566
562	Guizhou Sheng	GZ	48	2024-04-11 13:05:07.747259	2024-04-11 13:05:07.747259
563	Henan Sheng	HA	48	2024-04-11 13:05:07.751116	2024-04-11 13:05:07.751116
564	Hubei Sheng	HB	48	2024-04-11 13:05:07.755167	2024-04-11 13:05:07.755167
565	Hebei Sheng	HE	48	2024-04-11 13:05:07.758994	2024-04-11 13:05:07.758994
566	Hainan Sheng	HI	48	2024-04-11 13:05:07.762702	2024-04-11 13:05:07.762702
567	Hong Kong SAR (see also separate country code entry under HK)	HK	48	2024-04-11 13:05:07.766477	2024-04-11 13:05:07.766477
568	Heilongjiang Sheng	HL	48	2024-04-11 13:05:07.770282	2024-04-11 13:05:07.770282
569	Hunan Sheng	HN	48	2024-04-11 13:05:07.773897	2024-04-11 13:05:07.773897
570	Jilin Sheng	JL	48	2024-04-11 13:05:07.777519	2024-04-11 13:05:07.777519
571	Jiangsu Sheng	JS	48	2024-04-11 13:05:07.781042	2024-04-11 13:05:07.781042
572	Jiangxi Sheng	JX	48	2024-04-11 13:05:07.784463	2024-04-11 13:05:07.784463
573	Liaoning Sheng	LN	48	2024-04-11 13:05:07.788101	2024-04-11 13:05:07.788101
574	Macao SAR (see also separate country code entry under MO)	MO	48	2024-04-11 13:05:07.791606	2024-04-11 13:05:07.791606
575	Nei Mongol Zizhiqu	NM	48	2024-04-11 13:05:07.795046	2024-04-11 13:05:07.795046
576	Ningxia Huizi Zizhiqu	NX	48	2024-04-11 13:05:07.798535	2024-04-11 13:05:07.798535
577	Qinghai Sheng	QH	48	2024-04-11 13:05:07.801958	2024-04-11 13:05:07.801958
578	Sichuan Sheng	SC	48	2024-04-11 13:05:07.805521	2024-04-11 13:05:07.805521
579	Shandong Sheng	SD	48	2024-04-11 13:05:07.809032	2024-04-11 13:05:07.809032
580	Shanghai Shi	SH	48	2024-04-11 13:05:07.81247	2024-04-11 13:05:07.81247
695	Saint David	03	60	2024-04-11 13:05:08.220157	2024-04-11 13:05:08.220157
581	Shaanxi Sheng	SN	48	2024-04-11 13:05:07.816017	2024-04-11 13:05:07.816017
582	Shanxi Sheng	SX	48	2024-04-11 13:05:07.819624	2024-04-11 13:05:07.819624
583	Tianjin Shi	TJ	48	2024-04-11 13:05:07.823087	2024-04-11 13:05:07.823087
584	Taiwan Sheng (see also separate country code entry under TW)	TW	48	2024-04-11 13:05:07.8266	2024-04-11 13:05:07.8266
585	Xinjiang Uygur Zizhiqu	XJ	48	2024-04-11 13:05:07.830157	2024-04-11 13:05:07.830157
586	Xizang Zizhiqu	XZ	48	2024-04-11 13:05:07.833517	2024-04-11 13:05:07.833517
587	Yunnan Sheng	YN	48	2024-04-11 13:05:07.836968	2024-04-11 13:05:07.836968
588	Zhejiang Sheng	ZJ	48	2024-04-11 13:05:07.840288	2024-04-11 13:05:07.840288
589	Amazonas	AMA	49	2024-04-11 13:05:07.84362	2024-04-11 13:05:07.84362
590	Antioquia	ANT	49	2024-04-11 13:05:07.846967	2024-04-11 13:05:07.846967
591	Arauca	ARA	49	2024-04-11 13:05:07.850302	2024-04-11 13:05:07.850302
592	Atlántico	ATL	49	2024-04-11 13:05:07.853623	2024-04-11 13:05:07.853623
593	Bolívar	BOL	49	2024-04-11 13:05:07.857111	2024-04-11 13:05:07.857111
594	Boyacá	BOY	49	2024-04-11 13:05:07.860494	2024-04-11 13:05:07.860494
595	Caldas	CAL	49	2024-04-11 13:05:07.863827	2024-04-11 13:05:07.863827
596	Caquetá	CAQ	49	2024-04-11 13:05:07.867172	2024-04-11 13:05:07.867172
597	Casanare	CAS	49	2024-04-11 13:05:07.870496	2024-04-11 13:05:07.870496
598	Cauca	CAU	49	2024-04-11 13:05:07.873893	2024-04-11 13:05:07.873893
599	Cesar	CES	49	2024-04-11 13:05:07.877294	2024-04-11 13:05:07.877294
600	Chocó	CHO	49	2024-04-11 13:05:07.880591	2024-04-11 13:05:07.880591
601	Córdoba	COR	49	2024-04-11 13:05:07.883937	2024-04-11 13:05:07.883937
602	Cundinamarca	CUN	49	2024-04-11 13:05:07.887285	2024-04-11 13:05:07.887285
603	Distrito Capital de Bogotá	DC	49	2024-04-11 13:05:07.890627	2024-04-11 13:05:07.890627
604	Guainía	GUA	49	2024-04-11 13:05:07.893969	2024-04-11 13:05:07.893969
605	Guaviare	GUV	49	2024-04-11 13:05:07.897382	2024-04-11 13:05:07.897382
606	Huila	HUI	49	2024-04-11 13:05:07.900977	2024-04-11 13:05:07.900977
607	La Guajira	LAG	49	2024-04-11 13:05:07.904468	2024-04-11 13:05:07.904468
608	Magdalena	MAG	49	2024-04-11 13:05:07.907851	2024-04-11 13:05:07.907851
609	Meta	MET	49	2024-04-11 13:05:07.91122	2024-04-11 13:05:07.91122
610	Nariño	NAR	49	2024-04-11 13:05:07.914636	2024-04-11 13:05:07.914636
611	Norte de Santander	NSA	49	2024-04-11 13:05:07.917995	2024-04-11 13:05:07.917995
612	Putumayo	PUT	49	2024-04-11 13:05:07.921359	2024-04-11 13:05:07.921359
613	Quindío	QUI	49	2024-04-11 13:05:07.925051	2024-04-11 13:05:07.925051
614	Risaralda	RIS	49	2024-04-11 13:05:07.928533	2024-04-11 13:05:07.928533
615	Santander	SAN	49	2024-04-11 13:05:07.931932	2024-04-11 13:05:07.931932
616	San Andrés, Providencia y Santa Catalina	SAP	49	2024-04-11 13:05:07.935327	2024-04-11 13:05:07.935327
617	Sucre	SUC	49	2024-04-11 13:05:07.93868	2024-04-11 13:05:07.93868
618	Tolima	TOL	49	2024-04-11 13:05:07.942044	2024-04-11 13:05:07.942044
619	Valle del Cauca	VAC	49	2024-04-11 13:05:07.945448	2024-04-11 13:05:07.945448
620	Vaupés	VAU	49	2024-04-11 13:05:07.950903	2024-04-11 13:05:07.950903
621	Vichada	VID	49	2024-04-11 13:05:07.954443	2024-04-11 13:05:07.954443
622	Alajuela	A	50	2024-04-11 13:05:07.957885	2024-04-11 13:05:07.957885
623	Cartago	C	50	2024-04-11 13:05:07.961271	2024-04-11 13:05:07.961271
624	Guanacaste	G	50	2024-04-11 13:05:07.964642	2024-04-11 13:05:07.964642
625	Heredia	H	50	2024-04-11 13:05:07.968061	2024-04-11 13:05:07.968061
626	Limón	L	50	2024-04-11 13:05:07.971494	2024-04-11 13:05:07.971494
627	Puntarenas	P	50	2024-04-11 13:05:07.974932	2024-04-11 13:05:07.974932
628	San José	SJ	50	2024-04-11 13:05:07.978379	2024-04-11 13:05:07.978379
629	Pinar del Rio	01	51	2024-04-11 13:05:07.981871	2024-04-11 13:05:07.981871
630	La Habana	02	51	2024-04-11 13:05:07.985278	2024-04-11 13:05:07.985278
631	Ciudad de La Habana	03	51	2024-04-11 13:05:07.988685	2024-04-11 13:05:07.988685
632	Matanzas	04	51	2024-04-11 13:05:07.992143	2024-04-11 13:05:07.992143
633	Villa Clara	05	51	2024-04-11 13:05:07.995639	2024-04-11 13:05:07.995639
634	Cienfuegos	06	51	2024-04-11 13:05:07.999201	2024-04-11 13:05:07.999201
635	Sancti Spíritus	07	51	2024-04-11 13:05:08.002721	2024-04-11 13:05:08.002721
636	Ciego de Ávila	08	51	2024-04-11 13:05:08.006167	2024-04-11 13:05:08.006167
637	Camagüey	09	51	2024-04-11 13:05:08.0097	2024-04-11 13:05:08.0097
638	Las Tunas	10	51	2024-04-11 13:05:08.016039	2024-04-11 13:05:08.016039
639	Holguín	11	51	2024-04-11 13:05:08.019749	2024-04-11 13:05:08.019749
640	Granma	12	51	2024-04-11 13:05:08.023513	2024-04-11 13:05:08.023513
641	Santiago de Cuba	13	51	2024-04-11 13:05:08.027133	2024-04-11 13:05:08.027133
642	Guantánamo	14	51	2024-04-11 13:05:08.03076	2024-04-11 13:05:08.03076
643	Isla de la Juventud	99	51	2024-04-11 13:05:08.034397	2024-04-11 13:05:08.034397
644	Ilhas de Barlavento	B	52	2024-04-11 13:05:08.038008	2024-04-11 13:05:08.038008
645	Ilhas de Sotavento	S	52	2024-04-11 13:05:08.04157	2024-04-11 13:05:08.04157
646	Lefkosía	01	55	2024-04-11 13:05:08.04514	2024-04-11 13:05:08.04514
647	Lemesós	02	55	2024-04-11 13:05:08.048666	2024-04-11 13:05:08.048666
648	Lárnaka	03	55	2024-04-11 13:05:08.052278	2024-04-11 13:05:08.052278
649	Ammóchostos	04	55	2024-04-11 13:05:08.056569	2024-04-11 13:05:08.056569
650	Páfos	05	55	2024-04-11 13:05:08.060415	2024-04-11 13:05:08.060415
651	Kerýneia	06	55	2024-04-11 13:05:08.064173	2024-04-11 13:05:08.064173
652	Praha, Hlavní mešto	10	56	2024-04-11 13:05:08.067892	2024-04-11 13:05:08.067892
653	Středočeský kraj	20	56	2024-04-11 13:05:08.071631	2024-04-11 13:05:08.071631
654	Jihočeský kraj	31	56	2024-04-11 13:05:08.075363	2024-04-11 13:05:08.075363
655	Plzeňský kraj	32	56	2024-04-11 13:05:08.079057	2024-04-11 13:05:08.079057
656	Karlovarský kraj	41	56	2024-04-11 13:05:08.082617	2024-04-11 13:05:08.082617
657	Ústecký kraj	42	56	2024-04-11 13:05:08.086129	2024-04-11 13:05:08.086129
658	Liberecký kraj	51	56	2024-04-11 13:05:08.089747	2024-04-11 13:05:08.089747
659	Královéhradecký kraj	52	56	2024-04-11 13:05:08.093304	2024-04-11 13:05:08.093304
660	Pardubický kraj	53	56	2024-04-11 13:05:08.096928	2024-04-11 13:05:08.096928
661	Kraj Vysočina	63	56	2024-04-11 13:05:08.100372	2024-04-11 13:05:08.100372
662	Jihomoravský kraj	64	56	2024-04-11 13:05:08.103744	2024-04-11 13:05:08.103744
663	Olomoucký kraj	71	56	2024-04-11 13:05:08.107228	2024-04-11 13:05:08.107228
664	Zlínský kraj	72	56	2024-04-11 13:05:08.11065	2024-04-11 13:05:08.11065
665	Moravskoslezský kraj	80	56	2024-04-11 13:05:08.113935	2024-04-11 13:05:08.113935
666	Brandenburg	BB	57	2024-04-11 13:05:08.117303	2024-04-11 13:05:08.117303
667	Berlin	BE	57	2024-04-11 13:05:08.120753	2024-04-11 13:05:08.120753
668	Baden-Württemberg	BW	57	2024-04-11 13:05:08.124122	2024-04-11 13:05:08.124122
669	Bayern	BY	57	2024-04-11 13:05:08.127424	2024-04-11 13:05:08.127424
670	Bremen	HB	57	2024-04-11 13:05:08.130724	2024-04-11 13:05:08.130724
671	Hessen	HE	57	2024-04-11 13:05:08.133999	2024-04-11 13:05:08.133999
672	Hamburg	HH	57	2024-04-11 13:05:08.137339	2024-04-11 13:05:08.137339
673	Mecklenburg-Vorpommern	MV	57	2024-04-11 13:05:08.140685	2024-04-11 13:05:08.140685
674	Niedersachsen	NI	57	2024-04-11 13:05:08.144046	2024-04-11 13:05:08.144046
675	Nordrhein-Westfalen	NW	57	2024-04-11 13:05:08.147518	2024-04-11 13:05:08.147518
676	Rheinland-Pfalz	RP	57	2024-04-11 13:05:08.150859	2024-04-11 13:05:08.150859
677	Schleswig-Holstein	SH	57	2024-04-11 13:05:08.154116	2024-04-11 13:05:08.154116
678	Saarland	SL	57	2024-04-11 13:05:08.157554	2024-04-11 13:05:08.157554
679	Sachsen	SN	57	2024-04-11 13:05:08.160907	2024-04-11 13:05:08.160907
680	Sachsen-Anhalt	ST	57	2024-04-11 13:05:08.16423	2024-04-11 13:05:08.16423
681	Thüringen	TH	57	2024-04-11 13:05:08.167609	2024-04-11 13:05:08.167609
682	Arta	AR	58	2024-04-11 13:05:08.171052	2024-04-11 13:05:08.171052
683	Ali Sabieh	AS	58	2024-04-11 13:05:08.174551	2024-04-11 13:05:08.174551
684	Dikhil	DI	58	2024-04-11 13:05:08.177981	2024-04-11 13:05:08.177981
685	Djibouti	DJ	58	2024-04-11 13:05:08.181282	2024-04-11 13:05:08.181282
686	Obock	OB	58	2024-04-11 13:05:08.187314	2024-04-11 13:05:08.187314
687	Tadjourah	TA	58	2024-04-11 13:05:08.191089	2024-04-11 13:05:08.191089
688	Nordjylland	81	59	2024-04-11 13:05:08.194668	2024-04-11 13:05:08.194668
689	Midtjylland	82	59	2024-04-11 13:05:08.198289	2024-04-11 13:05:08.198289
690	Syddanmark	83	59	2024-04-11 13:05:08.202738	2024-04-11 13:05:08.202738
691	Hovedstaden	84	59	2024-04-11 13:05:08.206295	2024-04-11 13:05:08.206295
692	Sjælland	85	59	2024-04-11 13:05:08.209776	2024-04-11 13:05:08.209776
693	Saint Peter	01	60	2024-04-11 13:05:08.213233	2024-04-11 13:05:08.213233
694	Saint Andrew	02	60	2024-04-11 13:05:08.216713	2024-04-11 13:05:08.216713
696	Saint George	04	60	2024-04-11 13:05:08.223655	2024-04-11 13:05:08.223655
697	Saint John	05	60	2024-04-11 13:05:08.227294	2024-04-11 13:05:08.227294
698	Saint Joseph	06	60	2024-04-11 13:05:08.23074	2024-04-11 13:05:08.23074
699	Saint Luke	07	60	2024-04-11 13:05:08.234235	2024-04-11 13:05:08.234235
700	Saint Mark	08	60	2024-04-11 13:05:08.237679	2024-04-11 13:05:08.237679
701	Saint Patrick	09	60	2024-04-11 13:05:08.241099	2024-04-11 13:05:08.241099
702	Saint Paul	10	60	2024-04-11 13:05:08.244543	2024-04-11 13:05:08.244543
703	Distrito Nacional (Santo Domingo)	01	61	2024-04-11 13:05:08.248147	2024-04-11 13:05:08.248147
704	Azua	02	61	2024-04-11 13:05:08.251654	2024-04-11 13:05:08.251654
705	Bahoruco	03	61	2024-04-11 13:05:08.255169	2024-04-11 13:05:08.255169
706	Barahona	04	61	2024-04-11 13:05:08.258685	2024-04-11 13:05:08.258685
707	Dajabón	05	61	2024-04-11 13:05:08.262121	2024-04-11 13:05:08.262121
708	Duarte	06	61	2024-04-11 13:05:08.265581	2024-04-11 13:05:08.265581
709	La Estrelleta [Elías Piña]	07	61	2024-04-11 13:05:08.269073	2024-04-11 13:05:08.269073
710	El Seybo [El Seibo]	08	61	2024-04-11 13:05:08.272504	2024-04-11 13:05:08.272504
711	Espaillat	09	61	2024-04-11 13:05:08.276171	2024-04-11 13:05:08.276171
712	Independencia	10	61	2024-04-11 13:05:08.279695	2024-04-11 13:05:08.279695
713	La Altagracia	11	61	2024-04-11 13:05:08.283201	2024-04-11 13:05:08.283201
714	La Romana	12	61	2024-04-11 13:05:08.286672	2024-04-11 13:05:08.286672
715	La Vega	13	61	2024-04-11 13:05:08.290074	2024-04-11 13:05:08.290074
716	María Trinidad Sánchez	14	61	2024-04-11 13:05:08.293621	2024-04-11 13:05:08.293621
717	Monte Cristi	15	61	2024-04-11 13:05:08.29734	2024-04-11 13:05:08.29734
718	Pedernales	16	61	2024-04-11 13:05:08.300858	2024-04-11 13:05:08.300858
719	Peravia	17	61	2024-04-11 13:05:08.304351	2024-04-11 13:05:08.304351
720	Puerto Plata	18	61	2024-04-11 13:05:08.308646	2024-04-11 13:05:08.308646
721	Salcedo	19	61	2024-04-11 13:05:08.312129	2024-04-11 13:05:08.312129
722	Samaná	20	61	2024-04-11 13:05:08.315671	2024-04-11 13:05:08.315671
723	San Cristóbal	21	61	2024-04-11 13:05:08.319159	2024-04-11 13:05:08.319159
724	San Juan	22	61	2024-04-11 13:05:08.322677	2024-04-11 13:05:08.322677
725	San Pedro de Macorís	23	61	2024-04-11 13:05:08.326235	2024-04-11 13:05:08.326235
726	Sánchez Ramírez	24	61	2024-04-11 13:05:08.329717	2024-04-11 13:05:08.329717
727	Santiago	25	61	2024-04-11 13:05:08.333288	2024-04-11 13:05:08.333288
728	Santiago Rodríguez	26	61	2024-04-11 13:05:08.336797	2024-04-11 13:05:08.336797
729	Valverde	27	61	2024-04-11 13:05:08.340247	2024-04-11 13:05:08.340247
730	Monseñor Nouel	28	61	2024-04-11 13:05:08.343759	2024-04-11 13:05:08.343759
731	Monte Plata	29	61	2024-04-11 13:05:08.347286	2024-04-11 13:05:08.347286
732	Hato Mayor	30	61	2024-04-11 13:05:08.351015	2024-04-11 13:05:08.351015
733	Adrar	01	62	2024-04-11 13:05:08.354538	2024-04-11 13:05:08.354538
734	Chlef	02	62	2024-04-11 13:05:08.358128	2024-04-11 13:05:08.358128
735	Laghouat	03	62	2024-04-11 13:05:08.361731	2024-04-11 13:05:08.361731
736	Oum el Bouaghi	04	62	2024-04-11 13:05:08.365254	2024-04-11 13:05:08.365254
737	Batna	05	62	2024-04-11 13:05:08.368695	2024-04-11 13:05:08.368695
738	Béjaïa	06	62	2024-04-11 13:05:08.372236	2024-04-11 13:05:08.372236
739	Biskra	07	62	2024-04-11 13:05:08.375812	2024-04-11 13:05:08.375812
740	Béchar	08	62	2024-04-11 13:05:08.379357	2024-04-11 13:05:08.379357
741	Blida	09	62	2024-04-11 13:05:08.382966	2024-04-11 13:05:08.382966
742	Bouira	10	62	2024-04-11 13:05:08.386475	2024-04-11 13:05:08.386475
743	Tamanghasset	11	62	2024-04-11 13:05:08.389994	2024-04-11 13:05:08.389994
744	Tébessa	12	62	2024-04-11 13:05:08.393649	2024-04-11 13:05:08.393649
745	Tlemcen	13	62	2024-04-11 13:05:08.397328	2024-04-11 13:05:08.397328
746	Tiaret	14	62	2024-04-11 13:05:08.400964	2024-04-11 13:05:08.400964
747	Tizi Ouzou	15	62	2024-04-11 13:05:08.404698	2024-04-11 13:05:08.404698
748	Alger	16	62	2024-04-11 13:05:08.411113	2024-04-11 13:05:08.411113
749	Djelfa	17	62	2024-04-11 13:05:08.414993	2024-04-11 13:05:08.414993
750	Jijel	18	62	2024-04-11 13:05:08.418726	2024-04-11 13:05:08.418726
751	Sétif	19	62	2024-04-11 13:05:08.422482	2024-04-11 13:05:08.422482
752	Saïda	20	62	2024-04-11 13:05:08.426156	2024-04-11 13:05:08.426156
753	Skikda	21	62	2024-04-11 13:05:08.429791	2024-04-11 13:05:08.429791
754	Sidi Bel Abbès	22	62	2024-04-11 13:05:08.433446	2024-04-11 13:05:08.433446
755	Annaba	23	62	2024-04-11 13:05:08.437226	2024-04-11 13:05:08.437226
756	Guelma	24	62	2024-04-11 13:05:08.440753	2024-04-11 13:05:08.440753
757	Constantine	25	62	2024-04-11 13:05:08.444229	2024-04-11 13:05:08.444229
758	Médéa	26	62	2024-04-11 13:05:08.447666	2024-04-11 13:05:08.447666
759	Mostaganem	27	62	2024-04-11 13:05:08.452148	2024-04-11 13:05:08.452148
760	Msila	28	62	2024-04-11 13:05:08.455722	2024-04-11 13:05:08.455722
761	Mascara	29	62	2024-04-11 13:05:08.459278	2024-04-11 13:05:08.459278
762	Ouargla	30	62	2024-04-11 13:05:08.462907	2024-04-11 13:05:08.462907
763	Oran	31	62	2024-04-11 13:05:08.466301	2024-04-11 13:05:08.466301
764	El Bayadh	32	62	2024-04-11 13:05:08.469783	2024-04-11 13:05:08.469783
765	Illizi	33	62	2024-04-11 13:05:08.47409	2024-04-11 13:05:08.47409
766	Bordj Bou Arréridj	34	62	2024-04-11 13:05:08.477594	2024-04-11 13:05:08.477594
767	Boumerdès	35	62	2024-04-11 13:05:08.48118	2024-04-11 13:05:08.48118
768	El Tarf	36	62	2024-04-11 13:05:08.484605	2024-04-11 13:05:08.484605
769	Tindouf	37	62	2024-04-11 13:05:08.488074	2024-04-11 13:05:08.488074
770	Tissemsilt	38	62	2024-04-11 13:05:08.491513	2024-04-11 13:05:08.491513
771	El Oued	39	62	2024-04-11 13:05:08.494951	2024-04-11 13:05:08.494951
772	Khenchela	40	62	2024-04-11 13:05:08.498514	2024-04-11 13:05:08.498514
773	Souk Ahras	41	62	2024-04-11 13:05:08.501986	2024-04-11 13:05:08.501986
774	Tipaza	42	62	2024-04-11 13:05:08.505392	2024-04-11 13:05:08.505392
775	Mila	43	62	2024-04-11 13:05:08.509158	2024-04-11 13:05:08.509158
776	Aïn Defla	44	62	2024-04-11 13:05:08.512602	2024-04-11 13:05:08.512602
777	Naama	45	62	2024-04-11 13:05:08.516777	2024-04-11 13:05:08.516777
778	Aïn Témouchent	46	62	2024-04-11 13:05:08.52022	2024-04-11 13:05:08.52022
779	Ghardaïa	47	62	2024-04-11 13:05:08.523874	2024-04-11 13:05:08.523874
780	Relizane	48	62	2024-04-11 13:05:08.52737	2024-04-11 13:05:08.52737
781	Azuay	A	63	2024-04-11 13:05:08.531686	2024-04-11 13:05:08.531686
782	Bolívar	B	63	2024-04-11 13:05:08.535136	2024-04-11 13:05:08.535136
783	Carchi	C	63	2024-04-11 13:05:08.53857	2024-04-11 13:05:08.53857
784	Orellana	D	63	2024-04-11 13:05:08.541972	2024-04-11 13:05:08.541972
785	Esmeraldas	E	63	2024-04-11 13:05:08.545397	2024-04-11 13:05:08.545397
786	Cañar	F	63	2024-04-11 13:05:08.548998	2024-04-11 13:05:08.548998
787	Guayas	G	63	2024-04-11 13:05:08.552567	2024-04-11 13:05:08.552567
788	Chimborazo	H	63	2024-04-11 13:05:08.556377	2024-04-11 13:05:08.556377
789	Imbabura	I	63	2024-04-11 13:05:08.559959	2024-04-11 13:05:08.559959
790	Loja	L	63	2024-04-11 13:05:08.56341	2024-04-11 13:05:08.56341
791	Manabí	M	63	2024-04-11 13:05:08.56693	2024-04-11 13:05:08.56693
792	Napo	N	63	2024-04-11 13:05:08.57041	2024-04-11 13:05:08.57041
793	El Oro	O	63	2024-04-11 13:05:08.573847	2024-04-11 13:05:08.573847
794	Pichincha	P	63	2024-04-11 13:05:08.577389	2024-04-11 13:05:08.577389
795	Los Ríos	R	63	2024-04-11 13:05:08.580818	2024-04-11 13:05:08.580818
796	Morona-Santiago	S	63	2024-04-11 13:05:08.584219	2024-04-11 13:05:08.584219
797	Santo Domingo de los Tsáchilas	SD	63	2024-04-11 13:05:08.587667	2024-04-11 13:05:08.587667
798	Santa Elena	SE	63	2024-04-11 13:05:08.591117	2024-04-11 13:05:08.591117
799	Tungurahua	T	63	2024-04-11 13:05:08.594556	2024-04-11 13:05:08.594556
800	Sucumbíos	U	63	2024-04-11 13:05:08.598097	2024-04-11 13:05:08.598097
801	Galápagos	W	63	2024-04-11 13:05:08.601587	2024-04-11 13:05:08.601587
802	Cotopaxi	X	63	2024-04-11 13:05:08.605074	2024-04-11 13:05:08.605074
803	Pastaza	Y	63	2024-04-11 13:05:08.608515	2024-04-11 13:05:08.608515
804	Zamora-Chinchipe	Z	63	2024-04-11 13:05:08.61197	2024-04-11 13:05:08.61197
805	Harjumaa	37	64	2024-04-11 13:05:08.615463	2024-04-11 13:05:08.615463
806	Hiiumaa	39	64	2024-04-11 13:05:08.618972	2024-04-11 13:05:08.618972
807	Ida-Virumaa	44	64	2024-04-11 13:05:08.62245	2024-04-11 13:05:08.62245
808	Jõgevamaa	49	64	2024-04-11 13:05:08.626022	2024-04-11 13:05:08.626022
809	Järvamaa	51	64	2024-04-11 13:05:08.629522	2024-04-11 13:05:08.629522
810	Läänemaa	57	64	2024-04-11 13:05:08.632949	2024-04-11 13:05:08.632949
811	Lääne-Virumaa	59	64	2024-04-11 13:05:08.636739	2024-04-11 13:05:08.636739
812	Põlvamaa	65	64	2024-04-11 13:05:08.640323	2024-04-11 13:05:08.640323
813	Pärnumaa	67	64	2024-04-11 13:05:08.643857	2024-04-11 13:05:08.643857
814	Raplamaa	70	64	2024-04-11 13:05:08.647692	2024-04-11 13:05:08.647692
815	Saaremaa	74	64	2024-04-11 13:05:08.651672	2024-04-11 13:05:08.651672
816	Tartumaa	78	64	2024-04-11 13:05:08.655605	2024-04-11 13:05:08.655605
817	Valgamaa	82	64	2024-04-11 13:05:08.659574	2024-04-11 13:05:08.659574
818	Viljandimaa	84	64	2024-04-11 13:05:08.663412	2024-04-11 13:05:08.663412
819	Võrumaa	86	64	2024-04-11 13:05:08.667164	2024-04-11 13:05:08.667164
820	Al Iskandarīyah	ALX	65	2024-04-11 13:05:08.671023	2024-04-11 13:05:08.671023
821	Aswān	ASN	65	2024-04-11 13:05:08.675137	2024-04-11 13:05:08.675137
822	Asyūt	AST	65	2024-04-11 13:05:08.679023	2024-04-11 13:05:08.679023
823	Al Bahr al Ahmar	BA	65	2024-04-11 13:05:08.682807	2024-04-11 13:05:08.682807
824	Al Buhayrah	BH	65	2024-04-11 13:05:08.686588	2024-04-11 13:05:08.686588
825	Banī Suwayf	BNS	65	2024-04-11 13:05:08.690291	2024-04-11 13:05:08.690291
826	Al Qāhirah	C	65	2024-04-11 13:05:08.694316	2024-04-11 13:05:08.694316
827	Ad Daqahlīyah	DK	65	2024-04-11 13:05:08.698176	2024-04-11 13:05:08.698176
828	Dumyāt	DT	65	2024-04-11 13:05:08.704055	2024-04-11 13:05:08.704055
829	Al Fayyūm	FYM	65	2024-04-11 13:05:08.707957	2024-04-11 13:05:08.707957
830	Al Gharbīyah	GH	65	2024-04-11 13:05:08.711837	2024-04-11 13:05:08.711837
831	Al Jīzah	GZ	65	2024-04-11 13:05:08.715811	2024-04-11 13:05:08.715811
832	Ḩulwān	HU	65	2024-04-11 13:05:08.719707	2024-04-11 13:05:08.719707
833	Al Ismā`īlīyah	IS	65	2024-04-11 13:05:08.723651	2024-04-11 13:05:08.723651
834	Janūb Sīnā'	JS	65	2024-04-11 13:05:08.727556	2024-04-11 13:05:08.727556
835	Al Qalyūbīyah	KB	65	2024-04-11 13:05:08.732111	2024-04-11 13:05:08.732111
836	Kafr ash Shaykh	KFS	65	2024-04-11 13:05:08.736808	2024-04-11 13:05:08.736808
837	Qinā	KN	65	2024-04-11 13:05:08.740694	2024-04-11 13:05:08.740694
838	Al Minyā	MN	65	2024-04-11 13:05:08.744648	2024-04-11 13:05:08.744648
839	Al Minūfīyah	MNF	65	2024-04-11 13:05:08.748566	2024-04-11 13:05:08.748566
840	Matrūh	MT	65	2024-04-11 13:05:08.752506	2024-04-11 13:05:08.752506
841	Būr Sa`īd	PTS	65	2024-04-11 13:05:08.756309	2024-04-11 13:05:08.756309
842	Sūhāj	SHG	65	2024-04-11 13:05:08.759959	2024-04-11 13:05:08.759959
843	Ash Sharqīyah	SHR	65	2024-04-11 13:05:08.763686	2024-04-11 13:05:08.763686
844	Shamal Sīnā'	SIN	65	2024-04-11 13:05:08.767321	2024-04-11 13:05:08.767321
845	As Sādis min Uktūbar	SU	65	2024-04-11 13:05:08.770995	2024-04-11 13:05:08.770995
846	As Suways	SUZ	65	2024-04-11 13:05:08.774524	2024-04-11 13:05:08.774524
847	Al Wādī al Jadīd	WAD	65	2024-04-11 13:05:08.778043	2024-04-11 13:05:08.778043
848	Ansabā	AN	67	2024-04-11 13:05:08.78166	2024-04-11 13:05:08.78166
849	Janūbī al Baḩrī al Aḩmar	DK	67	2024-04-11 13:05:08.785138	2024-04-11 13:05:08.785138
850	Al Janūbī	DU	67	2024-04-11 13:05:08.788552	2024-04-11 13:05:08.788552
851	Qāsh-Barkah	GB	67	2024-04-11 13:05:08.792068	2024-04-11 13:05:08.792068
852	Al Awsaţ	MA	67	2024-04-11 13:05:08.795622	2024-04-11 13:05:08.795622
853	Shimālī al Baḩrī al Aḩmar	SK	67	2024-04-11 13:05:08.799256	2024-04-11 13:05:08.799256
854	Andalucía	AN	68	2024-04-11 13:05:08.802958	2024-04-11 13:05:08.802958
855	Aragón	AR	68	2024-04-11 13:05:08.806471	2024-04-11 13:05:08.806471
856	Asturias, Principado de	AS	68	2024-04-11 13:05:08.810035	2024-04-11 13:05:08.810035
857	Cantabria	CB	68	2024-04-11 13:05:08.816391	2024-04-11 13:05:08.816391
858	Ceuta	CE	68	2024-04-11 13:05:08.820463	2024-04-11 13:05:08.820463
859	Castilla y León	CL	68	2024-04-11 13:05:08.824401	2024-04-11 13:05:08.824401
860	Castilla-La Mancha	CM	68	2024-04-11 13:05:08.828258	2024-04-11 13:05:08.828258
861	Canarias	CN	68	2024-04-11 13:05:08.832012	2024-04-11 13:05:08.832012
862	Catalunya	CT	68	2024-04-11 13:05:08.835807	2024-04-11 13:05:08.835807
863	Extremadura	EX	68	2024-04-11 13:05:08.839566	2024-04-11 13:05:08.839566
864	Galicia	GA	68	2024-04-11 13:05:08.84332	2024-04-11 13:05:08.84332
865	Illes Balears	IB	68	2024-04-11 13:05:08.847674	2024-04-11 13:05:08.847674
866	Murcia, Región de	MC	68	2024-04-11 13:05:08.851768	2024-04-11 13:05:08.851768
867	Madrid, Comunidad de	MD	68	2024-04-11 13:05:08.855579	2024-04-11 13:05:08.855579
868	Melilla	ML	68	2024-04-11 13:05:08.859312	2024-04-11 13:05:08.859312
869	Navarra, Comunidad Foral de / Nafarroako Foru Komunitatea	NC	68	2024-04-11 13:05:08.862975	2024-04-11 13:05:08.862975
870	País Vasco / Euskal Herria	PV	68	2024-04-11 13:05:08.86651	2024-04-11 13:05:08.86651
871	La Rioja	RI	68	2024-04-11 13:05:08.870077	2024-04-11 13:05:08.870077
872	Valenciana, Comunidad / Valenciana, Comunitat	VC	68	2024-04-11 13:05:08.873631	2024-04-11 13:05:08.873631
873	Ādīs Ābeba	AA	69	2024-04-11 13:05:08.877128	2024-04-11 13:05:08.877128
874	Āfar	AF	69	2024-04-11 13:05:08.880689	2024-04-11 13:05:08.880689
875	Āmara	AM	69	2024-04-11 13:05:08.884154	2024-04-11 13:05:08.884154
876	Bīnshangul Gumuz	BE	69	2024-04-11 13:05:08.887546	2024-04-11 13:05:08.887546
877	Dirē Dawa	DD	69	2024-04-11 13:05:08.891011	2024-04-11 13:05:08.891011
878	Gambēla Hizboch	GA	69	2024-04-11 13:05:08.894409	2024-04-11 13:05:08.894409
879	Hārerī Hizb	HA	69	2024-04-11 13:05:08.897923	2024-04-11 13:05:08.897923
880	Oromīya	OR	69	2024-04-11 13:05:08.901516	2024-04-11 13:05:08.901516
881	YeDebub Bihēroch Bihēreseboch na Hizboch	SN	69	2024-04-11 13:05:08.90506	2024-04-11 13:05:08.90506
882	Sumalē	SO	69	2024-04-11 13:05:08.908475	2024-04-11 13:05:08.908475
883	Tigray	TI	69	2024-04-11 13:05:08.912023	2024-04-11 13:05:08.912023
884	Ahvenanmaan maakunta	01	70	2024-04-11 13:05:08.9157	2024-04-11 13:05:08.9157
885	Etelä-Karjala	02	70	2024-04-11 13:05:08.919415	2024-04-11 13:05:08.919415
886	Etelä-Pohjanmaa	03	70	2024-04-11 13:05:08.92314	2024-04-11 13:05:08.92314
887	Etelä-Savo	04	70	2024-04-11 13:05:08.926773	2024-04-11 13:05:08.926773
888	Kainuu	05	70	2024-04-11 13:05:08.930371	2024-04-11 13:05:08.930371
889	Kanta-Häme	06	70	2024-04-11 13:05:08.933902	2024-04-11 13:05:08.933902
890	Keski-Pohjanmaa	07	70	2024-04-11 13:05:08.937455	2024-04-11 13:05:08.937455
891	Keski-Suomi	08	70	2024-04-11 13:05:08.94092	2024-04-11 13:05:08.94092
892	Kymenlaakso	09	70	2024-04-11 13:05:08.944329	2024-04-11 13:05:08.944329
893	Lappi	10	70	2024-04-11 13:05:08.947882	2024-04-11 13:05:08.947882
894	Pirkanmaa	11	70	2024-04-11 13:05:08.953026	2024-04-11 13:05:08.953026
895	Pohjanmaa	12	70	2024-04-11 13:05:08.956635	2024-04-11 13:05:08.956635
896	Pohjois-Karjala	13	70	2024-04-11 13:05:08.960132	2024-04-11 13:05:08.960132
897	Pohjois-Pohjanmaa	14	70	2024-04-11 13:05:08.963579	2024-04-11 13:05:08.963579
898	Pohjois-Savo	15	70	2024-04-11 13:05:08.967108	2024-04-11 13:05:08.967108
899	Päijät-Häme	16	70	2024-04-11 13:05:08.97059	2024-04-11 13:05:08.97059
900	Satakunta	17	70	2024-04-11 13:05:08.974074	2024-04-11 13:05:08.974074
901	Uusimaa	18	70	2024-04-11 13:05:08.977803	2024-04-11 13:05:08.977803
902	Varsinais-Suomi	19	70	2024-04-11 13:05:08.981327	2024-04-11 13:05:08.981327
903	Central	C	71	2024-04-11 13:05:08.984993	2024-04-11 13:05:08.984993
904	Eastern	E	71	2024-04-11 13:05:08.988494	2024-04-11 13:05:08.988494
905	Northern	N	71	2024-04-11 13:05:08.991995	2024-04-11 13:05:08.991995
906	Rotuma	R	71	2024-04-11 13:05:08.995534	2024-04-11 13:05:08.995534
907	Western	W	71	2024-04-11 13:05:08.99915	2024-04-11 13:05:08.99915
908	Kosrae	KSA	73	2024-04-11 13:05:09.002907	2024-04-11 13:05:09.002907
909	Pohnpei	PNI	73	2024-04-11 13:05:09.006388	2024-04-11 13:05:09.006388
910	Chuuk	TRK	73	2024-04-11 13:05:09.009802	2024-04-11 13:05:09.009802
911	Yap	YAP	73	2024-04-11 13:05:09.013276	2024-04-11 13:05:09.013276
912	Auvergne-Rhône-Alpes	ARA	75	2024-04-11 13:05:09.016906	2024-04-11 13:05:09.016906
913	Bourgogne-Franche-Comté	BFC	75	2024-04-11 13:05:09.020405	2024-04-11 13:05:09.020405
914	Saint-Barthélemy	BL	75	2024-04-11 13:05:09.023986	2024-04-11 13:05:09.023986
915	Bretagne	BRE	75	2024-04-11 13:05:09.027509	2024-04-11 13:05:09.027509
916	Corse	COR	75	2024-04-11 13:05:09.031091	2024-04-11 13:05:09.031091
917	Clipperton	CP	75	2024-04-11 13:05:09.03463	2024-04-11 13:05:09.03463
918	Centre-Val de Loire	CVL	75	2024-04-11 13:05:09.038137	2024-04-11 13:05:09.038137
919	Grand-Est	GES	75	2024-04-11 13:05:09.041587	2024-04-11 13:05:09.041587
920	Guyane (française)	GF	75	2024-04-11 13:05:09.045166	2024-04-11 13:05:09.045166
921	Guadeloupe	GUA	75	2024-04-11 13:05:09.048689	2024-04-11 13:05:09.048689
922	Hauts-de-France	HDF	75	2024-04-11 13:05:09.052224	2024-04-11 13:05:09.052224
923	Île-de-France	IDF	75	2024-04-11 13:05:09.056106	2024-04-11 13:05:09.056106
924	La Réunion	LRE	75	2024-04-11 13:05:09.05967	2024-04-11 13:05:09.05967
925	Mayotte	MAY	75	2024-04-11 13:05:09.06317	2024-04-11 13:05:09.06317
926	Saint-Martin	MF	75	2024-04-11 13:05:09.066814	2024-04-11 13:05:09.066814
927	Martinique	MQ	75	2024-04-11 13:05:09.07028	2024-04-11 13:05:09.07028
928	Nouvelle-Aquitaine	NAQ	75	2024-04-11 13:05:09.073821	2024-04-11 13:05:09.073821
929	Nouvelle-Calédonie	NC	75	2024-04-11 13:05:09.077328	2024-04-11 13:05:09.077328
930	Normandie	NOR	75	2024-04-11 13:05:09.080809	2024-04-11 13:05:09.080809
931	Occitanie	OCC	75	2024-04-11 13:05:09.084389	2024-04-11 13:05:09.084389
932	Provence-Alpes-Côte-d’Azur	PAC	75	2024-04-11 13:05:09.087975	2024-04-11 13:05:09.087975
933	Pays-de-la-Loire	PDL	75	2024-04-11 13:05:09.091457	2024-04-11 13:05:09.091457
934	Polynésie française	PF	75	2024-04-11 13:05:09.095004	2024-04-11 13:05:09.095004
935	Saint-Pierre-et-Miquelon	PM	75	2024-04-11 13:05:09.09854	2024-04-11 13:05:09.09854
936	Terres australes françaises	TF	75	2024-04-11 13:05:09.102069	2024-04-11 13:05:09.102069
937	Wallis-et-Futuna	WF	75	2024-04-11 13:05:09.105595	2024-04-11 13:05:09.105595
938	Estuaire	1	76	2024-04-11 13:05:09.109185	2024-04-11 13:05:09.109185
939	Haut-Ogooué	2	76	2024-04-11 13:05:09.112725	2024-04-11 13:05:09.112725
940	Moyen-Ogooué	3	76	2024-04-11 13:05:09.116283	2024-04-11 13:05:09.116283
941	Ngounié	4	76	2024-04-11 13:05:09.119808	2024-04-11 13:05:09.119808
942	Nyanga	5	76	2024-04-11 13:05:09.123374	2024-04-11 13:05:09.123374
943	Ogooué-Ivindo	6	76	2024-04-11 13:05:09.126939	2024-04-11 13:05:09.126939
944	Ogooué-Lolo	7	76	2024-04-11 13:05:09.130388	2024-04-11 13:05:09.130388
945	Ogooué-Maritime	8	76	2024-04-11 13:05:09.133998	2024-04-11 13:05:09.133998
946	Woleu-Ntem	9	76	2024-04-11 13:05:09.137514	2024-04-11 13:05:09.137514
947	England and Wales	EAW	77	2024-04-11 13:05:09.141158	2024-04-11 13:05:09.141158
948	England	ENG	77	2024-04-11 13:05:09.144676	2024-04-11 13:05:09.144676
949	Great Britain	GBN	77	2024-04-11 13:05:09.148194	2024-04-11 13:05:09.148194
950	Northern Ireland	NIR	77	2024-04-11 13:05:09.151792	2024-04-11 13:05:09.151792
951	Scotland	SCT	77	2024-04-11 13:05:09.155345	2024-04-11 13:05:09.155345
952	United Kingdom	UKM	77	2024-04-11 13:05:09.158932	2024-04-11 13:05:09.158932
953	Wales; Cymru	WLS	77	2024-04-11 13:05:09.162422	2024-04-11 13:05:09.162422
954	Saint Andrew	01	78	2024-04-11 13:05:09.165966	2024-04-11 13:05:09.165966
955	Saint David	02	78	2024-04-11 13:05:09.170023	2024-04-11 13:05:09.170023
956	Saint George	03	78	2024-04-11 13:05:09.173589	2024-04-11 13:05:09.173589
957	Saint John	04	78	2024-04-11 13:05:09.177171	2024-04-11 13:05:09.177171
958	Saint Mark	05	78	2024-04-11 13:05:09.180825	2024-04-11 13:05:09.180825
959	Saint Patrick	06	78	2024-04-11 13:05:09.184455	2024-04-11 13:05:09.184455
960	Southern Grenadine Islands	10	78	2024-04-11 13:05:09.190951	2024-04-11 13:05:09.190951
961	Abkhazia	AB	79	2024-04-11 13:05:09.194959	2024-04-11 13:05:09.194959
962	Ajaria	AJ	79	2024-04-11 13:05:09.19881	2024-04-11 13:05:09.19881
963	Guria	GU	79	2024-04-11 13:05:09.20315	2024-04-11 13:05:09.20315
964	Imeret’i	IM	79	2024-04-11 13:05:09.206922	2024-04-11 13:05:09.206922
965	Kakhet’i	KA	79	2024-04-11 13:05:09.210579	2024-04-11 13:05:09.210579
966	K’vemo K’art’li	KK	79	2024-04-11 13:05:09.214392	2024-04-11 13:05:09.214392
967	Mts’khet’a-Mt’ianet’i	MM	79	2024-04-11 13:05:09.220799	2024-04-11 13:05:09.220799
968	Racha-Lech’khumi-K’vemo Svanet’i	RL	79	2024-04-11 13:05:09.22456	2024-04-11 13:05:09.22456
969	Samts’khe-Javakhet’i	SJ	79	2024-04-11 13:05:09.228221	2024-04-11 13:05:09.228221
970	Shida K’art’li	SK	79	2024-04-11 13:05:09.231929	2024-04-11 13:05:09.231929
971	Samegrelo-Zemo Svanet’i	SZ	79	2024-04-11 13:05:09.235566	2024-04-11 13:05:09.235566
972	T’bilisi	TB	79	2024-04-11 13:05:09.239157	2024-04-11 13:05:09.239157
973	Greater Accra	AA	82	2024-04-11 13:05:09.242886	2024-04-11 13:05:09.242886
974	Ashanti	AH	82	2024-04-11 13:05:09.246476	2024-04-11 13:05:09.246476
975	Brong-Ahafo	BA	82	2024-04-11 13:05:09.250546	2024-04-11 13:05:09.250546
976	Central	CP	82	2024-04-11 13:05:09.254332	2024-04-11 13:05:09.254332
977	Eastern	EP	82	2024-04-11 13:05:09.258394	2024-04-11 13:05:09.258394
978	Northern	NP	82	2024-04-11 13:05:09.262167	2024-04-11 13:05:09.262167
979	Volta	TV	82	2024-04-11 13:05:09.265786	2024-04-11 13:05:09.265786
980	Upper East	UE	82	2024-04-11 13:05:09.269512	2024-04-11 13:05:09.269512
981	Upper West	UW	82	2024-04-11 13:05:09.273989	2024-04-11 13:05:09.273989
982	Western	WP	82	2024-04-11 13:05:09.277696	2024-04-11 13:05:09.277696
983	Kommune Kujalleq	KU	84	2024-04-11 13:05:09.281508	2024-04-11 13:05:09.281508
984	Qaasuitsup Kommunia	QA	84	2024-04-11 13:05:09.285199	2024-04-11 13:05:09.285199
985	Qeqqata Kommunia	QE	84	2024-04-11 13:05:09.288871	2024-04-11 13:05:09.288871
986	Kommuneqarfik Sermersooq	SM	84	2024-04-11 13:05:09.292428	2024-04-11 13:05:09.292428
987	Banjul	B	85	2024-04-11 13:05:09.296049	2024-04-11 13:05:09.296049
988	Lower River	L	85	2024-04-11 13:05:09.299757	2024-04-11 13:05:09.299757
989	Central River	M	85	2024-04-11 13:05:09.303523	2024-04-11 13:05:09.303523
990	North Bank	N	85	2024-04-11 13:05:09.307215	2024-04-11 13:05:09.307215
991	Upper River	U	85	2024-04-11 13:05:09.31092	2024-04-11 13:05:09.31092
992	Western	W	85	2024-04-11 13:05:09.314556	2024-04-11 13:05:09.314556
993	Boké	B	86	2024-04-11 13:05:09.31817	2024-04-11 13:05:09.31817
994	Conakry	C	86	2024-04-11 13:05:09.321674	2024-04-11 13:05:09.321674
995	Kindia	D	86	2024-04-11 13:05:09.325067	2024-04-11 13:05:09.325067
996	Faranah	F	86	2024-04-11 13:05:09.328482	2024-04-11 13:05:09.328482
997	Kankan	K	86	2024-04-11 13:05:09.331819	2024-04-11 13:05:09.331819
998	Labé	L	86	2024-04-11 13:05:09.335216	2024-04-11 13:05:09.335216
999	Mamou	M	86	2024-04-11 13:05:09.33881	2024-04-11 13:05:09.33881
1000	Nzérékoré	N	86	2024-04-11 13:05:09.342237	2024-04-11 13:05:09.342237
1001	Región Continental	C	88	2024-04-11 13:05:09.345688	2024-04-11 13:05:09.345688
1002	Región Insular	I	88	2024-04-11 13:05:09.349207	2024-04-11 13:05:09.349207
1003	Agio Oros	69	89	2024-04-11 13:05:09.35278	2024-04-11 13:05:09.35278
1004	Anatoliki Makedonia kai Thraki	A	89	2024-04-11 13:05:09.356236	2024-04-11 13:05:09.356236
1005	Kentriki Makedonia	B	89	2024-04-11 13:05:09.359831	2024-04-11 13:05:09.359831
1006	Dytiki Makedonia	C	89	2024-04-11 13:05:09.3632	2024-04-11 13:05:09.3632
1007	Ipeiros	D	89	2024-04-11 13:05:09.366709	2024-04-11 13:05:09.366709
1008	Thessalia	E	89	2024-04-11 13:05:09.370253	2024-04-11 13:05:09.370253
1009	Ionia Nisia	F	89	2024-04-11 13:05:09.373791	2024-04-11 13:05:09.373791
1010	Dytiki Ellada	G	89	2024-04-11 13:05:09.3773	2024-04-11 13:05:09.3773
1011	Sterea Ellada	H	89	2024-04-11 13:05:09.380731	2024-04-11 13:05:09.380731
1012	Attiki	I	89	2024-04-11 13:05:09.384031	2024-04-11 13:05:09.384031
1013	Peloponnisos	J	89	2024-04-11 13:05:09.387551	2024-04-11 13:05:09.387551
1014	Voreio Aigaio	K	89	2024-04-11 13:05:09.390903	2024-04-11 13:05:09.390903
1015	Notio Aigaio	L	89	2024-04-11 13:05:09.394265	2024-04-11 13:05:09.394265
1016	Kriti	M	89	2024-04-11 13:05:09.397801	2024-04-11 13:05:09.397801
1017	Alta Verapaz	AV	91	2024-04-11 13:05:09.401335	2024-04-11 13:05:09.401335
1018	Baja Verapaz	BV	91	2024-04-11 13:05:09.404797	2024-04-11 13:05:09.404797
1019	Chimaltenango	CM	91	2024-04-11 13:05:09.408272	2024-04-11 13:05:09.408272
1020	Chiquimula	CQ	91	2024-04-11 13:05:09.411845	2024-04-11 13:05:09.411845
1021	Escuintla	ES	91	2024-04-11 13:05:09.415411	2024-04-11 13:05:09.415411
1022	Guatemala	GU	91	2024-04-11 13:05:09.418823	2024-04-11 13:05:09.418823
1023	Huehuetenango	HU	91	2024-04-11 13:05:09.422364	2024-04-11 13:05:09.422364
1024	Izabal	IZ	91	2024-04-11 13:05:09.42587	2024-04-11 13:05:09.42587
1025	Jalapa	JA	91	2024-04-11 13:05:09.429327	2024-04-11 13:05:09.429327
1026	Jutiapa	JU	91	2024-04-11 13:05:09.432982	2024-04-11 13:05:09.432982
1027	Petén	PE	91	2024-04-11 13:05:09.436693	2024-04-11 13:05:09.436693
1028	El Progreso	PR	91	2024-04-11 13:05:09.440103	2024-04-11 13:05:09.440103
1029	Quiché	QC	91	2024-04-11 13:05:09.443522	2024-04-11 13:05:09.443522
1030	Quetzaltenango	QZ	91	2024-04-11 13:05:09.446909	2024-04-11 13:05:09.446909
1031	Retalhuleu	RE	91	2024-04-11 13:05:09.45064	2024-04-11 13:05:09.45064
1032	Sacatepéquez	SA	91	2024-04-11 13:05:09.456077	2024-04-11 13:05:09.456077
1033	San Marcos	SM	91	2024-04-11 13:05:09.459445	2024-04-11 13:05:09.459445
1034	Sololá	SO	91	2024-04-11 13:05:09.462867	2024-04-11 13:05:09.462867
1035	Santa Rosa	SR	91	2024-04-11 13:05:09.466391	2024-04-11 13:05:09.466391
1036	Suchitepéquez	SU	91	2024-04-11 13:05:09.469915	2024-04-11 13:05:09.469915
1037	Totonicapán	TO	91	2024-04-11 13:05:09.473383	2024-04-11 13:05:09.473383
1038	Zacapa	ZA	91	2024-04-11 13:05:09.476849	2024-04-11 13:05:09.476849
1039	Bissau	BS	93	2024-04-11 13:05:09.480417	2024-04-11 13:05:09.480417
1040	Leste	L	93	2024-04-11 13:05:09.484045	2024-04-11 13:05:09.484045
1041	Norte	N	93	2024-04-11 13:05:09.48753	2024-04-11 13:05:09.48753
1042	Sul	S	93	2024-04-11 13:05:09.490951	2024-04-11 13:05:09.490951
1043	Barima-Waini	BA	94	2024-04-11 13:05:09.49453	2024-04-11 13:05:09.49453
1044	Cuyuni-Mazaruni	CU	94	2024-04-11 13:05:09.497989	2024-04-11 13:05:09.497989
1045	Demerara-Mahaica	DE	94	2024-04-11 13:05:09.501595	2024-04-11 13:05:09.501595
1046	East Berbice-Corentyne	EB	94	2024-04-11 13:05:09.505084	2024-04-11 13:05:09.505084
1047	Essequibo Islands-West Demerara	ES	94	2024-04-11 13:05:09.508519	2024-04-11 13:05:09.508519
1048	Mahaica-Berbice	MA	94	2024-04-11 13:05:09.511922	2024-04-11 13:05:09.511922
1049	Pomeroon-Supenaam	PM	94	2024-04-11 13:05:09.515468	2024-04-11 13:05:09.515468
1050	Potaro-Siparuni	PT	94	2024-04-11 13:05:09.518923	2024-04-11 13:05:09.518923
1051	Upper Demerara-Berbice	UD	94	2024-04-11 13:05:09.522622	2024-04-11 13:05:09.522622
1052	Upper Takutu-Upper Essequibo	UT	94	2024-04-11 13:05:09.526112	2024-04-11 13:05:09.526112
1053	Atlántida	AT	97	2024-04-11 13:05:09.529843	2024-04-11 13:05:09.529843
1054	Choluteca	CH	97	2024-04-11 13:05:09.533571	2024-04-11 13:05:09.533571
1055	Colón	CL	97	2024-04-11 13:05:09.537046	2024-04-11 13:05:09.537046
1056	Comayagua	CM	97	2024-04-11 13:05:09.540491	2024-04-11 13:05:09.540491
1057	Copán	CP	97	2024-04-11 13:05:09.543983	2024-04-11 13:05:09.543983
1058	Cortés	CR	97	2024-04-11 13:05:09.547543	2024-04-11 13:05:09.547543
1059	El Paraíso	EP	97	2024-04-11 13:05:09.551143	2024-04-11 13:05:09.551143
1060	Francisco Morazán	FM	97	2024-04-11 13:05:09.555238	2024-04-11 13:05:09.555238
1061	Gracias a Dios	GD	97	2024-04-11 13:05:09.559119	2024-04-11 13:05:09.559119
1062	Islas de la Bahía	IB	97	2024-04-11 13:05:09.562934	2024-04-11 13:05:09.562934
1063	Intibucá	IN	97	2024-04-11 13:05:09.566644	2024-04-11 13:05:09.566644
1064	Lempira	LE	97	2024-04-11 13:05:09.570301	2024-04-11 13:05:09.570301
1065	La Paz	LP	97	2024-04-11 13:05:09.573973	2024-04-11 13:05:09.573973
1066	Ocotepeque	OC	97	2024-04-11 13:05:09.577593	2024-04-11 13:05:09.577593
1067	Olancho	OL	97	2024-04-11 13:05:09.581158	2024-04-11 13:05:09.581158
1068	Santa Bárbara	SB	97	2024-04-11 13:05:09.584766	2024-04-11 13:05:09.584766
1069	Valle	VA	97	2024-04-11 13:05:09.58848	2024-04-11 13:05:09.58848
1070	Yoro	YO	97	2024-04-11 13:05:09.592103	2024-04-11 13:05:09.592103
1071	Zagrebačka županija	01	98	2024-04-11 13:05:09.595792	2024-04-11 13:05:09.595792
1072	Krapinsko-zagorska županija	02	98	2024-04-11 13:05:09.59956	2024-04-11 13:05:09.59956
1073	Sisačko-moslavačka županija	03	98	2024-04-11 13:05:09.603271	2024-04-11 13:05:09.603271
1074	Karlovačka županija	04	98	2024-04-11 13:05:09.606931	2024-04-11 13:05:09.606931
1075	Varaždinska županija	05	98	2024-04-11 13:05:09.610641	2024-04-11 13:05:09.610641
1076	Koprivničko-križevačka županija	06	98	2024-04-11 13:05:09.616866	2024-04-11 13:05:09.616866
1077	Bjelovarsko-bilogorska županija	07	98	2024-04-11 13:05:09.620882	2024-04-11 13:05:09.620882
1078	Primorsko-goranska županija	08	98	2024-04-11 13:05:09.624745	2024-04-11 13:05:09.624745
1079	Ličko-senjska županija	09	98	2024-04-11 13:05:09.628554	2024-04-11 13:05:09.628554
1080	Virovitičko-podravska županija	10	98	2024-04-11 13:05:09.632245	2024-04-11 13:05:09.632245
1081	Požeško-slavonska županija	11	98	2024-04-11 13:05:09.635905	2024-04-11 13:05:09.635905
1082	Brodsko-posavska županija	12	98	2024-04-11 13:05:09.639501	2024-04-11 13:05:09.639501
1083	Zadarska županija	13	98	2024-04-11 13:05:09.643007	2024-04-11 13:05:09.643007
1084	Osječko-baranjska županija	14	98	2024-04-11 13:05:09.646447	2024-04-11 13:05:09.646447
1085	Šibensko-kninska županija	15	98	2024-04-11 13:05:09.650102	2024-04-11 13:05:09.650102
1086	Vukovarsko-srijemska županija	16	98	2024-04-11 13:05:09.65356	2024-04-11 13:05:09.65356
1087	Splitsko-dalmatinska županija	17	98	2024-04-11 13:05:09.657067	2024-04-11 13:05:09.657067
1088	Istarska županija	18	98	2024-04-11 13:05:09.660506	2024-04-11 13:05:09.660506
1089	Dubrovačko-neretvanska županija	19	98	2024-04-11 13:05:09.663943	2024-04-11 13:05:09.663943
1090	Međimurska županija	20	98	2024-04-11 13:05:09.667465	2024-04-11 13:05:09.667465
1091	Grad Zagreb	21	98	2024-04-11 13:05:09.671008	2024-04-11 13:05:09.671008
1092	Artibonite	AR	99	2024-04-11 13:05:09.676477	2024-04-11 13:05:09.676477
1093	Centre	CE	99	2024-04-11 13:05:09.682208	2024-04-11 13:05:09.682208
1094	Grande-Anse	GA	99	2024-04-11 13:05:09.687999	2024-04-11 13:05:09.687999
1095	Nord	ND	99	2024-04-11 13:05:09.69173	2024-04-11 13:05:09.69173
1096	Nord-Est	NE	99	2024-04-11 13:05:09.6954	2024-04-11 13:05:09.6954
1097	Nord-Ouest	NO	99	2024-04-11 13:05:09.699087	2024-04-11 13:05:09.699087
1098	Ouest	OU	99	2024-04-11 13:05:09.705838	2024-04-11 13:05:09.705838
1099	Sud	SD	99	2024-04-11 13:05:09.709761	2024-04-11 13:05:09.709761
1100	Sud-Est	SE	99	2024-04-11 13:05:09.713289	2024-04-11 13:05:09.713289
1101	Baranya	BA	100	2024-04-11 13:05:09.717146	2024-04-11 13:05:09.717146
1102	Békéscsaba	BC	100	2024-04-11 13:05:09.720768	2024-04-11 13:05:09.720768
1103	Békés	BE	100	2024-04-11 13:05:09.724265	2024-04-11 13:05:09.724265
1104	Bács-Kiskun	BK	100	2024-04-11 13:05:09.727905	2024-04-11 13:05:09.727905
1105	Budapest	BU	100	2024-04-11 13:05:09.73152	2024-04-11 13:05:09.73152
1106	Borsod-Abaúj-Zemplén	BZ	100	2024-04-11 13:05:09.736824	2024-04-11 13:05:09.736824
1107	Csongrád	CS	100	2024-04-11 13:05:09.741198	2024-04-11 13:05:09.741198
1108	Debrecen	DE	100	2024-04-11 13:05:09.745279	2024-04-11 13:05:09.745279
1109	Dunaújváros	DU	100	2024-04-11 13:05:09.74937	2024-04-11 13:05:09.74937
1110	Eger	EG	100	2024-04-11 13:05:09.753181	2024-04-11 13:05:09.753181
1111	Érd	ER	100	2024-04-11 13:05:09.757262	2024-04-11 13:05:09.757262
1112	Fejér	FE	100	2024-04-11 13:05:09.76108	2024-04-11 13:05:09.76108
1113	Győr-Moson-Sopron	GS	100	2024-04-11 13:05:09.764976	2024-04-11 13:05:09.764976
1114	Győr	GY	100	2024-04-11 13:05:09.768706	2024-04-11 13:05:09.768706
1115	Hajdú-Bihar	HB	100	2024-04-11 13:05:09.773423	2024-04-11 13:05:09.773423
1116	Heves	HE	100	2024-04-11 13:05:09.77792	2024-04-11 13:05:09.77792
1117	Hódmezővásárhely	HV	100	2024-04-11 13:05:09.781962	2024-04-11 13:05:09.781962
1118	Jász-Nagykun-Szolnok	JN	100	2024-04-11 13:05:09.785859	2024-04-11 13:05:09.785859
1119	Komárom-Esztergom	KE	100	2024-04-11 13:05:09.789599	2024-04-11 13:05:09.789599
1120	Kecskemét	KM	100	2024-04-11 13:05:09.793367	2024-04-11 13:05:09.793367
1121	Kaposvár	KV	100	2024-04-11 13:05:09.797163	2024-04-11 13:05:09.797163
1122	Miskolc	MI	100	2024-04-11 13:05:09.800946	2024-04-11 13:05:09.800946
1123	Nagykanizsa	NK	100	2024-04-11 13:05:09.804817	2024-04-11 13:05:09.804817
1124	Nógrád	NO	100	2024-04-11 13:05:09.808541	2024-04-11 13:05:09.808541
1125	Nyíregyháza	NY	100	2024-04-11 13:05:09.812181	2024-04-11 13:05:09.812181
1126	Pest	PE	100	2024-04-11 13:05:09.815713	2024-04-11 13:05:09.815713
1127	Pécs	PS	100	2024-04-11 13:05:09.819208	2024-04-11 13:05:09.819208
1128	Szeged	SD	100	2024-04-11 13:05:09.822762	2024-04-11 13:05:09.822762
1129	Székesfehérvár	SF	100	2024-04-11 13:05:09.826232	2024-04-11 13:05:09.826232
1130	Szombathely	SH	100	2024-04-11 13:05:09.829632	2024-04-11 13:05:09.829632
1131	Szolnok	SK	100	2024-04-11 13:05:09.833441	2024-04-11 13:05:09.833441
1132	Sopron	SN	100	2024-04-11 13:05:09.83699	2024-04-11 13:05:09.83699
1133	Somogy	SO	100	2024-04-11 13:05:09.840488	2024-04-11 13:05:09.840488
1134	Szekszárd	SS	100	2024-04-11 13:05:09.844016	2024-04-11 13:05:09.844016
1135	Salgótarján	ST	100	2024-04-11 13:05:09.847579	2024-04-11 13:05:09.847579
1136	Szabolcs-Szatmár-Bereg	SZ	100	2024-04-11 13:05:09.851056	2024-04-11 13:05:09.851056
1137	Tatabánya	TB	100	2024-04-11 13:05:09.854709	2024-04-11 13:05:09.854709
1138	Tolna	TO	100	2024-04-11 13:05:09.858509	2024-04-11 13:05:09.858509
1139	Vas	VA	100	2024-04-11 13:05:09.862088	2024-04-11 13:05:09.862088
1140	Veszprém (county)	VE	100	2024-04-11 13:05:09.86546	2024-04-11 13:05:09.86546
1141	Veszprém	VM	100	2024-04-11 13:05:09.868931	2024-04-11 13:05:09.868931
1142	Zala	ZA	100	2024-04-11 13:05:09.873218	2024-04-11 13:05:09.873218
1143	Zalaegerszeg	ZE	100	2024-04-11 13:05:09.877006	2024-04-11 13:05:09.877006
1144	Papua	IJ	101	2024-04-11 13:05:09.880786	2024-04-11 13:05:09.880786
1145	Jawa	JW	101	2024-04-11 13:05:09.884411	2024-04-11 13:05:09.884411
1146	Kalimantan	KA	101	2024-04-11 13:05:09.888112	2024-04-11 13:05:09.888112
1147	Maluku	ML	101	2024-04-11 13:05:09.891684	2024-04-11 13:05:09.891684
1148	Nusa Tenggara	NU	101	2024-04-11 13:05:09.895303	2024-04-11 13:05:09.895303
1149	Sulawesi	SL	101	2024-04-11 13:05:09.898992	2024-04-11 13:05:09.898992
1150	Sumatera	SM	101	2024-04-11 13:05:09.902705	2024-04-11 13:05:09.902705
1151	Connacht	C	102	2024-04-11 13:05:09.906452	2024-04-11 13:05:09.906452
1152	Leinster	L	102	2024-04-11 13:05:09.910098	2024-04-11 13:05:09.910098
1153	Munster	M	102	2024-04-11 13:05:09.913702	2024-04-11 13:05:09.913702
1154	Ulster	U	102	2024-04-11 13:05:09.917267	2024-04-11 13:05:09.917267
1155	HaDarom	D	103	2024-04-11 13:05:09.920995	2024-04-11 13:05:09.920995
1156	Hefa	HA	103	2024-04-11 13:05:09.924735	2024-04-11 13:05:09.924735
1157	Yerushalayim Al Quds	JM	103	2024-04-11 13:05:09.928409	2024-04-11 13:05:09.928409
1158	HaMerkaz	M	103	2024-04-11 13:05:09.932009	2024-04-11 13:05:09.932009
1159	Tel-Aviv	TA	103	2024-04-11 13:05:09.935523	2024-04-11 13:05:09.935523
1160	HaZafon	Z	103	2024-04-11 13:05:09.938975	2024-04-11 13:05:09.938975
1161	Andaman and Nicobar Islands	AN	105	2024-04-11 13:05:09.942716	2024-04-11 13:05:09.942716
1162	Andhra Pradesh	AP	105	2024-04-11 13:05:09.946303	2024-04-11 13:05:09.946303
1163	Arunachal Pradesh	AR	105	2024-04-11 13:05:09.949825	2024-04-11 13:05:09.949825
1164	Assam	AS	105	2024-04-11 13:05:09.955888	2024-04-11 13:05:09.955888
1165	Bihar	BR	105	2024-04-11 13:05:09.959424	2024-04-11 13:05:09.959424
1166	Chandigarh	CH	105	2024-04-11 13:05:09.96306	2024-04-11 13:05:09.96306
1167	Chhattisgarh	CT	105	2024-04-11 13:05:09.966616	2024-04-11 13:05:09.966616
1168	Daman and Diu	DD	105	2024-04-11 13:05:09.970242	2024-04-11 13:05:09.970242
1169	Delhi	DL	105	2024-04-11 13:05:09.974123	2024-04-11 13:05:09.974123
1170	Dadra and Nagar Haveli	DN	105	2024-04-11 13:05:09.977899	2024-04-11 13:05:09.977899
1171	Goa	GA	105	2024-04-11 13:05:09.98218	2024-04-11 13:05:09.98218
1172	Gujarat	GJ	105	2024-04-11 13:05:09.98603	2024-04-11 13:05:09.98603
1173	Himachal Pradesh	HP	105	2024-04-11 13:05:09.989667	2024-04-11 13:05:09.989667
1174	Haryana	HR	105	2024-04-11 13:05:09.99338	2024-04-11 13:05:09.99338
1175	Jharkhand	JH	105	2024-04-11 13:05:09.997237	2024-04-11 13:05:09.997237
1176	Jammu and Kashmir	JK	105	2024-04-11 13:05:10.001208	2024-04-11 13:05:10.001208
1177	Karnataka	KA	105	2024-04-11 13:05:10.004911	2024-04-11 13:05:10.004911
1178	Kerala	KL	105	2024-04-11 13:05:10.008654	2024-04-11 13:05:10.008654
1179	Lakshadweep	LD	105	2024-04-11 13:05:10.012168	2024-04-11 13:05:10.012168
1180	Maharashtra	MH	105	2024-04-11 13:05:10.015581	2024-04-11 13:05:10.015581
1181	Meghalaya	ML	105	2024-04-11 13:05:10.019245	2024-04-11 13:05:10.019245
1182	Manipur	MN	105	2024-04-11 13:05:10.023081	2024-04-11 13:05:10.023081
1183	Madhya Pradesh	MP	105	2024-04-11 13:05:10.026911	2024-04-11 13:05:10.026911
1184	Mizoram	MZ	105	2024-04-11 13:05:10.030791	2024-04-11 13:05:10.030791
1185	Nagaland	NL	105	2024-04-11 13:05:10.037098	2024-04-11 13:05:10.037098
1186	Odisha	OR	105	2024-04-11 13:05:10.041001	2024-04-11 13:05:10.041001
1187	Punjab	PB	105	2024-04-11 13:05:10.044813	2024-04-11 13:05:10.044813
1188	Puducherry	PY	105	2024-04-11 13:05:10.048773	2024-04-11 13:05:10.048773
1189	Rajasthan	RJ	105	2024-04-11 13:05:10.052848	2024-04-11 13:05:10.052848
1190	Sikkim	SK	105	2024-04-11 13:05:10.057001	2024-04-11 13:05:10.057001
1191	Telangana	TG	105	2024-04-11 13:05:10.06104	2024-04-11 13:05:10.06104
1192	Tamil Nadu	TN	105	2024-04-11 13:05:10.064854	2024-04-11 13:05:10.064854
1193	Tripura	TR	105	2024-04-11 13:05:10.068698	2024-04-11 13:05:10.068698
1194	Uttar Pradesh	UP	105	2024-04-11 13:05:10.072551	2024-04-11 13:05:10.072551
1195	Uttarakhand	UT	105	2024-04-11 13:05:10.076195	2024-04-11 13:05:10.076195
1196	West Bengal	WB	105	2024-04-11 13:05:10.079838	2024-04-11 13:05:10.079838
1197	Al Anbar	AN	107	2024-04-11 13:05:10.083493	2024-04-11 13:05:10.083493
1198	Arbil	AR	107	2024-04-11 13:05:10.087131	2024-04-11 13:05:10.087131
1199	Al Basrah	BA	107	2024-04-11 13:05:10.090657	2024-04-11 13:05:10.090657
1200	Babil	BB	107	2024-04-11 13:05:10.09402	2024-04-11 13:05:10.09402
1201	Baghdad	BG	107	2024-04-11 13:05:10.097622	2024-04-11 13:05:10.097622
1202	Dahuk	DA	107	2024-04-11 13:05:10.101105	2024-04-11 13:05:10.101105
1203	Diyala	DI	107	2024-04-11 13:05:10.104534	2024-04-11 13:05:10.104534
1204	Dhi Qar	DQ	107	2024-04-11 13:05:10.108181	2024-04-11 13:05:10.108181
1205	Karbala'	KA	107	2024-04-11 13:05:10.111765	2024-04-11 13:05:10.111765
1206	Maysan	MA	107	2024-04-11 13:05:10.115211	2024-04-11 13:05:10.115211
1207	Al Muthanna	MU	107	2024-04-11 13:05:10.118771	2024-04-11 13:05:10.118771
1208	An Najef	NA	107	2024-04-11 13:05:10.122453	2024-04-11 13:05:10.122453
1209	Ninawa	NI	107	2024-04-11 13:05:10.126093	2024-04-11 13:05:10.126093
1210	Al Qadisiyah	QA	107	2024-04-11 13:05:10.129706	2024-04-11 13:05:10.129706
1211	Salah ad Din	SD	107	2024-04-11 13:05:10.133148	2024-04-11 13:05:10.133148
1212	As Sulaymaniyah	SW	107	2024-04-11 13:05:10.136612	2024-04-11 13:05:10.136612
1213	At Ta'mim	TS	107	2024-04-11 13:05:10.140053	2024-04-11 13:05:10.140053
1214	Wasit	WA	107	2024-04-11 13:05:10.14352	2024-04-11 13:05:10.14352
1215	Āzarbāyjān-e Sharqī	01	108	2024-04-11 13:05:10.147148	2024-04-11 13:05:10.147148
1216	Āzarbāyjān-e Gharbī	02	108	2024-04-11 13:05:10.150672	2024-04-11 13:05:10.150672
1217	Ardabīl	03	108	2024-04-11 13:05:10.154154	2024-04-11 13:05:10.154154
1218	Eşfahān	04	108	2024-04-11 13:05:10.157865	2024-04-11 13:05:10.157865
1219	Īlām	05	108	2024-04-11 13:05:10.16141	2024-04-11 13:05:10.16141
1220	Būshehr	06	108	2024-04-11 13:05:10.1648	2024-04-11 13:05:10.1648
1221	Tehrān	07	108	2024-04-11 13:05:10.168283	2024-04-11 13:05:10.168283
1222	Chahār Mahāll va Bakhtīārī	08	108	2024-04-11 13:05:10.171975	2024-04-11 13:05:10.171975
1223	Khūzestān	10	108	2024-04-11 13:05:10.175565	2024-04-11 13:05:10.175565
1224	Zanjān	11	108	2024-04-11 13:05:10.17894	2024-04-11 13:05:10.17894
1225	Semnān	12	108	2024-04-11 13:05:10.182431	2024-04-11 13:05:10.182431
1226	Sīstān va Balūchestān	13	108	2024-04-11 13:05:10.185882	2024-04-11 13:05:10.185882
1227	Fārs	14	108	2024-04-11 13:05:10.190979	2024-04-11 13:05:10.190979
1228	Kermān	15	108	2024-04-11 13:05:10.194891	2024-04-11 13:05:10.194891
1229	Kordestān	16	108	2024-04-11 13:05:10.198646	2024-04-11 13:05:10.198646
1230	Kermānshāh	17	108	2024-04-11 13:05:10.202482	2024-04-11 13:05:10.202482
1231	Kohgīlūyeh va Būyer Ahmad	18	108	2024-04-11 13:05:10.210015	2024-04-11 13:05:10.210015
1232	Gīlān	19	108	2024-04-11 13:05:10.213649	2024-04-11 13:05:10.213649
1233	Lorestān	20	108	2024-04-11 13:05:10.217187	2024-04-11 13:05:10.217187
1234	Māzandarān	21	108	2024-04-11 13:05:10.220818	2024-04-11 13:05:10.220818
1235	Markazī	22	108	2024-04-11 13:05:10.224441	2024-04-11 13:05:10.224441
1236	Hormozgān	23	108	2024-04-11 13:05:10.22802	2024-04-11 13:05:10.22802
1237	Hamadān	24	108	2024-04-11 13:05:10.231452	2024-04-11 13:05:10.231452
1238	Yazd	25	108	2024-04-11 13:05:10.234894	2024-04-11 13:05:10.234894
1239	Qom	26	108	2024-04-11 13:05:10.238347	2024-04-11 13:05:10.238347
1240	Golestān	27	108	2024-04-11 13:05:10.241768	2024-04-11 13:05:10.241768
1241	Qazvīn	28	108	2024-04-11 13:05:10.245379	2024-04-11 13:05:10.245379
1242	Khorāsān-e Janūbī	29	108	2024-04-11 13:05:10.249106	2024-04-11 13:05:10.249106
1243	Khorāsān-e Razavī	30	108	2024-04-11 13:05:10.252629	2024-04-11 13:05:10.252629
1244	Khorāsān-e Shemālī	31	108	2024-04-11 13:05:10.256362	2024-04-11 13:05:10.256362
1245	Reykjavík	0	109	2024-04-11 13:05:10.260012	2024-04-11 13:05:10.260012
1246	Höfuðborgarsvæðið	1	109	2024-04-11 13:05:10.263524	2024-04-11 13:05:10.263524
1247	Suðurnes	2	109	2024-04-11 13:05:10.26701	2024-04-11 13:05:10.26701
1248	Vesturland	3	109	2024-04-11 13:05:10.270753	2024-04-11 13:05:10.270753
1249	Vestfirðir	4	109	2024-04-11 13:05:10.274372	2024-04-11 13:05:10.274372
1250	Norðurland vestra	5	109	2024-04-11 13:05:10.277879	2024-04-11 13:05:10.277879
1251	Norðurland eystra	6	109	2024-04-11 13:05:10.281468	2024-04-11 13:05:10.281468
1252	Austurland	7	109	2024-04-11 13:05:10.28503	2024-04-11 13:05:10.28503
1253	Suðurland	8	109	2024-04-11 13:05:10.288473	2024-04-11 13:05:10.288473
1254	Alessandria	AL	110	2024-04-11 13:05:10.312197	2024-04-11 13:05:10.312197
1255	Asti	AT	110	2024-04-11 13:05:10.316124	2024-04-11 13:05:10.316124
1256	Biella	BI	110	2024-04-11 13:05:10.319921	2024-04-11 13:05:10.319921
1257	Cuneo	CN	110	2024-04-11 13:05:10.323848	2024-04-11 13:05:10.323848
1258	Novara	NO	110	2024-04-11 13:05:10.327692	2024-04-11 13:05:10.327692
1259	Torino	TO	110	2024-04-11 13:05:10.331472	2024-04-11 13:05:10.331472
1260	Verbano-Cusio-Ossola	VB	110	2024-04-11 13:05:10.3353	2024-04-11 13:05:10.3353
1261	Vercelli	VC	110	2024-04-11 13:05:10.339084	2024-04-11 13:05:10.339084
1262	Aosta	AO	110	2024-04-11 13:05:10.342832	2024-04-11 13:05:10.342832
1263	Bergamo	BG	110	2024-04-11 13:05:10.346519	2024-04-11 13:05:10.346519
1264	Brescia	BS	110	2024-04-11 13:05:10.350041	2024-04-11 13:05:10.350041
1265	Como	CO	110	2024-04-11 13:05:10.353631	2024-04-11 13:05:10.353631
1266	Cremona	CR	110	2024-04-11 13:05:10.357461	2024-04-11 13:05:10.357461
1267	Lecco	LC	110	2024-04-11 13:05:10.361024	2024-04-11 13:05:10.361024
1268	Lodi	LO	110	2024-04-11 13:05:10.364745	2024-04-11 13:05:10.364745
1269	Monza e Brianza	MB	110	2024-04-11 13:05:10.368358	2024-04-11 13:05:10.368358
1270	Milano	MI	110	2024-04-11 13:05:10.372119	2024-04-11 13:05:10.372119
1271	Mantova	MN	110	2024-04-11 13:05:10.375761	2024-04-11 13:05:10.375761
1272	Pavia	PV	110	2024-04-11 13:05:10.379345	2024-04-11 13:05:10.379345
1273	Sondrio	SO	110	2024-04-11 13:05:10.382952	2024-04-11 13:05:10.382952
1274	Varese	VA	110	2024-04-11 13:05:10.386458	2024-04-11 13:05:10.386458
1275	Bolzano	BZ	110	2024-04-11 13:05:10.389997	2024-04-11 13:05:10.389997
1276	Trento	TN	110	2024-04-11 13:05:10.393706	2024-04-11 13:05:10.393706
1277	Belluno	BL	110	2024-04-11 13:05:10.397442	2024-04-11 13:05:10.397442
1278	Padova	PD	110	2024-04-11 13:05:10.401149	2024-04-11 13:05:10.401149
1279	Rovigo	RO	110	2024-04-11 13:05:10.40476	2024-04-11 13:05:10.40476
1280	Treviso	TV	110	2024-04-11 13:05:10.4083	2024-04-11 13:05:10.4083
1281	Venezia	VE	110	2024-04-11 13:05:10.412069	2024-04-11 13:05:10.412069
1282	Vicenza	VI	110	2024-04-11 13:05:10.415685	2024-04-11 13:05:10.415685
1283	Verona	VR	110	2024-04-11 13:05:10.419251	2024-04-11 13:05:10.419251
1284	Gorizia	GO	110	2024-04-11 13:05:10.422916	2024-04-11 13:05:10.422916
1285	Pordenone	PN	110	2024-04-11 13:05:10.426581	2024-04-11 13:05:10.426581
1286	Trieste	TS	110	2024-04-11 13:05:10.430318	2024-04-11 13:05:10.430318
1287	Udine	UD	110	2024-04-11 13:05:10.434263	2024-04-11 13:05:10.434263
1288	Genova	GE	110	2024-04-11 13:05:10.438236	2024-04-11 13:05:10.438236
1289	Imperia	IM	110	2024-04-11 13:05:10.441985	2024-04-11 13:05:10.441985
1290	La Spezia	SP	110	2024-04-11 13:05:10.445686	2024-04-11 13:05:10.445686
1291	Savona	SV	110	2024-04-11 13:05:10.449538	2024-04-11 13:05:10.449538
1292	Bologna	BO	110	2024-04-11 13:05:10.458171	2024-04-11 13:05:10.458171
1293	Forlì-Cesena	FC	110	2024-04-11 13:05:10.462322	2024-04-11 13:05:10.462322
1294	Ferrara	FE	110	2024-04-11 13:05:10.466156	2024-04-11 13:05:10.466156
1295	Modena	MO	110	2024-04-11 13:05:10.469992	2024-04-11 13:05:10.469992
1296	Piacenza	PC	110	2024-04-11 13:05:10.474152	2024-04-11 13:05:10.474152
1297	Parma	PR	110	2024-04-11 13:05:10.478438	2024-04-11 13:05:10.478438
1298	Ravenna	RA	110	2024-04-11 13:05:10.48248	2024-04-11 13:05:10.48248
1299	Reggio Emilia	RE	110	2024-04-11 13:05:10.486402	2024-04-11 13:05:10.486402
1300	Rimini	RN	110	2024-04-11 13:05:10.490298	2024-04-11 13:05:10.490298
1301	Arezzo	AR	110	2024-04-11 13:05:10.494146	2024-04-11 13:05:10.494146
1302	Firenze	FI	110	2024-04-11 13:05:10.498241	2024-04-11 13:05:10.498241
1303	Grosseto	GR	110	2024-04-11 13:05:10.502418	2024-04-11 13:05:10.502418
1304	Livorno	LI	110	2024-04-11 13:05:10.506271	2024-04-11 13:05:10.506271
1305	Lucca	LU	110	2024-04-11 13:05:10.51008	2024-04-11 13:05:10.51008
1306	Massa-Carrara	MS	110	2024-04-11 13:05:10.513722	2024-04-11 13:05:10.513722
1307	Pisa	PI	110	2024-04-11 13:05:10.5174	2024-04-11 13:05:10.5174
1308	Prato	PO	110	2024-04-11 13:05:10.521058	2024-04-11 13:05:10.521058
1309	Pistoia	PT	110	2024-04-11 13:05:10.525122	2024-04-11 13:05:10.525122
1310	Siena	SI	110	2024-04-11 13:05:10.52887	2024-04-11 13:05:10.52887
1311	Perugia	PG	110	2024-04-11 13:05:10.532573	2024-04-11 13:05:10.532573
1312	Terni	TR	110	2024-04-11 13:05:10.53613	2024-04-11 13:05:10.53613
1313	Ancona	AN	110	2024-04-11 13:05:10.539674	2024-04-11 13:05:10.539674
1314	Ascoli Piceno	AP	110	2024-04-11 13:05:10.543205	2024-04-11 13:05:10.543205
1315	Fermo	FM	110	2024-04-11 13:05:10.547081	2024-04-11 13:05:10.547081
1316	Macerata	MC	110	2024-04-11 13:05:10.550691	2024-04-11 13:05:10.550691
1317	Pesaro e Urbino	PU	110	2024-04-11 13:05:10.554748	2024-04-11 13:05:10.554748
1318	Frosinone	FR	110	2024-04-11 13:05:10.558952	2024-04-11 13:05:10.558952
1319	Latina	LT	110	2024-04-11 13:05:10.562663	2024-04-11 13:05:10.562663
1320	Rieti	RI	110	2024-04-11 13:05:10.56635	2024-04-11 13:05:10.56635
1321	Roma	RM	110	2024-04-11 13:05:10.569939	2024-04-11 13:05:10.569939
1322	Viterbo	VT	110	2024-04-11 13:05:10.573538	2024-04-11 13:05:10.573538
1323	L'Aquila	AQ	110	2024-04-11 13:05:10.577561	2024-04-11 13:05:10.577561
1324	Chieti	CH	110	2024-04-11 13:05:10.581198	2024-04-11 13:05:10.581198
1325	Pescara	PE	110	2024-04-11 13:05:10.584773	2024-04-11 13:05:10.584773
1326	Teramo	TE	110	2024-04-11 13:05:10.588325	2024-04-11 13:05:10.588325
1327	Campobasso	CB	110	2024-04-11 13:05:10.59185	2024-04-11 13:05:10.59185
1328	Isernia	IS	110	2024-04-11 13:05:10.595484	2024-04-11 13:05:10.595484
1329	Avellino	AV	110	2024-04-11 13:05:10.599035	2024-04-11 13:05:10.599035
1330	Benevento	BN	110	2024-04-11 13:05:10.602584	2024-04-11 13:05:10.602584
1331	Caserta	CE	110	2024-04-11 13:05:10.606088	2024-04-11 13:05:10.606088
1332	Napoli	NA	110	2024-04-11 13:05:10.609588	2024-04-11 13:05:10.609588
1333	Salerno	SA	110	2024-04-11 13:05:10.613053	2024-04-11 13:05:10.613053
1334	Bari	BA	110	2024-04-11 13:05:10.616593	2024-04-11 13:05:10.616593
1335	Brindisi	BR	110	2024-04-11 13:05:10.620212	2024-04-11 13:05:10.620212
1336	Barletta-Andria-Trani	BT	110	2024-04-11 13:05:10.623743	2024-04-11 13:05:10.623743
1337	Foggia	FG	110	2024-04-11 13:05:10.627222	2024-04-11 13:05:10.627222
1338	Lecce	LE	110	2024-04-11 13:05:10.630627	2024-04-11 13:05:10.630627
1339	Taranto	TA	110	2024-04-11 13:05:10.634174	2024-04-11 13:05:10.634174
1340	Matera	MT	110	2024-04-11 13:05:10.637669	2024-04-11 13:05:10.637669
1341	Potenza	PZ	110	2024-04-11 13:05:10.641114	2024-04-11 13:05:10.641114
1342	Cosenza	CS	110	2024-04-11 13:05:10.644691	2024-04-11 13:05:10.644691
1343	Catanzaro	CZ	110	2024-04-11 13:05:10.648301	2024-04-11 13:05:10.648301
1344	Crotone	KR	110	2024-04-11 13:05:10.651912	2024-04-11 13:05:10.651912
1345	Reggio Calabria	RC	110	2024-04-11 13:05:10.655504	2024-04-11 13:05:10.655504
1346	Vibo Valentia	VV	110	2024-04-11 13:05:10.658932	2024-04-11 13:05:10.658932
1347	Agrigento	AG	110	2024-04-11 13:05:10.662506	2024-04-11 13:05:10.662506
1348	Caltanissetta	CL	110	2024-04-11 13:05:10.66612	2024-04-11 13:05:10.66612
1349	Catania	CT	110	2024-04-11 13:05:10.669693	2024-04-11 13:05:10.669693
1350	Enna	EN	110	2024-04-11 13:05:10.673368	2024-04-11 13:05:10.673368
1351	Messina	ME	110	2024-04-11 13:05:10.676977	2024-04-11 13:05:10.676977
1352	Palermo	PA	110	2024-04-11 13:05:10.680468	2024-04-11 13:05:10.680468
1353	Ragusa	RG	110	2024-04-11 13:05:10.683944	2024-04-11 13:05:10.683944
1354	Siracusa	SR	110	2024-04-11 13:05:10.687419	2024-04-11 13:05:10.687419
1355	Trapani	TP	110	2024-04-11 13:05:10.690864	2024-04-11 13:05:10.690864
1356	Cagliari	CA	110	2024-04-11 13:05:10.694672	2024-04-11 13:05:10.694672
1357	Carbonia-Iglesias	CI	110	2024-04-11 13:05:10.698238	2024-04-11 13:05:10.698238
1358	Nuoro	NU	110	2024-04-11 13:05:10.701756	2024-04-11 13:05:10.701756
1359	Ogliastra	OG	110	2024-04-11 13:05:10.708879	2024-04-11 13:05:10.708879
1360	Oristano	OR	110	2024-04-11 13:05:10.713881	2024-04-11 13:05:10.713881
1361	Olbia-Tempio	OT	110	2024-04-11 13:05:10.717444	2024-04-11 13:05:10.717444
1362	Sassari	SS	110	2024-04-11 13:05:10.720837	2024-04-11 13:05:10.720837
1363	Medio Campidano	VS	110	2024-04-11 13:05:10.724309	2024-04-11 13:05:10.724309
1364	Kingston	01	112	2024-04-11 13:05:10.727935	2024-04-11 13:05:10.727935
1365	Saint Andrew	02	112	2024-04-11 13:05:10.73176	2024-04-11 13:05:10.73176
1366	Saint Thomas	03	112	2024-04-11 13:05:10.73619	2024-04-11 13:05:10.73619
1367	Portland	04	112	2024-04-11 13:05:10.740087	2024-04-11 13:05:10.740087
1368	Saint Mary	05	112	2024-04-11 13:05:10.743872	2024-04-11 13:05:10.743872
1369	Saint Ann	06	112	2024-04-11 13:05:10.747611	2024-04-11 13:05:10.747611
1370	Trelawny	07	112	2024-04-11 13:05:10.751381	2024-04-11 13:05:10.751381
1371	Saint James	08	112	2024-04-11 13:05:10.755251	2024-04-11 13:05:10.755251
1372	Hanover	09	112	2024-04-11 13:05:10.758825	2024-04-11 13:05:10.758825
1373	Westmoreland	10	112	2024-04-11 13:05:10.762606	2024-04-11 13:05:10.762606
1374	Saint Elizabeth	11	112	2024-04-11 13:05:10.766182	2024-04-11 13:05:10.766182
1375	Manchester	12	112	2024-04-11 13:05:10.76968	2024-04-11 13:05:10.76968
1376	Clarendon	13	112	2024-04-11 13:05:10.773325	2024-04-11 13:05:10.773325
1377	Saint Catherine	14	112	2024-04-11 13:05:10.776834	2024-04-11 13:05:10.776834
1378	‘Ajlūn	AJ	113	2024-04-11 13:05:10.780462	2024-04-11 13:05:10.780462
1379	‘Ammān (Al ‘Aşimah)	AM	113	2024-04-11 13:05:10.784118	2024-04-11 13:05:10.784118
1380	Al ‘Aqabah	AQ	113	2024-04-11 13:05:10.787608	2024-04-11 13:05:10.787608
1381	Aţ Ţafīlah	AT	113	2024-04-11 13:05:10.791078	2024-04-11 13:05:10.791078
1382	Az Zarqā'	AZ	113	2024-04-11 13:05:10.794715	2024-04-11 13:05:10.794715
1383	Al Balqā'	BA	113	2024-04-11 13:05:10.798221	2024-04-11 13:05:10.798221
1384	Irbid	IR	113	2024-04-11 13:05:10.801823	2024-04-11 13:05:10.801823
1385	Jarash	JA	113	2024-04-11 13:05:10.805308	2024-04-11 13:05:10.805308
1386	Al Karak	KA	113	2024-04-11 13:05:10.808798	2024-04-11 13:05:10.808798
1387	Al Mafraq	MA	113	2024-04-11 13:05:10.812262	2024-04-11 13:05:10.812262
1388	Mādabā	MD	113	2024-04-11 13:05:10.815658	2024-04-11 13:05:10.815658
1389	Ma‘ān	MN	113	2024-04-11 13:05:10.819154	2024-04-11 13:05:10.819154
1390	Hokkaido	01	114	2024-04-11 13:05:10.822817	2024-04-11 13:05:10.822817
1391	Aomori	02	114	2024-04-11 13:05:10.826367	2024-04-11 13:05:10.826367
1392	Iwate	03	114	2024-04-11 13:05:10.829985	2024-04-11 13:05:10.829985
1393	Miyagi	04	114	2024-04-11 13:05:10.833481	2024-04-11 13:05:10.833481
1394	Akita	05	114	2024-04-11 13:05:10.837131	2024-04-11 13:05:10.837131
1395	Yamagata	06	114	2024-04-11 13:05:10.840749	2024-04-11 13:05:10.840749
1396	Fukushima	07	114	2024-04-11 13:05:10.844422	2024-04-11 13:05:10.844422
1397	Ibaraki	08	114	2024-04-11 13:05:10.848362	2024-04-11 13:05:10.848362
1398	Tochigi	09	114	2024-04-11 13:05:10.85211	2024-04-11 13:05:10.85211
1399	Gunma	10	114	2024-04-11 13:05:10.855767	2024-04-11 13:05:10.855767
1400	Saitama	11	114	2024-04-11 13:05:10.859485	2024-04-11 13:05:10.859485
1401	Chiba	12	114	2024-04-11 13:05:10.865855	2024-04-11 13:05:10.865855
1402	Tokyo	13	114	2024-04-11 13:05:10.869893	2024-04-11 13:05:10.869893
1403	Kanagawa	14	114	2024-04-11 13:05:10.873743	2024-04-11 13:05:10.873743
1404	Niigata	15	114	2024-04-11 13:05:10.877507	2024-04-11 13:05:10.877507
1405	Toyama	16	114	2024-04-11 13:05:10.881367	2024-04-11 13:05:10.881367
1406	Ishikawa	17	114	2024-04-11 13:05:10.885087	2024-04-11 13:05:10.885087
1407	Fukui	18	114	2024-04-11 13:05:10.897846	2024-04-11 13:05:10.897846
1408	Yamanashi	19	114	2024-04-11 13:05:10.902059	2024-04-11 13:05:10.902059
1409	Nagano	20	114	2024-04-11 13:05:10.9059	2024-04-11 13:05:10.9059
1410	Gifu	21	114	2024-04-11 13:05:10.909609	2024-04-11 13:05:10.909609
1411	Shizuoka	22	114	2024-04-11 13:05:10.913256	2024-04-11 13:05:10.913256
1412	Aichi	23	114	2024-04-11 13:05:10.916933	2024-04-11 13:05:10.916933
1413	Mie	24	114	2024-04-11 13:05:10.920831	2024-04-11 13:05:10.920831
1414	Shiga	25	114	2024-04-11 13:05:10.924698	2024-04-11 13:05:10.924698
1415	Kyoto	26	114	2024-04-11 13:05:10.928459	2024-04-11 13:05:10.928459
1416	Osaka	27	114	2024-04-11 13:05:10.932199	2024-04-11 13:05:10.932199
1417	Hyogo	28	114	2024-04-11 13:05:10.935758	2024-04-11 13:05:10.935758
1418	Nara	29	114	2024-04-11 13:05:10.939291	2024-04-11 13:05:10.939291
1419	Wakayama	30	114	2024-04-11 13:05:10.942731	2024-04-11 13:05:10.942731
1420	Tottori	31	114	2024-04-11 13:05:10.946289	2024-04-11 13:05:10.946289
1421	Shimane	32	114	2024-04-11 13:05:10.950085	2024-04-11 13:05:10.950085
1422	Okayama	33	114	2024-04-11 13:05:10.955531	2024-04-11 13:05:10.955531
1423	Hiroshima	34	114	2024-04-11 13:05:10.959361	2024-04-11 13:05:10.959361
1424	Yamaguchi	35	114	2024-04-11 13:05:10.962768	2024-04-11 13:05:10.962768
1425	Tokushima	36	114	2024-04-11 13:05:10.96623	2024-04-11 13:05:10.96623
1426	Kagawa	37	114	2024-04-11 13:05:10.969765	2024-04-11 13:05:10.969765
1427	Ehime	38	114	2024-04-11 13:05:10.973185	2024-04-11 13:05:10.973185
1428	Kochi	39	114	2024-04-11 13:05:10.976747	2024-04-11 13:05:10.976747
1429	Fukuoka	40	114	2024-04-11 13:05:10.980136	2024-04-11 13:05:10.980136
1430	Saga	41	114	2024-04-11 13:05:10.983548	2024-04-11 13:05:10.983548
1431	Nagasaki	42	114	2024-04-11 13:05:10.987136	2024-04-11 13:05:10.987136
1432	Kumamoto	43	114	2024-04-11 13:05:10.990498	2024-04-11 13:05:10.990498
1433	Oita	44	114	2024-04-11 13:05:10.993795	2024-04-11 13:05:10.993795
1434	Miyazaki	45	114	2024-04-11 13:05:10.997322	2024-04-11 13:05:10.997322
1435	Kagoshima	46	114	2024-04-11 13:05:11.000762	2024-04-11 13:05:11.000762
1436	Okinawa	47	114	2024-04-11 13:05:11.004172	2024-04-11 13:05:11.004172
1437	Baringo	01	115	2024-04-11 13:05:11.007656	2024-04-11 13:05:11.007656
1438	Bomet	02	115	2024-04-11 13:05:11.011034	2024-04-11 13:05:11.011034
1439	Bungoma	03	115	2024-04-11 13:05:11.014521	2024-04-11 13:05:11.014521
1440	Busia	04	115	2024-04-11 13:05:11.017933	2024-04-11 13:05:11.017933
1441	Elgeyo/Marakwet	05	115	2024-04-11 13:05:11.021345	2024-04-11 13:05:11.021345
1442	Embu	06	115	2024-04-11 13:05:11.02477	2024-04-11 13:05:11.02477
1443	Garissa	07	115	2024-04-11 13:05:11.028114	2024-04-11 13:05:11.028114
1444	Homa Bay	08	115	2024-04-11 13:05:11.031448	2024-04-11 13:05:11.031448
1445	Isiolo	09	115	2024-04-11 13:05:11.035129	2024-04-11 13:05:11.035129
1446	Kajiado	10	115	2024-04-11 13:05:11.038528	2024-04-11 13:05:11.038528
1447	Kakamega	11	115	2024-04-11 13:05:11.041876	2024-04-11 13:05:11.041876
1448	Kericho	12	115	2024-04-11 13:05:11.045262	2024-04-11 13:05:11.045262
1449	Kiambu	13	115	2024-04-11 13:05:11.04883	2024-04-11 13:05:11.04883
1450	Kilifi	14	115	2024-04-11 13:05:11.052468	2024-04-11 13:05:11.052468
1451	Kirinyaga	15	115	2024-04-11 13:05:11.056452	2024-04-11 13:05:11.056452
1452	Kisii	16	115	2024-04-11 13:05:11.060696	2024-04-11 13:05:11.060696
1453	Kisumu	17	115	2024-04-11 13:05:11.064582	2024-04-11 13:05:11.064582
1454	Kitui	18	115	2024-04-11 13:05:11.068152	2024-04-11 13:05:11.068152
1455	Kwale	19	115	2024-04-11 13:05:11.072665	2024-04-11 13:05:11.072665
1456	Laikipia	20	115	2024-04-11 13:05:11.07645	2024-04-11 13:05:11.07645
1457	Lamu	21	115	2024-04-11 13:05:11.080245	2024-04-11 13:05:11.080245
1458	Machakos	22	115	2024-04-11 13:05:11.08431	2024-04-11 13:05:11.08431
1459	Makueni	23	115	2024-04-11 13:05:11.088043	2024-04-11 13:05:11.088043
1460	Mandera	24	115	2024-04-11 13:05:11.091646	2024-04-11 13:05:11.091646
1461	Marsabit	25	115	2024-04-11 13:05:11.095105	2024-04-11 13:05:11.095105
1462	Meru	26	115	2024-04-11 13:05:11.098581	2024-04-11 13:05:11.098581
1463	Migori	27	115	2024-04-11 13:05:11.102231	2024-04-11 13:05:11.102231
1464	Mombasa	28	115	2024-04-11 13:05:11.105881	2024-04-11 13:05:11.105881
1465	Murang'a	29	115	2024-04-11 13:05:11.109521	2024-04-11 13:05:11.109521
1466	Nairobi City	30	115	2024-04-11 13:05:11.11305	2024-04-11 13:05:11.11305
1467	Nakuru	31	115	2024-04-11 13:05:11.116468	2024-04-11 13:05:11.116468
1468	Nandi	32	115	2024-04-11 13:05:11.11984	2024-04-11 13:05:11.11984
1469	Narok	33	115	2024-04-11 13:05:11.123449	2024-04-11 13:05:11.123449
1470	Nyamira	34	115	2024-04-11 13:05:11.12693	2024-04-11 13:05:11.12693
1471	Nyandarua	35	115	2024-04-11 13:05:11.130444	2024-04-11 13:05:11.130444
1472	Nyeri	36	115	2024-04-11 13:05:11.133877	2024-04-11 13:05:11.133877
1473	Samburu	37	115	2024-04-11 13:05:11.137274	2024-04-11 13:05:11.137274
1474	Siaya	38	115	2024-04-11 13:05:11.140701	2024-04-11 13:05:11.140701
1475	Taita/Taveta	39	115	2024-04-11 13:05:11.144122	2024-04-11 13:05:11.144122
1476	Tana River	40	115	2024-04-11 13:05:11.147543	2024-04-11 13:05:11.147543
1477	Tharaka-Nithi	41	115	2024-04-11 13:05:11.151114	2024-04-11 13:05:11.151114
1478	Trans Nzoia	42	115	2024-04-11 13:05:11.154592	2024-04-11 13:05:11.154592
1479	Turkana	43	115	2024-04-11 13:05:11.158	2024-04-11 13:05:11.158
1480	Uasin Gishu	44	115	2024-04-11 13:05:11.161434	2024-04-11 13:05:11.161434
1481	Vihiga	45	115	2024-04-11 13:05:11.164832	2024-04-11 13:05:11.164832
1482	Wajir	46	115	2024-04-11 13:05:11.168256	2024-04-11 13:05:11.168256
1483	West Pokot	47	115	2024-04-11 13:05:11.171803	2024-04-11 13:05:11.171803
1484	Batken	B	116	2024-04-11 13:05:11.175318	2024-04-11 13:05:11.175318
1485	Chü	C	116	2024-04-11 13:05:11.178818	2024-04-11 13:05:11.178818
1486	Bishkek	GB	116	2024-04-11 13:05:11.182281	2024-04-11 13:05:11.182281
1487	Jalal-Abad	J	116	2024-04-11 13:05:11.185663	2024-04-11 13:05:11.185663
1488	Naryn	N	116	2024-04-11 13:05:11.18919	2024-04-11 13:05:11.18919
1489	Osh	O	116	2024-04-11 13:05:11.19811	2024-04-11 13:05:11.19811
1490	Talas	T	116	2024-04-11 13:05:11.203556	2024-04-11 13:05:11.203556
1491	Ysyk-Köl	Y	116	2024-04-11 13:05:11.208374	2024-04-11 13:05:11.208374
1492	Banteay Mean Chey	1	117	2024-04-11 13:05:11.213009	2024-04-11 13:05:11.213009
1493	Krachoh	10	117	2024-04-11 13:05:11.217769	2024-04-11 13:05:11.217769
1494	Mondol Kiri	11	117	2024-04-11 13:05:11.221859	2024-04-11 13:05:11.221859
1495	Phnom Penh	12	117	2024-04-11 13:05:11.225738	2024-04-11 13:05:11.225738
1496	Preah Vihear	13	117	2024-04-11 13:05:11.229554	2024-04-11 13:05:11.229554
1497	Prey Veaeng	14	117	2024-04-11 13:05:11.233316	2024-04-11 13:05:11.233316
1498	Pousaat	15	117	2024-04-11 13:05:11.237242	2024-04-11 13:05:11.237242
1499	Rotanak Kiri	16	117	2024-04-11 13:05:11.241099	2024-04-11 13:05:11.241099
1500	Siem Reab	17	117	2024-04-11 13:05:11.244688	2024-04-11 13:05:11.244688
1501	Krong Preah Sihanouk	18	117	2024-04-11 13:05:11.248655	2024-04-11 13:05:11.248655
1502	Stueng Traeng	19	117	2024-04-11 13:05:11.252502	2024-04-11 13:05:11.252502
1503	Battambang	2	117	2024-04-11 13:05:11.256217	2024-04-11 13:05:11.256217
1504	Svaay Rieng	20	117	2024-04-11 13:05:11.260115	2024-04-11 13:05:11.260115
1505	Taakaev	21	117	2024-04-11 13:05:11.263779	2024-04-11 13:05:11.263779
1506	Otdar Mean Chey	22	117	2024-04-11 13:05:11.267746	2024-04-11 13:05:11.267746
1507	Krong Kaeb	23	117	2024-04-11 13:05:11.27156	2024-04-11 13:05:11.27156
1508	Krong Pailin	24	117	2024-04-11 13:05:11.275226	2024-04-11 13:05:11.275226
1509	Kampong Cham	3	117	2024-04-11 13:05:11.279092	2024-04-11 13:05:11.279092
1510	Kampong Chhnang	4	117	2024-04-11 13:05:11.285414	2024-04-11 13:05:11.285414
1511	Kampong Speu	5	117	2024-04-11 13:05:11.289631	2024-04-11 13:05:11.289631
1512	Kampong Thom	6	117	2024-04-11 13:05:11.29336	2024-04-11 13:05:11.29336
1513	Kampot	7	117	2024-04-11 13:05:11.297287	2024-04-11 13:05:11.297287
1514	Kandal	8	117	2024-04-11 13:05:11.301023	2024-04-11 13:05:11.301023
1515	Kach Kong	9	117	2024-04-11 13:05:11.30466	2024-04-11 13:05:11.30466
1516	Gilbert Islands	G	118	2024-04-11 13:05:11.308551	2024-04-11 13:05:11.308551
1517	Line Islands	L	118	2024-04-11 13:05:11.312164	2024-04-11 13:05:11.312164
1518	Phoenix Islands	P	118	2024-04-11 13:05:11.315991	2024-04-11 13:05:11.315991
1519	Andjouân (Anjwān)	A	119	2024-04-11 13:05:11.319808	2024-04-11 13:05:11.319808
1520	Andjazîdja (Anjazījah)	G	119	2024-04-11 13:05:11.323432	2024-04-11 13:05:11.323432
1521	Moûhîlî (Mūhīlī)	M	119	2024-04-11 13:05:11.32712	2024-04-11 13:05:11.32712
1522	Saint Kitts	K	120	2024-04-11 13:05:11.33064	2024-04-11 13:05:11.33064
1523	Nevis	N	120	2024-04-11 13:05:11.334072	2024-04-11 13:05:11.334072
1524	P’yŏngyang	01	121	2024-04-11 13:05:11.337906	2024-04-11 13:05:11.337906
1525	P’yŏngan-namdo	02	121	2024-04-11 13:05:11.34137	2024-04-11 13:05:11.34137
1526	P’yŏngan-bukto	03	121	2024-04-11 13:05:11.34482	2024-04-11 13:05:11.34482
1527	Chagang-do	04	121	2024-04-11 13:05:11.348364	2024-04-11 13:05:11.348364
1528	Hwanghae-namdo	05	121	2024-04-11 13:05:11.351903	2024-04-11 13:05:11.351903
1529	Hwanghae-bukto	06	121	2024-04-11 13:05:11.355417	2024-04-11 13:05:11.355417
1530	Kangwŏn-do	07	121	2024-04-11 13:05:11.358831	2024-04-11 13:05:11.358831
1531	Hamgyŏng-namdo	08	121	2024-04-11 13:05:11.362228	2024-04-11 13:05:11.362228
1532	Hamgyŏng-bukto	09	121	2024-04-11 13:05:11.365914	2024-04-11 13:05:11.365914
1533	Yanggang-do	10	121	2024-04-11 13:05:11.369455	2024-04-11 13:05:11.369455
1534	Nasŏn (Najin-Sŏnbong)	13	121	2024-04-11 13:05:11.37293	2024-04-11 13:05:11.37293
1535	Seoul Teugbyeolsi	11	122	2024-04-11 13:05:11.376662	2024-04-11 13:05:11.376662
1536	Busan Gwang'yeogsi	26	122	2024-04-11 13:05:11.380018	2024-04-11 13:05:11.380018
1537	Daegu Gwang'yeogsi	27	122	2024-04-11 13:05:11.383427	2024-04-11 13:05:11.383427
1538	Incheon Gwang'yeogsi	28	122	2024-04-11 13:05:11.387219	2024-04-11 13:05:11.387219
1539	Gwangju Gwang'yeogsi	29	122	2024-04-11 13:05:11.390567	2024-04-11 13:05:11.390567
1540	Daejeon Gwang'yeogsi	30	122	2024-04-11 13:05:11.393963	2024-04-11 13:05:11.393963
1541	Ulsan Gwang'yeogsi	31	122	2024-04-11 13:05:11.397447	2024-04-11 13:05:11.397447
1542	Gyeonggido	41	122	2024-04-11 13:05:11.400891	2024-04-11 13:05:11.400891
1543	Gang'weondo	42	122	2024-04-11 13:05:11.40444	2024-04-11 13:05:11.40444
1544	Chungcheongbukdo	43	122	2024-04-11 13:05:11.408022	2024-04-11 13:05:11.408022
1545	Chungcheongnamdo	44	122	2024-04-11 13:05:11.411402	2024-04-11 13:05:11.411402
1546	Jeonrabukdo	45	122	2024-04-11 13:05:11.414855	2024-04-11 13:05:11.414855
1547	Jeonranamdo	46	122	2024-04-11 13:05:11.418268	2024-04-11 13:05:11.418268
1548	Gyeongsangbukdo	47	122	2024-04-11 13:05:11.421624	2024-04-11 13:05:11.421624
1549	Gyeongsangnamdo	48	122	2024-04-11 13:05:11.425285	2024-04-11 13:05:11.425285
1550	Jejudo	49	122	2024-04-11 13:05:11.428711	2024-04-11 13:05:11.428711
1551	Al Ahmadi	AH	123	2024-04-11 13:05:11.432087	2024-04-11 13:05:11.432087
1552	Al Farwānīyah	FA	123	2024-04-11 13:05:11.437131	2024-04-11 13:05:11.437131
1553	Hawallī	HA	123	2024-04-11 13:05:11.440778	2024-04-11 13:05:11.440778
1554	Al Jahrrā’	JA	123	2024-04-11 13:05:11.444377	2024-04-11 13:05:11.444377
1555	Al Kuwayt (Al ‘Āşimah)	KU	123	2024-04-11 13:05:11.447813	2024-04-11 13:05:11.447813
1556	Mubārak al Kabīr	MU	123	2024-04-11 13:05:11.451334	2024-04-11 13:05:11.451334
1557	Aqmola oblysy	AKM	125	2024-04-11 13:05:11.456959	2024-04-11 13:05:11.456959
1558	Aqtöbe oblysy	AKT	125	2024-04-11 13:05:11.463002	2024-04-11 13:05:11.463002
1559	Almaty	ALA	125	2024-04-11 13:05:11.466623	2024-04-11 13:05:11.466623
1560	Almaty oblysy	ALM	125	2024-04-11 13:05:11.470142	2024-04-11 13:05:11.470142
1561	Astana	AST	125	2024-04-11 13:05:11.473882	2024-04-11 13:05:11.473882
1562	Atyraū oblysy	ATY	125	2024-04-11 13:05:11.477481	2024-04-11 13:05:11.477481
1563	Qaraghandy oblysy	KAR	125	2024-04-11 13:05:11.481036	2024-04-11 13:05:11.481036
1564	Qostanay oblysy	KUS	125	2024-04-11 13:05:11.484582	2024-04-11 13:05:11.484582
1565	Qyzylorda oblysy	KZY	125	2024-04-11 13:05:11.487964	2024-04-11 13:05:11.487964
1566	Mangghystaū oblysy	MAN	125	2024-04-11 13:05:11.49148	2024-04-11 13:05:11.49148
1567	Pavlodar oblysy	PAV	125	2024-04-11 13:05:11.495027	2024-04-11 13:05:11.495027
1568	Soltüstik Quzaqstan oblysy	SEV	125	2024-04-11 13:05:11.498625	2024-04-11 13:05:11.498625
1569	Shyghys Qazaqstan oblysy	VOS	125	2024-04-11 13:05:11.502318	2024-04-11 13:05:11.502318
1570	Ongtüstik Qazaqstan oblysy	YUZ	125	2024-04-11 13:05:11.505902	2024-04-11 13:05:11.505902
1571	Batys Quzaqstan oblysy	ZAP	125	2024-04-11 13:05:11.509325	2024-04-11 13:05:11.509325
1572	Zhambyl oblysy	ZHA	125	2024-04-11 13:05:11.512778	2024-04-11 13:05:11.512778
1573	Attapu	AT	126	2024-04-11 13:05:11.516314	2024-04-11 13:05:11.516314
1574	Bokèo	BK	126	2024-04-11 13:05:11.519814	2024-04-11 13:05:11.519814
1575	Bolikhamxai	BL	126	2024-04-11 13:05:11.523597	2024-04-11 13:05:11.523597
1576	Champasak	CH	126	2024-04-11 13:05:11.527058	2024-04-11 13:05:11.527058
1577	Houaphan	HO	126	2024-04-11 13:05:11.530506	2024-04-11 13:05:11.530506
1578	Khammouan	KH	126	2024-04-11 13:05:11.534109	2024-04-11 13:05:11.534109
1579	Louang Namtha	LM	126	2024-04-11 13:05:11.537652	2024-04-11 13:05:11.537652
1580	Louangphabang	LP	126	2024-04-11 13:05:11.541212	2024-04-11 13:05:11.541212
1581	Oudômxai	OU	126	2024-04-11 13:05:11.544757	2024-04-11 13:05:11.544757
1582	Phôngsali	PH	126	2024-04-11 13:05:11.548427	2024-04-11 13:05:11.548427
1583	Salavan	SL	126	2024-04-11 13:05:11.552106	2024-04-11 13:05:11.552106
1584	Savannakhét	SV	126	2024-04-11 13:05:11.555889	2024-04-11 13:05:11.555889
1585	Vientiane	VI	126	2024-04-11 13:05:11.560041	2024-04-11 13:05:11.560041
1586	Vientiane	VT	126	2024-04-11 13:05:11.563728	2024-04-11 13:05:11.563728
1587	Xaignabouli	XA	126	2024-04-11 13:05:11.567347	2024-04-11 13:05:11.567347
1588	Xékong	XE	126	2024-04-11 13:05:11.571134	2024-04-11 13:05:11.571134
1589	Xiangkhouang	XI	126	2024-04-11 13:05:11.574854	2024-04-11 13:05:11.574854
1590	Xaisômboun	XS	126	2024-04-11 13:05:11.578458	2024-04-11 13:05:11.578458
1591	Aakkâr	AK	127	2024-04-11 13:05:11.582188	2024-04-11 13:05:11.582188
1592	Liban-Nord	AS	127	2024-04-11 13:05:11.58578	2024-04-11 13:05:11.58578
1593	Beyrouth	BA	127	2024-04-11 13:05:11.589309	2024-04-11 13:05:11.589309
1594	Baalbek-Hermel	BH	127	2024-04-11 13:05:11.59305	2024-04-11 13:05:11.59305
1595	Béqaa	BI	127	2024-04-11 13:05:11.596619	2024-04-11 13:05:11.596619
1596	Liban-Sud	JA	127	2024-04-11 13:05:11.600158	2024-04-11 13:05:11.600158
1597	Mont-Liban	JL	127	2024-04-11 13:05:11.60365	2024-04-11 13:05:11.60365
1598	Nabatîyé	NA	127	2024-04-11 13:05:11.607095	2024-04-11 13:05:11.607095
1599	Balzers	01	129	2024-04-11 13:05:11.610774	2024-04-11 13:05:11.610774
1600	Eschen	02	129	2024-04-11 13:05:11.614241	2024-04-11 13:05:11.614241
1601	Gamprin	03	129	2024-04-11 13:05:11.617708	2024-04-11 13:05:11.617708
1602	Mauren	04	129	2024-04-11 13:05:11.62149	2024-04-11 13:05:11.62149
1603	Planken	05	129	2024-04-11 13:05:11.625062	2024-04-11 13:05:11.625062
1604	Ruggell	06	129	2024-04-11 13:05:11.628575	2024-04-11 13:05:11.628575
1605	Schaan	07	129	2024-04-11 13:05:11.632057	2024-04-11 13:05:11.632057
1606	Schellenberg	08	129	2024-04-11 13:05:11.635494	2024-04-11 13:05:11.635494
1607	Triesen	09	129	2024-04-11 13:05:11.639111	2024-04-11 13:05:11.639111
1608	Triesenberg	10	129	2024-04-11 13:05:11.642582	2024-04-11 13:05:11.642582
1609	Vaduz	11	129	2024-04-11 13:05:11.646115	2024-04-11 13:05:11.646115
1610	Basnāhira paḷāta	1	130	2024-04-11 13:05:11.649858	2024-04-11 13:05:11.649858
1611	Madhyama paḷāta	2	130	2024-04-11 13:05:11.653471	2024-04-11 13:05:11.653471
1612	Dakuṇu paḷāta	3	130	2024-04-11 13:05:11.657003	2024-04-11 13:05:11.657003
1613	Uturu paḷāta	4	130	2024-04-11 13:05:11.660634	2024-04-11 13:05:11.660634
1614	Næ̆gĕnahira paḷāta	5	130	2024-04-11 13:05:11.664344	2024-04-11 13:05:11.664344
1615	Vayamba paḷāta	6	130	2024-04-11 13:05:11.669069	2024-04-11 13:05:11.669069
1616	Uturumæ̆da paḷāta	7	130	2024-04-11 13:05:11.672998	2024-04-11 13:05:11.672998
1617	Ūva paḷāta	8	130	2024-04-11 13:05:11.67689	2024-04-11 13:05:11.67689
1618	Sabaragamuva paḷāta	9	130	2024-04-11 13:05:11.681015	2024-04-11 13:05:11.681015
1619	Bong	BG	131	2024-04-11 13:05:11.687795	2024-04-11 13:05:11.687795
1620	Bomi	BM	131	2024-04-11 13:05:11.692031	2024-04-11 13:05:11.692031
1621	Grand Cape Mount	CM	131	2024-04-11 13:05:11.696054	2024-04-11 13:05:11.696054
1622	Grand Bassa	GB	131	2024-04-11 13:05:11.700066	2024-04-11 13:05:11.700066
1623	Grand Gedeh	GG	131	2024-04-11 13:05:11.704012	2024-04-11 13:05:11.704012
1624	Grand Kru	GK	131	2024-04-11 13:05:11.710012	2024-04-11 13:05:11.710012
1625	Lofa	LO	131	2024-04-11 13:05:11.713703	2024-04-11 13:05:11.713703
1626	Margibi	MG	131	2024-04-11 13:05:11.717457	2024-04-11 13:05:11.717457
1627	Montserrado	MO	131	2024-04-11 13:05:11.721442	2024-04-11 13:05:11.721442
1628	Maryland	MY	131	2024-04-11 13:05:11.725527	2024-04-11 13:05:11.725527
1629	Nimba	NI	131	2024-04-11 13:05:11.729512	2024-04-11 13:05:11.729512
1630	Rivercess	RI	131	2024-04-11 13:05:11.734611	2024-04-11 13:05:11.734611
1631	Sinoe	SI	131	2024-04-11 13:05:11.739229	2024-04-11 13:05:11.739229
1632	Maseru	A	132	2024-04-11 13:05:11.743292	2024-04-11 13:05:11.743292
1633	Butha-Buthe	B	132	2024-04-11 13:05:11.747176	2024-04-11 13:05:11.747176
1634	Leribe	C	132	2024-04-11 13:05:11.751076	2024-04-11 13:05:11.751076
1635	Berea	D	132	2024-04-11 13:05:11.755066	2024-04-11 13:05:11.755066
1636	Mafeteng	E	132	2024-04-11 13:05:11.759059	2024-04-11 13:05:11.759059
1637	Mohale's Hoek	F	132	2024-04-11 13:05:11.762983	2024-04-11 13:05:11.762983
1638	Quthing	G	132	2024-04-11 13:05:11.767003	2024-04-11 13:05:11.767003
1639	Qacha's Nek	H	132	2024-04-11 13:05:11.77078	2024-04-11 13:05:11.77078
1640	Mokhotlong	J	132	2024-04-11 13:05:11.776107	2024-04-11 13:05:11.776107
1641	Thaba-Tseka	K	132	2024-04-11 13:05:11.779855	2024-04-11 13:05:11.779855
1642	Alytaus Apskritis	AL	133	2024-04-11 13:05:11.783827	2024-04-11 13:05:11.783827
1643	Klaipėdos Apskritis	KL	133	2024-04-11 13:05:11.787689	2024-04-11 13:05:11.787689
1644	Kauno Apskritis	KU	133	2024-04-11 13:05:11.791289	2024-04-11 13:05:11.791289
1645	Marijampolės Apskritis	MR	133	2024-04-11 13:05:11.795081	2024-04-11 13:05:11.795081
1646	Panevėžio Apskritis	PN	133	2024-04-11 13:05:11.798828	2024-04-11 13:05:11.798828
1647	Šiaulių Apskritis	SA	133	2024-04-11 13:05:11.802681	2024-04-11 13:05:11.802681
1648	Tauragés Apskritis	TA	133	2024-04-11 13:05:11.806557	2024-04-11 13:05:11.806557
1649	Telšių Apskritis	TE	133	2024-04-11 13:05:11.810296	2024-04-11 13:05:11.810296
1650	Utenos Apskritis	UT	133	2024-04-11 13:05:11.814014	2024-04-11 13:05:11.814014
1651	Vilniaus Apskritis	VL	133	2024-04-11 13:05:11.817575	2024-04-11 13:05:11.817575
1652	Diekirch	D	134	2024-04-11 13:05:11.821309	2024-04-11 13:05:11.821309
1653	Grevenmacher	G	134	2024-04-11 13:05:11.8251	2024-04-11 13:05:11.8251
1654	Luxembourg	L	134	2024-04-11 13:05:11.828656	2024-04-11 13:05:11.828656
1655	Aglonas novads	001	135	2024-04-11 13:05:11.832274	2024-04-11 13:05:11.832274
1656	Aizkraukles novads	002	135	2024-04-11 13:05:11.835934	2024-04-11 13:05:11.835934
1657	Aizputes novads	003	135	2024-04-11 13:05:11.83952	2024-04-11 13:05:11.83952
1658	Aknīstes novads	004	135	2024-04-11 13:05:11.84296	2024-04-11 13:05:11.84296
1659	Alojas novads	005	135	2024-04-11 13:05:11.846451	2024-04-11 13:05:11.846451
1660	Alsungas novads	006	135	2024-04-11 13:05:11.850128	2024-04-11 13:05:11.850128
1661	Alūksnes novads	007	135	2024-04-11 13:05:11.853759	2024-04-11 13:05:11.853759
1662	Amatas novads	008	135	2024-04-11 13:05:11.857538	2024-04-11 13:05:11.857538
1663	Apes novads	009	135	2024-04-11 13:05:11.861084	2024-04-11 13:05:11.861084
1664	Auces novads	010	135	2024-04-11 13:05:11.864531	2024-04-11 13:05:11.864531
1665	Ādažu novads	011	135	2024-04-11 13:05:11.867952	2024-04-11 13:05:11.867952
1666	Babītes novads	012	135	2024-04-11 13:05:11.871464	2024-04-11 13:05:11.871464
1667	Baldones novads	013	135	2024-04-11 13:05:11.874978	2024-04-11 13:05:11.874978
1668	Baltinavas novads	014	135	2024-04-11 13:05:11.878483	2024-04-11 13:05:11.878483
1669	Balvu novads	015	135	2024-04-11 13:05:11.881874	2024-04-11 13:05:11.881874
1670	Bauskas novads	016	135	2024-04-11 13:05:11.885401	2024-04-11 13:05:11.885401
1671	Beverīnas novads	017	135	2024-04-11 13:05:11.888956	2024-04-11 13:05:11.888956
1672	Brocēnu novads	018	135	2024-04-11 13:05:11.892445	2024-04-11 13:05:11.892445
1673	Burtnieku novads	019	135	2024-04-11 13:05:11.895967	2024-04-11 13:05:11.895967
1674	Carnikavas novads	020	135	2024-04-11 13:05:11.899473	2024-04-11 13:05:11.899473
1675	Cesvaines novads	021	135	2024-04-11 13:05:11.903238	2024-04-11 13:05:11.903238
1676	Cēsu novads	022	135	2024-04-11 13:05:11.906916	2024-04-11 13:05:11.906916
1677	Ciblas novads	023	135	2024-04-11 13:05:11.910536	2024-04-11 13:05:11.910536
1678	Dagdas novads	024	135	2024-04-11 13:05:11.91405	2024-04-11 13:05:11.91405
1679	Daugavpils novads	025	135	2024-04-11 13:05:11.917591	2024-04-11 13:05:11.917591
1680	Dobeles novads	026	135	2024-04-11 13:05:11.921177	2024-04-11 13:05:11.921177
1681	Dundagas novads	027	135	2024-04-11 13:05:11.924872	2024-04-11 13:05:11.924872
1682	Durbes novads	028	135	2024-04-11 13:05:11.928437	2024-04-11 13:05:11.928437
1683	Engures novads	029	135	2024-04-11 13:05:11.931974	2024-04-11 13:05:11.931974
1684	Ērgļu novads	030	135	2024-04-11 13:05:11.935577	2024-04-11 13:05:11.935577
1685	Garkalnes novads	031	135	2024-04-11 13:05:11.93903	2024-04-11 13:05:11.93903
1686	Grobiņas novads	032	135	2024-04-11 13:05:11.942561	2024-04-11 13:05:11.942561
1687	Gulbenes novads	033	135	2024-04-11 13:05:11.946111	2024-04-11 13:05:11.946111
1688	Iecavas novads	034	135	2024-04-11 13:05:11.94969	2024-04-11 13:05:11.94969
1689	Ikšķiles novads	035	135	2024-04-11 13:05:11.953179	2024-04-11 13:05:11.953179
1690	Ilūkstes novads	036	135	2024-04-11 13:05:11.959926	2024-04-11 13:05:11.959926
1691	Inčukalna novads	037	135	2024-04-11 13:05:11.966671	2024-04-11 13:05:11.966671
1692	Jaunjelgavas novads	038	135	2024-04-11 13:05:11.970298	2024-04-11 13:05:11.970298
1693	Jaunpiebalgas novads	039	135	2024-04-11 13:05:11.973921	2024-04-11 13:05:11.973921
1694	Jaunpils novads	040	135	2024-04-11 13:05:11.977507	2024-04-11 13:05:11.977507
1695	Jelgavas novads	041	135	2024-04-11 13:05:11.981213	2024-04-11 13:05:11.981213
1696	Jēkabpils novads	042	135	2024-04-11 13:05:11.985187	2024-04-11 13:05:11.985187
1697	Kandavas novads	043	135	2024-04-11 13:05:11.988655	2024-04-11 13:05:11.988655
1698	Kārsavas novads	044	135	2024-04-11 13:05:11.992481	2024-04-11 13:05:11.992481
1699	Kocēnu novads	045	135	2024-04-11 13:05:11.996157	2024-04-11 13:05:11.996157
1700	Kokneses novads	046	135	2024-04-11 13:05:11.999839	2024-04-11 13:05:11.999839
1701	Krāslavas novads	047	135	2024-04-11 13:05:12.004278	2024-04-11 13:05:12.004278
1702	Krimuldas novads	048	135	2024-04-11 13:05:12.008371	2024-04-11 13:05:12.008371
1703	Krustpils novads	049	135	2024-04-11 13:05:12.012382	2024-04-11 13:05:12.012382
1704	Kuldīgas novads	050	135	2024-04-11 13:05:12.01621	2024-04-11 13:05:12.01621
1705	Ķeguma novads	051	135	2024-04-11 13:05:12.020017	2024-04-11 13:05:12.020017
1706	Ķekavas novads	052	135	2024-04-11 13:05:12.02385	2024-04-11 13:05:12.02385
1707	Lielvārdes novads	053	135	2024-04-11 13:05:12.027663	2024-04-11 13:05:12.027663
1708	Limbažu novads	054	135	2024-04-11 13:05:12.031259	2024-04-11 13:05:12.031259
1709	Līgatnes novads	055	135	2024-04-11 13:05:12.034843	2024-04-11 13:05:12.034843
1710	Līvānu novads	056	135	2024-04-11 13:05:12.038474	2024-04-11 13:05:12.038474
1711	Lubānas novads	057	135	2024-04-11 13:05:12.042056	2024-04-11 13:05:12.042056
1712	Ludzas novads	058	135	2024-04-11 13:05:12.045627	2024-04-11 13:05:12.045627
1713	Madonas novads	059	135	2024-04-11 13:05:12.049113	2024-04-11 13:05:12.049113
1714	Mazsalacas novads	060	135	2024-04-11 13:05:12.052529	2024-04-11 13:05:12.052529
1715	Mālpils novads	061	135	2024-04-11 13:05:12.056068	2024-04-11 13:05:12.056068
1716	Mārupes novads	062	135	2024-04-11 13:05:12.060038	2024-04-11 13:05:12.060038
1717	Mērsraga novads	063	135	2024-04-11 13:05:12.063653	2024-04-11 13:05:12.063653
1718	Naukšēnu novads	064	135	2024-04-11 13:05:12.067239	2024-04-11 13:05:12.067239
1719	Neretas novads	065	135	2024-04-11 13:05:12.070927	2024-04-11 13:05:12.070927
1720	Nīcas novads	066	135	2024-04-11 13:05:12.074619	2024-04-11 13:05:12.074619
1721	Ogres novads	067	135	2024-04-11 13:05:12.078298	2024-04-11 13:05:12.078298
1722	Olaines novads	068	135	2024-04-11 13:05:12.082054	2024-04-11 13:05:12.082054
1723	Ozolnieku novads	069	135	2024-04-11 13:05:12.085717	2024-04-11 13:05:12.085717
1724	Pārgaujas novads	070	135	2024-04-11 13:05:12.089366	2024-04-11 13:05:12.089366
1725	Pāvilostas novads	071	135	2024-04-11 13:05:12.093025	2024-04-11 13:05:12.093025
1726	Pļaviņu novads	072	135	2024-04-11 13:05:12.096722	2024-04-11 13:05:12.096722
1727	Preiļu novads	073	135	2024-04-11 13:05:12.100562	2024-04-11 13:05:12.100562
1728	Priekules novads	074	135	2024-04-11 13:05:12.107281	2024-04-11 13:05:12.107281
1729	Priekuļu novads	075	135	2024-04-11 13:05:12.11135	2024-04-11 13:05:12.11135
1730	Raunas novads	076	135	2024-04-11 13:05:12.115108	2024-04-11 13:05:12.115108
1731	Rēzeknes novads	077	135	2024-04-11 13:05:12.11946	2024-04-11 13:05:12.11946
1732	Riebiņu novads	078	135	2024-04-11 13:05:12.12329	2024-04-11 13:05:12.12329
1733	Rojas novads	079	135	2024-04-11 13:05:12.127229	2024-04-11 13:05:12.127229
1734	Ropažu novads	080	135	2024-04-11 13:05:12.130892	2024-04-11 13:05:12.130892
1735	Rucavas novads	081	135	2024-04-11 13:05:12.134552	2024-04-11 13:05:12.134552
1736	Rugāju novads	082	135	2024-04-11 13:05:12.138215	2024-04-11 13:05:12.138215
1737	Rundāles novads	083	135	2024-04-11 13:05:12.141871	2024-04-11 13:05:12.141871
1738	Rūjienas novads	084	135	2024-04-11 13:05:12.145692	2024-04-11 13:05:12.145692
1739	Salas novads	085	135	2024-04-11 13:05:12.149388	2024-04-11 13:05:12.149388
1740	Salacgrīvas novads	086	135	2024-04-11 13:05:12.152892	2024-04-11 13:05:12.152892
1741	Salaspils novads	087	135	2024-04-11 13:05:12.156565	2024-04-11 13:05:12.156565
1742	Saldus novads	088	135	2024-04-11 13:05:12.160132	2024-04-11 13:05:12.160132
1743	Saulkrastu novads	089	135	2024-04-11 13:05:12.163661	2024-04-11 13:05:12.163661
1744	Sējas novads	090	135	2024-04-11 13:05:12.167074	2024-04-11 13:05:12.167074
1745	Siguldas novads	091	135	2024-04-11 13:05:12.17048	2024-04-11 13:05:12.17048
1746	Skrīveru novads	092	135	2024-04-11 13:05:12.174219	2024-04-11 13:05:12.174219
1747	Skrundas novads	093	135	2024-04-11 13:05:12.178104	2024-04-11 13:05:12.178104
1748	Smiltenes novads	094	135	2024-04-11 13:05:12.181843	2024-04-11 13:05:12.181843
1749	Stopiņu novads	095	135	2024-04-11 13:05:12.185447	2024-04-11 13:05:12.185447
1750	Strenču novads	096	135	2024-04-11 13:05:12.188998	2024-04-11 13:05:12.188998
1751	Talsu novads	097	135	2024-04-11 13:05:12.195435	2024-04-11 13:05:12.195435
1752	Tērvetes novads	098	135	2024-04-11 13:05:12.201132	2024-04-11 13:05:12.201132
1753	Tukuma novads	099	135	2024-04-11 13:05:12.205194	2024-04-11 13:05:12.205194
1754	Vaiņodes novads	100	135	2024-04-11 13:05:12.20925	2024-04-11 13:05:12.20925
1755	Valkas novads	101	135	2024-04-11 13:05:12.213181	2024-04-11 13:05:12.213181
1756	Varakļānu novads	102	135	2024-04-11 13:05:12.217032	2024-04-11 13:05:12.217032
1757	Vārkavas novads	103	135	2024-04-11 13:05:12.220974	2024-04-11 13:05:12.220974
1758	Vecpiebalgas novads	104	135	2024-04-11 13:05:12.22512	2024-04-11 13:05:12.22512
1759	Vecumnieku novads	105	135	2024-04-11 13:05:12.229032	2024-04-11 13:05:12.229032
1760	Ventspils novads	106	135	2024-04-11 13:05:12.23281	2024-04-11 13:05:12.23281
1761	Viesītes novads	107	135	2024-04-11 13:05:12.236512	2024-04-11 13:05:12.236512
1762	Viļakas novads	108	135	2024-04-11 13:05:12.240193	2024-04-11 13:05:12.240193
1763	Viļānu novads	109	135	2024-04-11 13:05:12.243918	2024-04-11 13:05:12.243918
1764	Zilupes novads	110	135	2024-04-11 13:05:12.247714	2024-04-11 13:05:12.247714
1765	Daugavpils	DGV	135	2024-04-11 13:05:12.251353	2024-04-11 13:05:12.251353
1766	Jelgava	JEL	135	2024-04-11 13:05:12.255269	2024-04-11 13:05:12.255269
1767	Jēkabpils	JKB	135	2024-04-11 13:05:12.258902	2024-04-11 13:05:12.258902
1768	Jūrmala	JUR	135	2024-04-11 13:05:12.262655	2024-04-11 13:05:12.262655
1769	Liepāja	LPX	135	2024-04-11 13:05:12.266648	2024-04-11 13:05:12.266648
1770	Rēzekne	REZ	135	2024-04-11 13:05:12.270257	2024-04-11 13:05:12.270257
1771	Rīga	RIX	135	2024-04-11 13:05:12.274488	2024-04-11 13:05:12.274488
1772	Ventspils	VEN	135	2024-04-11 13:05:12.278352	2024-04-11 13:05:12.278352
1773	Valmiera	VMR	135	2024-04-11 13:05:12.282228	2024-04-11 13:05:12.282228
1774	Banghāzī	BA	136	2024-04-11 13:05:12.286115	2024-04-11 13:05:12.286115
1775	Al Buţnān	BU	136	2024-04-11 13:05:12.289779	2024-04-11 13:05:12.289779
1776	Darnah	DR	136	2024-04-11 13:05:12.293638	2024-04-11 13:05:12.293638
1777	Ghāt	GT	136	2024-04-11 13:05:12.297544	2024-04-11 13:05:12.297544
1778	Al Jabal al Akhḑar	JA	136	2024-04-11 13:05:12.301239	2024-04-11 13:05:12.301239
1779	Jaghbūb	JB	136	2024-04-11 13:05:12.305015	2024-04-11 13:05:12.305015
1780	Al Jabal al Gharbī	JG	136	2024-04-11 13:05:12.308766	2024-04-11 13:05:12.308766
1781	Al Jifārah	JI	136	2024-04-11 13:05:12.312462	2024-04-11 13:05:12.312462
1782	Al Jufrah	JU	136	2024-04-11 13:05:12.316194	2024-04-11 13:05:12.316194
1783	Al Kufrah	KF	136	2024-04-11 13:05:12.31982	2024-04-11 13:05:12.31982
1784	Al Marqab	MB	136	2024-04-11 13:05:12.323471	2024-04-11 13:05:12.323471
1785	Mişrātah	MI	136	2024-04-11 13:05:12.327017	2024-04-11 13:05:12.327017
1786	Al Marj	MJ	136	2024-04-11 13:05:12.330507	2024-04-11 13:05:12.330507
1787	Murzuq	MQ	136	2024-04-11 13:05:12.334014	2024-04-11 13:05:12.334014
1788	Nālūt	NL	136	2024-04-11 13:05:12.337505	2024-04-11 13:05:12.337505
1789	An Nuqaţ al Khams	NQ	136	2024-04-11 13:05:12.34105	2024-04-11 13:05:12.34105
1790	Sabhā	SB	136	2024-04-11 13:05:12.344634	2024-04-11 13:05:12.344634
1791	Surt	SR	136	2024-04-11 13:05:12.348129	2024-04-11 13:05:12.348129
1792	Ţarābulus	TB	136	2024-04-11 13:05:12.351562	2024-04-11 13:05:12.351562
1793	Al Wāḩāt	WA	136	2024-04-11 13:05:12.35523	2024-04-11 13:05:12.35523
1794	Wādī al Ḩayāt	WD	136	2024-04-11 13:05:12.35876	2024-04-11 13:05:12.35876
1795	Wādī ash Shāţiʾ	WS	136	2024-04-11 13:05:12.362471	2024-04-11 13:05:12.362471
1796	Az Zāwiyah	ZA	136	2024-04-11 13:05:12.365942	2024-04-11 13:05:12.365942
1797	Tanger-Tétouan-Al Hoceïma	01	137	2024-04-11 13:05:12.369626	2024-04-11 13:05:12.369626
1798	L'Oriental	02	137	2024-04-11 13:05:12.373251	2024-04-11 13:05:12.373251
1799	Fès-Meknès	03	137	2024-04-11 13:05:12.376795	2024-04-11 13:05:12.376795
1800	Rabat-Salé-Kénitra	04	137	2024-04-11 13:05:12.380386	2024-04-11 13:05:12.380386
1801	Béni Mellal-Khénifra	05	137	2024-04-11 13:05:12.383916	2024-04-11 13:05:12.383916
1802	Casablanca-Settat	06	137	2024-04-11 13:05:12.387401	2024-04-11 13:05:12.387401
1803	Marrakech-Safi	07	137	2024-04-11 13:05:12.390872	2024-04-11 13:05:12.390872
1804	Drâa-Tafilalet	08	137	2024-04-11 13:05:12.394558	2024-04-11 13:05:12.394558
1805	Souss-Massa	09	137	2024-04-11 13:05:12.398089	2024-04-11 13:05:12.398089
1806	Guelmim-Oued Noun	10	137	2024-04-11 13:05:12.402441	2024-04-11 13:05:12.402441
1807	Laâyoune-Sakia El Hamra	11	137	2024-04-11 13:05:12.405863	2024-04-11 13:05:12.405863
1808	Dakhla-Oued Ed Dahab	12	137	2024-04-11 13:05:12.409578	2024-04-11 13:05:12.409578
1809	La Colle	CL	138	2024-04-11 13:05:12.413316	2024-04-11 13:05:12.413316
1810	La Condamine	CO	138	2024-04-11 13:05:12.416841	2024-04-11 13:05:12.416841
1811	Fontvieille	FO	138	2024-04-11 13:05:12.420416	2024-04-11 13:05:12.420416
1812	La Gare	GA	138	2024-04-11 13:05:12.424093	2024-04-11 13:05:12.424093
1813	Jardin Exotique	JE	138	2024-04-11 13:05:12.427897	2024-04-11 13:05:12.427897
1814	Larvotto	LA	138	2024-04-11 13:05:12.431699	2024-04-11 13:05:12.431699
1815	Malbousquet	MA	138	2024-04-11 13:05:12.435643	2024-04-11 13:05:12.435643
1816	Monte-Carlo	MC	138	2024-04-11 13:05:12.439437	2024-04-11 13:05:12.439437
1817	Moneghetti	MG	138	2024-04-11 13:05:12.443076	2024-04-11 13:05:12.443076
1818	Monaco-Ville	MO	138	2024-04-11 13:05:12.446707	2024-04-11 13:05:12.446707
1819	Moulins	MU	138	2024-04-11 13:05:12.450414	2024-04-11 13:05:12.450414
1820	Port-Hercule	PH	138	2024-04-11 13:05:12.453976	2024-04-11 13:05:12.453976
1821	Sainte-Dévote	SD	138	2024-04-11 13:05:12.458121	2024-04-11 13:05:12.458121
1822	La Source	SO	138	2024-04-11 13:05:12.463927	2024-04-11 13:05:12.463927
1823	Spélugues	SP	138	2024-04-11 13:05:12.467477	2024-04-11 13:05:12.467477
1824	Saint-Roman	SR	138	2024-04-11 13:05:12.471109	2024-04-11 13:05:12.471109
1825	Vallon de la Rousse	VR	138	2024-04-11 13:05:12.475099	2024-04-11 13:05:12.475099
1826	Anenii Noi	AN	139	2024-04-11 13:05:12.479054	2024-04-11 13:05:12.479054
1827	Bălți	BA	139	2024-04-11 13:05:12.482956	2024-04-11 13:05:12.482956
1828	Tighina	BD	139	2024-04-11 13:05:12.48676	2024-04-11 13:05:12.48676
1829	Briceni	BR	139	2024-04-11 13:05:12.490418	2024-04-11 13:05:12.490418
1830	Basarabeasca	BS	139	2024-04-11 13:05:12.494145	2024-04-11 13:05:12.494145
1831	Cahul	CA	139	2024-04-11 13:05:12.498048	2024-04-11 13:05:12.498048
1832	Călărași	CL	139	2024-04-11 13:05:12.501908	2024-04-11 13:05:12.501908
1833	Cimișlia	CM	139	2024-04-11 13:05:12.505687	2024-04-11 13:05:12.505687
1834	Criuleni	CR	139	2024-04-11 13:05:12.509429	2024-04-11 13:05:12.509429
1835	Căușeni	CS	139	2024-04-11 13:05:12.513184	2024-04-11 13:05:12.513184
1836	Cantemir	CT	139	2024-04-11 13:05:12.517059	2024-04-11 13:05:12.517059
1837	Chișinău	CU	139	2024-04-11 13:05:12.523674	2024-04-11 13:05:12.523674
1838	Dondușeni	DO	139	2024-04-11 13:05:12.527839	2024-04-11 13:05:12.527839
1839	Drochia	DR	139	2024-04-11 13:05:12.531806	2024-04-11 13:05:12.531806
1840	Dubăsari	DU	139	2024-04-11 13:05:12.535967	2024-04-11 13:05:12.535967
1841	Edineț	ED	139	2024-04-11 13:05:12.540027	2024-04-11 13:05:12.540027
1842	Fălești	FA	139	2024-04-11 13:05:12.543958	2024-04-11 13:05:12.543958
1843	Florești	FL	139	2024-04-11 13:05:12.54806	2024-04-11 13:05:12.54806
1844	Găgăuzia, Unitatea teritorială autonomă	GA	139	2024-04-11 13:05:12.552013	2024-04-11 13:05:12.552013
1845	Glodeni	GL	139	2024-04-11 13:05:12.555942	2024-04-11 13:05:12.555942
1846	Hîncești	HI	139	2024-04-11 13:05:12.560342	2024-04-11 13:05:12.560342
1847	Ialoveni	IA	139	2024-04-11 13:05:12.564343	2024-04-11 13:05:12.564343
1848	Leova	LE	139	2024-04-11 13:05:12.568362	2024-04-11 13:05:12.568362
1849	Nisporeni	NI	139	2024-04-11 13:05:12.572453	2024-04-11 13:05:12.572453
1850	Ocnița	OC	139	2024-04-11 13:05:12.57641	2024-04-11 13:05:12.57641
1851	Orhei	OR	139	2024-04-11 13:05:12.580283	2024-04-11 13:05:12.580283
1852	Rezina	RE	139	2024-04-11 13:05:12.583883	2024-04-11 13:05:12.583883
1853	Rîșcani	RI	139	2024-04-11 13:05:12.587595	2024-04-11 13:05:12.587595
1854	Șoldănești	SD	139	2024-04-11 13:05:12.591263	2024-04-11 13:05:12.591263
1855	Sîngerei	SI	139	2024-04-11 13:05:12.595023	2024-04-11 13:05:12.595023
1856	Stînga Nistrului, unitatea teritorială din	SN	139	2024-04-11 13:05:12.598935	2024-04-11 13:05:12.598935
1857	Soroca	SO	139	2024-04-11 13:05:12.602541	2024-04-11 13:05:12.602541
1858	Strășeni	ST	139	2024-04-11 13:05:12.606077	2024-04-11 13:05:12.606077
1859	Ștefan Vodă	SV	139	2024-04-11 13:05:12.6097	2024-04-11 13:05:12.6097
1860	Taraclia	TA	139	2024-04-11 13:05:12.613427	2024-04-11 13:05:12.613427
1861	Telenești	TE	139	2024-04-11 13:05:12.617296	2024-04-11 13:05:12.617296
1862	Ungheni	UN	139	2024-04-11 13:05:12.620935	2024-04-11 13:05:12.620935
1863	Andrijevica	01	140	2024-04-11 13:05:12.62463	2024-04-11 13:05:12.62463
1864	Bar	02	140	2024-04-11 13:05:12.628199	2024-04-11 13:05:12.628199
1865	Berane	03	140	2024-04-11 13:05:12.631786	2024-04-11 13:05:12.631786
1866	Bijelo Polje	04	140	2024-04-11 13:05:12.635524	2024-04-11 13:05:12.635524
1867	Budva	05	140	2024-04-11 13:05:12.639121	2024-04-11 13:05:12.639121
1868	Cetinje	06	140	2024-04-11 13:05:12.642695	2024-04-11 13:05:12.642695
1869	Danilovgrad	07	140	2024-04-11 13:05:12.646416	2024-04-11 13:05:12.646416
1870	Herceg-Novi	08	140	2024-04-11 13:05:12.650099	2024-04-11 13:05:12.650099
1871	Kolašin	09	140	2024-04-11 13:05:12.653736	2024-04-11 13:05:12.653736
1872	Kotor	10	140	2024-04-11 13:05:12.6574	2024-04-11 13:05:12.6574
1873	Mojkovac	11	140	2024-04-11 13:05:12.661104	2024-04-11 13:05:12.661104
1874	Nikšić	12	140	2024-04-11 13:05:12.664855	2024-04-11 13:05:12.664855
1875	Plav	13	140	2024-04-11 13:05:12.668413	2024-04-11 13:05:12.668413
1876	Pljevlja	14	140	2024-04-11 13:05:12.672058	2024-04-11 13:05:12.672058
1877	Plužine	15	140	2024-04-11 13:05:12.67571	2024-04-11 13:05:12.67571
1878	Podgorica	16	140	2024-04-11 13:05:12.679247	2024-04-11 13:05:12.679247
1879	Rožaje	17	140	2024-04-11 13:05:12.682955	2024-04-11 13:05:12.682955
1880	Šavnik	18	140	2024-04-11 13:05:12.686621	2024-04-11 13:05:12.686621
1881	Tivat	19	140	2024-04-11 13:05:12.690147	2024-04-11 13:05:12.690147
1882	Ulcinj	20	140	2024-04-11 13:05:12.693841	2024-04-11 13:05:12.693841
1883	Žabljak	21	140	2024-04-11 13:05:12.697567	2024-04-11 13:05:12.697567
1884	Toamasina	A	142	2024-04-11 13:05:12.701412	2024-04-11 13:05:12.701412
1885	Antsiranana	D	142	2024-04-11 13:05:12.705179	2024-04-11 13:05:12.705179
1886	Fianarantsoa	F	142	2024-04-11 13:05:12.711232	2024-04-11 13:05:12.711232
1887	Mahajanga	M	142	2024-04-11 13:05:12.71521	2024-04-11 13:05:12.71521
1888	Antananarivo	T	142	2024-04-11 13:05:12.718579	2024-04-11 13:05:12.718579
1889	Toliara	U	142	2024-04-11 13:05:12.721966	2024-04-11 13:05:12.721966
1890	Ralik chain	L	143	2024-04-11 13:05:12.725581	2024-04-11 13:05:12.725581
1891	Ratak chain	T	143	2024-04-11 13:05:12.728978	2024-04-11 13:05:12.728978
1892	Aerodrom	01	144	2024-04-11 13:05:12.733624	2024-04-11 13:05:12.733624
1893	Aračinovo	02	144	2024-04-11 13:05:12.737963	2024-04-11 13:05:12.737963
1894	Berovo	03	144	2024-04-11 13:05:12.741674	2024-04-11 13:05:12.741674
1895	Bitola	04	144	2024-04-11 13:05:12.745545	2024-04-11 13:05:12.745545
1896	Bogdanci	05	144	2024-04-11 13:05:12.749295	2024-04-11 13:05:12.749295
1897	Bogovinje	06	144	2024-04-11 13:05:12.753135	2024-04-11 13:05:12.753135
1898	Bosilovo	07	144	2024-04-11 13:05:12.756843	2024-04-11 13:05:12.756843
1899	Brvenica	08	144	2024-04-11 13:05:12.760543	2024-04-11 13:05:12.760543
1900	Butel	09	144	2024-04-11 13:05:12.764265	2024-04-11 13:05:12.764265
1901	Valandovo	10	144	2024-04-11 13:05:12.768015	2024-04-11 13:05:12.768015
1902	Vasilevo	11	144	2024-04-11 13:05:12.771756	2024-04-11 13:05:12.771756
1903	Vevčani	12	144	2024-04-11 13:05:12.775484	2024-04-11 13:05:12.775484
1904	Veles	13	144	2024-04-11 13:05:12.77909	2024-04-11 13:05:12.77909
1905	Vinica	14	144	2024-04-11 13:05:12.782662	2024-04-11 13:05:12.782662
1906	Vraneštica	15	144	2024-04-11 13:05:12.786214	2024-04-11 13:05:12.786214
1907	Vrapčište	16	144	2024-04-11 13:05:12.789798	2024-04-11 13:05:12.789798
1908	Gazi Baba	17	144	2024-04-11 13:05:12.793381	2024-04-11 13:05:12.793381
1909	Gevgelija	18	144	2024-04-11 13:05:12.797141	2024-04-11 13:05:12.797141
1910	Gostivar	19	144	2024-04-11 13:05:12.80079	2024-04-11 13:05:12.80079
1911	Gradsko	20	144	2024-04-11 13:05:12.804321	2024-04-11 13:05:12.804321
1912	Debar	21	144	2024-04-11 13:05:12.807778	2024-04-11 13:05:12.807778
1913	Debarca	22	144	2024-04-11 13:05:12.811283	2024-04-11 13:05:12.811283
1914	Delčevo	23	144	2024-04-11 13:05:12.816111	2024-04-11 13:05:12.816111
1915	Demir Kapija	24	144	2024-04-11 13:05:12.821394	2024-04-11 13:05:12.821394
1916	Demir Hisar	25	144	2024-04-11 13:05:12.824959	2024-04-11 13:05:12.824959
1917	Dojran	26	144	2024-04-11 13:05:12.828459	2024-04-11 13:05:12.828459
1918	Dolneni	27	144	2024-04-11 13:05:12.832137	2024-04-11 13:05:12.832137
1919	Drugovo	28	144	2024-04-11 13:05:12.835724	2024-04-11 13:05:12.835724
1920	Gjorče Petrov	29	144	2024-04-11 13:05:12.839256	2024-04-11 13:05:12.839256
1921	Želino	30	144	2024-04-11 13:05:12.842779	2024-04-11 13:05:12.842779
1922	Zajas	31	144	2024-04-11 13:05:12.84635	2024-04-11 13:05:12.84635
1923	Zelenikovo	32	144	2024-04-11 13:05:12.849963	2024-04-11 13:05:12.849963
1924	Zrnovci	33	144	2024-04-11 13:05:12.853534	2024-04-11 13:05:12.853534
1925	Ilinden	34	144	2024-04-11 13:05:12.85802	2024-04-11 13:05:12.85802
1926	Jegunovce	35	144	2024-04-11 13:05:12.861608	2024-04-11 13:05:12.861608
1927	Kavadarci	36	144	2024-04-11 13:05:12.865398	2024-04-11 13:05:12.865398
1928	Karbinci	37	144	2024-04-11 13:05:12.869035	2024-04-11 13:05:12.869035
1929	Karpoš	38	144	2024-04-11 13:05:12.872951	2024-04-11 13:05:12.872951
1930	Kisela Voda	39	144	2024-04-11 13:05:12.876698	2024-04-11 13:05:12.876698
1931	Kičevo	40	144	2024-04-11 13:05:12.880464	2024-04-11 13:05:12.880464
1932	Konče	41	144	2024-04-11 13:05:12.884222	2024-04-11 13:05:12.884222
1933	Kočani	42	144	2024-04-11 13:05:12.887894	2024-04-11 13:05:12.887894
1934	Kratovo	43	144	2024-04-11 13:05:12.891598	2024-04-11 13:05:12.891598
1935	Kriva Palanka	44	144	2024-04-11 13:05:12.895235	2024-04-11 13:05:12.895235
1936	Krivogaštani	45	144	2024-04-11 13:05:12.899021	2024-04-11 13:05:12.899021
1937	Kruševo	46	144	2024-04-11 13:05:12.902779	2024-04-11 13:05:12.902779
1938	Kumanovo	47	144	2024-04-11 13:05:12.906469	2024-04-11 13:05:12.906469
1939	Lipkovo	48	144	2024-04-11 13:05:12.910181	2024-04-11 13:05:12.910181
1940	Lozovo	49	144	2024-04-11 13:05:12.913792	2024-04-11 13:05:12.913792
1941	Mavrovo-i-Rostuša	50	144	2024-04-11 13:05:12.917367	2024-04-11 13:05:12.917367
1942	Makedonska Kamenica	51	144	2024-04-11 13:05:12.921121	2024-04-11 13:05:12.921121
1943	Makedonski Brod	52	144	2024-04-11 13:05:12.925074	2024-04-11 13:05:12.925074
1944	Mogila	53	144	2024-04-11 13:05:12.929042	2024-04-11 13:05:12.929042
1945	Negotino	54	144	2024-04-11 13:05:12.93303	2024-04-11 13:05:12.93303
1946	Novaci	55	144	2024-04-11 13:05:12.939743	2024-04-11 13:05:12.939743
1947	Novo Selo	56	144	2024-04-11 13:05:12.944444	2024-04-11 13:05:12.944444
1948	Oslomej	57	144	2024-04-11 13:05:12.948585	2024-04-11 13:05:12.948585
1949	Ohrid	58	144	2024-04-11 13:05:12.95238	2024-04-11 13:05:12.95238
1950	Petrovec	59	144	2024-04-11 13:05:12.956407	2024-04-11 13:05:12.956407
1951	Pehčevo	60	144	2024-04-11 13:05:12.961879	2024-04-11 13:05:12.961879
1952	Plasnica	61	144	2024-04-11 13:05:12.965536	2024-04-11 13:05:12.965536
1953	Prilep	62	144	2024-04-11 13:05:12.970328	2024-04-11 13:05:12.970328
1954	Probištip	63	144	2024-04-11 13:05:12.974561	2024-04-11 13:05:12.974561
1955	Radoviš	64	144	2024-04-11 13:05:12.978652	2024-04-11 13:05:12.978652
1956	Rankovce	65	144	2024-04-11 13:05:12.982568	2024-04-11 13:05:12.982568
1957	Resen	66	144	2024-04-11 13:05:12.986241	2024-04-11 13:05:12.986241
1958	Rosoman	67	144	2024-04-11 13:05:12.989916	2024-04-11 13:05:12.989916
1959	Saraj	68	144	2024-04-11 13:05:12.994503	2024-04-11 13:05:12.994503
1960	Sveti Nikole	69	144	2024-04-11 13:05:12.998511	2024-04-11 13:05:12.998511
1961	Sopište	70	144	2024-04-11 13:05:13.0022	2024-04-11 13:05:13.0022
1962	Staro Nagoričane	71	144	2024-04-11 13:05:13.005727	2024-04-11 13:05:13.005727
1963	Struga	72	144	2024-04-11 13:05:13.009268	2024-04-11 13:05:13.009268
1964	Strumica	73	144	2024-04-11 13:05:13.012749	2024-04-11 13:05:13.012749
1965	Studeničani	74	144	2024-04-11 13:05:13.016316	2024-04-11 13:05:13.016316
1966	Tearce	75	144	2024-04-11 13:05:13.020048	2024-04-11 13:05:13.020048
1967	Tetovo	76	144	2024-04-11 13:05:13.024607	2024-04-11 13:05:13.024607
1968	Centar	77	144	2024-04-11 13:05:13.02819	2024-04-11 13:05:13.02819
1969	Centar Župa	78	144	2024-04-11 13:05:13.033602	2024-04-11 13:05:13.033602
1970	Čair	79	144	2024-04-11 13:05:13.037546	2024-04-11 13:05:13.037546
1971	Čaška	80	144	2024-04-11 13:05:13.043779	2024-04-11 13:05:13.043779
1972	Češinovo-Obleševo	81	144	2024-04-11 13:05:13.048168	2024-04-11 13:05:13.048168
1973	Čučer Sandevo	82	144	2024-04-11 13:05:13.051999	2024-04-11 13:05:13.051999
1974	Štip	83	144	2024-04-11 13:05:13.05588	2024-04-11 13:05:13.05588
1975	Šuto Orizari	84	144	2024-04-11 13:05:13.060158	2024-04-11 13:05:13.060158
1976	Kayes	1	145	2024-04-11 13:05:13.064236	2024-04-11 13:05:13.064236
1977	Koulikoro	2	145	2024-04-11 13:05:13.068235	2024-04-11 13:05:13.068235
1978	Sikasso	3	145	2024-04-11 13:05:13.072395	2024-04-11 13:05:13.072395
1979	Ségou	4	145	2024-04-11 13:05:13.076285	2024-04-11 13:05:13.076285
1980	Mopti	5	145	2024-04-11 13:05:13.080083	2024-04-11 13:05:13.080083
1981	Tombouctou	6	145	2024-04-11 13:05:13.083773	2024-04-11 13:05:13.083773
1982	Gao	7	145	2024-04-11 13:05:13.087554	2024-04-11 13:05:13.087554
1983	Kidal	8	145	2024-04-11 13:05:13.091152	2024-04-11 13:05:13.091152
1984	Bamako	BK0	145	2024-04-11 13:05:13.094858	2024-04-11 13:05:13.094858
1985	Sagaing	01	146	2024-04-11 13:05:13.098603	2024-04-11 13:05:13.098603
1986	Bago	02	146	2024-04-11 13:05:13.102134	2024-04-11 13:05:13.102134
1987	Magway	03	146	2024-04-11 13:05:13.105852	2024-04-11 13:05:13.105852
1988	Mandalay	04	146	2024-04-11 13:05:13.109555	2024-04-11 13:05:13.109555
1989	Tanintharyi	05	146	2024-04-11 13:05:13.113245	2024-04-11 13:05:13.113245
1990	Yangon	06	146	2024-04-11 13:05:13.116782	2024-04-11 13:05:13.116782
1991	Ayeyarwady	07	146	2024-04-11 13:05:13.120469	2024-04-11 13:05:13.120469
1992	Kachin	11	146	2024-04-11 13:05:13.124293	2024-04-11 13:05:13.124293
1993	Kayah	12	146	2024-04-11 13:05:13.128008	2024-04-11 13:05:13.128008
1994	Kayin	13	146	2024-04-11 13:05:13.131515	2024-04-11 13:05:13.131515
1995	Chin	14	146	2024-04-11 13:05:13.135291	2024-04-11 13:05:13.135291
1996	Mon	15	146	2024-04-11 13:05:13.138965	2024-04-11 13:05:13.138965
1997	Rakhine	16	146	2024-04-11 13:05:13.142612	2024-04-11 13:05:13.142612
1998	Shan	17	146	2024-04-11 13:05:13.146429	2024-04-11 13:05:13.146429
1999	Orhon	035	147	2024-04-11 13:05:13.150111	2024-04-11 13:05:13.150111
2000	Darhan uul	037	147	2024-04-11 13:05:13.15373	2024-04-11 13:05:13.15373
2001	Hentiy	039	147	2024-04-11 13:05:13.157497	2024-04-11 13:05:13.157497
2002	Hövsgöl	041	147	2024-04-11 13:05:13.161073	2024-04-11 13:05:13.161073
2003	Hovd	043	147	2024-04-11 13:05:13.164625	2024-04-11 13:05:13.164625
2004	Uvs	046	147	2024-04-11 13:05:13.168141	2024-04-11 13:05:13.168141
2005	Töv	047	147	2024-04-11 13:05:13.172499	2024-04-11 13:05:13.172499
2006	Selenge	049	147	2024-04-11 13:05:13.176185	2024-04-11 13:05:13.176185
2007	Sühbaatar	051	147	2024-04-11 13:05:13.179766	2024-04-11 13:05:13.179766
2008	Ömnögovi	053	147	2024-04-11 13:05:13.183313	2024-04-11 13:05:13.183313
2009	Övörhangay	055	147	2024-04-11 13:05:13.186794	2024-04-11 13:05:13.186794
2010	Dzavhan	057	147	2024-04-11 13:05:13.190248	2024-04-11 13:05:13.190248
2011	Dundgovi	059	147	2024-04-11 13:05:13.19406	2024-04-11 13:05:13.19406
2012	Dornod	061	147	2024-04-11 13:05:13.201527	2024-04-11 13:05:13.201527
2013	Dornogovi	063	147	2024-04-11 13:05:13.20523	2024-04-11 13:05:13.20523
2014	Govi-Sumber	064	147	2024-04-11 13:05:13.208944	2024-04-11 13:05:13.208944
2015	Govi-Altay	065	147	2024-04-11 13:05:13.212773	2024-04-11 13:05:13.212773
2016	Bulgan	067	147	2024-04-11 13:05:13.216377	2024-04-11 13:05:13.216377
2017	Bayanhongor	069	147	2024-04-11 13:05:13.220088	2024-04-11 13:05:13.220088
2018	Bayan-Ölgiy	071	147	2024-04-11 13:05:13.223882	2024-04-11 13:05:13.223882
2019	Arhangay	073	147	2024-04-11 13:05:13.227658	2024-04-11 13:05:13.227658
2020	Ulanbaatar	1	147	2024-04-11 13:05:13.232485	2024-04-11 13:05:13.232485
2021	Hodh ech Chargui	01	151	2024-04-11 13:05:13.237597	2024-04-11 13:05:13.237597
2022	Hodh el Charbi	02	151	2024-04-11 13:05:13.241458	2024-04-11 13:05:13.241458
2023	Assaba	03	151	2024-04-11 13:05:13.24532	2024-04-11 13:05:13.24532
2024	Gorgol	04	151	2024-04-11 13:05:13.249214	2024-04-11 13:05:13.249214
2025	Brakna	05	151	2024-04-11 13:05:13.252972	2024-04-11 13:05:13.252972
2026	Trarza	06	151	2024-04-11 13:05:13.2568	2024-04-11 13:05:13.2568
2027	Adrar	07	151	2024-04-11 13:05:13.260642	2024-04-11 13:05:13.260642
2028	Dakhlet Nouadhibou	08	151	2024-04-11 13:05:13.264511	2024-04-11 13:05:13.264511
2029	Tagant	09	151	2024-04-11 13:05:13.268272	2024-04-11 13:05:13.268272
2030	Guidimaka	10	151	2024-04-11 13:05:13.272213	2024-04-11 13:05:13.272213
2031	Tiris Zemmour	11	151	2024-04-11 13:05:13.276079	2024-04-11 13:05:13.276079
2032	Inchiri	12	151	2024-04-11 13:05:13.27967	2024-04-11 13:05:13.27967
2033	Nouakchott	NKC	151	2024-04-11 13:05:13.283408	2024-04-11 13:05:13.283408
2034	Attard	01	153	2024-04-11 13:05:13.287248	2024-04-11 13:05:13.287248
2035	Balzan	02	153	2024-04-11 13:05:13.291055	2024-04-11 13:05:13.291055
2036	Birgu	03	153	2024-04-11 13:05:13.294946	2024-04-11 13:05:13.294946
2037	Birkirkara	04	153	2024-04-11 13:05:13.298678	2024-04-11 13:05:13.298678
2038	Birżebbuġa	05	153	2024-04-11 13:05:13.30249	2024-04-11 13:05:13.30249
2039	Bormla	06	153	2024-04-11 13:05:13.306252	2024-04-11 13:05:13.306252
2040	Dingli	07	153	2024-04-11 13:05:13.310029	2024-04-11 13:05:13.310029
2041	Fgura	08	153	2024-04-11 13:05:13.313734	2024-04-11 13:05:13.313734
2042	Floriana	09	153	2024-04-11 13:05:13.31742	2024-04-11 13:05:13.31742
2043	Fontana	10	153	2024-04-11 13:05:13.321123	2024-04-11 13:05:13.321123
2044	Gudja	11	153	2024-04-11 13:05:13.324852	2024-04-11 13:05:13.324852
2045	Gżira	12	153	2024-04-11 13:05:13.328484	2024-04-11 13:05:13.328484
2046	Għajnsielem	13	153	2024-04-11 13:05:13.332211	2024-04-11 13:05:13.332211
2047	Għarb	14	153	2024-04-11 13:05:13.33592	2024-04-11 13:05:13.33592
2048	Għargħur	15	153	2024-04-11 13:05:13.339795	2024-04-11 13:05:13.339795
2049	Għasri	16	153	2024-04-11 13:05:13.34357	2024-04-11 13:05:13.34357
2050	Għaxaq	17	153	2024-04-11 13:05:13.347332	2024-04-11 13:05:13.347332
2051	Ħamrun	18	153	2024-04-11 13:05:13.351094	2024-04-11 13:05:13.351094
2052	Iklin	19	153	2024-04-11 13:05:13.35496	2024-04-11 13:05:13.35496
2053	Isla	20	153	2024-04-11 13:05:13.358857	2024-04-11 13:05:13.358857
2054	Kalkara	21	153	2024-04-11 13:05:13.362888	2024-04-11 13:05:13.362888
2055	Kerċem	22	153	2024-04-11 13:05:13.3694	2024-04-11 13:05:13.3694
2056	Kirkop	23	153	2024-04-11 13:05:13.373436	2024-04-11 13:05:13.373436
2057	Lija	24	153	2024-04-11 13:05:13.377401	2024-04-11 13:05:13.377401
2058	Luqa	25	153	2024-04-11 13:05:13.38136	2024-04-11 13:05:13.38136
2059	Marsa	26	153	2024-04-11 13:05:13.38524	2024-04-11 13:05:13.38524
2060	Marsaskala	27	153	2024-04-11 13:05:13.389196	2024-04-11 13:05:13.389196
2061	Marsaxlokk	28	153	2024-04-11 13:05:13.393056	2024-04-11 13:05:13.393056
2062	Mdina	29	153	2024-04-11 13:05:13.396731	2024-04-11 13:05:13.396731
2063	Mellieħa	30	153	2024-04-11 13:05:13.400497	2024-04-11 13:05:13.400497
2064	Mġarr	31	153	2024-04-11 13:05:13.404211	2024-04-11 13:05:13.404211
2065	Mosta	32	153	2024-04-11 13:05:13.407994	2024-04-11 13:05:13.407994
2066	Mqabba	33	153	2024-04-11 13:05:13.411768	2024-04-11 13:05:13.411768
2067	Msida	34	153	2024-04-11 13:05:13.415421	2024-04-11 13:05:13.415421
2068	Mtarfa	35	153	2024-04-11 13:05:13.419062	2024-04-11 13:05:13.419062
2069	Munxar	36	153	2024-04-11 13:05:13.422701	2024-04-11 13:05:13.422701
2070	Nadur	37	153	2024-04-11 13:05:13.426439	2024-04-11 13:05:13.426439
2071	Naxxar	38	153	2024-04-11 13:05:13.430182	2024-04-11 13:05:13.430182
2072	Paola	39	153	2024-04-11 13:05:13.433775	2024-04-11 13:05:13.433775
2073	Pembroke	40	153	2024-04-11 13:05:13.43745	2024-04-11 13:05:13.43745
2074	Pietà	41	153	2024-04-11 13:05:13.442291	2024-04-11 13:05:13.442291
2075	Qala	42	153	2024-04-11 13:05:13.446059	2024-04-11 13:05:13.446059
2076	Qormi	43	153	2024-04-11 13:05:13.449677	2024-04-11 13:05:13.449677
2077	Qrendi	44	153	2024-04-11 13:05:13.453345	2024-04-11 13:05:13.453345
2078	Rabat Għawdex	45	153	2024-04-11 13:05:13.457154	2024-04-11 13:05:13.457154
2079	Rabat Malta	46	153	2024-04-11 13:05:13.462667	2024-04-11 13:05:13.462667
2080	Safi	47	153	2024-04-11 13:05:13.466977	2024-04-11 13:05:13.466977
2081	San Ġiljan	48	153	2024-04-11 13:05:13.470737	2024-04-11 13:05:13.470737
2082	San Ġwann	49	153	2024-04-11 13:05:13.475257	2024-04-11 13:05:13.475257
2083	San Lawrenz	50	153	2024-04-11 13:05:13.479319	2024-04-11 13:05:13.479319
2084	San Pawl il-Baħar	51	153	2024-04-11 13:05:13.483344	2024-04-11 13:05:13.483344
2085	Sannat	52	153	2024-04-11 13:05:13.487405	2024-04-11 13:05:13.487405
2086	Santa Luċija	53	153	2024-04-11 13:05:13.491175	2024-04-11 13:05:13.491175
2087	Santa Venera	54	153	2024-04-11 13:05:13.49516	2024-04-11 13:05:13.49516
2088	Siġġiewi	55	153	2024-04-11 13:05:13.49914	2024-04-11 13:05:13.49914
2089	Sliema	56	153	2024-04-11 13:05:13.503037	2024-04-11 13:05:13.503037
2090	Swieqi	57	153	2024-04-11 13:05:13.506846	2024-04-11 13:05:13.506846
2091	Ta’ Xbiex	58	153	2024-04-11 13:05:13.510583	2024-04-11 13:05:13.510583
2092	Tarxien	59	153	2024-04-11 13:05:13.514281	2024-04-11 13:05:13.514281
2093	Valletta	60	153	2024-04-11 13:05:13.517878	2024-04-11 13:05:13.517878
2094	Xagħra	61	153	2024-04-11 13:05:13.521433	2024-04-11 13:05:13.521433
2095	Xewkija	62	153	2024-04-11 13:05:13.525172	2024-04-11 13:05:13.525172
2096	Xgħajra	63	153	2024-04-11 13:05:13.528844	2024-04-11 13:05:13.528844
2097	Żabbar	64	153	2024-04-11 13:05:13.532463	2024-04-11 13:05:13.532463
2098	Żebbuġ Għawdex	65	153	2024-04-11 13:05:13.536219	2024-04-11 13:05:13.536219
2099	Żebbuġ Malta	66	153	2024-04-11 13:05:13.540644	2024-04-11 13:05:13.540644
2100	Żejtun	67	153	2024-04-11 13:05:13.544287	2024-04-11 13:05:13.544287
2101	Żurrieq	68	153	2024-04-11 13:05:13.547886	2024-04-11 13:05:13.547886
2102	Agalega Islands	AG	154	2024-04-11 13:05:13.55226	2024-04-11 13:05:13.55226
2103	Black River	BL	154	2024-04-11 13:05:13.555783	2024-04-11 13:05:13.555783
2104	Beau Bassin-Rose Hill	BR	154	2024-04-11 13:05:13.559879	2024-04-11 13:05:13.559879
2105	Cargados Carajos Shoals	CC	154	2024-04-11 13:05:13.564604	2024-04-11 13:05:13.564604
2106	Curepipe	CU	154	2024-04-11 13:05:13.568152	2024-04-11 13:05:13.568152
2107	Flacq	FL	154	2024-04-11 13:05:13.572457	2024-04-11 13:05:13.572457
2108	Grand Port	GP	154	2024-04-11 13:05:13.576213	2024-04-11 13:05:13.576213
2109	Moka	MO	154	2024-04-11 13:05:13.579824	2024-04-11 13:05:13.579824
2110	Pamplemousses	PA	154	2024-04-11 13:05:13.5834	2024-04-11 13:05:13.5834
2111	Port Louis	PL	154	2024-04-11 13:05:13.586951	2024-04-11 13:05:13.586951
2112	Port Louis	PU	154	2024-04-11 13:05:13.590508	2024-04-11 13:05:13.590508
2113	Plaines Wilhems	PW	154	2024-04-11 13:05:13.59415	2024-04-11 13:05:13.59415
2114	Quatre Bornes	QB	154	2024-04-11 13:05:13.597706	2024-04-11 13:05:13.597706
2115	Rodrigues Island	RO	154	2024-04-11 13:05:13.601259	2024-04-11 13:05:13.601259
2116	Rivière du Rempart	RP	154	2024-04-11 13:05:13.604788	2024-04-11 13:05:13.604788
2117	Savanne	SA	154	2024-04-11 13:05:13.608249	2024-04-11 13:05:13.608249
2118	Vacoas-Phoenix	VP	154	2024-04-11 13:05:13.61267	2024-04-11 13:05:13.61267
2119	Central	CE	155	2024-04-11 13:05:13.616278	2024-04-11 13:05:13.616278
2120	Male	MLE	155	2024-04-11 13:05:13.61992	2024-04-11 13:05:13.61992
2121	North Central	NC	155	2024-04-11 13:05:13.62352	2024-04-11 13:05:13.62352
2122	North	NO	155	2024-04-11 13:05:13.627124	2024-04-11 13:05:13.627124
2123	South Central	SC	155	2024-04-11 13:05:13.630639	2024-04-11 13:05:13.630639
2124	South	SU	155	2024-04-11 13:05:13.634992	2024-04-11 13:05:13.634992
2125	Upper North	UN	155	2024-04-11 13:05:13.638468	2024-04-11 13:05:13.638468
2126	Upper South	US	155	2024-04-11 13:05:13.642004	2024-04-11 13:05:13.642004
2127	Central Region	C	156	2024-04-11 13:05:13.645717	2024-04-11 13:05:13.645717
2128	Northern Region	N	156	2024-04-11 13:05:13.649343	2024-04-11 13:05:13.649343
2129	Southern Region	S	156	2024-04-11 13:05:13.654268	2024-04-11 13:05:13.654268
2130	Aguascalientes	AGU	157	2024-04-11 13:05:13.657848	2024-04-11 13:05:13.657848
2131	Baja California	BCN	157	2024-04-11 13:05:13.662465	2024-04-11 13:05:13.662465
2132	Baja California Sur	BCS	157	2024-04-11 13:05:13.666054	2024-04-11 13:05:13.666054
2133	Campeche	CAM	157	2024-04-11 13:05:13.669596	2024-04-11 13:05:13.669596
2134	Chihuahua	CHH	157	2024-04-11 13:05:13.674022	2024-04-11 13:05:13.674022
2135	Chiapas	CHP	157	2024-04-11 13:05:13.677565	2024-04-11 13:05:13.677565
2136	Ciudad de México	CMX	157	2024-04-11 13:05:13.681349	2024-04-11 13:05:13.681349
2137	Coahuila de Zaragoza	COA	157	2024-04-11 13:05:13.685004	2024-04-11 13:05:13.685004
2138	Colima	COL	157	2024-04-11 13:05:13.688522	2024-04-11 13:05:13.688522
2139	Durango	DUR	157	2024-04-11 13:05:13.692112	2024-04-11 13:05:13.692112
2140	Guerrero	GRO	157	2024-04-11 13:05:13.69578	2024-04-11 13:05:13.69578
2141	Guanajuato	GUA	157	2024-04-11 13:05:13.699345	2024-04-11 13:05:13.699345
2142	Hidalgo	HID	157	2024-04-11 13:05:13.702961	2024-04-11 13:05:13.702961
2143	Jalisco	JAL	157	2024-04-11 13:05:13.70648	2024-04-11 13:05:13.70648
2144	México	MEX	157	2024-04-11 13:05:13.710948	2024-04-11 13:05:13.710948
2145	Michoacán de Ocampo	MIC	157	2024-04-11 13:05:13.715785	2024-04-11 13:05:13.715785
2146	Morelos	MOR	157	2024-04-11 13:05:13.71933	2024-04-11 13:05:13.71933
2147	Nayarit	NAY	157	2024-04-11 13:05:13.722958	2024-04-11 13:05:13.722958
2148	Nuevo León	NLE	157	2024-04-11 13:05:13.726539	2024-04-11 13:05:13.726539
2149	Oaxaca	OAX	157	2024-04-11 13:05:13.73011	2024-04-11 13:05:13.73011
2150	Puebla	PUE	157	2024-04-11 13:05:13.734826	2024-04-11 13:05:13.734826
2151	Querétaro	QUE	157	2024-04-11 13:05:13.738711	2024-04-11 13:05:13.738711
2152	Quintana Roo	ROO	157	2024-04-11 13:05:13.74239	2024-04-11 13:05:13.74239
2153	Sinaloa	SIN	157	2024-04-11 13:05:13.746117	2024-04-11 13:05:13.746117
2154	San Luis Potosí	SLP	157	2024-04-11 13:05:13.749861	2024-04-11 13:05:13.749861
2155	Sonora	SON	157	2024-04-11 13:05:13.753571	2024-04-11 13:05:13.753571
2156	Tabasco	TAB	157	2024-04-11 13:05:13.757308	2024-04-11 13:05:13.757308
2157	Tamaulipas	TAM	157	2024-04-11 13:05:13.761069	2024-04-11 13:05:13.761069
2158	Tlaxcala	TLA	157	2024-04-11 13:05:13.764701	2024-04-11 13:05:13.764701
2159	Veracruz de Ignacio de la Llave	VER	157	2024-04-11 13:05:13.768338	2024-04-11 13:05:13.768338
2160	Yucatán	YUC	157	2024-04-11 13:05:13.772178	2024-04-11 13:05:13.772178
2161	Zacatecas	ZAC	157	2024-04-11 13:05:13.776591	2024-04-11 13:05:13.776591
2162	Johor	01	158	2024-04-11 13:05:13.780593	2024-04-11 13:05:13.780593
2163	Kedah	02	158	2024-04-11 13:05:13.787651	2024-04-11 13:05:13.787651
2164	Kelantan	03	158	2024-04-11 13:05:13.791698	2024-04-11 13:05:13.791698
2165	Melaka	04	158	2024-04-11 13:05:13.795573	2024-04-11 13:05:13.795573
2166	Negeri Sembilan	05	158	2024-04-11 13:05:13.799512	2024-04-11 13:05:13.799512
2167	Pahang	06	158	2024-04-11 13:05:13.803319	2024-04-11 13:05:13.803319
2168	Pulau Pinang	07	158	2024-04-11 13:05:13.80713	2024-04-11 13:05:13.80713
2169	Perak	08	158	2024-04-11 13:05:13.810978	2024-04-11 13:05:13.810978
2170	Perlis	09	158	2024-04-11 13:05:13.814682	2024-04-11 13:05:13.814682
2171	Selangor	10	158	2024-04-11 13:05:13.818378	2024-04-11 13:05:13.818378
2172	Terengganu	11	158	2024-04-11 13:05:13.822087	2024-04-11 13:05:13.822087
2173	Sabah	12	158	2024-04-11 13:05:13.825846	2024-04-11 13:05:13.825846
2174	Sarawak	13	158	2024-04-11 13:05:13.829678	2024-04-11 13:05:13.829678
2175	Wilayah Persekutuan Kuala Lumpur	14	158	2024-04-11 13:05:13.833359	2024-04-11 13:05:13.833359
2176	Wilayah Persekutuan Labuan	15	158	2024-04-11 13:05:13.837141	2024-04-11 13:05:13.837141
2177	Wilayah Persekutuan Putrajaya	16	158	2024-04-11 13:05:13.840704	2024-04-11 13:05:13.840704
2178	Niassa	A	159	2024-04-11 13:05:13.844347	2024-04-11 13:05:13.844347
2179	Manica	B	159	2024-04-11 13:05:13.848097	2024-04-11 13:05:13.848097
2180	Gaza	G	159	2024-04-11 13:05:13.851701	2024-04-11 13:05:13.851701
2181	Inhambane	I	159	2024-04-11 13:05:13.855189	2024-04-11 13:05:13.855189
2182	Maputo	L	159	2024-04-11 13:05:13.859823	2024-04-11 13:05:13.859823
2183	Maputo (city)	MPM	159	2024-04-11 13:05:13.863547	2024-04-11 13:05:13.863547
2184	Nampula	N	159	2024-04-11 13:05:13.867137	2024-04-11 13:05:13.867137
2185	Cabo Delgado	P	159	2024-04-11 13:05:13.870673	2024-04-11 13:05:13.870673
2186	Zambézia	Q	159	2024-04-11 13:05:13.874184	2024-04-11 13:05:13.874184
2187	Sofala	S	159	2024-04-11 13:05:13.877733	2024-04-11 13:05:13.877733
2188	Tete	T	159	2024-04-11 13:05:13.881283	2024-04-11 13:05:13.881283
2189	Caprivi	CA	160	2024-04-11 13:05:13.884824	2024-04-11 13:05:13.884824
2190	Erongo	ER	160	2024-04-11 13:05:13.888325	2024-04-11 13:05:13.888325
2191	Hardap	HA	160	2024-04-11 13:05:13.891789	2024-04-11 13:05:13.891789
2192	Karas	KA	160	2024-04-11 13:05:13.895325	2024-04-11 13:05:13.895325
2193	Khomas	KH	160	2024-04-11 13:05:13.898986	2024-04-11 13:05:13.898986
2194	Kunene	KU	160	2024-04-11 13:05:13.902525	2024-04-11 13:05:13.902525
2195	Otjozondjupa	OD	160	2024-04-11 13:05:13.906009	2024-04-11 13:05:13.906009
2196	Omaheke	OH	160	2024-04-11 13:05:13.909489	2024-04-11 13:05:13.909489
2197	Okavango	OK	160	2024-04-11 13:05:13.91295	2024-04-11 13:05:13.91295
2198	Oshana	ON	160	2024-04-11 13:05:13.916517	2024-04-11 13:05:13.916517
2199	Omusati	OS	160	2024-04-11 13:05:13.920044	2024-04-11 13:05:13.920044
2200	Oshikoto	OT	160	2024-04-11 13:05:13.923554	2024-04-11 13:05:13.923554
2201	Ohangwena	OW	160	2024-04-11 13:05:13.92712	2024-04-11 13:05:13.92712
2202	Agadez	1	162	2024-04-11 13:05:13.930746	2024-04-11 13:05:13.930746
2203	Diffa	2	162	2024-04-11 13:05:13.934214	2024-04-11 13:05:13.934214
2204	Dosso	3	162	2024-04-11 13:05:13.937973	2024-04-11 13:05:13.937973
2205	Maradi	4	162	2024-04-11 13:05:13.941397	2024-04-11 13:05:13.941397
2206	Tahoua	5	162	2024-04-11 13:05:13.944951	2024-04-11 13:05:13.944951
2207	Tillabéri	6	162	2024-04-11 13:05:13.948523	2024-04-11 13:05:13.948523
2208	Zinder	7	162	2024-04-11 13:05:13.952021	2024-04-11 13:05:13.952021
2209	Niamey	8	162	2024-04-11 13:05:13.955557	2024-04-11 13:05:13.955557
2210	Abia	AB	164	2024-04-11 13:05:13.959205	2024-04-11 13:05:13.959205
2211	Adamawa	AD	164	2024-04-11 13:05:13.96466	2024-04-11 13:05:13.96466
2212	Akwa Ibom	AK	164	2024-04-11 13:05:13.968241	2024-04-11 13:05:13.968241
2213	Anambra	AN	164	2024-04-11 13:05:13.971731	2024-04-11 13:05:13.971731
2214	Bauchi	BA	164	2024-04-11 13:05:13.975833	2024-04-11 13:05:13.975833
2215	Benue	BE	164	2024-04-11 13:05:13.979388	2024-04-11 13:05:13.979388
2216	Borno	BO	164	2024-04-11 13:05:13.98296	2024-04-11 13:05:13.98296
2217	Bayelsa	BY	164	2024-04-11 13:05:13.986584	2024-04-11 13:05:13.986584
2218	Cross River	CR	164	2024-04-11 13:05:13.990042	2024-04-11 13:05:13.990042
2219	Delta	DE	164	2024-04-11 13:05:13.993554	2024-04-11 13:05:13.993554
2220	Ebonyi	EB	164	2024-04-11 13:05:13.99719	2024-04-11 13:05:13.99719
2221	Edo	ED	164	2024-04-11 13:05:14.000739	2024-04-11 13:05:14.000739
2222	Ekiti	EK	164	2024-04-11 13:05:14.004355	2024-04-11 13:05:14.004355
2223	Enugu	EN	164	2024-04-11 13:05:14.007968	2024-04-11 13:05:14.007968
2224	Abuja Capital Territory	FC	164	2024-04-11 13:05:14.01144	2024-04-11 13:05:14.01144
2225	Gombe	GO	164	2024-04-11 13:05:14.01512	2024-04-11 13:05:14.01512
2226	Imo	IM	164	2024-04-11 13:05:14.018588	2024-04-11 13:05:14.018588
2227	Jigawa	JI	164	2024-04-11 13:05:14.022054	2024-04-11 13:05:14.022054
2228	Kaduna	KD	164	2024-04-11 13:05:14.025573	2024-04-11 13:05:14.025573
2229	Kebbi	KE	164	2024-04-11 13:05:14.029222	2024-04-11 13:05:14.029222
2230	Kano	KN	164	2024-04-11 13:05:14.032846	2024-04-11 13:05:14.032846
2231	Kogi	KO	164	2024-04-11 13:05:14.036477	2024-04-11 13:05:14.036477
2232	Katsina	KT	164	2024-04-11 13:05:14.040042	2024-04-11 13:05:14.040042
2233	Kwara	KW	164	2024-04-11 13:05:14.043578	2024-04-11 13:05:14.043578
2234	Lagos	LA	164	2024-04-11 13:05:14.047108	2024-04-11 13:05:14.047108
2235	Nassarawa	NA	164	2024-04-11 13:05:14.050621	2024-04-11 13:05:14.050621
2236	Niger	NI	164	2024-04-11 13:05:14.054208	2024-04-11 13:05:14.054208
2237	Ogun	OG	164	2024-04-11 13:05:14.05782	2024-04-11 13:05:14.05782
2238	Ondo	ON	164	2024-04-11 13:05:14.061912	2024-04-11 13:05:14.061912
2239	Osun	OS	164	2024-04-11 13:05:14.065804	2024-04-11 13:05:14.065804
2240	Oyo	OY	164	2024-04-11 13:05:14.069687	2024-04-11 13:05:14.069687
2241	Plateau	PL	164	2024-04-11 13:05:14.073885	2024-04-11 13:05:14.073885
2242	Rivers	RI	164	2024-04-11 13:05:14.077874	2024-04-11 13:05:14.077874
2243	Sokoto	SO	164	2024-04-11 13:05:14.081886	2024-04-11 13:05:14.081886
2244	Taraba	TA	164	2024-04-11 13:05:14.085856	2024-04-11 13:05:14.085856
2245	Yobe	YO	164	2024-04-11 13:05:14.089716	2024-04-11 13:05:14.089716
2246	Zamfara	ZA	164	2024-04-11 13:05:14.093555	2024-04-11 13:05:14.093555
2247	Atlántico Norte	AN	165	2024-04-11 13:05:14.097483	2024-04-11 13:05:14.097483
2248	Atlántico Sur	AS	165	2024-04-11 13:05:14.101408	2024-04-11 13:05:14.101408
2249	Boaco	BO	165	2024-04-11 13:05:14.10518	2024-04-11 13:05:14.10518
2250	Carazo	CA	165	2024-04-11 13:05:14.10891	2024-04-11 13:05:14.10891
2251	Chinandega	CI	165	2024-04-11 13:05:14.112576	2024-04-11 13:05:14.112576
2252	Chontales	CO	165	2024-04-11 13:05:14.116218	2024-04-11 13:05:14.116218
2253	Estelí	ES	165	2024-04-11 13:05:14.119846	2024-04-11 13:05:14.119846
2254	Granada	GR	165	2024-04-11 13:05:14.123504	2024-04-11 13:05:14.123504
2255	Jinotega	JI	165	2024-04-11 13:05:14.127152	2024-04-11 13:05:14.127152
2256	León	LE	165	2024-04-11 13:05:14.131	2024-04-11 13:05:14.131
2257	Madriz	MD	165	2024-04-11 13:05:14.134951	2024-04-11 13:05:14.134951
2258	Managua	MN	165	2024-04-11 13:05:14.138663	2024-04-11 13:05:14.138663
2259	Masaya	MS	165	2024-04-11 13:05:14.14216	2024-04-11 13:05:14.14216
2260	Matagalpa	MT	165	2024-04-11 13:05:14.145674	2024-04-11 13:05:14.145674
2261	Nueva Segovia	NS	165	2024-04-11 13:05:14.149216	2024-04-11 13:05:14.149216
2262	Rivas	RI	165	2024-04-11 13:05:14.152812	2024-04-11 13:05:14.152812
2263	Río San Juan	SJ	165	2024-04-11 13:05:14.15635	2024-04-11 13:05:14.15635
2264	Aruba	AW	166	2024-04-11 13:05:14.160068	2024-04-11 13:05:14.160068
2265	Bonaire	BQ1	166	2024-04-11 13:05:14.163629	2024-04-11 13:05:14.163629
2266	Saba	BQ2	166	2024-04-11 13:05:14.167167	2024-04-11 13:05:14.167167
2267	Sint Eustatius	BQ3	166	2024-04-11 13:05:14.170823	2024-04-11 13:05:14.170823
2268	Curaçao	CW	166	2024-04-11 13:05:14.174461	2024-04-11 13:05:14.174461
2269	Drenthe	DR	166	2024-04-11 13:05:14.178063	2024-04-11 13:05:14.178063
2270	Flevoland	FL	166	2024-04-11 13:05:14.181683	2024-04-11 13:05:14.181683
2271	Friesland	FR	166	2024-04-11 13:05:14.185345	2024-04-11 13:05:14.185345
2272	Gelderland	GE	166	2024-04-11 13:05:14.191657	2024-04-11 13:05:14.191657
2273	Groningen	GR	166	2024-04-11 13:05:14.195817	2024-04-11 13:05:14.195817
2274	Limburg	LI	166	2024-04-11 13:05:14.202545	2024-04-11 13:05:14.202545
2275	Noord-Brabant	NB	166	2024-04-11 13:05:14.206474	2024-04-11 13:05:14.206474
2276	Noord-Holland	NH	166	2024-04-11 13:05:14.210474	2024-04-11 13:05:14.210474
2277	Overijssel	OV	166	2024-04-11 13:05:14.214577	2024-04-11 13:05:14.214577
2278	Sint Maarten	SX	166	2024-04-11 13:05:14.218653	2024-04-11 13:05:14.218653
2279	Utrecht	UT	166	2024-04-11 13:05:14.222734	2024-04-11 13:05:14.222734
2280	Zeeland	ZE	166	2024-04-11 13:05:14.226716	2024-04-11 13:05:14.226716
2281	Zuid-Holland	ZH	166	2024-04-11 13:05:14.230759	2024-04-11 13:05:14.230759
2282	Østfold	01	167	2024-04-11 13:05:14.235017	2024-04-11 13:05:14.235017
2283	Akershus	02	167	2024-04-11 13:05:14.239068	2024-04-11 13:05:14.239068
2284	Oslo	03	167	2024-04-11 13:05:14.243053	2024-04-11 13:05:14.243053
2285	Hedmark	04	167	2024-04-11 13:05:14.247016	2024-04-11 13:05:14.247016
2286	Oppland	05	167	2024-04-11 13:05:14.251011	2024-04-11 13:05:14.251011
2287	Buskerud	06	167	2024-04-11 13:05:14.254911	2024-04-11 13:05:14.254911
2288	Vestfold	07	167	2024-04-11 13:05:14.258733	2024-04-11 13:05:14.258733
2289	Telemark	08	167	2024-04-11 13:05:14.2625	2024-04-11 13:05:14.2625
2290	Aust-Agder	09	167	2024-04-11 13:05:14.266288	2024-04-11 13:05:14.266288
2291	Vest-Agder	10	167	2024-04-11 13:05:14.270157	2024-04-11 13:05:14.270157
2292	Rogaland	11	167	2024-04-11 13:05:14.273975	2024-04-11 13:05:14.273975
2293	Hordaland	12	167	2024-04-11 13:05:14.277789	2024-04-11 13:05:14.277789
2294	Sogn og Fjordane	14	167	2024-04-11 13:05:14.281544	2024-04-11 13:05:14.281544
2295	Møre og Romsdal	15	167	2024-04-11 13:05:14.285475	2024-04-11 13:05:14.285475
2296	Sør-Trøndelag	16	167	2024-04-11 13:05:14.289392	2024-04-11 13:05:14.289392
2297	Nord-Trøndelag	17	167	2024-04-11 13:05:14.293135	2024-04-11 13:05:14.293135
2298	Nordland	18	167	2024-04-11 13:05:14.296845	2024-04-11 13:05:14.296845
2299	Troms	19	167	2024-04-11 13:05:14.300807	2024-04-11 13:05:14.300807
2300	Finnmark	20	167	2024-04-11 13:05:14.304562	2024-04-11 13:05:14.304562
2301	Svalbard (Arctic Region)	21	167	2024-04-11 13:05:14.308228	2024-04-11 13:05:14.308228
2302	Jan Mayen (Arctic Region)	22	167	2024-04-11 13:05:14.311786	2024-04-11 13:05:14.311786
2303	Madhyamanchal	1	168	2024-04-11 13:05:14.31565	2024-04-11 13:05:14.31565
2304	Madhya Pashchimanchal	2	168	2024-04-11 13:05:14.319272	2024-04-11 13:05:14.319272
2305	Pashchimanchal	3	168	2024-04-11 13:05:14.322952	2024-04-11 13:05:14.322952
2306	Purwanchal	4	168	2024-04-11 13:05:14.326607	2024-04-11 13:05:14.326607
2307	Sudur Pashchimanchal	5	168	2024-04-11 13:05:14.330239	2024-04-11 13:05:14.330239
2308	Aiwo	01	169	2024-04-11 13:05:14.333906	2024-04-11 13:05:14.333906
2309	Anabar	02	169	2024-04-11 13:05:14.337741	2024-04-11 13:05:14.337741
2310	Anetan	03	169	2024-04-11 13:05:14.341363	2024-04-11 13:05:14.341363
2311	Anibare	04	169	2024-04-11 13:05:14.344986	2024-04-11 13:05:14.344986
2312	Baiti	05	169	2024-04-11 13:05:14.34868	2024-04-11 13:05:14.34868
2313	Boe	06	169	2024-04-11 13:05:14.352387	2024-04-11 13:05:14.352387
2314	Buada	07	169	2024-04-11 13:05:14.356177	2024-04-11 13:05:14.356177
2315	Denigomodu	08	169	2024-04-11 13:05:14.359835	2024-04-11 13:05:14.359835
2316	Ewa	09	169	2024-04-11 13:05:14.363453	2024-04-11 13:05:14.363453
2317	Ijuw	10	169	2024-04-11 13:05:14.367104	2024-04-11 13:05:14.367104
2318	Meneng	11	169	2024-04-11 13:05:14.370746	2024-04-11 13:05:14.370746
2319	Nibok	12	169	2024-04-11 13:05:14.374379	2024-04-11 13:05:14.374379
2320	Uaboe	13	169	2024-04-11 13:05:14.378057	2024-04-11 13:05:14.378057
2321	Yaren	14	169	2024-04-11 13:05:14.381731	2024-04-11 13:05:14.381731
2322	Chatham Islands Territory	CIT	171	2024-04-11 13:05:14.385628	2024-04-11 13:05:14.385628
2323	Auckland	AUK	171	2024-04-11 13:05:14.389249	2024-04-11 13:05:14.389249
2324	Bay of Plenty	BOP	171	2024-04-11 13:05:14.392808	2024-04-11 13:05:14.392808
2325	Canterbury	CAN	171	2024-04-11 13:05:14.396439	2024-04-11 13:05:14.396439
2326	Gisborne	GIS	171	2024-04-11 13:05:14.400113	2024-04-11 13:05:14.400113
2327	Hawke's Bay	HKB	171	2024-04-11 13:05:14.403773	2024-04-11 13:05:14.403773
2328	Manawatu-Wanganui	MWT	171	2024-04-11 13:05:14.407429	2024-04-11 13:05:14.407429
2329	Marlborough	MBH	171	2024-04-11 13:05:14.411005	2024-04-11 13:05:14.411005
2330	Nelson	NSN	171	2024-04-11 13:05:14.414589	2024-04-11 13:05:14.414589
2331	Northland	NTL	171	2024-04-11 13:05:14.418128	2024-04-11 13:05:14.418128
2332	Otago	OTA	171	2024-04-11 13:05:14.421756	2024-04-11 13:05:14.421756
2333	Southland	STL	171	2024-04-11 13:05:14.425441	2024-04-11 13:05:14.425441
2334	Taranaki	TKI	171	2024-04-11 13:05:14.429031	2024-04-11 13:05:14.429031
2335	Tasman	TAS	171	2024-04-11 13:05:14.432698	2024-04-11 13:05:14.432698
2336	Wellington	WGN	171	2024-04-11 13:05:14.436375	2024-04-11 13:05:14.436375
2337	Waikato	WKO	171	2024-04-11 13:05:14.440188	2024-04-11 13:05:14.440188
2338	West Coast	WTC	171	2024-04-11 13:05:14.444029	2024-04-11 13:05:14.444029
2339	Al Bāţinah	BA	172	2024-04-11 13:05:14.447763	2024-04-11 13:05:14.447763
2340	Al Buraymī	BU	172	2024-04-11 13:05:14.451456	2024-04-11 13:05:14.451456
2341	Ad Dākhilīya	DA	172	2024-04-11 13:05:14.455141	2024-04-11 13:05:14.455141
2342	Masqaţ	MA	172	2024-04-11 13:05:14.458788	2024-04-11 13:05:14.458788
2343	Musandam	MU	172	2024-04-11 13:05:14.464164	2024-04-11 13:05:14.464164
2344	Ash Sharqīyah	SH	172	2024-04-11 13:05:14.468862	2024-04-11 13:05:14.468862
2345	Al Wusţá	WU	172	2024-04-11 13:05:14.472667	2024-04-11 13:05:14.472667
2346	Az̧ Z̧āhirah	ZA	172	2024-04-11 13:05:14.476575	2024-04-11 13:05:14.476575
2347	Z̧ufār	ZU	172	2024-04-11 13:05:14.480287	2024-04-11 13:05:14.480287
2348	Bocas del Toro	1	173	2024-04-11 13:05:14.484131	2024-04-11 13:05:14.484131
2349	Coclé	2	173	2024-04-11 13:05:14.487803	2024-04-11 13:05:14.487803
2350	Colón	3	173	2024-04-11 13:05:14.491417	2024-04-11 13:05:14.491417
2351	Chiriquí	4	173	2024-04-11 13:05:14.49512	2024-04-11 13:05:14.49512
2352	Darién	5	173	2024-04-11 13:05:14.499014	2024-04-11 13:05:14.499014
2353	Herrera	6	173	2024-04-11 13:05:14.502972	2024-04-11 13:05:14.502972
2354	Los Santos	7	173	2024-04-11 13:05:14.506735	2024-04-11 13:05:14.506735
2355	Panamá	8	173	2024-04-11 13:05:14.510473	2024-04-11 13:05:14.510473
2356	Veraguas	9	173	2024-04-11 13:05:14.514214	2024-04-11 13:05:14.514214
2357	Emberá	EM	173	2024-04-11 13:05:14.517787	2024-04-11 13:05:14.517787
2358	Kuna Yala	KY	173	2024-04-11 13:05:14.521515	2024-04-11 13:05:14.521515
2359	Ngöbe-Buglé	NB	173	2024-04-11 13:05:14.525338	2024-04-11 13:05:14.525338
2360	Amazonas	AMA	174	2024-04-11 13:05:14.529188	2024-04-11 13:05:14.529188
2361	Ancash	ANC	174	2024-04-11 13:05:14.532902	2024-04-11 13:05:14.532902
2362	Apurímac	APU	174	2024-04-11 13:05:14.536622	2024-04-11 13:05:14.536622
2363	Arequipa	ARE	174	2024-04-11 13:05:14.540439	2024-04-11 13:05:14.540439
2364	Ayacucho	AYA	174	2024-04-11 13:05:14.544356	2024-04-11 13:05:14.544356
2365	Cajamarca	CAJ	174	2024-04-11 13:05:14.548195	2024-04-11 13:05:14.548195
2366	El Callao	CAL	174	2024-04-11 13:05:14.552104	2024-04-11 13:05:14.552104
2367	Cusco [Cuzco]	CUS	174	2024-04-11 13:05:14.555786	2024-04-11 13:05:14.555786
2368	Huánuco	HUC	174	2024-04-11 13:05:14.560096	2024-04-11 13:05:14.560096
2369	Huancavelica	HUV	174	2024-04-11 13:05:14.564261	2024-04-11 13:05:14.564261
2370	Ica	ICA	174	2024-04-11 13:05:14.568252	2024-04-11 13:05:14.568252
2371	Junín	JUN	174	2024-04-11 13:05:14.572284	2024-04-11 13:05:14.572284
2372	La Libertad	LAL	174	2024-04-11 13:05:14.576247	2024-04-11 13:05:14.576247
2373	Lambayeque	LAM	174	2024-04-11 13:05:14.580252	2024-04-11 13:05:14.580252
2374	Lima	LIM	174	2024-04-11 13:05:14.584117	2024-04-11 13:05:14.584117
2375	Municipalidad Metropolitana de Lima	LMA	174	2024-04-11 13:05:14.587954	2024-04-11 13:05:14.587954
2376	Loreto	LOR	174	2024-04-11 13:05:14.591766	2024-04-11 13:05:14.591766
2377	Madre de Dios	MDD	174	2024-04-11 13:05:14.595609	2024-04-11 13:05:14.595609
2378	Moquegua	MOQ	174	2024-04-11 13:05:14.599474	2024-04-11 13:05:14.599474
2379	Pasco	PAS	174	2024-04-11 13:05:14.603299	2024-04-11 13:05:14.603299
2380	Piura	PIU	174	2024-04-11 13:05:14.60985	2024-04-11 13:05:14.60985
2381	Puno	PUN	174	2024-04-11 13:05:14.614127	2024-04-11 13:05:14.614127
2382	San Martín	SAM	174	2024-04-11 13:05:14.618246	2024-04-11 13:05:14.618246
2383	Tacna	TAC	174	2024-04-11 13:05:14.622174	2024-04-11 13:05:14.622174
2384	Tumbes	TUM	174	2024-04-11 13:05:14.626042	2024-04-11 13:05:14.626042
2385	Ucayali	UCA	174	2024-04-11 13:05:14.630115	2024-04-11 13:05:14.630115
2386	Chimbu	CPK	176	2024-04-11 13:05:14.634215	2024-04-11 13:05:14.634215
2387	Central	CPM	176	2024-04-11 13:05:14.638197	2024-04-11 13:05:14.638197
2388	East New Britain	EBR	176	2024-04-11 13:05:14.642082	2024-04-11 13:05:14.642082
2389	Eastern Highlands	EHG	176	2024-04-11 13:05:14.645921	2024-04-11 13:05:14.645921
2390	Enga	EPW	176	2024-04-11 13:05:14.649827	2024-04-11 13:05:14.649827
2391	East Sepik	ESW	176	2024-04-11 13:05:14.653591	2024-04-11 13:05:14.653591
2392	Gulf	GPK	176	2024-04-11 13:05:14.657362	2024-04-11 13:05:14.657362
2393	Milne Bay	MBA	176	2024-04-11 13:05:14.661137	2024-04-11 13:05:14.661137
2394	Morobe	MPL	176	2024-04-11 13:05:14.664879	2024-04-11 13:05:14.664879
2395	Madang	MPM	176	2024-04-11 13:05:14.668785	2024-04-11 13:05:14.668785
2396	Manus	MRL	176	2024-04-11 13:05:14.672836	2024-04-11 13:05:14.672836
2397	National Capital District (Port Moresby)	NCD	176	2024-04-11 13:05:14.676908	2024-04-11 13:05:14.676908
2398	New Ireland	NIK	176	2024-04-11 13:05:14.680949	2024-04-11 13:05:14.680949
2399	Northern	NPP	176	2024-04-11 13:05:14.684788	2024-04-11 13:05:14.684788
2400	Bougainville	NSB	176	2024-04-11 13:05:14.688742	2024-04-11 13:05:14.688742
2401	Sandaun	SAN	176	2024-04-11 13:05:14.692568	2024-04-11 13:05:14.692568
2402	Southern Highlands	SHM	176	2024-04-11 13:05:14.696409	2024-04-11 13:05:14.696409
2403	West New Britain	WBK	176	2024-04-11 13:05:14.700429	2024-04-11 13:05:14.700429
2404	Western Highlands	WHM	176	2024-04-11 13:05:14.7042	2024-04-11 13:05:14.7042
2405	Western	WPD	176	2024-04-11 13:05:14.708242	2024-04-11 13:05:14.708242
2406	National Capital Region	00	177	2024-04-11 13:05:14.714224	2024-04-11 13:05:14.714224
2407	Ilocos (Region I)	01	177	2024-04-11 13:05:14.721645	2024-04-11 13:05:14.721645
2408	Cagayan Valley (Region II)	02	177	2024-04-11 13:05:14.725379	2024-04-11 13:05:14.725379
2409	Central Luzon (Region III)	03	177	2024-04-11 13:05:14.729179	2024-04-11 13:05:14.729179
2410	Bicol (Region V)	05	177	2024-04-11 13:05:14.733992	2024-04-11 13:05:14.733992
2411	Western Visayas (Region VI)	06	177	2024-04-11 13:05:14.738196	2024-04-11 13:05:14.738196
2412	Central Visayas (Region VII)	07	177	2024-04-11 13:05:14.741959	2024-04-11 13:05:14.741959
2413	Eastern Visayas (Region VIII)	08	177	2024-04-11 13:05:14.745937	2024-04-11 13:05:14.745937
2414	Zamboanga Peninsula (Region IX)	09	177	2024-04-11 13:05:14.749895	2024-04-11 13:05:14.749895
2415	Northern Mindanao (Region X)	10	177	2024-04-11 13:05:14.753697	2024-04-11 13:05:14.753697
2416	Davao (Region XI)	11	177	2024-04-11 13:05:14.757581	2024-04-11 13:05:14.757581
2417	Soccsksargen (Region XII)	12	177	2024-04-11 13:05:14.761339	2024-04-11 13:05:14.761339
2418	Caraga (Region XIII)	13	177	2024-04-11 13:05:14.765307	2024-04-11 13:05:14.765307
2419	Autonomous Region in Muslim Mindanao (ARMM)	14	177	2024-04-11 13:05:14.768896	2024-04-11 13:05:14.768896
2420	Cordillera Administrative Region (CAR)	15	177	2024-04-11 13:05:14.772569	2024-04-11 13:05:14.772569
2421	CALABARZON (Region IV-A)	40	177	2024-04-11 13:05:14.77643	2024-04-11 13:05:14.77643
2422	MIMAROPA (Region IV-B)	41	177	2024-04-11 13:05:14.780033	2024-04-11 13:05:14.780033
2423	Balochistan	BA	178	2024-04-11 13:05:14.783759	2024-04-11 13:05:14.783759
2424	Gilgit-Baltistan	GB	178	2024-04-11 13:05:14.787509	2024-04-11 13:05:14.787509
2425	Islamabad	IS	178	2024-04-11 13:05:14.791107	2024-04-11 13:05:14.791107
2426	Azad Kashmir	JK	178	2024-04-11 13:05:14.794937	2024-04-11 13:05:14.794937
2427	Khyber Pakhtunkhwa	KP	178	2024-04-11 13:05:14.798646	2024-04-11 13:05:14.798646
2428	Punjab	PB	178	2024-04-11 13:05:14.802213	2024-04-11 13:05:14.802213
2429	Sindh	SD	178	2024-04-11 13:05:14.805981	2024-04-11 13:05:14.805981
2430	Federally Administered Tribal Areas	TA	178	2024-04-11 13:05:14.809438	2024-04-11 13:05:14.809438
2431	Dolnośląskie	DS	179	2024-04-11 13:05:14.812982	2024-04-11 13:05:14.812982
2432	Kujawsko-pomorskie	KP	179	2024-04-11 13:05:14.816406	2024-04-11 13:05:14.816406
2433	Lubuskie	LB	179	2024-04-11 13:05:14.8198	2024-04-11 13:05:14.8198
2434	Łódzkie	LD	179	2024-04-11 13:05:14.82336	2024-04-11 13:05:14.82336
2435	Lubelskie	LU	179	2024-04-11 13:05:14.82714	2024-04-11 13:05:14.82714
2436	Małopolskie	MA	179	2024-04-11 13:05:14.830909	2024-04-11 13:05:14.830909
2437	Mazowieckie	MZ	179	2024-04-11 13:05:14.834503	2024-04-11 13:05:14.834503
2438	Opolskie	OP	179	2024-04-11 13:05:14.838002	2024-04-11 13:05:14.838002
2439	Podlaskie	PD	179	2024-04-11 13:05:14.84155	2024-04-11 13:05:14.84155
2440	Podkarpackie	PK	179	2024-04-11 13:05:14.845154	2024-04-11 13:05:14.845154
2441	Pomorskie	PM	179	2024-04-11 13:05:14.848699	2024-04-11 13:05:14.848699
2442	Świętokrzyskie	SK	179	2024-04-11 13:05:14.852345	2024-04-11 13:05:14.852345
2443	Śląskie	SL	179	2024-04-11 13:05:14.855958	2024-04-11 13:05:14.855958
2444	Warmińsko-mazurskie	WN	179	2024-04-11 13:05:14.8594	2024-04-11 13:05:14.8594
2445	Wielkopolskie	WP	179	2024-04-11 13:05:14.862842	2024-04-11 13:05:14.862842
2446	Zachodniopomorskie	ZP	179	2024-04-11 13:05:14.866421	2024-04-11 13:05:14.866421
2447	Bethlehem	BTH	183	2024-04-11 13:05:14.870231	2024-04-11 13:05:14.870231
2448	Deir El Balah	DEB	183	2024-04-11 13:05:14.873951	2024-04-11 13:05:14.873951
2449	Gaza	GZA	183	2024-04-11 13:05:14.877522	2024-04-11 13:05:14.877522
2450	Hebron	HBN	183	2024-04-11 13:05:14.881007	2024-04-11 13:05:14.881007
2451	Jerusalem	JEM	183	2024-04-11 13:05:14.88448	2024-04-11 13:05:14.88448
2452	Jenin	JEN	183	2024-04-11 13:05:14.887986	2024-04-11 13:05:14.887986
2453	Jericho - Al Aghwar	JRH	183	2024-04-11 13:05:14.891649	2024-04-11 13:05:14.891649
2454	Khan Yunis	KYS	183	2024-04-11 13:05:14.89528	2024-04-11 13:05:14.89528
2455	Nablus	NBS	183	2024-04-11 13:05:14.898807	2024-04-11 13:05:14.898807
2456	North Gaza	NGZ	183	2024-04-11 13:05:14.902282	2024-04-11 13:05:14.902282
2457	Qalqilya	QQA	183	2024-04-11 13:05:14.905751	2024-04-11 13:05:14.905751
2458	Ramallah	RBH	183	2024-04-11 13:05:14.909155	2024-04-11 13:05:14.909155
2459	Rafah	RFH	183	2024-04-11 13:05:14.913287	2024-04-11 13:05:14.913287
2460	Salfit	SLT	183	2024-04-11 13:05:14.916863	2024-04-11 13:05:14.916863
2461	Tubas	TBS	183	2024-04-11 13:05:14.920445	2024-04-11 13:05:14.920445
2462	Tulkarm	TKM	183	2024-04-11 13:05:14.924069	2024-04-11 13:05:14.924069
2463	Aveiro	01	184	2024-04-11 13:05:14.927845	2024-04-11 13:05:14.927845
2464	Beja	02	184	2024-04-11 13:05:14.931635	2024-04-11 13:05:14.931635
2465	Braga	03	184	2024-04-11 13:05:14.935303	2024-04-11 13:05:14.935303
2466	Bragança	04	184	2024-04-11 13:05:14.93892	2024-04-11 13:05:14.93892
2467	Castelo Branco	05	184	2024-04-11 13:05:14.942693	2024-04-11 13:05:14.942693
2468	Coimbra	06	184	2024-04-11 13:05:14.946289	2024-04-11 13:05:14.946289
2469	Évora	07	184	2024-04-11 13:05:14.949935	2024-04-11 13:05:14.949935
2470	Faro	08	184	2024-04-11 13:05:14.953614	2024-04-11 13:05:14.953614
2471	Guarda	09	184	2024-04-11 13:05:14.957147	2024-04-11 13:05:14.957147
2472	Leiria	10	184	2024-04-11 13:05:14.960785	2024-04-11 13:05:14.960785
2473	Lisboa	11	184	2024-04-11 13:05:14.968152	2024-04-11 13:05:14.968152
2474	Portalegre	12	184	2024-04-11 13:05:14.971746	2024-04-11 13:05:14.971746
2475	Porto	13	184	2024-04-11 13:05:14.975245	2024-04-11 13:05:14.975245
2476	Santarém	14	184	2024-04-11 13:05:14.978749	2024-04-11 13:05:14.978749
2477	Setúbal	15	184	2024-04-11 13:05:14.982203	2024-04-11 13:05:14.982203
2478	Viana do Castelo	16	184	2024-04-11 13:05:14.985852	2024-04-11 13:05:14.985852
2479	Vila Real	17	184	2024-04-11 13:05:14.990125	2024-04-11 13:05:14.990125
2480	Viseu	18	184	2024-04-11 13:05:14.994279	2024-04-11 13:05:14.994279
2481	Região Autónoma dos Açores	20	184	2024-04-11 13:05:14.998366	2024-04-11 13:05:14.998366
2482	Região Autónoma da Madeira	30	184	2024-04-11 13:05:15.002231	2024-04-11 13:05:15.002231
2483	Aimeliik	002	185	2024-04-11 13:05:15.00613	2024-04-11 13:05:15.00613
2484	Airai	004	185	2024-04-11 13:05:15.010025	2024-04-11 13:05:15.010025
2485	Angaur	010	185	2024-04-11 13:05:15.01384	2024-04-11 13:05:15.01384
2486	Hatobohei	050	185	2024-04-11 13:05:15.017803	2024-04-11 13:05:15.017803
2487	Kayangel	100	185	2024-04-11 13:05:15.021662	2024-04-11 13:05:15.021662
2488	Koror	150	185	2024-04-11 13:05:15.025749	2024-04-11 13:05:15.025749
2489	Melekeok	212	185	2024-04-11 13:05:15.03247	2024-04-11 13:05:15.03247
2490	Ngaraard	214	185	2024-04-11 13:05:15.03639	2024-04-11 13:05:15.03639
2491	Ngarchelong	218	185	2024-04-11 13:05:15.040301	2024-04-11 13:05:15.040301
2492	Ngardmau	222	185	2024-04-11 13:05:15.044055	2024-04-11 13:05:15.044055
2493	Ngatpang	224	185	2024-04-11 13:05:15.048045	2024-04-11 13:05:15.048045
2494	Ngchesar	226	185	2024-04-11 13:05:15.051844	2024-04-11 13:05:15.051844
2495	Ngeremlengui	227	185	2024-04-11 13:05:15.055603	2024-04-11 13:05:15.055603
2496	Ngiwal	228	185	2024-04-11 13:05:15.059919	2024-04-11 13:05:15.059919
2497	Peleliu	350	185	2024-04-11 13:05:15.064073	2024-04-11 13:05:15.064073
2498	Sonsorol	370	185	2024-04-11 13:05:15.067976	2024-04-11 13:05:15.067976
2499	Concepción	1	186	2024-04-11 13:05:15.071917	2024-04-11 13:05:15.071917
2500	Alto Paraná	10	186	2024-04-11 13:05:15.075778	2024-04-11 13:05:15.075778
2501	Central	11	186	2024-04-11 13:05:15.079777	2024-04-11 13:05:15.079777
2502	Ñeembucú	12	186	2024-04-11 13:05:15.083464	2024-04-11 13:05:15.083464
2503	Amambay	13	186	2024-04-11 13:05:15.087104	2024-04-11 13:05:15.087104
2504	Canindeyú	14	186	2024-04-11 13:05:15.09061	2024-04-11 13:05:15.09061
2505	Presidente Hayes	15	186	2024-04-11 13:05:15.094108	2024-04-11 13:05:15.094108
2506	Alto Paraguay	16	186	2024-04-11 13:05:15.097741	2024-04-11 13:05:15.097741
2507	Boquerón	19	186	2024-04-11 13:05:15.101421	2024-04-11 13:05:15.101421
2508	San Pedro	2	186	2024-04-11 13:05:15.105025	2024-04-11 13:05:15.105025
2509	Cordillera	3	186	2024-04-11 13:05:15.108698	2024-04-11 13:05:15.108698
2510	Guairá	4	186	2024-04-11 13:05:15.112274	2024-04-11 13:05:15.112274
2511	Caaguazú	5	186	2024-04-11 13:05:15.116026	2024-04-11 13:05:15.116026
2512	Caazapá	6	186	2024-04-11 13:05:15.119708	2024-04-11 13:05:15.119708
2513	Itapúa	7	186	2024-04-11 13:05:15.12318	2024-04-11 13:05:15.12318
2514	Misiones	8	186	2024-04-11 13:05:15.127137	2024-04-11 13:05:15.127137
2515	Paraguarí	9	186	2024-04-11 13:05:15.130866	2024-04-11 13:05:15.130866
2516	Asunción	ASU	186	2024-04-11 13:05:15.134414	2024-04-11 13:05:15.134414
2517	Ad Dawhah	DA	187	2024-04-11 13:05:15.137969	2024-04-11 13:05:15.137969
2518	Al Khawr wa adh Dhakhīrah	KH	187	2024-04-11 13:05:15.141355	2024-04-11 13:05:15.141355
2519	Ash Shamal	MS	187	2024-04-11 13:05:15.144907	2024-04-11 13:05:15.144907
2520	Ar Rayyan	RA	187	2024-04-11 13:05:15.148512	2024-04-11 13:05:15.148512
2521	Umm Salal	US	187	2024-04-11 13:05:15.152068	2024-04-11 13:05:15.152068
2522	Al Wakrah	WA	187	2024-04-11 13:05:15.155617	2024-04-11 13:05:15.155617
2523	Az̧ Z̧a‘āyin	ZA	187	2024-04-11 13:05:15.159117	2024-04-11 13:05:15.159117
2524	Alba	AB	189	2024-04-11 13:05:15.162794	2024-04-11 13:05:15.162794
2525	Argeș	AG	189	2024-04-11 13:05:15.166266	2024-04-11 13:05:15.166266
2526	Arad	AR	189	2024-04-11 13:05:15.16968	2024-04-11 13:05:15.16968
2527	București	B	189	2024-04-11 13:05:15.173201	2024-04-11 13:05:15.173201
2528	Bacău	BC	189	2024-04-11 13:05:15.176764	2024-04-11 13:05:15.176764
2529	Bihor	BH	189	2024-04-11 13:05:15.180152	2024-04-11 13:05:15.180152
2530	Bistrița-Năsăud	BN	189	2024-04-11 13:05:15.18359	2024-04-11 13:05:15.18359
2531	Brăila	BR	189	2024-04-11 13:05:15.186976	2024-04-11 13:05:15.186976
2532	Botoșani	BT	189	2024-04-11 13:05:15.190378	2024-04-11 13:05:15.190378
2533	Brașov	BV	189	2024-04-11 13:05:15.193868	2024-04-11 13:05:15.193868
2534	Buzău	BZ	189	2024-04-11 13:05:15.197583	2024-04-11 13:05:15.197583
2535	Cluj	CJ	189	2024-04-11 13:05:15.206348	2024-04-11 13:05:15.206348
2536	Călărași	CL	189	2024-04-11 13:05:15.211995	2024-04-11 13:05:15.211995
2537	Caraș-Severin	CS	189	2024-04-11 13:05:15.21579	2024-04-11 13:05:15.21579
2538	Constanța	CT	189	2024-04-11 13:05:15.219529	2024-04-11 13:05:15.219529
2539	Covasna	CV	189	2024-04-11 13:05:15.223285	2024-04-11 13:05:15.223285
2540	Dâmbovița	DB	189	2024-04-11 13:05:15.227074	2024-04-11 13:05:15.227074
2541	Dolj	DJ	189	2024-04-11 13:05:15.230833	2024-04-11 13:05:15.230833
2542	Gorj	GJ	189	2024-04-11 13:05:15.234584	2024-04-11 13:05:15.234584
2543	Galați	GL	189	2024-04-11 13:05:15.238407	2024-04-11 13:05:15.238407
2544	Giurgiu	GR	189	2024-04-11 13:05:15.241997	2024-04-11 13:05:15.241997
2545	Hunedoara	HD	189	2024-04-11 13:05:15.245582	2024-04-11 13:05:15.245582
2546	Harghita	HR	189	2024-04-11 13:05:15.249163	2024-04-11 13:05:15.249163
2547	Ilfov	IF	189	2024-04-11 13:05:15.252697	2024-04-11 13:05:15.252697
2548	Ialomița	IL	189	2024-04-11 13:05:15.256417	2024-04-11 13:05:15.256417
2549	Iași	IS	189	2024-04-11 13:05:15.260018	2024-04-11 13:05:15.260018
2550	Mehedinți	MH	189	2024-04-11 13:05:15.263707	2024-04-11 13:05:15.263707
2551	Maramureș	MM	189	2024-04-11 13:05:15.267425	2024-04-11 13:05:15.267425
2552	Mureș	MS	189	2024-04-11 13:05:15.271216	2024-04-11 13:05:15.271216
2553	Neamț	NT	189	2024-04-11 13:05:15.275166	2024-04-11 13:05:15.275166
2554	Olt	OT	189	2024-04-11 13:05:15.278945	2024-04-11 13:05:15.278945
2555	Prahova	PH	189	2024-04-11 13:05:15.282746	2024-04-11 13:05:15.282746
2556	Sibiu	SB	189	2024-04-11 13:05:15.286606	2024-04-11 13:05:15.286606
2557	Sălaj	SJ	189	2024-04-11 13:05:15.290358	2024-04-11 13:05:15.290358
2558	Satu Mare	SM	189	2024-04-11 13:05:15.294505	2024-04-11 13:05:15.294505
2559	Suceava	SV	189	2024-04-11 13:05:15.298603	2024-04-11 13:05:15.298603
2560	Tulcea	TL	189	2024-04-11 13:05:15.302665	2024-04-11 13:05:15.302665
2561	Timiș	TM	189	2024-04-11 13:05:15.306598	2024-04-11 13:05:15.306598
2562	Teleorman	TR	189	2024-04-11 13:05:15.310527	2024-04-11 13:05:15.310527
2563	Vâlcea	VL	189	2024-04-11 13:05:15.314313	2024-04-11 13:05:15.314313
2564	Vrancea	VN	189	2024-04-11 13:05:15.318027	2024-04-11 13:05:15.318027
2565	Vaslui	VS	189	2024-04-11 13:05:15.321594	2024-04-11 13:05:15.321594
2566	Beograd	00	190	2024-04-11 13:05:15.325342	2024-04-11 13:05:15.325342
2567	Mačvanski okrug	08	190	2024-04-11 13:05:15.328845	2024-04-11 13:05:15.328845
2568	Kolubarski okrug	09	190	2024-04-11 13:05:15.332609	2024-04-11 13:05:15.332609
2569	Podunavski okrug	10	190	2024-04-11 13:05:15.336167	2024-04-11 13:05:15.336167
2570	Braničevski okrug	11	190	2024-04-11 13:05:15.339736	2024-04-11 13:05:15.339736
2571	Šumadijski okrug	12	190	2024-04-11 13:05:15.34326	2024-04-11 13:05:15.34326
2572	Pomoravski okrug	13	190	2024-04-11 13:05:15.346835	2024-04-11 13:05:15.346835
2573	Borski okrug	14	190	2024-04-11 13:05:15.35048	2024-04-11 13:05:15.35048
2574	Zaječarski okrug	15	190	2024-04-11 13:05:15.354151	2024-04-11 13:05:15.354151
2575	Zlatiborski okrug	16	190	2024-04-11 13:05:15.357989	2024-04-11 13:05:15.357989
2576	Moravički okrug	17	190	2024-04-11 13:05:15.361831	2024-04-11 13:05:15.361831
2577	Raški okrug	18	190	2024-04-11 13:05:15.365467	2024-04-11 13:05:15.365467
2578	Rasinski okrug	19	190	2024-04-11 13:05:15.369068	2024-04-11 13:05:15.369068
2579	Nišavski okrug	20	190	2024-04-11 13:05:15.372789	2024-04-11 13:05:15.372789
2580	Toplički okrug	21	190	2024-04-11 13:05:15.376454	2024-04-11 13:05:15.376454
2581	Pirotski okrug	22	190	2024-04-11 13:05:15.380133	2024-04-11 13:05:15.380133
2582	Jablanički okrug	23	190	2024-04-11 13:05:15.383855	2024-04-11 13:05:15.383855
2583	Pčinjski okrug	24	190	2024-04-11 13:05:15.387463	2024-04-11 13:05:15.387463
2584	Kosovo-Metohija	KM	190	2024-04-11 13:05:15.391105	2024-04-11 13:05:15.391105
2585	Vojvodina	VO	190	2024-04-11 13:05:15.394573	2024-04-11 13:05:15.394573
2586	Adygeya, Respublika	AD	191	2024-04-11 13:05:15.398147	2024-04-11 13:05:15.398147
2587	Altay, Respublika	AL	191	2024-04-11 13:05:15.401813	2024-04-11 13:05:15.401813
2588	Altayskiy kray	ALT	191	2024-04-11 13:05:15.405364	2024-04-11 13:05:15.405364
2589	Amurskaya oblast'	AMU	191	2024-04-11 13:05:15.408826	2024-04-11 13:05:15.408826
2590	Arkhangel'skaya oblast'	ARK	191	2024-04-11 13:05:15.412306	2024-04-11 13:05:15.412306
2591	Astrakhanskaya oblast'	AST	191	2024-04-11 13:05:15.415758	2024-04-11 13:05:15.415758
2592	Bashkortostan, Respublika	BA	191	2024-04-11 13:05:15.419272	2024-04-11 13:05:15.419272
2593	Belgorodskaya oblast'	BEL	191	2024-04-11 13:05:15.423066	2024-04-11 13:05:15.423066
2594	Bryanskaya oblast'	BRY	191	2024-04-11 13:05:15.427064	2024-04-11 13:05:15.427064
2595	Buryatiya, Respublika	BU	191	2024-04-11 13:05:15.431305	2024-04-11 13:05:15.431305
2596	Chechenskaya Respublika	CE	191	2024-04-11 13:05:15.435117	2024-04-11 13:05:15.435117
2597	Chelyabinskaya oblast'	CHE	191	2024-04-11 13:05:15.441969	2024-04-11 13:05:15.441969
2598	Chukotskiy avtonomnyy okrug	CHU	191	2024-04-11 13:05:15.445965	2024-04-11 13:05:15.445965
2599	Chuvashskaya Respublika	CU	191	2024-04-11 13:05:15.449912	2024-04-11 13:05:15.449912
2600	Dagestan, Respublika	DA	191	2024-04-11 13:05:15.453794	2024-04-11 13:05:15.453794
2601	Respublika Ingushetiya	IN	191	2024-04-11 13:05:15.457589	2024-04-11 13:05:15.457589
2602	Irkutiskaya oblast'	IRK	191	2024-04-11 13:05:15.461272	2024-04-11 13:05:15.461272
2603	Ivanovskaya oblast'	IVA	191	2024-04-11 13:05:15.467234	2024-04-11 13:05:15.467234
2604	Kamchatskiy kray	KAM	191	2024-04-11 13:05:15.470996	2024-04-11 13:05:15.470996
2605	Kabardino-Balkarskaya Respublika	KB	191	2024-04-11 13:05:15.474826	2024-04-11 13:05:15.474826
2606	Karachayevo-Cherkesskaya Respublika	KC	191	2024-04-11 13:05:15.478688	2024-04-11 13:05:15.478688
2607	Krasnodarskiy kray	KDA	191	2024-04-11 13:05:15.482499	2024-04-11 13:05:15.482499
2608	Kemerovskaya oblast'	KEM	191	2024-04-11 13:05:15.486371	2024-04-11 13:05:15.486371
2609	Kaliningradskaya oblast'	KGD	191	2024-04-11 13:05:15.490103	2024-04-11 13:05:15.490103
2610	Kurganskaya oblast'	KGN	191	2024-04-11 13:05:15.493705	2024-04-11 13:05:15.493705
2611	Khabarovskiy kray	KHA	191	2024-04-11 13:05:15.497572	2024-04-11 13:05:15.497572
2612	Khanty-Mansiysky avtonomnyy okrug-Yugra	KHM	191	2024-04-11 13:05:15.501554	2024-04-11 13:05:15.501554
2613	Kirovskaya oblast'	KIR	191	2024-04-11 13:05:15.505372	2024-04-11 13:05:15.505372
2614	Khakasiya, Respublika	KK	191	2024-04-11 13:05:15.509252	2024-04-11 13:05:15.509252
2615	Kalmykiya, Respublika	KL	191	2024-04-11 13:05:15.512899	2024-04-11 13:05:15.512899
2616	Kaluzhskaya oblast'	KLU	191	2024-04-11 13:05:15.516608	2024-04-11 13:05:15.516608
2617	Komi, Respublika	KO	191	2024-04-11 13:05:15.520215	2024-04-11 13:05:15.520215
2618	Kostromskaya oblast'	KOS	191	2024-04-11 13:05:15.523915	2024-04-11 13:05:15.523915
2619	Kareliya, Respublika	KR	191	2024-04-11 13:05:15.527724	2024-04-11 13:05:15.527724
2620	Kurskaya oblast'	KRS	191	2024-04-11 13:05:15.531296	2024-04-11 13:05:15.531296
2621	Krasnoyarskiy kray	KYA	191	2024-04-11 13:05:15.534902	2024-04-11 13:05:15.534902
2622	Leningradskaya oblast'	LEN	191	2024-04-11 13:05:15.538719	2024-04-11 13:05:15.538719
2623	Lipetskaya oblast'	LIP	191	2024-04-11 13:05:15.542255	2024-04-11 13:05:15.542255
2624	Magadanskaya oblast'	MAG	191	2024-04-11 13:05:15.545868	2024-04-11 13:05:15.545868
2625	Mariy El, Respublika	ME	191	2024-04-11 13:05:15.549665	2024-04-11 13:05:15.549665
2626	Mordoviya, Respublika	MO	191	2024-04-11 13:05:15.55321	2024-04-11 13:05:15.55321
2627	Moskovskaya oblast'	MOS	191	2024-04-11 13:05:15.556795	2024-04-11 13:05:15.556795
2628	Moskva	MOW	191	2024-04-11 13:05:15.560659	2024-04-11 13:05:15.560659
2629	Murmanskaya oblast'	MUR	191	2024-04-11 13:05:15.564704	2024-04-11 13:05:15.564704
2630	Nenetskiy avtonomnyy okrug	NEN	191	2024-04-11 13:05:15.568655	2024-04-11 13:05:15.568655
2631	Novgorodskaya oblast'	NGR	191	2024-04-11 13:05:15.572468	2024-04-11 13:05:15.572468
2632	Nizhegorodskaya oblast'	NIZ	191	2024-04-11 13:05:15.576157	2024-04-11 13:05:15.576157
2633	Novosibirskaya oblast'	NVS	191	2024-04-11 13:05:15.579708	2024-04-11 13:05:15.579708
2634	Omskaya oblast'	OMS	191	2024-04-11 13:05:15.583228	2024-04-11 13:05:15.583228
2635	Orenburgskaya oblast'	ORE	191	2024-04-11 13:05:15.586973	2024-04-11 13:05:15.586973
2636	Orlovskaya oblast'	ORL	191	2024-04-11 13:05:15.590503	2024-04-11 13:05:15.590503
2637	Permskiy kray	PER	191	2024-04-11 13:05:15.593904	2024-04-11 13:05:15.593904
2638	Penzenskaya oblast'	PNZ	191	2024-04-11 13:05:15.597464	2024-04-11 13:05:15.597464
2639	Primorskiy kray	PRI	191	2024-04-11 13:05:15.600906	2024-04-11 13:05:15.600906
2640	Pskovskaya oblast'	PSK	191	2024-04-11 13:05:15.604393	2024-04-11 13:05:15.604393
2641	Rostovskaya oblast'	ROS	191	2024-04-11 13:05:15.607934	2024-04-11 13:05:15.607934
2642	Ryazanskaya oblast'	RYA	191	2024-04-11 13:05:15.611427	2024-04-11 13:05:15.611427
2643	Sakha, Respublika [Yakutiya]	SA	191	2024-04-11 13:05:15.615028	2024-04-11 13:05:15.615028
2644	Sakhalinskaya oblast'	SAK	191	2024-04-11 13:05:15.618603	2024-04-11 13:05:15.618603
2645	Samaraskaya oblast'	SAM	191	2024-04-11 13:05:15.622144	2024-04-11 13:05:15.622144
2646	Saratovskaya oblast'	SAR	191	2024-04-11 13:05:15.625831	2024-04-11 13:05:15.625831
2647	Severnaya Osetiya-Alaniya, Respublika	SE	191	2024-04-11 13:05:15.629315	2024-04-11 13:05:15.629315
2877	Sevnica	110	200	2024-04-11 13:05:16.501246	2024-04-11 13:05:16.501246
2648	Smolenskaya oblast'	SMO	191	2024-04-11 13:05:15.632902	2024-04-11 13:05:15.632902
2649	Sankt-Peterburg	SPE	191	2024-04-11 13:05:15.636548	2024-04-11 13:05:15.636548
2650	Stavropol'skiy kray	STA	191	2024-04-11 13:05:15.640122	2024-04-11 13:05:15.640122
2651	Sverdlovskaya oblast'	SVE	191	2024-04-11 13:05:15.643708	2024-04-11 13:05:15.643708
2652	Tatarstan, Respublika	TA	191	2024-04-11 13:05:15.647271	2024-04-11 13:05:15.647271
2653	Tambovskaya oblast'	TAM	191	2024-04-11 13:05:15.650805	2024-04-11 13:05:15.650805
2654	Tomskaya oblast'	TOM	191	2024-04-11 13:05:15.654326	2024-04-11 13:05:15.654326
2655	Tul'skaya oblast'	TUL	191	2024-04-11 13:05:15.65781	2024-04-11 13:05:15.65781
2656	Tverskaya oblast'	TVE	191	2024-04-11 13:05:15.661253	2024-04-11 13:05:15.661253
2657	Tyva, Respublika [Tuva]	TY	191	2024-04-11 13:05:15.664864	2024-04-11 13:05:15.664864
2658	Tyumenskaya oblast'	TYU	191	2024-04-11 13:05:15.668277	2024-04-11 13:05:15.668277
2659	Udmurtskaya Respublika	UD	191	2024-04-11 13:05:15.671817	2024-04-11 13:05:15.671817
2660	Ul'yanovskaya oblast'	ULY	191	2024-04-11 13:05:15.675303	2024-04-11 13:05:15.675303
2661	Volgogradskaya oblast'	VGG	191	2024-04-11 13:05:15.67883	2024-04-11 13:05:15.67883
2662	Vladimirskaya oblast'	VLA	191	2024-04-11 13:05:15.682466	2024-04-11 13:05:15.682466
2663	Vologodskaya oblast'	VLG	191	2024-04-11 13:05:15.685972	2024-04-11 13:05:15.685972
2664	Voronezhskaya oblast'	VOR	191	2024-04-11 13:05:15.689488	2024-04-11 13:05:15.689488
2665	Yamalo-Nenetskiy avtonomnyy okrug	YAN	191	2024-04-11 13:05:15.693027	2024-04-11 13:05:15.693027
2666	Yaroslavskaya oblast'	YAR	191	2024-04-11 13:05:15.696523	2024-04-11 13:05:15.696523
2667	Yevreyskaya avtonomnaya oblast'	YEV	191	2024-04-11 13:05:15.700047	2024-04-11 13:05:15.700047
2668	Zabajkal'skij kraj	ZAB	191	2024-04-11 13:05:15.703719	2024-04-11 13:05:15.703719
2669	Ville de Kigali	01	192	2024-04-11 13:05:15.707289	2024-04-11 13:05:15.707289
2670	Est	02	192	2024-04-11 13:05:15.71103	2024-04-11 13:05:15.71103
2671	Nord	03	192	2024-04-11 13:05:15.717395	2024-04-11 13:05:15.717395
2672	Ouest	04	192	2024-04-11 13:05:15.722324	2024-04-11 13:05:15.722324
2673	Sud	05	192	2024-04-11 13:05:15.726014	2024-04-11 13:05:15.726014
2674	Ar Riyāḍ	01	193	2024-04-11 13:05:15.729641	2024-04-11 13:05:15.729641
2675	Makkah	02	193	2024-04-11 13:05:15.736433	2024-04-11 13:05:15.736433
2676	Al Madīnah	03	193	2024-04-11 13:05:15.741733	2024-04-11 13:05:15.741733
2677	Ash Sharqīyah	04	193	2024-04-11 13:05:15.745731	2024-04-11 13:05:15.745731
2678	Al Qaşīm	05	193	2024-04-11 13:05:15.749785	2024-04-11 13:05:15.749785
2679	Ḥā'il	06	193	2024-04-11 13:05:15.753621	2024-04-11 13:05:15.753621
2680	Tabūk	07	193	2024-04-11 13:05:15.757568	2024-04-11 13:05:15.757568
2681	Al Ḥudūd ash Shamāliyah	08	193	2024-04-11 13:05:15.761495	2024-04-11 13:05:15.761495
2682	Jīzan	09	193	2024-04-11 13:05:15.765342	2024-04-11 13:05:15.765342
2683	Najrān	10	193	2024-04-11 13:05:15.769132	2024-04-11 13:05:15.769132
2684	Al Bāhah	11	193	2024-04-11 13:05:15.77305	2024-04-11 13:05:15.77305
2685	Al Jawf	12	193	2024-04-11 13:05:15.776897	2024-04-11 13:05:15.776897
2686	`Asīr	14	193	2024-04-11 13:05:15.780709	2024-04-11 13:05:15.780709
2687	Central	CE	194	2024-04-11 13:05:15.784464	2024-04-11 13:05:15.784464
2688	Choiseul	CH	194	2024-04-11 13:05:15.788077	2024-04-11 13:05:15.788077
2689	Capital Territory (Honiara)	CT	194	2024-04-11 13:05:15.791731	2024-04-11 13:05:15.791731
2690	Guadalcanal	GU	194	2024-04-11 13:05:15.795342	2024-04-11 13:05:15.795342
2691	Isabel	IS	194	2024-04-11 13:05:15.798951	2024-04-11 13:05:15.798951
2692	Makira	MK	194	2024-04-11 13:05:15.802707	2024-04-11 13:05:15.802707
2693	Malaita	ML	194	2024-04-11 13:05:15.806203	2024-04-11 13:05:15.806203
2694	Rennell and Bellona	RB	194	2024-04-11 13:05:15.809758	2024-04-11 13:05:15.809758
2695	Temotu	TE	194	2024-04-11 13:05:15.813248	2024-04-11 13:05:15.813248
2696	Western	WE	194	2024-04-11 13:05:15.816734	2024-04-11 13:05:15.816734
2697	Anse aux Pins	01	195	2024-04-11 13:05:15.820567	2024-04-11 13:05:15.820567
2698	Anse Boileau	02	195	2024-04-11 13:05:15.824186	2024-04-11 13:05:15.824186
2699	Anse Etoile	03	195	2024-04-11 13:05:15.827813	2024-04-11 13:05:15.827813
2700	Anse Louis	04	195	2024-04-11 13:05:15.831502	2024-04-11 13:05:15.831502
2701	Anse Royale	05	195	2024-04-11 13:05:15.835138	2024-04-11 13:05:15.835138
2702	Baie Lazare	06	195	2024-04-11 13:05:15.838813	2024-04-11 13:05:15.838813
2703	Baie Sainte Anne	07	195	2024-04-11 13:05:15.842537	2024-04-11 13:05:15.842537
2704	Beau Vallon	08	195	2024-04-11 13:05:15.846141	2024-04-11 13:05:15.846141
2705	Bel Air	09	195	2024-04-11 13:05:15.85013	2024-04-11 13:05:15.85013
2706	Bel Ombre	10	195	2024-04-11 13:05:15.856668	2024-04-11 13:05:15.856668
2707	Cascade	11	195	2024-04-11 13:05:15.860482	2024-04-11 13:05:15.860482
2708	Glacis	12	195	2024-04-11 13:05:15.864296	2024-04-11 13:05:15.864296
2709	Grand Anse Mahe	13	195	2024-04-11 13:05:15.86831	2024-04-11 13:05:15.86831
2710	Grand Anse Praslin	14	195	2024-04-11 13:05:15.87234	2024-04-11 13:05:15.87234
2711	La Digue	15	195	2024-04-11 13:05:15.876591	2024-04-11 13:05:15.876591
2712	English River	16	195	2024-04-11 13:05:15.880496	2024-04-11 13:05:15.880496
2713	Mont Buxton	17	195	2024-04-11 13:05:15.88432	2024-04-11 13:05:15.88432
2714	Mont Fleuri	18	195	2024-04-11 13:05:15.888268	2024-04-11 13:05:15.888268
2715	Plaisance	19	195	2024-04-11 13:05:15.892217	2024-04-11 13:05:15.892217
2716	Pointe Larue	20	195	2024-04-11 13:05:15.896469	2024-04-11 13:05:15.896469
2717	Port Glaud	21	195	2024-04-11 13:05:15.90056	2024-04-11 13:05:15.90056
2718	Saint Louis	22	195	2024-04-11 13:05:15.904548	2024-04-11 13:05:15.904548
2719	Takamaka	23	195	2024-04-11 13:05:15.908391	2024-04-11 13:05:15.908391
2720	Les Mamelles	24	195	2024-04-11 13:05:15.912259	2024-04-11 13:05:15.912259
2721	Roche Caiman	25	195	2024-04-11 13:05:15.916404	2024-04-11 13:05:15.916404
2722	Zalingei	DC	196	2024-04-11 13:05:15.920406	2024-04-11 13:05:15.920406
2723	Sharq Dārfūr	DE	196	2024-04-11 13:05:15.924305	2024-04-11 13:05:15.924305
2724	Shamāl Dārfūr	DN	196	2024-04-11 13:05:15.928277	2024-04-11 13:05:15.928277
2725	Janūb Dārfūr	DS	196	2024-04-11 13:05:15.932007	2024-04-11 13:05:15.932007
2726	Gharb Dārfūr	DW	196	2024-04-11 13:05:15.935815	2024-04-11 13:05:15.935815
2727	Al Qaḑārif	GD	196	2024-04-11 13:05:15.939662	2024-04-11 13:05:15.939662
2728	Al Jazīrah	GZ	196	2024-04-11 13:05:15.943481	2024-04-11 13:05:15.943481
2729	Kassalā	KA	196	2024-04-11 13:05:15.947429	2024-04-11 13:05:15.947429
2730	Al Kharţūm	KH	196	2024-04-11 13:05:15.951299	2024-04-11 13:05:15.951299
2731	Shamāl Kurdufān	KN	196	2024-04-11 13:05:15.955048	2024-04-11 13:05:15.955048
2732	Janūb Kurdufān	KS	196	2024-04-11 13:05:15.958677	2024-04-11 13:05:15.958677
2733	An Nīl al Azraq	NB	196	2024-04-11 13:05:15.962242	2024-04-11 13:05:15.962242
2734	Ash Shamālīyah	NO	196	2024-04-11 13:05:15.970025	2024-04-11 13:05:15.970025
2735	An Nīl	NR	196	2024-04-11 13:05:15.974502	2024-04-11 13:05:15.974502
2736	An Nīl al Abyaḑ	NW	196	2024-04-11 13:05:15.977959	2024-04-11 13:05:15.977959
2737	Al Baḩr al Aḩmar	RS	196	2024-04-11 13:05:15.981503	2024-04-11 13:05:15.981503
2738	Sinnār	SI	196	2024-04-11 13:05:15.985217	2024-04-11 13:05:15.985217
2739	Stockholms län	AB	197	2024-04-11 13:05:15.988854	2024-04-11 13:05:15.988854
2740	Västerbottens län	AC	197	2024-04-11 13:05:15.992317	2024-04-11 13:05:15.992317
2741	Norrbottens län	BD	197	2024-04-11 13:05:15.995891	2024-04-11 13:05:15.995891
2742	Uppsala län	C	197	2024-04-11 13:05:15.999442	2024-04-11 13:05:15.999442
2743	Södermanlands län	D	197	2024-04-11 13:05:16.003092	2024-04-11 13:05:16.003092
2744	Östergötlands län	E	197	2024-04-11 13:05:16.006625	2024-04-11 13:05:16.006625
2745	Jönköpings län	F	197	2024-04-11 13:05:16.01008	2024-04-11 13:05:16.01008
2746	Kronobergs län	G	197	2024-04-11 13:05:16.013619	2024-04-11 13:05:16.013619
2747	Kalmar län	H	197	2024-04-11 13:05:16.017122	2024-04-11 13:05:16.017122
2748	Gotlands län	I	197	2024-04-11 13:05:16.020616	2024-04-11 13:05:16.020616
2749	Blekinge län	K	197	2024-04-11 13:05:16.024092	2024-04-11 13:05:16.024092
2750	Skåne län	M	197	2024-04-11 13:05:16.027577	2024-04-11 13:05:16.027577
2751	Hallands län	N	197	2024-04-11 13:05:16.031099	2024-04-11 13:05:16.031099
2752	Västra Götalands län	O	197	2024-04-11 13:05:16.034757	2024-04-11 13:05:16.034757
2753	Värmlands län	S	197	2024-04-11 13:05:16.038352	2024-04-11 13:05:16.038352
2754	Örebro län	T	197	2024-04-11 13:05:16.041902	2024-04-11 13:05:16.041902
2755	Västmanlands län	U	197	2024-04-11 13:05:16.045444	2024-04-11 13:05:16.045444
2756	Dalarnas län	W	197	2024-04-11 13:05:16.048944	2024-04-11 13:05:16.048944
2757	Gävleborgs län	X	197	2024-04-11 13:05:16.052542	2024-04-11 13:05:16.052542
2758	Västernorrlands län	Y	197	2024-04-11 13:05:16.056037	2024-04-11 13:05:16.056037
2759	Jämtlands län	Z	197	2024-04-11 13:05:16.059612	2024-04-11 13:05:16.059612
2760	Central Singapore	01	198	2024-04-11 13:05:16.063839	2024-04-11 13:05:16.063839
2761	North East	02	198	2024-04-11 13:05:16.067599	2024-04-11 13:05:16.067599
2762	North West	03	198	2024-04-11 13:05:16.071216	2024-04-11 13:05:16.071216
2763	South East	04	198	2024-04-11 13:05:16.074799	2024-04-11 13:05:16.074799
2764	South West	05	198	2024-04-11 13:05:16.078278	2024-04-11 13:05:16.078278
2765	Ascension	AC	199	2024-04-11 13:05:16.082083	2024-04-11 13:05:16.082083
2766	Saint Helena	HL	199	2024-04-11 13:05:16.085741	2024-04-11 13:05:16.085741
2767	Tristan da Cunha	TA	199	2024-04-11 13:05:16.089424	2024-04-11 13:05:16.089424
2768	Ajdovščina	001	200	2024-04-11 13:05:16.093139	2024-04-11 13:05:16.093139
2769	Beltinci	002	200	2024-04-11 13:05:16.096683	2024-04-11 13:05:16.096683
2770	Bled	003	200	2024-04-11 13:05:16.100288	2024-04-11 13:05:16.100288
2771	Bohinj	004	200	2024-04-11 13:05:16.103959	2024-04-11 13:05:16.103959
2772	Borovnica	005	200	2024-04-11 13:05:16.107459	2024-04-11 13:05:16.107459
2773	Bovec	006	200	2024-04-11 13:05:16.111032	2024-04-11 13:05:16.111032
2774	Brda	007	200	2024-04-11 13:05:16.114592	2024-04-11 13:05:16.114592
2775	Brezovica	008	200	2024-04-11 13:05:16.1181	2024-04-11 13:05:16.1181
2776	Brežice	009	200	2024-04-11 13:05:16.121796	2024-04-11 13:05:16.121796
2777	Tišina	010	200	2024-04-11 13:05:16.125399	2024-04-11 13:05:16.125399
2778	Celje	011	200	2024-04-11 13:05:16.128986	2024-04-11 13:05:16.128986
2779	Cerklje na Gorenjskem	012	200	2024-04-11 13:05:16.132605	2024-04-11 13:05:16.132605
2780	Cerknica	013	200	2024-04-11 13:05:16.136131	2024-04-11 13:05:16.136131
2781	Cerkno	014	200	2024-04-11 13:05:16.139766	2024-04-11 13:05:16.139766
2782	Črenšovci	015	200	2024-04-11 13:05:16.143251	2024-04-11 13:05:16.143251
2783	Črna na Koroškem	016	200	2024-04-11 13:05:16.146737	2024-04-11 13:05:16.146737
2784	Črnomelj	017	200	2024-04-11 13:05:16.150422	2024-04-11 13:05:16.150422
2785	Destrnik	018	200	2024-04-11 13:05:16.154077	2024-04-11 13:05:16.154077
2786	Divača	019	200	2024-04-11 13:05:16.157742	2024-04-11 13:05:16.157742
2787	Dobrepolje	020	200	2024-04-11 13:05:16.161321	2024-04-11 13:05:16.161321
2788	Dobrova-Polhov Gradec	021	200	2024-04-11 13:05:16.164826	2024-04-11 13:05:16.164826
2789	Dol pri Ljubljani	022	200	2024-04-11 13:05:16.16834	2024-04-11 13:05:16.16834
2790	Domžale	023	200	2024-04-11 13:05:16.17199	2024-04-11 13:05:16.17199
2791	Dornava	024	200	2024-04-11 13:05:16.175486	2024-04-11 13:05:16.175486
2792	Dravograd	025	200	2024-04-11 13:05:16.179026	2024-04-11 13:05:16.179026
2793	Duplek	026	200	2024-04-11 13:05:16.182481	2024-04-11 13:05:16.182481
2794	Gorenja vas-Poljane	027	200	2024-04-11 13:05:16.185951	2024-04-11 13:05:16.185951
2795	Gorišnica	028	200	2024-04-11 13:05:16.189598	2024-04-11 13:05:16.189598
2796	Gornja Radgona	029	200	2024-04-11 13:05:16.193167	2024-04-11 13:05:16.193167
2797	Gornji Grad	030	200	2024-04-11 13:05:16.196665	2024-04-11 13:05:16.196665
2798	Gornji Petrovci	031	200	2024-04-11 13:05:16.202201	2024-04-11 13:05:16.202201
2799	Grosuplje	032	200	2024-04-11 13:05:16.207657	2024-04-11 13:05:16.207657
2800	Šalovci	033	200	2024-04-11 13:05:16.211486	2024-04-11 13:05:16.211486
2801	Hrastnik	034	200	2024-04-11 13:05:16.215495	2024-04-11 13:05:16.215495
2802	Hrpelje-Kozina	035	200	2024-04-11 13:05:16.21934	2024-04-11 13:05:16.21934
2803	Idrija	036	200	2024-04-11 13:05:16.2231	2024-04-11 13:05:16.2231
2804	Ig	037	200	2024-04-11 13:05:16.226949	2024-04-11 13:05:16.226949
2805	Ilirska Bistrica	038	200	2024-04-11 13:05:16.230626	2024-04-11 13:05:16.230626
2806	Ivančna Gorica	039	200	2024-04-11 13:05:16.234534	2024-04-11 13:05:16.234534
2807	Izola/Isola	040	200	2024-04-11 13:05:16.238315	2024-04-11 13:05:16.238315
2808	Jesenice	041	200	2024-04-11 13:05:16.242014	2024-04-11 13:05:16.242014
2809	Juršinci	042	200	2024-04-11 13:05:16.245768	2024-04-11 13:05:16.245768
2810	Kamnik	043	200	2024-04-11 13:05:16.249541	2024-04-11 13:05:16.249541
2811	Kanal	044	200	2024-04-11 13:05:16.253274	2024-04-11 13:05:16.253274
2812	Kidričevo	045	200	2024-04-11 13:05:16.257086	2024-04-11 13:05:16.257086
2813	Kobarid	046	200	2024-04-11 13:05:16.26085	2024-04-11 13:05:16.26085
2814	Kobilje	047	200	2024-04-11 13:05:16.267514	2024-04-11 13:05:16.267514
2815	Kočevje	048	200	2024-04-11 13:05:16.271458	2024-04-11 13:05:16.271458
2816	Komen	049	200	2024-04-11 13:05:16.275325	2024-04-11 13:05:16.275325
2817	Koper/Capodistria	050	200	2024-04-11 13:05:16.279122	2024-04-11 13:05:16.279122
2818	Kozje	051	200	2024-04-11 13:05:16.282917	2024-04-11 13:05:16.282917
2819	Kranj	052	200	2024-04-11 13:05:16.286832	2024-04-11 13:05:16.286832
2820	Kranjska Gora	053	200	2024-04-11 13:05:16.290628	2024-04-11 13:05:16.290628
2821	Krško	054	200	2024-04-11 13:05:16.294391	2024-04-11 13:05:16.294391
2822	Kungota	055	200	2024-04-11 13:05:16.29815	2024-04-11 13:05:16.29815
2823	Kuzma	056	200	2024-04-11 13:05:16.302028	2024-04-11 13:05:16.302028
2824	Laško	057	200	2024-04-11 13:05:16.305857	2024-04-11 13:05:16.305857
2825	Lenart	058	200	2024-04-11 13:05:16.309651	2024-04-11 13:05:16.309651
2826	Lendava/Lendva	059	200	2024-04-11 13:05:16.313347	2024-04-11 13:05:16.313347
2827	Litija	060	200	2024-04-11 13:05:16.317004	2024-04-11 13:05:16.317004
2828	Ljubljana	061	200	2024-04-11 13:05:16.32067	2024-04-11 13:05:16.32067
2829	Ljubno	062	200	2024-04-11 13:05:16.324445	2024-04-11 13:05:16.324445
2830	Ljutomer	063	200	2024-04-11 13:05:16.328054	2024-04-11 13:05:16.328054
2831	Logatec	064	200	2024-04-11 13:05:16.331773	2024-04-11 13:05:16.331773
2832	Loška dolina	065	200	2024-04-11 13:05:16.335379	2024-04-11 13:05:16.335379
2833	Loški Potok	066	200	2024-04-11 13:05:16.339036	2024-04-11 13:05:16.339036
2834	Luče	067	200	2024-04-11 13:05:16.342638	2024-04-11 13:05:16.342638
2835	Lukovica	068	200	2024-04-11 13:05:16.346239	2024-04-11 13:05:16.346239
2836	Majšperk	069	200	2024-04-11 13:05:16.349758	2024-04-11 13:05:16.349758
2837	Maribor	070	200	2024-04-11 13:05:16.353331	2024-04-11 13:05:16.353331
2838	Medvode	071	200	2024-04-11 13:05:16.357017	2024-04-11 13:05:16.357017
2839	Mengeš	072	200	2024-04-11 13:05:16.360609	2024-04-11 13:05:16.360609
2840	Metlika	073	200	2024-04-11 13:05:16.364242	2024-04-11 13:05:16.364242
2841	Mežica	074	200	2024-04-11 13:05:16.367975	2024-04-11 13:05:16.367975
2842	Miren-Kostanjevica	075	200	2024-04-11 13:05:16.371663	2024-04-11 13:05:16.371663
2843	Mislinja	076	200	2024-04-11 13:05:16.375387	2024-04-11 13:05:16.375387
2844	Moravče	077	200	2024-04-11 13:05:16.379054	2024-04-11 13:05:16.379054
2845	Moravske Toplice	078	200	2024-04-11 13:05:16.382694	2024-04-11 13:05:16.382694
2846	Mozirje	079	200	2024-04-11 13:05:16.386334	2024-04-11 13:05:16.386334
2847	Murska Sobota	080	200	2024-04-11 13:05:16.389858	2024-04-11 13:05:16.389858
2848	Muta	081	200	2024-04-11 13:05:16.393402	2024-04-11 13:05:16.393402
2849	Naklo	082	200	2024-04-11 13:05:16.396929	2024-04-11 13:05:16.396929
2850	Nazarje	083	200	2024-04-11 13:05:16.400555	2024-04-11 13:05:16.400555
2851	Nova Gorica	084	200	2024-04-11 13:05:16.404195	2024-04-11 13:05:16.404195
2852	Novo mesto	085	200	2024-04-11 13:05:16.40772	2024-04-11 13:05:16.40772
2853	Odranci	086	200	2024-04-11 13:05:16.411238	2024-04-11 13:05:16.411238
2854	Ormož	087	200	2024-04-11 13:05:16.414612	2024-04-11 13:05:16.414612
2855	Osilnica	088	200	2024-04-11 13:05:16.417973	2024-04-11 13:05:16.417973
2856	Pesnica	089	200	2024-04-11 13:05:16.421621	2024-04-11 13:05:16.421621
2857	Piran/Pirano	090	200	2024-04-11 13:05:16.425404	2024-04-11 13:05:16.425404
2858	Pivka	091	200	2024-04-11 13:05:16.428814	2024-04-11 13:05:16.428814
2859	Podčetrtek	092	200	2024-04-11 13:05:16.432362	2024-04-11 13:05:16.432362
2860	Podvelka	093	200	2024-04-11 13:05:16.435936	2024-04-11 13:05:16.435936
2861	Postojna	094	200	2024-04-11 13:05:16.439542	2024-04-11 13:05:16.439542
2862	Preddvor	095	200	2024-04-11 13:05:16.443133	2024-04-11 13:05:16.443133
2863	Ptuj	096	200	2024-04-11 13:05:16.44672	2024-04-11 13:05:16.44672
2864	Puconci	097	200	2024-04-11 13:05:16.450218	2024-04-11 13:05:16.450218
2865	Rače-Fram	098	200	2024-04-11 13:05:16.453731	2024-04-11 13:05:16.453731
2866	Radeče	099	200	2024-04-11 13:05:16.457294	2024-04-11 13:05:16.457294
2867	Radenci	100	200	2024-04-11 13:05:16.460834	2024-04-11 13:05:16.460834
2868	Radlje ob Dravi	101	200	2024-04-11 13:05:16.464285	2024-04-11 13:05:16.464285
2869	Radovljica	102	200	2024-04-11 13:05:16.47007	2024-04-11 13:05:16.47007
2870	Ravne na Koroškem	103	200	2024-04-11 13:05:16.474118	2024-04-11 13:05:16.474118
2871	Ribnica	104	200	2024-04-11 13:05:16.477927	2024-04-11 13:05:16.477927
2872	Rogašovci	105	200	2024-04-11 13:05:16.481777	2024-04-11 13:05:16.481777
2873	Rogaška Slatina	106	200	2024-04-11 13:05:16.485619	2024-04-11 13:05:16.485619
2874	Rogatec	107	200	2024-04-11 13:05:16.489397	2024-04-11 13:05:16.489397
2875	Ruše	108	200	2024-04-11 13:05:16.493154	2024-04-11 13:05:16.493154
2876	Semič	109	200	2024-04-11 13:05:16.497201	2024-04-11 13:05:16.497201
2878	Sežana	111	200	2024-04-11 13:05:16.505172	2024-04-11 13:05:16.505172
2879	Slovenj Gradec	112	200	2024-04-11 13:05:16.509049	2024-04-11 13:05:16.509049
2880	Slovenska Bistrica	113	200	2024-04-11 13:05:16.512833	2024-04-11 13:05:16.512833
2881	Slovenske Konjice	114	200	2024-04-11 13:05:16.516448	2024-04-11 13:05:16.516448
2882	Starče	115	200	2024-04-11 13:05:16.520121	2024-04-11 13:05:16.520121
2883	Sveti Jurij	116	200	2024-04-11 13:05:16.523728	2024-04-11 13:05:16.523728
2884	Šenčur	117	200	2024-04-11 13:05:16.52743	2024-04-11 13:05:16.52743
2885	Šentilj	118	200	2024-04-11 13:05:16.53106	2024-04-11 13:05:16.53106
2886	Šentjernej	119	200	2024-04-11 13:05:16.534789	2024-04-11 13:05:16.534789
2887	Šentjur	120	200	2024-04-11 13:05:16.538658	2024-04-11 13:05:16.538658
2888	Škocjan	121	200	2024-04-11 13:05:16.542508	2024-04-11 13:05:16.542508
2889	Škofja Loka	122	200	2024-04-11 13:05:16.546222	2024-04-11 13:05:16.546222
2890	Škofljica	123	200	2024-04-11 13:05:16.549947	2024-04-11 13:05:16.549947
2891	Šmarje pri Jelšah	124	200	2024-04-11 13:05:16.553654	2024-04-11 13:05:16.553654
2892	Šmartno ob Paki	125	200	2024-04-11 13:05:16.557314	2024-04-11 13:05:16.557314
2893	Šoštanj	126	200	2024-04-11 13:05:16.561198	2024-04-11 13:05:16.561198
2894	Štore	127	200	2024-04-11 13:05:16.565143	2024-04-11 13:05:16.565143
2895	Tolmin	128	200	2024-04-11 13:05:16.56904	2024-04-11 13:05:16.56904
2896	Trbovlje	129	200	2024-04-11 13:05:16.572944	2024-04-11 13:05:16.572944
2897	Trebnje	130	200	2024-04-11 13:05:16.576797	2024-04-11 13:05:16.576797
2898	Tržič	131	200	2024-04-11 13:05:16.580656	2024-04-11 13:05:16.580656
2899	Turnišče	132	200	2024-04-11 13:05:16.584397	2024-04-11 13:05:16.584397
2900	Velenje	133	200	2024-04-11 13:05:16.588203	2024-04-11 13:05:16.588203
2901	Velike Lašče	134	200	2024-04-11 13:05:16.591885	2024-04-11 13:05:16.591885
2902	Videm	135	200	2024-04-11 13:05:16.595505	2024-04-11 13:05:16.595505
2903	Vipava	136	200	2024-04-11 13:05:16.599231	2024-04-11 13:05:16.599231
2904	Vitanje	137	200	2024-04-11 13:05:16.602999	2024-04-11 13:05:16.602999
2905	Vodice	138	200	2024-04-11 13:05:16.606678	2024-04-11 13:05:16.606678
2906	Vojnik	139	200	2024-04-11 13:05:16.610308	2024-04-11 13:05:16.610308
2907	Vrhnika	140	200	2024-04-11 13:05:16.613999	2024-04-11 13:05:16.613999
2908	Vuzenica	141	200	2024-04-11 13:05:16.617732	2024-04-11 13:05:16.617732
2909	Zagorje ob Savi	142	200	2024-04-11 13:05:16.621432	2024-04-11 13:05:16.621432
2910	Zavrč	143	200	2024-04-11 13:05:16.625162	2024-04-11 13:05:16.625162
2911	Zreče	144	200	2024-04-11 13:05:16.628882	2024-04-11 13:05:16.628882
2912	Železniki	146	200	2024-04-11 13:05:16.632561	2024-04-11 13:05:16.632561
2913	Žiri	147	200	2024-04-11 13:05:16.636342	2024-04-11 13:05:16.636342
2914	Benedikt	148	200	2024-04-11 13:05:16.640138	2024-04-11 13:05:16.640138
2915	Bistrica ob Sotli	149	200	2024-04-11 13:05:16.643828	2024-04-11 13:05:16.643828
2916	Bloke	150	200	2024-04-11 13:05:16.647563	2024-04-11 13:05:16.647563
2917	Braslovče	151	200	2024-04-11 13:05:16.651115	2024-04-11 13:05:16.651115
2918	Cankova	152	200	2024-04-11 13:05:16.65476	2024-04-11 13:05:16.65476
2919	Cerkvenjak	153	200	2024-04-11 13:05:16.658534	2024-04-11 13:05:16.658534
2920	Dobje	154	200	2024-04-11 13:05:16.662198	2024-04-11 13:05:16.662198
2921	Dobrna	155	200	2024-04-11 13:05:16.66588	2024-04-11 13:05:16.66588
2922	Dobrovnik/Dobronak	156	200	2024-04-11 13:05:16.66972	2024-04-11 13:05:16.66972
2923	Dolenjske Toplice	157	200	2024-04-11 13:05:16.676366	2024-04-11 13:05:16.676366
2924	Grad	158	200	2024-04-11 13:05:16.680168	2024-04-11 13:05:16.680168
2925	Hajdina	159	200	2024-04-11 13:05:16.684041	2024-04-11 13:05:16.684041
2926	Hoče-Slivnica	160	200	2024-04-11 13:05:16.688089	2024-04-11 13:05:16.688089
2927	Hodoš/Hodos	161	200	2024-04-11 13:05:16.691902	2024-04-11 13:05:16.691902
2928	Horjul	162	200	2024-04-11 13:05:16.695782	2024-04-11 13:05:16.695782
2929	Jezersko	163	200	2024-04-11 13:05:16.699615	2024-04-11 13:05:16.699615
2930	Komenda	164	200	2024-04-11 13:05:16.703449	2024-04-11 13:05:16.703449
2931	Kostel	165	200	2024-04-11 13:05:16.707248	2024-04-11 13:05:16.707248
2932	Križevci	166	200	2024-04-11 13:05:16.710998	2024-04-11 13:05:16.710998
2933	Lovrenc na Pohorju	167	200	2024-04-11 13:05:16.714562	2024-04-11 13:05:16.714562
2934	Markovci	168	200	2024-04-11 13:05:16.720995	2024-04-11 13:05:16.720995
2935	Miklavž na Dravskem polju	169	200	2024-04-11 13:05:16.725082	2024-04-11 13:05:16.725082
2936	Mirna Peč	170	200	2024-04-11 13:05:16.728885	2024-04-11 13:05:16.728885
2937	Oplotnica	171	200	2024-04-11 13:05:16.733013	2024-04-11 13:05:16.733013
2938	Podlehnik	172	200	2024-04-11 13:05:16.737397	2024-04-11 13:05:16.737397
2939	Polzela	173	200	2024-04-11 13:05:16.741399	2024-04-11 13:05:16.741399
2940	Prebold	174	200	2024-04-11 13:05:16.745332	2024-04-11 13:05:16.745332
2941	Prevalje	175	200	2024-04-11 13:05:16.749129	2024-04-11 13:05:16.749129
2942	Razkrižje	176	200	2024-04-11 13:05:16.752903	2024-04-11 13:05:16.752903
2943	Ribnica na Pohorju	177	200	2024-04-11 13:05:16.756886	2024-04-11 13:05:16.756886
2944	Selnica ob Dravi	178	200	2024-04-11 13:05:16.760729	2024-04-11 13:05:16.760729
2945	Sodražica	179	200	2024-04-11 13:05:16.764567	2024-04-11 13:05:16.764567
2946	Solčava	180	200	2024-04-11 13:05:16.768347	2024-04-11 13:05:16.768347
2947	Sveta Ana	181	200	2024-04-11 13:05:16.772236	2024-04-11 13:05:16.772236
2948	Sveta Andraž v Slovenskih Goricah	182	200	2024-04-11 13:05:16.776017	2024-04-11 13:05:16.776017
2949	Šempeter-Vrtojba	183	200	2024-04-11 13:05:16.779724	2024-04-11 13:05:16.779724
2950	Tabor	184	200	2024-04-11 13:05:16.783331	2024-04-11 13:05:16.783331
2951	Trnovska vas	185	200	2024-04-11 13:05:16.78707	2024-04-11 13:05:16.78707
2952	Trzin	186	200	2024-04-11 13:05:16.790729	2024-04-11 13:05:16.790729
2953	Velika Polana	187	200	2024-04-11 13:05:16.794329	2024-04-11 13:05:16.794329
2954	Veržej	188	200	2024-04-11 13:05:16.7979	2024-04-11 13:05:16.7979
2955	Vransko	189	200	2024-04-11 13:05:16.801548	2024-04-11 13:05:16.801548
2956	Žalec	190	200	2024-04-11 13:05:16.805084	2024-04-11 13:05:16.805084
2957	Žetale	191	200	2024-04-11 13:05:16.808554	2024-04-11 13:05:16.808554
2958	Žirovnica	192	200	2024-04-11 13:05:16.81211	2024-04-11 13:05:16.81211
2959	Žužemberk	193	200	2024-04-11 13:05:16.815595	2024-04-11 13:05:16.815595
2960	Šmartno pri Litiji	194	200	2024-04-11 13:05:16.819051	2024-04-11 13:05:16.819051
2961	Apače	195	200	2024-04-11 13:05:16.822765	2024-04-11 13:05:16.822765
2962	Cirkulane	196	200	2024-04-11 13:05:16.826382	2024-04-11 13:05:16.826382
2963	Kosanjevica na Krki	197	200	2024-04-11 13:05:16.829901	2024-04-11 13:05:16.829901
2964	Makole	198	200	2024-04-11 13:05:16.833578	2024-04-11 13:05:16.833578
2965	Mokronog-Trebelno	199	200	2024-04-11 13:05:16.837106	2024-04-11 13:05:16.837106
2966	Poljčane	200	200	2024-04-11 13:05:16.840701	2024-04-11 13:05:16.840701
2967	Renče-Vogrsko	201	200	2024-04-11 13:05:16.844343	2024-04-11 13:05:16.844343
2968	Središče ob Dravi	202	200	2024-04-11 13:05:16.847942	2024-04-11 13:05:16.847942
2969	Straža	203	200	2024-04-11 13:05:16.851491	2024-04-11 13:05:16.851491
2970	Sveta Trojica v Slovenskih Goricah	204	200	2024-04-11 13:05:16.854917	2024-04-11 13:05:16.854917
2971	Sveti Tomaž	205	200	2024-04-11 13:05:16.85864	2024-04-11 13:05:16.85864
2972	Šmarjeske Topliče	206	200	2024-04-11 13:05:16.862274	2024-04-11 13:05:16.862274
2973	Gorje	207	200	2024-04-11 13:05:16.865839	2024-04-11 13:05:16.865839
2974	Log-Dragomer	208	200	2024-04-11 13:05:16.869395	2024-04-11 13:05:16.869395
2975	Rečica ob Savinji	209	200	2024-04-11 13:05:16.873097	2024-04-11 13:05:16.873097
2976	Sveti Jurij v Slovenskih Goricah	210	200	2024-04-11 13:05:16.876648	2024-04-11 13:05:16.876648
2977	Šentrupert	211	200	2024-04-11 13:05:16.880138	2024-04-11 13:05:16.880138
2978	Banskobystrický kraj	BC	202	2024-04-11 13:05:16.8838	2024-04-11 13:05:16.8838
2979	Bratislavský kraj	BL	202	2024-04-11 13:05:16.88723	2024-04-11 13:05:16.88723
2980	Košický kraj	KI	202	2024-04-11 13:05:16.89086	2024-04-11 13:05:16.89086
2981	Nitriansky kraj	NI	202	2024-04-11 13:05:16.894535	2024-04-11 13:05:16.894535
2982	Prešovský kraj	PV	202	2024-04-11 13:05:16.898191	2024-04-11 13:05:16.898191
2983	Trnavský kraj	TA	202	2024-04-11 13:05:16.901901	2024-04-11 13:05:16.901901
2984	Trenčiansky kraj	TC	202	2024-04-11 13:05:16.905528	2024-04-11 13:05:16.905528
2985	Žilinský kraj	ZI	202	2024-04-11 13:05:16.909175	2024-04-11 13:05:16.909175
2986	Eastern	E	203	2024-04-11 13:05:16.912953	2024-04-11 13:05:16.912953
2987	Northern	N	203	2024-04-11 13:05:16.916398	2024-04-11 13:05:16.916398
2988	Southern (Sierra Leone)	S	203	2024-04-11 13:05:16.919936	2024-04-11 13:05:16.919936
2989	Western Area (Freetown)	W	203	2024-04-11 13:05:16.923536	2024-04-11 13:05:16.923536
2990	Acquaviva	01	204	2024-04-11 13:05:16.927286	2024-04-11 13:05:16.927286
2991	Chiesanuova	02	204	2024-04-11 13:05:16.930848	2024-04-11 13:05:16.930848
2992	Domagnano	03	204	2024-04-11 13:05:16.934473	2024-04-11 13:05:16.934473
2993	Faetano	04	204	2024-04-11 13:05:16.938366	2024-04-11 13:05:16.938366
2994	Fiorentino	05	204	2024-04-11 13:05:16.942251	2024-04-11 13:05:16.942251
2995	Borgo Maggiore	06	204	2024-04-11 13:05:16.94603	2024-04-11 13:05:16.94603
2996	San Marino	07	204	2024-04-11 13:05:16.949779	2024-04-11 13:05:16.949779
2997	Montegiardino	08	204	2024-04-11 13:05:16.953697	2024-04-11 13:05:16.953697
2998	Serravalle	09	204	2024-04-11 13:05:16.957624	2024-04-11 13:05:16.957624
2999	Diourbel	DB	205	2024-04-11 13:05:16.961451	2024-04-11 13:05:16.961451
3000	Dakar	DK	205	2024-04-11 13:05:16.964976	2024-04-11 13:05:16.964976
3001	Fatick	FK	205	2024-04-11 13:05:16.969454	2024-04-11 13:05:16.969454
3002	Kaffrine	KA	205	2024-04-11 13:05:16.972938	2024-04-11 13:05:16.972938
3003	Kolda	KD	205	2024-04-11 13:05:16.976595	2024-04-11 13:05:16.976595
3004	Kédougou	KE	205	2024-04-11 13:05:16.980192	2024-04-11 13:05:16.980192
3005	Kaolack	KL	205	2024-04-11 13:05:16.983825	2024-04-11 13:05:16.983825
3006	Louga	LG	205	2024-04-11 13:05:16.987765	2024-04-11 13:05:16.987765
3007	Matam	MT	205	2024-04-11 13:05:16.9915	2024-04-11 13:05:16.9915
3008	Sédhiou	SE	205	2024-04-11 13:05:16.995321	2024-04-11 13:05:16.995321
3009	Saint-Louis	SL	205	2024-04-11 13:05:16.999107	2024-04-11 13:05:16.999107
3010	Tambacounda	TC	205	2024-04-11 13:05:17.002734	2024-04-11 13:05:17.002734
3011	Thiès	TH	205	2024-04-11 13:05:17.006572	2024-04-11 13:05:17.006572
3012	Ziguinchor	ZG	205	2024-04-11 13:05:17.010167	2024-04-11 13:05:17.010167
3013	Awdal	AW	206	2024-04-11 13:05:17.013906	2024-04-11 13:05:17.013906
3014	Bakool	BK	206	2024-04-11 13:05:17.017539	2024-04-11 13:05:17.017539
3015	Banaadir	BN	206	2024-04-11 13:05:17.021083	2024-04-11 13:05:17.021083
3016	Bari	BR	206	2024-04-11 13:05:17.025049	2024-04-11 13:05:17.025049
3017	Bay	BY	206	2024-04-11 13:05:17.029439	2024-04-11 13:05:17.029439
3018	Galguduud	GA	206	2024-04-11 13:05:17.033335	2024-04-11 13:05:17.033335
3019	Gedo	GE	206	2024-04-11 13:05:17.037097	2024-04-11 13:05:17.037097
3020	Hiirsan	HI	206	2024-04-11 13:05:17.040698	2024-04-11 13:05:17.040698
3021	Jubbada Dhexe	JD	206	2024-04-11 13:05:17.044509	2024-04-11 13:05:17.044509
3022	Jubbada Hoose	JH	206	2024-04-11 13:05:17.048332	2024-04-11 13:05:17.048332
3023	Mudug	MU	206	2024-04-11 13:05:17.051915	2024-04-11 13:05:17.051915
3024	Nugaal	NU	206	2024-04-11 13:05:17.055896	2024-04-11 13:05:17.055896
3025	Saneag	SA	206	2024-04-11 13:05:17.05961	2024-04-11 13:05:17.05961
3026	Shabeellaha Dhexe	SD	206	2024-04-11 13:05:17.064013	2024-04-11 13:05:17.064013
3027	Shabeellaha Hoose	SH	206	2024-04-11 13:05:17.067995	2024-04-11 13:05:17.067995
3028	Sool	SO	206	2024-04-11 13:05:17.071874	2024-04-11 13:05:17.071874
3029	Togdheer	TO	206	2024-04-11 13:05:17.076532	2024-04-11 13:05:17.076532
3030	Woqooyi Galbeed	WO	206	2024-04-11 13:05:17.080582	2024-04-11 13:05:17.080582
3031	Brokopondo	BR	207	2024-04-11 13:05:17.087657	2024-04-11 13:05:17.087657
3032	Commewijne	CM	207	2024-04-11 13:05:17.091595	2024-04-11 13:05:17.091595
3033	Coronie	CR	207	2024-04-11 13:05:17.095744	2024-04-11 13:05:17.095744
3034	Marowijne	MA	207	2024-04-11 13:05:17.099616	2024-04-11 13:05:17.099616
3035	Nickerie	NI	207	2024-04-11 13:05:17.10379	2024-04-11 13:05:17.10379
3036	Paramaribo	PM	207	2024-04-11 13:05:17.10762	2024-04-11 13:05:17.10762
3037	Para	PR	207	2024-04-11 13:05:17.111413	2024-04-11 13:05:17.111413
3038	Saramacca	SA	207	2024-04-11 13:05:17.115151	2024-04-11 13:05:17.115151
3039	Sipaliwini	SI	207	2024-04-11 13:05:17.118815	2024-04-11 13:05:17.118815
3040	Wanica	WA	207	2024-04-11 13:05:17.122988	2024-04-11 13:05:17.122988
3041	Northern Bahr el-Ghazal	BN	208	2024-04-11 13:05:17.126929	2024-04-11 13:05:17.126929
3042	Western Bahr el-Ghazal	BW	208	2024-04-11 13:05:17.131791	2024-04-11 13:05:17.131791
3043	Central Equatoria	EC	208	2024-04-11 13:05:17.135754	2024-04-11 13:05:17.135754
3044	Eastern Equatoria	EE8	208	2024-04-11 13:05:17.139407	2024-04-11 13:05:17.139407
3045	Western Equatoria	EW	208	2024-04-11 13:05:17.14352	2024-04-11 13:05:17.14352
3046	Jonglei	JG	208	2024-04-11 13:05:17.147281	2024-04-11 13:05:17.147281
3047	Lakes	LK	208	2024-04-11 13:05:17.151047	2024-04-11 13:05:17.151047
3048	Upper Nile	NU	208	2024-04-11 13:05:17.154791	2024-04-11 13:05:17.154791
3049	Unity	UY	208	2024-04-11 13:05:17.158551	2024-04-11 13:05:17.158551
3050	Warrap	WR	208	2024-04-11 13:05:17.162409	2024-04-11 13:05:17.162409
3051	Príncipe	P	209	2024-04-11 13:05:17.166697	2024-04-11 13:05:17.166697
3052	São Tomé	S	209	2024-04-11 13:05:17.170857	2024-04-11 13:05:17.170857
3053	Ahuachapán	AH	210	2024-04-11 13:05:17.174832	2024-04-11 13:05:17.174832
3054	Cabañas	CA	210	2024-04-11 13:05:17.178704	2024-04-11 13:05:17.178704
3055	Chalatenango	CH	210	2024-04-11 13:05:17.182905	2024-04-11 13:05:17.182905
3056	Cuscatlán	CU	210	2024-04-11 13:05:17.186803	2024-04-11 13:05:17.186803
3057	La Libertad	LI	210	2024-04-11 13:05:17.190668	2024-04-11 13:05:17.190668
3058	Morazán	MO	210	2024-04-11 13:05:17.194577	2024-04-11 13:05:17.194577
3059	La Paz	PA	210	2024-04-11 13:05:17.198454	2024-04-11 13:05:17.198454
3060	Santa Ana	SA	210	2024-04-11 13:05:17.203438	2024-04-11 13:05:17.203438
3061	San Miguel	SM	210	2024-04-11 13:05:17.211167	2024-04-11 13:05:17.211167
3062	Sonsonate	SO	210	2024-04-11 13:05:17.215714	2024-04-11 13:05:17.215714
3063	San Salvador	SS	210	2024-04-11 13:05:17.220227	2024-04-11 13:05:17.220227
3064	San Vicente	SV	210	2024-04-11 13:05:17.224705	2024-04-11 13:05:17.224705
3065	La Unión	UN	210	2024-04-11 13:05:17.228689	2024-04-11 13:05:17.228689
3066	Usulután	US	210	2024-04-11 13:05:17.232886	2024-04-11 13:05:17.232886
3067	Dimashq	DI	212	2024-04-11 13:05:17.236853	2024-04-11 13:05:17.236853
3068	Dar'a	DR	212	2024-04-11 13:05:17.240839	2024-04-11 13:05:17.240839
3069	Dayr az Zawr	DY	212	2024-04-11 13:05:17.244767	2024-04-11 13:05:17.244767
3070	Al Hasakah	HA	212	2024-04-11 13:05:17.248572	2024-04-11 13:05:17.248572
3071	Homs	HI	212	2024-04-11 13:05:17.252404	2024-04-11 13:05:17.252404
3072	Halab	HL	212	2024-04-11 13:05:17.256213	2024-04-11 13:05:17.256213
3073	Hamah	HM	212	2024-04-11 13:05:17.260153	2024-04-11 13:05:17.260153
3074	Idlib	ID	212	2024-04-11 13:05:17.264023	2024-04-11 13:05:17.264023
3075	Al Ladhiqiyah	LA	212	2024-04-11 13:05:17.26786	2024-04-11 13:05:17.26786
3076	Al Qunaytirah	QU	212	2024-04-11 13:05:17.271735	2024-04-11 13:05:17.271735
3077	Ar Raqqah	RA	212	2024-04-11 13:05:17.27554	2024-04-11 13:05:17.27554
3078	Rif Dimashq	RD	212	2024-04-11 13:05:17.279274	2024-04-11 13:05:17.279274
3079	As Suwayda'	SU	212	2024-04-11 13:05:17.282992	2024-04-11 13:05:17.282992
3080	Tartus	TA	212	2024-04-11 13:05:17.28666	2024-04-11 13:05:17.28666
3081	Hhohho	HH	213	2024-04-11 13:05:17.290427	2024-04-11 13:05:17.290427
3082	Lubombo	LU	213	2024-04-11 13:05:17.294056	2024-04-11 13:05:17.294056
3083	Manzini	MA	213	2024-04-11 13:05:17.297696	2024-04-11 13:05:17.297696
3084	Shiselweni	SH	213	2024-04-11 13:05:17.301369	2024-04-11 13:05:17.301369
3085	Al Baṭḩah	BA	215	2024-04-11 13:05:17.305183	2024-04-11 13:05:17.305183
3086	Baḩr al Ghazāl	BG	215	2024-04-11 13:05:17.308726	2024-04-11 13:05:17.308726
3087	Būrkū	BO	215	2024-04-11 13:05:17.312378	2024-04-11 13:05:17.312378
3088	Shārī Bāqirmī	CB	215	2024-04-11 13:05:17.315951	2024-04-11 13:05:17.315951
3089	Innīdī	EN	215	2024-04-11 13:05:17.319445	2024-04-11 13:05:17.319445
3090	Qīrā	GR	215	2024-04-11 13:05:17.323023	2024-04-11 13:05:17.323023
3091	Ḥajjar Lamīs	HL	215	2024-04-11 13:05:17.326562	2024-04-11 13:05:17.326562
3092	Kānim	KA	215	2024-04-11 13:05:17.330174	2024-04-11 13:05:17.330174
3093	Al Buḩayrah	LC	215	2024-04-11 13:05:17.333757	2024-04-11 13:05:17.333757
3094	Lūqūn al Gharbī	LO	215	2024-04-11 13:05:17.337302	2024-04-11 13:05:17.337302
3095	Lūqūn ash Sharqī	LR	215	2024-04-11 13:05:17.340977	2024-04-11 13:05:17.340977
3096	Māndūl	MA	215	2024-04-11 13:05:17.344528	2024-04-11 13:05:17.344528
3097	Shārī al Awsaṭ	MC	215	2024-04-11 13:05:17.348143	2024-04-11 13:05:17.348143
3098	Māyū Kībbī ash Sharqī	ME	215	2024-04-11 13:05:17.351717	2024-04-11 13:05:17.351717
3099	Māyū Kībbī al Gharbī	MO	215	2024-04-11 13:05:17.35524	2024-04-11 13:05:17.35524
3100	Madīnat Injamīnā	ND	215	2024-04-11 13:05:17.358889	2024-04-11 13:05:17.358889
3101	Waddāy	OD	215	2024-04-11 13:05:17.362447	2024-04-11 13:05:17.362447
3102	Salāmāt	SA	215	2024-04-11 13:05:17.365859	2024-04-11 13:05:17.365859
3103	Sīlā	SI	215	2024-04-11 13:05:17.369509	2024-04-11 13:05:17.369509
3104	Tānjilī	TA	215	2024-04-11 13:05:17.37311	2024-04-11 13:05:17.37311
3105	Tibastī	TI	215	2024-04-11 13:05:17.376644	2024-04-11 13:05:17.376644
3106	Wādī Fīrā	WF	215	2024-04-11 13:05:17.380276	2024-04-11 13:05:17.380276
3107	Région du Centre	C	217	2024-04-11 13:05:17.384051	2024-04-11 13:05:17.384051
3108	Région de la Kara	K	217	2024-04-11 13:05:17.387524	2024-04-11 13:05:17.387524
3109	Région Maritime	M	217	2024-04-11 13:05:17.391033	2024-04-11 13:05:17.391033
3110	Région des Plateaux	P	217	2024-04-11 13:05:17.39468	2024-04-11 13:05:17.39468
3111	Région des Savannes	S	217	2024-04-11 13:05:17.398363	2024-04-11 13:05:17.398363
3112	Krung Thep Maha Nakhon Bangkok	10	218	2024-04-11 13:05:17.402165	2024-04-11 13:05:17.402165
3113	Samut Prakan	11	218	2024-04-11 13:05:17.405848	2024-04-11 13:05:17.405848
3114	Nonthaburi	12	218	2024-04-11 13:05:17.409443	2024-04-11 13:05:17.409443
3115	Pathum Thani	13	218	2024-04-11 13:05:17.4131	2024-04-11 13:05:17.4131
3116	Phra Nakhon Si Ayutthaya	14	218	2024-04-11 13:05:17.416681	2024-04-11 13:05:17.416681
3117	Ang Thong	15	218	2024-04-11 13:05:17.420176	2024-04-11 13:05:17.420176
3118	Lop Buri	16	218	2024-04-11 13:05:17.423881	2024-04-11 13:05:17.423881
3119	Sing Buri	17	218	2024-04-11 13:05:17.42757	2024-04-11 13:05:17.42757
3120	Chai Nat	18	218	2024-04-11 13:05:17.431369	2024-04-11 13:05:17.431369
3121	Saraburi	19	218	2024-04-11 13:05:17.435033	2024-04-11 13:05:17.435033
3122	Chon Buri	20	218	2024-04-11 13:05:17.438943	2024-04-11 13:05:17.438943
3123	Rayong	21	218	2024-04-11 13:05:17.442647	2024-04-11 13:05:17.442647
3124	Chanthaburi	22	218	2024-04-11 13:05:17.446364	2024-04-11 13:05:17.446364
3125	Trat	23	218	2024-04-11 13:05:17.450222	2024-04-11 13:05:17.450222
3126	Chachoengsao	24	218	2024-04-11 13:05:17.453846	2024-04-11 13:05:17.453846
3127	Prachin Buri	25	218	2024-04-11 13:05:17.457611	2024-04-11 13:05:17.457611
3128	Nakhon Nayok	26	218	2024-04-11 13:05:17.461287	2024-04-11 13:05:17.461287
3129	Sa Kaeo	27	218	2024-04-11 13:05:17.464865	2024-04-11 13:05:17.464865
3130	Nakhon Ratchasima	30	218	2024-04-11 13:05:17.471471	2024-04-11 13:05:17.471471
3131	Buri Ram	31	218	2024-04-11 13:05:17.47857	2024-04-11 13:05:17.47857
3132	Surin	32	218	2024-04-11 13:05:17.482353	2024-04-11 13:05:17.482353
3133	Si Sa Ket	33	218	2024-04-11 13:05:17.486111	2024-04-11 13:05:17.486111
3134	Ubon Ratchathani	34	218	2024-04-11 13:05:17.489913	2024-04-11 13:05:17.489913
3135	Yasothon	35	218	2024-04-11 13:05:17.493643	2024-04-11 13:05:17.493643
3136	Chaiyaphum	36	218	2024-04-11 13:05:17.497426	2024-04-11 13:05:17.497426
3137	Amnat Charoen	37	218	2024-04-11 13:05:17.501283	2024-04-11 13:05:17.501283
3138	Nong Bua Lam Phu	39	218	2024-04-11 13:05:17.505226	2024-04-11 13:05:17.505226
3139	Khon Kaen	40	218	2024-04-11 13:05:17.511932	2024-04-11 13:05:17.511932
3140	Udon Thani	41	218	2024-04-11 13:05:17.51587	2024-04-11 13:05:17.51587
3141	Loei	42	218	2024-04-11 13:05:17.519772	2024-04-11 13:05:17.519772
3142	Nong Khai	43	218	2024-04-11 13:05:17.523597	2024-04-11 13:05:17.523597
3143	Maha Sarakham	44	218	2024-04-11 13:05:17.527396	2024-04-11 13:05:17.527396
3144	Roi Et	45	218	2024-04-11 13:05:17.531097	2024-04-11 13:05:17.531097
3145	Kalasin	46	218	2024-04-11 13:05:17.53496	2024-04-11 13:05:17.53496
3146	Sakon Nakhon	47	218	2024-04-11 13:05:17.539169	2024-04-11 13:05:17.539169
3147	Nakhon Phanom	48	218	2024-04-11 13:05:17.54301	2024-04-11 13:05:17.54301
3148	Mukdahan	49	218	2024-04-11 13:05:17.546914	2024-04-11 13:05:17.546914
3149	Chiang Mai	50	218	2024-04-11 13:05:17.550634	2024-04-11 13:05:17.550634
3150	Lamphun	51	218	2024-04-11 13:05:17.554357	2024-04-11 13:05:17.554357
3151	Lampang	52	218	2024-04-11 13:05:17.558066	2024-04-11 13:05:17.558066
3152	Uttaradit	53	218	2024-04-11 13:05:17.56182	2024-04-11 13:05:17.56182
3153	Phrae	54	218	2024-04-11 13:05:17.566257	2024-04-11 13:05:17.566257
3154	Nan	55	218	2024-04-11 13:05:17.570213	2024-04-11 13:05:17.570213
3155	Phayao	56	218	2024-04-11 13:05:17.574061	2024-04-11 13:05:17.574061
3156	Chiang Rai	57	218	2024-04-11 13:05:17.577956	2024-04-11 13:05:17.577956
3157	Mae Hong Son	58	218	2024-04-11 13:05:17.581726	2024-04-11 13:05:17.581726
3158	Nakhon Sawan	60	218	2024-04-11 13:05:17.585477	2024-04-11 13:05:17.585477
3159	Uthai Thani	61	218	2024-04-11 13:05:17.589294	2024-04-11 13:05:17.589294
3160	Kamphaeng Phet	62	218	2024-04-11 13:05:17.593052	2024-04-11 13:05:17.593052
3161	Tak	63	218	2024-04-11 13:05:17.596824	2024-04-11 13:05:17.596824
3162	Sukhothai	64	218	2024-04-11 13:05:17.600571	2024-04-11 13:05:17.600571
3163	Phitsanulok	65	218	2024-04-11 13:05:17.604253	2024-04-11 13:05:17.604253
3164	Phichit	66	218	2024-04-11 13:05:17.607919	2024-04-11 13:05:17.607919
3165	Phetchabun	67	218	2024-04-11 13:05:17.611628	2024-04-11 13:05:17.611628
3166	Ratchaburi	70	218	2024-04-11 13:05:17.615302	2024-04-11 13:05:17.615302
3167	Kanchanaburi	71	218	2024-04-11 13:05:17.618976	2024-04-11 13:05:17.618976
3168	Suphan Buri	72	218	2024-04-11 13:05:17.622699	2024-04-11 13:05:17.622699
3169	Nakhon Pathom	73	218	2024-04-11 13:05:17.626479	2024-04-11 13:05:17.626479
3170	Samut Sakhon	74	218	2024-04-11 13:05:17.630131	2024-04-11 13:05:17.630131
3171	Samut Songkhram	75	218	2024-04-11 13:05:17.633914	2024-04-11 13:05:17.633914
3172	Phetchaburi	76	218	2024-04-11 13:05:17.637664	2024-04-11 13:05:17.637664
3173	Prachuap Khiri Khan	77	218	2024-04-11 13:05:17.6413	2024-04-11 13:05:17.6413
3174	Nakhon Si Thammarat	80	218	2024-04-11 13:05:17.64495	2024-04-11 13:05:17.64495
3175	Krabi	81	218	2024-04-11 13:05:17.648618	2024-04-11 13:05:17.648618
3176	Phangnga	82	218	2024-04-11 13:05:17.652234	2024-04-11 13:05:17.652234
3177	Phuket	83	218	2024-04-11 13:05:17.657738	2024-04-11 13:05:17.657738
3178	Surat Thani	84	218	2024-04-11 13:05:17.661603	2024-04-11 13:05:17.661603
3179	Ranong	85	218	2024-04-11 13:05:17.665155	2024-04-11 13:05:17.665155
3180	Chumphon	86	218	2024-04-11 13:05:17.668554	2024-04-11 13:05:17.668554
3181	Songkhla	90	218	2024-04-11 13:05:17.672088	2024-04-11 13:05:17.672088
3182	Satun	91	218	2024-04-11 13:05:17.676144	2024-04-11 13:05:17.676144
3183	Trang	92	218	2024-04-11 13:05:17.680033	2024-04-11 13:05:17.680033
3184	Phatthalung	93	218	2024-04-11 13:05:17.683822	2024-04-11 13:05:17.683822
3185	Pattani	94	218	2024-04-11 13:05:17.687651	2024-04-11 13:05:17.687651
3186	Yala	95	218	2024-04-11 13:05:17.691417	2024-04-11 13:05:17.691417
3187	Narathiwat	96	218	2024-04-11 13:05:17.695171	2024-04-11 13:05:17.695171
3188	Phatthaya	S	218	2024-04-11 13:05:17.69885	2024-04-11 13:05:17.69885
3189	Gorno-Badakhshan	GB	219	2024-04-11 13:05:17.702632	2024-04-11 13:05:17.702632
3190	Khatlon	KT	219	2024-04-11 13:05:17.706437	2024-04-11 13:05:17.706437
3191	Sughd	SU	219	2024-04-11 13:05:17.710309	2024-04-11 13:05:17.710309
3192	Aileu	AL	221	2024-04-11 13:05:17.714259	2024-04-11 13:05:17.714259
3193	Ainaro	AN	221	2024-04-11 13:05:17.718598	2024-04-11 13:05:17.718598
3194	Baucau	BA	221	2024-04-11 13:05:17.722553	2024-04-11 13:05:17.722553
3195	Bobonaro	BO	221	2024-04-11 13:05:17.726382	2024-04-11 13:05:17.726382
3196	Cova Lima	CO	221	2024-04-11 13:05:17.730082	2024-04-11 13:05:17.730082
3197	Díli	DI	221	2024-04-11 13:05:17.734919	2024-04-11 13:05:17.734919
3198	Ermera	ER	221	2024-04-11 13:05:17.738936	2024-04-11 13:05:17.738936
3199	Lautem	LA	221	2024-04-11 13:05:17.742776	2024-04-11 13:05:17.742776
3200	Liquiça	LI	221	2024-04-11 13:05:17.746812	2024-04-11 13:05:17.746812
3201	Manufahi	MF	221	2024-04-11 13:05:17.750866	2024-04-11 13:05:17.750866
3202	Manatuto	MT	221	2024-04-11 13:05:17.754763	2024-04-11 13:05:17.754763
3203	Oecussi	OE	221	2024-04-11 13:05:17.758647	2024-04-11 13:05:17.758647
3204	Viqueque	VI	221	2024-04-11 13:05:17.762467	2024-04-11 13:05:17.762467
3205	Ahal	A	222	2024-04-11 13:05:17.766433	2024-04-11 13:05:17.766433
3206	Balkan	B	222	2024-04-11 13:05:17.770686	2024-04-11 13:05:17.770686
3207	Daşoguz	D	222	2024-04-11 13:05:17.774827	2024-04-11 13:05:17.774827
3208	Lebap	L	222	2024-04-11 13:05:17.778794	2024-04-11 13:05:17.778794
3209	Mary	M	222	2024-04-11 13:05:17.78338	2024-04-11 13:05:17.78338
3210	Aşgabat	S	222	2024-04-11 13:05:17.787222	2024-04-11 13:05:17.787222
3211	Tunis	11	223	2024-04-11 13:05:17.791331	2024-04-11 13:05:17.791331
3212	Ariana	12	223	2024-04-11 13:05:17.795313	2024-04-11 13:05:17.795313
3213	Ben Arous	13	223	2024-04-11 13:05:17.799144	2024-04-11 13:05:17.799144
3214	La Manouba	14	223	2024-04-11 13:05:17.802884	2024-04-11 13:05:17.802884
3215	Nabeul	21	223	2024-04-11 13:05:17.806629	2024-04-11 13:05:17.806629
3216	Zaghouan	22	223	2024-04-11 13:05:17.810355	2024-04-11 13:05:17.810355
3217	Bizerte	23	223	2024-04-11 13:05:17.814043	2024-04-11 13:05:17.814043
3218	Béja	31	223	2024-04-11 13:05:17.817683	2024-04-11 13:05:17.817683
3219	Jendouba	32	223	2024-04-11 13:05:17.821474	2024-04-11 13:05:17.821474
3220	Le Kef	33	223	2024-04-11 13:05:17.825183	2024-04-11 13:05:17.825183
3221	Siliana	34	223	2024-04-11 13:05:17.828843	2024-04-11 13:05:17.828843
3222	Kairouan	41	223	2024-04-11 13:05:17.832532	2024-04-11 13:05:17.832532
3223	Kasserine	42	223	2024-04-11 13:05:17.836174	2024-04-11 13:05:17.836174
3224	Sidi Bouzid	43	223	2024-04-11 13:05:17.839842	2024-04-11 13:05:17.839842
3225	Sousse	51	223	2024-04-11 13:05:17.843513	2024-04-11 13:05:17.843513
3226	Monastir	52	223	2024-04-11 13:05:17.847103	2024-04-11 13:05:17.847103
3227	Mahdia	53	223	2024-04-11 13:05:17.85073	2024-04-11 13:05:17.85073
3228	Sfax	61	223	2024-04-11 13:05:17.854386	2024-04-11 13:05:17.854386
3229	Gafsa	71	223	2024-04-11 13:05:17.857992	2024-04-11 13:05:17.857992
3230	Tozeur	72	223	2024-04-11 13:05:17.861635	2024-04-11 13:05:17.861635
3231	Kebili	73	223	2024-04-11 13:05:17.865195	2024-04-11 13:05:17.865195
3232	Gabès	81	223	2024-04-11 13:05:17.868697	2024-04-11 13:05:17.868697
3233	Medenine	82	223	2024-04-11 13:05:17.872371	2024-04-11 13:05:17.872371
3234	Tataouine	83	223	2024-04-11 13:05:17.875985	2024-04-11 13:05:17.875985
3235	'Eua	01	224	2024-04-11 13:05:17.879659	2024-04-11 13:05:17.879659
3236	Ha'apai	02	224	2024-04-11 13:05:17.883088	2024-04-11 13:05:17.883088
3237	Niuas	03	224	2024-04-11 13:05:17.886803	2024-04-11 13:05:17.886803
3238	Tongatapu	04	224	2024-04-11 13:05:17.890673	2024-04-11 13:05:17.890673
3239	Vava'u	05	224	2024-04-11 13:05:17.89442	2024-04-11 13:05:17.89442
3240	Adana	01	225	2024-04-11 13:05:17.898316	2024-04-11 13:05:17.898316
3241	Adıyaman	02	225	2024-04-11 13:05:17.902069	2024-04-11 13:05:17.902069
3242	Afyonkarahisar	03	225	2024-04-11 13:05:17.905805	2024-04-11 13:05:17.905805
3243	Ağrı	04	225	2024-04-11 13:05:17.909753	2024-04-11 13:05:17.909753
3244	Amasya	05	225	2024-04-11 13:05:17.913469	2024-04-11 13:05:17.913469
3245	Ankara	06	225	2024-04-11 13:05:17.91716	2024-04-11 13:05:17.91716
3246	Antalya	07	225	2024-04-11 13:05:17.921046	2024-04-11 13:05:17.921046
3247	Artvin	08	225	2024-04-11 13:05:17.927709	2024-04-11 13:05:17.927709
3248	Aydın	09	225	2024-04-11 13:05:17.93157	2024-04-11 13:05:17.93157
3249	Balıkesir	10	225	2024-04-11 13:05:17.93543	2024-04-11 13:05:17.93543
3250	Bilecik	11	225	2024-04-11 13:05:17.939436	2024-04-11 13:05:17.939436
3251	Bingöl	12	225	2024-04-11 13:05:17.943295	2024-04-11 13:05:17.943295
3252	Bitlis	13	225	2024-04-11 13:05:17.947228	2024-04-11 13:05:17.947228
3253	Bolu	14	225	2024-04-11 13:05:17.951739	2024-04-11 13:05:17.951739
3254	Burdur	15	225	2024-04-11 13:05:17.95553	2024-04-11 13:05:17.95553
3255	Bursa	16	225	2024-04-11 13:05:17.959466	2024-04-11 13:05:17.959466
3256	Çanakkale	17	225	2024-04-11 13:05:17.963283	2024-04-11 13:05:17.963283
3257	Çankırı	18	225	2024-04-11 13:05:17.96811	2024-04-11 13:05:17.96811
3258	Çorum	19	225	2024-04-11 13:05:17.976002	2024-04-11 13:05:17.976002
3259	Denizli	20	225	2024-04-11 13:05:17.982842	2024-04-11 13:05:17.982842
3260	Diyarbakır	21	225	2024-04-11 13:05:17.986327	2024-04-11 13:05:17.986327
3261	Edirne	22	225	2024-04-11 13:05:17.989934	2024-04-11 13:05:17.989934
3262	Elazığ	23	225	2024-04-11 13:05:17.993524	2024-04-11 13:05:17.993524
3263	Erzincan	24	225	2024-04-11 13:05:17.997045	2024-04-11 13:05:17.997045
3264	Erzurum	25	225	2024-04-11 13:05:18.000779	2024-04-11 13:05:18.000779
3265	Eskişehir	26	225	2024-04-11 13:05:18.004519	2024-04-11 13:05:18.004519
3266	Gaziantep	27	225	2024-04-11 13:05:18.008177	2024-04-11 13:05:18.008177
3267	Giresun	28	225	2024-04-11 13:05:18.011759	2024-04-11 13:05:18.011759
3268	Gümüşhane	29	225	2024-04-11 13:05:18.015307	2024-04-11 13:05:18.015307
3269	Hakkâri	30	225	2024-04-11 13:05:18.018909	2024-04-11 13:05:18.018909
3270	Hatay	31	225	2024-04-11 13:05:18.022704	2024-04-11 13:05:18.022704
3271	Isparta	32	225	2024-04-11 13:05:18.026419	2024-04-11 13:05:18.026419
3272	Mersin	33	225	2024-04-11 13:05:18.029969	2024-04-11 13:05:18.029969
3273	İstanbul	34	225	2024-04-11 13:05:18.033597	2024-04-11 13:05:18.033597
3274	İzmir	35	225	2024-04-11 13:05:18.037274	2024-04-11 13:05:18.037274
3275	Kars	36	225	2024-04-11 13:05:18.040893	2024-04-11 13:05:18.040893
3276	Kastamonu	37	225	2024-04-11 13:05:18.04439	2024-04-11 13:05:18.04439
3277	Kayseri	38	225	2024-04-11 13:05:18.048047	2024-04-11 13:05:18.048047
3278	Kırklareli	39	225	2024-04-11 13:05:18.051768	2024-04-11 13:05:18.051768
3279	Kırşehir	40	225	2024-04-11 13:05:18.055497	2024-04-11 13:05:18.055497
3280	Kocaeli	41	225	2024-04-11 13:05:18.05914	2024-04-11 13:05:18.05914
3281	Konya	42	225	2024-04-11 13:05:18.063089	2024-04-11 13:05:18.063089
3282	Kütahya	43	225	2024-04-11 13:05:18.067101	2024-04-11 13:05:18.067101
3283	Malatya	44	225	2024-04-11 13:05:18.070927	2024-04-11 13:05:18.070927
3284	Manisa	45	225	2024-04-11 13:05:18.074787	2024-04-11 13:05:18.074787
3285	Kahramanmaraş	46	225	2024-04-11 13:05:18.078705	2024-04-11 13:05:18.078705
3286	Mardin	47	225	2024-04-11 13:05:18.082218	2024-04-11 13:05:18.082218
3287	Muğla	48	225	2024-04-11 13:05:18.085737	2024-04-11 13:05:18.085737
3288	Muş	49	225	2024-04-11 13:05:18.089262	2024-04-11 13:05:18.089262
3289	Nevşehir	50	225	2024-04-11 13:05:18.092682	2024-04-11 13:05:18.092682
3290	Niğde	51	225	2024-04-11 13:05:18.096419	2024-04-11 13:05:18.096419
3291	Ordu	52	225	2024-04-11 13:05:18.10006	2024-04-11 13:05:18.10006
3292	Rize	53	225	2024-04-11 13:05:18.103574	2024-04-11 13:05:18.103574
3293	Sakarya	54	225	2024-04-11 13:05:18.106983	2024-04-11 13:05:18.106983
3294	Samsun	55	225	2024-04-11 13:05:18.110478	2024-04-11 13:05:18.110478
3295	Siirt	56	225	2024-04-11 13:05:18.114029	2024-04-11 13:05:18.114029
3296	Sinop	57	225	2024-04-11 13:05:18.11756	2024-04-11 13:05:18.11756
3297	Sivas	58	225	2024-04-11 13:05:18.121075	2024-04-11 13:05:18.121075
3298	Tekirdağ	59	225	2024-04-11 13:05:18.124721	2024-04-11 13:05:18.124721
3299	Tokat	60	225	2024-04-11 13:05:18.128316	2024-04-11 13:05:18.128316
3300	Trabzon	61	225	2024-04-11 13:05:18.131836	2024-04-11 13:05:18.131836
3301	Tunceli	62	225	2024-04-11 13:05:18.135375	2024-04-11 13:05:18.135375
3302	Şanlıurfa	63	225	2024-04-11 13:05:18.138806	2024-04-11 13:05:18.138806
3303	Uşak	64	225	2024-04-11 13:05:18.142151	2024-04-11 13:05:18.142151
3304	Van	65	225	2024-04-11 13:05:18.14571	2024-04-11 13:05:18.14571
3305	Yozgat	66	225	2024-04-11 13:05:18.149173	2024-04-11 13:05:18.149173
3306	Zonguldak	67	225	2024-04-11 13:05:18.152693	2024-04-11 13:05:18.152693
3307	Aksaray	68	225	2024-04-11 13:05:18.156143	2024-04-11 13:05:18.156143
3308	Bayburt	69	225	2024-04-11 13:05:18.159637	2024-04-11 13:05:18.159637
3309	Karaman	70	225	2024-04-11 13:05:18.163071	2024-04-11 13:05:18.163071
3310	Kırıkkale	71	225	2024-04-11 13:05:18.166655	2024-04-11 13:05:18.166655
3311	Batman	72	225	2024-04-11 13:05:18.170219	2024-04-11 13:05:18.170219
3312	Şırnak	73	225	2024-04-11 13:05:18.173873	2024-04-11 13:05:18.173873
3313	Bartın	74	225	2024-04-11 13:05:18.177434	2024-04-11 13:05:18.177434
3314	Ardahan	75	225	2024-04-11 13:05:18.180908	2024-04-11 13:05:18.180908
3315	Iğdır	76	225	2024-04-11 13:05:18.184378	2024-04-11 13:05:18.184378
3316	Yalova	77	225	2024-04-11 13:05:18.187901	2024-04-11 13:05:18.187901
3317	Karabük	78	225	2024-04-11 13:05:18.191336	2024-04-11 13:05:18.191336
3318	Kilis	79	225	2024-04-11 13:05:18.194968	2024-04-11 13:05:18.194968
3319	Osmaniye	80	225	2024-04-11 13:05:18.198546	2024-04-11 13:05:18.198546
3320	Düzce	81	225	2024-04-11 13:05:18.202144	2024-04-11 13:05:18.202144
3321	Arima	ARI	226	2024-04-11 13:05:18.208804	2024-04-11 13:05:18.208804
3322	Chaguanas	CHA	226	2024-04-11 13:05:18.213356	2024-04-11 13:05:18.213356
3323	Couva-Tabaquite-Talparo	CTT	226	2024-04-11 13:05:18.217093	2024-04-11 13:05:18.217093
3324	Diego Martin	DMN	226	2024-04-11 13:05:18.220975	2024-04-11 13:05:18.220975
3325	Eastern Tobago	ETO	226	2024-04-11 13:05:18.224863	2024-04-11 13:05:18.224863
3326	Penal-Debe	PED	226	2024-04-11 13:05:18.228611	2024-04-11 13:05:18.228611
3327	Port of Spain	POS	226	2024-04-11 13:05:18.232188	2024-04-11 13:05:18.232188
3328	Princes Town	PRT	226	2024-04-11 13:05:18.2358	2024-04-11 13:05:18.2358
3329	Point Fortin	PTF	226	2024-04-11 13:05:18.239514	2024-04-11 13:05:18.239514
3330	Rio Claro-Mayaro	RCM	226	2024-04-11 13:05:18.243285	2024-04-11 13:05:18.243285
3331	San Fernando	SFO	226	2024-04-11 13:05:18.247018	2024-04-11 13:05:18.247018
3332	Sangre Grande	SGE	226	2024-04-11 13:05:18.25071	2024-04-11 13:05:18.25071
3333	Siparia	SIP	226	2024-04-11 13:05:18.254289	2024-04-11 13:05:18.254289
3334	San Juan-Laventille	SJL	226	2024-04-11 13:05:18.258002	2024-04-11 13:05:18.258002
3335	Tunapuna-Piarco	TUP	226	2024-04-11 13:05:18.261774	2024-04-11 13:05:18.261774
3336	Western Tobago	WTO	226	2024-04-11 13:05:18.265344	2024-04-11 13:05:18.265344
3337	Funafuti	FUN	227	2024-04-11 13:05:18.269133	2024-04-11 13:05:18.269133
3338	Niutao	NIT	227	2024-04-11 13:05:18.272901	2024-04-11 13:05:18.272901
3339	Nukufetau	NKF	227	2024-04-11 13:05:18.276735	2024-04-11 13:05:18.276735
3340	Nukulaelae	NKL	227	2024-04-11 13:05:18.280824	2024-04-11 13:05:18.280824
3341	Nanumea	NMA	227	2024-04-11 13:05:18.284536	2024-04-11 13:05:18.284536
3342	Nanumanga	NMG	227	2024-04-11 13:05:18.288237	2024-04-11 13:05:18.288237
3343	Nui	NUI	227	2024-04-11 13:05:18.291984	2024-04-11 13:05:18.291984
3344	Vaitupu	VAI	227	2024-04-11 13:05:18.295985	2024-04-11 13:05:18.295985
3345	Changhua	CHA	228	2024-04-11 13:05:18.300037	2024-04-11 13:05:18.300037
3346	Chiay City	CYI	228	2024-04-11 13:05:18.303852	2024-04-11 13:05:18.303852
3347	Chiayi	CYQ	228	2024-04-11 13:05:18.307708	2024-04-11 13:05:18.307708
3348	Hsinchu	HSQ	228	2024-04-11 13:05:18.311826	2024-04-11 13:05:18.311826
3349	Hsinchui City	HSZ	228	2024-04-11 13:05:18.315687	2024-04-11 13:05:18.315687
3350	Hualien	HUA	228	2024-04-11 13:05:18.319617	2024-04-11 13:05:18.319617
3351	Ilan	ILA	228	2024-04-11 13:05:18.323616	2024-04-11 13:05:18.323616
3352	Keelung City	KEE	228	2024-04-11 13:05:18.327882	2024-04-11 13:05:18.327882
3353	Kaohsiung City	KHH	228	2024-04-11 13:05:18.331983	2024-04-11 13:05:18.331983
3354	Kaohsiung	KHQ	228	2024-04-11 13:05:18.335874	2024-04-11 13:05:18.335874
3355	Miaoli	MIA	228	2024-04-11 13:05:18.342617	2024-04-11 13:05:18.342617
3356	Nantou	NAN	228	2024-04-11 13:05:18.346684	2024-04-11 13:05:18.346684
3357	Penghu	PEN	228	2024-04-11 13:05:18.350636	2024-04-11 13:05:18.350636
3358	Pingtung	PIF	228	2024-04-11 13:05:18.354466	2024-04-11 13:05:18.354466
3359	Taoyuan	TAO	228	2024-04-11 13:05:18.358601	2024-04-11 13:05:18.358601
3360	Tainan City	TNN	228	2024-04-11 13:05:18.362446	2024-04-11 13:05:18.362446
3361	Tainan	TNQ	228	2024-04-11 13:05:18.366313	2024-04-11 13:05:18.366313
3362	Taipei City	TPE	228	2024-04-11 13:05:18.370184	2024-04-11 13:05:18.370184
3363	Taipei	TPQ	228	2024-04-11 13:05:18.374058	2024-04-11 13:05:18.374058
3364	Taitung	TTT	228	2024-04-11 13:05:18.378114	2024-04-11 13:05:18.378114
3365	Taichung City	TXG	228	2024-04-11 13:05:18.381869	2024-04-11 13:05:18.381869
3366	Taichung	TXQ	228	2024-04-11 13:05:18.385526	2024-04-11 13:05:18.385526
3367	Yunlin	YUN	228	2024-04-11 13:05:18.389498	2024-04-11 13:05:18.389498
3368	Arusha	01	229	2024-04-11 13:05:18.393247	2024-04-11 13:05:18.393247
3369	Dar-es-Salaam	02	229	2024-04-11 13:05:18.397063	2024-04-11 13:05:18.397063
3370	Dodoma	03	229	2024-04-11 13:05:18.400761	2024-04-11 13:05:18.400761
3371	Iringa	04	229	2024-04-11 13:05:18.404346	2024-04-11 13:05:18.404346
3372	Kagera	05	229	2024-04-11 13:05:18.408049	2024-04-11 13:05:18.408049
3373	Kaskazini Pemba	06	229	2024-04-11 13:05:18.411701	2024-04-11 13:05:18.411701
3374	Kaskazini Unguja	07	229	2024-04-11 13:05:18.41538	2024-04-11 13:05:18.41538
3375	Kigoma	08	229	2024-04-11 13:05:18.418897	2024-04-11 13:05:18.418897
3376	Kilimanjaro	09	229	2024-04-11 13:05:18.42249	2024-04-11 13:05:18.42249
3377	Kusini Pemba	10	229	2024-04-11 13:05:18.42625	2024-04-11 13:05:18.42625
3378	Kusini Unguja	11	229	2024-04-11 13:05:18.429914	2024-04-11 13:05:18.429914
3379	Lindi	12	229	2024-04-11 13:05:18.433427	2024-04-11 13:05:18.433427
3380	Mara	13	229	2024-04-11 13:05:18.436943	2024-04-11 13:05:18.436943
3381	Mbeya	14	229	2024-04-11 13:05:18.440454	2024-04-11 13:05:18.440454
3382	Mjini Magharibi	15	229	2024-04-11 13:05:18.444124	2024-04-11 13:05:18.444124
3383	Morogoro	16	229	2024-04-11 13:05:18.44794	2024-04-11 13:05:18.44794
3384	Mtwara	17	229	2024-04-11 13:05:18.451685	2024-04-11 13:05:18.451685
3385	Mwanza	18	229	2024-04-11 13:05:18.455271	2024-04-11 13:05:18.455271
3386	Pwani	19	229	2024-04-11 13:05:18.458845	2024-04-11 13:05:18.458845
3387	Rukwa	20	229	2024-04-11 13:05:18.462501	2024-04-11 13:05:18.462501
3388	Ruvuma	21	229	2024-04-11 13:05:18.466053	2024-04-11 13:05:18.466053
3389	Shinyanga	22	229	2024-04-11 13:05:18.469863	2024-04-11 13:05:18.469863
3390	Singida	23	229	2024-04-11 13:05:18.477494	2024-04-11 13:05:18.477494
3391	Tabora	24	229	2024-04-11 13:05:18.484823	2024-04-11 13:05:18.484823
3392	Tanga	25	229	2024-04-11 13:05:18.492033	2024-04-11 13:05:18.492033
3393	Manyara	26	229	2024-04-11 13:05:18.498727	2024-04-11 13:05:18.498727
3394	Vinnyts'ka Oblast'	05	230	2024-04-11 13:05:18.502442	2024-04-11 13:05:18.502442
3395	Volyns'ka Oblast'	07	230	2024-04-11 13:05:18.505947	2024-04-11 13:05:18.505947
3396	Luhans'ka Oblast'	09	230	2024-04-11 13:05:18.509561	2024-04-11 13:05:18.509561
3397	Dnipropetrovs'ka Oblast'	12	230	2024-04-11 13:05:18.513172	2024-04-11 13:05:18.513172
3398	Donets'ka Oblast'	14	230	2024-04-11 13:05:18.516704	2024-04-11 13:05:18.516704
3399	Zhytomyrs'ka Oblast'	18	230	2024-04-11 13:05:18.520107	2024-04-11 13:05:18.520107
3400	Zakarpats'ka Oblast'	21	230	2024-04-11 13:05:18.523727	2024-04-11 13:05:18.523727
3401	Zaporiz'ka Oblast'	23	230	2024-04-11 13:05:18.527241	2024-04-11 13:05:18.527241
3402	Ivano-Frankivs'ka Oblast'	26	230	2024-04-11 13:05:18.530632	2024-04-11 13:05:18.530632
3403	Kyïvs'ka mis'ka rada	30	230	2024-04-11 13:05:18.534077	2024-04-11 13:05:18.534077
3404	Kyïvs'ka Oblast'	32	230	2024-04-11 13:05:18.537688	2024-04-11 13:05:18.537688
3405	Kirovohrads'ka Oblast'	35	230	2024-04-11 13:05:18.541306	2024-04-11 13:05:18.541306
3406	Sevastopol	40	230	2024-04-11 13:05:18.544985	2024-04-11 13:05:18.544985
3407	Respublika Krym	43	230	2024-04-11 13:05:18.548604	2024-04-11 13:05:18.548604
3408	L'vivs'ka Oblast'	46	230	2024-04-11 13:05:18.552222	2024-04-11 13:05:18.552222
3409	Mykolaïvs'ka Oblast'	48	230	2024-04-11 13:05:18.555963	2024-04-11 13:05:18.555963
3410	Odes'ka Oblast'	51	230	2024-04-11 13:05:18.559585	2024-04-11 13:05:18.559585
3411	Poltavs'ka Oblast'	53	230	2024-04-11 13:05:18.563614	2024-04-11 13:05:18.563614
3412	Rivnens'ka Oblast'	56	230	2024-04-11 13:05:18.56754	2024-04-11 13:05:18.56754
3413	Sums 'ka Oblast'	59	230	2024-04-11 13:05:18.571281	2024-04-11 13:05:18.571281
3414	Ternopil's'ka Oblast'	61	230	2024-04-11 13:05:18.575287	2024-04-11 13:05:18.575287
3415	Kharkivs'ka Oblast'	63	230	2024-04-11 13:05:18.579834	2024-04-11 13:05:18.579834
3416	Khersons'ka Oblast'	65	230	2024-04-11 13:05:18.585458	2024-04-11 13:05:18.585458
3417	Khmel'nyts'ka Oblast'	68	230	2024-04-11 13:05:18.590859	2024-04-11 13:05:18.590859
3418	Cherkas'ka Oblast'	71	230	2024-04-11 13:05:18.59481	2024-04-11 13:05:18.59481
3419	Chernihivs'ka Oblast'	74	230	2024-04-11 13:05:18.598665	2024-04-11 13:05:18.598665
3420	Chernivets'ka Oblast'	77	230	2024-04-11 13:05:18.602426	2024-04-11 13:05:18.602426
3421	Central	C	231	2024-04-11 13:05:18.606395	2024-04-11 13:05:18.606395
3422	Eastern	E	231	2024-04-11 13:05:18.610821	2024-04-11 13:05:18.610821
3423	Northern	N	231	2024-04-11 13:05:18.614591	2024-04-11 13:05:18.614591
3424	Western	W	231	2024-04-11 13:05:18.618322	2024-04-11 13:05:18.618322
3425	Johnston Atoll	67	232	2024-04-11 13:05:18.623116	2024-04-11 13:05:18.623116
3426	Midway Islands	71	232	2024-04-11 13:05:18.626971	2024-04-11 13:05:18.626971
3427	Navassa Island	76	232	2024-04-11 13:05:18.63094	2024-04-11 13:05:18.63094
3428	Wake Island	79	232	2024-04-11 13:05:18.634687	2024-04-11 13:05:18.634687
3429	Baker Island	81	232	2024-04-11 13:05:18.638537	2024-04-11 13:05:18.638537
3430	Howland Island	84	232	2024-04-11 13:05:18.642503	2024-04-11 13:05:18.642503
3431	Jarvis Island	86	232	2024-04-11 13:05:18.646077	2024-04-11 13:05:18.646077
3432	Kingman Reef	89	232	2024-04-11 13:05:18.649756	2024-04-11 13:05:18.649756
3433	Palmyra Atoll	95	232	2024-04-11 13:05:18.653492	2024-04-11 13:05:18.653492
3434	Alaska	AK	233	2024-04-11 13:05:18.657332	2024-04-11 13:05:18.657332
3435	Alabama	AL	233	2024-04-11 13:05:18.661176	2024-04-11 13:05:18.661176
3436	Arkansas	AR	233	2024-04-11 13:05:18.664686	2024-04-11 13:05:18.664686
3437	American Samoa	AS	233	2024-04-11 13:05:18.668307	2024-04-11 13:05:18.668307
3438	Arizona	AZ	233	2024-04-11 13:05:18.672167	2024-04-11 13:05:18.672167
3439	California	CA	233	2024-04-11 13:05:18.675763	2024-04-11 13:05:18.675763
3440	Colorado	CO	233	2024-04-11 13:05:18.679702	2024-04-11 13:05:18.679702
3441	Connecticut	CT	233	2024-04-11 13:05:18.683232	2024-04-11 13:05:18.683232
3442	District of Columbia	DC	233	2024-04-11 13:05:18.686832	2024-04-11 13:05:18.686832
3443	Delaware	DE	233	2024-04-11 13:05:18.690537	2024-04-11 13:05:18.690537
3444	Florida	FL	233	2024-04-11 13:05:18.694008	2024-04-11 13:05:18.694008
3445	Georgia	GA	233	2024-04-11 13:05:18.697759	2024-04-11 13:05:18.697759
3446	Guam	GU	233	2024-04-11 13:05:18.701362	2024-04-11 13:05:18.701362
3447	Hawaii	HI	233	2024-04-11 13:05:18.704856	2024-04-11 13:05:18.704856
3448	Iowa	IA	233	2024-04-11 13:05:18.708285	2024-04-11 13:05:18.708285
3449	Idaho	ID	233	2024-04-11 13:05:18.711733	2024-04-11 13:05:18.711733
3450	Illinois	IL	233	2024-04-11 13:05:18.715215	2024-04-11 13:05:18.715215
3451	Indiana	IN	233	2024-04-11 13:05:18.718643	2024-04-11 13:05:18.718643
3452	Kansas	KS	233	2024-04-11 13:05:18.723723	2024-04-11 13:05:18.723723
3453	Kentucky	KY	233	2024-04-11 13:05:18.727499	2024-04-11 13:05:18.727499
3454	Louisiana	LA	233	2024-04-11 13:05:18.733081	2024-04-11 13:05:18.733081
3455	Massachusetts	MA	233	2024-04-11 13:05:18.738317	2024-04-11 13:05:18.738317
3456	Maryland	MD	233	2024-04-11 13:05:18.742275	2024-04-11 13:05:18.742275
3457	Maine	ME	233	2024-04-11 13:05:18.746427	2024-04-11 13:05:18.746427
3458	Michigan	MI	233	2024-04-11 13:05:18.750541	2024-04-11 13:05:18.750541
3459	Minnesota	MN	233	2024-04-11 13:05:18.755296	2024-04-11 13:05:18.755296
3460	Missouri	MO	233	2024-04-11 13:05:18.759321	2024-04-11 13:05:18.759321
3461	Northern Mariana Islands	MP	233	2024-04-11 13:05:18.763511	2024-04-11 13:05:18.763511
3462	Mississippi	MS	233	2024-04-11 13:05:18.767615	2024-04-11 13:05:18.767615
3463	Montana	MT	233	2024-04-11 13:05:18.774493	2024-04-11 13:05:18.774493
3464	North Carolina	NC	233	2024-04-11 13:05:18.778528	2024-04-11 13:05:18.778528
3465	North Dakota	ND	233	2024-04-11 13:05:18.782556	2024-04-11 13:05:18.782556
3466	Nebraska	NE	233	2024-04-11 13:05:18.786541	2024-04-11 13:05:18.786541
3467	New Hampshire	NH	233	2024-04-11 13:05:18.790575	2024-04-11 13:05:18.790575
3468	New Jersey	NJ	233	2024-04-11 13:05:18.794651	2024-04-11 13:05:18.794651
3469	New Mexico	NM	233	2024-04-11 13:05:18.798582	2024-04-11 13:05:18.798582
3470	Nevada	NV	233	2024-04-11 13:05:18.802276	2024-04-11 13:05:18.802276
3471	New York	NY	233	2024-04-11 13:05:18.806136	2024-04-11 13:05:18.806136
3472	Ohio	OH	233	2024-04-11 13:05:18.810037	2024-04-11 13:05:18.810037
3473	Oklahoma	OK	233	2024-04-11 13:05:18.814097	2024-04-11 13:05:18.814097
3474	Oregon	OR	233	2024-04-11 13:05:18.817896	2024-04-11 13:05:18.817896
3475	Pennsylvania	PA	233	2024-04-11 13:05:18.821716	2024-04-11 13:05:18.821716
3476	Puerto Rico	PR	233	2024-04-11 13:05:18.825494	2024-04-11 13:05:18.825494
3477	Rhode Island	RI	233	2024-04-11 13:05:18.829166	2024-04-11 13:05:18.829166
3478	South Carolina	SC	233	2024-04-11 13:05:18.832894	2024-04-11 13:05:18.832894
3479	South Dakota	SD	233	2024-04-11 13:05:18.837225	2024-04-11 13:05:18.837225
3480	Tennessee	TN	233	2024-04-11 13:05:18.841024	2024-04-11 13:05:18.841024
3481	Texas	TX	233	2024-04-11 13:05:18.844846	2024-04-11 13:05:18.844846
3482	United States Minor Outlying Islands	UM	233	2024-04-11 13:05:18.848542	2024-04-11 13:05:18.848542
3483	Utah	UT	233	2024-04-11 13:05:18.852117	2024-04-11 13:05:18.852117
3484	Virginia	VA	233	2024-04-11 13:05:18.855773	2024-04-11 13:05:18.855773
3485	Virgin Islands	VI	233	2024-04-11 13:05:18.859425	2024-04-11 13:05:18.859425
3486	Vermont	VT	233	2024-04-11 13:05:18.863227	2024-04-11 13:05:18.863227
3487	Washington	WA	233	2024-04-11 13:05:18.8669	2024-04-11 13:05:18.8669
3488	Wisconsin	WI	233	2024-04-11 13:05:18.870497	2024-04-11 13:05:18.870497
3489	West Virginia	WV	233	2024-04-11 13:05:18.874088	2024-04-11 13:05:18.874088
3490	Wyoming	WY	233	2024-04-11 13:05:18.877936	2024-04-11 13:05:18.877936
3491	Armed Forces Americas (except Canada)	AA	233	2024-04-11 13:05:18.881661	2024-04-11 13:05:18.881661
3492	Armed Forces Africa, Canada, Europe, Middle East	AE	233	2024-04-11 13:05:18.88534	2024-04-11 13:05:18.88534
3493	Armed Forces Pacific	AP	233	2024-04-11 13:05:18.888948	2024-04-11 13:05:18.888948
3494	Artigas	AR	234	2024-04-11 13:05:18.893112	2024-04-11 13:05:18.893112
3495	Canelones	CA	234	2024-04-11 13:05:18.897183	2024-04-11 13:05:18.897183
3496	Cerro Largo	CL	234	2024-04-11 13:05:18.901094	2024-04-11 13:05:18.901094
3497	Colonia	CO	234	2024-04-11 13:05:18.905083	2024-04-11 13:05:18.905083
3498	Durazno	DU	234	2024-04-11 13:05:18.908957	2024-04-11 13:05:18.908957
3499	Florida	FD	234	2024-04-11 13:05:18.912946	2024-04-11 13:05:18.912946
3500	Flores	FS	234	2024-04-11 13:05:18.916859	2024-04-11 13:05:18.916859
3501	Lavalleja	LA	234	2024-04-11 13:05:18.920535	2024-04-11 13:05:18.920535
3502	Maldonado	MA	234	2024-04-11 13:05:18.924235	2024-04-11 13:05:18.924235
3503	Montevideo	MO	234	2024-04-11 13:05:18.927834	2024-04-11 13:05:18.927834
3504	Paysandú	PA	234	2024-04-11 13:05:18.931512	2024-04-11 13:05:18.931512
3505	Río Negro	RN	234	2024-04-11 13:05:18.935308	2024-04-11 13:05:18.935308
3506	Rocha	RO	234	2024-04-11 13:05:18.938887	2024-04-11 13:05:18.938887
3507	Rivera	RV	234	2024-04-11 13:05:18.942451	2024-04-11 13:05:18.942451
3508	Salto	SA	234	2024-04-11 13:05:18.945993	2024-04-11 13:05:18.945993
3509	San José	SJ	234	2024-04-11 13:05:18.949608	2024-04-11 13:05:18.949608
3510	Soriano	SO	234	2024-04-11 13:05:18.953174	2024-04-11 13:05:18.953174
3511	Tacuarembó	TA	234	2024-04-11 13:05:18.956746	2024-04-11 13:05:18.956746
3512	Treinta y Tres	TT	234	2024-04-11 13:05:18.960393	2024-04-11 13:05:18.960393
3513	Andijon	AN	235	2024-04-11 13:05:18.964411	2024-04-11 13:05:18.964411
3514	Buxoro	BU	235	2024-04-11 13:05:18.96934	2024-04-11 13:05:18.96934
3515	Farg'ona	FA	235	2024-04-11 13:05:18.977402	2024-04-11 13:05:18.977402
3516	Jizzax	JI	235	2024-04-11 13:05:18.983453	2024-04-11 13:05:18.983453
3517	Namangan	NG	235	2024-04-11 13:05:18.98696	2024-04-11 13:05:18.98696
3518	Navoiy	NW	235	2024-04-11 13:05:18.990675	2024-04-11 13:05:18.990675
3519	Qashqadaryo	QA	235	2024-04-11 13:05:18.994318	2024-04-11 13:05:18.994318
3520	Qoraqalpog'iston Respublikasi	QR	235	2024-04-11 13:05:18.998088	2024-04-11 13:05:18.998088
3521	Samarqand	SA	235	2024-04-11 13:05:19.001814	2024-04-11 13:05:19.001814
3522	Sirdaryo	SI	235	2024-04-11 13:05:19.005419	2024-04-11 13:05:19.005419
3523	Surxondaryo	SU	235	2024-04-11 13:05:19.0094	2024-04-11 13:05:19.0094
3524	Toshkent	TK	235	2024-04-11 13:05:19.013129	2024-04-11 13:05:19.013129
3525	Toshkent	TO	235	2024-04-11 13:05:19.01677	2024-04-11 13:05:19.01677
3526	Xorazm	XO	235	2024-04-11 13:05:19.020378	2024-04-11 13:05:19.020378
3527	Charlotte	01	237	2024-04-11 13:05:19.024198	2024-04-11 13:05:19.024198
3528	Saint Andrew	02	237	2024-04-11 13:05:19.028021	2024-04-11 13:05:19.028021
3529	Saint David	03	237	2024-04-11 13:05:19.031579	2024-04-11 13:05:19.031579
3530	Saint George	04	237	2024-04-11 13:05:19.035277	2024-04-11 13:05:19.035277
3531	Saint Patrick	05	237	2024-04-11 13:05:19.03908	2024-04-11 13:05:19.03908
3532	Grenadines	06	237	2024-04-11 13:05:19.042856	2024-04-11 13:05:19.042856
3533	Distrito Federal	A	238	2024-04-11 13:05:19.046722	2024-04-11 13:05:19.046722
3534	Anzoátegui	B	238	2024-04-11 13:05:19.050385	2024-04-11 13:05:19.050385
3535	Apure	C	238	2024-04-11 13:05:19.054076	2024-04-11 13:05:19.054076
3536	Aragua	D	238	2024-04-11 13:05:19.057836	2024-04-11 13:05:19.057836
3537	Barinas	E	238	2024-04-11 13:05:19.061532	2024-04-11 13:05:19.061532
3538	Bolívar	F	238	2024-04-11 13:05:19.065778	2024-04-11 13:05:19.065778
3539	Carabobo	G	238	2024-04-11 13:05:19.069718	2024-04-11 13:05:19.069718
3540	Cojedes	H	238	2024-04-11 13:05:19.073558	2024-04-11 13:05:19.073558
3541	Falcón	I	238	2024-04-11 13:05:19.077635	2024-04-11 13:05:19.077635
3542	Guárico	J	238	2024-04-11 13:05:19.081449	2024-04-11 13:05:19.081449
3543	Lara	K	238	2024-04-11 13:05:19.085255	2024-04-11 13:05:19.085255
3544	Mérida	L	238	2024-04-11 13:05:19.089047	2024-04-11 13:05:19.089047
3545	Miranda	M	238	2024-04-11 13:05:19.092689	2024-04-11 13:05:19.092689
3546	Monagas	N	238	2024-04-11 13:05:19.096804	2024-04-11 13:05:19.096804
3547	Nueva Esparta	O	238	2024-04-11 13:05:19.100826	2024-04-11 13:05:19.100826
3548	Portuguesa	P	238	2024-04-11 13:05:19.104765	2024-04-11 13:05:19.104765
3549	Sucre	R	238	2024-04-11 13:05:19.108596	2024-04-11 13:05:19.108596
3550	Táchira	S	238	2024-04-11 13:05:19.112309	2024-04-11 13:05:19.112309
3551	Trujillo	T	238	2024-04-11 13:05:19.116143	2024-04-11 13:05:19.116143
3552	Yaracuy	U	238	2024-04-11 13:05:19.119926	2024-04-11 13:05:19.119926
3553	Zulia	V	238	2024-04-11 13:05:19.123756	2024-04-11 13:05:19.123756
3554	Dependencias Federales	W	238	2024-04-11 13:05:19.127453	2024-04-11 13:05:19.127453
3555	Vargas	X	238	2024-04-11 13:05:19.131047	2024-04-11 13:05:19.131047
3556	Delta Amacuro	Y	238	2024-04-11 13:05:19.134941	2024-04-11 13:05:19.134941
3557	Amazonas	Z	238	2024-04-11 13:05:19.138654	2024-04-11 13:05:19.138654
3558	Lai Châu	01	241	2024-04-11 13:05:19.142706	2024-04-11 13:05:19.142706
3559	Lào Cai	02	241	2024-04-11 13:05:19.146548	2024-04-11 13:05:19.146548
3560	Hà Giang	03	241	2024-04-11 13:05:19.150172	2024-04-11 13:05:19.150172
3561	Cao Bằng	04	241	2024-04-11 13:05:19.15397	2024-04-11 13:05:19.15397
3562	Sơn La	05	241	2024-04-11 13:05:19.15779	2024-04-11 13:05:19.15779
3563	Yên Bái	06	241	2024-04-11 13:05:19.16146	2024-04-11 13:05:19.16146
3564	Tuyên Quang	07	241	2024-04-11 13:05:19.165406	2024-04-11 13:05:19.165406
3565	Lạng Sơn	09	241	2024-04-11 13:05:19.169092	2024-04-11 13:05:19.169092
3566	Quảng Ninh	13	241	2024-04-11 13:05:19.172931	2024-04-11 13:05:19.172931
3567	Hoà Bình	14	241	2024-04-11 13:05:19.176696	2024-04-11 13:05:19.176696
3568	Hà Tây	15	241	2024-04-11 13:05:19.180368	2024-04-11 13:05:19.180368
3569	Ninh Bình	18	241	2024-04-11 13:05:19.184364	2024-04-11 13:05:19.184364
3570	Thái Bình	20	241	2024-04-11 13:05:19.188393	2024-04-11 13:05:19.188393
3571	Thanh Hóa	21	241	2024-04-11 13:05:19.19514	2024-04-11 13:05:19.19514
3572	Nghệ An	22	241	2024-04-11 13:05:19.199239	2024-04-11 13:05:19.199239
3573	Hà Tỉnh	23	241	2024-04-11 13:05:19.203231	2024-04-11 13:05:19.203231
3574	Quảng Bình	24	241	2024-04-11 13:05:19.210359	2024-04-11 13:05:19.210359
3575	Quảng Trị	25	241	2024-04-11 13:05:19.214847	2024-04-11 13:05:19.214847
3576	Thừa Thiên-Huế	26	241	2024-04-11 13:05:19.21871	2024-04-11 13:05:19.21871
3577	Quảng Nam	27	241	2024-04-11 13:05:19.222654	2024-04-11 13:05:19.222654
3578	Kon Tum	28	241	2024-04-11 13:05:19.226749	2024-04-11 13:05:19.226749
3579	Quảng Ngãi	29	241	2024-04-11 13:05:19.231109	2024-04-11 13:05:19.231109
3580	Gia Lai	30	241	2024-04-11 13:05:19.235494	2024-04-11 13:05:19.235494
3581	Bình Định	31	241	2024-04-11 13:05:19.239712	2024-04-11 13:05:19.239712
3582	Phú Yên	32	241	2024-04-11 13:05:19.243535	2024-04-11 13:05:19.243535
3583	Đắc Lắk	33	241	2024-04-11 13:05:19.247627	2024-04-11 13:05:19.247627
3584	Khánh Hòa	34	241	2024-04-11 13:05:19.251683	2024-04-11 13:05:19.251683
3585	Lâm Đồng	35	241	2024-04-11 13:05:19.255833	2024-04-11 13:05:19.255833
3586	Ninh Thuận	36	241	2024-04-11 13:05:19.259812	2024-04-11 13:05:19.259812
3587	Tây Ninh	37	241	2024-04-11 13:05:19.263614	2024-04-11 13:05:19.263614
3588	Đồng Nai	39	241	2024-04-11 13:05:19.267558	2024-04-11 13:05:19.267558
3589	Bình Thuận	40	241	2024-04-11 13:05:19.271459	2024-04-11 13:05:19.271459
3590	Long An	41	241	2024-04-11 13:05:19.275305	2024-04-11 13:05:19.275305
3591	Bà Rịa-Vũng Tàu	43	241	2024-04-11 13:05:19.2793	2024-04-11 13:05:19.2793
3592	An Giang	44	241	2024-04-11 13:05:19.283128	2024-04-11 13:05:19.283128
3593	Đồng Tháp	45	241	2024-04-11 13:05:19.287022	2024-04-11 13:05:19.287022
3594	Tiền Giang	46	241	2024-04-11 13:05:19.290895	2024-04-11 13:05:19.290895
3595	Kiên Giang	47	241	2024-04-11 13:05:19.294597	2024-04-11 13:05:19.294597
3596	Vĩnh Long	49	241	2024-04-11 13:05:19.298478	2024-04-11 13:05:19.298478
3597	Bến Tre	50	241	2024-04-11 13:05:19.302241	2024-04-11 13:05:19.302241
3598	Trà Vinh	51	241	2024-04-11 13:05:19.306025	2024-04-11 13:05:19.306025
3599	Sóc Trăng	52	241	2024-04-11 13:05:19.309808	2024-04-11 13:05:19.309808
3600	Bắc Kạn	53	241	2024-04-11 13:05:19.313437	2024-04-11 13:05:19.313437
3601	Bắc Giang	54	241	2024-04-11 13:05:19.31704	2024-04-11 13:05:19.31704
3602	Bạc Liêu	55	241	2024-04-11 13:05:19.320506	2024-04-11 13:05:19.320506
3603	Bắc Ninh	56	241	2024-04-11 13:05:19.324062	2024-04-11 13:05:19.324062
3604	Bình Dương	57	241	2024-04-11 13:05:19.327708	2024-04-11 13:05:19.327708
3605	Bình Phước	58	241	2024-04-11 13:05:19.331299	2024-04-11 13:05:19.331299
3606	Cà Mau	59	241	2024-04-11 13:05:19.334954	2024-04-11 13:05:19.334954
3607	Hải Duong	61	241	2024-04-11 13:05:19.338531	2024-04-11 13:05:19.338531
3608	Hà Nam	63	241	2024-04-11 13:05:19.341928	2024-04-11 13:05:19.341928
3609	Hưng Yên	66	241	2024-04-11 13:05:19.345375	2024-04-11 13:05:19.345375
3610	Nam Định	67	241	2024-04-11 13:05:19.348977	2024-04-11 13:05:19.348977
3611	Phú Thọ	68	241	2024-04-11 13:05:19.352589	2024-04-11 13:05:19.352589
3612	Thái Nguyên	69	241	2024-04-11 13:05:19.356227	2024-04-11 13:05:19.356227
3613	Vĩnh Phúc	70	241	2024-04-11 13:05:19.359759	2024-04-11 13:05:19.359759
3614	Điện Biên	71	241	2024-04-11 13:05:19.363379	2024-04-11 13:05:19.363379
3615	Đắk Nông	72	241	2024-04-11 13:05:19.366789	2024-04-11 13:05:19.366789
3616	Hậu Giang	73	241	2024-04-11 13:05:19.370187	2024-04-11 13:05:19.370187
3617	Cần Thơ	CT	241	2024-04-11 13:05:19.373813	2024-04-11 13:05:19.373813
3618	Đà Nẵng	DN	241	2024-04-11 13:05:19.377457	2024-04-11 13:05:19.377457
3619	Hà Nội	HN	241	2024-04-11 13:05:19.381054	2024-04-11 13:05:19.381054
3620	Hải Phòng	HP	241	2024-04-11 13:05:19.384532	2024-04-11 13:05:19.384532
3621	Hồ Chí Minh [Sài Gòn]	SG	241	2024-04-11 13:05:19.387906	2024-04-11 13:05:19.387906
3622	Malampa	MAP	242	2024-04-11 13:05:19.39154	2024-04-11 13:05:19.39154
3623	Pénama	PAM	242	2024-04-11 13:05:19.395059	2024-04-11 13:05:19.395059
3624	Sanma	SAM	242	2024-04-11 13:05:19.398545	2024-04-11 13:05:19.398545
3625	Shéfa	SEE	242	2024-04-11 13:05:19.402044	2024-04-11 13:05:19.402044
3626	Taféa	TAE	242	2024-04-11 13:05:19.405496	2024-04-11 13:05:19.405496
3627	Torba	TOB	242	2024-04-11 13:05:19.40887	2024-04-11 13:05:19.40887
3628	A'ana	AA	244	2024-04-11 13:05:19.412502	2024-04-11 13:05:19.412502
3629	Aiga-i-le-Tai	AL	244	2024-04-11 13:05:19.415939	2024-04-11 13:05:19.415939
3630	Atua	AT	244	2024-04-11 13:05:19.41937	2024-04-11 13:05:19.41937
3631	Fa'asaleleaga	FA	244	2024-04-11 13:05:19.422914	2024-04-11 13:05:19.422914
3632	Gaga'emauga	GE	244	2024-04-11 13:05:19.426409	2024-04-11 13:05:19.426409
3633	Gagaifomauga	GI	244	2024-04-11 13:05:19.429797	2024-04-11 13:05:19.429797
3634	Palauli	PA	244	2024-04-11 13:05:19.433197	2024-04-11 13:05:19.433197
3635	Satupa'itea	SA	244	2024-04-11 13:05:19.436609	2024-04-11 13:05:19.436609
3636	Tuamasaga	TU	244	2024-04-11 13:05:19.440036	2024-04-11 13:05:19.440036
3637	Va'a-o-Fonoti	VF	244	2024-04-11 13:05:19.443591	2024-04-11 13:05:19.443591
3638	Vaisigano	VS	244	2024-04-11 13:05:19.447055	2024-04-11 13:05:19.447055
3639	Abyān	AB	245	2024-04-11 13:05:19.450727	2024-04-11 13:05:19.450727
3640	'Adan	AD	245	2024-04-11 13:05:19.454263	2024-04-11 13:05:19.454263
3641	'Amrān	AM	245	2024-04-11 13:05:19.457825	2024-04-11 13:05:19.457825
3642	Al Bayḑā'	BA	245	2024-04-11 13:05:19.461369	2024-04-11 13:05:19.461369
3643	Aḑ Ḑāli‘	DA	245	2024-04-11 13:05:19.464921	2024-04-11 13:05:19.464921
3644	Dhamār	DH	245	2024-04-11 13:05:19.468583	2024-04-11 13:05:19.468583
3645	Ḩaḑramawt	HD	245	2024-04-11 13:05:19.472425	2024-04-11 13:05:19.472425
3646	Ḩajjah	HJ	245	2024-04-11 13:05:19.480213	2024-04-11 13:05:19.480213
3647	Ibb	IB	245	2024-04-11 13:05:19.484952	2024-04-11 13:05:19.484952
3648	Al Jawf	JA	245	2024-04-11 13:05:19.488601	2024-04-11 13:05:19.488601
3649	Laḩij	LA	245	2024-04-11 13:05:19.49252	2024-04-11 13:05:19.49252
3650	Ma'rib	MA	245	2024-04-11 13:05:19.49665	2024-04-11 13:05:19.49665
3651	Al Mahrah	MR	245	2024-04-11 13:05:19.500747	2024-04-11 13:05:19.500747
3652	Al Ḩudaydah	MU	245	2024-04-11 13:05:19.50456	2024-04-11 13:05:19.50456
3653	Al Maḩwīt	MW	245	2024-04-11 13:05:19.50858	2024-04-11 13:05:19.50858
3654	Raymah	RA	245	2024-04-11 13:05:19.512595	2024-04-11 13:05:19.512595
3655	Şa'dah	SD	245	2024-04-11 13:05:19.516503	2024-04-11 13:05:19.516503
3656	Shabwah	SH	245	2024-04-11 13:05:19.520401	2024-04-11 13:05:19.520401
3657	Şan'ā'	SN	245	2024-04-11 13:05:19.524311	2024-04-11 13:05:19.524311
3658	Tā'izz	TA	245	2024-04-11 13:05:19.528303	2024-04-11 13:05:19.528303
3659	Eastern Cape	EC	247	2024-04-11 13:05:19.532317	2024-04-11 13:05:19.532317
3660	Free State	FS	247	2024-04-11 13:05:19.536098	2024-04-11 13:05:19.536098
3661	Gauteng	GT	247	2024-04-11 13:05:19.539968	2024-04-11 13:05:19.539968
3662	Limpopo	LP	247	2024-04-11 13:05:19.543962	2024-04-11 13:05:19.543962
3663	Mpumalanga	MP	247	2024-04-11 13:05:19.547891	2024-04-11 13:05:19.547891
3664	Northern Cape	NC	247	2024-04-11 13:05:19.551941	2024-04-11 13:05:19.551941
3665	Kwazulu-Natal	NL	247	2024-04-11 13:05:19.555774	2024-04-11 13:05:19.555774
3666	North-West (South Africa)	NW	247	2024-04-11 13:05:19.5597	2024-04-11 13:05:19.5597
3667	Western Cape	WC	247	2024-04-11 13:05:19.563688	2024-04-11 13:05:19.563688
3668	Western	01	248	2024-04-11 13:05:19.568247	2024-04-11 13:05:19.568247
3669	Central	02	248	2024-04-11 13:05:19.572211	2024-04-11 13:05:19.572211
3670	Eastern	03	248	2024-04-11 13:05:19.57618	2024-04-11 13:05:19.57618
3671	Luapula	04	248	2024-04-11 13:05:19.58017	2024-04-11 13:05:19.58017
3672	Northern	05	248	2024-04-11 13:05:19.584211	2024-04-11 13:05:19.584211
3673	North-Western	06	248	2024-04-11 13:05:19.588253	2024-04-11 13:05:19.588253
3674	Southern (Zambia)	07	248	2024-04-11 13:05:19.592159	2024-04-11 13:05:19.592159
3675	Copperbelt	08	248	2024-04-11 13:05:19.5962	2024-04-11 13:05:19.5962
3676	Lusaka	09	248	2024-04-11 13:05:19.600117	2024-04-11 13:05:19.600117
3677	Bulawayo	BU	249	2024-04-11 13:05:19.604178	2024-04-11 13:05:19.604178
3678	Harare	HA	249	2024-04-11 13:05:19.608339	2024-04-11 13:05:19.608339
3679	Manicaland	MA	249	2024-04-11 13:05:19.615054	2024-04-11 13:05:19.615054
3680	Mashonaland Central	MC	249	2024-04-11 13:05:19.619006	2024-04-11 13:05:19.619006
3681	Mashonaland East	ME	249	2024-04-11 13:05:19.622986	2024-04-11 13:05:19.622986
3682	Midlands	MI	249	2024-04-11 13:05:19.626977	2024-04-11 13:05:19.626977
3683	Matabeleland North	MN	249	2024-04-11 13:05:19.630763	2024-04-11 13:05:19.630763
3684	Matabeleland South	MS	249	2024-04-11 13:05:19.634591	2024-04-11 13:05:19.634591
3685	Masvingo	MV	249	2024-04-11 13:05:19.638487	2024-04-11 13:05:19.638487
3686	Mashonaland West	MW	249	2024-04-11 13:05:19.642257	2024-04-11 13:05:19.642257
\.


--
-- Data for Name: spree_stock_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) FROM stdin;
19	1	19	10	2024-04-11 14:35:50.10094	2024-04-11 14:35:51.482056	t	\N
37	1	37	10	2024-04-11 14:35:50.720509	2024-04-11 14:35:51.508524	t	\N
20	1	20	10	2024-04-11 14:35:50.134124	2024-04-11 14:35:51.534445	t	\N
21	1	21	10	2024-04-11 14:35:50.167132	2024-04-11 14:35:51.56137	t	\N
1	1	1	10	2024-04-11 13:05:19.718772	2024-04-11 14:35:51.587975	t	\N
2	1	2	10	2024-04-11 13:05:19.74707	2024-04-11 14:35:51.614091	t	\N
22	1	22	10	2024-04-11 14:35:50.205725	2024-04-11 14:35:51.647097	t	\N
38	1	38	10	2024-04-11 14:35:50.757311	2024-04-11 14:35:51.673565	t	\N
23	1	23	10	2024-04-11 14:35:50.245856	2024-04-11 14:35:51.699693	t	\N
24	1	24	10	2024-04-11 14:35:50.279412	2024-04-11 14:35:51.725717	t	\N
49	1	49	10	2024-04-11 14:35:51.138749	2024-04-11 14:35:51.754365	t	\N
25	1	25	10	2024-04-11 14:35:50.313454	2024-04-11 14:35:51.780891	t	\N
39	1	39	10	2024-04-11 14:35:50.789454	2024-04-11 14:35:51.806791	t	\N
26	1	26	10	2024-04-11 14:35:50.346501	2024-04-11 14:35:51.832593	t	\N
27	1	27	10	2024-04-11 14:35:50.378655	2024-04-11 14:35:51.859694	t	\N
28	1	28	10	2024-04-11 14:35:50.411011	2024-04-11 14:35:51.886121	t	\N
40	1	40	10	2024-04-11 14:35:50.826957	2024-04-11 14:35:51.912389	t	\N
29	1	29	10	2024-04-11 14:35:50.443181	2024-04-11 14:35:51.938438	t	\N
15	1	15	10	2024-04-11 14:35:49.951355	2024-04-11 14:35:51.964885	t	\N
16	1	16	10	2024-04-11 14:35:49.993994	2024-04-11 14:35:51.998668	t	\N
30	1	30	10	2024-04-11 14:35:50.480788	2024-04-11 14:35:52.027092	t	\N
17	1	17	10	2024-04-11 14:35:50.02816	2024-04-11 14:35:52.053911	t	\N
18	1	18	10	2024-04-11 14:35:50.061837	2024-04-11 14:35:52.080468	t	\N
31	1	31	10	2024-04-11 14:35:50.519783	2024-04-11 14:35:52.107607	t	\N
41	1	41	10	2024-04-11 14:35:50.868127	2024-04-11 14:35:52.133509	t	\N
32	1	32	10	2024-04-11 14:35:50.558378	2024-04-11 14:35:52.158517	t	\N
33	1	33	10	2024-04-11 14:35:50.590301	2024-04-11 14:35:52.182933	t	\N
50	1	50	10	2024-04-11 14:35:51.174167	2024-04-11 14:35:52.207804	t	\N
34	1	34	10	2024-04-11 14:35:50.622298	2024-04-11 14:35:52.233126	t	\N
42	1	42	10	2024-04-11 14:35:50.898434	2024-04-11 14:35:52.258466	t	\N
35	1	35	10	2024-04-11 14:35:50.653895	2024-04-11 14:35:52.283928	t	\N
36	1	36	10	2024-04-11 14:35:50.685474	2024-04-11 14:35:52.309726	t	\N
43	1	43	10	2024-04-11 14:35:50.934591	2024-04-11 14:35:52.341752	t	\N
44	1	44	10	2024-04-11 14:35:50.97121	2024-04-11 14:35:52.367807	t	\N
51	1	51	10	2024-04-11 14:35:51.204764	2024-04-11 14:35:52.393245	t	\N
45	1	45	10	2024-04-11 14:35:51.002647	2024-04-11 14:35:52.417914	t	\N
46	1	46	10	2024-04-11 14:35:51.038826	2024-04-11 14:35:52.468237	t	\N
14	1	14	10	2024-04-11 14:35:47.337982	2024-04-11 14:35:52.493378	t	\N
47	1	47	10	2024-04-11 14:35:51.073145	2024-04-11 14:35:52.518991	t	\N
48	1	48	10	2024-04-11 14:35:51.103246	2024-04-11 14:35:52.574523	t	\N
3	1	3	10	2024-04-11 14:35:46.688561	2024-04-11 14:35:52.602715	t	\N
4	1	4	10	2024-04-11 14:35:46.799815	2024-04-11 14:35:52.630652	t	\N
7	1	7	10	2024-04-11 14:35:46.969179	2024-04-11 14:35:52.66309	t	\N
8	1	8	10	2024-04-11 14:35:47.019683	2024-04-11 14:35:52.689763	t	\N
9	1	9	10	2024-04-11 14:35:47.071937	2024-04-11 14:35:52.715685	t	\N
10	1	10	10	2024-04-11 14:35:47.123185	2024-04-11 14:35:52.751597	t	\N
11	1	11	10	2024-04-11 14:35:47.17155	2024-04-11 14:35:52.784996	t	\N
12	1	12	10	2024-04-11 14:35:47.227182	2024-04-11 14:35:52.811761	t	\N
5	1	5	10	2024-04-11 14:35:46.851795	2024-04-11 14:35:52.837056	t	\N
13	1	13	9	2024-04-11 14:35:47.278781	2024-04-11 14:35:55.997443	t	\N
6	1	6	10	2024-04-11 14:35:46.915484	2024-04-11 14:35:57.239764	t	\N
\.


--
-- Data for Name: spree_stock_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_locations (id, name, created_at, updated_at, "default", address1, address2, city, state_id, state_name, country_id, zipcode, phone, active, backorderable_default, propagate_all_variants, admin_name, "position", restock_inventory, fulfillable, code, check_stock_on_transfer) FROM stdin;
1	default	2024-04-11 13:05:19.679877	2024-04-11 13:05:19.679877	f	\N	\N	\N	\N	\N	\N	\N	\N	t	t	t	\N	1	t	t	\N	t
\.


--
-- Data for Name: spree_stock_movements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stock_movements (id, stock_item_id, quantity, action, created_at, updated_at, originator_type, originator_id) FROM stdin;
1	19	10	\N	2024-04-11 14:35:51.418913	2024-04-11 14:35:51.418913	\N	\N
2	37	10	\N	2024-04-11 14:35:51.497418	2024-04-11 14:35:51.497418	\N	\N
3	20	10	\N	2024-04-11 14:35:51.523415	2024-04-11 14:35:51.523415	\N	\N
4	21	10	\N	2024-04-11 14:35:51.549687	2024-04-11 14:35:51.549687	\N	\N
5	1	10	\N	2024-04-11 14:35:51.576654	2024-04-11 14:35:51.576654	\N	\N
6	2	10	\N	2024-04-11 14:35:51.602479	2024-04-11 14:35:51.602479	\N	\N
7	22	10	\N	2024-04-11 14:35:51.635723	2024-04-11 14:35:51.635723	\N	\N
8	38	10	\N	2024-04-11 14:35:51.662438	2024-04-11 14:35:51.662438	\N	\N
9	23	10	\N	2024-04-11 14:35:51.688792	2024-04-11 14:35:51.688792	\N	\N
10	24	10	\N	2024-04-11 14:35:51.714799	2024-04-11 14:35:51.714799	\N	\N
11	49	10	\N	2024-04-11 14:35:51.743092	2024-04-11 14:35:51.743092	\N	\N
12	25	10	\N	2024-04-11 14:35:51.769646	2024-04-11 14:35:51.769646	\N	\N
13	39	10	\N	2024-04-11 14:35:51.796039	2024-04-11 14:35:51.796039	\N	\N
14	26	10	\N	2024-04-11 14:35:51.821842	2024-04-11 14:35:51.821842	\N	\N
15	27	10	\N	2024-04-11 14:35:51.848352	2024-04-11 14:35:51.848352	\N	\N
16	28	10	\N	2024-04-11 14:35:51.874976	2024-04-11 14:35:51.874976	\N	\N
17	40	10	\N	2024-04-11 14:35:51.901392	2024-04-11 14:35:51.901392	\N	\N
18	29	10	\N	2024-04-11 14:35:51.927345	2024-04-11 14:35:51.927345	\N	\N
19	15	10	\N	2024-04-11 14:35:51.95348	2024-04-11 14:35:51.95348	\N	\N
20	16	10	\N	2024-04-11 14:35:51.986638	2024-04-11 14:35:51.986638	\N	\N
21	30	10	\N	2024-04-11 14:35:52.015555	2024-04-11 14:35:52.015555	\N	\N
22	17	10	\N	2024-04-11 14:35:52.042571	2024-04-11 14:35:52.042571	\N	\N
23	18	10	\N	2024-04-11 14:35:52.069297	2024-04-11 14:35:52.069297	\N	\N
24	31	10	\N	2024-04-11 14:35:52.095889	2024-04-11 14:35:52.095889	\N	\N
25	41	10	\N	2024-04-11 14:35:52.122712	2024-04-11 14:35:52.122712	\N	\N
26	32	10	\N	2024-04-11 14:35:52.148248	2024-04-11 14:35:52.148248	\N	\N
27	33	10	\N	2024-04-11 14:35:52.172567	2024-04-11 14:35:52.172567	\N	\N
28	50	10	\N	2024-04-11 14:35:52.197222	2024-04-11 14:35:52.197222	\N	\N
29	34	10	\N	2024-04-11 14:35:52.22249	2024-04-11 14:35:52.22249	\N	\N
30	42	10	\N	2024-04-11 14:35:52.247633	2024-04-11 14:35:52.247633	\N	\N
31	35	10	\N	2024-04-11 14:35:52.27303	2024-04-11 14:35:52.27303	\N	\N
32	36	10	\N	2024-04-11 14:35:52.298787	2024-04-11 14:35:52.298787	\N	\N
33	43	10	\N	2024-04-11 14:35:52.33065	2024-04-11 14:35:52.33065	\N	\N
34	44	10	\N	2024-04-11 14:35:52.356835	2024-04-11 14:35:52.356835	\N	\N
35	51	10	\N	2024-04-11 14:35:52.382565	2024-04-11 14:35:52.382565	\N	\N
36	45	10	\N	2024-04-11 14:35:52.40739	2024-04-11 14:35:52.40739	\N	\N
37	13	10	\N	2024-04-11 14:35:52.432682	2024-04-11 14:35:52.432682	\N	\N
38	46	10	\N	2024-04-11 14:35:52.457857	2024-04-11 14:35:52.457857	\N	\N
39	14	10	\N	2024-04-11 14:35:52.48272	2024-04-11 14:35:52.48272	\N	\N
40	47	10	\N	2024-04-11 14:35:52.508305	2024-04-11 14:35:52.508305	\N	\N
41	6	10	\N	2024-04-11 14:35:52.534216	2024-04-11 14:35:52.534216	\N	\N
42	48	10	\N	2024-04-11 14:35:52.563052	2024-04-11 14:35:52.563052	\N	\N
43	3	10	\N	2024-04-11 14:35:52.590536	2024-04-11 14:35:52.590536	\N	\N
44	4	10	\N	2024-04-11 14:35:52.619005	2024-04-11 14:35:52.619005	\N	\N
45	7	10	\N	2024-04-11 14:35:52.646768	2024-04-11 14:35:52.646768	\N	\N
46	8	10	\N	2024-04-11 14:35:52.678561	2024-04-11 14:35:52.678561	\N	\N
47	9	10	\N	2024-04-11 14:35:52.704775	2024-04-11 14:35:52.704775	\N	\N
48	10	10	\N	2024-04-11 14:35:52.734282	2024-04-11 14:35:52.734282	\N	\N
49	11	10	\N	2024-04-11 14:35:52.771385	2024-04-11 14:35:52.771385	\N	\N
50	12	10	\N	2024-04-11 14:35:52.800475	2024-04-11 14:35:52.800475	\N	\N
51	5	10	\N	2024-04-11 14:35:52.826435	2024-04-11 14:35:52.826435	\N	\N
52	13	-1	\N	2024-04-11 14:35:55.986783	2024-04-11 14:35:55.986783	Spree::Shipment	1
53	6	-1	\N	2024-04-11 14:35:56.417414	2024-04-11 14:35:56.417414	Spree::Shipment	2
54	6	1	\N	2024-04-11 14:35:57.225782	2024-04-11 14:35:57.225782	Spree::CustomerReturn	1
\.


--
-- Data for Name: spree_store_credit_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_categories (id, name, created_at, updated_at) FROM stdin;
1	Gift Card	2024-04-11 13:05:04.831246	2024-04-11 13:05:04.831246
2	Reimbursement	2024-04-11 13:05:04.843122	2024-04-11 13:05:04.843122
\.


--
-- Data for Name: spree_store_credit_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_events (id, store_credit_id, action, amount, user_total_amount, authorization_code, deleted_at, originator_type, originator_id, created_at, updated_at, amount_remaining, store_credit_reason_id) FROM stdin;
\.


--
-- Data for Name: spree_store_credit_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_reasons (id, name, active, created_at, updated_at) FROM stdin;
1	Credit Given In Error	t	2024-04-11 13:05:04.858507	2024-04-11 13:05:04.858507
\.


--
-- Data for Name: spree_store_credit_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credit_types (id, name, priority, created_at, updated_at) FROM stdin;
1	Expiring	1	2024-04-11 13:05:04.780147	2024-04-11 13:05:04.780147
2	Non-expiring	2	2024-04-11 13:05:04.785209	2024-04-11 13:05:04.785209
\.


--
-- Data for Name: spree_store_credits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_credits (id, user_id, category_id, created_by_id, amount, amount_used, amount_authorized, currency, memo, deleted_at, created_at, updated_at, type_id, invalidated_at) FROM stdin;
\.


--
-- Data for Name: spree_store_payment_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_payment_methods (id, store_id, payment_method_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_store_shipping_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_store_shipping_methods (id, store_id, shipping_method_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_stores (id, name, url, meta_description, meta_keywords, seo_title, mail_from_address, default_currency, code, "default", created_at, updated_at, cart_tax_country_iso, available_locales, bcc_email) FROM stdin;
1	Sample Store	example.com	\N	\N	\N	store@example.com	\N	sample-store	t	2024-04-11 13:05:04.730409	2024-04-11 13:05:04.730409	\N	\N	\N
\.


--
-- Data for Name: spree_tax_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_tax_categories (id, name, description, is_default, deleted_at, created_at, updated_at, tax_code) FROM stdin;
1	Default	\N	f	\N	2024-04-11 14:35:46.211467	2024-04-11 14:35:46.211467	\N
\.


--
-- Data for Name: spree_tax_rate_tax_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_tax_rate_tax_categories (id, tax_category_id, tax_rate_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: spree_tax_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_tax_rates (id, amount, zone_id, included_in_price, created_at, updated_at, name, show_rate_in_label, deleted_at, starts_at, expires_at, level) FROM stdin;
1	0.05000	2	f	2024-04-11 14:35:46.292424	2024-04-11 14:35:46.292424	North America	t	\N	\N	\N	0
\.


--
-- Data for Name: spree_taxonomies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_taxonomies (id, name, created_at, updated_at, "position") FROM stdin;
1	texomonial	2024-04-11 10:37:12.909855	2024-04-12 09:28:23.369951	1
2	Categories	2024-04-11 14:35:47.377608	2024-04-11 14:35:57.313421	2
3	Brand	2024-04-11 14:35:47.429483	2024-04-11 14:35:57.313421	3
\.


--
-- Data for Name: spree_taxons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth) FROM stdin;
1	\N	0	texomonial	texomonial	1	1	4	\N	\N	\N	\N	\N	2024-04-11 10:37:12.9696	2024-04-12 09:28:23.365531	\N	\N	\N	0
7	3	2	Bags	categories/bags	2	16	17	\N	\N	\N	\N	\N	2024-04-11 14:35:47.555503	2024-04-11 14:35:56.010003	\N	\N	\N	1
12	4	0	Solidus	brand/solidus	3	22	23	\N	\N	\N	\N	\N	2024-04-11 14:35:47.911692	2024-04-11 14:35:57.312044	\N	\N	\N	1
4	\N	0	Brand	brand	3	21	26	\N	\N	\N	\N	\N	2024-04-11 14:35:47.43615	2024-04-11 14:35:57.312044	\N	\N	\N	0
3	\N	0	Categories	categories	2	5	20	\N	\N	\N	\N	\N	2024-04-11 14:35:47.408209	2024-04-11 14:35:57.312044	\N	\N	\N	0
6	3	1	Caps	categories/caps	2	14	15	\N	\N	\N	\N	\N	2024-04-11 14:35:47.50461	2024-04-11 14:35:57.312044	\N	\N	\N	1
10	5	0	Hoodie	categories/clothing/hoodie	2	9	10	\N	\N	\N	\N	\N	2024-04-11 14:35:47.780758	2024-04-11 14:35:55.041032	\N	\N	\N	2
9	5	0	Shirts	categories/clothing/shirts	2	7	8	\N	\N	\N	\N	\N	2024-04-11 14:35:47.694153	2024-04-11 14:35:55.140609	\N	\N	\N	2
5	3	0	Clothing	categories/clothing	2	6	13	\N	\N	\N	\N	\N	2024-04-11 14:35:47.467577	2024-04-11 14:35:55.140609	\N	\N	\N	1
2	1	0	New one	texomonial/new-node	1	2	3	\N	\N	\N	\N		2024-04-11 10:37:16.508645	2024-04-11 14:35:51.629804				1
8	3	3	Mugs	categories/mugs	2	18	19	\N	\N	\N	\N	\N	2024-04-11 14:35:47.616911	2024-04-11 14:35:55.243791	\N	\N	\N	1
13	4	0	Ruby	brand/ruby	3	24	25	\N	\N	\N	\N	\N	2024-04-11 14:35:48.036002	2024-04-11 14:35:55.366105	\N	\N	\N	1
11	5	0	T-Shirts	categories/clothing/t-shirts	2	11	12	\N	\N	\N	\N	\N	2024-04-11 14:35:47.846478	2024-04-11 14:35:53.699146	\N	\N	\N	2
\.


--
-- Data for Name: spree_unit_cancels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_unit_cancels (id, inventory_unit_id, reason, created_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_user_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_user_addresses (id, user_id, address_id, "default", archived, created_at, updated_at, default_billing) FROM stdin;
\.


--
-- Data for Name: spree_user_stock_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_user_stock_locations (id, user_id, stock_location_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_users (id, encrypted_password, password_salt, email, remember_token, persistence_token, reset_password_token, perishable_token, sign_in_count, failed_attempts, last_request_at, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, login, ship_address_id, bill_address_id, created_at, updated_at, spree_api_key, authentication_token, unlock_token, locked_at, remember_created_at, reset_password_sent_at, deleted_at, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email) FROM stdin;
2	92164f8fab9979765a70a60b7d93a3a3ea05e1fe9175e688b4b4bd2dd47be2a11977997974ed4b46d2e40b602566960dd7e228d3786cd3999262febdbcfdfaff	ydw3SzaixtXGAvMu7sLP	admin@gmail.com	R8F5zg5Zp2m1NPSXYFGy	\N	\N	\N	3	0	\N	2024-04-11 10:31:25.945736	2024-04-11 10:12:35.806725	::1	::1	admin@gmai.com	\N	\N	2024-04-11 09:15:42.924477	2024-04-11 10:31:25.945937	afcb60b4371fdc675f537b60ac22d0735144b6689efca906	\N	\N	\N	2024-04-11 10:31:25.936059	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: spree_variant_property_rule_conditions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_variant_property_rule_conditions (id, option_value_id, variant_property_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_variant_property_rule_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_variant_property_rule_values (id, value, "position", property_id, variant_property_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_variant_property_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_variant_property_rules (id, product_id, created_at, updated_at, apply_to_all) FROM stdin;
\.


--
-- Data for Name: spree_variants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, created_at, shipping_category_id) FROM stdin;
36	SOL-WM006	0.00	\N	\N	\N	\N	f	5	17.00	13	USD	t	\N	2024-04-11 14:35:54.802023	2024-04-11 14:35:50.674709	\N
37	SOL-SNC02	0.00	\N	\N	\N	\N	f	6	17.00	3	USD	t	\N	2024-04-11 14:35:51.509928	2024-04-11 14:35:50.710424	\N
25	SOL-LS04	0.00	\N	\N	\N	\N	f	4	17.00	9	USD	t	\N	2024-04-11 14:35:54.071191	2024-04-11 14:35:50.302035	\N
7	SOL-HD00	1.00	20.00	10.00	5.00	\N	t	7	27.00	1	USD	t	\N	2024-04-11 14:35:54.917776	2024-04-11 14:35:46.960172	\N
1	23	40.00	5.00	25.00	54.00	\N	t	1	45.00	1	USD	t	\N	2024-04-11 14:35:51.589382	2024-04-11 10:48:21.574743	\N
2	70	50.00	23.00	34.00	54.00	\N	t	2	400.00	1	USD	t	\N	2024-04-11 14:35:51.615591	2024-04-11 10:53:42.542332	\N
26	SOL-LS05	0.00	\N	\N	\N	\N	f	4	17.00	11	USD	t	\N	2024-04-11 14:35:54.153097	2024-04-11 14:35:50.335603	\N
38	SOL-SNC03	0.00	\N	\N	\N	\N	f	6	17.00	5	USD	t	\N	2024-04-11 14:35:51.674995	2024-04-11 14:35:50.747117	\N
8	RUB-HD01	1.00	20.00	10.00	5.00	\N	t	8	27.00	1	USD	t	\N	2024-04-11 14:35:54.974713	2024-04-11 14:35:47.011426	\N
27	SOL-LS06	0.00	\N	\N	\N	\N	f	4	17.00	13	USD	t	\N	2024-04-11 14:35:54.235335	2024-04-11 14:35:50.36781	\N
49	RUB-PL02	0.00	\N	\N	\N	\N	f	10	23.00	3	USD	t	\N	2024-04-11 14:35:51.755841	2024-04-11 14:35:51.128813	\N
9	RUB-HD00	0.80	20.00	10.00	5.00	\N	t	9	27.00	1	USD	t	\N	2024-04-11 14:35:55.025086	2024-04-11 14:35:47.063028	\N
39	SOL-SNC04	0.00	\N	\N	\N	\N	f	6	17.00	7	USD	t	\N	2024-04-11 14:35:51.80823	2024-04-11 14:35:50.778077	\N
10	RUB-PL01	0.50	20.00	10.00	5.00	\N	t	10	23.00	1	USD	t	\N	2024-04-11 14:35:55.127208	2024-04-11 14:35:47.114933	\N
11	SOL-MG01	1.00	5.00	5.00	5.00	\N	t	11	7.00	1	USD	t	\N	2024-04-11 14:35:55.175721	2024-04-11 14:35:47.163706	\N
12	RUB-MG01	1.00	5.00	5.00	5.00	\N	t	12	7.00	1	USD	t	\N	2024-04-11 14:35:55.234232	2024-04-11 14:35:47.218218	\N
40	SOL-HD02	0.00	\N	\N	\N	\N	f	7	27.00	3	USD	t	\N	2024-04-11 14:35:51.913836	2024-04-11 14:35:50.816504	\N
16	SOL-00002	0.00	\N	\N	\N	\N	f	3	17.00	5	USD	t	\N	2024-04-11 14:35:53.122019	2024-04-11 14:35:49.982471	\N
28	SOL-LS07	0.00	\N	\N	\N	\N	f	4	17.00	15	USD	t	\N	2024-04-11 14:35:54.317982	2024-04-11 14:35:50.399967	\N
14	RUB-TOT01	0.50	20.00	10.00	5.00	\N	t	14	17.00	1	USD	t	\N	2024-04-11 14:35:55.347678	2024-04-11 14:35:47.329255	\N
13	SOL-TOT01	0.50	20.00	10.00	5.00	\N	t	13	17.00	1	USD	t	\N	2024-04-11 14:35:55.999243	2024-04-11 14:35:47.27038	\N
41	SOL-HD03	0.00	\N	\N	\N	\N	f	7	27.00	5	USD	t	\N	2024-04-11 14:35:52.134912	2024-04-11 14:35:50.852897	\N
6	SOL-SNC01	0.50	5.00	5.00	5.00	\N	t	6	17.00	1	USD	t	\N	2024-04-11 14:35:57.241479	2024-04-11 14:35:46.89808	\N
50	RUB-PL03	0.00	\N	\N	\N	\N	f	10	23.00	5	USD	t	\N	2024-04-11 14:35:52.209217	2024-04-11 14:35:51.164103	\N
42	SOL-HD04	0.00	\N	\N	\N	\N	f	7	27.00	7	USD	t	\N	2024-04-11 14:35:52.25986	2024-04-11 14:35:50.888565	\N
43	RUB-HD02	0.00	\N	\N	\N	\N	f	8	27.00	3	USD	t	\N	2024-04-11 14:35:52.34313	2024-04-11 14:35:50.924611	\N
44	RUB-HD03	0.00	\N	\N	\N	\N	f	8	27.00	5	USD	t	\N	2024-04-11 14:35:52.369244	2024-04-11 14:35:50.960602	\N
51	RUB-PL04	0.00	\N	\N	\N	\N	f	10	23.00	7	USD	t	\N	2024-04-11 14:35:52.394663	2024-04-11 14:35:51.194965	\N
45	RUB-HD04	0.00	\N	\N	\N	\N	f	8	27.00	7	USD	t	\N	2024-04-11 14:35:52.41929	2024-04-11 14:35:50.992419	\N
46	RUB-HD05	0.00	\N	\N	\N	\N	f	9	27.00	3	USD	t	\N	2024-04-11 14:35:52.469541	2024-04-11 14:35:51.028652	\N
47	RUB-HD06	0.00	\N	\N	\N	\N	f	9	27.00	5	USD	t	\N	2024-04-11 14:35:52.520314	2024-04-11 14:35:51.063368	\N
48	RUB-HD07	0.00	\N	\N	\N	\N	f	9	27.00	7	USD	t	\N	2024-04-11 14:35:52.576022	2024-04-11 14:35:51.093259	\N
3	SOL-00001	0.50	20.00	10.00	5.00	\N	t	3	17.00	1	USD	t	\N	2024-04-11 14:35:52.604304	2024-04-11 14:35:46.647016	\N
4	SOL-LS00	0.50	20.00	10.00	5.00	\N	t	4	17.00	1	USD	t	\N	2024-04-11 14:35:52.632228	2024-04-11 14:35:46.79096	\N
5	SOL-WM00	0.50	20.00	10.00	5.00	\N	t	5	17.00	1	USD	t	\N	2024-04-11 14:35:52.838408	2024-04-11 14:35:46.843447	\N
17	SOL-00004	0.00	\N	\N	\N	\N	f	3	17.00	7	USD	t	\N	2024-04-11 14:35:53.265587	2024-04-11 14:35:50.016642	\N
15	SOL-00003	0.00	\N	\N	\N	\N	f	3	17.00	3	USD	t	\N	2024-04-11 14:35:53.005537	2024-04-11 14:35:49.937277	\N
29	SOL-LS08	0.00	\N	\N	\N	\N	f	4	17.00	17	USD	t	\N	2024-04-11 14:35:54.405206	2024-04-11 14:35:50.432418	\N
18	SOL-00005	0.00	\N	\N	\N	\N	f	3	17.00	9	USD	t	\N	2024-04-11 14:35:53.395351	2024-04-11 14:35:50.050456	\N
30	SOL-LS09	0.00	\N	\N	\N	\N	f	4	17.00	19	USD	t	\N	2024-04-11 14:35:54.49458	2024-04-11 14:35:50.464927	\N
19	SOL-00006	0.00	\N	\N	\N	\N	f	3	17.00	11	USD	t	\N	2024-04-11 14:35:53.520243	2024-04-11 14:35:50.084849	\N
31	SOL-WM001	0.00	\N	\N	\N	\N	f	5	17.00	3	USD	t	\N	2024-04-11 14:35:54.559293	2024-04-11 14:35:50.50846	\N
20	SOL-00007	0.00	\N	\N	\N	\N	f	3	17.00	13	USD	t	\N	2024-04-11 14:35:53.608944	2024-04-11 14:35:50.122915	\N
32	SOL-WM002	0.00	\N	\N	\N	\N	f	5	17.00	5	USD	t	\N	2024-04-11 14:35:54.616108	2024-04-11 14:35:50.547213	\N
21	SOL-0008	0.00	\N	\N	\N	\N	f	3	17.00	15	USD	t	\N	2024-04-11 14:35:53.690477	2024-04-11 14:35:50.156375	\N
33	SOL-WM003	0.00	\N	\N	\N	\N	f	5	17.00	7	USD	t	\N	2024-04-11 14:35:54.662233	2024-04-11 14:35:50.579723	\N
22	SOL-LS02	0.00	\N	\N	\N	\N	f	4	17.00	3	USD	t	\N	2024-04-11 14:35:53.79124	2024-04-11 14:35:50.194371	\N
34	SOL-WM004	0.00	\N	\N	\N	\N	f	5	17.00	9	USD	t	\N	2024-04-11 14:35:54.704316	2024-04-11 14:35:50.611614	\N
23	SOL-LS01	0.00	\N	\N	\N	\N	f	4	17.00	5	USD	t	\N	2024-04-11 14:35:53.888874	2024-04-11 14:35:50.234223	\N
35	SOL-WM005	0.00	\N	\N	\N	\N	f	5	17.00	11	USD	t	\N	2024-04-11 14:35:54.755129	2024-04-11 14:35:50.643235	\N
24	SOL-LS03	0.00	\N	\N	\N	\N	f	4	17.00	7	USD	t	\N	2024-04-11 14:35:53.988882	2024-04-11 14:35:50.268041	\N
\.


--
-- Data for Name: spree_wallet_payment_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_wallet_payment_sources (id, user_id, payment_source_type, payment_source_id, "default", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_zone_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_zone_members (id, zoneable_type, zoneable_id, zone_id, created_at, updated_at) FROM stdin;
1	Spree::Country	179	1	2024-04-11 13:05:19.844961	2024-04-11 13:05:19.844961
2	Spree::Country	70	1	2024-04-11 13:05:19.853703	2024-04-11 13:05:19.853703
3	Spree::Country	184	1	2024-04-11 13:05:19.861175	2024-04-11 13:05:19.861175
4	Spree::Country	189	1	2024-04-11 13:05:19.868351	2024-04-11 13:05:19.868351
5	Spree::Country	57	1	2024-04-11 13:05:19.87541	2024-04-11 13:05:19.87541
6	Spree::Country	75	1	2024-04-11 13:05:19.882669	2024-04-11 13:05:19.882669
7	Spree::Country	202	1	2024-04-11 13:05:19.889334	2024-04-11 13:05:19.889334
8	Spree::Country	100	1	2024-04-11 13:05:19.896727	2024-04-11 13:05:19.896727
9	Spree::Country	200	1	2024-04-11 13:05:19.903898	2024-04-11 13:05:19.903898
10	Spree::Country	102	1	2024-04-11 13:05:19.910529	2024-04-11 13:05:19.910529
11	Spree::Country	12	1	2024-04-11 13:05:19.917268	2024-04-11 13:05:19.917268
12	Spree::Country	68	1	2024-04-11 13:05:19.924122	2024-04-11 13:05:19.924122
13	Spree::Country	110	1	2024-04-11 13:05:19.931412	2024-04-11 13:05:19.931412
14	Spree::Country	20	1	2024-04-11 13:05:19.938313	2024-04-11 13:05:19.938313
15	Spree::Country	197	1	2024-04-11 13:05:19.945299	2024-04-11 13:05:19.945299
16	Spree::Country	135	1	2024-04-11 13:05:19.951922	2024-04-11 13:05:19.951922
17	Spree::Country	22	1	2024-04-11 13:05:19.959927	2024-04-11 13:05:19.959927
18	Spree::Country	77	1	2024-04-11 13:05:19.967017	2024-04-11 13:05:19.967017
19	Spree::Country	133	1	2024-04-11 13:05:19.975083	2024-04-11 13:05:19.975083
20	Spree::Country	55	1	2024-04-11 13:05:19.981981	2024-04-11 13:05:19.981981
21	Spree::Country	134	1	2024-04-11 13:05:19.988817	2024-04-11 13:05:19.988817
22	Spree::Country	153	1	2024-04-11 13:05:19.996474	2024-04-11 13:05:19.996474
23	Spree::Country	59	1	2024-04-11 13:05:20.003411	2024-04-11 13:05:20.003411
24	Spree::Country	166	1	2024-04-11 13:05:20.010286	2024-04-11 13:05:20.010286
25	Spree::Country	64	1	2024-04-11 13:05:20.017075	2024-04-11 13:05:20.017075
26	Spree::Country	98	1	2024-04-11 13:05:20.024122	2024-04-11 13:05:20.024122
27	Spree::Country	56	1	2024-04-11 13:05:20.030788	2024-04-11 13:05:20.030788
28	Spree::Country	89	1	2024-04-11 13:05:20.037267	2024-04-11 13:05:20.037267
29	Spree::Country	233	2	2024-04-11 13:05:20.043855	2024-04-11 13:05:20.043855
30	Spree::Country	38	2	2024-04-11 13:05:20.050521	2024-04-11 13:05:20.050521
\.


--
-- Data for Name: spree_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spree_zones (id, name, description, zone_members_count, created_at, updated_at) FROM stdin;
1	EU_VAT	Countries that make up the EU VAT zone.	28	2024-04-11 13:05:19.817784	2024-04-11 13:05:19.817784
2	North America	USA + Canada	2	2024-04-11 13:05:19.829131	2024-04-11 13:05:19.829131
\.


--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.action_mailbox_inbound_emails_id_seq', 1, false);


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 1, false);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 80, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 80, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 29, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 3, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 14, true);


--
-- Name: paypal_commerce_platform_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paypal_commerce_platform_sources_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 4, true);


--
-- Name: spree_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_addresses_id_seq', 2, true);


--
-- Name: spree_adjustment_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_adjustment_reasons_id_seq', 1, false);


--
-- Name: spree_adjustments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_adjustments_id_seq', 4, true);


--
-- Name: spree_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_assets_id_seq', 50, true);


--
-- Name: spree_calculators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_calculators_id_seq', 6, true);


--
-- Name: spree_cartons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_cartons_id_seq', 1, true);


--
-- Name: spree_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_countries_id_seq', 249, true);


--
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_credit_cards_id_seq', 1, true);


--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_customer_returns_id_seq', 1, true);


--
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_inventory_units_id_seq', 2, true);


--
-- Name: spree_line_item_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_line_item_actions_id_seq', 1, false);


--
-- Name: spree_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_line_items_id_seq', 2, true);


--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_log_entries_id_seq', 1, true);


--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_type_prototypes_id_seq', 1, false);


--
-- Name: spree_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_types_id_seq', 3, true);


--
-- Name: spree_option_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_values_id_seq', 10, true);


--
-- Name: spree_option_values_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_option_values_variants_id_seq', 59, true);


--
-- Name: spree_order_mutexes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_order_mutexes_id_seq', 1, false);


--
-- Name: spree_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_orders_id_seq', 3, true);


--
-- Name: spree_orders_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_orders_promotions_id_seq', 1, false);


--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_payment_capture_events_id_seq', 1, false);


--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_payment_methods_id_seq', 3, true);


--
-- Name: spree_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_payments_id_seq', 5, true);


--
-- Name: spree_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_preferences_id_seq', 1, false);


--
-- Name: spree_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_prices_id_seq', 63, true);


--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_product_option_types_id_seq', 19, true);


--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_product_promotion_rules_id_seq', 1, false);


--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_product_properties_id_seq', 71, true);


--
-- Name: spree_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_products_id_seq', 14, true);


--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_products_taxons_id_seq', 26, true);


--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_action_line_items_id_seq', 1, false);


--
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_actions_id_seq', 1, false);


--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_categories_id_seq', 3, true);


--
-- Name: spree_promotion_code_batches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_code_batches_id_seq', 1, false);


--
-- Name: spree_promotion_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_codes_id_seq', 3, true);


--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rule_taxons_id_seq', 1, false);


--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rules_id_seq', 2, true);


--
-- Name: spree_promotion_rules_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rules_stores_id_seq', 1, false);


--
-- Name: spree_promotion_rules_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotion_rules_users_id_seq', 1, false);


--
-- Name: spree_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_promotions_id_seq', 3, true);


--
-- Name: spree_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_properties_id_seq', 14, true);


--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_property_prototypes_id_seq', 1, false);


--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_prototype_taxons_id_seq', 1, false);


--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_prototypes_id_seq', 1, false);


--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_refund_reasons_id_seq', 1, true);


--
-- Name: spree_refunds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_refunds_id_seq', 1, true);


--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_reimbursement_credits_id_seq', 1, false);


--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_reimbursement_types_id_seq', 2, true);


--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_reimbursements_id_seq', 1, true);


--
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_return_authorizations_id_seq', 1, true);


--
-- Name: spree_return_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_return_items_id_seq', 1, true);


--
-- Name: spree_return_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_return_reasons_id_seq', 9, true);


--
-- Name: spree_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_roles_id_seq', 6, true);


--
-- Name: spree_roles_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_roles_users_id_seq', 2, true);


--
-- Name: spree_shipments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipments_id_seq', 2, true);


--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_categories_id_seq', 3, true);


--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_method_categories_id_seq', 5, true);


--
-- Name: spree_shipping_method_stock_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_method_stock_locations_id_seq', 1, false);


--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_method_zones_id_seq', 5, true);


--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_methods_id_seq', 5, true);


--
-- Name: spree_shipping_rate_taxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_rate_taxes_id_seq', 6, true);


--
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_shipping_rates_id_seq', 6, true);


--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_state_changes_id_seq', 22, true);


--
-- Name: spree_states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_states_id_seq', 3686, true);


--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_stock_items_id_seq', 51, true);


--
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_stock_locations_id_seq', 1, true);


--
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_stock_movements_id_seq', 54, true);


--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_categories_id_seq', 2, true);


--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_events_id_seq', 1, false);


--
-- Name: spree_store_credit_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_reasons_id_seq', 1, true);


--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credit_types_id_seq', 2, true);


--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_credits_id_seq', 1, false);


--
-- Name: spree_store_payment_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_payment_methods_id_seq', 1, false);


--
-- Name: spree_store_shipping_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_store_shipping_methods_id_seq', 1, false);


--
-- Name: spree_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_stores_id_seq', 1, true);


--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_tax_categories_id_seq', 1, true);


--
-- Name: spree_tax_rate_tax_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_tax_rate_tax_categories_id_seq', 1, true);


--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_tax_rates_id_seq', 1, true);


--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_taxonomies_id_seq', 3, true);


--
-- Name: spree_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_taxons_id_seq', 13, true);


--
-- Name: spree_unit_cancels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_unit_cancels_id_seq', 1, false);


--
-- Name: spree_user_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_user_addresses_id_seq', 1, false);


--
-- Name: spree_user_stock_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_user_stock_locations_id_seq', 1, false);


--
-- Name: spree_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_users_id_seq', 2, true);


--
-- Name: spree_variant_property_rule_conditions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_variant_property_rule_conditions_id_seq', 1, false);


--
-- Name: spree_variant_property_rule_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_variant_property_rule_values_id_seq', 1, false);


--
-- Name: spree_variant_property_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_variant_property_rules_id_seq', 1, false);


--
-- Name: spree_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_variants_id_seq', 51, true);


--
-- Name: spree_wallet_payment_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_wallet_payment_sources_id_seq', 1, false);


--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_zone_members_id_seq', 30, true);


--
-- Name: spree_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spree_zones_id_seq', 2, true);


--
-- Name: action_mailbox_inbound_emails action_mailbox_inbound_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails
    ADD CONSTRAINT action_mailbox_inbound_emails_pkey PRIMARY KEY (id);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: paypal_commerce_platform_sources paypal_commerce_platform_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paypal_commerce_platform_sources
    ADD CONSTRAINT paypal_commerce_platform_sources_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: spree_addresses spree_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_addresses
    ADD CONSTRAINT spree_addresses_pkey PRIMARY KEY (id);


--
-- Name: spree_adjustment_reasons spree_adjustment_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_adjustment_reasons
    ADD CONSTRAINT spree_adjustment_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_adjustments spree_adjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_adjustments
    ADD CONSTRAINT spree_adjustments_pkey PRIMARY KEY (id);


--
-- Name: spree_assets spree_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_assets
    ADD CONSTRAINT spree_assets_pkey PRIMARY KEY (id);


--
-- Name: spree_calculators spree_calculators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_calculators
    ADD CONSTRAINT spree_calculators_pkey PRIMARY KEY (id);


--
-- Name: spree_cartons spree_cartons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_cartons
    ADD CONSTRAINT spree_cartons_pkey PRIMARY KEY (id);


--
-- Name: spree_countries spree_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_countries
    ADD CONSTRAINT spree_countries_pkey PRIMARY KEY (id);


--
-- Name: spree_credit_cards spree_credit_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_credit_cards
    ADD CONSTRAINT spree_credit_cards_pkey PRIMARY KEY (id);


--
-- Name: spree_customer_returns spree_customer_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_customer_returns
    ADD CONSTRAINT spree_customer_returns_pkey PRIMARY KEY (id);


--
-- Name: spree_inventory_units spree_inventory_units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_inventory_units
    ADD CONSTRAINT spree_inventory_units_pkey PRIMARY KEY (id);


--
-- Name: spree_line_item_actions spree_line_item_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_line_item_actions
    ADD CONSTRAINT spree_line_item_actions_pkey PRIMARY KEY (id);


--
-- Name: spree_line_items spree_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_line_items
    ADD CONSTRAINT spree_line_items_pkey PRIMARY KEY (id);


--
-- Name: spree_log_entries spree_log_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_log_entries
    ADD CONSTRAINT spree_log_entries_pkey PRIMARY KEY (id);


--
-- Name: spree_option_type_prototypes spree_option_type_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_type_prototypes
    ADD CONSTRAINT spree_option_type_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_option_types spree_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_types
    ADD CONSTRAINT spree_option_types_pkey PRIMARY KEY (id);


--
-- Name: spree_option_values spree_option_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values
    ADD CONSTRAINT spree_option_values_pkey PRIMARY KEY (id);


--
-- Name: spree_option_values_variants spree_option_values_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_option_values_variants
    ADD CONSTRAINT spree_option_values_variants_pkey PRIMARY KEY (id);


--
-- Name: spree_order_mutexes spree_order_mutexes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_order_mutexes
    ADD CONSTRAINT spree_order_mutexes_pkey PRIMARY KEY (id);


--
-- Name: spree_orders spree_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders
    ADD CONSTRAINT spree_orders_pkey PRIMARY KEY (id);


--
-- Name: spree_orders_promotions spree_orders_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_orders_promotions
    ADD CONSTRAINT spree_orders_promotions_pkey PRIMARY KEY (id);


--
-- Name: spree_payment_capture_events spree_payment_capture_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_capture_events
    ADD CONSTRAINT spree_payment_capture_events_pkey PRIMARY KEY (id);


--
-- Name: spree_payment_methods spree_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payment_methods
    ADD CONSTRAINT spree_payment_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_payments spree_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_payments
    ADD CONSTRAINT spree_payments_pkey PRIMARY KEY (id);


--
-- Name: spree_preferences spree_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_preferences
    ADD CONSTRAINT spree_preferences_pkey PRIMARY KEY (id);


--
-- Name: spree_prices spree_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prices
    ADD CONSTRAINT spree_prices_pkey PRIMARY KEY (id);


--
-- Name: spree_product_option_types spree_product_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_option_types
    ADD CONSTRAINT spree_product_option_types_pkey PRIMARY KEY (id);


--
-- Name: spree_product_promotion_rules spree_product_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_promotion_rules
    ADD CONSTRAINT spree_product_promotion_rules_pkey PRIMARY KEY (id);


--
-- Name: spree_product_properties spree_product_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_product_properties
    ADD CONSTRAINT spree_product_properties_pkey PRIMARY KEY (id);


--
-- Name: spree_products spree_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products
    ADD CONSTRAINT spree_products_pkey PRIMARY KEY (id);


--
-- Name: spree_products_taxons spree_products_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_products_taxons
    ADD CONSTRAINT spree_products_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_action_line_items spree_promotion_action_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_action_line_items
    ADD CONSTRAINT spree_promotion_action_line_items_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_actions spree_promotion_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_actions
    ADD CONSTRAINT spree_promotion_actions_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_categories spree_promotion_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_categories
    ADD CONSTRAINT spree_promotion_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_code_batches spree_promotion_code_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_code_batches
    ADD CONSTRAINT spree_promotion_code_batches_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_codes spree_promotion_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_codes
    ADD CONSTRAINT spree_promotion_codes_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rule_taxons spree_promotion_rule_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons
    ADD CONSTRAINT spree_promotion_rule_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rules spree_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules
    ADD CONSTRAINT spree_promotion_rules_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rules_stores spree_promotion_rules_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules_stores
    ADD CONSTRAINT spree_promotion_rules_stores_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rules_users spree_promotion_rules_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_rules_users
    ADD CONSTRAINT spree_promotion_rules_users_pkey PRIMARY KEY (id);


--
-- Name: spree_promotions spree_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotions
    ADD CONSTRAINT spree_promotions_pkey PRIMARY KEY (id);


--
-- Name: spree_properties spree_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_properties
    ADD CONSTRAINT spree_properties_pkey PRIMARY KEY (id);


--
-- Name: spree_property_prototypes spree_property_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_property_prototypes
    ADD CONSTRAINT spree_property_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_prototype_taxons spree_prototype_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototype_taxons
    ADD CONSTRAINT spree_prototype_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_prototypes spree_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_prototypes
    ADD CONSTRAINT spree_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_refund_reasons spree_refund_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refund_reasons
    ADD CONSTRAINT spree_refund_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_refunds spree_refunds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_refunds
    ADD CONSTRAINT spree_refunds_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursement_credits spree_reimbursement_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_credits
    ADD CONSTRAINT spree_reimbursement_credits_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursement_types spree_reimbursement_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursement_types
    ADD CONSTRAINT spree_reimbursement_types_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursements spree_reimbursements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_reimbursements
    ADD CONSTRAINT spree_reimbursements_pkey PRIMARY KEY (id);


--
-- Name: spree_return_authorizations spree_return_authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_authorizations
    ADD CONSTRAINT spree_return_authorizations_pkey PRIMARY KEY (id);


--
-- Name: spree_return_items spree_return_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_items
    ADD CONSTRAINT spree_return_items_pkey PRIMARY KEY (id);


--
-- Name: spree_return_reasons spree_return_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_return_reasons
    ADD CONSTRAINT spree_return_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_roles spree_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles
    ADD CONSTRAINT spree_roles_pkey PRIMARY KEY (id);


--
-- Name: spree_roles_users spree_roles_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_roles_users
    ADD CONSTRAINT spree_roles_users_pkey PRIMARY KEY (id);


--
-- Name: spree_shipments spree_shipments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipments
    ADD CONSTRAINT spree_shipments_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_categories spree_shipping_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_categories
    ADD CONSTRAINT spree_shipping_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_method_categories spree_shipping_method_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_categories
    ADD CONSTRAINT spree_shipping_method_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_method_stock_locations spree_shipping_method_stock_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_stock_locations
    ADD CONSTRAINT spree_shipping_method_stock_locations_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_method_zones spree_shipping_method_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_method_zones
    ADD CONSTRAINT spree_shipping_method_zones_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_methods spree_shipping_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_methods
    ADD CONSTRAINT spree_shipping_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_rate_taxes spree_shipping_rate_taxes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_rate_taxes
    ADD CONSTRAINT spree_shipping_rate_taxes_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_rates spree_shipping_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_shipping_rates
    ADD CONSTRAINT spree_shipping_rates_pkey PRIMARY KEY (id);


--
-- Name: spree_state_changes spree_state_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_state_changes
    ADD CONSTRAINT spree_state_changes_pkey PRIMARY KEY (id);


--
-- Name: spree_states spree_states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_states
    ADD CONSTRAINT spree_states_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_items spree_stock_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_items
    ADD CONSTRAINT spree_stock_items_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_locations spree_stock_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_locations
    ADD CONSTRAINT spree_stock_locations_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_movements spree_stock_movements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stock_movements
    ADD CONSTRAINT spree_stock_movements_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_categories spree_store_credit_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_categories
    ADD CONSTRAINT spree_store_credit_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_events spree_store_credit_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_events
    ADD CONSTRAINT spree_store_credit_events_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_reasons spree_store_credit_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_reasons
    ADD CONSTRAINT spree_store_credit_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_types spree_store_credit_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credit_types
    ADD CONSTRAINT spree_store_credit_types_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credits spree_store_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_credits
    ADD CONSTRAINT spree_store_credits_pkey PRIMARY KEY (id);


--
-- Name: spree_store_payment_methods spree_store_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_payment_methods
    ADD CONSTRAINT spree_store_payment_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_store_shipping_methods spree_store_shipping_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_store_shipping_methods
    ADD CONSTRAINT spree_store_shipping_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_stores spree_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_stores
    ADD CONSTRAINT spree_stores_pkey PRIMARY KEY (id);


--
-- Name: spree_tax_categories spree_tax_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_categories
    ADD CONSTRAINT spree_tax_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_tax_rate_tax_categories spree_tax_rate_tax_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rate_tax_categories
    ADD CONSTRAINT spree_tax_rate_tax_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_tax_rates spree_tax_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rates
    ADD CONSTRAINT spree_tax_rates_pkey PRIMARY KEY (id);


--
-- Name: spree_taxonomies spree_taxonomies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxonomies
    ADD CONSTRAINT spree_taxonomies_pkey PRIMARY KEY (id);


--
-- Name: spree_taxons spree_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_taxons
    ADD CONSTRAINT spree_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_unit_cancels spree_unit_cancels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_unit_cancels
    ADD CONSTRAINT spree_unit_cancels_pkey PRIMARY KEY (id);


--
-- Name: spree_user_addresses spree_user_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_user_addresses
    ADD CONSTRAINT spree_user_addresses_pkey PRIMARY KEY (id);


--
-- Name: spree_user_stock_locations spree_user_stock_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_user_stock_locations
    ADD CONSTRAINT spree_user_stock_locations_pkey PRIMARY KEY (id);


--
-- Name: spree_users spree_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_users
    ADD CONSTRAINT spree_users_pkey PRIMARY KEY (id);


--
-- Name: spree_variant_property_rule_conditions spree_variant_property_rule_conditions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rule_conditions
    ADD CONSTRAINT spree_variant_property_rule_conditions_pkey PRIMARY KEY (id);


--
-- Name: spree_variant_property_rule_values spree_variant_property_rule_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rule_values
    ADD CONSTRAINT spree_variant_property_rule_values_pkey PRIMARY KEY (id);


--
-- Name: spree_variant_property_rules spree_variant_property_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variant_property_rules
    ADD CONSTRAINT spree_variant_property_rules_pkey PRIMARY KEY (id);


--
-- Name: spree_variants spree_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_variants
    ADD CONSTRAINT spree_variants_pkey PRIMARY KEY (id);


--
-- Name: spree_wallet_payment_sources spree_wallet_payment_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_wallet_payment_sources
    ADD CONSTRAINT spree_wallet_payment_sources_pkey PRIMARY KEY (id);


--
-- Name: spree_zone_members spree_zone_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zone_members
    ADD CONSTRAINT spree_zone_members_pkey PRIMARY KEY (id);


--
-- Name: spree_zones spree_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_zones
    ADD CONSTRAINT spree_zones_pkey PRIMARY KEY (id);


--
-- Name: email_idx_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX email_idx_unique ON public.spree_users USING btree (email);


--
-- Name: index_action_mailbox_inbound_emails_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_action_mailbox_inbound_emails_uniqueness ON public.action_mailbox_inbound_emails USING btree (message_id, message_checksum);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_addresses_on_firstname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_addresses_on_firstname ON public.spree_addresses USING btree (firstname);


--
-- Name: index_addresses_on_lastname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_addresses_on_lastname ON public.spree_addresses USING btree (lastname);


--
-- Name: index_adjustments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_adjustments_on_order_id ON public.spree_adjustments USING btree (adjustable_id);


--
-- Name: index_assets_on_viewable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_assets_on_viewable_id ON public.spree_assets USING btree (viewable_id);


--
-- Name: index_assets_on_viewable_type_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_assets_on_viewable_type_and_type ON public.spree_assets USING btree (viewable_type, type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_id);


--
-- Name: index_friendly_id_slugs_on_sluggable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type ON public.friendly_id_slugs USING btree (sluggable_type);


--
-- Name: index_inventory_units_on_shipment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inventory_units_on_shipment_id ON public.spree_inventory_units USING btree (shipment_id);


--
-- Name: index_inventory_units_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inventory_units_on_variant_id ON public.spree_inventory_units USING btree (variant_id);


--
-- Name: index_option_values_variants_on_variant_id_and_option_value_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_option_values_variants_on_variant_id_and_option_value_id ON public.spree_option_values_variants USING btree (variant_id, option_value_id);


--
-- Name: index_product_properties_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_properties_on_product_id ON public.spree_product_properties USING btree (product_id);


--
-- Name: index_products_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_category_id ON public.products USING btree (category_id);


--
-- Name: index_products_promotion_rules_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_promotion_rules_on_product_id ON public.spree_product_promotion_rules USING btree (product_id);


--
-- Name: index_products_promotion_rules_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_promotion_rules_on_promotion_rule_id ON public.spree_product_promotion_rules USING btree (promotion_rule_id);


--
-- Name: index_promotion_rules_on_product_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_promotion_rules_on_product_group_id ON public.spree_promotion_rules USING btree (product_group_id);


--
-- Name: index_promotion_rules_users_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_promotion_rules_users_on_promotion_rule_id ON public.spree_promotion_rules_users USING btree (promotion_rule_id);


--
-- Name: index_promotion_rules_users_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_promotion_rules_users_on_user_id ON public.spree_promotion_rules_users USING btree (user_id);


--
-- Name: index_refunds_on_refund_reason_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_refunds_on_refund_reason_id ON public.spree_refunds USING btree (refund_reason_id);


--
-- Name: index_return_authorizations_on_return_authorization_reason_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_return_authorizations_on_return_authorization_reason_id ON public.spree_return_authorizations USING btree (return_reason_id);


--
-- Name: index_return_items_on_customer_return_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_return_items_on_customer_return_id ON public.spree_return_items USING btree (customer_return_id);


--
-- Name: index_shipments_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_shipments_on_number ON public.spree_shipments USING btree (number);


--
-- Name: index_spree_addresses_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_addresses_on_country_id ON public.spree_addresses USING btree (country_id);


--
-- Name: index_spree_addresses_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_addresses_on_name ON public.spree_addresses USING btree (name);


--
-- Name: index_spree_addresses_on_state_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_addresses_on_state_id ON public.spree_addresses USING btree (state_id);


--
-- Name: index_spree_adjustment_reasons_on_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustment_reasons_on_active ON public.spree_adjustment_reasons USING btree (active);


--
-- Name: index_spree_adjustment_reasons_on_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustment_reasons_on_code ON public.spree_adjustment_reasons USING btree (code);


--
-- Name: index_spree_adjustments_on_adjustable_id_and_adjustable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_adjustable_id_and_adjustable_type ON public.spree_adjustments USING btree (adjustable_id, adjustable_type);


--
-- Name: index_spree_adjustments_on_eligible; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_eligible ON public.spree_adjustments USING btree (eligible);


--
-- Name: index_spree_adjustments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_order_id ON public.spree_adjustments USING btree (order_id);


--
-- Name: index_spree_adjustments_on_promotion_code_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_promotion_code_id ON public.spree_adjustments USING btree (promotion_code_id);


--
-- Name: index_spree_adjustments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_adjustments_on_source_id_and_source_type ON public.spree_adjustments USING btree (source_id, source_type);


--
-- Name: index_spree_calculators_on_calculable_id_and_calculable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_calculators_on_calculable_id_and_calculable_type ON public.spree_calculators USING btree (calculable_id, calculable_type);


--
-- Name: index_spree_calculators_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_calculators_on_id_and_type ON public.spree_calculators USING btree (id, type);


--
-- Name: index_spree_cartons_on_external_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_cartons_on_external_number ON public.spree_cartons USING btree (external_number);


--
-- Name: index_spree_cartons_on_imported_from_shipment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_cartons_on_imported_from_shipment_id ON public.spree_cartons USING btree (imported_from_shipment_id);


--
-- Name: index_spree_cartons_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_cartons_on_number ON public.spree_cartons USING btree (number);


--
-- Name: index_spree_cartons_on_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_cartons_on_stock_location_id ON public.spree_cartons USING btree (stock_location_id);


--
-- Name: index_spree_countries_on_iso; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_countries_on_iso ON public.spree_countries USING btree (iso);


--
-- Name: index_spree_credit_cards_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_credit_cards_on_payment_method_id ON public.spree_credit_cards USING btree (payment_method_id);


--
-- Name: index_spree_credit_cards_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_credit_cards_on_user_id ON public.spree_credit_cards USING btree (user_id);


--
-- Name: index_spree_inventory_units_on_carton_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_inventory_units_on_carton_id ON public.spree_inventory_units USING btree (carton_id);


--
-- Name: index_spree_inventory_units_on_line_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_inventory_units_on_line_item_id ON public.spree_inventory_units USING btree (line_item_id);


--
-- Name: index_spree_line_item_actions_on_action_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_line_item_actions_on_action_id ON public.spree_line_item_actions USING btree (action_id);


--
-- Name: index_spree_line_item_actions_on_line_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_line_item_actions_on_line_item_id ON public.spree_line_item_actions USING btree (line_item_id);


--
-- Name: index_spree_line_items_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_line_items_on_order_id ON public.spree_line_items USING btree (order_id);


--
-- Name: index_spree_line_items_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_line_items_on_variant_id ON public.spree_line_items USING btree (variant_id);


--
-- Name: index_spree_log_entries_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_log_entries_on_source_id_and_source_type ON public.spree_log_entries USING btree (source_id, source_type);


--
-- Name: index_spree_option_types_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_option_types_on_position ON public.spree_option_types USING btree ("position");


--
-- Name: index_spree_option_values_on_option_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_option_values_on_option_type_id ON public.spree_option_values USING btree (option_type_id);


--
-- Name: index_spree_option_values_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_option_values_on_position ON public.spree_option_values USING btree ("position");


--
-- Name: index_spree_option_values_variants_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_option_values_variants_on_variant_id ON public.spree_option_values_variants USING btree (variant_id);


--
-- Name: index_spree_order_mutexes_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_order_mutexes_on_order_id ON public.spree_order_mutexes USING btree (order_id);


--
-- Name: index_spree_orders_on_approver_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_approver_id ON public.spree_orders USING btree (approver_id);


--
-- Name: index_spree_orders_on_bill_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_bill_address_id ON public.spree_orders USING btree (bill_address_id);


--
-- Name: index_spree_orders_on_completed_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_completed_at ON public.spree_orders USING btree (completed_at);


--
-- Name: index_spree_orders_on_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_created_by_id ON public.spree_orders USING btree (created_by_id);


--
-- Name: index_spree_orders_on_guest_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_guest_token ON public.spree_orders USING btree (guest_token);


--
-- Name: index_spree_orders_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_number ON public.spree_orders USING btree (number);


--
-- Name: index_spree_orders_on_ship_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_ship_address_id ON public.spree_orders USING btree (ship_address_id);


--
-- Name: index_spree_orders_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_user_id ON public.spree_orders USING btree (user_id);


--
-- Name: index_spree_orders_on_user_id_and_created_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_on_user_id_and_created_by_id ON public.spree_orders USING btree (user_id, created_by_id);


--
-- Name: index_spree_orders_promotions_on_order_id_and_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_promotions_on_order_id_and_promotion_id ON public.spree_orders_promotions USING btree (order_id, promotion_id);


--
-- Name: index_spree_orders_promotions_on_promotion_code_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_orders_promotions_on_promotion_code_id ON public.spree_orders_promotions USING btree (promotion_code_id);


--
-- Name: index_spree_payment_capture_events_on_payment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payment_capture_events_on_payment_id ON public.spree_payment_capture_events USING btree (payment_id);


--
-- Name: index_spree_payment_methods_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payment_methods_on_id_and_type ON public.spree_payment_methods USING btree (id, type);


--
-- Name: index_spree_payments_on_number; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_payments_on_number ON public.spree_payments USING btree (number);


--
-- Name: index_spree_payments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payments_on_order_id ON public.spree_payments USING btree (order_id);


--
-- Name: index_spree_payments_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payments_on_payment_method_id ON public.spree_payments USING btree (payment_method_id);


--
-- Name: index_spree_payments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_payments_on_source_id_and_source_type ON public.spree_payments USING btree (source_id, source_type);


--
-- Name: index_spree_preferences_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_preferences_on_key ON public.spree_preferences USING btree (key);


--
-- Name: index_spree_prices_on_country_iso; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_prices_on_country_iso ON public.spree_prices USING btree (country_iso);


--
-- Name: index_spree_prices_on_variant_id_and_currency; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_prices_on_variant_id_and_currency ON public.spree_prices USING btree (variant_id, currency);


--
-- Name: index_spree_product_option_types_on_option_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_option_types_on_option_type_id ON public.spree_product_option_types USING btree (option_type_id);


--
-- Name: index_spree_product_option_types_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_option_types_on_position ON public.spree_product_option_types USING btree ("position");


--
-- Name: index_spree_product_option_types_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_option_types_on_product_id ON public.spree_product_option_types USING btree (product_id);


--
-- Name: index_spree_product_properties_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_properties_on_position ON public.spree_product_properties USING btree ("position");


--
-- Name: index_spree_product_properties_on_property_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_product_properties_on_property_id ON public.spree_product_properties USING btree (property_id);


--
-- Name: index_spree_products_on_available_on; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_on_available_on ON public.spree_products USING btree (available_on);


--
-- Name: index_spree_products_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_on_deleted_at ON public.spree_products USING btree (deleted_at);


--
-- Name: index_spree_products_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_on_name ON public.spree_products USING btree (name);


--
-- Name: index_spree_products_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_products_on_slug ON public.spree_products USING btree (slug);


--
-- Name: index_spree_products_taxons_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_taxons_on_position ON public.spree_products_taxons USING btree ("position");


--
-- Name: index_spree_products_taxons_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_taxons_on_product_id ON public.spree_products_taxons USING btree (product_id);


--
-- Name: index_spree_products_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_products_taxons_on_taxon_id ON public.spree_products_taxons USING btree (taxon_id);


--
-- Name: index_spree_promotion_action_line_items_on_promotion_action_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_action_line_items_on_promotion_action_id ON public.spree_promotion_action_line_items USING btree (promotion_action_id);


--
-- Name: index_spree_promotion_action_line_items_on_variant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_action_line_items_on_variant_id ON public.spree_promotion_action_line_items USING btree (variant_id);


--
-- Name: index_spree_promotion_actions_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_actions_on_deleted_at ON public.spree_promotion_actions USING btree (deleted_at);


--
-- Name: index_spree_promotion_actions_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_actions_on_id_and_type ON public.spree_promotion_actions USING btree (id, type);


--
-- Name: index_spree_promotion_actions_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_actions_on_promotion_id ON public.spree_promotion_actions USING btree (promotion_id);


--
-- Name: index_spree_promotion_code_batches_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_code_batches_on_promotion_id ON public.spree_promotion_code_batches USING btree (promotion_id);


--
-- Name: index_spree_promotion_codes_on_promotion_code_batch_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_codes_on_promotion_code_batch_id ON public.spree_promotion_codes USING btree (promotion_code_batch_id);


--
-- Name: index_spree_promotion_codes_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_codes_on_promotion_id ON public.spree_promotion_codes USING btree (promotion_id);


--
-- Name: index_spree_promotion_codes_on_value; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_promotion_codes_on_value ON public.spree_promotion_codes USING btree (value);


--
-- Name: index_spree_promotion_rule_taxons_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rule_taxons_on_promotion_rule_id ON public.spree_promotion_rule_taxons USING btree (promotion_rule_id);


--
-- Name: index_spree_promotion_rule_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rule_taxons_on_taxon_id ON public.spree_promotion_rule_taxons USING btree (taxon_id);


--
-- Name: index_spree_promotion_rules_on_promotion_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rules_on_promotion_id ON public.spree_promotion_rules USING btree (promotion_id);


--
-- Name: index_spree_promotion_rules_stores_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rules_stores_on_promotion_rule_id ON public.spree_promotion_rules_stores USING btree (promotion_rule_id);


--
-- Name: index_spree_promotion_rules_stores_on_store_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotion_rules_stores_on_store_id ON public.spree_promotion_rules_stores USING btree (store_id);


--
-- Name: index_spree_promotions_on_advertise; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_advertise ON public.spree_promotions USING btree (advertise);


--
-- Name: index_spree_promotions_on_apply_automatically; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_apply_automatically ON public.spree_promotions USING btree (apply_automatically);


--
-- Name: index_spree_promotions_on_expires_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_expires_at ON public.spree_promotions USING btree (expires_at);


--
-- Name: index_spree_promotions_on_id_and_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_id_and_type ON public.spree_promotions USING btree (id, type);


--
-- Name: index_spree_promotions_on_promotion_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_promotion_category_id ON public.spree_promotions USING btree (promotion_category_id);


--
-- Name: index_spree_promotions_on_starts_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_promotions_on_starts_at ON public.spree_promotions USING btree (starts_at);


--
-- Name: index_spree_prototype_taxons_on_prototype_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_prototype_taxons_on_prototype_id ON public.spree_prototype_taxons USING btree (prototype_id);


--
-- Name: index_spree_prototype_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_prototype_taxons_on_taxon_id ON public.spree_prototype_taxons USING btree (taxon_id);


--
-- Name: index_spree_refunds_on_payment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_refunds_on_payment_id ON public.spree_refunds USING btree (payment_id);


--
-- Name: index_spree_refunds_on_reimbursement_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_refunds_on_reimbursement_id ON public.spree_refunds USING btree (reimbursement_id);


--
-- Name: index_spree_reimbursement_types_on_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_reimbursement_types_on_type ON public.spree_reimbursement_types USING btree (type);


--
-- Name: index_spree_reimbursements_on_customer_return_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_reimbursements_on_customer_return_id ON public.spree_reimbursements USING btree (customer_return_id);


--
-- Name: index_spree_reimbursements_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_reimbursements_on_order_id ON public.spree_reimbursements USING btree (order_id);


--
-- Name: index_spree_return_items_on_exchange_inventory_unit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_return_items_on_exchange_inventory_unit_id ON public.spree_return_items USING btree (exchange_inventory_unit_id);


--
-- Name: index_spree_roles_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_roles_on_name ON public.spree_roles USING btree (name);


--
-- Name: index_spree_roles_users_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_roles_users_on_role_id ON public.spree_roles_users USING btree (role_id);


--
-- Name: index_spree_roles_users_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_roles_users_on_user_id ON public.spree_roles_users USING btree (user_id);


--
-- Name: index_spree_roles_users_on_user_id_and_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_roles_users_on_user_id_and_role_id ON public.spree_roles_users USING btree (user_id, role_id);


--
-- Name: index_spree_shipments_on_deprecated_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipments_on_deprecated_address_id ON public.spree_shipments USING btree (deprecated_address_id);


--
-- Name: index_spree_shipments_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipments_on_order_id ON public.spree_shipments USING btree (order_id);


--
-- Name: index_spree_shipments_on_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipments_on_stock_location_id ON public.spree_shipments USING btree (stock_location_id);


--
-- Name: index_spree_shipping_method_categories_on_shipping_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipping_method_categories_on_shipping_method_id ON public.spree_shipping_method_categories USING btree (shipping_method_id);


--
-- Name: index_spree_shipping_methods_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipping_methods_on_tax_category_id ON public.spree_shipping_methods USING btree (tax_category_id);


--
-- Name: index_spree_shipping_rate_taxes_on_shipping_rate_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipping_rate_taxes_on_shipping_rate_id ON public.spree_shipping_rate_taxes USING btree (shipping_rate_id);


--
-- Name: index_spree_shipping_rate_taxes_on_tax_rate_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_shipping_rate_taxes_on_tax_rate_id ON public.spree_shipping_rate_taxes USING btree (tax_rate_id);


--
-- Name: index_spree_state_changes_on_stateful_id_and_stateful_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_state_changes_on_stateful_id_and_stateful_type ON public.spree_state_changes USING btree (stateful_id, stateful_type);


--
-- Name: index_spree_state_changes_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_state_changes_on_user_id ON public.spree_state_changes USING btree (user_id);


--
-- Name: index_spree_states_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_states_on_country_id ON public.spree_states USING btree (country_id);


--
-- Name: index_spree_stock_items_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_items_on_deleted_at ON public.spree_stock_items USING btree (deleted_at);


--
-- Name: index_spree_stock_items_on_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_items_on_stock_location_id ON public.spree_stock_items USING btree (stock_location_id);


--
-- Name: index_spree_stock_items_on_variant_id_and_stock_location_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_stock_items_on_variant_id_and_stock_location_id ON public.spree_stock_items USING btree (variant_id, stock_location_id) WHERE (deleted_at IS NULL);


--
-- Name: index_spree_stock_locations_on_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_locations_on_country_id ON public.spree_stock_locations USING btree (country_id);


--
-- Name: index_spree_stock_locations_on_state_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_locations_on_state_id ON public.spree_stock_locations USING btree (state_id);


--
-- Name: index_spree_stock_movements_on_stock_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stock_movements_on_stock_item_id ON public.spree_stock_movements USING btree (stock_item_id);


--
-- Name: index_spree_store_credit_events_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credit_events_on_deleted_at ON public.spree_store_credit_events USING btree (deleted_at);


--
-- Name: index_spree_store_credit_events_on_store_credit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credit_events_on_store_credit_id ON public.spree_store_credit_events USING btree (store_credit_id);


--
-- Name: index_spree_store_credit_types_on_priority; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credit_types_on_priority ON public.spree_store_credit_types USING btree (priority);


--
-- Name: index_spree_store_credits_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credits_on_deleted_at ON public.spree_store_credits USING btree (deleted_at);


--
-- Name: index_spree_store_credits_on_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credits_on_type_id ON public.spree_store_credits USING btree (type_id);


--
-- Name: index_spree_store_credits_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_credits_on_user_id ON public.spree_store_credits USING btree (user_id);


--
-- Name: index_spree_store_payment_methods_on_payment_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_payment_methods_on_payment_method_id ON public.spree_store_payment_methods USING btree (payment_method_id);


--
-- Name: index_spree_store_payment_methods_on_store_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_payment_methods_on_store_id ON public.spree_store_payment_methods USING btree (store_id);


--
-- Name: index_spree_store_shipping_methods_on_shipping_method_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_shipping_methods_on_shipping_method_id ON public.spree_store_shipping_methods USING btree (shipping_method_id);


--
-- Name: index_spree_store_shipping_methods_on_store_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_store_shipping_methods_on_store_id ON public.spree_store_shipping_methods USING btree (store_id);


--
-- Name: index_spree_stores_on_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stores_on_code ON public.spree_stores USING btree (code);


--
-- Name: index_spree_stores_on_default; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_stores_on_default ON public.spree_stores USING btree ("default");


--
-- Name: index_spree_tax_rate_tax_categories_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_tax_rate_tax_categories_on_tax_category_id ON public.spree_tax_rate_tax_categories USING btree (tax_category_id);


--
-- Name: index_spree_tax_rate_tax_categories_on_tax_rate_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_tax_rate_tax_categories_on_tax_rate_id ON public.spree_tax_rate_tax_categories USING btree (tax_rate_id);


--
-- Name: index_spree_tax_rates_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_tax_rates_on_deleted_at ON public.spree_tax_rates USING btree (deleted_at);


--
-- Name: index_spree_tax_rates_on_zone_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_tax_rates_on_zone_id ON public.spree_tax_rates USING btree (zone_id);


--
-- Name: index_spree_taxonomies_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_taxonomies_on_position ON public.spree_taxonomies USING btree ("position");


--
-- Name: index_spree_taxons_on_lft; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_taxons_on_lft ON public.spree_taxons USING btree (lft);


--
-- Name: index_spree_taxons_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_taxons_on_position ON public.spree_taxons USING btree ("position");


--
-- Name: index_spree_taxons_on_rgt; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_taxons_on_rgt ON public.spree_taxons USING btree (rgt);


--
-- Name: index_spree_unit_cancels_on_inventory_unit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_unit_cancels_on_inventory_unit_id ON public.spree_unit_cancels USING btree (inventory_unit_id);


--
-- Name: index_spree_user_addresses_on_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_user_addresses_on_address_id ON public.spree_user_addresses USING btree (address_id);


--
-- Name: index_spree_user_addresses_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_user_addresses_on_user_id ON public.spree_user_addresses USING btree (user_id);


--
-- Name: index_spree_user_addresses_on_user_id_and_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_user_addresses_on_user_id_and_address_id ON public.spree_user_addresses USING btree (user_id, address_id);


--
-- Name: index_spree_user_stock_locations_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_user_stock_locations_on_user_id ON public.spree_user_stock_locations USING btree (user_id);


--
-- Name: index_spree_users_on_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_users_on_deleted_at ON public.spree_users USING btree (deleted_at);


--
-- Name: index_spree_users_on_reset_password_token_solidus_auth_devise; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_users_on_reset_password_token_solidus_auth_devise ON public.spree_users USING btree (reset_password_token);


--
-- Name: index_spree_users_on_spree_api_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_users_on_spree_api_key ON public.spree_users USING btree (spree_api_key);


--
-- Name: index_spree_variant_prop_rule_conditions_on_rule_and_optval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variant_prop_rule_conditions_on_rule_and_optval ON public.spree_variant_property_rule_conditions USING btree (variant_property_rule_id, option_value_id);


--
-- Name: index_spree_variant_property_rule_values_on_property_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variant_property_rule_values_on_property_id ON public.spree_variant_property_rule_values USING btree (property_id);


--
-- Name: index_spree_variant_property_rule_values_on_rule; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variant_property_rule_values_on_rule ON public.spree_variant_property_rule_values USING btree (variant_property_rule_id);


--
-- Name: index_spree_variant_property_rules_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variant_property_rules_on_product_id ON public.spree_variant_property_rules USING btree (product_id);


--
-- Name: index_spree_variants_on_position; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_position ON public.spree_variants USING btree ("position");


--
-- Name: index_spree_variants_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_product_id ON public.spree_variants USING btree (product_id);


--
-- Name: index_spree_variants_on_shipping_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_shipping_category_id ON public.spree_variants USING btree (shipping_category_id);


--
-- Name: index_spree_variants_on_sku; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_sku ON public.spree_variants USING btree (sku);


--
-- Name: index_spree_variants_on_tax_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_tax_category_id ON public.spree_variants USING btree (tax_category_id);


--
-- Name: index_spree_variants_on_track_inventory; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_variants_on_track_inventory ON public.spree_variants USING btree (track_inventory);


--
-- Name: index_spree_wallet_payment_sources_on_source_and_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_spree_wallet_payment_sources_on_source_and_user ON public.spree_wallet_payment_sources USING btree (user_id, payment_source_id, payment_source_type);


--
-- Name: index_spree_wallet_payment_sources_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_wallet_payment_sources_on_user_id ON public.spree_wallet_payment_sources USING btree (user_id);


--
-- Name: index_spree_zone_members_on_zone_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_zone_members_on_zone_id ON public.spree_zone_members USING btree (zone_id);


--
-- Name: index_spree_zone_members_on_zoneable_id_and_zoneable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_spree_zone_members_on_zoneable_id_and_zoneable_type ON public.spree_zone_members USING btree (zoneable_id, zoneable_type);


--
-- Name: index_taxons_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taxons_on_parent_id ON public.spree_taxons USING btree (parent_id);


--
-- Name: index_taxons_on_permalink; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taxons_on_permalink ON public.spree_taxons USING btree (permalink);


--
-- Name: index_taxons_on_taxonomy_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taxons_on_taxonomy_id ON public.spree_taxons USING btree (taxonomy_id);


--
-- Name: shipping_method_id_spree_sm_sl; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shipping_method_id_spree_sm_sl ON public.spree_shipping_method_stock_locations USING btree (shipping_method_id);


--
-- Name: spree_shipping_rates_join_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX spree_shipping_rates_join_index ON public.spree_shipping_rates USING btree (shipment_id, shipping_method_id);


--
-- Name: sstock_location_id_spree_sm_sl; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sstock_location_id_spree_sm_sl ON public.spree_shipping_method_stock_locations USING btree (stock_location_id);


--
-- Name: stock_item_by_loc_and_var_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stock_item_by_loc_and_var_id ON public.spree_stock_items USING btree (stock_location_id, variant_id);


--
-- Name: unique_spree_shipping_method_categories; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX unique_spree_shipping_method_categories ON public.spree_shipping_method_categories USING btree (shipping_category_id, shipping_method_id);


--
-- Name: spree_tax_rate_tax_categories fk_rails_3e6fe87e12; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rate_tax_categories
    ADD CONSTRAINT fk_rails_3e6fe87e12 FOREIGN KEY (tax_rate_id) REFERENCES public.spree_tax_rates(id);


--
-- Name: spree_tax_rate_tax_categories fk_rails_499313ce8e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_tax_rate_tax_categories
    ADD CONSTRAINT fk_rails_499313ce8e FOREIGN KEY (tax_category_id) REFERENCES public.spree_tax_categories(id);


--
-- Name: spree_wallet_payment_sources fk_rails_5dd6e027c5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_wallet_payment_sources
    ADD CONSTRAINT fk_rails_5dd6e027c5 FOREIGN KEY (user_id) REFERENCES public.spree_users(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: spree_promotion_code_batches fk_rails_c217102f50; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_code_batches
    ADD CONSTRAINT fk_rails_c217102f50 FOREIGN KEY (promotion_id) REFERENCES public.spree_promotions(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: spree_promotion_codes fk_rails_e306e312d9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spree_promotion_codes
    ADD CONSTRAINT fk_rails_e306e312d9 FOREIGN KEY (promotion_code_batch_id) REFERENCES public.spree_promotion_code_batches(id);


--
-- Name: products fk_rails_fb915499a4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_fb915499a4 FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- PostgreSQL database dump complete
--


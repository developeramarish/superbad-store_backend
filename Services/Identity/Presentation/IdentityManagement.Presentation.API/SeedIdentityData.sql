drop table "__EFMigrationsHistory" cascade;

drop table "RoleClaims" cascade;

drop table "UserClaims" cascade;

drop table "UserLogins" cascade;

drop table "UserRefreshTokens" cascade;

drop table "UserRoles" cascade;

drop table "Roles" cascade;

drop table "UserTokens" cascade;

drop table "Users" cascade;

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.2

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
-- Name: RoleClaims; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RoleClaims" (
    "Id" uuid NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text,
    "DeletedAt" timestamp with time zone,
    "DeletedBy" text,
    "RoleId" uuid NOT NULL,
    "ClaimType" character varying(256) NOT NULL,
    "ClaimValue" character varying(256) NOT NULL
);


ALTER TABLE public."RoleClaims" OWNER TO postgres;

--
-- Name: Roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Roles" (
    "Id" uuid NOT NULL,
    "CreatedBy" text NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text,
    "DeletedAt" timestamp with time zone,
    "DeletedBy" text,
    "Name" character varying(256) NOT NULL,
    "NormalizedName" character varying(256) NOT NULL,
    "ConcurrencyStamp" text
);


ALTER TABLE public."Roles" OWNER TO postgres;

--
-- Name: UserClaims; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserClaims" (
    "Id" integer NOT NULL,
    "UserId" uuid NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);


ALTER TABLE public."UserClaims" OWNER TO postgres;

--
-- Name: UserClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."UserClaims" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."UserClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: UserLogins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" uuid NOT NULL
);


ALTER TABLE public."UserLogins" OWNER TO postgres;

--
-- Name: UserRefreshTokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserRefreshTokens" (
    "Id" uuid NOT NULL,
    "UserId" uuid NOT NULL,
    "Token" text NOT NULL,
    "RevokedAt" timestamp with time zone,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text,
    "DeletedAt" timestamp with time zone,
    "DeletedBy" text
);


ALTER TABLE public."UserRefreshTokens" OWNER TO postgres;

--
-- Name: UserRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserRoles" (
    "Id" uuid NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text,
    "DeletedAt" timestamp with time zone,
    "DeletedBy" text,
    "UserId" uuid NOT NULL,
    "RoleId" uuid NOT NULL
);


ALTER TABLE public."UserRoles" OWNER TO postgres;

--
-- Name: UserTokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserTokens" (
    "UserId" uuid NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);


ALTER TABLE public."UserTokens" OWNER TO postgres;

--
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    "Id" uuid NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text,
    "DeletedAt" timestamp with time zone,
    "DeletedBy" text,
    "UserName" character varying(320) NOT NULL,
    "NormalizedUserName" character varying(320) NOT NULL,
    "Email" character varying(320) NOT NULL,
    "NormalizedEmail" character varying(320) NOT NULL,
    "EmailConfirmed" boolean NOT NULL,
    "PasswordHash" text NOT NULL,
    "SecurityStamp" text,
    "ConcurrencyStamp" text,
    "PhoneNumber" character varying(20) DEFAULT ''::character varying,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "TwoFactorEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone,
    "LockoutEnabled" boolean NOT NULL,
    "AccessFailedCount" integer NOT NULL,
    "Name" character varying(320) DEFAULT ''::character varying NOT NULL,
    "AvatarUrl" text,
    "CoverUrl" text
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- Data for Name: RoleClaims; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('40472ebd-9f15-4387-8eec-da0180b0e58c', '2024-05-18 17:47:48.644929+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.User.ViewAll', 'Can view all user profiles');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('36cf3d07-9820-4b59-807d-21017b50ae0e', '2024-05-18 17:47:48.651522+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.User.EditAll', 'Can edit all user profiles');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('d3bff03a-3e0a-4524-99fd-0ea4a5c1ab87', '2024-05-18 17:47:48.654525+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.User.DeleteAll', 'Can delete all user profiles');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('3bf1c9d9-33e1-4465-929a-8ad0a4d69b1f', '2024-05-18 17:47:48.657152+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.User.Create', 'Can create user');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('eb32537c-3778-49d2-8161-557173adf732', '2024-05-18 17:47:48.659925+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.User.ViewPersonal', 'Can view personal user profile');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('da22f374-0a4c-4648-8538-e4767c9dd4d2', '2024-05-18 17:47:48.662544+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.User.EditPersonal', 'Can edit personal user profile');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('a5f317eb-e580-4ba0-a5c1-c5c5967307ab', '2024-05-18 17:47:48.665097+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.Role.View', 'Can view roles');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('543800ba-f8a2-4faf-96d8-44a9ce75b596', '2024-05-18 17:47:48.668029+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.Role.Edit', 'Can edit roles');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('8a1d8d83-7f0f-4fce-be40-dacb004ecc1a', '2024-05-18 17:47:48.672258+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.Role.Delete', 'Can delete roles');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('fc4dd9bd-858d-41a8-85ce-645342953c58', '2024-05-18 17:47:48.676532+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.Role.Create', 'Can create roles');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('32a4f9c8-bd0c-4f44-8c05-c1c73a443a71', '2024-05-18 17:47:48.680411+00', 'guest', NULL, NULL, NULL, NULL, '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'Permissions.File.Upload', 'Can upload files');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('99b05eef-e978-473c-a995-769d9f27e67d', '2024-05-18 17:47:48.68477+00', 'guest', NULL, NULL, NULL, NULL, '9d7d114e-9bcc-47c3-88b4-03b63deffa44', 'Permissions.User.ViewPersonal', 'Can view personal user profile');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('874725d7-6464-4ce2-90fd-b4337cee0188', '2024-05-18 17:47:48.69079+00', 'guest', NULL, NULL, NULL, NULL, '9d7d114e-9bcc-47c3-88b4-03b63deffa44', 'Permissions.User.EditPersonal', 'Can edit personal user profile');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('ba4d50d7-f83b-4ae7-8bbd-31ef9a36f2e0', '2024-05-18 17:47:48.697582+00', 'guest', NULL, NULL, NULL, NULL, '9d7d114e-9bcc-47c3-88b4-03b63deffa44', 'Permissions.Product.View', 'Can view products');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('fcc647de-5dfc-49df-9d7d-4cfb5947d847', '2024-05-18 17:47:48.70463+00', 'guest', NULL, NULL, NULL, NULL, '9d7d114e-9bcc-47c3-88b4-03b63deffa44', 'Permissions.Product.Edit', 'Can edit products');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('72751c1d-1bc1-4bac-8869-e8752d3db8ed', '2024-05-18 17:47:48.714267+00', 'guest', NULL, NULL, NULL, NULL, '9d7d114e-9bcc-47c3-88b4-03b63deffa44', 'Permissions.Product.Delete', 'Can delete products');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('0357dde3-00c3-47ce-a1d8-dbdee139f160', '2024-05-18 17:47:48.721833+00', 'guest', NULL, NULL, NULL, NULL, '9d7d114e-9bcc-47c3-88b4-03b63deffa44', 'Permissions.Product.Create', 'Can create products');
INSERT INTO public."RoleClaims" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "RoleId", "ClaimType", "ClaimValue") VALUES ('1d5c0b66-6fdb-49c3-8abd-4ce8bb73898b', '2024-05-18 17:47:48.727953+00', 'guest', NULL, NULL, NULL, NULL, '9d7d114e-9bcc-47c3-88b4-03b63deffa44', 'Permissions.File.Upload', 'Can upload files');


--
-- Data for Name: Roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Roles" ("Id", "CreatedBy", "CreatedAt", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "Name", "NormalizedName", "ConcurrencyStamp") VALUES ('6a4e2dae-363b-4cd6-9aab-54c9c50ef81d', 'guest', '2024-05-18 17:47:48.51561+00', '2024-05-18 17:47:48.56367+00', 'guest', NULL, NULL, 'admin', 'ADMIN', '16f5eaa2-1e74-4fb8-a655-55b8b312abcb');
INSERT INTO public."Roles" ("Id", "CreatedBy", "CreatedAt", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "Name", "NormalizedName", "ConcurrencyStamp") VALUES ('9d7d114e-9bcc-47c3-88b4-03b63deffa44', 'guest', '2024-05-18 17:47:48.515594+00', '2024-05-18 17:47:48.563787+00', 'guest', NULL, NULL, 'user', 'USER', 'fa16911a-a6e2-4a67-b1a7-5747369e47ef');


--
-- Data for Name: UserClaims; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: UserLogins; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: UserRefreshTokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."UserRefreshTokens" ("Id", "UserId", "Token", "RevokedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy") VALUES ('458d4f7c-dc27-4d9a-9323-7ef49c5e4148', 'd60dff58-0eea-4c64-a5e3-0b1d32cded75', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImQ2MGRmZjU4LTBlZWEtNGM2NC1hNWUzLTBiMWQzMmNkZWQ3NSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6InVzZXJAMTIzIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoidXNlciIsImV4cCI6MTcxODY0NjU5MCwiaXNzIjoiaXNzdWVyIiwiYXVkIjoiYXVkaWVuY2UifQ.SRaiKHMAgU5FriIe2ZDHAqDTBtkJ5lzUYHMfAjmpkKM', NULL, '2024-05-18 17:49:50.491478+00', 'guest', NULL, NULL, NULL, NULL);
INSERT INTO public."UserRefreshTokens" ("Id", "UserId", "Token", "RevokedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy") VALUES ('9a95b9c0-322c-4f9c-9afc-e8ce9513dd93', 'd60dff58-0eea-4c64-a5e3-0b1d32cded75', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImQ2MGRmZjU4LTBlZWEtNGM2NC1hNWUzLTBiMWQzMmNkZWQ3NSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6InVzZXJAMTIzIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoidXNlciIsImV4cCI6MTcxODY4Mjk5MCwiaXNzIjoiaXNzdWVyIiwiYXVkIjoiYXVkaWVuY2UifQ.ET_6CXoTPSgBs8ULnTehDD6XpvWzOYzy329uyfhhOIw', NULL, '2024-05-19 03:56:30.390207+00', 'guest', NULL, NULL, NULL, NULL);
INSERT INTO public."UserRefreshTokens" ("Id", "UserId", "Token", "RevokedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy") VALUES ('04e1724d-333b-4742-8ea9-ba2fe7dcef83', 'd60dff58-0eea-4c64-a5e3-0b1d32cded75', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImQ2MGRmZjU4LTBlZWEtNGM2NC1hNWUzLTBiMWQzMmNkZWQ3NSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6InVzZXJAMTIzIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoidXNlciIsImV4cCI6MTcxODY4MzAwNywiaXNzIjoiaXNzdWVyIiwiYXVkIjoiYXVkaWVuY2UifQ.NRDsEP7Xh2umJeL_gmm4et31O4MkX2scpWoS-Yqf4iU', NULL, '2024-05-19 03:56:47.881694+00', 'guest', NULL, NULL, NULL, NULL);
INSERT INTO public."UserRefreshTokens" ("Id", "UserId", "Token", "RevokedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy") VALUES ('6e02b66f-eb2e-4a81-a6e3-5d5f101528c7', 'd60dff58-0eea-4c64-a5e3-0b1d32cded75', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImQ2MGRmZjU4LTBlZWEtNGM2NC1hNWUzLTBiMWQzMmNkZWQ3NSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6InVzZXJAMTIzIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoidXNlciIsImV4cCI6MTcxODY4MzA4OCwiaXNzIjoiaXNzdWVyIiwiYXVkIjoiYXVkaWVuY2UifQ.KcCyGayGyg0GScp0lTM7kTtXbHi1D7qF20AEXdG0h_A', NULL, '2024-05-19 03:58:08.008254+00', 'guest', NULL, NULL, NULL, NULL);
INSERT INTO public."UserRefreshTokens" ("Id", "UserId", "Token", "RevokedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy") VALUES ('dbec2263-a190-4cb1-bce8-e391c5e57726', 'dbfef7a2-bb00-43e8-b112-b35736fe4d9d', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImRiZmVmN2EyLWJiMDAtNDNlOC1iMTEyLWIzNTczNmZlNGQ5ZCIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6InVzZXIxQDEyMyIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6InVzZXIiLCJleHAiOjE3MTg2ODQxMDUsImlzcyI6Imlzc3VlciIsImF1ZCI6ImF1ZGllbmNlIn0.uBZEk2mOzcAzWch_P5blHgzGbouS-_ui7hM0TAyIwUo', NULL, '2024-05-19 04:15:05.30431+00', 'guest', NULL, NULL, NULL, NULL);
INSERT INTO public."UserRefreshTokens" ("Id", "UserId", "Token", "RevokedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy") VALUES ('dae8e947-5eea-46e6-9355-fc564bf8ba9f', '356e6f1c-a32b-4a37-9cfc-577826fba924', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjM1NmU2ZjFjLWEzMmItNGEzNy05Y2ZjLTU3NzgyNmZiYTkyNCIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6InVzZXIyQDEyMyIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6InVzZXIiLCJleHAiOjE3MTg3MTY4NTIsImlzcyI6Imlzc3VlciIsImF1ZCI6ImF1ZGllbmNlIn0.KlMn9YEMrqbYrLnxC-_YiQcJGVUdcP5q_oVrLgBO7oE', NULL, '2024-05-19 13:20:52.403666+00', 'guest', NULL, NULL, NULL, NULL);


--
-- Data for Name: UserRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."UserRoles" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "UserId", "RoleId") VALUES ('947cdffa-2537-4c4c-8390-1ae5f5a6f394', '2024-05-18 17:47:48.563665+00', 'guest', NULL, NULL, NULL, NULL, '628a5912-01d9-4bff-a0a7-e01fef70f1cd', '6a4e2dae-363b-4cd6-9aab-54c9c50ef81d');
INSERT INTO public."UserRoles" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "UserId", "RoleId") VALUES ('d2fbdfc0-762b-4b97-8959-df0b6ffa20cb', '2024-05-18 17:47:48.563616+00', 'guest', NULL, NULL, NULL, NULL, 'd60dff58-0eea-4c64-a5e3-0b1d32cded75', '9d7d114e-9bcc-47c3-88b4-03b63deffa44');
INSERT INTO public."UserRoles" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "UserId", "RoleId") VALUES ('838d89ba-9754-45d2-8b05-5f39a983b5cf', '2024-05-19 04:14:48.661393+00', 'guest', NULL, NULL, NULL, NULL, 'dbfef7a2-bb00-43e8-b112-b35736fe4d9d', '9d7d114e-9bcc-47c3-88b4-03b63deffa44');
INSERT INTO public."UserRoles" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "UserId", "RoleId") VALUES ('e579f22b-fe05-47dd-a616-e184d9276947', '2024-05-19 13:20:37.900777+00', 'guest', NULL, NULL, NULL, NULL, '356e6f1c-a32b-4a37-9cfc-577826fba924', '9d7d114e-9bcc-47c3-88b4-03b63deffa44');


--
-- Data for Name: UserTokens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Users" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Name", "AvatarUrl", "CoverUrl") VALUES ('628a5912-01d9-4bff-a0a7-e01fef70f1cd', '2024-05-18 17:47:48.420377+00', 'guest', NULL, NULL, NULL, NULL, 'admin@123', 'ADMIN@123', 'admin@123', 'ADMIN@123', false, 'AQAAAAIAAYagAAAAEEvJeoisJqSWG6YpvbQRz4RXNCmQ0AkiOFV7wsz2iZp3wV7kAKnazxvewBzP5Pll4g==', 'G2GO3PQTXFVBQ4ZFHY24ACGNTFP7TCMG', NULL, NULL, false, false, NULL, true, 0, 'Admin', NULL, NULL);
INSERT INTO public."Users" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Name", "AvatarUrl", "CoverUrl") VALUES ('d60dff58-0eea-4c64-a5e3-0b1d32cded75', '2024-05-18 17:47:48.420587+00', 'guest', '2024-05-18 17:49:50.491656+00', 'guest', NULL, NULL, 'user@123', 'USER@123', 'user@123', 'USER@123', false, 'AQAAAAIAAYagAAAAEIcyGUzR3gVPZRiphaPCCyGGo49uyWcbjnE5gM/KDBcre+wyRW4iwkFtji0/IkSNiw==', 'KRH732PHEOJDNNJVVM3MPRY754YZD2Z3', '0017b2a6-4e46-43eb-8a80-634c1c658b78', NULL, false, false, NULL, true, 0, 'User', NULL, NULL);
INSERT INTO public."Users" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Name", "AvatarUrl", "CoverUrl") VALUES ('dbfef7a2-bb00-43e8-b112-b35736fe4d9d', '2024-05-19 04:14:48.661347+00', 'guest', '2024-05-19 04:15:05.304322+00', 'guest', NULL, NULL, 'user1@123', 'USER1@123', 'user1@123', 'USER1@123', false, 'AQAAAAIAAYagAAAAEAzQswrSRegBpNXeqRvm6JWJmLIvPdEaPfHqf7cuQ1Iazg3AJ6XEUlWGz6RKsdlqSQ==', 'QDUN5BIVMWYQDV5F4U6BZCAGSQ4IAQ2L', '3f3ec17e-7516-4d10-b4c3-e83de44d8d69', NULL, false, false, NULL, true, 0, 'LOGITECH OFFICIAL SHOP', NULL, NULL);
INSERT INTO public."Users" ("Id", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "DeletedAt", "DeletedBy", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Name", "AvatarUrl", "CoverUrl") VALUES ('356e6f1c-a32b-4a37-9cfc-577826fba924', '2024-05-19 13:20:37.900721+00', 'guest', '2024-05-19 13:20:52.403675+00', 'guest', NULL, NULL, 'user2@123', 'USER2@123', 'user2@123', 'USER2@123', false, 'AQAAAAIAAYagAAAAEEyChWjwuXA5XL/CFqHRQ53sDOxiBh29nC7H/JmYAgh4M9lhhdjURcwEiWMX7/b2pg==', '27PKKABRP5BJIFMKET5QPUA55JSE4YFW', '1573ddd3-9140-4977-b313-85b9f50a34fb', NULL, false, false, NULL, true, 0, 'Nam', NULL, NULL);


--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20231110013514_CreateIdentityTables', '7.0.10');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20231119140601_AddNameColumnAndPhoneNumberConstraintToUsersTable', '7.0.10');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20231130033915_AddAvatarUrlAndCoverUrlColumnToUsersTable', '7.0.10');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20231130115318_SetPhoneNumberColumnToNullableInUsersTable', '7.0.10');


--
-- Name: UserClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserClaims_Id_seq"', 1, false);


--
-- Name: RoleClaims PK_RoleClaims; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RoleClaims"
    ADD CONSTRAINT "PK_RoleClaims" PRIMARY KEY ("Id");


--
-- Name: Roles PK_Roles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "PK_Roles" PRIMARY KEY ("Id");


--
-- Name: UserClaims PK_UserClaims; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserClaims"
    ADD CONSTRAINT "PK_UserClaims" PRIMARY KEY ("Id");


--
-- Name: UserLogins PK_UserLogins; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserLogins"
    ADD CONSTRAINT "PK_UserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");


--
-- Name: UserRefreshTokens PK_UserRefreshTokens; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRefreshTokens"
    ADD CONSTRAINT "PK_UserRefreshTokens" PRIMARY KEY ("Id");


--
-- Name: UserRoles PK_UserRoles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "PK_UserRoles" PRIMARY KEY ("Id");


--
-- Name: UserTokens PK_UserTokens; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserTokens"
    ADD CONSTRAINT "PK_UserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");


--
-- Name: Users PK_Users; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("Id");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: EmailIndex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "EmailIndex" ON public."Users" USING btree ("NormalizedEmail") WHERE ("DeletedAt" IS NULL);


--
-- Name: IX_RoleClaims_RoleId_ClaimType; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_RoleClaims_RoleId_ClaimType" ON public."RoleClaims" USING btree ("RoleId", "ClaimType");


--
-- Name: IX_UserClaims_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_UserClaims_UserId" ON public."UserClaims" USING btree ("UserId");


--
-- Name: IX_UserLogins_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_UserLogins_UserId" ON public."UserLogins" USING btree ("UserId");


--
-- Name: IX_UserRefreshTokens_UserId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_UserRefreshTokens_UserId" ON public."UserRefreshTokens" USING btree ("UserId");


--
-- Name: IX_UserRoles_RoleId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_UserRoles_RoleId" ON public."UserRoles" USING btree ("RoleId");


--
-- Name: IX_UserRoles_UserId_RoleId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_UserRoles_UserId_RoleId" ON public."UserRoles" USING btree ("UserId", "RoleId");


--
-- Name: IX_Users_PhoneNumber; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "IX_Users_PhoneNumber" ON public."Users" USING btree ("PhoneNumber") WHERE ("DeletedAt" IS NULL);


--
-- Name: RoleNameIndex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "RoleNameIndex" ON public."Roles" USING btree ("NormalizedName") WHERE ("DeletedAt" IS NULL);


--
-- Name: UserNameIndex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "UserNameIndex" ON public."Users" USING btree ("NormalizedUserName") WHERE ("DeletedAt" IS NULL);


--
-- Name: RoleClaims FK_RoleClaims_Roles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RoleClaims"
    ADD CONSTRAINT "FK_RoleClaims_Roles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."Roles"("Id") ON DELETE CASCADE;


--
-- Name: UserClaims FK_UserClaims_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserClaims"
    ADD CONSTRAINT "FK_UserClaims_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- Name: UserLogins FK_UserLogins_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserLogins"
    ADD CONSTRAINT "FK_UserLogins_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- Name: UserRefreshTokens FK_UserRefreshTokens_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRefreshTokens"
    ADD CONSTRAINT "FK_UserRefreshTokens_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- Name: UserRoles FK_UserRoles_Roles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Roles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."Roles"("Id") ON DELETE CASCADE;


--
-- Name: UserRoles FK_UserRoles_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- Name: UserTokens FK_UserTokens_Users_UserId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserTokens"
    ADD CONSTRAINT "FK_UserTokens_Users_UserId" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

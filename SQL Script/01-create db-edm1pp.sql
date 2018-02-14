DROP DATABASE IF EXISTS edm1pp;
CREATE DATABASE edm1pp
    TEMPLATE = template0
    ENCODING = UTF8
    LC_COLLATE = 'th_TH.UTF8'
    LC_CTYPE   = 'th_TH.UTF8';

DROP SCHEMA IF EXISTS tlp CASCADE;
DROP SCHEMA IF EXISTS dm CASCADE;
DROP SCHEMA IF EXISTS tli CASCADE;
DROP SCHEMA IF EXISTS tlitext CASCADE;
DROP SCHEMA IF EXISTS lookup CASCADE;
DROP SCHEMA IF EXISTS diff CASCADE;
DROP SCHEMA IF EXISTS validate CASCADE;

CREATE SCHEMA tlp;
CREATE SCHEMA dm;
CREATE SCHEMA tlitext;
CREATE SCHEMA tli;
CREATE SCHEMA lookup;
CREATE SCHEMA diff;
CREATE SCHEMA validate;
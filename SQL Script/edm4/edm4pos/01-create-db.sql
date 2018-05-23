/*DROP DATABASE IF EXISTS edm4pos;
CREATE DATABASE edm4pos
    TEMPLATE = template0
    ENCODING = UTF8
    LC_COLLATE = 'th_TH.UTF8'
    LC_CTYPE   = 'th_TH.UTF8';*/

DROP SCHEMA IF EXISTS tlpktc CASCADE;

CREATE SCHEMA tlpktc;

CREATE TABLE tlpktc.billingheader (
UTTX-REC-TYPE
UTTX-SEQ
UTTX-EFFECTIVE-DATE
UTTX-FILE-DATE
UTTX-MER-ID
UTTX-MER-NAME
UTTX-COMP-AC-NO
UTTX-SERVICE-TYPE
UTTX-BANK-CODE
UTTX-REC-SIZE
UTTX-FILE-TYPE
FILLER
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingdetail (
	uttx-rec-type text NULL,
	uttx-seq text NULL,
	uttx-pan text NULL,
	uttx-cardholder-name text NULL,
	uttx-trxn-amt text NULL,
	uttx-refer-no-1 text NULL,
	uttx-refer-no-2 text NULL,
	uttx-trxn-type text NULL,
	uttx-record-status text NULL,
	uttx-output-result text NULL,
	uttx-payment-date text NULL,
	uttx-payment-time text NULL,
	uttx-response-code text NULL,
	uttx-auth-code text NULL,
	expiry-date text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingfooter (
	uttx-rec-type text NULL,
	uttx-seq text NULL,
	uttx-tot-db-amount text NULL,
	uttx-no-db-item text NULL,
	uttx-tot-cr-amount text NULL,
	uttx-no-cr-item text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentheader (
	uttx-rec-type text NULL,
	uttx-seq text NULL,
	uttx-effective-date text NULL,
	uttx-file-date text NULL,
	uttx-mer-id text NULL,
	uttx-mer-name text NULL,
	uttx-comp-ac-no text NULL,
	uttx-service-type text NULL,
	uttx-bank-code text NULL,
	uttx-rec-size text NULL,
	uttx-file-type text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentdetail (
	uttx-rec-type text NULL,
	uttx-seq text NULL,
	uttx-pan text NULL,
	uttx-cardholder-name text NULL,
	uttx-trxn-amt text NULL,
	uttx-refer-no-1 text NULL,
	uttx-refer-no-2 text NULL,
	uttx-trxn-type text NULL,
	uttx-record-status text NULL,
	uttx-output-result text NULL,
	uttx-payment-date text NULL,
	uttx-payment-time text NULL,
	uttx-response-code text NULL,
	uttx-auth-code text NULL,
	expiry-date text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentfooter (
	uttx-rec-type text NULL,
	uttx-seq text NULL,
	uttx-tot-db-amount text NULL,
	uttx-no-db-item text NULL,
	uttx-tot-cr-amount text NULL,
	uttx-no-cr-item text NULL,
	uttx-tot-rej-db-amount text NULL,
	uttx-no-rej-db-item text NULL,
	uttx-tot-rej-cr-amount text NULL,
	uttx-no-rej-cr-item text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

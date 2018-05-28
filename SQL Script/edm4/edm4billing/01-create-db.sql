/*DROP DATABASE IF EXISTS edm4billing;
CREATE DATABASE edm4billing
    TEMPLATE = template0
    ENCODING = UTF8
    LC_COLLATE = 'th_TH.UTF8'
    LC_CTYPE   = 'th_TH.UTF8';*/

DROP SCHEMA IF EXISTS tlpbilling CASCADE;

CREATE SCHEMA tlpbilling;

CREATE TABLE tlpbilling.membermaster (
	policyno text NULL,
	certificateno text NULL,
	cardno text NULL,
	cardexpired text NULL,
	effectivedate text NULL,
	firstduedate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpbilling.historyexport (
	billingtype text NULL,
	certno text NULL,
	billingdate text NULL,
	duedatestart text NULL,
	duedateend text NULL,
	installmentpolyear text NULL,
	payperiod text NULL,
	partnerbillingdate text NULL,
	totalpremium text NULL,
	status text NULL,
	returndate text NULL,
	attempttime text NULL,
	installmentseq text NULL,
	createdate text NULL,
	responsecode text NULL,
	exfileout text NULL,
	exfilereturn text NULL,
	paiddate text NULL,
	fileoutdate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpbilling.historydownplan (
	certno  text NULL,
	oldproductcode  text NULL,
	newproductcode  text NULL,
	payperiod  text NULL,
	newpremium  text NULL,
	createdate  text NULL,
	status text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpbilling.splitpremiumamount2 (
	certno text NULL,
	ridername text NULL,
	oldridersa text NULL,
	newridersa text NULL,
	oldriderpremium text NULL,
	newriderpremium text NULL
)
WITH (
	OIDS=FALSE
) ;





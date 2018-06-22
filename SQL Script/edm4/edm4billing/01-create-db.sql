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
	firstduedate text NULL,
	mobile text NULL
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

CREATE TABLE tlpbilling.cancelrefund (
	certno text NULL,
	duedate text NULL,
	transactiondate text NULL,
	partial text NULL,
	cancelreason2 text NULL,
	type text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpbilling.paidhistory (
	certno text NULL,
	duedate text NULL,
	refundamount text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE EXTENSION dblink;

CREATE VIEW tlp.customerinfo AS
  SELECT *
    FROM dblink('dbname=edm4cf options=-csearch_path=',
                'select * from tlp.customerinfo')
AS t1(productname text, policyno text, productcode text, certificateno text, saledate text, 
branchname text, customercode text, accountno text, loanno text, totalofloan text, sa text, 
prem text, durationinsurance text, insurancestatus text, effectivedate text, expireddate text, 
customerstatus text, canceldate text, cancelreason text, canceldescription text, channel text, 
prefix text, nameth text, surnameth text, birthdate text, age text, weight text, height text, 
gender text, status text, nationid text, creditcardno text, expiredcreditcard text, address1 text, 
address2 text, addressoffice1 text, addressoffice2 text, nameofbenefit1 text, nameofbenefit2 text, 
nameofbenefit3 text, nameofbenefit4 text, relationship1 text, relationship2 text, relationship3 text, 
relationship4 text, hometel text, mobiletel text, officetel text, officercodesale text, salenameth text, 
managercode text, dateprintcert text, postbackdate text, cancelletterno text, printcancelletterdate text, 
partnercode text, partnername text, databasesource text, refname text, refnationid text, refcreditcardno text, 
facility text, uwdescription text, uwstatus text, tmksaledate text, coverage text, paidtodate text, extrarate text, 
voicetag text, deathdate text, customerloanapprovedate text, lob text, canceltransactiondate text, oldaccountno text, 
customeroccupationtext text, loaninstallment1stdue text, customercontactofficepay text, percentofbenefitciary1 text, 
percentofbenefitciary2 text, percentofbenefitciary3 text, percentofbenefitciary4 text, downplaneffectivedate text, 
date_sosover text, customerduration text, med text, customernation text, endorsedate text, informdate1 text, 
paydate1 text, amount1 text, informdate2 text, paydate2 text, amount2 text, deaddate text, lastpaydate text, 
lastreceiptno text, mode text, lastpayperiod text);

CREATE EXTENSION dblink;

CREATE VIEW tlp.policymaster AS
  SELECT *
    FROM dblink('dbname=edm4gl options=-csearch_path=',
                'select * from tlp.policymaster')
AS t1(policyno text, appno text, plancode text, planname text, prename text, frstname text, surname text, 
statusnew text, statusnewremark text, statusold text, statusoldremark text, sex text, medical text, class text, 
occtype text, extramort text, issuedage text, sa text, premlife text, premacc text, premexta text, premtotal text, 
mode text, payperiod text, covperiod text, effectivedate text, birthdate text, paymentdate text, nextduedate text, 
modifydate text, statusdate text, matdate text, expdate text, dateprintpolicy text, issuepolicydate text, idno text, 
stopdate text, stopreason text, deathdate text, receivefreelookdate text, receivefreelookdescription text, receivefreelookrealdate text, 
prefix text, sanew text, expdatenew text, cashexpire text, cashimmediate text, book text, tesco text, nocount text, bookpredic text, 
tescopredic text, sendstatus text, sendgiftdate text, userconfirm text, registermailtesco text, receivetescodate text, receivetescostatus text, 
receivetescoreason text, uploadxo text, extrarate text, effectivedateold text, matdateold text, expdateold text, issuedageold text, cv text, 
cvdate text, status2 text, statusdate2 text, customercode text);

CREATE OR REPLACE VIEW tlp.tlppolicystatus AS
 SELECT t1.customerstatus
   FROM dblink('dbname=edm4cf options=-csearch_path='::text, 'select customerstatus from lookup.tlppolicystatus'::text) t1(customerstatus text);

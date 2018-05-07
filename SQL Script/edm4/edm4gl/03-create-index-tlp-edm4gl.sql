SET search_path TO tlp;

CREATE INDEX IF NOT EXISTS indx_appcust_01 ON appcustomer (appno);
CREATE INDEX IF NOT EXISTS indx_appcust_02 ON appcustomer (custid);
CREATE INDEX IF NOT EXISTS indx_appcust_03 ON appcustomer (custidtype);
CREATE INDEX IF NOT EXISTS indx_appcust_04 ON appcustomer (appno, custid, custidtype);

CREATE INDEX IF NOT EXISTS indx_appcustadd_01 ON appcustomeraddress (appno);

CREATE INDEX IF NOT EXISTS indx_policymas_01 ON policymaster (policyno);
CREATE INDEX IF NOT EXISTS indx_policymas_02 ON policymaster (appno);
CREATE INDEX IF NOT EXISTS indx_policymas_03 ON policymaster (plancode);
CREATE INDEX IF NOT EXISTS indx_policymas_04 ON policymaster (policyno, appno, plancode);

CREATE INDEX IF NOT EXISTS indx_prodset_01 ON productsetup (plancode);

CREATE INDEX IF NOT EXISTS indx_historysta_01 ON historystatus (historycode);
CREATE INDEX IF NOT EXISTS indx_historysta_02 ON historystatus (policyno);
CREATE INDEX IF NOT EXISTS indx_historysta_03 ON historystatus (historycode,policyno);

CREATE INDEX IF NOT EXISTS indx_policybene_01 ON policybeneficiary (policyno);

CREATE INDEX IF NOT EXISTS indx_policyrid_01 ON policyrider (riderno);
CREATE INDEX IF NOT EXISTS indx_policyrid_02 ON policyrider (policyno);
CREATE INDEX IF NOT EXISTS indx_policyrid_03 ON policyrider (plancode);
CREATE INDEX IF NOT EXISTS indx_policyrid_04 ON policyrider (statusnew);
CREATE INDEX IF NOT EXISTS indx_policyrid_05 ON policyrider (statusold);
CREATE INDEX IF NOT EXISTS indx_policyrid_06 ON policyrider (riderno,policyno,plancode,statusnew,statusold);

CREATE INDEX IF NOT EXISTS indx_statusmas_01 ON statusmaster (status);

CREATE INDEX IF NOT EXISTS indx_policypaid_01 ON policypaid (receiptno);
CREATE INDEX IF NOT EXISTS indx_policypaid_02 ON policypaid (policyno);
CREATE INDEX IF NOT EXISTS indx_policypaid_03 ON policypaid (receiptno,policyno);

CREATE INDEX IF NOT EXISTS indx_prodridset_01 ON productridersetup (plancode);

CREATE INDEX IF NOT EXISTS indx_custinfo_01 ON customerinfo (policyno);
CREATE INDEX IF NOT EXISTS indx_custinfo_02 ON customerinfo (certificateno);
CREATE INDEX IF NOT EXISTS indx_custinfo_03 ON customerinfo (policyno, certificateno);

CREATE INDEX IF NOT EXISTS indx_custsa_01 ON customersa (customercode);
CREATE INDEX IF NOT EXISTS indx_custsa_02 ON customersa (policyno);
CREATE INDEX IF NOT EXISTS indx_custsa_03 ON customersa (customercode, policyno);

CREATE INDEX IF NOT EXISTS indx_payment_01 ON payment (policyno);
CREATE INDEX IF NOT EXISTS indx_payment_02 ON payment (productcode);
CREATE INDEX IF NOT EXISTS indx_payment_03 ON payment (customercode);
CREATE INDEX IF NOT EXISTS indx_payment_04 ON payment (policyno, productcode, customercode);

CREATE INDEX IF NOT EXISTS indx_spa_01 ON splitpremiumamount (productid, grouppolicyno, customercode);
CREATE INDEX IF NOT EXISTS indx_spa_02 ON splitpremiumamount (productid);
CREATE INDEX IF NOT EXISTS indx_spa_03 ON splitpremiumamount (grouppolicyno);
CREATE INDEX IF NOT EXISTS indx_spa_04 ON splitpremiumamount (customercode);


CREATE INDEX IF NOT EXISTS indx_custballoon_01 ON customerballoon (policyno, certno, policynoballoon, certnobolloon, loancontractno);
CREATE INDEX IF NOT EXISTS indx_custballoon_02 ON customerballoon (policyno);
CREATE INDEX IF NOT EXISTS indx_custballoon_03 ON customerballoon (certno);
CREATE INDEX IF NOT EXISTS indx_custballoon_04 ON customerballoon (policynoballoon);
CREATE INDEX IF NOT EXISTS indx_custballoon_05 ON customerballoon (certnobolloon);
CREATE INDEX IF NOT EXISTS indx_custballoon_06 ON customerballoon (loancontractno);
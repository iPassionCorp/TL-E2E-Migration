SET search_path TO tlp;

CREATE INDEX IF NOT EXISTS indx_appcust_01 ON appcustomer (appno);
CREATE INDEX IF NOT EXISTS indx_appcust_02 ON appcustomer (custid);
CREATE INDEX IF NOT EXISTS indx_appcust_03 ON appcustomer (custidtype);
CREATE INDEX IF NOT EXISTS indx_appcust_04 ON appcustomer (appno, custid, custidtype);

CREATE INDEX IF NOT EXISTS indx_appcustadd_01 ON appcustomeraddress (appno);
CREATE INDEX IF NOT EXISTS indx_appcustadd_02 ON appcustomeraddress (addtype);
CREATE INDEX IF NOT EXISTS indx_appcustadd_03 ON appcustomeraddress (appno, addtype);

CREATE INDEX IF NOT EXISTS indx_policymas_01 ON policymaster (policyno);
CREATE INDEX IF NOT EXISTS indx_policymas_02 ON policymaster (appno);
CREATE INDEX IF NOT EXISTS indx_policymas_03 ON policymaster (plancode);
CREATE INDEX IF NOT EXISTS indx_policymas_04 ON policymaster (policyno, appno, plancode);

CREATE INDEX IF NOT EXISTS indx_historysta_01 ON historystatus (historycode);
CREATE INDEX IF NOT EXISTS indx_historysta_02 ON historystatus (policyno);
CREATE INDEX IF NOT EXISTS indx_historysta_03 ON historystatus (historycode, policyno);

CREATE INDEX IF NOT EXISTS indx_policybene_01 ON policybeneficiary (policyno);
CREATE INDEX IF NOT EXISTS indx_policybene_02 ON policybeneficiary (seqno);
CREATE INDEX IF NOT EXISTS indx_policybene_03 ON policybeneficiary (policyno, seqno);

CREATE INDEX IF NOT EXISTS indx_policyrid_01 ON policyrider (riderno);
CREATE INDEX IF NOT EXISTS indx_policyrid_02 ON policyrider (policyno);
CREATE INDEX IF NOT EXISTS indx_policyrid_03 ON policyrider (ridertype);
CREATE INDEX IF NOT EXISTS indx_policyrid_04 ON policyrider (plancode);
CREATE INDEX IF NOT EXISTS indx_policyrid_05 ON policyrider (policyno, riderno);
CREATE INDEX IF NOT EXISTS indx_policyrid_06 ON policyrider (riderno, policyno, ridertype, plancode);

CREATE INDEX IF NOT EXISTS indx_policypaid_01 ON policypaid (receiptno);
CREATE INDEX IF NOT EXISTS indx_policypaid_02 ON policypaid (policyno);
CREATE INDEX IF NOT EXISTS indx_policypaid_03 ON policypaid (yearpay);
CREATE INDEX IF NOT EXISTS indx_policypaid_04 ON policypaid (receiptno, policyno);
CREATE INDEX IF NOT EXISTS indx_policypaid_05 ON policypaid (receiptno, policyno, yearpay);
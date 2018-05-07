SET search_path TO tlp;

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
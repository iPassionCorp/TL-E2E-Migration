SET search_path TO tlpbilling;

CREATE INDEX IF NOT EXISTS indx_10 ON membermaster (policyno);
CREATE INDEX IF NOT EXISTS indx_11 ON membermaster (certificateno);
CREATE INDEX IF NOT EXISTS indx_12 ON membermaster (policyno, certificateno);

CREATE INDEX IF NOT EXISTS indx_21 ON historyexport (billingtype);
CREATE INDEX IF NOT EXISTS indx_22 ON historyexport (certno);
CREATE INDEX IF NOT EXISTS indx_23 ON historyexport (billingdate);
CREATE INDEX IF NOT EXISTS indx_24 ON historyexport (billingtype, certno, billingdate);

CREATE INDEX IF NOT EXISTS indx_31 ON historydownplan (certno);
CREATE INDEX IF NOT EXISTS indx_32 ON historydownplan (oldproductcode);
CREATE INDEX IF NOT EXISTS indx_33 ON historydownplan (newproductcode);
CREATE INDEX IF NOT EXISTS indx_34 ON historydownplan (certno, oldproductcode, newproductcode);

CREATE INDEX IF NOT EXISTS indx_41 ON splitpremiumamount2 (certno);
CREATE INDEX IF NOT EXISTS indx_42 ON splitpremiumamount2 (ridername);
CREATE INDEX IF NOT EXISTS indx_43 ON splitpremiumamount2 (certno, ridername);
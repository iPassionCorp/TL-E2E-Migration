SET search_path TO dm;

CREATE INDEX IF NOT EXISTS indx_cert_01 ON cert (policyno, certno);
CREATE INDEX IF NOT EXISTS indx_cert_02 ON cert (policyno);
CREATE INDEX IF NOT EXISTS indx_cert_03 ON cert (certno);
CREATE INDEX IF NOT EXISTS indx_cert_04 ON cert (nameid);

CREATE INDEX IF NOT EXISTS indx_certlinker_01 ON certlinker (policynohp, certnohp, policynocp, certnocp);
CREATE INDEX IF NOT EXISTS indx_certlinker_02 ON certlinker (policynohp, certnohp);
CREATE INDEX IF NOT EXISTS indx_certlinker_03 ON certlinker (policynocp, certnocp);

CREATE INDEX IF NOT EXISTS indx_certmapping_01 ON certmapping (policyno, certno, rpolicyno, rcertno);
CREATE INDEX IF NOT EXISTS indx_certmapping_02 ON certmapping (policyno, certno);
CREATE INDEX IF NOT EXISTS indx_certmapping_03 ON certmapping (rpolicyno, rcertno);

CREATE INDEX IF NOT EXISTS indx_certrider_01 ON certrider (policyno, certno);
CREATE INDEX IF NOT EXISTS indx_certrider_02 ON certrider (policyno);
CREATE INDEX IF NOT EXISTS indx_certrider_03 ON certrider (certno);

CREATE INDEX IF NOT EXISTS indx_compensateid_01 ON compensateid (compensateid, referenceid);
CREATE INDEX IF NOT EXISTS indx_compensateid_02 ON compensateid (compensateid);
CREATE INDEX IF NOT EXISTS indx_compensateid_03 ON compensateid (referenceid);

CREATE INDEX IF NOT EXISTS indx_customer_01 ON customer (customerid);
CREATE INDEX IF NOT EXISTS indx_customer_02 ON customer (referenceid);
CREATE INDEX IF NOT EXISTS indx_customer_03 ON customer (referencetype);
CREATE INDEX IF NOT EXISTS indx_customer_04 ON customer (referenceid, referencetype);

CREATE INDEX IF NOT EXISTS indx_detcert_01 ON detcert (policyno, certno);
CREATE INDEX IF NOT EXISTS indx_detcert_02 ON detcert (policyno);
CREATE INDEX IF NOT EXISTS indx_detcert_03 ON detcert (certno);

CREATE INDEX IF NOT EXISTS indx_name_01 ON name (nameid);
CREATE INDEX IF NOT EXISTS indx_name_02 ON name (personid);
CREATE INDEX IF NOT EXISTS indx_name_03 ON name (nameid, personid);

CREATE INDEX IF NOT EXISTS indx_person_01 ON person (personid);
CREATE INDEX IF NOT EXISTS indx_person_02 ON person (referenceid);
CREATE INDEX IF NOT EXISTS indx_person_03 ON person (referencetype);
CREATE INDEX IF NOT EXISTS indx_person_04 ON person (personid, referenceid);
CREATE INDEX IF NOT EXISTS indx_person_05 ON person (referenceid, referencetype);
CREATE INDEX IF NOT EXISTS indx_person_06 ON person (customerid);
CREATE INDEX IF NOT EXISTS indx_person_07 ON person (personid, customerid);
CREATE INDEX IF NOT EXISTS indx_person_08 ON person (personid, referenceid, customerid);

CREATE INDEX IF NOT EXISTS indx_policy_01 ON policy (policyno);

CREATE INDEX IF NOT EXISTS indx_premrate_01 ON premrate (type, rate, age, sex, term);

CREATE INDEX IF NOT EXISTS indx_tpdrate_01 ON tpdrate (type, rate, age, sex, term);
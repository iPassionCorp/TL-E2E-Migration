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

CREATE INDEX IF NOT EXISTS indx_clrctrl_01 ON clrctrl (rpno);
CREATE INDEX IF NOT EXISTS indx_clrctrl_02 ON clrctrl (policyno);
CREATE INDEX IF NOT EXISTS indx_clrctrl_03 ON clrctrl (certno);
CREATE INDEX IF NOT EXISTS indx_clrctrl_04 ON clrctrl (rpno,policyno,certno);

CREATE INDEX IF NOT EXISTS indx_clrprider_01 ON clrprider (rpno);
CREATE INDEX IF NOT EXISTS indx_clrprider_02 ON clrprider (ridertype);
CREATE INDEX IF NOT EXISTS indx_clrprider_03 ON clrprider (rpno,ridertype);

CREATE INDEX IF NOT EXISTS indx_mgclaim_01 ON mgclaim (certno);
CREATE INDEX IF NOT EXISTS indx_mgclaim_02 ON mgclaim (accidentdate);
CREATE INDEX IF NOT EXISTS indx_mgclaim_03 ON mgclaim (receivedate);
CREATE INDEX IF NOT EXISTS indx_mgclaim_04 ON mgclaim (claimtype);
CREATE INDEX IF NOT EXISTS indx_mgclaim_05 ON mgclaim (certno,accidentdate,receivedate,claimtype);

CREATE INDEX IF NOT EXISTS indx_mgorder_01 ON mgorder (sectioncode);
CREATE INDEX IF NOT EXISTS indx_mgorder_02 ON mgorder (orderno);
CREATE INDEX IF NOT EXISTS indx_mgorder_03 ON mgorder (sectioncode,orderno);

CREATE INDEX IF NOT EXISTS indx_mgcfpay_01 ON mgcfpay (certno);
CREATE INDEX IF NOT EXISTS indx_mgcfpay_02 ON mgcfpay (receivedate);
CREATE INDEX IF NOT EXISTS indx_mgcfpay_03 ON mgcfpay (accidentdate);
CREATE INDEX IF NOT EXISTS indx_mgcfpay_04 ON mgcfpay (ridertype);
CREATE INDEX IF NOT EXISTS indx_mgcfpay_05 ON mgcfpay (certno,receivedate,accidentdate,ridertype);

CREATE INDEX IF NOT EXISTS indx_mgcfpolicy_01 ON mgcfpolicy (certno);
CREATE INDEX IF NOT EXISTS indx_mgcfpolicy_02 ON mgcfpolicy (accidentdate);
CREATE INDEX IF NOT EXISTS indx_mgcfpolicy_03 ON mgcfpolicy (receivedate);
CREATE INDEX IF NOT EXISTS indx_mgcfpolicy_04 ON mgcfpolicy (sectioncode);
CREATE INDEX IF NOT EXISTS indx_mgcfpolicy_05 ON mgcfpolicy (certno,accidentdate,receivedate,sectioncode);

CREATE INDEX IF NOT EXISTS indx_mghis_01 ON mghis (certno);
CREATE INDEX IF NOT EXISTS indx_mghis_02 ON mghis (accidentdate);
CREATE INDEX IF NOT EXISTS indx_mghis_03 ON mghis (receivedate);
CREATE INDEX IF NOT EXISTS indx_mghis_04 ON mghis (claimtype);
CREATE INDEX IF NOT EXISTS indx_mghis_05 ON mghis (seqno);
CREATE INDEX IF NOT EXISTS indx_mghis_06 ON mghis (certno, accidentdate, receivedate, claimtype, seqno);

CREATE INDEX IF NOT EXISTS indx_mginsmemo_01 ON mginsmemo (certno);
CREATE INDEX IF NOT EXISTS indx_mginsmemo_02 ON mginsmemo (accidentdate);
CREATE INDEX IF NOT EXISTS indx_mginsmemo_03 ON mginsmemo (receivedate);
CREATE INDEX IF NOT EXISTS indx_mginsmemo_04 ON mginsmemo (memocode);
CREATE INDEX IF NOT EXISTS indx_mginsmemo_05 ON mginsmemo (certno,accidentdate,receivedate,memocode);

CREATE INDEX IF NOT EXISTS indx_mginterest_01 ON mginterest (certno);
CREATE INDEX IF NOT EXISTS indx_mginterest_02 ON mginterest (accidentdate);
CREATE INDEX IF NOT EXISTS indx_mginterest_03 ON mginterest (receivedate);
CREATE INDEX IF NOT EXISTS indx_mginterest_04 ON mginterest (ridertype);
CREATE INDEX IF NOT EXISTS indx_mginterest_05 ON mginterest (paytype);
CREATE INDEX IF NOT EXISTS indx_mginterest_06 ON mginterest (certno, accidentdate, receivedate, ridertype, paytype);

CREATE INDEX IF NOT EXISTS indx_mgreceiver_01 ON mgreceiver (certno);
CREATE INDEX IF NOT EXISTS indx_mgreceiver_02 ON mgreceiver (accidentdate);
CREATE INDEX IF NOT EXISTS indx_mgreceiver_03 ON mgreceiver (receivedate);
CREATE INDEX IF NOT EXISTS indx_mgreceiver_04 ON mgreceiver (seqno);
CREATE INDEX IF NOT EXISTS indx_mgreceiver_05 ON mgreceiver (certno,accidentdate,receivedate,seqno);

CREATE INDEX IF NOT EXISTS indx_mgdeduct_01 ON mgdeduct (sectioncode);
CREATE INDEX IF NOT EXISTS indx_mgdeduct_02 ON mgdeduct (orderno);
CREATE INDEX IF NOT EXISTS indx_mgdeduct_03 ON mgdeduct (sectionorder);
CREATE INDEX IF NOT EXISTS indx_mgdeduct_04 ON mgdeduct (type);
CREATE INDEX IF NOT EXISTS indx_mgdeduct_05 ON mgdeduct (certno);
CREATE INDEX IF NOT EXISTS indx_mgdeduct_06 ON mgdeduct (sectioncode,orderno,sectionorder,TYPE,certno);

CREATE INDEX IF NOT EXISTS indx_mgbook_01 ON mgbook (sectioncode);
CREATE INDEX IF NOT EXISTS indx_mgbook_02 ON mgbook (orderno);
CREATE INDEX IF NOT EXISTS indx_mgbook_03 ON mgbook (certno);
CREATE INDEX IF NOT EXISTS indx_mgbook_04 ON mgbook (sectioncode,orderno,certno);

CREATE INDEX IF NOT EXISTS indx_mycontclaim_01 ON mycontclaim (sectionorder);
CREATE INDEX IF NOT EXISTS indx_mycontclaim_02 ON mycontclaim (policyno);
CREATE INDEX IF NOT EXISTS indx_mycontclaim_03 ON mycontclaim (sectionorder,policyno);

CREATE INDEX IF NOT EXISTS indx_mypendenddet_01 ON mypendenddet (certno);

CREATE INDEX IF NOT EXISTS indx_mypendmst_01 ON mypendmst (certno);
CREATE INDEX IF NOT EXISTS indx_mypendmst_02 ON mypendmst (sectioncode);
CREATE INDEX IF NOT EXISTS indx_mypendmst_03 ON mypendmst (certno,sectioncode);














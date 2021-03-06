SET search_path TO dm;

CREATE INDEX IF NOT EXISTS indx_certlinker_01 ON certlinker (policynohp, certnohp, policynocp, certnocp);
CREATE INDEX IF NOT EXISTS indx_certlinker_02 ON certlinker (policynohp, certnohp);
CREATE INDEX IF NOT EXISTS indx_certlinker_03 ON certlinker (policynocp, certnocp);

CREATE INDEX IF NOT EXISTS indx_certmapping_01 ON certmapping (policyno, certno, rpolicyno, rcertno);
CREATE INDEX IF NOT EXISTS indx_certmapping_02 ON certmapping (policyno, certno);
CREATE INDEX IF NOT EXISTS indx_certmapping_03 ON certmapping (rpolicyno, rcertno);

CREATE INDEX IF NOT EXISTS indx_compensateid_01 ON compensateid (compensateid, referenceid);
CREATE INDEX IF NOT EXISTS indx_compensateid_02 ON compensateid (compensateid);
CREATE INDEX IF NOT EXISTS indx_compensateid_03 ON compensateid (referenceid);

CREATE INDEX IF NOT EXISTS indx_customer_01 ON customer (customerid);
CREATE INDEX IF NOT EXISTS indx_customer_02 ON customer (referenceid);
CREATE INDEX IF NOT EXISTS indx_customer_03 ON customer (referencetype);
CREATE INDEX IF NOT EXISTS indx_customer_04 ON customer (referenceid, referencetype);

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

CREATE INDEX IF NOT EXISTS indx_beneficiary_01 ON dm.beneficiary (policytype);
CREATE INDEX IF NOT EXISTS indx_beneficiary_02 ON dm.beneficiary (policyno);
CREATE INDEX IF NOT EXISTS indx_beneficiary_03 ON dm.beneficiary (SEQUENCE);
CREATE INDEX IF NOT EXISTS indx_beneficiary_04 ON dm.beneficiary (policytype, policyno, SEQUENCE);

CREATE INDEX IF NOT EXISTS indx_address_01 ON dm.address (addressid);

CREATE INDEX IF NOT EXISTS indx_ordmast_01 ON dm.ordmast (policyno);
CREATE INDEX IF NOT EXISTS indx_ordmast_02 ON dm.ordmast (nameid);
CREATE INDEX IF NOT EXISTS indx_ordmast_03 ON dm.ordmast (rpno);
CREATE INDEX IF NOT EXISTS indx_ordmast_04 ON dm.ordmast (policyno,nameid,rpno);

CREATE INDEX IF NOT EXISTS indx_rider_01 ON dm.rider (policyno);
CREATE INDEX IF NOT EXISTS indx_rider_02 ON dm.rider (ridertype);
CREATE INDEX IF NOT EXISTS indx_rider_03 ON dm.rider (policyno, ridertype);

CREATE INDEX IF NOT EXISTS indx_orctrl_01 ON dm.orctrl (rpno);
CREATE INDEX IF NOT EXISTS indx_orctrl_02 ON dm.orctrl (policyno);
CREATE INDEX IF NOT EXISTS indx_orctrl_03 ON dm.orctrl (rpno,policyno);

CREATE INDEX IF NOT EXISTS indx_rprider_01 ON dm.rprider (rpno);
CREATE INDEX IF NOT EXISTS indx_rprider_02 ON dm.rprider (seqno);
CREATE INDEX IF NOT EXISTS indx_rprider_03 ON dm.rprider (rpno,seqno);

CREATE INDEX IF NOT EXISTS indx_extrapremium_01 ON dm.extrapremium (policyno);
CREATE INDEX IF NOT EXISTS indx_extrapremium_02 ON dm.extrapremium (extratype);
CREATE INDEX IF NOT EXISTS indx_extrapremium_03 ON dm.extrapremium (startyear);
CREATE INDEX IF NOT EXISTS indx_extrapremium_04 ON dm.extrapremium (policyno,extratype,startyear);

CREATE INDEX IF NOT EXISTS indx_remark_01 ON dm.remark (policyno);
CREATE INDEX IF NOT EXISTS indx_remark_02 ON dm.remark (department);
CREATE INDEX IF NOT EXISTS indx_remark_03 ON dm.remark (sequence);
CREATE INDEX IF NOT EXISTS indx_remark_04 ON dm.remark (policyno,sequence);
CREATE INDEX IF NOT EXISTS indx_remark_05 ON dm.remark (policyno,department,sequence);

CREATE INDEX IF NOT EXISTS indx_claim_01 ON (claimtype);
CREATE INDEX IF NOT EXISTS indx_claim_02 ON (msttype);
CREATE INDEX IF NOT EXISTS indx_claim_03 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_claim_04 ON (claimtype,msttype,policyno);

CREATE INDEX IF NOT EXISTS indx_eclm_01 ON (sectioncode);
CREATE INDEX IF NOT EXISTS indx_eclm_02 ON (orderno);
CREATE INDEX IF NOT EXISTS indx_eclm_03 ON (claimtype);
CREATE INDEX IF NOT EXISTS indx_eclm_04 ON (sectioncode,orderno,claimtype);

CREATE INDEX IF NOT EXISTS indx_dthordo_01 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_dthordo_02 ON (sectioncode);
CREATE INDEX IF NOT EXISTS indx_dthordo_03 ON (orederno);
CREATE INDEX IF NOT EXISTS indx_dthordo_04 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_dthordo_05 ON (accidentdate);
CREATE INDEX IF NOT EXISTS indx_dthordo_06 ON (policyno, sectioncode, orederno);

CREATE INDEX IF NOT EXISTS indx_ridordo_01 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_ridordo_02 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_ridordo_03 ON (ridertype);
CREATE INDEX IF NOT EXISTS indx_ridordo_04 ON (policyno,receivedate,ridertype);

CREATE INDEX IF NOT EXISTS indx_dhsordo_01 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_dhsordo_02 ON (seqno);
CREATE INDEX IF NOT EXISTS indx_dhsordo_03 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_dhsordo_04 ON (policyno, seqno,receivedate);

CREATE INDEX IF NOT EXISTS indx_bnfordo_01 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_bnfordo_02 ON (seqno);
CREATE INDEX IF NOT EXISTS indx_bnfordo_03 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_bnfordo_04 ON (policyno,seqno,receivedate);

CREATE INDEX IF NOT EXISTS indx_oacm_01 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_oacm_02 ON (sectioncode);
CREATE INDEX IF NOT EXISTS indx_oacm_03 ON (orederno);
CREATE INDEX IF NOT EXISTS indx_oacm_04 ON (accidentdate);
CREATE INDEX IF NOT EXISTS indx_oacm_05 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_oacm_06 ON (policyno, sectioncode, orederno,accidentdate,receivedate);

CREATE INDEX IF NOT EXISTS indx_hordods_01 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_hordods_02 ON (seqno);
CREATE INDEX IF NOT EXISTS indx_hordods_03 ON (accidentdate);
CREATE INDEX IF NOT EXISTS indx_hordods_04 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_hordods_05 ON (policyno,seqno,accidentdate,receivedate);

CREATE INDEX IF NOT EXISTS indx_pay_01 ON (sectioncode);
CREATE INDEX IF NOT EXISTS indx_pay_02 ON (orderno);
CREATE INDEX IF NOT EXISTS indx_pay_03 ON (paytype);
CREATE INDEX IF NOT EXISTS indx_pay_04 ON (sectioncode, orderno, paytype);

CREATE INDEX IF NOT EXISTS indx_insmemo_01 ON (claimtype);
CREATE INDEX IF NOT EXISTS indx_insmemo_02 ON (msttype);
CREATE INDEX IF NOT EXISTS indx_insmemo_03 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_insmemo_04 ON (accidentdate);
CREATE INDEX IF NOT EXISTS indx_insmemo_05 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_insmemo_06 ON (claimtype, msttype, policyno,accidentdate,receivedate);

CREATE INDEX IF NOT EXISTS indx_voiordo_01 ON (claimtype);
CREATE INDEX IF NOT EXISTS indx_voiordo_02 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_voiordo_03 ON (accidentdate);
CREATE INDEX IF NOT EXISTS indx_voiordo_04 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_voiordo_05 ON (claimtype,policyno,accidentdate,receivedate);

CREATE INDEX IF NOT EXISTS indx_cmem_01 ON (sectioncode);
CREATE INDEX IF NOT EXISTS indx_cmem_02 ON (orderno);
CREATE INDEX IF NOT EXISTS indx_cmem_03 ON (seqno);
CREATE INDEX IF NOT EXISTS indx_cmem_04 ON (sectioncode, orderno, seqno);

CREATE INDEX IF NOT EXISTS indx_odis_01 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_odis_02 ON (accidentdate);
CREATE INDEX IF NOT EXISTS indx_odis_03 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_odis_04 ON (policyno, accidentdate, receivedate);

CREATE INDEX IF NOT EXISTS indx_ords_01 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_ords_02 ON (accidentdate);
CREATE INDEX IF NOT EXISTS indx_ords_03 ON (receivedate);
CREATE INDEX IF NOT EXISTS indx_ords_04 ON (ridertype);
CREATE INDEX IF NOT EXISTS indx_ords_05 ON (policyno,accidentdate,receivedate,ridertype);



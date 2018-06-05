SET search_path TO tlitext;

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

CREATE INDEX IF NOT EXISTS indx_beneficiary_01 ON beneficiary (policytype);
CREATE INDEX IF NOT EXISTS indx_beneficiary_02 ON beneficiary (policyno);
CREATE INDEX IF NOT EXISTS indx_beneficiary_03 ON beneficiary (sequence);
CREATE INDEX IF NOT EXISTS indx_beneficiary_04 ON beneficiary (policytype, policyno, sequence);

CREATE INDEX IF NOT EXISTS indx_address_01 ON address (addressid);

CREATE INDEX IF NOT EXISTS indx_ordmast_01 ON ordmast (policyno);
CREATE INDEX IF NOT EXISTS indx_ordmast_02 ON ordmast (nameid);
CREATE INDEX IF NOT EXISTS indx_ordmast_03 ON ordmast (rpno);
CREATE INDEX IF NOT EXISTS indx_ordmast_04 ON ordmast (policyno,nameid,rpno);

CREATE INDEX IF NOT EXISTS indx_rider_01 ON rider (policyno);
CREATE INDEX IF NOT EXISTS indx_rider_02 ON rider (ridertype);
CREATE INDEX IF NOT EXISTS indx_rider_03 ON rider (policyno, ridertype);
/*
CREATE INDEX IF NOT EXISTS indx_orctrl_01 ON (rpno);
CREATE INDEX IF NOT EXISTS indx_orctrl_02 ON (policyno);
CREATE INDEX IF NOT EXISTS indx_orctrl_03 ON (rpno,policyno);

CREATE INDEX IF NOT EXISTS indx_rprider_01 ON (rpno);
CREATE INDEX IF NOT EXISTS indx_rprider_02 ON (seqno);
CREATE INDEX IF NOT EXISTS indx_rprider_03 ON (rpno,seqno);*/

CREATE INDEX IF NOT EXISTS indx_extrapremium_01 ON extrapremium (policyno);
CREATE INDEX IF NOT EXISTS indx_extrapremium_02 ON extrapremium (extratype);
CREATE INDEX IF NOT EXISTS indx_extrapremium_03 ON extrapremium (startyear);
CREATE INDEX IF NOT EXISTS indx_extrapremium_04 ON extrapremium (policyno,extratype,startyear);

CREATE INDEX IF NOT EXISTS indx_remark_01 ON remark (policyno);
CREATE INDEX IF NOT EXISTS indx_remark_02 ON remark (department);
CREATE INDEX IF NOT EXISTS indx_remark_03 ON remark (sequence);
CREATE INDEX IF NOT EXISTS indx_remark_04 ON remark (policyno,department,sequence);

CREATE INDEX IF NOT EXISTS indx_claim_01 ON claim (claimtype);
CREATE INDEX IF NOT EXISTS indx_claim_02 ON claim (msttype);
CREATE INDEX IF NOT EXISTS indx_claim_03 ON claim (policyno);
CREATE INDEX IF NOT EXISTS indx_claim_04 ON claim (claimtype,msttype,policyno);

CREATE INDEX IF NOT EXISTS indx_eclm_01 ON eclm (sectioncode);
CREATE INDEX IF NOT EXISTS indx_eclm_02 ON eclm (orderno);
CREATE INDEX IF NOT EXISTS indx_eclm_03 ON eclm (claimtype);
CREATE INDEX IF NOT EXISTS indx_eclm_04 ON eclm (sectioncode,orderno,claimtype);

CREATE INDEX IF NOT EXISTS indx_dthordo_01 ON dthordo (policyno);
CREATE INDEX IF NOT EXISTS indx_dthordo_02 ON dthordo (sectioncode);
CREATE INDEX IF NOT EXISTS indx_dthordo_03 ON dthordo (orderno);
CREATE INDEX IF NOT EXISTS indx_dthordo_04 ON dthordo (receivedate);
CREATE INDEX IF NOT EXISTS indx_dthordo_05 ON dthordo (accidentdate);
CREATE INDEX IF NOT EXISTS indx_dthordo_06 ON dthordo (policyno, sectioncode, orderno);

CREATE INDEX IF NOT EXISTS indx_ridordo_01 ON ridordo (policyno);
CREATE INDEX IF NOT EXISTS indx_ridordo_02 ON ridordo (receivedate);
CREATE INDEX IF NOT EXISTS indx_ridordo_03 ON ridordo (ridertype);
CREATE INDEX IF NOT EXISTS indx_ridordo_04 ON ridordo (policyno,receivedate,ridertype);

CREATE INDEX IF NOT EXISTS indx_dhsordo_01 ON dhsordo (policyno);
CREATE INDEX IF NOT EXISTS indx_dhsordo_02 ON dhsordo (seqno);
CREATE INDEX IF NOT EXISTS indx_dhsordo_03 ON dhsordo (receivedate);
CREATE INDEX IF NOT EXISTS indx_dhsordo_04 ON dhsordo (policyno, seqno,receivedate);

CREATE INDEX IF NOT EXISTS indx_bnfordo_01 ON bnfordo (policyno);
CREATE INDEX IF NOT EXISTS indx_bnfordo_02 ON bnfordo (seqno);
CREATE INDEX IF NOT EXISTS indx_bnfordo_03 ON bnfordo (receivedate);
CREATE INDEX IF NOT EXISTS indx_bnfordo_04 ON bnfordo (policyno,seqno,receivedate);

CREATE INDEX IF NOT EXISTS indx_oacm_01 ON oacm (policyno);
CREATE INDEX IF NOT EXISTS indx_oacm_02 ON oacm (sectioncode);
CREATE INDEX IF NOT EXISTS indx_oacm_03 ON oacm (orderno);
CREATE INDEX IF NOT EXISTS indx_oacm_04 ON oacm (accidentdate);
CREATE INDEX IF NOT EXISTS indx_oacm_05 ON oacm (receivedate);
CREATE INDEX IF NOT EXISTS indx_oacm_06 ON oacm (policyno, sectioncode, orderno,accidentdate,receivedate);

CREATE INDEX IF NOT EXISTS indx_hordods_01 ON hordods (policyno);
CREATE INDEX IF NOT EXISTS indx_hordods_02 ON hordods (seqno);
CREATE INDEX IF NOT EXISTS indx_hordods_03 ON hordods (accidentdate);
CREATE INDEX IF NOT EXISTS indx_hordods_04 ON hordods (receivedate);
CREATE INDEX IF NOT EXISTS indx_hordods_05 ON hordods (policyno,seqno,accidentdate,receivedate);

CREATE INDEX IF NOT EXISTS indx_pay_01 ON pay (sectioncode);
CREATE INDEX IF NOT EXISTS indx_pay_02 ON pay (orderno);
CREATE INDEX IF NOT EXISTS indx_pay_03 ON pay (paytype);
CREATE INDEX IF NOT EXISTS indx_pay_04 ON pay (sectioncode, orderno, paytype);

CREATE INDEX IF NOT EXISTS indx_insmemo_01 ON insmemo (claimtype);
CREATE INDEX IF NOT EXISTS indx_insmemo_02 ON insmemo (msttype);
CREATE INDEX IF NOT EXISTS indx_insmemo_03 ON insmemo (policyno);
CREATE INDEX IF NOT EXISTS indx_insmemo_04 ON insmemo (accidentdate);
CREATE INDEX IF NOT EXISTS indx_insmemo_05 ON insmemo (receivedate);
CREATE INDEX IF NOT EXISTS indx_insmemo_06 ON insmemo (claimtype, msttype, policyno,accidentdate,receivedate);

CREATE INDEX IF NOT EXISTS indx_voiordo_01 ON voiordo (claimtype);
CREATE INDEX IF NOT EXISTS indx_voiordo_02 ON voiordo (policyno);
CREATE INDEX IF NOT EXISTS indx_voiordo_03 ON voiordo (accidentdate);
CREATE INDEX IF NOT EXISTS indx_voiordo_04 ON voiordo (receivedate);
CREATE INDEX IF NOT EXISTS indx_voiordo_05 ON voiordo (claimtype,policyno,accidentdate,receivedate);

CREATE INDEX IF NOT EXISTS indx_cmem_01 ON cmem (sectioncode);
CREATE INDEX IF NOT EXISTS indx_cmem_02 ON cmem (orderno);
CREATE INDEX IF NOT EXISTS indx_cmem_03 ON cmem (seqno);
CREATE INDEX IF NOT EXISTS indx_cmem_04 ON cmem (sectioncode, orderno, seqno);

CREATE INDEX IF NOT EXISTS indx_odis_01 ON odis (policyno);
CREATE INDEX IF NOT EXISTS indx_odis_02 ON odis (accidentdate);
CREATE INDEX IF NOT EXISTS indx_odis_03 ON odis (receivedate);
CREATE INDEX IF NOT EXISTS indx_odis_04 ON odis (policyno, accidentdate, receivedate);

CREATE INDEX IF NOT EXISTS indx_ords_01 ON ords (policyno);
CREATE INDEX IF NOT EXISTS indx_ords_02 ON ords (accidentdate);
CREATE INDEX IF NOT EXISTS indx_ords_03 ON ords (receivedate);
CREATE INDEX IF NOT EXISTS indx_ords_04 ON ords (ridertype);
CREATE INDEX IF NOT EXISTS indx_ords_05 ON ords (policyno,accidentdate,receivedate,ridertype);


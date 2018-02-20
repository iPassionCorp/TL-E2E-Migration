select count (0) from dm.mgclaim;
select count (0) from dm.mgorder;
select count (0) from tlp.claimregisterheader;
select count (0) from tlp.claimregisterdetail;

--mgorder master
SELECT ch.*, cd.* 
FROM dm.mgorder o 
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
	ON (cd.registerseq = ch.registerseq 
	    and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4)  = o.orderno);

--1. mgorder section code
select count(0) 
from dm.mgorder o
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4)  = o.orderno)
where o.sectioncode <> '95' or trim(o.sectioncode) <> '95';

--2. mgorder orderNo
SELECT count (0) 
FROM dm.mgorder o 
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4)  = o.orderno)
where o.orderno <> substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4);

--3. mgorder receive time
select count(0) 
from dm.mgorder o
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4)  = o.orderno)
where o.receivetime <> '000000' or trim(o.receivetime) <> '000000';



--4. mgorder causeCode ==> Defect
SELECT o.sectioncode, o.orderno, o.causecode, cd.regdtlclaimcausecode
FROM dm.mgorder o 
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4) = o.orderno)
where trim (cd.regdtlclaimcausecode) = '' and o.causecode not like '%TLP%';

--6. mgorder receiverID ==> Defect
SELECT o.sectioncode, o.orderno, o.receiverid, cd.regdtlregister
FROM dm.mgorder o 
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4) = o.orderno)
where o.receiverid <> cd.regdtlregister;

SELECT o.sectioncode, o.orderno, o.receiverid, cd.regdtlregister
FROM dm.mgorder o 
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4) = o.orderno)
where o.receiverid = cd.regdtlregister;

--7. mgorder considerID
select count(0) 
FROM dm.mgorder o 
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4) = o.orderno)
where o.considerid <> cd.regdtlapproval;

--8. mgorder admitDate
SELECT count(0)  
FROM dm.mgorder o 
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4) = o.orderno)
where o.admitdate <> cd.regdtldateofadmission ;

--10. mgorder billingOrderNo
select count(0) 
from dm.mgorder o
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4)  = o.orderno) 
where o.billingorderno <> '' or trim(o.billingorderno) <> '';


--11. mgorder interimFlag
select count(0)   
from dm.mgorder o
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4)  = o.orderno) 
where o.interimflag <> 'N' or trim(o.interimflag) <> 'N';

--13. mgorder receiveDocDate
SELECT count(0) 
FROM dm.mgorder o 
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4)  = o.orderno) 
where trim (cd.regdtlinterest) <> '0.00' and o.receivedocdate <> cd.regdtldateofcompletedoc;

SELECT count(0) 
FROM dm.mgorder o 
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4)  = o.orderno) 
where trim (cd.regdtlinterest) = '0.00' and o.receivedocdate <> '00000000';

--14. mgorder calSurDate
select count(0)  
from dm.mgorder o
JOIN dm.mgclaim mgc ON mgc.orderno = o.orderno and mgc.sectioncode = o.sectioncode
JOIN dm.certmapping cm ON (cm.certno = mgc.certno) 
JOIN tlp.claimregisterheader ch ON (ch.regcustomercertificateno = cm.rcertno) 
JOIN tlp.claimregisterdetail cd 
		ON (cd.registerseq = ch.registerseq 
	    		and substring(regdtlclaimno, 1, 2) || 'CP' || substring(regdtlclaimno, 6, 4)  = o.orderno) 
where o.calsurdate <> '00000000' or trim(o.calsurdate) <> '00000000';
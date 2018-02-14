--Total Premium
SELECT --count(0) 
info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.totpremium
FROM tlp.splitpremiumamount prem  
join tlp.customerinfo info 
	on prem.grouppolicyno = info.policyno 
	and prem.customercode = info.customercode 
	and prem.productid = info.productcode
where prem.totpremium = '0.00' and customerstatus in (select customerstatus from lookup.tlppolicystatus)
order by info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.totpremium
;

--Life Premium
SELECT --count(0) 
info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.lifepremium, prem.deathpremium
FROM tlp.splitpremiumamount prem  
join tlp.customerinfo info 
	on prem.grouppolicyno = info.policyno 
	and prem.customercode = info.customercode 
	and prem.productid = info.productcode
where prem.lifepremium = '0.00' and prem.deathpremium = '0.00' 
and customerstatus in (select customerstatus from lookup.tlppolicystatus)
order by info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.lifepremium
;

--TPD Premium
SELECT --count(0) 
info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.tpdpremium
FROM tlp.splitpremiumamount prem  
join tlp.customerinfo info 
	on prem.grouppolicyno = info.policyno 
	and prem.customercode = info.customercode 
	and prem.productid = info.productcode
join (select * from lookup.smi where coverage = 'TPD') b 
	on trim (prem.grouppolicyno) = trim (b.tlpplancode)
	and trim (info.policyno) = trim (b.tlpplancode)
where prem.tpdpremium = '0.00' 
and info.policyno not in ('00019004', '00019005', '00019006')
and customerstatus in (select customerstatus from lookup.tlppolicystatus)
order by info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.tpdpremium
;

--TD Premium
SELECT count(0) 
--info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.tdpremium
FROM tlp.splitpremiumamount prem  
join tlp.customerinfo info 
	on prem.grouppolicyno = info.policyno 
	and prem.customercode = info.customercode 
	and prem.productid = info.productcode
join (select * from lookup.smi where coverage = 'TD') b 
	on trim (prem.grouppolicyno) = trim (b.tlpplancode)
	and trim (info.policyno) = trim (b.tlpplancode)
where prem.tdpremium = '0.00' and customerstatus in (select customerstatus from lookup.tlppolicystatus)
--order by info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.tdpremium
;

--ADD Premium
SELECT --count(0) 
info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.addpremium
FROM tlp.splitpremiumamount prem  
join tlp.customerinfo info 
	on prem.grouppolicyno = info.policyno 
	and prem.customercode = info.customercode 
	and prem.productid = info.productcode
join (select * from lookup.smi where coverage = 'ADD') b 
	on trim (prem.grouppolicyno) = trim (b.tlpplancode)
	and trim (info.policyno) = trim (b.tlpplancode)
where prem.addpremium = '0.00' and customerstatus in (select customerstatus from lookup.tlppolicystatus)
order by info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.addpremium
;

--AME Premium
SELECT count(0) 
--info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.mepremium
FROM tlp.splitpremiumamount prem  
join tlp.customerinfo info 
	on prem.grouppolicyno = info.policyno 
	and prem.customercode = info.customercode 
	and prem.productid = info.productcode
join (select * from lookup.smi where coverage = 'AME') b 
	on trim (prem.grouppolicyno) = trim (b.tlpplancode)
	and trim (info.policyno) = trim (b.tlpplancode)
where prem.mepremium = '0.00' and customerstatus in (select customerstatus from lookup.tlppolicystatus)
--order by info.productcode, info.policyno, info.certificateno, info.customercode, info.customerstatus, prem.mepremium
;

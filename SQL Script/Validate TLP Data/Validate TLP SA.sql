--Validate Life Benefit
select --count (0) 
a.policyno, info.certificateno, info.customercode, info.sa as info_sa, a.sa_life, b.benefit,  info.customerstatus,
ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100)) as validate,
ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100))  - to_number(a.sa_life, '99999999999.99') as diff
from tlp.customerinfo info 
join tlp.customersa a 
	on a.policyno = info.policyno 
	and a.customercode = info.customercode
inner join (select * from lookup.smi where coverage = 'LIFE') b 
	on trim (a.policyno) = trim (b.tlpplancode)
	and trim(a.policyno) = trim(info.policyno) 
where 1=1 
and info.customerstatus in (select customerstatus from lookup.tlppolicystatus) 
--and abs (ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100))  - to_number(a.sa_life, '99999999999.99')) <> 1
and to_number(a.sa_life, '99999999999.99') <> ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100));


--Validate Rider TPD
select --count (0) 
a.policyno, info.certificateno, a.customercode, info.sa as info_sa, a.sa_tpd, b.benefit,  
ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100)) as validate,
ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100)) - to_number(a.sa_tpd, '99999999999.99') as diff
from tlp.customerinfo info 
join tlp.customersa a 
	on a.policyno = info.policyno 
	and a.customercode = info.customercode
inner join (select * from lookup.smi where coverage = 'TPD') b 
	on trim (a.policyno) = trim (b.tlpplancode) 
	and trim(info.policyno) = trim(b.tlpplancode) 
where info.customerstatus in (select customerstatus from lookup.tlppolicystatus) 
--and abs(ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100)) - to_number(a.sa_tpd, '99999999999.99')) <> 1
and to_number(a.sa_tpd, '99999999999.99') <> ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100));

--Validate Rider TD
select count (0)
/*
a.policyno, a.customercode, info.sa as info_sa, a.sa as sa_sa, a.sa_td, 
b.benefit, to_number(info.durationinsurance, '99') as durationinsurance,
ceiling ((to_number(info.sa, '99999999999.99') * (b.benefit/100)) / (to_number(info.durationinsurance, '99') * 12 )) as validate,
ceiling ((to_number(info.sa, '99999999999.99') * (b.benefit/100)) / (to_number(info.durationinsurance, '99') * 12 )) - 
to_number(a.sa_td, '99999999999.99') as diff*/
from tlp.customerinfo info 
join tlp.customersa a 
	on a.policyno = info.policyno 
	and a.customercode = info.customercode
inner join (select * from lookup.smi where coverage = 'TD') b 
	on trim (a.policyno) = trim (b.tlpplancode)
	and trim(info.policyno) = trim (b.tlpplancode) 
where 1=1 
and info.customerstatus in (select customerstatus from lookup.tlppolicystatus) 
--and abs(ceiling ((to_number(info.sa, '99999999999.99') * (b.benefit/100)) / (to_number(info.durationinsurance, '99') * 12 )) - to_number(a.sa_td, '99999999999.99')) <> 1
and to_number(a.sa_td, '99999999999.99') <> ceiling ((to_number(info.sa, '99999999999.99') * (b.benefit/100)) / (to_number(info.durationinsurance, '99') * 12 )) ;

--Validate Rider ADD-ML46
select --count (0) 
a.policyno, a.customercode, info.sa as info_sa, a.sa as sa_sa, a.sa_add, b.benefit,  
b.benefit as validate, to_number(info.sa, '99999999999.99') - b.benefit as diff
from tlp.customerinfo info 
join tlp.customersa a 
	on a.policyno = info.policyno 
	and a.customercode = info.customercode
inner join (select * from lookup.smi where coverage = 'ADD' and tlipolicy = 'ML46') b 
	on trim (a.policyno) = trim (b.tlpplancode)
	and trim(info.policyno) = trim(b.tlpplancode) 
where 1=1 
and info.customerstatus in (select customerstatus from lookup.tlppolicystatus) 
and to_number(a.sa_add, '99999999999.99') <> b.benefit;

--Validate Rider ADD-LE31
select --count (0) 
a.policyno, a.customercode, info.sa as info_sa, a.sa as sa_sa, a.sa_add, b.benefit,  
b.benefit as validate, to_number(info.sa, '99999999999.99') - b.benefit as diff
from tlp.customerinfo info 
join tlp.customersa a 
	on a.policyno = info.policyno 
	and a.customercode = info.customercode
inner join (select * from lookup.smi where coverage = 'ADD' and tlipolicy = 'LE31') b 
	on trim (a.policyno) = trim (b.tlpplancode)
	and trim(info.policyno) = trim(b.tlpplancode) 
where 1=1 
and info.customerstatus in (select customerstatus from lookup.tlppolicystatus) 
and to_number(a.sa_add, '99999999999.99') <> b.benefit;

--Validate Rider ADD not ML46, LE31
select --count (0) 
a.policyno, info.certificateno, a.customercode, info.sa as info_sa, a.sa_add, b.benefit,  
ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100)) as validate,
ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100)) - to_number(a.sa_add, '99999999999.99') as diff
from tlp.customerinfo info 
join tlp.customersa a 
	on a.policyno = info.policyno 
	and a.customercode = info.customercode
inner join (select * from lookup.smi where coverage = 'ADD' and tlipolicy not in ('ML46', 'LE31') ) b 
	on trim (a.policyno) = trim (b.tlpplancode)
	and trim(info.policyno) = trim(b.tlpplancode) 
where 1=1 
and info.customerstatus in (select customerstatus from lookup.tlppolicystatus) 
--and abs (ceiling (to_number(a.sa, '99999999999.99') * (b.benefit/100)) - to_number(a.sa_add, '99999999999.99')) <> 1
and to_number(a.sa_add, '99999999999.99') <> ceiling (to_number(info.sa, '99999999999.99') * (b.benefit/100));

--Validate Rider AME
select --count (0) 
a.policyno, info.certificateno, a.customercode, info.sa as info_sa, a.sa_me, b.benefit,  
b.benefit as validate, to_number(info.sa, '99999999999.99') - b.benefit as diff
from tlp.customerinfo info 
join tlp.customersa a 
	on a.policyno = info.policyno 
	and a.customercode = info.customercode 
inner join (select * from lookup.smi where coverage = 'AME') b 
	on trim (a.policyno) = trim (b.tlpplancode)
	and trim(info.policyno) = trim(b.tlpplancode) 
where 1=1 
and info.customerstatus in (select customerstatus from lookup.tlppolicystatus) 
and to_number(a.sa_me, '99999999999.99') <> b.benefit;

--Check customerinfo.sa equals to customersa.sa or not ?
select info.customerstatus, info.sa, a.sa 
from tlp.customerinfo info 
join tlp.customersa a 
	on a.policyno = info.policyno 
	and a.customercode = info.customercode
where 1=1 
and info.customerstatus in (select customerstatus from lookup.tlppolicystatus) 
and to_number(info.sa, '99999999999.99') <> to_number(a.sa, '99999999999.99');
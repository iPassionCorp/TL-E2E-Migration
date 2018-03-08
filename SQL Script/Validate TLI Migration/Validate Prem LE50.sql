--Validate LE50 - TPD Premium 
select count(0)
/*a.policyno, a.certno, 
s.lifepremium as tlp_lifepremium, r.premrate, r.tpdrate, r.totrate,
to_number(a.tpdpremium, '9999999999.99') / 100 as cert_tpdpremium, 
to_number(a.lifepremium, '9999999999.99') / 100 as cert_lifepremium, 
round ((round(to_number(s.lifepremium, '9999999999.99') * r.tpdrate, 4) / r.totrate), 0) as validate_tpd_prem,
to_number(s.lifepremium, '9999999999.99') - round ((round(to_number(s.lifepremium, '9999999999.99') * r.tpdrate, 4) / r.totrate), 0) as validate_life_prem*/
from dm.cert a 
inner join dm.certmapping b on a.certno = b.certno and a.policyno = b.policyno
inner join tlp.customerinfo c on b.rcertno = c.certificateno and b.rpolicyno = c.policyno
inner join tlp.splitpremiumamount s on c.policyno =  s.grouppolicyno  and c.customercode = s.customercode
inner join dm."name" n on a.nameid = n.nameid 
inner join dm.person p on n.personid = p.personid 
inner join lookup.rate_le50 r on r.sex = p.sex and r.term = to_number (c.durationinsurance, '99') and r.age = a.age 
where a.policyno = 'LE50' 
and (to_number(a.tpdpremium, '9999999999.99') / 100) <> round ((round(to_number(s.lifepremium, '9999999999.99') * r.tpdrate, 4) / r.totrate), 0);

--Validate LE50 - Life Premium 
select count(0)
/*a.policyno, a.certno, 
s.lifepremium as tlp_lifepremium, r.premrate, r.tpdrate, r.totrate,
to_number(a.tpdpremium, '9999999999.99') / 100 as cert_tpdpremium, 
to_number(a.lifepremium, '9999999999.99') / 100 as cert_lifepremium, 
round ((round(to_number(s.lifepremium, '9999999999.99') * r.tpdrate, 4) / r.totrate), 0) as validate_tpd_prem,
to_number(s.lifepremium, '9999999999.99') - round ((round(to_number(s.lifepremium, '9999999999.99') * r.tpdrate, 4) / r.totrate), 0) as validate_life_prem*/
from dm.cert a 
inner join dm.certmapping b on a.certno = b.certno and a.policyno = b.policyno
inner join tlp.customerinfo c on b.rcertno = c.certificateno and b.rpolicyno = c.policyno
inner join tlp.splitpremiumamount s on c.policyno =  s.grouppolicyno  and c.customercode = s.customercode
inner join dm."name" n on a.nameid = n.nameid 
inner join dm.person p on n.personid = p.personid 
inner join lookup.rate_le50 r on r.sex = p.sex and r.term = to_number (c.durationinsurance, '99') and r.age = a.age 
where a.policyno = 'LE50' 
and (to_number(a.lifepremium, '9999999999.99') / 100) <> (to_number(s.lifepremium, '9999999999.99') - round ((round(to_number(s.lifepremium, '9999999999.99') * r.tpdrate, 4) / r.totrate), 0));




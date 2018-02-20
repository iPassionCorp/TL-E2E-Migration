select --count(0) 
a.policyno, a.certno, a.amount1 AS masic_amount1, trim(to_char(to_number(c.amount1,'9999999900'),'0000000000')) AS tlp_amount1,
c.customerstatus
from dm.cert a inner join
dm.certmapping b on a.certno = b.certno and a.policyno = b.policyno
inner join tlp.customerinfo c on b.rcertno = c.certificateno and b.rpolicyno = c.policyno 
where a.amount1 <> trim(to_char(to_number(c.amount1,'9999999900'),'0000000000')) 
-- and c.customerstatus in (select customerstatus from lookup.tlppolicystatus) 
-- and a.policyno = 'ML42' and a.certno = '00154395'
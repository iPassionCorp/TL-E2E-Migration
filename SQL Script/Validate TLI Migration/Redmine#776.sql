--RedMine#776
select x.cnt - y.cnt 
from
(select count(0) as cnt from dm.cert a 
inner join dm.certmapping b on a.certno = b.certno) x,
(select count(0) as cnt from dm.detcert a 
inner join dm.certmapping b on a.certno = b.certno) y;

select tmp.* from 
(
(select a.policyno, a.certno from dm.cert a 
inner join dm.certmapping b on a.certno = b.certno)
except
(select a.policyno, a.certno from dm.detcert a 
inner join dm.certmapping b on a.certno = b.certno)
) tmp;



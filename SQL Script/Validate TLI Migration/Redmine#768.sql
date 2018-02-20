select a.policyno, a.certno, c.customerstatus, a.statcer
from dm.cert a inner join
dm.certmapping b on a.certno = b.certno
inner join tlp.customerinfo c on b.rcertno = c.certificateno
where c.customerstatus = 'Cancel (Void)' and a.statcer <> 'V'
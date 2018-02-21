select distinct t.policyno, count(t.certno)
from (
  select cm.certno,cm.policyno
  from tlp.claimregisterheader ch
  join dm.certmapping cm ON (cm.rcertno = ch.regcustomercertificateno)
  join tlp.claimregisterdetail cd ON (cd.registerseq = ch.registerseq)
  
  except all
  
  select cm.certno,cm.policyno
  from dm.mgclaim mc
  join dm.certmapping cm ON (cm.certno = mc.certno)
  ) t
group by t.policyno
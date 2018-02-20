SELECT lk.certnohp,lk.certnocp, lk.policynohp , lk.policynocp, m.linkerno --count(*)
--select distinct m.linkerno
FROM dm.mgclaim m
JOIN dm.certmapping cm ON (cm.certno = m.certno AND cm.policyno = m.policyno)
JOIN dm.certlinker lk ON (cm.certno = lk.certnohp AND cm.policyno = lk.policynohp)
JOIN tlp.claimregisterheader h ON (h.regcustomercertificateno = cm.rcertno)
JOIN tlp.claimregisterdetail d ON (d.registerseq = h.registerseq AND m.orderno = substring(d.regdtlclaimno,1,2) || 'CP'||substring(d.regdtlclaimno,6,4))
WHERE trim(m.linkerno) <> '';
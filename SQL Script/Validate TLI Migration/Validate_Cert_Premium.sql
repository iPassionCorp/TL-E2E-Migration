select
	a.policyno, a.certno, a.lifepremium, 
	lpad(cast(cast(cast(tmp.lifepremium as decimal)*100 as int) as text),10,'0') as validate1,
	lpad(cast(cast(cast(tmp.deathpremium as decimal)*100 as int) as text),10,'0') as validate2
from
	dm.cert a
inner join dm.certmapping b on
	a.certno = b.certno
inner join(
		select
			c.policyno,
			c.certificateno,
			c.customercode,
			p.lifepremium,
			p.deathpremium,
			c.customerstatus 
		from
			tlp.customerinfo c
		join tlp.splitpremiumamount p on
			c.policyno = p.grouppolicyno
			and c.customercode = p.customercode
	) tmp on
	b.rcertno = tmp.certificateno
where
	a.policyno not in ('LE49','LE50','LE51') 
	and tmp.customerstatus in (select customerstatus from lookup.tlppolicystatus)
	and a.lifepremium <> 
		( case when lpad(cast(cast(cast(tmp.lifepremium as decimal)*100 as int) as text),10,'0') = '0000000000' 
			then lpad(cast(cast(cast(tmp.deathpremium as decimal)*100 as int) as text),10,'0') 
			else lpad(cast(cast(cast(tmp.lifepremium as decimal)*100 as int) as text),10,'0')
		  end
		)
select policyno as "TLP policy", tlipolicy as "TLI Policy", "source" as "TLP Records", target as "Migrate Success" ,  
"source" - target as "Reject Record"
from validate.numberofrecords 
--where "source" - target <> 0;
SELECT policyno, tlipolicy, "source", target, "source"- target--to_number ("source", '999999') - to_number (target, '999999')
FROM validate.numberofrecords 
where "source"- target <> 0;

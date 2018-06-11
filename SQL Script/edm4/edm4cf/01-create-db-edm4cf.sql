/*DROP DATABASE IF EXISTS edm4cf;
CREATE DATABASE edm4cf
    TEMPLATE = template0
    ENCODING = UTF8
    LC_COLLATE = 'th_TH.UTF8'
    LC_CTYPE   = 'th_TH.UTF8';*/

DROP SCHEMA IF EXISTS tlp CASCADE;
DROP SCHEMA IF EXISTS dm CASCADE;
DROP SCHEMA IF EXISTS tlitext CASCADE;
DROP SCHEMA IF EXISTS lookup CASCADE;

CREATE SCHEMA tlp;
CREATE SCHEMA dm;
CREATE SCHEMA tlitext;
CREATE SCHEMA lookup;

CREATE TABLE dm.compensateid (
	compensateid text NULL,
	referenceid text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.customer (
	customerid text NULL,
	referenceid text NULL,
	referencetype text NULL,
	birthdate text NULL,
	sex text NULL,
	contactnameid text NULL,
	contactaddressid text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm."name" (
	nameid text NULL,
	personid text NULL,
	prename text NULL,
	firstname text NULL,
	lastname text NULL,
	startdate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.person (
	personid text NULL,
	referenceid text NULL,
	referencetype text NULL,
	birthdate text NULL,
	sex text NULL,
	customerid text NULL,
	bluecard text NULL,
	reserve text NULL
)
WITH (
	OIDS=FALSE
) ;
CREATE TABLE dm.policy (
	policyno text NULL,
	rate text NULL,
	"name" text NULL,
	"type" text NULL,
	effectivedate text NULL,
	planname text NULL,
	riderplan text NULL,
	tlbranch text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.cert (
	policyno text NULL,
	certno text NULL,
	appno text NULL,
	reqdate text NULL,
	nameid text NULL,
	age text NULL,
	smi text NULL,
	lifesum text NULL,
	accidentsum text NULL,
	period text NULL,
	loan_term text NULL,
	lifepremium text NULL,
	extrapremium text NULL,
	tpdpremium text NULL,
	extratpdpremium text NULL,
	addpremium text NULL,
	em text NULL,
	tpd text NULL,
	effectivedate text NULL,
	maturedate text NULL,
	premiumdate text NULL,
	certyyyymm text NULL,
	statcer text NULL,
	statcer2 text NULL,
	statdate2 text NULL,
	informdate1 text NULL,
	paydate1 text NULL,
	amount1 text NULL,
	informdate2 text NULL,
	paydate2 text NULL,
	amount2 text NULL,
	deaddate text NULL,
	endownmentyear text NULL,
	deadcause text NULL,
	receiptflag text NULL,
	referenceno text NULL,
	reserve text NULL,
	mode text NULL,
	payperiod text NULL,
	rpno text NULL,
	statdate1 text NULL,
	oldstatcert1 text NULL,
	oldstatcert2 text NULL,
	oldstatcertdate1 text NULL,
	oldstatcertdate2 text NULL,
	package text NULL,
	duedate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.detcert (
	policyno text NULL,
	certno text NULL,
	code text NULL,
	address1 text NULL,
	address2 text NULL,
	telephoneno text NULL,
	mariagestatus text NULL,
	recname1 text NULL,
	percent1 text NULL,
	relationshipcode1 text NULL,
	recname2 text NULL,
	percent2 text NULL,
	relationshipcode2 text NULL,
	recname3 text NULL,
	percent3 text NULL,
	relationshipcode3 text NULL,
	analist text NULL,
	prmiseno text NULL,
	prmiseno2 text NULL,
	loantype text NULL,
	med text NULL,
	reserve text NULL
)
WITH (
	OIDS=FALSE
) ;
CREATE TABLE dm.certrider (
	policyno text NULL,
	certno text NULL,
	ridertype text NULL,
	sum text NULL,
	premium text NULL,
	extrapremium text NULL,
	riderstatus text NULL,
	riderstatusdate text NULL,
	effectivedate text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE dm.certlinker (
	policynohp text NULL,
	certnohp text NULL,
	policynocp text NULL,
	certnocp text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.clrctrl (
	rpno text NULL,
	policyno text NULL,
	certno text NULL,
	effectivedate text NULL, 
	payperiod text NULL,
	paydate text NULL,
	premium text NULL,
	extraprem text NULL,
	sysdate text NULL,
	currentstatus text NULL,
	originalstatus text NULL,
	mode text NULL,
	time text NULL,
	requestdate text NULL,
	submitno text NULL,
	graceperiod text NULL,
	printeddate text NULL,
	submitbranch text NULL,
	userid text NULL,
	reasoncode text NULL,
	moneyok text NULL


)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.clrprider (
	rpno text NULL,
	ridertype text NULL,
	riderpremium text NULL,
	extrapremium text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.certmapping (
	policyno text NULL,
	certno text NULL,
	rpolicyno text NULL,
	rcertno text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mgclaim (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	claimtype text NULL,
	sectioncode text NULL,
	orderno text NULL,
	referenceno text NULL,
	linkerno text NULL,
	okdate text NULL,
	policyno text NULL,
	ismigration text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mgorder (
	sectioncode text NULL,
	orderno text NULL,
	receivetime text NULL,
	causecode text NULL,
	causedetail text NULL,
	receiverid text NULL,
	considerid text NULL,
	admitdate text NULL,
	admitflag text NULL,
	billingorderno text NULL,
	interimflag text NULL,
	hospitalcode text NULL,
	receivedocdate text NULL,
	calsurdate text NULL,
	causecode2 text NULL,
	causedetail2 text NULL,
	pureaccidentflag text NULL,
	icudays text NULL,
	rbdays text NULL,
	doctorcode text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mgcfpolicy (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	sectioncode text NULL,
	orderno text NULL,
	policystatus text NULL,
	policystatusdate text NULL,
	policystatus2 text NULL,
	policystatusdate2 text NULL,
	branchcode text NULL,
	servicebranch text NULL,
	proofinsuredage text NULL,
	claimokdate text NULL,
	claimpaydate text NULL,
	surrenderamount text NULL,
	returnamount text NULL,
	deductamount text NULL,
	voiddate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mgcfpay (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	ridertype text NULL,
	period text NULL,
	disnumber text NULL,
	payrate text NULL,
	organ text NULL,
	payamount text NULL,
	ridersum text NULL,
	expense text NULL,
	days text NULL,
	startdate text NULL

)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mghis (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	claimtype text NULL,
	seqno text NULL,
	remarkdate text NULL,
	remarkno text NULL,
	remark text NULL,
	employeeid text NULL,
	rectime text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mginsmemo (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	memocode text NULL,
	detail1 text NULL,
	detail2 text NULL,
	savedate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mginterest (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	ridertype text NULL,
	paytype text NULL,
	startdate text NULL,
	enddate text NULL,
	"day" text NULL,
	payamount text NULL,
	interestamount text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mgreceiver (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	seqno text NULL,
	prename text NULL,
	firstname text NULL,
	lastname text NULL,
	"type" text NULL,
	payamount text NULL,
	address text NULL,
	tumbon text NULL,
	zipcode text NULL,
	mobilephone text NULL,
	citizenid text NULL,
	paytype text NULL,
	banktype text NULL,
	bankcode text NULL,
	bankbranch text NULL,
	bankaccount text NULL,
	guardianbeneficiary text NULL,
	ispay text NULL,
	haveindicia text NULL,
	countrycode text NULL,
	claimpaydate text NULL,
	bookstatus text NULL,
	chqdate text NULL,
	chqno text NULL,
	docno text NULL,
	isbeneficiarykilled text NULL,
	birthdate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.queue(
	considerid text NULL,
	queuetype text NULL,
	jobtype text NULL,
	jobcode text NULL,
	offerdate text NULL,
	referenceno text NULL,
	receivedate text NULL,
	modifydate text NULL,
	modifytime text NULL,
	status text NULL,
	xconsiderid text NULL,
	firstjobtype text NULL,
	firstjobcode text NULL,
	firstxconsiderid text NULL,
	firstofferdate text NULL

)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.icd10(
	code text NULL,                   
	detail1 text NULL,                               
	detail2 text NULL,
	illnesscode text NULL,
	rangeofstay text NULL,             
	isicd10 text NULL,
	keyword text NULL,
	simpledisease text NULL,
	deadlydisease text NULL

)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.hospital(
	code text NULL,                    
	prename text NULL, 
	name text NULL,               
	company text NULL,
	address1 text NULL,            
	address2 text NULL,
	paytype text NULL,
	zone text NULL,             
	level text NULL,
	informalrecordexpense text NULL,
	istlmedicarehospital text NULL,
	istlmedicaredate text NULL,
	fax1 text NULL,
	extensionfax1 text NULL,                              
	fax2 text NULL,                
	extensionfax2 text NULL,
	incomingfax1 text NULL,
	incomingfax2 text NULL,
	ipdright text NULL,
	ipdrightdate text NULL,
	opdright text NULL,
    opdrightdate text NULL,
	incomingfax3 text NULL,
	incomingfax4 text NULL,
	incomingfax5 text NULL,
	incomingfax6 text NULL,
	showhospitalname text NULL,
	formalrecordexpense text NULL,
    email1 text NULL,
    email2 text NULL,
    email3 text NULL,
    email4 text NULL,
    sendemail1 text NULL,
    sendemail2 text NULL,
    sendemail3 text NULL,
    sendemail4 text NULL,
    automate text NULL,
    isstricthospital text NULL,
	recorddate text NULL,
    recordid text NULL

)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.tlpmigration (
 customercode text NULL,
 tlppolicyno text NULL,
 tlpcertno text NULL,
 tlpplanno text NULL,
 tlpproductname text NULL,
 tlipolicyno text NULL,
 migrateplancode text NULL,
 migrateplanno text NULL,
 tmoplancode text NULL,
 tmoplanno text NULL,
 family text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.compensateid (
	compensateid text NULL,
	referenceid text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.customer (
	customerid text NULL,
	referenceid text NULL,
	referencetype text NULL,
	birthdate text NULL,
	sex text NULL,
	contactnameid text NULL,
	contactaddressid text NULL
)
WITH (
	OIDS=FALSE
) ;
CREATE TABLE tlitext."name" (
	nameid text NULL,
	personid text NULL,
	prename text NULL,
	firstname text NULL,
	lastname text NULL,
	startdate text NULL
)
WITH (
	OIDS=FALSE
) ;
CREATE TABLE tlitext.person (
	personid text NULL,
	referenceid text NULL,
	referencetype text NULL,
	birthdate text NULL,
	sex text NULL,
	customerid text NULL,
	bluecard text NULL,
	reserve text NULL
)
WITH (
	OIDS=FALSE
) ;
CREATE TABLE tlitext.policy (
	policyno text NULL,
	rate text NULL,
	"name" text NULL,
	"type" text NULL,
	effectivedate text NULL,
	planname text NULL,
	riderplan text NULL,
	tlbranch text NULL
)
WITH (
	OIDS=FALSE
) ;
CREATE TABLE tlitext.cert (
	policyno text NULL,
	certno text NULL,
	appno text NULL,
	reqdate text NULL,
	nameid text NULL,
	age text NULL,
	smi text NULL,
	lifesum text NULL,
	accidentsum text NULL,
	period text NULL,
	loan_term text NULL,
	lifepremium text NULL,
	extrapremium text NULL,
	tpdpremium text NULL,
	extratpdpremium text NULL,
	addpremium text NULL,
	em text NULL,
	tpd text NULL,
	effectivedate text NULL,
	maturedate text NULL,
	premiumdate text NULL,
	certyyyymm text NULL,
	statcer text NULL,
	statcer2 text NULL,
	statdate2 text NULL,
	informdate1 text NULL,
	paydate1 text NULL,
	amount1 text NULL,
	informdate2 text NULL,
	paydate2 text NULL,
	amount2 text NULL,
	deaddate text NULL,
	endownmentyear text NULL,
	deadcause text NULL,
	receiptflag text NULL,
	referenceno text NULL,
	reserve text NULL,
	mode text NULL,
	payperiod text NULL,
	rpno text NULL,
	statdate1 text NULL,
	oldstatcert1 text NULL,
	oldstatcert2 text NULL,
	oldstatcertdate1 text NULL,
	oldstatcertdate2 text NULL,
	package text NULL,
	duedate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.detcert (
	policyno text NULL,
	certno text NULL,
	code text NULL,
	address1 text NULL,
	address2 text NULL,
	telephoneno text NULL,
	mariagestatus text NULL,
	recname1 text NULL,
	percent1 text NULL,
	relationshipcode1 text NULL,
	recname2 text NULL,
	percent2 text NULL,
	relationshipcode2 text NULL,
	recname3 text NULL,
	percent3 text NULL,
	relationshipcode3 text NULL,
	analist text NULL,
	prmiseno text NULL,
	prmiseno2 text NULL,
	loantype text NULL,
	med text NULL,
	reserve text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.certrider (
	policyno text NULL,
	certno text NULL,
	ridertype text NULL,
	sum text NULL,
	premium text NULL,
	extrapremium text NULL,
	riderstatus text NULL,
	riderstatusdate text NULL,
	effectivedate text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.certlinker (
	policynohp text NULL,
	certnohp text NULL,
	policynocp text NULL,
	certnocp text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.clrctrl (
	rpno text NULL,
	policyno text NULL,
	certno text NULL,
	effectivedate text NULL, 
	payperiod text NULL,
	paydate text NULL,
	premium text NULL,
	extraprem text NULL,
	sysdate text NULL,
	currentstatus text NULL,
	originalstatus text NULL,
	mode text NULL,
	time text NULL,
	requestdate text NULL,
	submitno text NULL,
	graceperiod text NULL,
	printeddate text NULL,
	submitbranch text NULL,
	userid text NULL,
	reasoncode text NULL,
	moneyok text NULL


)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.clrprider (
	rpno text NULL,
	ridertype text NULL,
	riderpremium text NULL,
	extrapremium text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.certmapping (
	policyno text NULL,
	certno text NULL,
	rpolicyno text NULL,
	rcertno text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgclaim (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	claimtype text NULL,
	sectioncode text NULL,
	orderno text NULL,
	referenceno text NULL,
	linkerno text NULL,
	okdate text NULL,
	policyno text NULL,
	ismigration text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgorder (
	sectioncode text NULL,
	orderno text NULL,
	receivetime text NULL,
	causecode text NULL,
	causedetail text NULL,
	receiverid text NULL,
	considerid text NULL,
	admitdate text NULL,
	admitflag text NULL,
	billingorderno text NULL,
	interimflag text NULL,
	hospitalcode text NULL,
	receivedocdate text NULL,
	calsurdate text NULL,
	causecode2 text NULL,
	causedetail2 text NULL,
	pureaccidentflag text NULL,
	icudays text NULL,
	rbdays text NULL,
	doctorcode text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgcfpolicy (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	sectioncode text NULL,
	orderno text NULL,
	policystatus text NULL,
	policystatusdate text NULL,
	policystatus2 text NULL,
	policystatusdate2 text NULL,
	branchcode text NULL,
	servicebranch text NULL,
	proofinsuredage text NULL,
	claimokdate text NULL,
	claimpaydate text NULL,
	surrenderamount text NULL,
	returnamount text NULL,
	deductamount text NULL,
	voiddate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgcfpay (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	ridertype text NULL,
	period text NULL,
	disnumber text NULL,
	payrate text NULL,
	organ text NULL,
	payamount text NULL,
	ridersum text NULL,
	expense text NULL,
	days text NULL,
	startdate text NULL

)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mghis (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	claimtype text NULL,
	seqno text NULL,
	remarkdate text NULL,
	remarkno text NULL,
	remark text NULL,
	employeeid text NULL,
	rectime text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mginsmemo (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	memocode text NULL,
	detail1 text NULL,
	detail2 text NULL,
	savedate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mginterest (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	ridertype text NULL,
	paytype text NULL,
	startdate text NULL,
	enddate text NULL,
	"day" text NULL,
	payamount text NULL,
	interestamount text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgreceiver (
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	seqno text NULL,
	prename text NULL,
	firstname text NULL,
	lastname text NULL,
	"type" text NULL,
	payamount text NULL,
	address text NULL,
	tumbon text NULL,
	zipcode text NULL,
	mobilephone text NULL,
	citizenid text NULL,
	paytype text NULL,
	banktype text NULL,
	bankcode text NULL,
	bankbranch text NULL,
	bankaccount text NULL,
	guardianbeneficiary text NULL,
	ispay text NULL,
	haveindicia text NULL,
	countrycode text NULL,
	claimpaydate text NULL,
	bookstatus text NULL,
	chqdate text NULL,
	chqno text NULL,
	docno text NULL,
	isbeneficiarykilled text NULL,
	birthdate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.queue(
	considerid text NULL,
	queuetype text NULL,
	jobtype text NULL,
	jobcode text NULL,
	offerdate text NULL,
	referenceno text NULL,
	receivedate text NULL,
	modifydate text NULL,
	modifytime text NULL,
	status text NULL,
	xconsiderid text NULL,
	firstjobtype text NULL,
	firstjobcode text NULL,
	firstxconsiderid text NULL,
	firstofferdate text NULL

)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.hospital(
	code text NULL,                    
	prename text NULL, 
	name text NULL,               
	company text NULL,
	address1 text NULL,            
	address2 text NULL,
	paytype text NULL,
	zone text NULL,             
	level text NULL,
	informalrecordexpense text NULL,
	istlmedicarehospital text NULL,
	istlmedicaredate text NULL,
	fax1 text NULL,
	extensionfax1 text NULL,                              
	fax2 text NULL,                
	extensionfax2 text NULL,
	incomingfax1 text NULL,
	incomingfax2 text NULL,
	ipdright text NULL,
	ipdrightdate text NULL,
	opdright text NULL,
    opdrightdate text NULL,
	incomingfax3 text NULL,
	incomingfax4 text NULL,
	incomingfax5 text NULL,
	incomingfax6 text NULL,
	showhospitalname text NULL,
	formalrecordexpense text NULL,
    email1 text NULL,
    email2 text NULL,
    email3 text NULL,
    email4 text NULL,
    sendemail1 text NULL,
    sendemail2 text NULL,
    sendemail3 text NULL,
    sendemail4 text NULL,
    automate text NULL,
    isstricthospital text NULL,
	recorddate text NULL,
    recordid text NULL

)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.icd10(
	code text NULL,                   
	detail1 text NULL,                               
	detail2 text NULL,
	illnesscode text NULL,
	rangeofstay text NULL,             
	isicd10 text NULL,
	keyword text NULL,
	simpledisease text NULL,
	deadlydisease text NULL

)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.claimpayment (
	payment_id text NULL,
	registerseq text NULL,
	claimno text NULL,
	printdate text NULL,
	requestby text NULL,
	approveby1 text NULL,
	approveby2 text NULL,
	authorizedby1 text NULL,
	authorizedby2 text NULL,
	totalamt text NULL,
	paid_date text NULL,
	createdate text NULL,
	createuser text NULL,
	updateuser text NULL,
	updatedate text NULL,
	sysprintstatus text NULL,
	canceldate text NULL,
	lettertype text NULL,
	reqdate text NULL,
	financedate text NULL,
	respdate text NULL,
	deadlinedate text NULL,
	payrate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.claimpaymentdetail (
	paymentdt_id text NULL,
	payment_id text NULL,
	paymenttype text NULL,
	payeename text NULL,
	pamentamt text NULL,
	"method" text NULL,
	relation text NULL,
	receipt_name text NULL,
	address1 text NULL,
	address2 text NULL,
	tumbon text NULL,
	amphor text NULL,
	province text NULL,
	zipcode text NULL,
	claimbenefit text NULL,
	bankid text NULL,
	bankname text NULL,
	accno text NULL,
	returncheque text NULL,
	returndate text NULL,
	payee_no text NULL,
	createdate text NULL,
	createuser text NULL,
	updatedate text NULL,
	updateuser text NULL,
	printref text NULL,
	printref_runno text NULL,
	chequeno text NULL,
	receivechequedate text NULL,
	remarkpayment text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.claimregisterdetail (
	regdtlseq text NULL,
	regdtlregisterno text NULL,
	regdtlclaimrunno text NULL,
	regdtlclaimno text NULL,
	regdtlletterrunno text NULL,
	regdtlletterno text NULL,
	regdtlclaimgroup text NULL,
	regdtlclaimcausecode text NULL,
	regdtlclaimcauseen text NULL,
	regdtlclaimcauseth text NULL,
	regdtldateofmedicalreceive text NULL,
	regdtldateofmedicalreport text NULL,
	regdtldateofcompletedoc text NULL,
	regdtlhospitalcode text NULL,
	regdtlhospitalname text NULL,
	regdtlpatientdeptcode text NULL,
	regdtlpatientdept text NULL,
	regdtldateofopd text NULL,
	regdtldateofaccident text NULL,
	regdtldateofdeath text NULL,
	regdtldateofadmission text NULL,
	regdtldateofdischarge text NULL,
	regdtldateofoccurred text NULL,
	regdtldurationfrom text NULL,
	regdtldurationto text NULL,
	regdtldurationdays text NULL,
	regdtlestimateclaim text NULL,
	regdtlclaimexpense text NULL,
	regdtlcoinsurancecode text NULL,
	regdtldeclinestatus text NULL,
	regdtltotalclaim text NULL,
	regdtltotalttdpercentage text NULL,
	regdtltotalttdamount text NULL,
	regdtltotaltpdpercentage text NULL,
	regdtltotaltpdamount text NULL,
	regdtladjustcode text NULL,
	regdtladjustpayment text NULL,
	regdtlinterest text NULL,
	regdtltotalamount text NULL,
	regdtltotalexgratiaamount text NULL,
	regdtlvoidamount text NULL,
	regdtlsavedenyamount text NULL,
	regdtlpartialpayment text NULL,
	regdtlchequeno text NULL,
	regdtlpaidtopartner text NULL,
	regdtlpaidtobeneficiary text NULL,
	regdtlclaimfollowup text NULL,
	regdtlclaimremark text NULL,
	regdtlclaimflag text NULL,
	regdtlregisterdate text NULL,
	regdtlregister text NULL,
	regdtlapprovestatus text NULL,
	regdtlapprovedate text NULL,
	regdtlapproval text NULL,
	regdtlpolicystatus text NULL,
	regdtlhbcflag text NULL,
	registerseq text NULL,
	claimtypeseq text NULL,
	coinsuranceseq text NULL,
	risktypeseq text NULL,
	datatype text NULL,
	payment_id text NULL,
	sysuseclaim text NULL,
	regdtldblindemnity text NULL,
	regdtlclaimnoteapprove text NULL,
	regdtlcleanstatus text NULL,
	regdtlnote text NULL,
	regdtlcaseno text NULL,
	regdtlfaxclaim text NULL,
	regdtlbatchno text NULL,
	regdtlicdten1 text NULL,
	regdtlicdteneng1 text NULL,
	regdtlicdtenth1 text NULL,
	regdtlicdten2 text NULL,
	regdtlicdteneng2 text NULL,
	regdtlicdtenth2 text NULL,
	regdtlicdten3 text NULL,
	regdtlicdteneng3 text NULL,
	regdtlicdtenth3 text NULL,
	regdtltpaclaimtype text NULL,
	regdtllettermemocreatedate text NULL,
	regdtllettermemouser text NULL,
	regdtllettermemostatus text NULL,
	regdtllos text NULL,
	regdtlbenefitday text NULL,
	regdtlclonestatus text NULL,
	regdtlseqtpa text NULL,
	regdtlhismaprpt text NULL,
	regdtlclaimstatus text NULL,
	regdtlletterdate text NULL,
	regdtlletterpendingdate text NULL,
	regdtlletterdelaydate text NULL,
	regdtlletterreminddate text NULL,
	regdtlletterclosedate text NULL,
	regdtlletterpaymentdate text NULL,
	regdtllettervoiddate text NULL,
	regdtlletterdenydate text NULL,
	regdtlcalsa text NULL,
	regdtlestimateclaimamt text NULL,
	regdtlperproposal text NULL,
	claimtypesubseq text NULL,
	claimtypesubcode text NULL,
	regdtlclaimcausecancel text NULL,
	paytype text NULL,
	partnercode text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.claimregisterheader (
	registerseq text NULL,
	regcustomerbranchname text NULL,
	regcustomercode text NULL,
	regcustomercertificateno text NULL,
	regcustomerloanno text NULL,
	regcustomeracctno text NULL,
	regcustomeridcard text NULL,
	regcustomerprefix text NULL,
	regcustomername text NULL,
	regcustomerfname text NULL,
	regcustomerlname text NULL,
	regcustomerdob text NULL,
	regcustomerage text NULL,
	regcustomergender text NULL,
	regcustomerstatus text NULL,
	regcustomercardtype text NULL,
	regcustomercardno text NULL,
	regcustomercardlimit text NULL,
	regcustomercardinstl text NULL,
	regcustomeraddr01 text NULL,
	regcustomeraddr02 text NULL,
	regcustomeraddr03 text NULL,
	regcustomerprovince text NULL,
	regcustomerzipcode text NULL,
	regcustomertelephone text NULL,
	regcustomerloanamount text NULL,
	regcustomersumassured text NULL,
	regcustomerpremium text NULL,
	regcustomerdurationinsurance text NULL,
	regcustomermodeofpayment text NULL,
	regcustomersaledate text NULL,
	regcustomeruwstatuscode text NULL,
	regcustomeruwstatusdesc text NULL,
	regcustomercontractdate text NULL,
	regcustomerissuedate text NULL,
	regcustomereffectivedate text NULL,
	regcustomerexpiredate text NULL,
	regcustomervehreceivedate text NULL,
	regcustomerfirstpaymentdate text NULL,
	regcustomerlastpaymentdate text NULL,
	regcustomerpaidtodate text NULL,
	regcustomerpolicystatuscode text NULL,
	regcustomerpolicystatusdesc text NULL,
	regcustomercanceldate text NULL,
	regcustomercancelreason text NULL,
	regcustomercanceldescription text NULL,
	regcustomercancelletterno text NULL,
	claimno text NULL,
	productseq text NULL,
	datatype text NULL,
	regcustomerchannel text NULL,
	regcustomerrefid text NULL,
	age text NULL
)
WITH (
	OIDS=FALSE
) ;



CREATE TABLE tlp.customerinfo (
	productname text NULL,
	policyno text NULL,
	productcode text NULL,
	certificateno text NULL,
	saledate text NULL,
	branchname text NULL,
	customercode text NULL,
	accountno text NULL,
	loanno text NULL,
	totalofloan text NULL,
	sa text NULL,
	prem text NULL,
	durationinsurance text NULL,
	insurancestatus text NULL,
	effectivedate text NULL,
	expireddate text NULL,
	customerstatus text NULL,
	canceldate text NULL,
	cancelreason text NULL,
	canceldescription text NULL,
	channel text NULL,
	prefix text NULL,
	nameth text NULL,
	surnameth text NULL,
	birthdate text NULL,
	age text NULL,
	weight text NULL,
	height text NULL,
	gender text NULL,
	status text NULL,
	nationid text NULL,
	creditcardno text NULL,
	expiredcreditcard text NULL,
	address1 text NULL,
	address2 text NULL,
	addressoffice1 text NULL,
	addressoffice2 text NULL,
	nameofbenefit1 text NULL,
	nameofbenefit2 text NULL,
	nameofbenefit3 text NULL,
	nameofbenefit4 text NULL,
	relationship1 text NULL,
	relationship2 text NULL,
	relationship3 text NULL,
	relationship4 text NULL,
	hometel text NULL,
	mobiletel text NULL,
	officetel text NULL,
	officercodesale text NULL,
	salenameth text NULL,
	managercode text NULL,
	dateprintcert text NULL,
	postbackdate text NULL,
	cancelletterno text NULL,
	printcancelletterdate text NULL,
	partnercode text NULL,
	partnername text NULL,
	databasesource text NULL,
	refname text NULL,
	refnationid text NULL,
	refcreditcardno text NULL,
	facility text NULL,
	uwdescription text NULL,
	uwstatus text NULL,
	tmksaledate text NULL,
	coverage text NULL,
	paidtodate text NULL,
	extrarate text NULL,
	voicetag text NULL,
	deathdate text NULL,
	customerloanapprovedate text NULL,
	lob text NULL,
	canceltransactiondate text NULL,
	oldaccountno text NULL,
	customeroccupationtext text NULL,
	loaninstallment1stdue text NULL,
	customercontactofficepay text NULL,
	percentofbenefitciary1 text NULL,
	percentofbenefitciary2 text NULL,
	percentofbenefitciary3 text NULL,
	percentofbenefitciary4 text NULL,
	downplaneffectivedate text NULL,
	date_sosover text NULL,
	customerduration text NULL,
	med text NULL,
	customernation text NULL,
	endorsedate text NULL,
	informdate1 text NULL,
	paydate1 text NULL,
	amount1 text NULL,
	informdate2 text NULL,
	paydate2 text NULL,
	amount2 text NULL,
	deaddate text null,	
	lastpaydate text null,
	lastreceiptno text null,
	mode text null,
	lastpayperiod text null
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.customersa (
	customercode text NULL,
	policyno text NULL,
	sa_lifetpd text NULL,
	sa_life text NULL,
	sa_tpd text NULL,
	sa_td text NULL,
	sa_add text NULL,
	sa_adb text NULL,
	sa_ha text NULL,
	sa_hb text NULL,
	sa_me text NULL,
	sa_pa text NULL,
	sa_ph text NULL,
	sa_ci text NULL,
	flaglife text NULL,
	flaglifetpd text NULL,
	ia text NULL,
	sa text NULL,
	transdate text NULL,
	mi_amount text NULL,
	expiry_life text NULL,
	expiry_tpd text NULL,
	expiry_td text NULL,
	expiry_add text NULL,
	expiry_adb text NULL,
	expiry_ha text NULL,
	expiry_hb text NULL,
	expiry_me text NULL,
	expiry_pa text NULL,
	expiry_ph text NULL,
	expiry_ci text NULL,
	sa_ma text NULL,
	expiry_ma text NULL,
	sa_mc text NULL,
	expiry_mc text null,
	sa_icu text NULL,
	sa_fideath text NULL,
	sa_fitpd text NULL,
	sa_lsdeath text NULL,
	sa_lstpd text NULL,
	sa_cb text NULL,
	sa_cp text NULL	
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.masproduct (
	productseq text NULL,
	policyno text NULL,
	productcode text NULL,
	productplan text NULL,
	productnameen text NULL,
	productnameth text NULL,
	productgroup text NULL,
	productstatus text NULL,
	partnerseq text NULL,
	producttype text NULL,
	partnerlettername text NULL,
	percent_life text NULL,
	percent_tpd text NULL,
	percent_add text NULL,
	percent_adb text NULL,
	percent_pa text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.masproductcoverage (
	productcoverageseq text NULL,
	productcoveragepaymentmode text NULL,
	productcoveragesa text NULL,
	productcoverageamount text NULL,
	productcoveragewaitingperiod text NULL,
	productcoverageexcludeperiod text NULL,
	productcoveragedesc text NULL,
	productseq text NULL,
	riskcoverageseq text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.masproductcoverageclaim (
	productcoverageclaimseq text NULL,
	productcoverageclaimonetime text NULL,
	productcoverageseq text NULL,
	claimtypeseq text NULL,
	risktypeseq text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.masrisktype (
	risktypeseq text NULL,
	risktypename text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlp.payment (
	partnercode text NULL,
	policyno text NULL,
	productcode text NULL,
	customercode text NULL,
	duedate text NULL,
	senddate text NULL,
	ob text NULL,
	paymentdate text NULL,
	premiumamt text NULL,
	adjustpremium text NULL,
	typeofpayment text NULL,
	accno text NULL,
	refund text NULL,
	dateofrefund text NULL,
	invoiceno text NULL,
	monthenddate text NULL,
	pay_date text NULL,
	refund_amount text NULL,
	collecteddate text null,
	mode text NULL,
	payperiod text NULL,
	receiptno text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.splitpremiumamount (
	productid text NULL,
	grouppolicyno text NULL,
	customercode text NULL,
	totpremium text NULL,
	lifepremium text NULL,
	deathpremium text NULL,
	tpdpremium text NULL,
	ttdpremium text NULL,
	tdpremium text NULL,
	papremium text NULL,
	adbpremium text NULL,
	addpremium text NULL,
	rccpremium text NULL,
	mapremium text NULL,
	mcpremium text NULL,
	mepremium text NULL,
	hbpremium text NULL,
	hapremium text NULL, 
	hspremium text NULL,
	icupremium text NULL,
	cipremium text NULL,
	fi_deathlum text NULL,
	fi_tpdpremium text NULL,
	ls_deathpremium text NULL,
	ls_tpdpremium text NULL,
	ddpremium text NULL,
	lifetpdpremium text NULL,
	duedate text NULL,
	receiptno  text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE lookup.migratedate (
	policyno text NOT NULL,
	migratedate text NOT NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE lookup.planmapping (
	tlpplancode varchar(8) NOT NULL,
	tlipolicy varchar(4) NOT NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE lookup.policymapping (
	tlpplancode text NOT NULL,
	tlipolicy text NOT NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE lookup.smi (
	tlpplancode varchar(10) NOT NULL,
	migpolicy varchar(4) NOT NULL,
	tlipolicy varchar(4) NOT NULL,
	mop varchar(1) NOT NULL,
	tlpplan varchar(2) NOT NULL,
	migplan varchar(1) NOT NULL,
	tliplan varchar(1) NOT NULL,	
	coverage varchar(4) NOT NULL,
	ridertype varchar(4) NOT NULL,
	benefit numeric(11,2) NOT NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE OR REPLACE VIEW lookup.tlpppi AS
select tlpplancode from lookup.smi 
where coverage = 'LIFE' and benefit = 0;

CREATE TABLE lookup.tlppolicystatus (
	customerstatus text NULL
)
WITH (
	OIDS=FALSE
) ;

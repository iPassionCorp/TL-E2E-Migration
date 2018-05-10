DROP DATABASE IF EXISTS edm4cf;
CREATE DATABASE edm4cf
    TEMPLATE = template0
    ENCODING = UTF8
    LC_COLLATE = 'th_TH.UTF8'
    LC_CTYPE   = 'th_TH.UTF8';

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
	planname text NULL
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

CREATE TABLE dm.rprider (
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
	planname text NULL
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

CREATE TABLE tlitext.rprider (
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

CREATE TABLE tlp.customerballoon (
	policyno text NULL,
	certno text NULL,
	policynoballoon text NULL,
	certnobolloon text NULL,
	loancontractno text NULL
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
	deaddate text NULL
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
	expiry_mc text NULL
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
	collecteddate text NULL
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
	ddpremium text NULL,
	lifetpdpremium text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.cert (
	policyno varchar(4) NOT NULL,
	certno varchar(8) NULL,
	appno varchar(12) NULL,
	reqdate varchar(8) NULL,
	nameid varchar(13) NULL,
	age int4 NULL,
	smi int4 NULL,
	lifesum int4 NULL,
	accidentsum int4 NULL,
	period varchar(2) NULL,
	loan_term varchar(2) NULL,
	lifepremium numeric(10,2) NULL,
	extrapremium numeric(10,2) NULL,
	tpdpremium numeric(10,2) NULL,
	extratpdpremium numeric(10,2) NULL,
	addpremium numeric(10,2) NULL,
	em int4 NULL,
	tpd numeric(4,2) NULL,
	effectivedate varchar(8) NULL,
	maturedate varchar(8) NULL,
	premiumdate varchar(8) NULL,
	certyyyymm varchar(6) NULL,
	statcer varchar(1) NULL,
	statcer2 varchar(1) NULL,
	statdate2 varchar(8) NULL,
	informdate1 varchar(8) NULL,
	paydate1 varchar(8) NULL,
	amount1 numeric(10,2) NULL,
	informdate2 varchar(8) NULL,
	paydate2 varchar(8) NULL,
	amount2 numeric(10,2) NULL,
	deaddate varchar(8) NULL,
	endownmentyear varchar(7) NULL,
	deadcause varchar(4) NULL,
	receiptflag varchar(1) NULL,
	referenceno varchar(20) NULL,
	reserve varchar(2) NULL,
	PRIMARY KEY (policyno)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.certlinker (
	policynohp varchar(4) NOT NULL,
	certnohp varchar(8) NOT NULL,
	policynocp varchar(4) NOT NULL,
	certnocp varchar(8) NOT NULL,
	PRIMARY KEY (policynohp, certnohp, policynocp, certnocp)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.certmapping (
	policyno varchar(4) NOT NULL,
	certno varchar(8) NOT NULL,
	rpolicyno varchar(8) NOT NULL,
	rcertno varchar(15) NOT NULL,
	PRIMARY KEY (policyno, certno, rpolicyno, rcertno)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.certrider (
	policyno varchar(4) NOT NULL,
	certno varchar(8) NOT NULL,
	ridertype varchar(3) NOT NULL,
	sum int4 NULL,
	premium numeric(10,2) NULL,
	extrapremium numeric(10,2) NULL,
	riderstatus varchar(1) NULL,
	riderstatusdate varchar(8) NULL,
	reserve varchar(1) NULL,
	PRIMARY KEY (policyno, certno, ridertype)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.compensateid (
	compensateid varchar(13) NOT NULL,
	referenceid varchar(13) NULL,
	PRIMARY KEY (compensateid)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.customer (
	customerid varchar(13) NOT NULL,
	referenceid varchar(13) NOT NULL,
	referencetype varchar(2) NULL,
	birthdate varchar(8) NULL,
	sex varchar(1) NULL,
	contactnameid varchar(13) NULL,
	contactaddressid varchar(10) NULL,
	PRIMARY KEY (customerid, referenceid)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.detcert (
	policyno varchar(4) NOT NULL,
	certno varchar(8) NOT NULL,
	code varchar(10) NULL,
	address1 varchar(70) NULL,
	address2 varchar(70) NULL,
	telephoneno varchar(60) NULL,
	mariagestatus varchar(1) NULL,
	recname1 varchar(100) NULL,
	percent1 numeric(5,2) NULL,
	relationshipcode1 int4 NULL,
	recname2 varchar(100) NULL,
	percent2 numeric(5,2) NULL,
	relationshipcode2 int4 NULL,
	recname3 varchar(100) NULL,
	percent3 numeric(5,2) NULL,
	relationshipcode3 int4 NULL,
	analist varchar(10) NULL,
	prmiseno varchar(12) NULL,
	prmiseno2 varchar(12) NULL,
	loantype varchar(1) NULL,
	med varchar(1) NULL,
	reserve varchar(1) NULL,
	PRIMARY KEY (policyno, certno)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.mgclaim (
	certno varchar(8) NOT NULL,
	accidentdate varchar(8) NOT NULL,
	receivedate varchar(8) NOT NULL,
	claimtype varchar(1) NOT NULL,
	sectioncode varchar(2) NULL,
	orderno varchar(8) NULL,
	referenceno varchar(10) NOT NULL,
	linkerno varchar(7) NULL,
	okdate varchar(8) NULL,
	policyno varchar(4) NULL,
	ismigration varchar(1) NULL,
	PRIMARY KEY (certno, accidentdate, receivedate, claimtype, referenceno)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.mghis (
	certno varchar(8) NOT NULL,
	accidentdate varchar(8) NOT NULL,
	receivedate varchar(8) NOT NULL,
	claimtype varchar(1) NOT NULL,
	seqno int4 NOT NULL,
	remarkdate varchar(8) NULL,
	remarkno varchar(2) NULL,
	remark varchar(100) NULL,
	employeeid varchar(7) NULL,
	rectime varchar(6) NULL,
	PRIMARY KEY (certno, accidentdate, receivedate, claimtype, seqno)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.mginsmemo (
	certno varchar(8) NOT NULL,
	accidentdate varchar(8) NOT NULL,
	receivedate varchar(8) NOT NULL,
	memocode varchar(3) NOT NULL,
	detail1 varchar(100) NULL,
	detail2 varchar(100) NULL,
	savedate varchar(8) NULL,
	PRIMARY KEY (certno, accidentdate, receivedate, memocode)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.mginterest (
	certno varchar(8) NOT NULL,
	accidentdate varchar(8) NOT NULL,
	receivedate varchar(8) NOT NULL,
	ridertype varchar(3) NOT NULL,
	paytype varchar(1) NOT NULL,
	startdate varchar(8) NULL,
	enddate varchar(8) NULL,
	"day" varchar(4) NULL,
	payamount numeric(12,2) NULL,
	interestamount numeric(11,2) NULL,
	PRIMARY KEY (certno, accidentdate, receivedate, ridertype, paytype)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.mgorder (
	sectioncode varchar(2) NOT NULL,
	orderno varchar(8) NOT NULL,
	receivetime varchar(6) NULL,
	causecode varchar(6) NULL,
	causedetail varchar(50) NULL,
	receiverid varchar(7) NULL,
	considerid varchar(7) NULL,
	admitdate varchar(8) NULL,
	admitflag varchar(1) NULL,
	billingorderno varchar(10) NULL,
	interimflag varchar(1) NULL,
	hospitalcode varchar(4) NULL,
	receivedocdate varchar(8) NULL,
	calsurdate varchar(8) NULL,
	PRIMARY KEY (sectioncode, orderno)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.mgpay (
	certno varchar(8) NOT NULL,
	receivedate varchar(8) NOT NULL,
	accidentdate varchar(8) NOT NULL,
	sectioncode varchar(2) NOT NULL,
	orderno varchar(8) NOT NULL,
	policystatus varchar(1) NULL,
	policystatusdate varchar(8) NULL,
	policystatus2 varchar(1) NULL,
	policystatusdate2 varchar(8) NULL,
	branchcode varchar(3) NULL,
	servicebranch varchar(3) NULL,
	claimtype varchar(1) NULL,
	paytype varchar(1) NULL,
	proofinsuredage int4 NULL,
	disabilitytype varchar(1) NULL,
	disnumber varchar(1) NULL,
	payrate varchar(3) NULL,
	payamount int4 NULL,
	accdamount int4 NULL,
	surrenderamount int4 NULL,
	returnamount int4 NULL,
	deductamount int4 NULL,
	claimokdate varchar(8) NULL,
	claimpaydate varchar(8) NULL,
	allowtype varchar(1) NULL,
	PRIMARY KEY (certno, receivedate, accidentdate, sectioncode, orderno)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.mgpayrider (
	certno varchar(8) NOT NULL,
	accidentdate varchar(8) NOT NULL,
	receivedate varchar(8) NOT NULL,
	sectioncode varchar(2) NOT NULL,
	orderno varchar(8) NOT NULL,
	policystatus varchar(1) NULL,
	policystatusdate varchar(8) NULL,
	policystatus2 varchar(1) NULL,
	policystatusdate2 varchar(8) NULL,
	branchcode varchar(3) NULL,
	servicebranch varchar(3) NULL,
	amestartdate varchar(8) NULL,
	ameday numeric(3) NULL,
	ameexpense numeric(9,2) NULL,
	amepayment numeric(9,2) NULL,
	tdday int4 NULL,
	tdstartdate varchar(8) NULL,
	tdpayment numeric(9,2) NULL,
	returnamount numeric(12,2) NULL,
	deductamount numeric(12,2) NULL,
	voiddate varchar(8) NULL,
	claimokdate varchar(8) NULL,
	claimpaydate varchar(8) NULL,
	PRIMARY KEY (certno, accidentdate, receivedate, sectioncode, orderno)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.mgreceiver (
	certno varchar(8) NOT NULL,
	accidentdate varchar(8) NOT NULL,
	receivedate varchar(8) NOT NULL,
	seqno int4 NOT NULL,
	prename varchar(30) NULL,
	firstname varchar(60) NULL,
	lastname varchar(60) NULL,
	"type" varchar(1) NULL,
	payamount numeric(12,2) NULL,
	address varchar(128) NULL,
	tumbon varchar(5) NULL,
	zipcode varchar(5) NULL,
	mobilephone varchar(10) NULL,
	citizenid varchar(13) NULL,
	paytype varchar(1) NULL,
	banktype varchar(1) NULL,
	bankcode varchar(10) NULL,
	bankbranch varchar(35) NULL,
	bankaccount varchar(15) NULL,
	guardianbeneficiary varchar(80) NULL,
	ispay varchar(1) NULL,
	haveindicia varchar(1) NULL,
	countrycode varchar(3) NULL,
	"claimpaydate " varchar(8) NULL,
	bookstatus varchar(1) NULL,
	chqdate varchar(8) NULL,
	chqno varchar(10) NULL,
	docno varchar(5) NULL,
	isbeneficiarykilled varchar(1) NULL,
	birthdate varchar(8) NULL,
	PRIMARY KEY (certno, accidentdate, receivedate, seqno)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli."name" (
	nameid varchar(13) NOT NULL,
	personid varchar(13) NULL,
	prename varchar(30) NULL,
	firstname varchar(30) NULL,
	lastname varchar(30) NULL,
	startdate varchar(8) NULL,
	PRIMARY KEY (nameid)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.person (
	personid varchar(13) NOT NULL,
	referenceid varchar(13) NOT NULL,
	referencetype varchar(2) NULL,
	birthdate varchar(8) NULL,
	sex varchar(1) NULL,
	customerid varchar(13) NULL,
	bluecard varchar(1) NULL,
	reserve varchar(6) NULL,
	PRIMARY KEY (personid, referenceid)
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tli.policy (
	policyno varchar(4) NOT NULL,
	rate varchar(2) NULL,
	"name" varchar(50) NULL,
	"type" varchar(1) NULL,
	effectivedate varchar(8) NULL,
	planname varchar(60) NULL,
	riderplan varchar(1) NULL,
	tlbranch varchar(3) NULL,
	PRIMARY KEY (policyno)
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
	tlipolicy varchar(4) NOT NULL,
	mop varchar(1) NOT NULL,
	tlpplan varchar(1) NOT NULL,
	tliplan varchar(1) NOT NULL,
	coverage varchar(4) NOT NULL,
	ridertype varchar(4) NOT NULL,
	benefit numeric(11,2) NOT NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE lookup.tlppolicystatus (
	customerstatus text NULL
)
WITH (
	OIDS=FALSE
) ;
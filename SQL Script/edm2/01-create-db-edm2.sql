DROP DATABASE IF EXISTS edm2;
CREATE DATABASE edm2
    TEMPLATE = template0
    ENCODING = UTF8
    LC_COLLATE = 'th_TH.UTF8'
    LC_CTYPE   = 'th_TH.UTF8';

DROP SCHEMA IF EXISTS tlp CASCADE;
DROP SCHEMA IF EXISTS dm CASCADE;
DROP SCHEMA IF EXISTS tli CASCADE;
DROP SCHEMA IF EXISTS tlitext CASCADE;
DROP SCHEMA IF EXISTS lookup CASCADE;
DROP SCHEMA IF EXISTS diff CASCADE;
DROP SCHEMA IF EXISTS validate CASCADE;

CREATE SCHEMA tlp;
CREATE SCHEMA dm;
CREATE SCHEMA tlitext;
CREATE SCHEMA tli;
CREATE SCHEMA lookup;
CREATE SCHEMA diff;
CREATE SCHEMA validate;

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
	reserve text NULL
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

CREATE TABLE dm.certmapping (
	policyno text NULL,
	certno text NULL,
	rpolicyno text NULL,
	rcertno text NULL
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
	reserve text NULL
)
WITH (
	OIDS=FALSE
) ;

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
	calsurdate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mgpay (
	certno text NULL,
	receivedate text NULL,
	accidentdate text NULL,
	sectioncode text NULL,
	orderno text NULL,
	policystatus text NULL,
	policystatusdate text NULL,
	policystatus2 text NULL,
	policystatusdate2 text NULL,
	branchcode text NULL,
	servicebranch text NULL,
	claimtype text NULL,
	paytype text NULL,
	proofinsuredage text NULL,
	disabilitytype text NULL,
	disnumber text NULL,
	payrate text NULL,
	payamount text NULL,
	accdamount text NULL,
	surrenderamount text NULL,
	returnamount text NULL,
	deductamount text NULL,
	claimokdate text NULL,
	claimpaydate text NULL,
	allowtype text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.mgpayrider (
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
	amestartdate text NULL,
	ameday text NULL,
	ameexpense text NULL,
	amepayment text NULL,
	tdday text NULL,
	tdstartdate text NULL,
	tdpayment text NULL,
	returnamount text NULL,
	deductamount text NULL,
	voiddate text NULL,
	claimokdate text NULL,
	claimpaydate text NULL
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

CREATE TABLE dm.premrate (
	"type" text NULL,
	rate text NULL,
	age text NULL,
	sex text NULL,
	term text NULL,
	premrate text NULL,
	reserve text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.tpdrate (
	"type" text NULL,
	rate text NULL,
	age text NULL,
	sex text NULL,
	term text NULL,
	tpdrate text NULL,
	reserve text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE dm.address (
	addressid text NULL,
	address text NULL,
	tumbon text NULL,
	zipcode text NULL,
	startdate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.beneficiary 
(
	policytype text,
	policyno text,
	sequence text,
	prename text,
	firstname text,
	lastname text,
	relationshipcode text,
	percentshare text,
	personflag text,
	idno text,
	birthdate text
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.extrapremium (
	policyno text NULL,
	extratype text NULL,
	startyear text NULL,
	noofyear text NULL,
	startdate text NULL,
	extrapremium text NULL,
	mode text NULL,
	emrate text NULL,
	epfromem text NULL,
	epunderwrt text NULL	
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE dm.orctrl (
	rpno text NULL,
	policyno text NULL,
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


CREATE TABLE dm.ordmast (
	policyno text NULL,
	nameid text NULL,
	branch text NULL,
	salesid text NULL,
	occupationtype text NULL,
	occupationcode text NULL,
	plancode text NULL,
	effectivedate text NULL,
	policystatus1 text NULL,
	policystatus2 text NULL,
	policystatusdate1 text NULL,
	policystatusdate2 text NULL,
	oldpolicystatus1 text NULL,
	oldpolicystatus2 text NULL,
	oldpolicystatusdate1 text NULL,
	oldpolicystatusdate2 text NULL,
	insuredage text NULL,
	sum text NULL,
	lifepremium text NULL,
	mode text NULL,
	payperiod text NULL,
	rpno text NULL,
	paydate text NULL,
	duedate text NULL,
	remark text NULL,
	planpa text NULL,
	hivflag text NULL,
	lapseflag text NULL,
	tabianlapseflag text NULL,
	medical text NULL,
	class text NULL,
	benefitrate text NULL,
	contactaddressid text NULL,
	contactstartdate text NULL,
	localaddressid text NULL,
	invalid text NULL,
	saleschannel text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE dm.remark (
	policyno text NULL,
	department text NULL,
	sequence text NULL,
	message text Null
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE dm.rider (
	policyno text NULL,
	ridertype text NULL,
	ridersum text NULL,
	riderpremium text NULL,
	riderstatus text NULL,
	riderstatusdate text NULL,
	effectivedate text NULL,
	marker text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE dm.rprider (
	rpno text NULL,
	seqno text NULL,
	ridertext text NULL
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
	reserve text NULL
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

CREATE TABLE tlitext.certmapping (
	policyno text NULL,
	certno text NULL,
	rpolicyno text NULL,
	rcertno text NULL
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
	reserve text NULL
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
	calsurdate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgpay (
	certno text NULL,
	receivedate text NULL,
	accidentdate text NULL,
	sectioncode text NULL,
	orderno text NULL,
	policystatus text NULL,
	policystatusdate text NULL,
	policystatus2 text NULL,
	policystatusdate2 text NULL,
	branchcode text NULL,
	servicebranch text NULL,
	claimtype text NULL,
	paytype text NULL,
	proofinsuredage text NULL,
	disabilitytype text NULL,
	disnumber text NULL,
	payrate text NULL,
	payamount text NULL,
	accdamount text NULL,
	surrenderamount text NULL,
	returnamount text NULL,
	deductamount text NULL,
	claimokdate text NULL,
	claimpaydate text NULL,
	allowtype text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgpayrider (
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
	amestartdate text NULL,
	ameday text NULL,
	ameexpense text NULL,
	amepayment text NULL,
	tdday text NULL,
	tdstartdate text NULL,
	tdpayment text NULL,
	returnamount text NULL,
	deductamount text NULL,
	voiddate text NULL,
	claimokdate text NULL,
	claimpaydate text NULL
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


CREATE TABLE tlitext.address (
	addressid text NULL,
	address text NULL,
	tumbon text NULL,
	zipcode text NULL,
	startdate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.beneficiary 
(
	policytype text,
	policyno text,
	sequence text,
	prename text,
	firstname text,
	lastname text,
	relationshipcode text,
	percentshare text,
	personflag text,
	idno text,
	birthdate text
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.extrapremium (
	policyno text NULL,
	extratype text NULL,
	startyear text NULL,
	noofyear text NULL,
	startdate text NULL,
	extrapremium text NULL,
	mode text NULL,
	emrate text NULL,
	epfromem text NULL,
	epunderwrt text NULL	
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.orctrl (
	rpno text NULL,
	policyno text NULL,
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


CREATE TABLE tlitext.ortlitextast (
	policyno text NULL,
	nameid text NULL,
	branch text NULL,
	salesid text NULL,
	occupationtype text NULL,
	occupationcode text NULL,
	plancode text NULL,
	effectivedate text NULL,
	policystatus1 text NULL,
	policystatus2 text NULL,
	policystatusdate1 text NULL,
	policystatusdate2 text NULL,
	oldpolicystatus1 text NULL,
	oldpolicystatus2 text NULL,
	oldpolicystatusdate1 text NULL,
	oldpolicystatusdate2 text NULL,
	insuredage text NULL,
	sum text NULL,
	lifepremium text NULL,
	mode text NULL,
	payperiod text NULL,
	rpno text NULL,
	paydate text NULL,
	duedate text NULL,
	remark text NULL,
	planpa text NULL,
	hivflag text NULL,
	lapseflag text NULL,
	tabianlapseflag text NULL,
	medical text NULL,
	class text NULL,
	benefitrate text NULL,
	contactaddressid text NULL,
	contactstartdate text NULL,
	localaddressid text NULL,
	invalid text NULL,
	saleschannel text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.remark (
	policyno text NULL,
	department text NULL,
	sequence text NULL,
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.rider (
	policyno text NULL,
	ridertype text NULL,
	ridersum text NULL,
	riderpremium text NULL,
	riderstatus text NULL,
	riderstatusdate text NULL,
	effectivedate text NULL,
	marker text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.rprider (
	rpno text NULL,
	seqno text NULL,
	ridertext text NULL
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
	tlpplancode varchar(8) NOT NULL,
	tlipolicy varchar(4) NOT NULL,
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

CREATE OR REPLACE VIEW lookup.rate AS
 SELECT x.type,
    x.rate,
    x.age,
    x.sex,
    to_number(x.term, '99'::text) AS term,
    to_number(x.premrate, '00000.00'::text) / 100::numeric AS premrate,
    to_number(y.tpdrate, '00000.00'::text) / 100::numeric AS tpdrate,
    to_number(x.premrate, '00000.00'::text) / 100::numeric + to_number(y.tpdrate, '00000.00'::text) / 100::numeric AS totrate
   FROM dm.premrate x
     JOIN dm.tpdrate y ON x.type = y.type AND x.rate = y.rate AND x.age = y.age AND x.sex = y.sex AND x.term = y.term;

CREATE OR REPLACE VIEW lookup.rate_le49 AS
 SELECT x.type,
    x.rate,
    x.age,
    x.sex,
    to_number(x.term, '99'::text) AS term,
    to_number(x.premrate, '00000.00'::text) / 100::numeric AS premrate,
    to_number(y.tpdrate, '00000.00'::text) / 100::numeric AS tpdrate,
    to_number(x.premrate, '00000.00'::text) / 100::numeric + to_number(y.tpdrate, '00000.00'::text) / 100::numeric AS totrate
   FROM dm.premrate x
     JOIN dm.tpdrate y ON x.type = y.type AND x.rate = y.rate AND x.age = y.age AND x.sex = y.sex AND x.term = y.term
  WHERE x.type = 'X'::text AND x.rate = 'A1'::text;

CREATE OR REPLACE VIEW lookup.rate_le50 AS
 SELECT x.type,
    x.rate,
    x.age,
    x.sex,
    to_number(x.term, '99'::text) AS term,
    to_number(x.premrate, '00000.00'::text) / 100::numeric AS premrate,
    to_number(y.tpdrate, '00000.00'::text) / 100::numeric AS tpdrate,
    to_number(x.premrate, '00000.00'::text) / 100::numeric + to_number(y.tpdrate, '00000.00'::text) / 100::numeric AS totrate
   FROM dm.premrate x
     JOIN dm.tpdrate y ON x.type = y.type AND x.rate = y.rate AND x.age = y.age AND x.sex = y.sex AND x.term = y.term
  WHERE x.type = 'X'::text AND x.rate = 'A1'::text;

CREATE OR REPLACE VIEW lookup.rate_le51 AS
 SELECT x.type,
    x.rate,
    x.age,
    x.sex,
    to_number(x.term, '99'::text) AS term,
    to_number(x.premrate, '00000.00'::text) / 100::numeric AS premrate,
    to_number(y.tpdrate, '00000.00'::text) / 100::numeric AS tpdrate,
    to_number(x.premrate, '00000.00'::text) / 100::numeric + to_number(y.tpdrate, '00000.00'::text) / 100::numeric AS totrate
   FROM dm.premrate x
     JOIN dm.tpdrate y ON x.type = y.type AND x.rate = y.rate AND x.age = y.age AND x.sex = y.sex AND x.term = y.term
  WHERE x.type = 'X'::text AND x.rate = 'A2'::text;



CREATE OR REPLACE VIEW validate.numberofrecords AS
 SELECT sourcetmp.policyno,
    target.tlipolicy,
    sourcetmp.srccnt AS source,
    target.tgcnt AS target
   FROM ( SELECT tc.policyno,
            count(0) AS srccnt
           FROM tlp.customerinfo tc
          WHERE (tc.customerstatus IN ( SELECT tlppolicystatus.customerstatus
                   FROM lookup.tlppolicystatus))
          GROUP BY tc.policyno) sourcetmp
     LEFT JOIN ( SELECT l.tlipolicy,
            l.tlpplancode,
            count(c.policyno) AS tgcnt
           FROM lookup.planmapping l
             LEFT JOIN dm.cert c ON l.tlipolicy::text = c.policyno
          GROUP BY l.tlipolicy, l.tlpplancode) target ON btrim(sourcetmp.policyno) = btrim(target.tlpplancode::text)
  ORDER BY target.tlipolicy;

CREATE OR REPLACE VIEW diff.cert AS
 SELECT tmp.policyno,
    tmp.certno,
    tmp.appno,
    tmp.reqdate,
    tmp.nameid,
    tmp.age,
    tmp.smi,
    tmp.lifesum,
    tmp.accidentsum,
    tmp.period,
    tmp.loan_term,
    tmp.lifepremium,
    tmp.extrapremium,
    tmp.tpdpremium,
    tmp.extratpdpremium,
    tmp.addpremium,
    tmp.em,
    tmp.tpd,
    tmp.effectivedate,
    tmp.maturedate,
    tmp.premiumdate,
    tmp.certyyyymm,
    tmp.statcer,
    tmp.statcer2,
    tmp.statdate2,
    tmp.informdate1,
    tmp.paydate1,
    tmp.amount1,
    tmp.informdate2,
    tmp.paydate2,
    tmp.amount2,
    tmp.deaddate,
    tmp.endownmentyear,
    tmp.deadcause,
    tmp.receiptflag,
    tmp.referenceno,
    tmp.reserve
   FROM ( SELECT cert.policyno,
            cert.certno,
            cert.appno,
            cert.reqdate,
            cert.nameid,
            cert.age,
            cert.smi,
            cert.lifesum,
            cert.accidentsum,
            cert.period,
            cert.loan_term,
            cert.lifepremium,
            cert.extrapremium,
            cert.tpdpremium,
            cert.extratpdpremium,
            cert.addpremium,
            cert.em,
            cert.tpd,
            cert.effectivedate,
            cert.maturedate,
            cert.premiumdate,
            cert.certyyyymm,
            cert.statcer,
            cert.statcer2,
            cert.statdate2,
            cert.informdate1,
            cert.paydate1,
            cert.amount1,
            cert.informdate2,
            cert.paydate2,
            cert.amount2,
            cert.deaddate,
            cert.endownmentyear,
            cert.deadcause,
            cert.receiptflag,
            cert.referenceno,
            cert.reserve
           FROM dm.cert
        EXCEPT
         SELECT cert.policyno,
            cert.certno,
            cert.appno,
            cert.reqdate,
            cert.nameid,
            cert.age,
            cert.smi,
            cert.lifesum,
            cert.accidentsum,
            cert.period,
            cert.loan_term,
            cert.lifepremium,
            cert.extrapremium,
            cert.tpdpremium,
            cert.extratpdpremium,
            cert.addpremium,
            cert.em,
            cert.tpd,
            cert.effectivedate,
            cert.maturedate,
            cert.premiumdate,
            cert.certyyyymm,
            cert.statcer,
            cert.statcer2,
            cert.statdate2,
            cert.informdate1,
            cert.paydate1,
            cert.amount1,
            cert.informdate2,
            cert.paydate2,
            cert.amount2,
            cert.deaddate,
            cert.endownmentyear,
            cert.deadcause,
            cert.receiptflag,
            cert.referenceno,
            cert.reserve
           FROM tlitext.cert) tmp;

CREATE OR REPLACE VIEW diff.certlinker AS
 SELECT tmp.policynohp,
    tmp.certnohp,
    tmp.policynocp,
    tmp.certnocp
   FROM ( SELECT certlinker.policynohp,
            certlinker.certnohp,
            certlinker.policynocp,
            certlinker.certnocp
           FROM dm.certlinker
        EXCEPT
         SELECT certlinker.policynohp,
            certlinker.certnohp,
            certlinker.policynocp,
            certlinker.certnocp
           FROM tlitext.certlinker) tmp;

CREATE OR REPLACE VIEW diff.certmapping AS
 SELECT tmp.policyno,
    tmp.certno,
    tmp.rpolicyno,
    tmp.rcertno
   FROM ( SELECT certmapping.policyno,
            certmapping.certno,
            certmapping.rpolicyno,
            certmapping.rcertno
           FROM dm.certmapping
        EXCEPT
         SELECT certmapping.policyno,
            certmapping.certno,
            certmapping.rpolicyno,
            certmapping.rcertno
           FROM tlitext.certmapping) tmp;

CREATE OR REPLACE VIEW diff.certrider AS
 SELECT tmp.policyno,
    tmp.certno,
    tmp.ridertype,
    tmp.sum,
    tmp.premium,
    tmp.extrapremium,
    tmp.riderstatus,
    tmp.riderstatusdate,
    tmp.reserve
   FROM ( SELECT certrider.policyno,
            certrider.certno,
            certrider.ridertype,
            certrider.sum,
            certrider.premium,
            certrider.extrapremium,
            certrider.riderstatus,
            certrider.riderstatusdate,
            certrider.reserve
           FROM dm.certrider
        EXCEPT
         SELECT certrider.policyno,
            certrider.certno,
            certrider.ridertype,
            certrider.sum,
            certrider.premium,
            certrider.extrapremium,
            certrider.riderstatus,
            certrider.riderstatusdate,
            certrider.reserve
           FROM tlitext.certrider) tmp;

CREATE OR REPLACE VIEW diff.compensateid AS
 SELECT tmp.compensateid,
    tmp.referenceid
   FROM ( SELECT compensateid.compensateid,
            compensateid.referenceid
           FROM dm.compensateid
        EXCEPT
         SELECT compensateid.compensateid,
            compensateid.referenceid
           FROM tlitext.compensateid) tmp;

CREATE OR REPLACE VIEW diff.customer AS
 SELECT tmp.customerid,
    tmp.referenceid,
    tmp.referencetype,
    tmp.birthdate,
    tmp.sex,
    tmp.contactnameid,
    tmp.contactaddressid
   FROM ( SELECT customer.customerid,
            customer.referenceid,
            customer.referencetype,
            customer.birthdate,
            customer.sex,
            customer.contactnameid,
            customer.contactaddressid
           FROM dm.customer
        EXCEPT
         SELECT customer.customerid,
            customer.referenceid,
            customer.referencetype,
            customer.birthdate,
            customer.sex,
            customer.contactnameid,
            customer.contactaddressid
           FROM tlitext.customer) tmp;

CREATE OR REPLACE VIEW diff.decert AS
 SELECT tmp.policyno,
    tmp.certno,
    tmp.code,
    tmp.address1,
    tmp.address2,
    tmp.telephoneno,
    tmp.mariagestatus,
    tmp.recname1,
    tmp.percent1,
    tmp.relationshipcode1,
    tmp.recname2,
    tmp.percent2,
    tmp.relationshipcode2,
    tmp.recname3,
    tmp.percent3,
    tmp.relationshipcode3,
    tmp.analist,
    tmp.prmiseno,
    tmp.prmiseno2,
    tmp.loantype,
    tmp.med,
    tmp.reserve
   FROM ( SELECT detcert.policyno,
            detcert.certno,
            detcert.code,
            detcert.address1,
            detcert.address2,
            detcert.telephoneno,
            detcert.mariagestatus,
            detcert.recname1,
            detcert.percent1,
            detcert.relationshipcode1,
            detcert.recname2,
            detcert.percent2,
            detcert.relationshipcode2,
            detcert.recname3,
            detcert.percent3,
            detcert.relationshipcode3,
            detcert.analist,
            detcert.prmiseno,
            detcert.prmiseno2,
            detcert.loantype,
            detcert.med,
            detcert.reserve
           FROM dm.detcert
        EXCEPT
         SELECT detcert.policyno,
            detcert.certno,
            detcert.code,
            detcert.address1,
            detcert.address2,
            detcert.telephoneno,
            detcert.mariagestatus,
            detcert.recname1,
            detcert.percent1,
            detcert.relationshipcode1,
            detcert.recname2,
            detcert.percent2,
            detcert.relationshipcode2,
            detcert.recname3,
            detcert.percent3,
            detcert.relationshipcode3,
            detcert.analist,
            detcert.prmiseno,
            detcert.prmiseno2,
            detcert.loantype,
            detcert.med,
            detcert.reserve
           FROM tlitext.detcert) tmp;

CREATE OR REPLACE VIEW diff.mgclaim AS
 SELECT tmp.certno,
    tmp.accidentdate,
    tmp.receivedate,
    tmp.claimtype,
    tmp.sectioncode,
    tmp.orderno,
    tmp.referenceno,
    tmp.linkerno,
    tmp.okdate,
    tmp.policyno,
    tmp.ismigration
   FROM ( SELECT mgclaim.certno,
            mgclaim.accidentdate,
            mgclaim.receivedate,
            mgclaim.claimtype,
            mgclaim.sectioncode,
            mgclaim.orderno,
            mgclaim.referenceno,
            mgclaim.linkerno,
            mgclaim.okdate,
            mgclaim.policyno,
            mgclaim.ismigration
           FROM dm.mgclaim
        EXCEPT
         SELECT mgclaim.certno,
            mgclaim.accidentdate,
            mgclaim.receivedate,
            mgclaim.claimtype,
            mgclaim.sectioncode,
            mgclaim.orderno,
            mgclaim.referenceno,
            mgclaim.linkerno,
            mgclaim.okdate,
            mgclaim.policyno,
            mgclaim.ismigration
           FROM tlitext.mgclaim) tmp;

CREATE OR REPLACE VIEW diff.mghis AS
 SELECT tmp.certno,
    tmp.accidentdate,
    tmp.receivedate,
    tmp.claimtype,
    tmp.seqno,
    tmp.remarkdate,
    tmp.remarkno,
    tmp.remark,
    tmp.employeeid,
    tmp.rectime
   FROM ( SELECT mghis.certno,
            mghis.accidentdate,
            mghis.receivedate,
            mghis.claimtype,
            mghis.seqno,
            mghis.remarkdate,
            mghis.remarkno,
            mghis.remark,
            mghis.employeeid,
            mghis.rectime
           FROM dm.mghis
        EXCEPT
         SELECT mghis.certno,
            mghis.accidentdate,
            mghis.receivedate,
            mghis.claimtype,
            mghis.seqno,
            mghis.remarkdate,
            mghis.remarkno,
            mghis.remark,
            mghis.employeeid,
            mghis.rectime
           FROM tlitext.mghis) tmp;

CREATE OR REPLACE VIEW diff.mginsmemo AS
 SELECT tmp.certno,
    tmp.accidentdate,
    tmp.receivedate,
    tmp.memocode,
    tmp.detail1,
    tmp.detail2,
    tmp.savedate
   FROM ( SELECT mginsmemo.certno,
            mginsmemo.accidentdate,
            mginsmemo.receivedate,
            mginsmemo.memocode,
            mginsmemo.detail1,
            mginsmemo.detail2,
            mginsmemo.savedate
           FROM dm.mginsmemo
        EXCEPT
         SELECT mginsmemo.certno,
            mginsmemo.accidentdate,
            mginsmemo.receivedate,
            mginsmemo.memocode,
            mginsmemo.detail1,
            mginsmemo.detail2,
            mginsmemo.savedate
           FROM tlitext.mginsmemo) tmp;

CREATE OR REPLACE VIEW diff.mginterest AS
 SELECT tmp.certno,
    tmp.accidentdate,
    tmp.receivedate,
    tmp.ridertype,
    tmp.paytype,
    tmp.startdate,
    tmp.enddate,
    tmp.day,
    tmp.payamount,
    tmp.interestamount
   FROM ( SELECT mginterest.certno,
            mginterest.accidentdate,
            mginterest.receivedate,
            mginterest.ridertype,
            mginterest.paytype,
            mginterest.startdate,
            mginterest.enddate,
            mginterest.day,
            mginterest.payamount,
            mginterest.interestamount
           FROM dm.mginterest
        EXCEPT
         SELECT mginterest.certno,
            mginterest.accidentdate,
            mginterest.receivedate,
            mginterest.ridertype,
            mginterest.paytype,
            mginterest.startdate,
            mginterest.enddate,
            mginterest.day,
            mginterest.payamount,
            mginterest.interestamount
           FROM tlitext.mginterest) tmp;

CREATE OR REPLACE VIEW diff.mgorder AS
 SELECT tmp.sectioncode,
    tmp.orderno,
    tmp.receivetime,
    tmp.causecode,
    tmp.causedetail,
    tmp.receiverid,
    tmp.considerid,
    tmp.admitdate,
    tmp.admitflag,
    tmp.billingorderno,
    tmp.interimflag,
    tmp.hospitalcode,
    tmp.receivedocdate,
    tmp.calsurdate
   FROM ( SELECT mgorder.sectioncode,
            mgorder.orderno,
            mgorder.receivetime,
            mgorder.causecode,
            mgorder.causedetail,
            mgorder.receiverid,
            mgorder.considerid,
            mgorder.admitdate,
            mgorder.admitflag,
            mgorder.billingorderno,
            mgorder.interimflag,
            mgorder.hospitalcode,
            mgorder.receivedocdate,
            mgorder.calsurdate
           FROM dm.mgorder
        EXCEPT
         SELECT mgorder.sectioncode,
            mgorder.orderno,
            mgorder.receivetime,
            mgorder.causecode,
            mgorder.causedetail,
            mgorder.receiverid,
            mgorder.considerid,
            mgorder.admitdate,
            mgorder.admitflag,
            mgorder.billingorderno,
            mgorder.interimflag,
            mgorder.hospitalcode,
            mgorder.receivedocdate,
            mgorder.calsurdate
           FROM tlitext.mgorder) tmp;

CREATE OR REPLACE VIEW diff.mgpay AS
 SELECT tmp.certno,
    tmp.receivedate,
    tmp.accidentdate,
    tmp.sectioncode,
    tmp.orderno,
    tmp.policystatus,
    tmp.policystatusdate,
    tmp.policystatus2,
    tmp.policystatusdate2,
    tmp.branchcode,
    tmp.servicebranch,
    tmp.claimtype,
    tmp.paytype,
    tmp.proofinsuredage,
    tmp.disabilitytype,
    tmp.disnumber,
    tmp.payrate,
    tmp.payamount,
    tmp.accdamount,
    tmp.surrenderamount,
    tmp.returnamount,
    tmp.deductamount,
    tmp.claimokdate,
    tmp.claimpaydate,
    tmp.allowtype
   FROM ( SELECT mgpay.certno,
            mgpay.receivedate,
            mgpay.accidentdate,
            mgpay.sectioncode,
            mgpay.orderno,
            mgpay.policystatus,
            mgpay.policystatusdate,
            mgpay.policystatus2,
            mgpay.policystatusdate2,
            mgpay.branchcode,
            mgpay.servicebranch,
            mgpay.claimtype,
            mgpay.paytype,
            mgpay.proofinsuredage,
            mgpay.disabilitytype,
            mgpay.disnumber,
            mgpay.payrate,
            mgpay.payamount,
            mgpay.accdamount,
            mgpay.surrenderamount,
            mgpay.returnamount,
            mgpay.deductamount,
            mgpay.claimokdate,
            mgpay.claimpaydate,
            mgpay.allowtype
           FROM dm.mgpay
        EXCEPT
         SELECT mgpay.certno,
            mgpay.receivedate,
            mgpay.accidentdate,
            mgpay.sectioncode,
            mgpay.orderno,
            mgpay.policystatus,
            mgpay.policystatusdate,
            mgpay.policystatus2,
            mgpay.policystatusdate2,
            mgpay.branchcode,
            mgpay.servicebranch,
            mgpay.claimtype,
            mgpay.paytype,
            mgpay.proofinsuredage,
            mgpay.disabilitytype,
            mgpay.disnumber,
            mgpay.payrate,
            mgpay.payamount,
            mgpay.accdamount,
            mgpay.surrenderamount,
            mgpay.returnamount,
            mgpay.deductamount,
            mgpay.claimokdate,
            mgpay.claimpaydate,
            mgpay.allowtype
           FROM tlitext.mgpay) tmp;

CREATE OR REPLACE VIEW diff.mgpayrider AS
 SELECT tmp.certno,
    tmp.accidentdate,
    tmp.receivedate,
    tmp.sectioncode,
    tmp.orderno,
    tmp.policystatus,
    tmp.policystatusdate,
    tmp.policystatus2,
    tmp.policystatusdate2,
    tmp.branchcode,
    tmp.servicebranch,
    tmp.amestartdate,
    tmp.ameday,
    tmp.ameexpense,
    tmp.amepayment,
    tmp.tdday,
    tmp.tdstartdate,
    tmp.tdpayment,
    tmp.returnamount,
    tmp.deductamount,
    tmp.voiddate,
    tmp.claimokdate,
    tmp.claimpaydate
   FROM ( SELECT mgpayrider.certno,
            mgpayrider.accidentdate,
            mgpayrider.receivedate,
            mgpayrider.sectioncode,
            mgpayrider.orderno,
            mgpayrider.policystatus,
            mgpayrider.policystatusdate,
            mgpayrider.policystatus2,
            mgpayrider.policystatusdate2,
            mgpayrider.branchcode,
            mgpayrider.servicebranch,
            mgpayrider.amestartdate,
            mgpayrider.ameday,
            mgpayrider.ameexpense,
            mgpayrider.amepayment,
            mgpayrider.tdday,
            mgpayrider.tdstartdate,
            mgpayrider.tdpayment,
            mgpayrider.returnamount,
            mgpayrider.deductamount,
            mgpayrider.voiddate,
            mgpayrider.claimokdate,
            mgpayrider.claimpaydate
           FROM dm.mgpayrider
        EXCEPT
         SELECT mgpayrider.certno,
            mgpayrider.accidentdate,
            mgpayrider.receivedate,
            mgpayrider.sectioncode,
            mgpayrider.orderno,
            mgpayrider.policystatus,
            mgpayrider.policystatusdate,
            mgpayrider.policystatus2,
            mgpayrider.policystatusdate2,
            mgpayrider.branchcode,
            mgpayrider.servicebranch,
            mgpayrider.amestartdate,
            mgpayrider.ameday,
            mgpayrider.ameexpense,
            mgpayrider.amepayment,
            mgpayrider.tdday,
            mgpayrider.tdstartdate,
            mgpayrider.tdpayment,
            mgpayrider.returnamount,
            mgpayrider.deductamount,
            mgpayrider.voiddate,
            mgpayrider.claimokdate,
            mgpayrider.claimpaydate
           FROM tlitext.mgpayrider) tmp;

CREATE OR REPLACE VIEW diff.mgreceiver AS
 SELECT tmp.certno,
    tmp.accidentdate,
    tmp.receivedate,
    tmp.seqno,
    tmp.prename,
    tmp.firstname,
    tmp.lastname,
    tmp.type,
    tmp.payamount,
    tmp.address,
    tmp.tumbon,
    tmp.zipcode,
    tmp.mobilephone,
    tmp.citizenid,
    tmp.paytype,
    tmp.banktype,
    tmp.bankcode,
    tmp.bankbranch,
    tmp.bankaccount,
    tmp.guardianbeneficiary,
    tmp.ispay,
    tmp.haveindicia,
    tmp.countrycode,
    tmp.claimpaydate,
    tmp.bookstatus,
    tmp.chqdate,
    tmp.chqno,
    tmp.docno,
    tmp.isbeneficiarykilled,
    tmp.birthdate
   FROM ( SELECT mgreceiver.certno,
            mgreceiver.accidentdate,
            mgreceiver.receivedate,
            mgreceiver.seqno,
            mgreceiver.prename,
            mgreceiver.firstname,
            mgreceiver.lastname,
            mgreceiver.type,
            mgreceiver.payamount,
            mgreceiver.address,
            mgreceiver.tumbon,
            mgreceiver.zipcode,
            mgreceiver.mobilephone,
            mgreceiver.citizenid,
            mgreceiver.paytype,
            mgreceiver.banktype,
            mgreceiver.bankcode,
            mgreceiver.bankbranch,
            mgreceiver.bankaccount,
            mgreceiver.guardianbeneficiary,
            mgreceiver.ispay,
            mgreceiver.haveindicia,
            mgreceiver.countrycode,
            mgreceiver.claimpaydate,
            mgreceiver.bookstatus,
            mgreceiver.chqdate,
            mgreceiver.chqno,
            mgreceiver.docno,
            mgreceiver.isbeneficiarykilled,
            mgreceiver.birthdate
           FROM dm.mgreceiver
        EXCEPT
         SELECT mgreceiver.certno,
            mgreceiver.accidentdate,
            mgreceiver.receivedate,
            mgreceiver.seqno,
            mgreceiver.prename,
            mgreceiver.firstname,
            mgreceiver.lastname,
            mgreceiver.type,
            mgreceiver.payamount,
            mgreceiver.address,
            mgreceiver.tumbon,
            mgreceiver.zipcode,
            mgreceiver.mobilephone,
            mgreceiver.citizenid,
            mgreceiver.paytype,
            mgreceiver.banktype,
            mgreceiver.bankcode,
            mgreceiver.bankbranch,
            mgreceiver.bankaccount,
            mgreceiver.guardianbeneficiary,
            mgreceiver.ispay,
            mgreceiver.haveindicia,
            mgreceiver.countrycode,
            mgreceiver.claimpaydate,
            mgreceiver.bookstatus,
            mgreceiver.chqdate,
            mgreceiver.chqno,
            mgreceiver.docno,
            mgreceiver.isbeneficiarykilled,
            mgreceiver.birthdate
           FROM tlitext.mgreceiver) tmp;

CREATE OR REPLACE VIEW diff."name" AS
 SELECT tmp.nameid,
    tmp.personid,
    tmp.prename,
    tmp.firstname,
    tmp.lastname,
    tmp.startdate
   FROM ( SELECT name.nameid,
            name.personid,
            name.prename,
            name.firstname,
            name.lastname,
            name.startdate
           FROM dm.name
        EXCEPT
         SELECT name.nameid,
            name.personid,
            name.prename,
            name.firstname,
            name.lastname,
            name.startdate
           FROM tlitext.name) tmp;

CREATE OR REPLACE VIEW diff.person AS
 SELECT tmp.personid,
    tmp.referenceid,
    tmp.referencetype,
    tmp.birthdate,
    tmp.sex,
    tmp.customerid,
    tmp.bluecard,
    tmp.reserve
   FROM ( SELECT person.personid,
            person.referenceid,
            person.referencetype,
            person.birthdate,
            person.sex,
            person.customerid,
            person.bluecard,
            person.reserve
           FROM dm.person
        EXCEPT
         SELECT person.personid,
            person.referenceid,
            person.referencetype,
            person.birthdate,
            person.sex,
            person.customerid,
            person.bluecard,
            person.reserve
           FROM tlitext.person) tmp;

CREATE OR REPLACE VIEW diff.policy AS
 SELECT tmp.policyno,
    tmp.rate,
    tmp.name,
    tmp.type,
    tmp.effectivedate,
    tmp.planname,
    tmp.riderplan,
    tmp.tlbranch
   FROM ( SELECT policy.policyno,
            policy.rate,
            policy.name,
            policy.type,
            policy.effectivedate,
            policy.planname,
            policy.riderplan,
            policy.tlbranch
           FROM dm.policy
        EXCEPT
         SELECT policy.policyno,
            policy.rate,
            policy.name,
            policy.type,
            policy.effectivedate,
            policy.planname,
            policy.riderplan,
            policy.tlbranch
           FROM tlitext.policy) tmp;





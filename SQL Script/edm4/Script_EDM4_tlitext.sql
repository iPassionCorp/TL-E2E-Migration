CREATE TABLE tlitext.compensateid(
	compensateid text NULL,
	referenceid text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.customer(
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


CREATE TABLE tlitext.name(
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

CREATE TABLE tlitext.person(
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

CREATE TABLE tlitext.policy(
	productcode text NULL,
	rate text NULL,
	name text NULL,
	type text NULL,
	effectivedate text NULL,
	planname text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.cert(
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
	paydate text NULL,
	rpno text NULL, 
	statdate1 text NULL,
	oldstatcert1 text NULL,
	oldstatcert2 text NULL, 
	oldstatcertdate1 text NULL,
	oldstatcertdate2 text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.detcert(
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

CREATE TABLE tlitext.certrider(
	productcode text NULL,
	certno text NULL,
	ridertype text NULL,
	sum text NULL,
	premium text NULL,
	extrapremium text NULL,
	riderstatus text NULL,
	riderstatusdate text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.certlinker(
	policynohp text NULL,          
	certnohp text NULL,           
	policynocp text NULL,     
	certnocp text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.clrctrl(
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


CREATE TABLE tlitext.rprider(
	rpno text NULL,
	ridertype text NULL,
	riderpremium text NULL,
	extrapremium text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.certmapping(
	productcode text NULL,
	certno text NULL,
	rproductcode text NULL,
	rcertno text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgclaim(
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

CREATE TABLE tlitext.mgorder(
	sectioncode text NULL,
	orderno text NULL,
	receivetime text NULL,
	causecode text NULL,
	causedetail text NULL,
	receiverid text NULL,
	considerid text NULL,
	atlitextitdate text NULL,
	atlitextitflag text NULL,
	billingorderno text NULL,
	interimflag text NULL,
	hospitalcode text NULL,
	receivedocdate text NULL,
	calsurdate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgpay(
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
	allowtype text NULL,
	bookstatus text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlitext.mgpayrider(
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

CREATE TABLE tlitext.mghis(
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


CREATE TABLE tlitext.mginsmemo(
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

CREATE TABLE tlitext.mginterest(
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	ridertype text NULL,
	paytype text NULL,
	startdate text NULL,
	enddate text NULL,
	day text NULL,
	payamount text NULL,
	interestamount text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlitext.mgreceiver(
	certno text NULL,
	accidentdate text NULL,
	receivedate text NULL,
	seqno text NULL,
	prename text NULL,
	firstname text NULL,
	lastname text NULL,
	type text NULL,
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
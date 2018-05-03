CREATE TABLE tlp.appbeneficiary (
	appno text NULL,
	seqno text NULL,
	beneficiaryname text NULL,
	relationship text NULL,
	percentage text NULL,
	age text NULL
)
WITH (
	OIDS=FALSE
) ;			

CREATE TABLE tlp.appcustomer(
	appno text NULL,
	custprename text NULL,
	custname text NULL,
	custsurname text NULL,
	custstatus text NULL,
	custheight text NULL,
	custweight text NULL,
	custoccupation text NULL,
	custposition text NULL,
	custid text NULL,
	custidtype text NULL,
	custiddate text NULL,
	custidamphur text NULL,
	custidprovince text NULL,
	custsex text NULL,
	custage text NULL,
	importdate text NULL,
	printstatus text NULL,
	printdate text NULL,
	addtype text NULL,
	custbirthdate text NULL,
	relation text NULL,
	accountno text NULL,
	userimport text NULL,
	fileimport text NULL,
	creditno text NULL,
	credittype text NULL,
	creditexpire text NULL,
	address1 text NULL,
	address2 text NULL,
	address3 text NULL,
	address4 text NULL,
	caddress1 text NULL,
	caddress2 text NULL,
	caddress3 text NULL,
	caddress4 text NULL,
	race text NULL,
	nationality text NULL,
	prefix text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.appcustomeraddress(
	appno text NULL,
	addtype text NULL,
	addplace text NULL,
	addnumber text NULL,
	addmoo text NULL,
	addvillage text NULL,
	addbuilding text NULL,
	addfloor text NULL,
	addroom text NULL,
	addsoi text NULL,
	addroad text NULL,
	adddistrict text NULL,
	addamphur text NULL,
	addprovince text NULL,
	addzipcode text NULL,
	remark text NULL
)
WITH (
	OIDS=FALSE
) ;						


CREATE TABLE tlp.appjuvenile(
	appno text NULL,
	fathername text NULL,
	fatherstatuslive text NULL,
	mothername text NULL,
	motherstatuslive text NULL,
	payerprename text NULL,
	payername text NULL,
	payersurname text NULL,
	payerstatus text NULL,
	payerbirthdate text NULL,
	payerage text NULL,
	payersex text NULL,
	payeridtype text NULL,
	payeridno text NULL,
	payerrelation text NULL,
	payeroccupation text NULL,
	payerposition text NULL,
	createdate text NULL
)
WITH (
	OIDS=FALSE
) ;						

CREATE TABLE tlp.apppolicy(
	appno text NULL,
	plancode text NULL,
	sa text NULL,
	prem text NULL,
	modeofpayment text NULL,
	effectivedate text NULL,
	applicationdate text NULL,
	keyindate text NULL,
	underwritedate text NULL,
	paymentdate text NULL,
	receivedocdate text NULL,
	reconcile text NULL,
	userreconcile text NULL,
	branch text NULL,
	usercode text NULL,
	underwritestatus text NULL,
	underwritedescription text NULL,
	channalsend text NULL,
	appstatus text NULL,
	paymenttype text NULL,
	paymentchequeno text NULL,
	paymentchequebank text NULL,
	paymentchequedate text NULL,
	renewpaymenttype text NULL,
	renewddno text NULL,
	renewddbank text NULL,
	renewddbranch text NULL,
	renewddaccount text NULL,
	documentstatus text NULL,
	documentdescription text NULL,
	userofficecode text NULL,
	userofficename text NULL,
	managercode text NULL,
	userofficecodesale text NULL,
	appstatusdate text NULL,
	appstatusdescription text NULL,
	renewddconfirm text NULL,
	renewddverify text NULL,
	renewddconfirmdate text NULL,
	renewddverifydate text NULL,
	renewddexportdate text NULL,
	premlife text NULL,
	premexta text NULL,
	refundtype text NULL,
	refundaccountno text NULL,
	refundaccountname text NULL,
	refundbranch text NULL,
	refundbank text NULL,
	em text NULL,
	occclass text NULL
)
WITH (
	OIDS=FALSE
) ;						

CREATE TABLE tlp.apprider(
	appno text NULL,
	plancode text NULL,
	sa text NULL,
	premrider text NULL,
	premexta text NULL,
	premtotal text NULL,
	mode text NULL,
	effectivedate text NULL,
	issuedage text NULL,
	attage text NULL,
	statusrider text NULL,
	statusdescription text NULL,
	createdate text NULL
)
WITH (
	OIDS=FALSE
) ;		


CREATE TABLE tlp.apptelephone(
	appno text NULL,
	teltype text NULL,
	telno text NULL,
	telext text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.branchaddress(
	branchcode text NULL,
	branchname text NULL,
	telephone text NULL,
	fax text NULL,
	address1 text NULL,
	address2 text NULL,
	address3 text NULL,
	address4 text NULL,
	town text NULL,
	zipcode text NULL
)
WITH (
	OIDS=FALSE
) ;			

CREATE TABLE tlp.coupon_available(
	ga_count text NULL,
	ga_policyno text NULL,
	ga_polyear text NULL,
	ga_plancode text NULL,
	ga_sa text NULL,
	ga_coupon_amount text NULL,
	ga_remain text NULL,
	ga_effectivedate text NULL,
	ga_coupondate text NULL,
	ga_paidtimes text NULL,
	ga_generatedate text NULL,
	ga_nextduenow text NULL
)
WITH (
	OIDS=FALSE
) ;		


CREATE TABLE tlp.coupon_paid(
	gu_count text NULL,
	gu_garefer text NULL,
	gu_receipt_apl_refer text NULL,
	gu_payoffreceipt text NULL,
	gu_loan_interest text NULL,
	gu_pay_interest text NULL,
	gu_pay_principle text NULL,
	gu_loan_principle text NULL,
	gu_pay_apl_remain text NULL,
	gu_coupon_remain text NULL,
	gu_createdate text NULL,
	gu_historycode_refer text NULL,
	gu_paidtime text NULL,
	gu_paytype text NULL,
	gu_policyno text NULL
)
WITH (
	OIDS=FALSE
) ;									


CREATE TABLE tlp.extrapremium(
	ex_count text NULL,
	ex_plancode text NULL,
	ex_emrate text NULL,
	ex_sex text NULL,
	ex_age text NULL,
	ex_value text NULL
)
WITH (
	OIDS=FALSE
) ;		

CREATE TABLE tlp.gcp_avai_date(
	gc_count text NULL,
	gc_policyno text NULL,
	gc_y1_date text NULL,
	gc_y2_date text NULL,
	gc_y3_date text NULL,
	gc_y4_date text NULL,
	gc_y5_date text NULL,
	gc_y6_date text NULL,
	gc_y7_date text NULL,
	gc_y8_date text NULL,
	gc_y9_date text NULL,
	gc_y10_date text NULL,
	gc_y11_date text NULL,
	gc_y12_date text NULL,
	gc_y13_date text NULL,
	gc_y14_date text NULL,
	gc_y15_date text NULL,
	gc_y16_date text NULL,
	gc_y17_date text NULL,
	gc_y18_date text NULL,
	gc_paidto text NULL,
	gc_y1_amt text NULL,
	gc_y2_amt text NULL,
	gc_y3_amt text NULL,
	gc_y4_amt text NULL,
	gc_y5_amt text NULL,
	gc_y6_amt text NULL,
	gc_y7_amt text NULL,
	gc_y8_amt text NULL,
	gc_y9_amt text NULL,
	gc_y10_amt text NULL,
	gc_y11_amt text NULL,
	gc_y12_amt text NULL,
	gc_y13_amt text NULL,
	gc_y14_amt text NULL,
	gc_y15_amt text NULL,
	gc_y16_amt text NULL,
	gc_y17_amt text NULL,
	gc_y18_amt text NULL,
	gc_current_date text NULL,
	gc_current_amount text NULL
)
WITH (
	OIDS=FALSE
) ;		


CREATE TABLE tlp.historyapl(
	historycode text NULL,
	policyno text NULL,
	duedateaplstart text NULL,
	duedateloan text NULL,
	nextduedate text NULL,
	seqapl text NULL,
	effectivedate text NULL,
	createdate text NULL,
	yearapl text NULL,
	monthapl text NULL,
	cv text NULL,
	totalloan text NULL,
	prem text NULL,
	cvremain text NULL,
	modenew text NULL,
	modeold text NULL,
	premold text NULL,
	cvmin text NULL,
	cvmax text NULL,
	yearmin text NULL,
	yearmax text NULL,
	interest text NULL,
	dayapl text NULL,
	aplstatus text NULL,
	cvcalculate text NULL,
	dayofyearapl text NULL,
	sa text NULL,
	paiddate text NULL,
	paidapl text NULL,
	interestloan text NULL,
	receiptno text NULL,
	benefit text NULL,
	userpayoffdate text NULL
)
WITH (
	OIDS=FALSE
) ;		


CREATE TABLE tlp.historyendorse(
	endorsekey text NULL,
	policyno text NULL,
	createdate text NULL,
	endorseno text NULL,
	description text NULL,
	datatype text NULL,
	valueold text NULL,
	valuenew text NULL,
	username text NULL,
	reason text NULL,
	requestdate text NULL,
	tododate text NULL
)
WITH (
	OIDS=FALSE
) ;		


CREATE TABLE tlp.historyexportfile(
	policyno text NULL,
	exportdate text NULL,
	plancode text NULL,
	seqno text NULL,
	creditno text NULL,
	amount text NULL,
	status text NULL,
	duedate text NULL,
	username text NULL,
	period text NULL,
	paymenttype text NULL,
	partnersend text NULL,
	createdatedescription text NULL
)
WITH (
	OIDS=FALSE
) ;		


CREATE TABLE tlp.historystatus(
	historycode text NULL,
	policyno text NULL,
	createdate text NULL,
	username text NULL,
	statusdate text NULL,
	status text NULL,
	statusremark text NULL,
	statusdescription text NULL,
	statusnew text NULL,
	statusnewremark text NULL,
	statusold text NULL,
	statusoldremark text NULL
)
WITH (
	OIDS=FALSE
) ;		

CREATE TABLE tlp.loanpayoff(
	lp_count text NULL,
	lp_loanrefer text NULL,
	lp_policyno text NULL,
	lp_grandprinciple text NULL,
	lp_principlebefore text NULL,
	lp_paiddate text NULL,
	lp_daylong text NULL,
	lp_interest text NULL,
	lp_paidby text NULL,
	lp_user text NULL,
	lp_createdate text NULL,
	lp_receiptno text NULL
)
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.loanpayoffcancel(
	lp_count text NULL,
	lp_loanrefer text NULL,
	lp_policyno text NULL,
	lp_grandprinciple text NULL,
	lp_principlebefore text NULL,
	lp_paiddate text NULL,
	lp_daylong text NULL,
	lp_interest text NULL,
	lp_paidby text NULL,
	lp_user text NULL,
	lp_createdate text NULL,
	lp_receiptno text NULL,
	logdate text NULL,
	lognote text NULL
)
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.loanreceipt(
	lr_receiptno text NULL,
	lr_createdate text NULL,
	lr_paiddate text NULL,
	lr_policyno text NULL,
	lr_frstname text NULL,
	lr_surname text NULL,
	lr_title text NULL,
	lr_merge text NULL,
	lr_typepay text NULL,
	lr_bank text NULL,
	lr_remark text NULL,
	lr_user text NULL,
	lr_netcv text NULL,
	lr_interest text NULL,
	lr_netcvtext text NULL,
	lr_total text NULL,
	lr_add1 text NULL,
	lr_add2 text NULL,
	lr_add3 text NULL,
	lr_add4 text NULL,
	lr_zipcode text NULL,
	lr_loanid text NULL,
	lr_paidtime text NULL,
	lr_accno text NULL,
	lr_branch text NULL,
	lr_creditno text NULL,
	lr_creditorga text NULL,
	lr_cheqdate text NULL,
	lr_status text NULL
)
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.loanreceiptcancel(
	lr_receiptno text NULL,
	lr_createdate text NULL,
	lr_paiddate text NULL,
	lr_policyno text NULL,
	lr_frstname text NULL,
	lr_surname text NULL,
	lr_title text NULL,
	lr_merge text NULL,
	lr_typepay text NULL,
	lr_bank text NULL,
	lr_remark text NULL,
	lr_user text NULL,
	lr_netcv text NULL,
	lr_interest text NULL,
	lr_netcvtext text NULL,
	lr_total text NULL,
	lr_add1 text NULL,
	lr_add2 text NULL,
	lr_add3 text NULL,
	lr_add4 text NULL,
	lr_zipcode text NULL,
	lr_loanid text NULL,
	lr_paidtime text NULL,
	lr_accno text NULL,
	lr_branch text NULL,
	lr_creditno text NULL,
	lr_creditorga text NULL,
	lr_cheqdate text NULL,
	lr_status text NULL,
	logdate text NULL,
	lognote text NULL
)
WITH (
	OIDS=FALSE
) ;	



CREATE TABLE tlp.loanrequest(
	rq_count text NULL,
	rq_policyno text NULL,
	rq_appno text NULL,
	rq_cvnet text NULL,
	rq_loanamount text NULL,
	rq_loanstart text NULL,
	rq_loanintrate text NULL,
	rq_user text NULL,
	rq_registermail text NULL,
	rq_paychannal text NULL,
	rq_payrefno text NULL,
	rq_loanapproved text NULL,
	rq_principleremain text NULL,
	rq_loanstatus text NULL,
	rq_lastpaiddate text NULL
)
WITH (
	OIDS=FALSE
) ;		


CREATE TABLE tlp.payoffreceipt(
	receiptno text NULL,
	receiptapl text NULL,
	policyno text NULL,
	name text NULL,
	frstname text NULL,
	surname text NULL,
	paymentdate text NULL,
	netcv text NULL,
	interest text NULL,
	netcvword text NULL,
	total text NULL,
	remark text NULL,
	uploaddate text NULL,
	typepay text NULL,
	bank text NULL,
	branch text NULL,
	printtimes text NULL,
	lastprintdate text NULL,
	lastprintuser text NULL,
	acountno text NULL,
	creditno text NULL,
	credittype text NULL,
	creditexpire text NULL,
	chequeno text NULL,
	chequedate text NULL,
	chequebank text NULL,
	chequebranch text NULL
)
WITH (
	OIDS=FALSE
) ;		

CREATE TABLE tlp.payoffreceipt_cancel(
	itreqno text NULL,
	receiptno text NULL,
	receiptapl text NULL,
	policyno text NULL,
	name text NULL,
	frstname text NULL,
	surname text NULL,
	paymentdate text NULL,
	netcv text NULL,
	interest text NULL,
	netcvword text NULL,
	total text NULL,
	remark text NULL,
	uploaddate text NULL,
	typepay text NULL,
	bank text NULL,
	branch text NULL,
	printtimes text NULL,
	lastprintdate text NULL,
	lastprintuser text NULL,
	acountno text NULL,
	creditno text NULL,
	credittype text NULL,
	creditexpire text NULL,
	chequeno text NULL,
	chequedate text NULL,
	chequebank text NULL,
	chequebranch text NULL
)
WITH (
	OIDS=FALSE
) ;


CREATE TABLE tlp.policybeneficiary (
 policyno text NULL,
 seqno text NULL,
 beneficiaryprename text NULL,
 beneficiaryname text NULL,
 beneficiarylastname text NULL,
 relationship text NULL,
 percentage text NULL,
 age text NULL
)
WITH (
 OIDS=FALSE
) ;


CREATE TABLE tlp.policycustomerreceive(
	policyno text NULL,
	createdate text NULL,
	senddate text NULL,
	requestno text NULL,
	receivestatus text NULL,
	receivedate text NULL,
	printdate text NULL,
	description text NULL,
	username text NULL,
	confirmprocessdate text NULL,
	userconfirm text NULL,
	policycustkey text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.policymaster (
	customercode text NULL,
	policyno text NULL,
	appno text NULL,
	plancode text NULL,
	planname text NULL,
	prename text NULL,
	frstname text NULL,
	surname text NULL,
	statusnew text NULL,
	statusnewremark text NULL,
	statusold text NULL,
	statusoldremark text NULL,
	sex text NULL,
	medical text NULL,
	class text NULL,
	occtype text NULL,
	extramort text NULL,
	issuedage text NULL,
	sa text NULL,
	premlife text NULL,
	premacc text NULL,
	premexta text NULL,
	premtotal text NULL,
	mode text NULL,
	payperiod text NULL,
	covperiod text NULL,
	effectivedate text NULL,
	birthdate text NULL,
	paymentdate text NULL,
	nextduedate text NULL,
	modifydate text NULL,
	statusdate text NULL,
	matdate text NULL,
	expdate text NULL,
	dateprintpolicy text NULL,
	issuepolicydate text NULL,
	idno text NULL,
	stopdate text NULL,
	stopreason text NULL,
	deathdate text NULL,
	receivefreelookdate text NULL,
	receivefreelookdescription text NULL,
	receivefreelookrealdate text NULL,
	prefix text NULL,
	sanew text NULL,
	expdatenew text NULL,
	cashexpire text NULL,
	cashimmediate text NULL,
	book text NULL,
	tesco text NULL,
	nocount text NULL,
	bookpredic text NULL,
	tescopredic text NULL,
	sendstatus text NULL,
	sendgiftdate text NULL,
	userconfirm text NULL,
	registermailtesco text NULL,
	receivetescodate text NULL,
	receivetescostatus text NULL,
	receivetescoreason text NULL,
	uploadxo text NULL,
	extrarate text NULL,
	effectivedateold text NULL,
	matdateold text NULL,
	expdateold text NULL,
	issuedageold text NULL,
	cv text NULL,
	cvdate text NULL,
	status2 text NULL,
	statusdate2 text NULL
)
WITH (
	OIDS=FALSE
) ;



CREATE TABLE tlp.policypaid(
	receiptno text NULL,
	policyno text NULL,
	seqno text NULL,
	paiddate text NULL,
	duedate text NULL,
	nextduedate text NULL,
	paidprem text NULL,
	numberpay text NULL,
	branchpay text NULL,
	bankpay text NULL,
	typepay text NULL,
	yearpay text NULL,
	paycount text NULL,
	createdate text NULL,
	cheqdate text NULL,
	typecustomer text NULL,
	username text NULL,
	importby text NULL,
	receiptstatus text NULL,
	receiptdescription text NULL,
	mode text NULL,
	todate text NULL,
	monthpay text NULL, 
	premtotal text NULL,
	descriptiondate text NULL,
	partnersend text NULL
)
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.policypaidrefund(
	receiptno text NULL,
	policyno text NULL,
	refunddate text NULL,
	createdate text NULL,
	username text NULL,
	fee text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.policyrider(
	riderno text NULL,
	policyno text NULL,
	plancode text NULL,
	statusnew text NULL,
	statusold text NULL,
	sa text NULL,
	premrider text NULL,
	premextra text NULL,
	premtotal text NULL,
	mode text NULL,
	covperiod text NULL,
	effectivedate text NULL,
	startdate text NULL,
	expdate text NULL,
	issuedage text NULL,
	attage text NULL,
	statusdate text NULL,
	endorsedate text NULL
)
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.product_amphur(
	amphurcode text NULL,
	provincename text NULL,
	amphurname text NULL,
	zipcode text NULL,
	description text NULL,
	provincecode text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.product_province(
	provincecode text NULL,
	provincename text NULL,
	description text NULL,
	uobchqclearingname text NULL,
	clrg_hs_no1 text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.productbank(
	accountno text NULL,
	bank text NULL,
	accountname text NULL,
	branch text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.productbankbranchmaster(
	bankcode text NULL,
	bankbranchcode text NULL,
	bankbranchname text NULL,
	banknick text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.productbankmaster(
	bankcode text NULL,
	bankname text NULL,
	banknick text NULL,
	partner text NULL,
	gateway text NULL,
	chanelpay text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.productbankpayment(
	accountno text NULL,
	bank text NULL,
	accountname text NULL,
	branch text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.productbenefitliving(
	plancode text NULL,
	year text NULL,
	benefit text NULL,
	no text NULL
)
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.productbranch(
	branchid text NULL,
	branchcode text NULL,
	typepartner text NULL,
	branchnameth text NULL,
	branchnameeng text NULL,
	branchmanager text NULL,
	branchdate text NULL,
	partnershipid text NULL,
	hubid text NULL,
	hubcode text NULL,
	licenceno text NULL,
	chklastupdate text NULL,
	branchactive text NULL
)
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.productbranchhubtmb(
	hub_code text NULL,
	hub_name text NULL,
	address1 text NULL,
	address2 text NULL,
	address3 text NULL,
	province text NULL,
	postcode text NULL,
	tel_no text NULL,
	fax_no text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.productbranchtcrainfo(
	branchid text NULL,
	hubcode text NULL,
	branchcode text NULL,
	hubseq text NULL,
	branch_name text NULL,
	address1 text NULL,
	address2 text NULL,
	address3 text NULL,
	province text NULL,
	postcode text NULL,
	tel_no text NULL,
	fax_no text NULL
)
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.productbranchtmbinfo(
	branchid text NULL,
	hubcode text NULL,
	branchcode text NULL,
	hubseq text NULL,
	branch_name text NULL,
	address1 text NULL,
	address2 text NULL,
	address3 text NULL,
	province text NULL,
	postcode text NULL,
	tel_no text NULL,
	fax_no text NULL
)
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.productbranchuobinfo(
	branchcode text NULL,
	branch_name_th text NULL,
	clearingzone text NULL,
	branch_name_eng text NULL,
	address1 text NULL,
	address2 text NULL,
	address3 text NULL,
	province text NULL,
	postcode text NULL,
	telno text NULL,
	faxno text NULL
)
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.productcv(
	plancode text NULL,
	age text NULL,
	sex text NULL,
	year text NULL,
	cv text NULL,
	rpu text NULL,
	rpucashreturn text NULL,
	eti_year text NULL,
	eti_month text NULL,
	eti_cashmaturity  text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.productridersetup(
	plancode text NULL,
	planname text NULL,
	insurancetype text NULL,
	plantype text NULL,
	par text NULL,
	distributionchannal text NULL,
	begindate text NULL,
	enddate text NULL,
	minage text NULL,
	maxage text NULL,
	calcagemethod text NULL,
	calcagedate text NULL,
	minsam text NULL,
	minsaf text NULL, 
	maxsa text NULL,
	coveragemethod text NULL,
	coverageterm text NULL,
	paymentmethod text NULL,
	paymentterm text NULL,
	dbmethod text NULL,
	dbtable text NULL,
	lbmethod text NULL,
	lbtable text NULL,
	mbmethod text NULL,
	mbtable text NULL,
	premiummethod text NULL,
	premiumtable text NULL,
	allowsubstd text NULL,
	extrapremium text NULL,
	nftable text NULL,
	pricinginterest text NULL,
	coveragetype text NULL,
	benefitcode text NULL,
	productcode text NULL,
	productname text NULL
) 
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.productsetup(
	plancode text NULL,
	planname text NULL,
	databasename text NULL,
	insurancetype text NULL,
	plantype text NULL,
	par text NULL,
	distributionchannal text NULL,
	begindate text NULL,
	enddate text NULL,
	minage text NULL,
	maxage text NULL,
	calcagemethod text NULL,
	calcagedate text NULL,
	minsam text NULL,
	minsaf text NULL,
	maxsa text NULL,
	coveragemethod text NULL,
	coverageterm text NULL,
	paymentmethod text NULL,
	paymentterm text NULL,
	dbmethod text NULL,
	dbtable text NULL,
	lbmethod text NULL,
	lbtable text NULL,
	mbmethod text NULL,
	mbtable text NULL,
	premiummethod text NULL,
	premiumtable text NULL,
	allowsubstd text NULL,
	extrapremium text NULL,
	nftable text NULL,
	pricinginterest text NULL,
	coveragetype text NULL,
	benefitcode text NULL,
	productcode text NULL,
	partner text NULL,
	partnercode text NULL,
	partnercodebcs text NULL,
	distributionxo text NULL,
	policycode text NULL,
	productname text NULL,
	callcenter text NULL,
	tmbproductid text NULL,
	ratecomm1 text NULL,
	ratecomm2 text NULL,
	ratecomm3 text NULL,
	ratecomm4 text NULL,
	ratecomm5 text NULL,
	ratecomm1t text NULL,
	ratecomm2t text NULL,
	ratecomm3t text NULL,
	ratecomm4t text NULL,
	ratecomm5t text NULL,
	ratecommadded1 text NULL,
	ratecommadded2 text NULL,
	rateho text NULL,
	ratema text NULL,
	rateus text NULL,
	plancodexo text NULL,
	plannamexo text NULL,
	masterpolicyeffdate text NULL,
	masterpolicyendeffdate text NULL
) 
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.productuobbranchprovince(
	provinceid text NULL,
	pcode text NULL,
	province text NULL,
	flaguobbranch text NULL,
	region text NULL,
	branchcodechqpay text NULL
) 
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.productwhtratesetup(
	whtaxtype text NULL,
	whtaxindividual text NULL,
	whtaxcorporate text NULL,
	whtazother text NULL,
	whtaxdesc text NULL
) 
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.statusmaster(
	status text NULL,
	description text NULL,
	typestatus text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.policyloanremainmonthly(
	loanid text NULL,
	policyno text NULL,
	customer text NULL,
	loanamount text NULL,
	loanapprovedate text NULL,
	lastpaiddate text NULL,
	interestrate text NULL,
	paidtimes text NULL,
	mailregistered text NULL,
	principleremain text NULL,
	interest text NULL,
	daysofinterest text NULL,
	allprinciplepaid text NULL,
	allinterestpaid text NULL,
	yleap text NULL, 
	month text NULL,
	year text NULL,
	createdate text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.aplletter(
	runningno text NULL,
	receiptno text NULL,
	policyno text NULL,
	statusnew text NULL,
	duedate text NULL,
	nextduedate text NULL,
	createdate text NULL,
	printdate text NULL,
	registermailno text NULL,
	receivename text NULL,
	receivedate text NULL,
	receiverelation text NULL,
	printyellowdate text NULL,
	reasonreturnid text NULL,
	reasonreturndesc text NULL,
	callbackphoneno text NULL,
	receiveinputdate text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.history_cashcoupon_estimatepaynextdue(
	partner text NULL,
	policyno text NULL,
	plancode text NULL,
	frstname text NULL,
	surname text NULL,
	mode text NULL,
	statusnew text NULL,
	issuepolicydate text NULL,
	effectivedate text NULL,
	nextduedate text NULL,
	year text NULL,
	startfirstdue text NULL,
	nextcoverdue text NULL,
	ratepay text NULL,
	cutoffduecashcoupondate text NULL,
	sa text NULL,
	premtotal text NULL,
	amtcashcouponvalrefund text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.historypolicydatarenewal(
	partner text NULL,
	policy text NULL,
	appno text NULL,
	payername text NULL,
	payersurname text NULL,
	prename text NULL,
	frstname text NULL,
	surname text NULL,
	channal text NULL,
	channalsend text NULL,
	branchtmbname text NULL,
	usurestatus text NULL,
	statusnew text NULL,
	statusnewremark text NULL,
	canceldate text NULL,
	statusdescription text NULL,
	statusold text NULL,
	statusoldremark text NULL,
	sex text NULL,
	occtype text NULL,
	extramort text NULL,
	issuedage text NULL,
	sa text NULL,
	premlife text NULL,
	premacc text NULL,
	premexta text NULL,
	premtotal text NULL,
	mode text NULL,
	commrate text NULL,
	commtyperate text NULL,
	commvat text NULL,
	commwhttax text NULL,
	commamount text NULL,
	commtotal text NULL,
	payperiod text NULL,
	covperiod text NULL,
	medical text NULL,
	class text NULL,
	effectivedate text NULL,
	birthdate text NULL,
	paymentdate text NULL,
	nextduedate text NULL,
	greaceperiod text NULL,
	yearpay text NULL,
	paycount text NULL,
	issuepolicydate text NULL,
	customerdate text NULL,
	receivefreelookdate text NULL,
	receivedate text NULL,
	statusdate text NULL,
	deathdate text NULL,
	modifydate text NULL,
	matdate text NULL,
	expdate text NULL,
	dateprintpolicy text NULL,
	idno text NULL,
	stopdate text NULL,
	stopreason text NULL,
	creditno text NULL,
	creditexpire text NULL,
	creditexpireforcheck text NULL,
	credittype text NULL,
	beneficiary1 text NULL,
	relationship1 text NULL,
	age1 text NULL,
	percentage1 text NULL,
	beneficiary2 text NULL,
	relationship2 text NULL,
	age2 text NULL,
	percentage2 text NULL,
	beneficiary3 text NULL,
	relationship3 text NULL,
	age3 text NULL,
	percentage3 text NULL,
	renewpaymenttype text NULL,
	ddform text NULL,
	dddoc text NULL,
	crform text NULL,
	crdoc text NULL, 
	ddcrform text NULL,
	ddcrdoc text NULL,
	renewddbranch text NULL,
	renewcreditno text NULL,
	accountno text NULL,
	accountname text NULL,
	bank text NULL,
	branch text NULL,
	branchnameth text NULL,
	usercode text NULL,
	usersname text NULL,
	sanew text NULL,
	expdatenew text NULL,
	cashexpire text NULL,
	cashimmediate text NULL,
	caddress1 text NULL,
	caddress2 text NULL,
	caddress3 text NULL,
	caddress4 text NULL,
	policyno text NULL,
	plancode text NULL,
	planname text NULL,
	verifydate text NULL,
	renewpaymenttypeverify text NULL,
	mobile text NULL,
	home text NULL,
	office text NULL,
	fax text NULL,
	sa_freepa text NULL,
	plancode_freepa text NULL,
	effecitvedate_freepa text NULL,
	maturitydate_freepa text NULL,
	age_freepa text NULL,
	race text NULL,
	nationality text NULL,
	salecode text NULL,
	salename text NULL,
	cv text NULL,
	cvdate text NULL,
	lastpaymentdate text NULL,
	lastpayduedate text NULL,
	lastreceiptno text NULL,
	lastyearpay text NULL,
	lastpaidprem text NULL,
	lasttypepay text NULL,
	lastbankpay text NULL, 
	lastbranchpay text NULL,
	lastyearpaid text NULL,
	lastcreatebilldate text NULL,
	lastreceiptstatus text NULL,
	lastmodereceipt text NULL,
	lastdatetimeupdate text NULL,
	snapdate text NULL,
	exportperiod text NULL,
	renewaldate text NULL,
	renewalyearperiod text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.reasonreturnletterddcc(
	reasonreturnid text NULL,
	reasonreturndesc text NULL
) 
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.printcheque(
	runningno text NULL,
	runningnoinsheet text NULL,
	payeename text NULL,
	amount text NULL,
	chequedate text NULL,
	username text NULL,
	printdate text NULL,
	pvno text NULL,
	chequeno text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.freepa(
	policyno text NULL,
	effectivedate text NULL,
	age text NULL,
	sa text NULL,
	certno text NULL,
	expiredate text NULL
) 
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.gcpregistermail(
	rowsheetno text NULL,
	sheetname text NULL,
	gcpyear text NULL,
	policyno text NULL,
	nameofaddress text NULL,
	surnameofaddress text NULL,
	postsenddate text NULL,
	zipcode text NULL,
	registermailno text NULL,
	notation text NULL,
	generatedate text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.gcpchequereturn(
	chqno text NULL,
	paymentdate text NULL,
	gcpyear text NULL,
	policyno text NULL,
	chqmedia text NULL,
	gcpcutoffdueyear text NULL,
	gcpcutoffduemonth text NULL,
	refno text NULL,
	gcpamt text NULL,
	appno text NULL,
	senddate text NULL,
	filename text NULL,
	paystatus text NULL,
	chequecleardate text NULL,
	refundbank text NULL,
	refundbranch text NULL,
	uploadstatus text NULL,
	chequedate text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.chq_transaction(
	ctcount text NULL,
	ctpv text NULL,
	ctyourref text NULL,
	ctbenef text NULL,
	cttaxid text NULL,
	ctma1 text NULL,
	ctma2 text NULL,
	ctma3 text NULL,
	ctzipcode text NULL,
	ctcheqamount text NULL,
	ctcheqdate text NULL,
	ctcharge text NULL,
	ctpaymentdet text NULL,
	ctderimeth text NULL,
	ctpaymentloc text NULL,
	ctfax text NULL,
	ctemail text NULL,
	ctwhtdoc text NULL,
	ctseqno text NULL,
	ctpaycon text NULL,
	ctwhttype text NULL,
	cttaxable1 text NULL,
	cttaxable2 text NULL,
	cttaxable3 text NULL,
	cttaxtype1 text NULL,
	cttaxtype2 text NULL,
	cttaxtype3 text NULL,
	cttaxdesc1 text NULL,
	cttaxdesc2 text NULL,
	cttaxdesc3 text NULL,
	cttaxrate1 text NULL,
	cttaxrate2 text NULL,
	cttaxrate3 text NULL,
	ctaxamount1 text NULL,
	ctaxamount2 text NULL,
	ctaxamount3 text NULL,
	ctcustomerid text NULL,
	ctbenefeng text NULL,
	cttrandate text NULL,
	cttrantime text NULL,
	ctgenreport text NULL,
	ctreserve2 text NULL,
	cttrantype text NULL,
	ctbankcode text NULL,
	ctbranchcode text NULL,
	normalcheque_id text NULL
) 
WITH (
	OIDS=FALSE
) ;	



CREATE TABLE tlp.productother(
	otherrun text NULL,
	othercode text NULL,
	otherdescription text NULL,
	othergroup text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.maturityhistory(
	matid text NULL,
	matpolno text NULL,
	matpregendate text NULL,
	matpregenuser text NULL,
	matprestatus text NULL,
	matprevaluegross text NULL,
	matpreaplprinciple text NULL,
	matpreaplinterest text NULL,
	matprepolprinciple text NULL,
	matprepolinterest text NULL,
	matprevaluenet text NULL,
	matgenuser text NULL,
	matdate text NULL,
	matgendate text NULL,
	matvaluegross text NULL,
	matstatus text NULL,
	mataplprinciple text NULL,
	mataplinterest text NULL,
	matpolprinciple text NULL,
	matpolinterest text NULL,
	matvaluenet text NULL,
	matremark text NULL,
	matgenuserscbt text NULL,
	matgendatescbt text NULL
) 
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.customerinfo(
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
	deaddate text NULL,
	lastpaydate text NULL,
	lastreceiptno text NULL,
	mode text NULL,
	lastpayperiod text NULL
) 
WITH (
	OIDS=FALSE
) ;	


CREATE TABLE tlp.customersa(
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

CREATE TABLE tlp.payment(
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
	collecteddate text NULL,
	mode text NULL,
	payperiod text NULL,
	receiptno text NULL
) 
WITH (
	OIDS=FALSE
) ;	

CREATE TABLE tlp.splitpremiumamount(
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
	lifetpdpremium text NULL,
	receiptno text NULL
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

CREATE TABLE tlp.masproductcoverage(
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

CREATE TABLE tlp.masproductcoverageclaim(
	productcoverageclaimseq text NULL, 
	productcoverageclaimonetime text NULL, 
	productcoverageseq text NULL, 
	claimtypeseq text NULL, 
	risktypeseq text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlp.claimregisterheader(
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

CREATE TABLE tlp.claimregisterdetail(
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


CREATE TABLE tlp.claimpaymentdetail(
	paymentdt_id text NULL,
	payment_id text NULL,
	paymenttype text NULL,
	payeename text NULL,
	pamentamt text NULL,
	method text NULL,
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


CREATE TABLE tlp.claimpayment(
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
/*DROP DATABASE IF EXISTS edm4pos;
CREATE DATABASE edm4pos
    TEMPLATE = template0
    ENCODING = UTF8
    LC_COLLATE = 'th_TH.UTF8'
    LC_CTYPE   = 'th_TH.UTF8';*/

DROP SCHEMA IF EXISTS tlpktc CASCADE;

CREATE SCHEMA tlpktc;

CREATE TABLE tlpktc.billingheader (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxeffectivedate text NULL,
	uttxfiledate text NULL,
	uttxmerid text NULL,
	uttxmername text NULL,
	uttxcompacno text NULL,
	uttxservicetype text NULL,
	uttxbankcode text NULL,
	uttxrecsize text NULL,
	uttxfiletype text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingdetail (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxpan text NULL,
	uttxcardholdername text NULL,
	uttxtrxnamt text NULL,
	uttxreferno1 text NULL,
	uttxreferno2 text NULL,
	uttxtrxntype text NULL,
	uttxrecordstatus text NULL,
	uttxpaymentdate text NULL,
	uttxpaymenttime text NULL,
	uttxresponsecode text NULL,
	uttxauthcode text NULL,
	expirydate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingfooter (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxtotdbamount text NULL,
	uttxnodbitem text NULL,
	uttxtotcramount text NULL,
	uttxnocritem text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentheader (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxeffectivedate text NULL,
	uttxfiledate text NULL,
	uttxmerid text NULL,
	uttxmername text NULL,
	uttxcompacno text NULL,
	uttxservicetype text NULL,
	uttxbankcode text NULL,
	uttxrecsize text NULL,
	uttxfiletype text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentdetail (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxpan text NULL,
	uttxcardholdername text NULL,
	uttxtrxnamt text NULL,
	uttxreferno1 text NULL,
	uttxreferno2 text NULL,
	uttxtrxntype text NULL,
	uttxrecordstatus text NULL,
	uttxpaymentdate text NULL,
	uttxpaymenttime text NULL,
	uttxresponsecode text NULL,
	uttxauthcode text NULL,
	expirydate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentfooter (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxtotdbamount text NULL,
	uttxnodbitem text NULL,
	uttxtotcramount text NULL,
	uttxnocritem text NULL,
	uttxtotrejdbamount text NULL,
	uttxnorejdbitem text NULL,
	uttxtotrejcramount text NULL,
	uttxnorejcritem text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingheader1967 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxeffectivedate text NULL,
	uttxfiledate text NULL,
	uttxmerid text NULL,
	uttxmername text NULL,
	uttxcompacno text NULL,
	uttxservicetype text NULL,
	uttxbankcode text NULL,
	uttxrecsize text NULL,
	uttxfiletype text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingdetail1967 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxpan text NULL,
	uttxcardholdername text NULL,
	uttxtrxnamt text NULL,
	uttxreferno1 text NULL,
	uttxreferno2 text NULL,
	uttxtrxntype text NULL,
	uttxrecordstatus text NULL,
	uttxpaymentdate text NULL,
	uttxpaymenttime text NULL,
	uttxresponsecode text NULL,
	uttxauthcode text NULL,
	expirydate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingfooter1967 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxtotdbamount text NULL,
	uttxnodbitem text NULL,
	uttxtotcramount text NULL,
	uttxnocritem text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentheader1967 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxeffectivedate text NULL,
	uttxfiledate text NULL,
	uttxmerid text NULL,
	uttxmername text NULL,
	uttxcompacno text NULL,
	uttxservicetype text NULL,
	uttxbankcode text NULL,
	uttxrecsize text NULL,
	uttxfiletype text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentdetail1967 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxpan text NULL,
	uttxcardholdername text NULL,
	uttxtrxnamt text NULL,
	uttxreferno1 text NULL,
	uttxreferno2 text NULL,
	uttxtrxntype text NULL,
	uttxrecordstatus text NULL,
	uttxpaymentdate text NULL,
	uttxpaymenttime text NULL,
	uttxresponsecode text NULL,
	uttxauthcode text NULL,
	expirydate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentfooter1967 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxtotdbamount text NULL,
	uttxnodbitem text NULL,
	uttxtotcramount text NULL,
	uttxnocritem text NULL,
	uttxtotrejdbamount text NULL,
	uttxnorejdbitem text NULL,
	uttxtotrejcramount text NULL,
	uttxnorejcritem text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingheader1968 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxeffectivedate text NULL,
	uttxfiledate text NULL,
	uttxmerid text NULL,
	uttxmername text NULL,
	uttxcompacno text NULL,
	uttxservicetype text NULL,
	uttxbankcode text NULL,
	uttxrecsize text NULL,
	uttxfiletype text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingdetail1968 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxpan text NULL,
	uttxcardholdername text NULL,
	uttxtrxnamt text NULL,
	uttxreferno1 text NULL,
	uttxreferno2 text NULL,
	uttxtrxntype text NULL,
	uttxrecordstatus text NULL,
	uttxpaymentdate text NULL,
	uttxpaymenttime text NULL,
	uttxresponsecode text NULL,
	uttxauthcode text NULL,
	expirydate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingfooter1968 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxtotdbamount text NULL,
	uttxnodbitem text NULL,
	uttxtotcramount text NULL,
	uttxnocritem text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentheader1968 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxeffectivedate text NULL,
	uttxfiledate text NULL,
	uttxmerid text NULL,
	uttxmername text NULL,
	uttxcompacno text NULL,
	uttxservicetype text NULL,
	uttxbankcode text NULL,
	uttxrecsize text NULL,
	uttxfiletype text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentdetail1968 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxpan text NULL,
	uttxcardholdername text NULL,
	uttxtrxnamt text NULL,
	uttxreferno1 text NULL,
	uttxreferno2 text NULL,
	uttxtrxntype text NULL,
	uttxrecordstatus text NULL,
	uttxpaymentdate text NULL,
	uttxpaymenttime text NULL,
	uttxresponsecode text NULL,
	uttxauthcode text NULL,
	expirydate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentfooter1968 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxtotdbamount text NULL,
	uttxnodbitem text NULL,
	uttxtotcramount text NULL,
	uttxnocritem text NULL,
	uttxtotrejdbamount text NULL,
	uttxnorejdbitem text NULL,
	uttxtotrejcramount text NULL,
	uttxnorejcritem text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingheader1914 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxeffectivedate text NULL,
	uttxfiledate text NULL,
	uttxmerid text NULL,
	uttxmername text NULL,
	uttxcompacno text NULL,
	uttxservicetype text NULL,
	uttxbankcode text NULL,
	uttxrecsize text NULL,
	uttxfiletype text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingdetail1914 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxpan text NULL,
	uttxcardholdername text NULL,
	uttxtrxnamt text NULL,
	uttxreferno1 text NULL,
	uttxreferno2 text NULL,
	uttxtrxntype text NULL,
	uttxrecordstatus text NULL,
	uttxpaymentdate text NULL,
	uttxpaymenttime text NULL,
	uttxresponsecode text NULL,
	uttxauthcode text NULL,
	expirydate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.billingfooter1914 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxtotdbamount text NULL,
	uttxnodbitem text NULL,
	uttxtotcramount text NULL,
	uttxnocritem text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentheader1914 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxeffectivedate text NULL,
	uttxfiledate text NULL,
	uttxmerid text NULL,
	uttxmername text NULL,
	uttxcompacno text NULL,
	uttxservicetype text NULL,
	uttxbankcode text NULL,
	uttxrecsize text NULL,
	uttxfiletype text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentdetail1914 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxpan text NULL,
	uttxcardholdername text NULL,
	uttxtrxnamt text NULL,
	uttxreferno1 text NULL,
	uttxreferno2 text NULL,
	uttxtrxntype text NULL,
	uttxrecordstatus text NULL,
	uttxpaymentdate text NULL,
	uttxpaymenttime text NULL,
	uttxresponsecode text NULL,
	uttxauthcode text NULL,
	expirydate text NULL
)
WITH (
	OIDS=FALSE
) ;

CREATE TABLE tlpktc.paymentfooter1914 (
	uttxrectype text NULL,
	uttxseq text NULL,
	uttxtotdbamount text NULL,
	uttxnodbitem text NULL,
	uttxtotcramount text NULL,
	uttxnocritem text NULL,
	uttxtotrejdbamount text NULL,
	uttxnorejdbitem text NULL,
	uttxtotrejcramount text NULL,
	uttxnorejcritem text NULL,
	filler text NULL
)
WITH (
	OIDS=FALSE
) ;
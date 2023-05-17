/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE order_datail CASCADE CONSTRAINTS;
DROP TABLE attraction CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE qna CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE worker CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE attraction_aseq;
DROP SEQUENCE cart_cseq;
DROP SEQUENCE notice_nseq;
DROP SEQUENCE orders_oseq;
DROP SEQUENCE order_datail_odesq;
DROP SEQUENCE qna_qseq;




/* Create Sequences */

CREATE SEQUENCE attraction_aseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE cart_cseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE notice_nseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE orders_oseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE order_datail_odesq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE qna_qseq INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE address
(
	zip_num varchar2(7) NOT NULL,
	sido varchar2(30) NOT NULL,
	gugun varchar2(30) NOT NULL,
	zip_code varchar2(30),
	bunji varchar2(30)
);


CREATE TABLE attraction
(
	aseq number(5,0) NOT NULL,
	pnum number(10,0) NOT NULL,
	acontent varchar2(1000),
	act1 varchar2(10),
	act2 varchar2(10),
	 alimit1 nvarchar2(10),
	 alimit2 varchar2(10),
	 alimit3 varchar2(3),
	aresult number(10,0),
	PRIMARY KEY (aseq)
);


CREATE TABLE cart
(
	cseq number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	aseq number(5,0) NOT NULL,
	quantity number(5,0) DEFAULT 1 NOT NULL,
	result char(1) DEFAULT '1' NOT NULL,
	indate date DEFAULT sysdate,
	PRIMARY KEY (cseq)
);


CREATE TABLE member
(
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(20) NOT NULL,
	email varchar2(40) NOT NULL,
	zip_num varchar2(7),
	address1 varchar2(50),
	address2 varchar2(50),
	indate date DEFAULT sysdate,
	PRIMARY KEY (id)
);


CREATE TABLE notice
(
	nseq number(10,0) NOT NULL,
	notice_id varchar2(20) NOT NULL,
	title varchar2(10),
	ncontent varchar2(1000),
	indate date DEFAULT stsdate,
	PRIMARY KEY (nseq)
);


CREATE TABLE orders
(
	oseq number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	indate date DEFAULT sysdate,
	oresult number(10,0),
	PRIMARY KEY (oseq)
);


CREATE TABLE order_datail
(
	odesq number(10,0) NOT NULL,
	aseq number(5,0) NOT NULL,
	oseq number(10,0) NOT NULL,
	quantity number(5,0) DEFAULT 1 NOT NULL,
	PRIMARY KEY (odesq)
);


CREATE TABLE qna
(
	qseq number(5,0) NOT NULL,
	id varchar2(20) NOT NULL,
	subject varchar2(100) NOT NULL,
	content varchar2(1000) NOT NULL,
	reply varchar2(1000),
	rep char(1) DEFAULT '1',
	indate date DEFAULT sysdate,
	PRIMARY KEY (qseq)
);


CREATE TABLE worker
(
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(0) NOT NULL,
	PRIMARY KEY (id)
);



/* Create Foreign Keys */

ALTER TABLE cart
	ADD FOREIGN KEY (aseq)
	REFERENCES attraction (aseq)
;


ALTER TABLE order_datail
	ADD FOREIGN KEY (aseq)
	REFERENCES attraction (aseq)
;


ALTER TABLE cart
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE orders
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE qna
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE order_datail
	ADD FOREIGN KEY (oseq)
	REFERENCES orders (oseq)
;


ALTER TABLE notice
	ADD FOREIGN KEY (notice_id)
	REFERENCES worker (id)
;


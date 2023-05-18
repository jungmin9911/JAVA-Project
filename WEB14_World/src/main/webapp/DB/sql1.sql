


/* Drop Tables */

DROP TABLE Laddress CASCADE CONSTRAINTS;
DROP TABLE Lcart CASCADE CONSTRAINTS;
DROP TABLE Lorder_datail CASCADE CONSTRAINTS;
DROP TABLE Lattraction CASCADE CONSTRAINTS;
DROP TABLE Lorders CASCADE CONSTRAINTS;
DROP TABLE Lqna CASCADE CONSTRAINTS;
DROP TABLE Lmember CASCADE CONSTRAINTS;
DROP TABLE Lnotice CASCADE CONSTRAINTS;
DROP TABLE Lworker CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE attraction_aseq;
DROP SEQUENCE cart_cseq;
DROP SEQUENCE Lattraction_aseq;
DROP SEQUENCE Lcart_cseq;
DROP SEQUENCE Lnotice_nseq;
DROP SEQUENCE Lorders_oseq;
DROP SEQUENCE Lorder_datail_odesq;
DROP SEQUENCE Lqna_qseq;
DROP SEQUENCE notice_nseq;
DROP SEQUENCE orders_oseq;
DROP SEQUENCE order_datail_odesq;
DROP SEQUENCE qna_qseq;




/* Create Sequences */

CREATE SEQUENCE attraction_aseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE cart_cseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lattraction_aseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lcart_cseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lnotice_nseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lorders_oseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lorder_datail_odesq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lqna_qseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE notice_nseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE orders_oseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE order_datail_odesq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE qna_qseq INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE Laddress
(
	zip_num varchar2(7) NOT NULL,
	sido varchar2(30) NOT NULL,
	gugun varchar2(30) NOT NULL,
	zip_code varchar2(30),
	bunji varchar2(30)
);


CREATE TABLE Lattraction
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

ALTER TABLE Lattraction
ADD image VARCHAR2(255);

ALTER TABLE Lattraction
ADD useyn char(1) DEFAULT 'Y';

ALTER TABLE Lattraction
ADD bestyn char(1) DEFAULT 'Y';


CREATE TABLE Lcart
(
	cseq number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	aseq number(5,0) NOT NULL,
	quantity number(5,0) DEFAULT 1 NOT NULL,
	result char(1) DEFAULT '1' NOT NULL,
	indate date DEFAULT sysdate,
	PRIMARY KEY (cseq)
);


CREATE TABLE Lmember
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


CREATE TABLE Lnotice
(
	nseq number(10,0) NOT NULL,
	notice_id varchar2(20) NOT NULL,
	title varchar2(10),
	ncontent varchar2(1000),
	indate date DEFAULT sysdate,
	PRIMARY KEY (nseq)
);


CREATE TABLE Lorders
(
	oseq number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	indate date DEFAULT sysdate,
	oresult number(10,0),
	PRIMARY KEY (oseq)
);


CREATE TABLE Lorder_datail
(
	odesq number(10,0) NOT NULL,
	aseq number(5,0) NOT NULL,
	oseq number(10,0) NOT NULL,
	quantity number(5,0) DEFAULT 1 NOT NULL,
	PRIMARY KEY (odesq)
);


CREATE TABLE Lqna
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


CREATE TABLE Lworker
(
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(20) NOT NULL,
	PRIMARY KEY (id)
);



/* Create Foreign Keys */

ALTER TABLE Lcart
	ADD FOREIGN KEY (aseq)
	REFERENCES Lattraction (aseq)
;


ALTER TABLE Lorder_datail
	ADD FOREIGN KEY (aseq)
	REFERENCES Lattraction (aseq)
;


ALTER TABLE Lcart
	ADD FOREIGN KEY (id)
	REFERENCES Lmember (id)
;


ALTER TABLE Lorders
	ADD FOREIGN KEY (id)
	REFERENCES Lmember (id)
;


ALTER TABLE Lqna
	ADD FOREIGN KEY (id)
	REFERENCES Lmember (id)
;


ALTER TABLE Lorder_datail
	ADD FOREIGN KEY (oseq)
	REFERENCES Lorders (oseq)
;


ALTER TABLE Lnotice
	ADD FOREIGN KEY (notice_id)
	REFERENCES Lworker (id)
;






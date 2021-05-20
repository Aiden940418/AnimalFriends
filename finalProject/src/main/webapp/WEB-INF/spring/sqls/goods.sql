--굿즈
DROP TABLE GOODS;
DROP SEQUENCE GNO;

CREATE SEQUENCE GNO NOCACHE;
CREATE TABLE GOODS (
	GNO	NUMBER PRIMARY KEY,
	GCTGY VARCHAR2(100) NOT NULL,
	GNAME VARCHAR2(1000) NOT NULL,
	GPRICE NUMBER NOT NULL,
    GCONTENT VARCHAR2(2000) NULL,
	GSTOCK NUMBER NOT NULL,
	GCOUNT NUMBER default 0,
	GDATE DATE NOT NULL,
    GIMG VARCHAR2(2000) NOT NULL, 
    GTHUMBIMG VARCHAR2(2000) NOT NULL
    

	

);






SELECT*FROM GOODS;

INSERT INTO GOODS
VALUES (GNO.NEXTVAL, '강아지','고구마', 3000,'내용', '5', '0', SYSDATE);

INSERT INTO GOODS
VALUES (GNO.NEXTVAL, '수건', '수건', 3000,'내용', '100', '2', SYSDATE);

INSERT INTO GOODS
VALUES (GNO.NEXTVAL, '수건2', '수건2', 3000,'내용', '100', '2', SYSDATE);
INSERT INTO GOODS
VALUES (GNO.NEXTVAL, '수건3', '수건3', 3000,'내용', '100', '2', SYSDATE);
INSERT INTO GOODS
VALUES (GNO.NEXTVAL, '수건4', '수건4', 3000,'내용', '100', '2', SYSDATE);

SELECT * FROM GOODS;

commit

--굿즈 주문
DROP SEQUENCE GORNO;
DROP TABLE GOODSORDERS;

CREATE SEQUENCE GORNO NOCACHE;
CREATE TABLE GOODSORDERS (
	GORNO NUMBER PRIMARY KEY,
	GORSTATUS VARCHAR2(200) NOT NULL,
	GORTOTALP NUMBER NULL,
	MNO NUMBER NOT NULL,
    
FOREIGN KEY(MNO) REFERENCES MEMBER(MNO)    

);


SELECT*FROM GOODSORDERS;


--굿즈 주문 상세
DROP SEQUENCE GORDETAILNO;
DROP TABLE GOODSORDERDETAIL;

CREATE SEQUENCE GORDETAILNO NOCACHE;
CREATE TABLE GOODSORDERDETAIL(
	GORDETAILNO NUMBER PRIMARY KEY,
	GNO NUMBER NOT NULL,	
	GORNO NUMBER NOT NULL,
	MNO NUMBER NOT NULL,
	GQUT NUMBER NOT NULL,
	GORPRICE NUMBER NOT NULL,
	
	foreign key(GNO) references GOODS(GNO),
	foreign key(GORNO) references GOODSORDERS(GORNO),
	foreign key(MNO) references MEMBER(MNO)

);

SELECT*FROM GOODSORDERDETAIL;

COMMIT



-------------------------------------------------------------------------
DROP TABLE CART;

DROP SEQUENCE CARTNO;
CREATE SEQUENCE CARTNO;

CREATE TABLE CART (

    CARTNO NUMBER NOT NULL,
    MNO NUMBER NOT NULL,
    GNO NUMBER NOT NULL,
    CARTSTOCK NUMBER NOT NULL,
    CARTDATE DATE DEFAULT SYSDATE,
    
    primary key(CARTNO, MNO)

	

);

alter table CART
    add CONSTRAINT CART_MNO FOREIGN KEY(MNO) REFERENCES MEMBER(MNO) ON DELETE CASCADE;
    
alter table CART
    ADD CONSTRAINT CART_GNO FOREIGN KEY(GNO) REFERENCES GOODS(GNO) ON DELETE CASCADE;
    

    



commit





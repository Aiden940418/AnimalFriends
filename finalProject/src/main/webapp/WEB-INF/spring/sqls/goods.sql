--굿즈
DROP TABLE GOODS CASCADE CONSTRAINTS;
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



commit





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


------------------------------------------------------------------------------------------


DROP TABLE GOODSORDER;


CREATE TABLE GOODSORDER (

    ORDERID VARCHAR2(50),
    MNO     NUMBER not null,
    ORDERNAME   varchar2(50) not null,
    ORDERADDR1  varchar2(20) not null,
    ORDERADDR2  varchar2(50) not null,
    ORDERADDR3  varchar2(50) not null,
    ORDERPHONE  varchar2(30) not null,
    AMOUNT      number       not null,
    ORDERDATE   Date         default sysdate,   
    primary key(orderId)






);


alter table goodsorder
    add constraint order_mId foreign key(mno)
    references member(mno) on delete cascade;
    
    
    
DROP TABLE ORDER_DETAILS;    

create table ORDER_DETAILS (
    ORDERDETAILSNUM number       not null,
    ORDERID         varchar2(50) not null,
    GNO         number          not null,
    CARTSTOCK       number          not null,
    primary key(orderDetailsNum)
);

drop sequence order_details_seq;
create sequence order_details_seq;
-------------------------------------------------------------------------

--굿즈 리뷰 작성
DROP TABLE REVIEW;
DROP SEQUENCE GREWNO;

CREATE SEQUENCE GREWNO;
CREATE TABLE REVIEW (
	GREWNO NUMBER NOT NULL PRIMARY KEY,
	GREWWRITER VARCHAR2(500) NOT NULL,
	GNO NUMBER NOT NULL,
	GREWTITLE VARCHAR2(2000) NOT NULL,
	GREWCONTENT VARCHAR2(4000) NOT NULL,
	GREWDATE DATE DEFAULT SYSDATE NOT NULL,
	
	FOREIGN KEY(GNO) REFERENCES GOODS(GNO) ON DELETE CASCADE
);
    
    
INSERT INTO REVIEW VALUES( GREWNO.NEXTVAL, '관리자',1,'TEST','TEST',SYSDATE );
    
SELECT * FROM REVIEW;
    
    
    



alter table order_details
    add constraint torder_details_orderId foreign key(orderid)
    references goodsorder(orderId) on delete cascade;
    
    






select * from goodsOrder;
select * from order_details;

select * from goods;



commit

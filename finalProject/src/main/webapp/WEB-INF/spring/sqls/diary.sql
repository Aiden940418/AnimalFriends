DROP TABLE DIARY CASCADE CONSTRAINTS;
DROP SEQUENCE DNOSEQ;

CREATE SEQUENCE DNOSEQ;
CREATE TABLE DIARY(
    DNO NUMBER PRIMARY KEY, 
    MNO NUMBER NOT NULL, 
    DCONTENT VARCHAR2(2000) NOT NULL,
    DDATE DATE NOT NULL, 
    DIARYIMG VARCHAR2(2000) NOT NULL, 
    DIARYTHUMBIMG VARCHAR2(2000) NOT NULL,

    CONSTRAINT FK_MNO_DIARY FOREIGN KEY(MNO) REFERENCES MEMBER(MNO)
);

INSERT INTO DIARY
VALUES(DNOSEQ.NEXTVAL, 1, '첫번째 입양일기 글 내용입니다', SYSDATE, 'aaa.jpg', 'aaa.jpg');
INSERT INTO DIARY
VALUES(DNOSEQ.NEXTVAL, 1, '두번째 입양일기 글 내용입니다', SYSDATE, 'aaa.jpg', 'aaa.jpg');
INSERT INTO DIARY
VALUES(DNOSEQ.NEXTVAL, 2, '이순신의 입양일기 글 내용입니다~~', SYSDATE, 'aaa.jpg', 'aaa.jpg');

INSERT INTO DIARY
VALUES(DNOSEQ.NEXTVAL, 2, '무한스크롤 테스트용 입양일기 글', SYSDATE, 'aaa.jpg', 'aaa.jpg');

SELECT * 
FROM DIARY;


COMMIT;
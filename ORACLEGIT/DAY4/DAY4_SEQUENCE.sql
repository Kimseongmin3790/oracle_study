INSERT INTO BOARD VALUES(1, '첫번째게시글', '내용111', 'TEST');

CREATE SEQUENCE TEST_SEQ
    INCREMENT BY 1 -- 증가 수
    START WITH 1; -- 시작할 곳
    
-- 옵션    
--   MINVALUE 1 -- 시퀀스의 최소 값
--   MAXVALUE 99999 -- 시퀀스의 최대 값
--   NOCYCLE; -- 반복여부

SELECT TEST_SEQ.NEXTVAL
FROM DUAL;

INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, '세번째게시글', '내용333', 'TEST');

SELECT * FROM BOARD;
COMMIT;
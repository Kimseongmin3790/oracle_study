-- 4. DELETE (레코드 삭제)

SELECT * FROM STUDENT;
DELETE FROM STUDENT;
 
DELETE FROM STUDENT WHERE STU_NAME = '홍길동'; -- DELETE FROM을 쓰고 테이블을 정하기 전에 조건을 먼저 쓰기 (전체 삭제 방지)

DELETE FROM STUDENT WHERE STU_NAME IN ('김철수', '홍길동');
COMMIT;
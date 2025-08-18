SELECT * FROM BOOK;
SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

-- 1.기본적인 INSERT, UPDATE, DELETE 문을 숙지할 것.

-- INSERT INTO (TABLE) VALUES ();
-- UPDATE (TABLE) SET (VALUES) WHERE (COLUMN) = '';
-- DELETE FROM (TABLE) WHERE (COLUMN) = '';

-- 2.특정 컬럼 값의 위치에 *표 찍는거 (SUBSTR, INSTR, RPAD, LPAD)

-- SELECT RPAD(SUBSTR((COLUMN, 1, INSTR(COLUMN, '-')), LENGTH(), '*') 

-- 3.기본적인 SELECT (기본 조건. 예를 들어 키가 170이상인 학생)
-- 4.내장 함수(SUBSTR, REPLACE, ROUND 등)
-- 5.JOIN(INNER, LEFT), 그룹 함수, ROWNUM, 서브쿼리 등 4문제
-- 6.기본적인 조인부터 조인+서브쿼리+그룹함수 형태까지
-- 7.테이블은 새로운 테이블 만들어서 제공
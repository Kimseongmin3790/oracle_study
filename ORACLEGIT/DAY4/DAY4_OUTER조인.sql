-- OUTER JOIN
-- LEFT, RIGHT | LEFT만 알면 대부분 된다.
SELECT * 
FROM STUDENT S
LEFT JOIN ENROL E ON S.STU_NO = E.STU_NO;

-- 각 학생들의 시험을 본 개수 출력
-- 이름, 개수 출력. 단 시험을 하나도 보지 않았으면 개수는 0으로 출력

SELECT *
FROM STUDENT S
INNER JOIN ENROL E ON S.STU_NO = E.STU_NO;

SELECT S.STU_NO, STU_NAME, COUNT(ENR_GRADE) 시험개수-- 레코드에는 존재하지만 ENR_GRADE는 NULL로 표시
FROM STUDENT S
LEFT JOIN ENROL E ON S.STU_NO = E.STU_NO
GROUP BY S.STU_NO, STU_NAME;

---

SELECT EMPNO, ENAME, CNT
FROM EMP E
LEFT JOIN (
    SELECT MGR, COUNT(*) CNT
    FROM EMP
    GROUP BY MGR
) T ON E.EMPNO = T.MGR;

-- 각 직원의 부하직원 수를 구하기. 단 없으면 0으로 출력
-- 출력 컬럼 : 사번, 이름, 부하직원 수

SELECT E.EMPNO, E.ENAME, COUNT(E2.MGR) CNT
FROM EMP E
LEFT JOIN EMP E2 ON E.EMPNO = E2.MGR
GROUP BY E.EMPNO, E.ENAME, E2.MGR;

----------------------

-- 학번, 학생이름, 담당교수 이름 출력
-- 단, 담당교수가 없으면 '담당교수없음' 으로 출력
SELECT * FROM STU; -- PROFNO => FK
SELECT * FROM PROFESSOR; -- PROFNO => PK

SELECT STUNO, S.NAME, DECODE(P.NAME, NULL, '담당교수없음', P.NAME) 담당교수 -- NVL(P.NAME, '담당교수없음')
FROM STU S
LEFT JOIN PROFESSOR P ON S.PROFNO = P.PROFNO;

-------------------
-- STUDENT
-- 학생들의 시험 평균 점수 출력
-- 단 시험을 보지 않은 학생은 '성적없음'출력

SELECT S.STU_NO, S.STU_NAME, DECODE(AVG(ENR_GRADE), NULL, '성적없음', AVG(ENR_GRADE)) -- NVL(TO_CHAR(AVG(ENR_GRADE)), '성적없음') <= 타입이 맞아야됨 DECODE(AVG(ENR_GRADE), NULL, '성적없음', AVG(ENR_GRADE))
FROM STUDENT S
LEFT JOIN ENROL E ON S.STU_NO = E.STU_NO
GROUP BY S.STU_NO, S.STU_NAME;
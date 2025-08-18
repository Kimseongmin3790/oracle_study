SELECT ROWNUM, S.*
FROM STUDENT S;

-- 3~6

SELECT *
FROM (
    SELECT ROWNUM AS RN, S.*
    FROM STUDENT S
)
WHERE RN BETWEEN 3 AND 6;

-- 학생테이블에서 키가 큰 상위 5명만 출력

SELECT *
FROM (
    SELECT *
    FROM STUDENT
    ORDER BY STU_HEIGHT DESC
)
WHERE ROWNUM <= 5;

-- 평균급여가 2번째로 큰 부서의 부서명, 평균급여 출력

SELECT DNAME, 평균급여
FROM (
    SELECT ROWNUM AS RN, E.*
    FROM (
        SELECT DNAME, ROUND(AVG(SAL)) 평균급여
        FROM EMP E
        INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO
        GROUP BY DNAME
        ORDER BY 평균급여
    ) E
)
WHERE RN = 2;

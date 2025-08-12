-- 서브 쿼리 - 쿼리 안에 또다른 쿼리

SELECT MAX(PAY)
FROM PROFESSOR;

-- 급여 가장 많이 받는 사람
SELECT *
FROM PROFESSOR
WHERE PAY = ( -- 570인 사람 = 위의 결과
SELECT MAX(PAY)
FROM PROFESSOR
);

-- 급여 가장 많이 받는 사람 + 가장 적게 받는 사람
SELECT *
FROM PROFESSOR
WHERE PAY = ( -- 570인 사람 = 위의 결과
    SELECT MAX(PAY)
    FROM PROFESSOR
) OR PAY = ( -- 570인 사람 = 위의 결과
    SELECT MIN(PAY)
    FROM PROFESSOR
);

SELECT *
FROM PROFESSOR
WHERE DEPTNO IN ( -- IN을 통해 여러 답을 받을수있다
    SELECT DEPTNO
    FROM DEPARTMENT
    WHERE DNAME IN ('컴퓨터공학과', '멀티미디어공학과')
);

SELECT DEPTNO
FROM DEPARTMENT
WHERE DNAME = '컴퓨터공학과';
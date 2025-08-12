
SELECT * FROM EMP;
-- 1. 각 부서별 평균 급여를 출력.
SELECT DEPTNO, ROUND(AVG(SAL), 2)
FROM EMP
GROUP BY DEPTNO;

-- 2. 각 부서별 인원 출력.
SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO;

-- 3. 각 부서에서 급여가 1500이상인 사람의 부서별 사람 수 출력(부서명, 사람수 출력)
-- + 위 조건에 맞는 사람수가 3명 이상인 부서만 출력
SELECT DEPTNO, COUNT(*)
FROM EMP
WHERE SAL >= 1500
GROUP BY DEPTNO
HAVING COUNT(*) >= 3;
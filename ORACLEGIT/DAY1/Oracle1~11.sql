SELECT * FROM EMP;
-- 1. 모든 직원의 SAL 값에 10%를 추가한 값을 출력해 보시오.
SELECT SAL, SAL + SAL*0.1
FROM EMP;

-- 2. SAL 값이 1500 이상인 직원들의 평균 급여를 구해 보시오.
SELECT AVG(SAL)
FROM EMP
WHERE SAL >= 1500;

-- 3. 각 부서(DEPTNO)별로 급여의 총합을 구해 보시오.
SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO;

-- 4. SAL 값이 1300 이상이면서 부서번호가 20인 직원들의 평균 급여를 구해 보시오.
SELECT AVG(SAL)
FROM EMP
WHERE SAL >= 1300 AND DEPTNO = 20;

-- 5. 각 부서별로 급여가 가장 높은 직원의 이름을 구해 보시오.
-- * 서브쿼리 배운 후 수정 + 조인
SELECT DEPTNO, MAX(SAL)
FROM EMP
GROUP BY DEPTNO;

-- 6. 직원들의 급여를 오름차순으로 정렬하시오.
SELECT SAL 
FROM EMP
ORDER BY SAL;


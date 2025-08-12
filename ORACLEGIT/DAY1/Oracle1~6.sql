-- 1. HIREDATE에서 직원이 입사한 년도를 추출하여 출력해 보시오.
SELECT ENAME,
    TO_char(HIREDATE, 'YYYY')
FROM EMP;

-- 2. HIREDATE가 1981년 1월 1일 이후인 직원들의 이름을 출력해 보시오.
SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE > '81-01-01'; -- TO_DATE() 안에 넣는게 더 정확하다 81/01/01, YYYY/MM/DD

-- 3. 입사일이 1981년 5월 1일 이전인 직원들의 이름과 입사일을 출력해 보시오.
SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE < '81-05-01';

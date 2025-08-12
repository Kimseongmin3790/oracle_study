-- 1. ENAME 열에서 모든 이름을 소문자로 변경하여 출력해 보시오.
SELECT ENAME, 
    LOWER(ENAME)
FROM EMP;

-- 2. ENAME 열에서 'SMITH'를 찾고, 그 값을 'JOHN'으로 변경하여 출력해 보시오.
SELECT ENAME,
    REPLACE(ENAME, 'SMITH', 'JOHN')
FROM EMP;

-- 3. JOB 열에서 'SALESMAN'만 추출하고, 해당 컬럼(SALESMAN)의 길이를 구해 보시오.
SELECT * FROM EMP;

SELECT LENGTH(JOB)
FROM EMP
WHERE JOB = 'SALESMAN';

-- 4. ENAME 열에서 이름의 첫 글자만 대문자로 변경하여 출력해 보시오.
SELECT ENAME,
    UPPER((SUBSTR(ENAME, 1, 1))) || LOWER(SUBSTR(ENAME, 2, LENGTH(ENAME)-1))
FROM EMP;

-- 5. ENAME 열에서 이름의 마지막 3글자를 추출하여 출력해 보시오.
SELECT ENAME,
    SUBSTR(ENAME, LENGTH(ENAME)-2, 3)
FROM EMP;

-- 6. JOB 열의 값 중 'MANAGER'로 시작하는 직책을 가진 사람들의 수를 구해 보시오.
SELECT JOB, COUNT(*)
FROM EMP
WHERE JOB LIKE '%MANAGER%'
GROUP BY JOB;

-- 7. ENAME과 JOB 열을 합쳐서 'ENAME(JOB)' 형태로 출력해 보시오.
SELECT ENAME || '(' || JOB || ')'
FROM EMP;

-- 8. ENAME 열에서 'A'가 포함된 모든 사람의 이름을 추출해 보시오.
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%A%';
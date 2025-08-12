-- STUDENT 테이블에서 '컴퓨터정보' 학생들의 평균 키는?
SELECT * FROM STUDENT;

SELECT AVG(STU_HEIGHT) "평균 키"
FROM STUDENT WHERE STU_DEPT = '기계';

-- PROFESSOR 테이블에서 직급이 '정교수'인 사람들의 급여(PAY)총 합은?
SELECT * FROM PROFESSOR;

SELECT SUM (PAY) "급여 총 합"
FROM PROFESSOR WHERE POSITION = '정교수';
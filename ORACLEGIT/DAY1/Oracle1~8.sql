-- 숫자 함수, 문자 함수, 날짜 함수
-- 1. 숫자 함수

-- 1) ROUND
SELECT ROUND(123.4567, 2) FROM DUAL; -- 앞의 숫자의 소수점 자리(2)에서 반올림해서 결과 출력

SELECT ROUND(AVG(STU_HEIGHT), 2) "평균 키"
FROM STUDENT 
WHERE STU_DEPT = '기계';

-- 2) TRUNC
SELECT TRUNC(123.4567, 3) FROM DUAL; -- 앞의 숫자의 소수점 위치(3)만큼 출력(올림,내림 X)

SELECT TRUNC(AVG(STU_HEIGHT), 5) "평균 키"
FROM STUDENT 
WHERE STU_DEPT = '기계';

-- 3) CEIL - 올림, 숫자를 올림해서 가장 가까운 정수로 변환
SELECT CEIL(123.456) FROM DUAL;

-- 4) FLOOR - 내림, 숫자를 내림해서 가장 가까운 정수로 변환
SELECT FLOOR(123.999) FROM DUAL;

-- 5) MOD - 나머지 반환
SELECT MOD(10,3) FROM DUAL;

-- 6) SIGN - 숫자의 부호를 반환하는 함수. 양수면 1, 음수면 -1, 0이면 0 반환
SELECT SIGN(0) FROM DUAL;

-- 7) ABS - 절대값
SELECT ABS(-10) FROM DUAL;

-- 8) POWER - 거듭제곱
SELECT POWER(2,3) FROM DUAL;
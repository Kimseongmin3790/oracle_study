CREATE SEQUENCE B_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

CREATE TABLE TBL_BOARD (
    BOARDNO     NUMBER PRIMARY KEY ,  -- 게시글번호, 시퀀스 사용
    TITLE       VARCHAR2(50) NOT NULL,  -- 제목
    CONTENTS    VARCHAR2(300) NOT NULL,  -- 내용
    USERID      VARCHAR2(20) NOT NULL,  -- 작성자 아이디
    CNT         NUMBER DEFAULT 0,  -- 조회수
    FAVORITE    NUMBER DEFAULT 0,  -- 좋아요수
    KIND        NUMBER NOT NULL,  -- 게시글종류
    CDATETIME   DATE DEFAULT SYSDATE,  -- 작성일
    UDATETIME   DATE DEFAULT SYSDATE  -- 수정일
);

CREATE TABLE TBL_USER (
    USERID       VARCHAR2(20) PRIMARY KEY,   -- 아이디 (PK)
    PASSWORD     VARCHAR2(20) NOT NULL,      -- 비밀번호
    NAME         VARCHAR2(20) NOT NULL,      -- 이름
    BIRTH        CHAR(8) NOT NULL,           -- 생년월일 (6 or 8 → 일반적으로 8자리 사용: YYYYMMDD)
    NICKNAME     VARCHAR2(20) NOT NULL,      -- 닉네임
    PROFILE_IMG  VARCHAR2(20) NOT NULL,      -- 이미지경로
    ADDRESS      VARCHAR2(20) NOT NULL,      -- 주소
    PHONE        VARCHAR2(20) NOT NULL,      -- 핸드폰
    EMAIL        VARCHAR2(20) NOT NULL,      -- 이메일
    GENDER       CHAR(1) NOT NULL,           -- 성별 (M/F)
    STATUS       CHAR(1) NOT NULL,           -- 권한 (A/S/C)
    CDATETIME    DATE DEFAULT SYSDATE NOT NULL,  -- 가입일자
    UDATETIME    DATE DEFAULT SYSDATE NOT NULL   -- 수정일자
);

CREATE TABLE TBL_COMMENT (
    COMMENTNO     NUMBER PRIMARY KEY,         -- 댓글번호 (시퀀스 사용 예정)
    BOARDNO       NUMBER NOT NULL,            -- 게시글번호 (FK)
    CONTENTS      VARCHAR2(300) NOT NULL,     -- 댓글 내용
    USERID        VARCHAR2(20) NOT NULL,      -- 아이디 (FK)
    FAVORITE      NUMBER DEFAULT 0 NOT NULL,  -- 좋아요수
    P_COMMENTNO   NUMBER,                     -- 부모 댓글 번호 (nullable FK)
    CDATETIME     DATE DEFAULT SYSDATE NOT NULL,  -- 작성일
    UDATETIME     DATE DEFAULT SYSDATE NOT NULL   -- 수정일
);


CREATE SEQUENCE COMMENT_SEQ
START WITH 1
INCREMENT BY 1;
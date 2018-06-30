
/* Drop Triggers */

DROP TRIGGER TRI_Board_board_num;
DROP TRIGGER TRI_grade_list_grade_code;
DROP TRIGGER TRI_Reply_reply_num;
DROP TRIGGER TRI_reservation_reserve_num;
DROP TRIGGER TRI_schedule_schedule_num;
DROP TRIGGER TRI_Surgery_num;
DROP TRIGGER TRI_Surgery_surgery_num;
DROP TRIGGER TRI_twitter_twit_num;



/* Drop Tables */

DROP TABLE Board_Picture CASCADE CONSTRAINTS;
DROP TABLE Reply CASCADE CONSTRAINTS;
DROP TABLE Board CASCADE CONSTRAINTS;
DROP TABLE reservation CASCADE CONSTRAINTS;
DROP TABLE twitter CASCADE CONSTRAINTS;
DROP TABLE user_Stastic CASCADE CONSTRAINTS;
DROP TABLE User_Infomation CASCADE CONSTRAINTS;
DROP TABLE grade_list CASCADE CONSTRAINTS;
DROP TABLE schedule CASCADE CONSTRAINTS;
DROP TABLE Surgery CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_Board_board_num;
DROP SEQUENCE SEQ_grade_list_grade_code;
DROP SEQUENCE SEQ_Reply_reply_num;
DROP SEQUENCE SEQ_reservation_reserve_num;
DROP SEQUENCE SEQ_schedule_schedule_num;
DROP SEQUENCE SEQ_Surgery_num;
DROP SEQUENCE SEQ_Surgery_surgery_num;
DROP SEQUENCE SEQ_twitter_twit_num;




/* Create Sequences */

CREATE SEQUENCE SEQ_Board_board_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_grade_list_grade_code INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_Reply_reply_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_reservation_reserve_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_schedule_schedule_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_Surgery_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_Surgery_surgery_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_twitter_twit_num INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE Board
(
	board_num number NOT NULL,
	email varchar2(60) NOT NULL,
	title varchar2(100) NOT NULL,
	content varchar2(1000) NOT NULL,
	kinds char(1) NOT NULL,
	file_name varchar2(300) NOT NULL,
	writedate date NOT NULL,
	del_flg char(1) NOT NULL,
	PRIMARY KEY (board_num)
);


CREATE TABLE Board_Picture
(
	board_num number NOT NULL,
	picture_name_01 varchar2(30) NOT NULL,
	picture_name_02 varchar2(30),
	picture_name_03 varchar2(30),
	picture_name_04 varchar2(30),
	PRIMARY KEY (board_num)
);


CREATE TABLE grade_list
(
	grade_code number(3) NOT NULL,
	name varchar2(20) NOT NULL,
	del_flg char(1) NOT NULL,
	PRIMARY KEY (grade_code)
);


CREATE TABLE Reply
(
	reply_num number NOT NULL,
	board_num number NOT NULL,
	email varchar2(60),
	content varchar2(200) NOT NULL,
	writedate date NOT NULL,
	del_flg char(1),
	PRIMARY KEY (reply_num)
);


CREATE TABLE reservation
(
	reserve_num number NOT NULL,
	email varchar2(60) NOT NULL,
	participant number(3) NOT NULL,
	surgey_num number NOT NULL,
	time number NOT NULL,
	reserve_date date NOT NULL,
	check_Flg char(1) NOT NULL,
	del_flg char(1) NOT NULL,
	PRIMARY KEY (reserve_num)
);


CREATE TABLE schedule
(
	schedule_num number NOT NULL,
	time varchar2(30) NOT NULL,
	PRIMARY KEY (schedule_num)
);


CREATE TABLE Surgery
(
	surgery_num number NOT NULL,
	kinds char(2) NOT NULL,
	name varchar2(50) NOT NULL,
	comments varchar2(200),
	price number NOT NULL,
	del_flg char(1),
	PRIMARY KEY (surgery_num)
);


CREATE TABLE twitter
(
	twit_num number NOT NULL,
	email varchar2(60) NOT NULL,
	PRIMARY KEY (twit_num)
);


CREATE TABLE User_Infomation
(
	email varchar2(60) NOT NULL,
	password varchar2(100) NOT NULL,
	nick_name varchar2(50) NOT NULL,
	Phone char(20) NOT NULL,
	grade number(3) NOT NULL,
	del_flg char(1) NOT NULL,
	PRIMARY KEY (email)
);


CREATE TABLE user_Stastic
(
	email varchar2(60) NOT NULL,
	total_pay number(10,0),
	total_point number(5,0),
	del_flg char(1) NOT NULL,
	PRIMARY KEY (email)
);



/* Create Foreign Keys */

ALTER TABLE Board_Picture
	ADD FOREIGN KEY (board_num)
	REFERENCES Board (board_num)
;


ALTER TABLE Reply
	ADD FOREIGN KEY (board_num)
	REFERENCES Board (board_num)
;


ALTER TABLE User_Infomation
	ADD FOREIGN KEY (grade)
	REFERENCES grade_list (grade_code)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (time)
	REFERENCES schedule (schedule_num)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (surgey_num)
	REFERENCES Surgery (surgery_num)
;


ALTER TABLE Board
	ADD FOREIGN KEY (email)
	REFERENCES User_Infomation (email)
;


ALTER TABLE Reply
	ADD FOREIGN KEY (email)
	REFERENCES User_Infomation (email)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (email)
	REFERENCES User_Infomation (email)
;


ALTER TABLE twitter
	ADD FOREIGN KEY (email)
	REFERENCES User_Infomation (email)
;


ALTER TABLE user_Stastic
	ADD FOREIGN KEY (email)
	REFERENCES User_Infomation (email)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_Board_board_num BEFORE INSERT ON Board
FOR EACH ROW
BEGIN
	SELECT SEQ_Board_board_num.nextval
	INTO :new.board_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_grade_list_grade_code BEFORE INSERT ON grade_list
FOR EACH ROW
BEGIN
	SELECT SEQ_grade_list_grade_code.nextval
	INTO :new.grade_code
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_Reply_reply_num BEFORE INSERT ON Reply
FOR EACH ROW
BEGIN
	SELECT SEQ_Reply_reply_num.nextval
	INTO :new.reply_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_reservation_reserve_num BEFORE INSERT ON reservation
FOR EACH ROW
BEGIN
	SELECT SEQ_reservation_reserve_num.nextval
	INTO :new.reserve_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_schedule_schedule_num BEFORE INSERT ON schedule
FOR EACH ROW
BEGIN
	SELECT SEQ_schedule_schedule_num.nextval
	INTO :new.schedule_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_Surgery_num BEFORE INSERT ON Surgery
FOR EACH ROW
BEGIN
	SELECT SEQ_Surgery_num.nextval
	INTO :new.num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_Surgery_surgery_num BEFORE INSERT ON Surgery
FOR EACH ROW
BEGIN
	SELECT SEQ_Surgery_surgery_num.nextval
	INTO :new.surgery_num
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_twitter_twit_num BEFORE INSERT ON twitter
FOR EACH ROW
BEGIN
	SELECT SEQ_twitter_twit_num.nextval
	INTO :new.twit_num
	FROM dual;
END;

/





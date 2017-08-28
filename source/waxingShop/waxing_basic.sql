drop table member;
drop table msg_admin;
drop table msg_client;
drop table board;
drop table reply;
drop table department;
drop table staff;

create table member(
	id varchar2(25) primary key,
	pwd varchar2(30) not null,
	name varchar2(14) not null,
	identify char(14) not null,
	birth DATE,
	nation varchar2(30),
	prefer_doc number(10),
	grade varchar2(20),
	FOREIGN KEY (prefer_doc) REFERENCES staff(staff_num)
);

create table msg_client(
	msg_num number primary key,
	writer varchar2(25),
	title varchar2(50),
	content varchar2(500),
	send_date DATE default sysdate,
	FOREIGN KEY (writer) REFERENCES member(id)
);
create table msg_admin(
	msg_num number primary key,
	writer varchar2(25),
	title varchar2(50),
	content varchar2(500),
	ref_msg number,
	send_date DATE default sysdate,
	FOREIGN KEY (writer) REFERENCES member(id),
	FOREIGN KEY (ref_msg) REFERENCES msg_client(msg_num)
);
create table board(
	board_num number primary key,
	userid varchar2(25),
	title varchar2(100),
	writer varchar2(14),
	content varchar2(1000),
	writeday DATE default sysdate,
	FOREIGN KEY (userid) REFERENCES member(id)
);
create table reply(
	reply_num number primary key,
	ref_board_num number,
	userid varchar2(25),
	rep_content varchar2(500),
	replydate DATE default sysdate,
	FOREIGN KEY (ref_board_num) REFERENCES board(board_num),
	FOREIGN KEY (userid) REFERENCES member(id)
);
create table department(
	depart_num number primary key,
	kind varchar2(20),
	basic_pay number
);
create table staff(
	staff_num number primary key,
	name varchar2(20),
	career number(10),
	detail varchar2(150),
	depart number(10),
	FOREIGN KEY (depart) REFERENCES department(depart_num)
);

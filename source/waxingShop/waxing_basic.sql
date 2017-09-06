drop table reply;
drop table board;
drop table msg_admin;
drop table msg_client;
drop table member;
drop table staff;
drop table department;

create table department(
	depart_num number primary key,
	depart_name varchar2(20),
	basic_pay number
);

create table staff(
	staff_num number primary key,
	staff_name varchar2(20) not null,
	staff_career number(10) not null,
	staff_detail varchar2(150) not null,
	depart number default 1,
	FOREIGN KEY (depart) REFERENCES department(depart_num)
);

create table member(
	id varchar2(25) primary key,
	pwd varchar2(30) not null,
	name varchar2(14) not null,
	identification char(14) not null,
	birth DATE,
	email varchar2(50),
	phone varchar2(14),
	prefer_surger number,
	grade varchar2(20),
	FOREIGN KEY (prefer_surger) REFERENCES staff(staff_num)
);

create table msg_client(
	msg_c_num number primary key,
	mc_writer varchar2(25),
	mc_title varchar2(50),
	mc_content varchar2(500),
	mc_send_date DATE default sysdate,
	FOREIGN KEY (mc_writer) REFERENCES member(id)
);

create table msg_admin(
	msg_a_num number primary key,
	ad_writer varchar2(25),
	ad_title varchar2(50),
	ad_content varchar2(500),
	ref_msg number,
	ad_send_date DATE default sysdate,
	FOREIGN KEY (ad_writer) REFERENCES member(id),
	FOREIGN KEY (ref_msg) REFERENCES msg_client(msg_num)
);

create table board(
	board_num number primary key,
	board_userid varchar2(25),
	board_kinds varchar2(15),
	board_title varchar2(100),
	board_content varchar2(1000),
	board_filename varchar2(100) default 'default.jpg',
	board_writedate DATE default sysdate,
	FOREIGN KEY (board_userid) REFERENCES member(id)
);

create table reply(
	reply_num number primary key,
	ref_board_num number,
	reply_userid varchar2(25),
	reply_content varchar2(500),
	reply_writedate DATE default sysdate,
	FOREIGN KEY (ref_board_num) REFERENCES board(board_num),
	FOREIGN KEY (reply_userid) REFERENCES member(id)
);
create table department(
	depart_num number primary key,
	kind varchar2(20),
	basic_pay number
);
create table staff(
	staff_num number primary key,
	staff_name varchar2(20),
	career number(10),
	detail varchar2(150),
	depart number(10),
	FOREIGN KEY (depart) REFERENCES department(depart_num)
);

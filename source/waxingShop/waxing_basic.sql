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
	depart number default 1 REFERENCES department(depart_num) on delete set null
);

create table member(
	id varchar2(25) primary key,
	pwd varchar2(30) not null,
	name varchar2(25) not null,
	identification char(14) not null,
	email varchar2(50),
	phone varchar2(14),
	prefer_surger number REFERENCES staff(staff_num) on delete set null,
	grade varchar2(20)
);

create table msg_client(
	msg_c_num number primary key,
	mc_writer varchar2(25) REFERENCES member(id) on delete set null,
	mc_title varchar2(50),
	mc_content varchar2(500),
	mc_send_date DATE default sysdate,
);

create table msg_admin(
	msg_a_num number primary key,
	ad_writer varchar2(25) REFERENCES member(id) on delete set null,
	ad_title varchar2(50),
	ad_content varchar2(500),
	ref_msg number REFERENCES msg_client(msg_num) on delete set null,
	ad_send_date DATE default sysdate
);

create table board(
	board_num number primary key,
	board_userid varchar2(25) references member(id) on delete set null,
	board_kinds varchar2(15),
	board_title varchar2(100),
	board_content varchar2(1000),
	board_filename varchar2(100) default 'default.jpg',
	board_writedate DATE default sysdate
);

create table reply(
	reply_num number primary key,
	ref_board_num number REFERENCES board(board_num) on delete set null,
	reply_userid varchar2(25) REFERENCES member(id) on delete set null,
	reply_content varchar2(500),
	reply_writedate DATE default sysdate
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
	depart number(10) REFERENCES department(depart_num) on delete set null
);

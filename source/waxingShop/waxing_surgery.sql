drop table surgery;

create table surgery(
	surgery_num number primary key,
	name varchar2(30),
	price number,
	kinds varchar2(30)
);

create table booking(
	book_num number primary key,
	client varchar2(25),
	participant number,
	book_date DATE default sysdate,
	book_price number,
	book_content varchar2(30),
	book_check char(1) default 'N',
	FOREIGN KEY (client) REFERENCES member(id),
	FOREIGN KEY (participant) REFERENCES staff(staff_num)
);
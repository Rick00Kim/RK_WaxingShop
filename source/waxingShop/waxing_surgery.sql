drop table surgery;
drop table reserve;

create table surgery(
	surgery_num number primary key,
	name varchar2(30),
	price number,
	kinds varchar2(30)
);

create table reserve(
	reserve_num number primary key,
	client varchar2(25),
	participant number,
	reserve_price number,
	reserve_content number,
	reserve_date DATE default sysdate,
	reserve_check char(1) default 'N',
	FOREIGN KEY (client) REFERENCES member(id),
	FOREIGN KEY (participant) REFERENCES staff(staff_num),
	FOREIGN KEY (reserve_content) REFERENCES surgery(surgery_num)
);
drop table reserve;
drop table surgery;

create table surgery(
	surgery_num number primary key,
	surgery_name varchar2(30),
	surgery_content varchar2(200),
	surgery_price number,
	surgery_kinds varchar2(30)
);

create table reserve(
	reserve_num number primary key,
	client_name varchar2(25) REFERENCES member(id) on delete set null,
	participant number REFERENCES staff(staff_num) on delete set null,
	reserve_price number,
	reserve_content number REFERENCES surgery(surgery_num) on delete set null,
	reserve_date DATE default sysdate,
	reserve_check char(1) default 'N'
);
drop table member_stastic;
drop table company_stastic;

create table member_stastic(
	userid varchar2(25) primary key,
	total_pay number,
	total_point number,
	visit_count number,
	FOREIGN KEY(userid) REFERENCES member(id)
);
create table company_stastic(
	total_profit number,
	total_income number,
	total_expense number,
	total_date varchar2(10)
);
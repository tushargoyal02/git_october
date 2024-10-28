
-- subquery 
-- group by
-- join ( left, self,) along inner join

-- datatypes ( )
-- constraints   =>  rules & regulation
-- remove / avoid unwanted datax
create database testing1;
use testing1;
create table t2(id int not null);
insert into t2 values(20);
select * from t2;

create table t3(id int unique);
insert into t3 values(100);
select * from t3;

create table t4(id int default 10, gender char(1));
insert into t4(gender) values('M');
insert into t4(id) values(99);
select * from t4;


create table t5(id int check(id>10));
insert into t5(id) values(5);
select * from t5;


drop table t6;
create table t6(name varchar(20),  
		  constraint t6_name_chk check( name=reverse(name) ));
insert into t6(name) values("bba");
select * from t6;

create table t7(id int  primary key);
insert into t7(id) values(null);
select * from t7;


create table product(pid int primary key, pname varchar(20));
insert into product values(10,"Tv");

create table orders(oid int primary key, 
	city varchar(20), pid int,
		foreign key (pid) references product(pid));
        
insert into orders values(101, "jaipur",10),
	(102,"goa",10);
insert into orders values(103, "udaipur",20)


-- on the DML & DDL  ( 4 th nov  -> 4 star on hackerank

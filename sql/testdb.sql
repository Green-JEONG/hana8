use testdb;

show tables;

show processlist;
kill 11;

desc DeptBackup;
show index from DeptBackup;

select * from Dept;

create table DeptBackup AS select * from Dept;
drop table DeptBackup;
-- truncate table Dept;
-- Error Code: 1701. Cannot truncate a table referenced in a foreign key constraint (`testdb`.`Emp`, CONSTRAINT `emp_ibfk_1`)

create table EmpBackup AS select * from Emp;
-- truncate table Emp;

insert into Emp select * from EmpBackup;
drop table EmpBackup;
select * from Emp;

select current_user();

create database schooldb;

create user school@'%' identified by 'Schooldb1!';

grant all privileges on schooldb.* to school@'%';

select 256 * 256 * 256 * 256;

create table T (
  id tinyint unsigned auto_increment primary key,
  name varchar(30) not null,
  score enum('A', 'B', 'C', 'F') default 'F' comment '학점'
);
select * from T;
desc T;
insert into T(name, score) values('Hong', 'A');
insert into T(name, score) values ('Kim', 'B'), ('Lee', 'C');
insert into T(name) values ('Park');

insert into T(name, score) values('Choi', 'F');

select * from T where score = 4;

alter table T modify column score enum('A', 'B', 'C', 'D', 'F') default 'F' comment '학점';

select * from T where score = 5;

insert into T(name, score) values('Han', 'D');
select * from T;
select last_insert_id();
-- select * from T where id = ;
select 16 * 1024 - 4;
select 16382 * 4 + 8; -- 65536
select 16382 * 4 + 4;

show variables like '%time_zone%';

create table Student(
    id int unsigned auto_increment primary key comment '학번',
    createdate timestamp DEFAULT TIMESTAMP    name varchar(31) not null comment '학생 이름',
    birthdt date not null comment '생년월일',
    major smallint unsigned not null comment '학과 id',
    mobile varchar(13) not null comment '휴대전화',
    email varchar(255) not null comment '이메일주소',
    gender tinyint(1) not null comment '성별',
    graduatedt varchar(10) null comment '졸업일'
);

ALTER TABLE `schooldb`.`Student` 
CHANGE COLUMN `gender` `gender` boolean NOT NULL COMMENT '성별' ;

desc Student;

select * from Student;
-- truncate table Student;
insert into Student(name, birthdt, major, mobile, email, gender)
 values ('김일수', '1998-10-05', 1, '01012341234', 'kim@gmail.com', true);
 
insert into Student(name, birthdt, major, mobile, email, gender)
  values ('김이수', '1998-10-06', 1, '01012341235', 'kim2@gmail.com', true),
         ('김삼수', '1998-10-07', 1, '01012341236', 'kim3@gmail.com', true);
         
use testdb;

select * from Emp;
alter table Emp add column
  -- auth tinyint(1) not null default 9 comment '1:admin, 3: manager, 5:employee, 7:temporary, 9:guest';
  auth enum('admin', 'manager', 'employee', 'temporary', 'guest') not null default 'guest';

/*  Auth.admin
const enum auth {
  'admin' = 1,
  'manager' = 2,
  ...
}
*/
desc Emp;
select * from Dept;
alter table Dept add column captain int unsigned null comment '부사장';

alter table Dept add constraint foreign key fk_Dept_captain_Emp (captain)
	references Emp (id) on update cascade on delete set null;

create table EmailLog (
  id int unsigned not null auto_increment primary key,
  sender int unsigned not null,
  receivers varchar(1024),
  subject varchar(255),
  body text,
  foreign key fk_EmailLog_sender_Emp (sender)
	  references Emp(id) on delete no action on update cascade
);

alter table EmailLog drop foreign key emaillog_ibfk_1;
alter table EmailLog drop index fk_EmailLog_sender_Emp;

alter table EmailLog engine = MyISAM;

show index from EmailLog;

show index from Emp;

select * from EmailLog;
insert into EmailLog(sender, receivers, subject, body)
			  values(2, 'Hong, Kim', 'test mail', 'test mail body');
              
select * from Emp where id = 1;

insert into EmailLog(sender, receivers, subject, body)
			  values(1, 'Hong, Kim', 'test mail', 'test mail body');

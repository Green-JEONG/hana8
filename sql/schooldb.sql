use schooldb;

create table Student (
  id int unsigned auto_increment not null,
  createdate timestamp default current_timestamp,
  updatedate timestamp default current_timestamp on update current_timestamp,
  name varchar(31) not null,
  birthdt date not null,
  major tinyint unsigned not null,
  email varchar(255) not null,
  mobile varchar(11) not null default '', -- '3388%'
  gender bit not null default 0 comment '성별(0: 남, 1: 여)', -- 0이 더 유리
  graduatedAt varchar(10) null,
  
  primary key (id),
  unique key unique_Student_email (email)
);

show create table Student;
CREATE TABLE `Student` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdt` date NOT NULL,
  `major` tinyint unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` bit(1) NOT NULL DEFAULT b'0' COMMENT '성별(0: 남, 1: 여)',
  `graduatedAt` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_Student_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
             
create table Major(
  id tinyint unsigned auto_increment primary key,
  name varchar(15) not null,
  unique key uniq_Major_name (name) -- 인덱스 유니크 조건을 거는 것이 유리
);

insert into Major (name) values ('철학과'), ('컴퓨터공학과'), ('건축과');

insert into Student(name, birthdt, major, email, mobile)
			 values('Hong', '2001-01-03', 5, 'hong@gmail.com', '01012341234');
             
alter table Student add constraint foreign key fk_Student_Major (major)
	references Major(id);

select major from Student where major not in (select id from Major);
select * from schooldb.Major;
update Student set major = 1 where id = 1; -- Hong

show index from Student;
desc Student;

create table Prof (
  id smallint unsigned not null auto_increment primary key,
  name varchar(31) not null,
  likecnt mediumint not null default 0
);

create table Subject (
  id smallint unsigned not null auto_increment primary key,
  name varchar(15) not null,
  prof smallint unsigned null,
  foreign key fk_Subject_Prof (prof) references Prof (id)
    on update cascade on delete set null
);

create table Enroll (
  id int unsigned not null auto_increment primary key,
  subject smallint unsigned not null,
  student int unsigned not null,
  foreign key fk_Enroll_Subject (subject) references Subject (id)
      on update cascade on delete cascade,
  foreign key fk_Enroll_Student (student) references Student (id)
      on update cascade on delete cascade,
  unique key uniq_Enroll_subject_student (subject, student)
);
use testdb;

create table Prof (
  id int unsigned auto_increment primary key,
  createdate timestamp default current_timestamp,
  updatedate timestamp default current_timestamp on update current_timestamp,
  name varchar(30) not null
)
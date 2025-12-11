use mysql;

create database tdb;

-- $ mysql -u root -p"TestdbRoot" -h 127.0.0.1 -P 3308 tdb < testdb_data.sql

use tdb;

show triggers like 'Emp';

-- drop table Dept;
select * from Dept;
-- 1. fullbackup
-- 2. update
update Dept set dname='모바일XXX' where id = 10;
-- 3. delete(mistake)
delete from Dept where id > 7;

-- recovery
-- 1. recovery (fullbackup)
-- $ mysql - u root -p"TestdbRoot" -h 127.0.0.1 -P 3308 tdb > tt.sql

-- 2. recovery (transaction log)
-- 1) mysqlbinlog
-- 2) 49977 ~50235, 251210 14:09:37 ~ 251210 14:10:13



select * from Dept;
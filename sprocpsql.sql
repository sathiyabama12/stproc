postgres=# CREATE TABLE employee(id BIGSERIAL NOT NULL PRIMARY KEY,
postgres(# name VARCHAR(50) NOT NULL,
postgres(# salary decimal(8,2) DEFAULT NULL,
postgres(# age INTEGER);
CREATE TABLE
postgres=# INSERT INTO employee(id,name,salary,age) VALUES (1,'eron',30000,23);
INSERT 0 1
postgres=# INSERT INTO employee(id,name,salary,age) VALUES (2,'nova',4000,24);
INSERT 0 1
postgres=# INSERT INTO employee(id,name,salary,age) VALUES (3,'nav',2000,25);
INSERT 0 1
postgres=# INSERT INTO employee(id,name,salary,age) VALUES (4,'kevin',5000,23);
INSERT 0 1
postgres=# INSERT INTO employee(id,name,salary,age) VALUES (5,'kart',6000,24);
INSERT 0 1
postgres=# SELECT *FROM employee;
 id | name  |  salary  | age
----+-------+----------+-----
  1 | eron  | 30000.00 |  23
  2 | nova  |  4000.00 |  24
  3 | nav   |  2000.00 |  25
  4 | kevin |  5000.00 |  23
  5 | kart  |  6000.00 |  24
(5 rows)


postgres=# CREATE PROCEDURE emp(int,varchar,decimal,int)
postgres-# LANGUAGE 'plpgsql'
postgres-# AS $$
postgres$# BEGIN
postgres$#  INSERT INTO employee(id,name,salary,age) VALUES($1,$2,$3,$4);
postgres$# COMMIT;
postgres$# END;
postgres$# $$;
CREATE PROCEDURE
postgres=# CALL emp(6,'raj',6000,28);
CALL
postgres=# SELECT *FROM employee;
 id | name  |  salary  | age
----+-------+----------+-----
  1 | eron  | 30000.00 |  23
  2 | nova  |  4000.00 |  24
  3 | nav   |  2000.00 |  25
  4 | kevin |  5000.00 |  23
  5 | kart  |  6000.00 |  24
  6 | raj   |  6000.00 |  28
(6 rows)
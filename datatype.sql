use test_DB

create table testbool
(
sometext varchar(10),
is_checked bit
)
insert into testbool values ('a',1)
insert into testbool values ('b',0)
select sometext,is_checked from testbool

select *from testbool

CREATE TABLE salesvisit
(
    visit_id INT PRIMARY KEY IDENTITY,
    customer_name VARCHAR (50) NOT NULL,
    phone VARCHAR (25),
    store_id INT NOT NULL,
    visit_on DATE NOT NULL,
    start_at TIME (0) NOT NULL,
    end_at TIME (0) NOT NULL,
    
)
insert into salesvisit values ('sathya','9076425807',1,'2020-08-26','01:22:00','01:45:00')
insert into salesvisit values ('madhu','9090825807',2,'2020-08-27','10:22:40','07:45:00')
insert into salesvisit values ('arun','9076565807',3,'2020-08-25','09:22:00','07:45:00')
insert into salesvisit values ('manoj','9079225807',4,'2020-08-16','09:42:50','07:45:00')
insert into salesvisit values ('mala','9076475807',5,'2020-08-26','12:02:00','07:45:00')
insert into salesvisit values ('priya','9070025807',6,'2020-08-30','07:32:00','07:45:00')
insert into salesvisit values ('inigo','9976425807',7,'2020-08-11','07:22:56','07:45:00')
insert into salesvisit values ('harrieet','9176425807',8,'2020-08-23','01:20:00','07:45:00')
insert into salesvisit values ('jeni','9276425807',19,'2020-08-6','01:45:00','07:45:00')

select *from salesvisit
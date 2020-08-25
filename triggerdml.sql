use test_DB
create table tblemployee
(
Id int primary key identity(1,1),
Name varchar(50),
Salary float,
Gender varchar(50),
DpId int
)
select *from tblemployee
alter table tblemployee add Gender varchar(15)
insert into tblemployee values('beny',4800,3,'male')
create table tblemaudit
(
id int,
Audit nvarchar
)


alter trigger tr_tblemployee_forinsert
on tblemployee
for insert
as
begin

declare @Id int 
select @Id = Id from inserted
insert into tblemaudit values ('New employee with Id = ' + cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
end

insert into tblemployee values ('jimmy',1800,3,'female')



create trigger tr_tblemployee_fordelete
on tblemployee
for delete
as
begin

declare @Id int 
select @Id = Id from deleted
insert into tblemaudit values ('An existing employee employee with Id = ' + cast(@Id as nvarchar(5)) + ' is deleted at ' + cast(Getdate() as nvarchar(20)))
end
delete from tblemployee where Id=2


create trigger trmyfirstrigger
on database 
for create_table 
as
begin

print 'you created a table'
end



alter trigger trmyfirstrigger
on database 
for create_table, alter_table, drop_table 
as
begin
rollback
print 'you cannot crete,alter or drop a table'
end



alter trigger trmyfirstrigger
on database 
for rename
as
begin
rollback
print 'you just renamed'
end

sp_rename 'test','newtest'
create table test (Id int)

drop table test

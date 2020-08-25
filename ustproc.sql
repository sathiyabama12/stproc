
USE test_DB
CREATE TABLE table_Employees
(
    Id INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(25) NOT NULL,
    LastName VARCHAR(25) NOT NULL,
    Gender VARCHAR(25) NOT NULL,
    DepartmentID INT

)
  INSERT INTO table_Employees values(8,'sai','sakthi','male',115)
  select *from table_Employees

  create procedure uprocgetemployees
  as
  begin
  select FirstName,Gender from table_Employees
  end

  create procedure uprocgetemployeeGenderandDepartment
  @Gender nvarchar(25),
  @DepartmentId int
  as
  begin
  select FirstName,Gender,DepartmentId from table_Employees where Gender =@Gender AND DepartmentId = @DepartmentId
  end


  EXEC uprocgetemployeeGenderandDepartment
  @Gender = 'female',
  @DepartmentId =111


   EXEC uprocgetemployeeGenderandDepartment
  @Gender = 'female',
  @DepartmentId =112

  alter procedure uprocgetemployeeGenderandDepartment
  @Gender nvarchar(25),
  @DepartmentId int
  with encryption
  as
  begin
  select FirstName,Gender,DepartmantId from table_Employees where Gender = @Gender AND DepartmentId = @DepartmentId
  end

  select *from table_Employees
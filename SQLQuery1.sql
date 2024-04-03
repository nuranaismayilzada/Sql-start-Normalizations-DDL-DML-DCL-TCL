create database Groups
--drop database Groups
create table Students(
[Id] int,
[Name] nvarchar(50)
)
alter table Students
add [Age] int

alter table Students
add [Surname] nvarchar(50)

alter table Students
add [Address] nvarchar(250)

--alter table Students
--drop column [Age]
--alter table Students
--drop column [Address]

--Exec sp_rename Students Stu

--select *from Students
--select [Name],[Id] from Students

insert into Students ([Id],[Name],[Surname],[Age])
values (1,'Nurane','Ismayilzade',22),
(2,'Nunu','Ismayilzade',17)

select [Id],[Name],[Surname],[Age] from Students

select * from Students

select Count(*) from Students
select Count(*) as [Student count] from Students

select * from Students where [Id]=2

select *from Students where [Age]>20 and [Age]<27
select *from Students where [Age] BETWEEN 20 AND 30

select *from Students where [Surname] like 'I%'
select *from Students where [Name] like 'r%'

delete from Students where [Id]=2

Update Students
set [Age]=16
where [Id]=1

select * from Students
drop table Employees
create table Employees(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50),
	[Surname] nvarchar(50) not null,
	[Email] nvarchar(100) unique
)
select *from Employees

insert into Employees([Name],[Surname],[Email])
values('Nurane','Ismayilzade','nurane@gmail.com')

insert into Employees([Name],[Surname],[Email])
values('Nunu','Isi','nunu@gmail.com')

insert into Employees([Name],[Surname],[Email])
values('Nurannu','Isiss','nunu@gmail.com')

insert into Employees([Name],[Email])
values('Nunu','nunu@gmail.com')

insert into Employees([Name],[Surname],[Email])
values('Nunu','Isi','nunu@gmail.com')

insert into Employees([Surname],[Email])
values('Isi','nunuu@gmail.com')

select *from Employees

Update Employees
Set [Email]='nunu3@gmail.com'
where [Id]=3
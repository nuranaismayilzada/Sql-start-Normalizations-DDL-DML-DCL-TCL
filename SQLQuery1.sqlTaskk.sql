create database Course
use Course
create table Teachers(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(30) not null,
	[Surname] nvarchar(50) not null,
	[Email] nvarchar(50) unique,
	[Age] int
)
insert into Teachers([Name],[Surname],[Email],[Age])
values ('Nurane','Ismayilzade','nurane@gmail.com',22),
		('Alisa','Seferova','alisa@gmail.com',14),
		('Ismayil','Ismayilov','ismayil@gmail.com',18),
		('Konul','Qasimova','konul@gmail.com',45),
		('Aqsin','Aqsinli','aqsin@gmail.com',47)

insert into Teachers([Name],[Surname],[Email],[Age])
values ('Ceyhun','Safarli','ceyhun@gmail.com',23)


--1) Butun muellimlerin siyahisini gosterin.
select *from Teachers
select [Name],[Surname] from Teachers

--4) Yashi 20-den yuxari olan muellimlerin ad, soyadini ekranda gosterin.
select [Name],[Surname] from Teachers where [Age]>20

--5) Emailinde  c herfi olan muellimlerin butun melumatlarini ekranda gosterin.
select *from Teachers where Email like '%n%'

create table Students(
	[Id] int primary key identity(1,1),
	[Fullname] nvarchar(50) not null,
	[Age] int,
	[Address] nvarchar(50) unique,
)

insert into Students([Fullname],[Age],[Address])
values ('JohnDoe', 25, '123 Main Street'),
('Jane Smith', 22, '456 Elm Street'),
('Michael Johnson', 20, '789 Oak Avenue'),
('Emily Brown', 24, '101 Pine Road'),
('David Lee', 21, '555 Maple Lane'),
('Sarah Wilson', 23, '777 Birch Boulevard'),
('Daniel Taylor', 19, '888 Cedar Court');


--2) Butun telebelerin siyahisini gosterin.
select *from Students


--3) Studentlerin sayini gosterin.
select Count(*) as [StudentCount] from Students 


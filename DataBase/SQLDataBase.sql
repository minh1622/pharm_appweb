create database QuanLyKhoPharmTeam
go

use QuanLyKhoPharmTeam
go

create table Unit
(
	Id int identity(1,1) primary key,
	Displayname nvarchar(1000)
)
go

create table Object
(
	Id nvarchar(128) primary key,
	Displayname nvarchar(1000),
	IdUnit int not null

	foreign key(IdUnit) references Unit(Id)
)
go

create table UserRole
(
	Id int identity(1,1) primary key,
	Displayname nvarchar(1000)
)
go

insert into UserRole(Displayname) values(N'Admin')
go

insert into UserRole(Displayname) values(N'Nhân viên') 
go

create table Users
(
	Id int identity(1,1) primary key,
	Displayname nvarchar(1000),
	UserName nvarchar(100),
	Password nvarchar(max),
	IdRole int not null,

	foreign key(IdRole) references UserRole(Id)
)
go

insert into Users(Displayname, UserName, Password, IdRole) values(N'Minh1622', N'Admin', N'admin', 1)
go

insert into Users(Displayname, UserName, Password, IdRole) values(N'Minh1623', N'minh1622', N'anhmaiyeuem2', 2)
go


create table Input
(
	Id nvarchar(128) primary key,
	CreDate Date
)
go

create table InputInfo
(
	Id nvarchar(128) primary key,
	IdInput nvarchar(128) not null,
	IdObject nvarchar(128) not null,
	Cout int,
	InputPrice float default 0,
	OutputPrice float default 0,
	HanSD Date,
	Status nvarchar(max)

	foreign key(IdInput) references Input(Id),
	foreign key(IdObject) references Object(Id),
)
go

create table Output
(
	Id nvarchar(128) primary key,
	CreDate Datetime
)
go

create table OutputInfo
(
	Id nvarchar(128) primary key,
	IdOutput nvarchar(128) not null,
	IdInputInfo nvarchar(128) not null,
	IdObject nvarchar(128) not null,
	Cout int,
	Status nvarchar(max)

	foreign key(IdInputInfo) references InputInfo(Id),
	foreign key(IdObject) references Object(Id),
	foreign key(IdOutput) references Output(Id)
)
go
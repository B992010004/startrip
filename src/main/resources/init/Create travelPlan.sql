USE [startrip]
GO

--drop table [travelCollection]
--drop table [TravelList]
--drop table [TravelPlan]
--drop table [TravelView]
--drop table Membertable

CREATE TABLE Membertable(
	memberId int not null identity,
	mail varchar(255) NOT NULL,
	address varchar(255) NULL,
	avatar varchar(255) NULL,
	birthday varchar(255) NULL,
	password varchar(255) NULL,
	phone int NOT NULL,
	photo varbinary(max) NULL,
	username varchar(255) NULL,
PRIMARY KEY(memberId) )

insert into Membertable (mail,phone)values ('1@123','45688')
insert into Membertable (mail,phone)values ('4@456','45688')




CREATE TABLE TravelView(
	viewid int IDENTITY(1,1) NOT NULL primary key,
	viewName varchar(255) NULL,
	imgName varchar(255) NULL,
	orgclass varchar(255) NULL,
	viewaddr varchar(255) NULL,
	viewPhone varchar(255) NULL,
	viewDetail varchar(255) NULL,
	tdate date NULL,
	memberId int not NULL REFERENCES membertable (memberId))

	go
	insert into TravelView (viewName,imgName,orgclass,viewaddr,viewPhone,viewDetail,tdate,memberId)values('大屯山','1.jpg;2.jpg;3.jpg','view','陽明山','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);
	insert into TravelView (viewName,imgName,orgclass,viewaddr,viewPhone,viewDetail,tdate,memberId)values('小油坑','11.jpg;21.jpg;31.jpg','view','陽明山','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);


CREATE TABLE TravelPlan(
	travelId int IDENTITY(1,1) NOT NULL primary key,
	endDate date NULL,
	startDate date NULL,
	travelDays int NOT NULL,
	travelName varchar(255) NULL,
	memberId int not NULL REFERENCES membertable (memberId))

GO
insert into TravelPlan (travelName,startDate,endDate,travelDays,memberId)values('花蓮','2015-02-05','2015-02-08',3,1);
insert into TravelPlan (travelName,startDate,endDate,travelDays,memberId)values('台北','2015-02-07','2015-02-21',14,1);



CREATE TABLE TravelList(
	listId int IDENTITY(1,1) not Null primary Key,
	travel_Id int NOT NULL REFERENCES TravelPlan (travelId) ,
	view_Id int NOT NULL REFERENCES TravelView (viewId),
	endTime date NULL, 
	startTime date NULL,
	travelType varchar(255) NULL,
	tripday int NOT NULL,
UNIQUE(	travel_Id,	view_Id ))

go
insert into TravelList (tripday,startTime,endTime,view_Id,travel_Id ,travelType)
values(5,'08:30','09:00',1,1,'QK');
insert into TravelList (tripday,startTime,endTime,view_Id,travel_Id ,travelType)
values(3,'08:30','09:30',2,1,'QK');


CREATE TABLE travelCollection(
	travel_Id int NOT NULL REFERENCES TravelPlan (travelId),
	member_Id int NOT NULL REFERENCES Membertable (memberId),
PRIMARY KEY 
(	member_Id ,
	travel_Id ))
GO

--Set Identity_Insert membertable ON
--Set Identity_Insert travelPlan ON
--Set Identity_Insert travelView ON
--Set Identity_Insert tracellist ON
--Set Identity_Insert travelCollection ON
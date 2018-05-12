USE [startrip]
GO

drop table [TravelList]
drop table [travelCollection]
drop table [TravelPlan]
drop table [TravelView]
drop table Membertable

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

insert into Membertable (mail,password,phone)values ('2@123','1','11')
insert into Membertable (mail,password,phone)values ('6@456','1','22')
insert into Membertable (mail,password,phone)values ('5@456','1','33')




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
	insert into TravelView (viewName,imgName,orgclass,viewaddr,viewPhone,viewDetail,tdate,memberId)values('¤j¤Ù¤s','1.jpg;2.jpg;3.jpg','view','¶§©ú¤s','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);
	insert into TravelView (viewName,imgName,orgclass,viewaddr,viewPhone,viewDetail,tdate,memberId)values('¤pªo§|','11.jpg;21.jpg;31.jpg','view','¶§©ú¤s','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);
	insert into TravelView (viewName,imgName,orgclass,viewaddr,viewPhone,viewDetail,tdate,memberId)values('ªo§|','11.jpg;21.jpg;31.jpg','view','¶§©ú¤s','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);
	insert into TravelView (viewName,imgName,orgclass,viewaddr,viewPhone,viewDetail,tdate,memberId)values('¤õ§|','11.jpg;21.jpg;31.jpg','view','¶§©ú¤s','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);

CREATE TABLE TravelPlan(
	travelId int IDENTITY(1,1) NOT NULL primary key,
	endDate date NULL,
	startDate date NULL,
	travelDays int NOT NULL,
	travelName varchar(255) NULL,
	img varchar(255) null,
	memberId int not NULL REFERENCES membertable (memberId))

GO
insert into TravelPlan (travelName,startDate,endDate,travelDays,img,memberId)values('ªá½¬','2015-02-05','2015-02-08',3,1);
insert into TravelPlan (travelName,startDate,endDate,travelDays,img,memberId)values('¥x¥_','2015-02-07','2015-02-21',14,1);
insert into TravelPlan (travelName,startDate,endDate,travelDays,img,memberId)values('¥x¥_','2015-02-07','2015-02-21',14,1);



CREATE TABLE TravelList(
	listId int IDENTITY(1,1) not Null primary Key,
	travelId int NOT NULL REFERENCES TravelPlan (travelId) ,
	viewId int NOT NULL REFERENCES TravelView (viewId),
	endTime varchar(255) NULL, 
	startTime varchar(255) NULL,
	travelType varchar(255) NULL,
	tripday int NOT NULL,
UNIQUE(	travelId,	viewId ))

go
insert into TravelList (tripday,startTime,endTime,viewId,travelId ,travelType)
values(5,'08:30','09:00',1,1,'QK');
insert into TravelList (tripday,startTime,endTime,viewId,travelId ,travelType)
values(3,'08:30','09:30',2,1,'QK');
insert into TravelList (tripday,startTime,endTime,viewId,travelId ,travelType)
values(3,'09:30','10:30',3,1,'QK');


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
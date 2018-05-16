USE [startrip]
GO

drop table [travelCollection]
drop table [TravelList]
drop table [TravelPlan]
drop table [TravelView]





CREATE TABLE TravelView(
	viewid varchar(255) not null primary key,
	viewName varchar(255) NULL,
	imgName varchar(255) NULL,
	website varchar(255) NULL,
	viewaddr varchar(255) NULL,
	viewPhone varchar(255) NULL,
	viewDetail varchar(255) NULL,
	viewcount int null,
	tdate date NULL,
	
	memberId int not NULL REFERENCES membertable (memberId))

	go
	insert into TravelView (viewId,viewcount,viewName,imgName,website,viewaddr,viewPhone,viewDetail,tdate,memberId)values(1,11,'¤j¤Ù¤s','1.jpg;2.jpg;3.jpg','view','¶§©ú¤s','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);
	insert into TravelView (viewId,viewcount,viewName,imgName,website,viewaddr,viewPhone,viewDetail,tdate,memberId)values(2,2,'¤pªo§|','11.jpg;21.jpg;31.jpg','view','¶§©ú¤s','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);
	insert into TravelView (viewId,viewcount,viewName,imgName,website,viewaddr,viewPhone,viewDetail,tdate,memberId)values(3,3,'ªo§|','11.jpg;21.jpg;31.jpg','view','¶§©ú¤s','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);
	insert into TravelView (viewId,viewcount,viewName,imgName,website,viewaddr,viewPhone,viewDetail,tdate,memberId)values(4,5,'¤õ§|','11.jpg;21.jpg;31.jpg','view','¶§©ú¤s','0939-987-456','xxxxxxxxxxxxxxxxxxxxxxxxxxxxx','2015-07-08',1);

CREATE TABLE TravelPlan(
	travelId int IDENTITY(1,1) NOT NULL primary key,
	endDate date NULL,
	startDate date NULL,
	travelDays int NOT NULL,
	travelName varchar(255) NULL,
	img varchar(255) null,
	state int not null,
	memberId int not NULL REFERENCES membertable (memberId))

GO
insert into TravelPlan (travelName,startDate,endDate,travelDays,img,state,memberId)values('ªá½¬','2015-02-05','2015-02-08',3,'1.jpg',1,1);
insert into TravelPlan (travelName,startDate,endDate,travelDays,img,state,memberId)values('¥x¥_','2015-02-07','2015-02-21',14,'2.jpg',1,1);
insert into TravelPlan (travelName,startDate,endDate,travelDays,img,state,memberId)values('¥x¥_','2015-02-07','2015-02-21',14,'3.jpg',1,1);



CREATE TABLE TravelList(
	listId int IDENTITY(1,1) not Null primary Key,
	travelId int NOT NULL REFERENCES TravelPlan (travelId) ,
	viewId varchar(255) NOT NULL REFERENCES TravelView (viewId),
	endTime varchar(255) NULL, 
	startTime varchar(255) NULL,
	travelType varchar(255) NULL,
	tripday int NOT NULL,
	state int not null)

go
insert into TravelList (tripday,startTime,endTime,viewId,travelId ,travelType,state)
values(5,'08:30','09:00',1,1,'QK',1);
insert into TravelList (tripday,startTime,endTime,viewId,travelId ,travelType,state)
values(3,'08:30','09:30',2,1,'QK',1);
insert into TravelList (tripday,startTime,endTime,viewId,travelId ,travelType,state)
values(3,'09:30','10:30',3,1,'QK',1);


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
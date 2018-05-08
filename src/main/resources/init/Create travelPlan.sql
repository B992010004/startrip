USE [startrip]
GO
drop table [travelCollection]
	drop table [TravelList]
		drop table [TravelPlan]
		drop table [TravelView]
drop table Membertable

CREATE TABLE [dbo].[Membertable](
	memberId int not null identity,
	[mail] [varchar](255) NOT NULL,
	[address] [varchar](255) NULL,
	[avatar] [varchar](255) NULL,
	[birthday] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone] [int] NOT NULL,
	[photo] [varbinary](max) NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY(memberId) )

insert into Membertable (mail,phone)values ('1@123','45688')
insert into Membertable (mail,phone)values ('4@456','45688')




CREATE TABLE [dbo].[TravelView](
	[viewid] [int] IDENTITY(1,1) NOT NULL primary key,
	[imgName] [varchar](255) NULL,
	[orgclass] [varchar](255) NULL,
	[tdate] [date] NULL,
	[viewDetail] [varchar](255) NULL,
	[viewName] [varchar](255) NULL,
	[viewPhone] [varchar](255) NULL,
	[viewaddr] [varchar](255) NULL,
	memberId int not NULL REFERENCES membertable (memberId))

	go



CREATE TABLE [dbo].[TravelPlan](
	[travelId] [int] IDENTITY(1,1) NOT NULL primary key,
	[endDate] [date] NULL,
	[startDate] [date] NULL,
	[travelDays] [int] NOT NULL,
	[travelName] [varchar](255) NULL,
	memberId int not NULL REFERENCES [dbo].[Membertable] (memberId))

GO




CREATE TABLE [dbo].[TravelList](
	listId int not Null primary Key,
	[travelId] [int] NOT NULL ,
	[viewid] [int] NOT NULL ,
	[endTime] [date] NULL,
	[startTime] [date] NULL,
	[travelName] [varchar](255) NULL,
	[travelType] [varchar](255) NULL,
	[tripday] [int] NOT NULL,
	[viewName] [varchar](255) NULL,
	[view_Id] [int] NOT NULL REFERENCES [dbo].[TravelView] ([viewid]),
	[travel_Id] [int] NOT NULL REFERENCES [dbo].[TravelPlan] ([travelId]),
UNIQUE(	[travel_Id],	[view_Id]) )

go



CREATE TABLE [dbo].[travelCollection](
	[travel_Id] [int] NOT NULL REFERENCES [dbo].[TravelPlan] ([travelId]),
	member_Id int NOT NULL REFERENCES Membertable (memberId),
PRIMARY KEY 
(	[member_Id] ,
	[travel_Id] ))
GO


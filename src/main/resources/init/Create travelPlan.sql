USE [startrip]
GO

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
PRIMARY KEY([mail]) )

insert into Membertable (mail,phone)values ('1@123','45688')

drop table [TravelView]

CREATE TABLE [dbo].[TravelView](
	[viewid] [int] IDENTITY(1,1) NOT NULL primary key,
	[imgName] [varchar](255) NULL,
	[orgclass] [varchar](255) NULL,
	[tdate] [date] NULL,
	[viewDetail] [varchar](255) NULL,
	[viewName] [varchar](255) NULL,
	[viewPhone] [varchar](255) NULL,
	[viewaddr] [varchar](255) NULL,
	[mail] [varchar](255) not NULL REFERENCES [dbo].[Membertable] ([mail]))

	go

	drop table [TravelPlan]

CREATE TABLE [dbo].[TravelPlan](
	[travelId] [int] IDENTITY(1,1) NOT NULL primary key,
	[endDate] [date] NULL,
	[startDate] [date] NULL,
	[travelDays] [int] NOT NULL,
	[travelName] [varchar](255) NULL,
	[mail] [varchar](255) not NULL REFERENCES [dbo].[Membertable] ([mail]))

GO

	drop table [TravelList]


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

	drop table [travelCollection]

CREATE TABLE [dbo].[travelCollection](
	[travel_Id] [int] NOT NULL REFERENCES [dbo].[TravelPlan] ([travelId])
,
	[member_Mail] [varchar](255) NOT NULL REFERENCES [dbo].[Membertable] ([mail])
,
PRIMARY KEY 
(	[member_Mail] ASC,
	[travel_Id] ASC
))
GO


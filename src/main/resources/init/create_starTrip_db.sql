--create db  basic on default 

CREATE DATABASE startrip
GO

USE startrip
GO

DROP TABLE Reply
DROP TABLE Review

CREATE TABLE Review(
no int IDENTITY NOT NULL PRIMARY KEY,
articleID uniqueidentifier NOT NULL DEFAULT NEWID(),
hotelID int NOT NULL,
memberID varchar(32) NOT NULL,
lastname nvarchar(32),
updateTime datetime,
title nvarchar(32) NOT NULL,
content nvarchar(1000) NOT NULL,
tripType nvarchar(32),
stayed datetime,
overallRank int,
serviceRating int,
valueRating int,
roomsRating int,
roomTips nvarchar(32),
photo varchar(32),
video varchar(32),
fileName varchar(32),
thumbCount int
)
GO

CREATE TABLE Reply(
no int IDENTITY NOT NULL,
replyID uniqueidentifier NOT NULL DEFAULT NEWID(),
memberID varchar(32) NOT NULL,
lastname nvarchar(32),
articlePK int NOT NULL REFERENCES Review (no),
updateTime datetime,
content nvarchar(1000) NOT NULL,
photo varchar(32),
video varchar(32),
fileName varchar(32),
thumbCount int
)
GO
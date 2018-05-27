USE [startrip]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 2018/5/27 下午 06:32:13 ******/
DROP TABLE [dbo].[Rooms]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 2018/5/27 下午 06:32:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[roomid] [int] IDENTITY(1,1) NOT NULL,
	[basicprice] [int] NULL,
	[enddate] [date] NULL,
	[facility] [varchar](255) NULL,
	[hotelid] [int] NULL,
	[numberofpeople] [int] NULL,
	[opendate] [date] NULL,
	[roomname] [varchar](255) NULL,
	[roomnote] [varchar](255) NULL,
	[roomstate] [int] NULL,
	[roomtype] [int] NULL,
	[service] [varchar](255) NULL,
	[photoString] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[roomid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([roomid], [basicprice], [enddate], [facility], [hotelid], [numberofpeople], [opendate], [roomname], [roomnote], [roomstate], [roomtype], [service], [photoString]) VALUES (1, 12000, NULL, N'1 張雙人床 / 2 張單人床;室內WIFI', 1, 2, NULL, N'豪華雙人房', NULL, NULL, 1, N'附早餐;可加床;
不可退款', N'1.jpg;')
INSERT [dbo].[Rooms] ([roomid], [basicprice], [enddate], [facility], [hotelid], [numberofpeople], [opendate], [roomname], [roomnote], [roomstate], [roomtype], [service], [photoString]) VALUES (2, 4418, NULL, N'獨立淋浴間和浴缸;免費wifi', 2, 2, NULL, N'山景高級房', NULL, NULL, 1, N'免費停車;接機服務;免費接駁服務;', N'1.jpg;')
INSERT [dbo].[Rooms] ([roomid], [basicprice], [enddate], [facility], [hotelid], [numberofpeople], [opendate], [roomname], [roomnote], [roomstate], [roomtype], [service], [photoString]) VALUES (3, 3683, NULL, N'獨立淋浴間和浴缸;免費wifi', 3, 2, NULL, N'奢華豪華特大房', NULL, NULL, 1, N'免費早餐 x 2', N'1.jpg;')
INSERT [dbo].[Rooms] ([roomid], [basicprice], [enddate], [facility], [hotelid], [numberofpeople], [opendate], [roomname], [roomnote], [roomstate], [roomtype], [service], [photoString]) VALUES (4, 2213, NULL, N'1張大床', 4, 2, NULL, N'高級雙人房 (Superior Double)', NULL, NULL, 1, N'免費早餐 x 2', N'1.jpg;')
INSERT [dbo].[Rooms] ([roomid], [basicprice], [enddate], [facility], [hotelid], [numberofpeople], [opendate], [roomname], [roomnote], [roomstate], [roomtype], [service], [photoString]) VALUES (5, 2890, NULL, N'未提供資料', 5, 2, NULL, N'市景高級房(兩床)', NULL, NULL, 1, N'未提供資料', N'1.jpg')
INSERT [dbo].[Rooms] ([roomid], [basicprice], [enddate], [facility], [hotelid], [numberofpeople], [opendate], [roomname], [roomnote], [roomstate], [roomtype], [service], [photoString]) VALUES (6, 1943, NULL, N'衛浴', 6, 2, NULL, N'高級大房 (Superior Queen)', NULL, NULL, 1, N'未提供資料', N'1.jpg')
INSERT [dbo].[Rooms] ([roomid], [basicprice], [enddate], [facility], [hotelid], [numberofpeople], [opendate], [roomname], [roomnote], [roomstate], [roomtype], [service], [photoString]) VALUES (7, 5096, NULL, N'獨立淋浴間和浴缸', 7, 4, NULL, N'家庭房 C (Family C)', NULL, NULL, 1, N'未提供資料', N'1.jpg')
SET IDENTITY_INSERT [dbo].[Rooms] OFF

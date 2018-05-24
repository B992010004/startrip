USE [startrip]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 2018/5/24 下午 02:21:46 ******/
DROP TABLE [dbo].[Rooms]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 2018/5/24 下午 02:21:46 ******/
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
PRIMARY KEY CLUSTERED 
(
	[roomid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([roomid], [basicprice], [enddate], [facility], [hotelid], [numberofpeople], [opendate], [roomname], [roomnote], [roomstate], [roomtype], [service]) VALUES (1, 12000, NULL, N'1 張雙人床 / 2 張單人床;室內WIFI', 1, 2, NULL, N'豪華雙人房', NULL, NULL, 1, N'附早餐;可加床;
不可退款')
SET IDENTITY_INSERT [dbo].[Rooms] OFF

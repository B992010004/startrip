USE [startrip]
GO
/****** Object:  Table [dbo].[TravelList]    Script Date: 2018/5/24 下午 02:38:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelList](
	[listId] [int] IDENTITY(1,1) NOT NULL,
	[travelId] [int] NOT NULL,
	[viewId] [int] NOT NULL,
	[endTime] [varchar](255) NULL,
	[startTime] [varchar](255) NULL,
	[travelType] [varchar](255) NULL,
	[tripday] [int] NOT NULL,
	[state] [int] NOT NULL,
	[travelName] [varchar](255) NULL,
	[viewName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[listId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelPlan]    Script Date: 2018/5/24 下午 02:38:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelPlan](
	[travelId] [int] IDENTITY(1,1) NOT NULL,
	[endDate] [date] NULL,
	[startDate] [date] NULL,
	[travelDays] [int] NOT NULL,
	[travelName] [varchar](255) NULL,
	[img] [varchar](255) NULL,
	[state] [int] NOT NULL,
	[memberId] [int] NOT NULL,
	[mail] [varchar](255) NULL,
	[tripday] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[travelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelView]    Script Date: 2018/5/24 下午 02:38:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelView](
	[viewid] [int] IDENTITY(1,1) NOT NULL,
	[viewName] [varchar](255) NULL,
	[imgName] [varchar](max) NULL,
	[website] [varchar](255) NULL,
	[viewaddr] [varchar](255) NULL,
	[viewPhone] [varchar](255) NULL,
	[viewDetail] [varchar](255) NULL,
	[latlng] [varchar](255) NULL,
	[viewcount] [int] NULL,
	[tdate] [date] NULL,
	[memberId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[viewid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[TravelList]  WITH CHECK ADD FOREIGN KEY([travelId])
REFERENCES [dbo].[TravelPlan] ([travelId])
GO
ALTER TABLE [dbo].[TravelList]  WITH CHECK ADD FOREIGN KEY([viewId])
REFERENCES [dbo].[TravelView] ([viewid])
GO
ALTER TABLE [dbo].[TravelPlan]  WITH CHECK ADD FOREIGN KEY([memberId])
REFERENCES [dbo].[Membertable] ([memberid])
GO
ALTER TABLE [dbo].[TravelView]  WITH CHECK ADD FOREIGN KEY([memberId])
REFERENCES [dbo].[Membertable] ([memberid])
GO

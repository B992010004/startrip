USE [startrip]
GO
/****** Object:  Table [dbo].[TripInf]    Script Date: 2018/5/25 下午 03:25:33 ******/
DROP TABLE [dbo].[TripInf]
GO
/****** Object:  Table [dbo].[TripInf]    Script Date: 2018/5/25 下午 03:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TripInf](
	[Trip] [int] IDENTITY(1,1) NOT NULL,
	[EndStation] [varchar](255) NULL,
	[Price] [int] NULL,
	[SeateList] [int] NULL,
	[StarStation] [varchar](255) NULL,
	[StarTime] [time](7) NULL,
	[date] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Trip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TripInf] ON 

INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (1, N'南方澳站', 250, 31, N'台北車站', CAST(N'12:00:00' AS Time), CAST(N'2018-05-24T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[TripInf] OFF

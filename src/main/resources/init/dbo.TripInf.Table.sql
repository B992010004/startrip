USE [startrip]
GO
/****** Object:  Table [dbo].[TripInf]    Script Date: 2018/5/28 下午 02:27:08 ******/
DROP TABLE [dbo].[TripInf]
GO
/****** Object:  Table [dbo].[TripInf]    Script Date: 2018/5/28 下午 02:27:08 ******/
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

INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (1, N'花蓮車站', 250, 31, N'台北車站', CAST(N'12:00:00' AS Time), CAST(N'2018-05-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (2, N'花蓮車站', 250, 31, N'台北車站', CAST(N'16:00:00' AS Time), CAST(N'2018-05-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (3, N'花蓮車站', 250, 31, N'台北車站', CAST(N'18:00:00' AS Time), CAST(N'2018-05-29T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[TripInf] OFF

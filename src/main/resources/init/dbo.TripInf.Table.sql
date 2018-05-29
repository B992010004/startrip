USE [startrip]
GO
/****** Object:  Table [dbo].[TripInf]    Script Date: 2018/5/29 上午 10:12:41 ******/
DROP TABLE [dbo].[TripInf]
GO
/****** Object:  Table [dbo].[TripInf]    Script Date: 2018/5/29 上午 10:12:41 ******/
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

INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (1, N'花蓮車站', 250, 31, N'台北車站', CAST(N'08:00:00' AS Time), CAST(N'2018-06-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (2, N'花蓮車站', 250, 31, N'台北車站', CAST(N'10:00:00' AS Time), CAST(N'2018-06-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (3, N'花蓮車站', 250, 31, N'台北車站', CAST(N'12:00:00' AS Time), CAST(N'2018-06-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (1002, N'花蓮車站', 250, 31, N'台北車站', CAST(N'14:00:00' AS Time), CAST(N'2018-06-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (1003, N'花蓮車站', 250, 31, N'台北車站', CAST(N'16:00:00' AS Time), CAST(N'2018-06-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (1004, N'花蓮車站', 250, 31, N'台北車站', CAST(N'18:00:00' AS Time), CAST(N'2018-06-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (1005, N'花蓮車站', 250, 31, N'台北車站', CAST(N'20:00:00' AS Time), CAST(N'2018-06-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (1006, N'花蓮車站', 250, 31, N'台北車站', CAST(N'22:00:00' AS Time), CAST(N'2018-06-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[TripInf] ([Trip], [EndStation], [Price], [SeateList], [StarStation], [StarTime], [date]) VALUES (1007, N'花蓮車站', 250, 31, N'台北車站', CAST(N'23:00:00' AS Time), CAST(N'2018-06-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[TripInf] OFF

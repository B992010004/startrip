USE [startrip]
GO
/****** Object:  Table [dbo].[RtBooking]    Script Date: 2018/5/24 下午 12:15:53 ******/
DROP TABLE [dbo].[RtBooking]
GO
/****** Object:  Table [dbo].[RtBooking]    Script Date: 2018/5/24 下午 12:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RtBooking](
	[bgId] [int] IDENTITY(1,1) NOT NULL,
	[bgDate] [varchar](255) NULL,
	[bgNote] [varchar](255) NULL,
	[bgPeople] [int] NULL,
	[bgPeriod] [varchar](255) NULL,
	[cnChair] [int] NULL,
	[cnPeople] [int] NULL,
	[crName] [varchar](255) NULL,
	[crPhone] [varchar](255) NULL,
	[memberId] [int] NULL,
	[reTime] [datetime2](7) NULL,
	[rtId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[bgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RtBooking] ON 

INSERT [dbo].[RtBooking] ([bgId], [bgDate], [bgNote], [bgPeople], [bgPeriod], [cnChair], [cnPeople], [crName], [crPhone], [memberId], [reTime], [rtId]) VALUES (1, N'05/02/2018', N'我要靠門口', 7, N'17:30', 1, 2, N'王大明', N'0912345678', 1, CAST(N'2018-05-24T12:04:13.3830000' AS DateTime2), 1)
INSERT [dbo].[RtBooking] ([bgId], [bgDate], [bgNote], [bgPeople], [bgPeriod], [cnChair], [cnPeople], [crName], [crPhone], [memberId], [reTime], [rtId]) VALUES (2, N'05/26/2018', N'不要靠廁所', 8, N'11:30', 0, 3, N'王小明', N'0987654321', 1, CAST(N'2018-05-24T12:05:39.4290000' AS DateTime2), 7)
INSERT [dbo].[RtBooking] ([bgId], [bgDate], [bgNote], [bgPeople], [bgPeriod], [cnChair], [cnPeople], [crName], [crPhone], [memberId], [reTime], [rtId]) VALUES (3, N'05/15/2018', N'靠邊邊的位子', 2, N'13:00', 0, 0, N'Peter', N'0945612378', 2, CAST(N'2018-05-24T12:11:10.1600000' AS DateTime2), 9)
INSERT [dbo].[RtBooking] ([bgId], [bgDate], [bgNote], [bgPeople], [bgPeriod], [cnChair], [cnPeople], [crName], [crPhone], [memberId], [reTime], [rtId]) VALUES (4, N'05/13/2018', N'靠窗邊', 5, N'13:30', 1, 2, N'陳先生', N'0932145687', 3, CAST(N'2018-05-24T12:13:35.7390000' AS DateTime2), 18)
SET IDENTITY_INSERT [dbo].[RtBooking] OFF

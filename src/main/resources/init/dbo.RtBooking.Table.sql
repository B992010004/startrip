USE [startrip]
GO
/****** Object:  Table [dbo].[RtBooking]    Script Date: 2018/5/28 下午 03:05:23 ******/
DROP TABLE [dbo].[RtBooking]
GO
/****** Object:  Table [dbo].[RtBooking]    Script Date: 2018/5/28 下午 03:05:23 ******/
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

INSERT [dbo].[RtBooking] ([bgId], [bgDate], [bgNote], [bgPeople], [bgPeriod], [cnChair], [cnPeople], [crName], [crPhone], [memberId], [reTime], [rtId]) VALUES (1, N'05/15/2018', N'靠邊邊的位子', 2, N'13:00', 0, 0, N'Peter', N'0945612378', 2, CAST(N'2018-05-24T12:11:10.1600000' AS DateTime2), 9)
INSERT [dbo].[RtBooking] ([bgId], [bgDate], [bgNote], [bgPeople], [bgPeriod], [cnChair], [cnPeople], [crName], [crPhone], [memberId], [reTime], [rtId]) VALUES (2, N'06/14/2018', N'靠窗戶，不要廁所旁邊', 6, N'18:30', 1, 2, N'陳小村', N'0914632145', 3, CAST(N'2018-05-28T14:48:13.2980000' AS DateTime2), 2)
INSERT [dbo].[RtBooking] ([bgId], [bgDate], [bgNote], [bgPeople], [bgPeriod], [cnChair], [cnPeople], [crName], [crPhone], [memberId], [reTime], [rtId]) VALUES (3, N'07/10/2018', N'要燈光美 氣氛佳的位子', 2, N'13:00', 0, 0, N'陳小村', N'0914632145', 3, CAST(N'2018-05-28T14:50:47.2100000' AS DateTime2), 4)
INSERT [dbo].[RtBooking] ([bgId], [bgDate], [bgNote], [bgPeople], [bgPeriod], [cnChair], [cnPeople], [crName], [crPhone], [memberId], [reTime], [rtId]) VALUES (4, N'08/17/2018', N'要安靜位子', 4, N'19:00', 0, 1, N'王大陸', N'0945789654', 4, CAST(N'2018-05-28T14:52:20.6630000' AS DateTime2), 13)
INSERT [dbo].[RtBooking] ([bgId], [bgDate], [bgNote], [bgPeople], [bgPeriod], [cnChair], [cnPeople], [crName], [crPhone], [memberId], [reTime], [rtId]) VALUES (5, N'09/19/2018', N'有停車場嗎', 5, N'18:30', 2, 2, N'Peter', N'0985741258', 2, CAST(N'2018-05-28T14:57:03.1790000' AS DateTime2), 11)
SET IDENTITY_INSERT [dbo].[RtBooking] OFF

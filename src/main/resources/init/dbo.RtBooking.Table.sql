USE [startrip]
GO
ALTER TABLE [dbo].[RtBooking] DROP CONSTRAINT [FKrqg2dqv28hk5ddi1asmkakxvr]
GO
ALTER TABLE [dbo].[RtBooking] DROP CONSTRAINT [FK2tkkdrjttyu8f357qvb601tpm]
GO
/****** Object:  Table [dbo].[RtBooking]    Script Date: 2018/5/18 下午 04:02:30 ******/
DROP TABLE [dbo].[RtBooking]
GO
/****** Object:  Table [dbo].[RtBooking]    Script Date: 2018/5/18 下午 04:02:30 ******/
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
	[reTime] [datetime2](7) NULL,
	[memberId] [int] NOT NULL,
	[rtId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RtBooking]  WITH CHECK ADD  CONSTRAINT [FK2tkkdrjttyu8f357qvb601tpm] FOREIGN KEY([memberId])
REFERENCES [dbo].[Membertable] ([memberid])
GO
ALTER TABLE [dbo].[RtBooking] CHECK CONSTRAINT [FK2tkkdrjttyu8f357qvb601tpm]
GO
ALTER TABLE [dbo].[RtBooking]  WITH CHECK ADD  CONSTRAINT [FKrqg2dqv28hk5ddi1asmkakxvr] FOREIGN KEY([rtId])
REFERENCES [dbo].[RtDetails] ([rtId])
GO
ALTER TABLE [dbo].[RtBooking] CHECK CONSTRAINT [FKrqg2dqv28hk5ddi1asmkakxvr]
GO

USE [startrip]
GO
ALTER TABLE [dbo].[RtDetails_RtBooking] DROP CONSTRAINT [FKqcu4hqhblox63amtxar4mx0uk]
GO
ALTER TABLE [dbo].[RtDetails_RtBooking] DROP CONSTRAINT [FKme7p3b69urw0xq77611hfyp3v]
GO
/****** Object:  Index [UK_q6p9qp5hc161pf52e6vx08yxv]    Script Date: 2018/5/24 下午 12:15:53 ******/
ALTER TABLE [dbo].[RtDetails_RtBooking] DROP CONSTRAINT [UK_q6p9qp5hc161pf52e6vx08yxv]
GO
/****** Object:  Table [dbo].[RtDetails_RtBooking]    Script Date: 2018/5/24 下午 12:15:53 ******/
DROP TABLE [dbo].[RtDetails_RtBooking]
GO
/****** Object:  Table [dbo].[RtDetails_RtBooking]    Script Date: 2018/5/24 下午 12:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RtDetails_RtBooking](
	[RtDetailsBean_rtId] [int] NOT NULL,
	[rtBookingBean_bgId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [UK_q6p9qp5hc161pf52e6vx08yxv]    Script Date: 2018/5/24 下午 12:15:53 ******/
ALTER TABLE [dbo].[RtDetails_RtBooking] ADD  CONSTRAINT [UK_q6p9qp5hc161pf52e6vx08yxv] UNIQUE NONCLUSTERED 
(
	[rtBookingBean_bgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RtDetails_RtBooking]  WITH CHECK ADD  CONSTRAINT [FKme7p3b69urw0xq77611hfyp3v] FOREIGN KEY([RtDetailsBean_rtId])
REFERENCES [dbo].[RtDetails] ([rtId])
GO
ALTER TABLE [dbo].[RtDetails_RtBooking] CHECK CONSTRAINT [FKme7p3b69urw0xq77611hfyp3v]
GO
ALTER TABLE [dbo].[RtDetails_RtBooking]  WITH CHECK ADD  CONSTRAINT [FKqcu4hqhblox63amtxar4mx0uk] FOREIGN KEY([rtBookingBean_bgId])
REFERENCES [dbo].[RtBooking] ([bgId])
GO
ALTER TABLE [dbo].[RtDetails_RtBooking] CHECK CONSTRAINT [FKqcu4hqhblox63amtxar4mx0uk]
GO

USE [startrip]
GO
/****** Object:  Table [dbo].[SeatList]    Script Date: 2018/5/24 下午 01:50:42 ******/
DROP TABLE [dbo].[SeatList]
GO
/****** Object:  Table [dbo].[SeatList]    Script Date: 2018/5/24 下午 01:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatList](
	[SeatListNumber] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [int] NULL,
	[Seat] [int] NULL,
	[SeatNumber] [int] NULL,
	[Trip] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeatListNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

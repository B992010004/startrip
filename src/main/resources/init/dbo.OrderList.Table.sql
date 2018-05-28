USE [startrip]
GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 2018/5/28 下午 02:27:08 ******/
DROP TABLE [dbo].[OrderList]
GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 2018/5/28 下午 02:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderList](
	[orderNumber] [int] IDENTITY(1,1) NOT NULL,
	[crderKind] [varchar](255) NULL,
	[orderTime] [datetime2](7) NULL,
	[sMail] [varchar](255) NULL,
	[sPhone] [int] NULL,
	[scId] [varchar](255) NULL,
	[scName] [varchar](255) NULL,
	[EndStation] [varchar](255) NULL,
	[StarStation] [varchar](255) NULL,
	[OrderDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderList] ON 

INSERT [dbo].[OrderList] ([orderNumber], [crderKind], [orderTime], [sMail], [sPhone], [scId], [scName], [EndStation], [StarStation], [OrderDate]) VALUES (1, N'0', CAST(N'2018-05-24T12:00:00.0000000' AS DateTime2), N'aaa@bbb.com', NULL, N'A12345678', N'9527', N'花蓮車站', N'台北車站', CAST(N'2018-05-29T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[OrderList] OFF

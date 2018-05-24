USE [startrip]
GO

/****** Object:  Table [dbo].[Membertable]    Script Date: 2018/5/24 ¤U¤È 02:48:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Membertable](
	[memberid] [int] IDENTITY(1,1) NOT NULL,
	[mail] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[firstname] [varchar](255) NULL,
	[lastname] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[birthday] [varchar](255) NULL,
	[avatar] [varchar](255) NULL,
	[photo] [varbinary](max) NULL,
	[registerDate] [datetime2](7) NULL,
	[validataCode] [varchar](255) NULL,
 CONSTRAINT [PK__Memberta__7FD4CB2E4B1BA1F9] PRIMARY KEY CLUSTERED 
(
	[memberid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



CREATE TABLE [dbo].[Membertable](
	[memberid] [int] IDENTITY(1,1) NOT NULL,
	[mail] [varchar](255) NOT NULL,
	[password] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[birthday] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[phone] [int] NOT NULL,
	[avatar] [varchar](255) NULL,
 CONSTRAINT [PK__Memberta__7A21290520376F22] PRIMARY KEY CLUSTERED 
(
	[mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

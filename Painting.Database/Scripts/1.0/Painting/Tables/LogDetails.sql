﻿
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LogDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [nvarchar](255) NOT NULL,
	[Level] [nvarchar](50) NOT NULL,
	[Logger] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](4000) NOT NULL,
	[Exception] [nvarchar](2000) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


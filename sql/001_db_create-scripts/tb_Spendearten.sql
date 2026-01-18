USE [Blutspende]
GO

/****** Object:  Table [dbo].[Spendearten]    Script Date: 15.01.2026 13:26:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Spendearten](
	[SpendeartID] [int] IDENTITY(1,1) NOT NULL,
	[Spendeart] [nvarchar](20) NOT NULL,
	[Haltbarkeit_Monate] [smallint] NOT NULL,
 CONSTRAINT [PK_Spendearten] PRIMARY KEY CLUSTERED 
(
	[SpendeartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



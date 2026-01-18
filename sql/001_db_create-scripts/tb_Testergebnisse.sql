USE [Blutspende]
GO

/****** Object:  Table [dbo].[Testergebnisse]    Script Date: 15.01.2026 13:24:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Testergebnisse](
	[TestergebnisseID] [int] IDENTITY(1,1) NOT NULL,
	[Testergebnisse] [nchar](10) NOT NULL,
	[Freigegeben] [bit] NOT NULL,
 CONSTRAINT [PK_Testergebnisse] PRIMARY KEY CLUSTERED 
(
	[TestergebnisseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



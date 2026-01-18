USE [Blutspende]
GO

/****** Object:  Table [dbo].[Spendezentren]    Script Date: 15.01.2026 13:26:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Spendezentren](
	[ZentrumID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Strasse] [varchar](100) NULL,
	[PLZ] [varchar](10) NULL,
	[Ort] [varchar](50) NOT NULL,
	[Telefon] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Oeffnungszeiten] [nvarchar](max) NULL,
	[KapazitaetProTag] [int] NULL,
	[Aktiv] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ZentrumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Spendezentren] ADD  DEFAULT ((50)) FOR [KapazitaetProTag]
GO

ALTER TABLE [dbo].[Spendezentren] ADD  DEFAULT ((1)) FOR [Aktiv]
GO



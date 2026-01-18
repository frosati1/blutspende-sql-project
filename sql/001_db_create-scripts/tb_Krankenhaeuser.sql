USE [Blutspende]
GO

/****** Object:  Table [dbo].[Krankenhaeuser]    Script Date: 15.01.2026 13:27:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Krankenhaeuser](
	[KrankenhausID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Strasse] [varchar](100) NULL,
	[PLZ] [varchar](10) NULL,
	[Ort] [varchar](50) NOT NULL,
	[Telefon] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Kontaktperson] [varchar](100) NULL,
	[Aktiv] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[KrankenhausID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Krankenhaeuser] ADD  DEFAULT ((1)) FOR [Aktiv]
GO



USE [Blutspende]
GO

/****** Object:  Table [dbo].[Labortests]    Script Date: 15.01.2026 13:27:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Labortests](
	[TestID] [int] IDENTITY(1,1) NOT NULL,
	[SpendeID] [int] NOT NULL,
	[TestDatum] [date] NOT NULL,
	[MitarbeiterID] [int] NULL,
	[TestergebnisseID] [int] NOT NULL,
	[Bemerkungen] [nvarchar](max) NULL,
 CONSTRAINT [PK__Labortes__8CC33100F1381D5F] PRIMARY KEY CLUSTERED 
(
	[TestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Labortests]  WITH CHECK ADD  CONSTRAINT [FK_Labortests_Blutspenden] FOREIGN KEY([SpendeID])
REFERENCES [dbo].[Blutspenden] ([SpendeID])
GO

ALTER TABLE [dbo].[Labortests] CHECK CONSTRAINT [FK_Labortests_Blutspenden]
GO

ALTER TABLE [dbo].[Labortests]  WITH CHECK ADD  CONSTRAINT [FK_Labortests_Testergebnisse] FOREIGN KEY([TestergebnisseID])
REFERENCES [dbo].[Testergebnisse] ([TestergebnisseID])
GO

ALTER TABLE [dbo].[Labortests] CHECK CONSTRAINT [FK_Labortests_Testergebnisse]
GO



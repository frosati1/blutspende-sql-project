USE [Blutspende]
GO

/****** Object:  Table [dbo].[Blutkonserven]    Script Date: 15.01.2026 13:28:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blutkonserven](
	[KonserveID] [int] IDENTITY(1,1) NOT NULL,
	[SpendeID] [int] NOT NULL,
	[MengeML] [int] NOT NULL,
	[Herstellungsdatum] [date] NOT NULL,
	[Verfallsdatum] [date] NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK__Blutkons__97795C21F6382C7B] PRIMARY KEY CLUSTERED 
(
	[KonserveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Blutkonserven]  WITH CHECK ADD  CONSTRAINT [FK_Blutkonserven_Blutspenden] FOREIGN KEY([SpendeID])
REFERENCES [dbo].[Blutspenden] ([SpendeID])
GO

ALTER TABLE [dbo].[Blutkonserven] CHECK CONSTRAINT [FK_Blutkonserven_Blutspenden]
GO

ALTER TABLE [dbo].[Blutkonserven]  WITH CHECK ADD  CONSTRAINT [FK_Blutkonserven_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO

ALTER TABLE [dbo].[Blutkonserven] CHECK CONSTRAINT [FK_Blutkonserven_Status]
GO

ALTER TABLE [dbo].[Blutkonserven]  WITH CHECK ADD  CONSTRAINT [chk_Verfallsdatum] CHECK  (([Verfallsdatum]>[Herstellungsdatum]))
GO

ALTER TABLE [dbo].[Blutkonserven] CHECK CONSTRAINT [chk_Verfallsdatum]
GO



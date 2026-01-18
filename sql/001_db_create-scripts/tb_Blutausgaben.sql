USE [Blutspende]
GO

/****** Object:  Table [dbo].[Blutausgaben]    Script Date: 15.01.2026 13:28:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blutausgaben](
	[AusgabeID] [int] IDENTITY(1,1) NOT NULL,
	[KonserveID] [int] NOT NULL,
	[KrankenhausID] [int] NOT NULL,
	[AusgabeDatum] [date] NOT NULL,
	[AusgabeUhrzeit] [time](7) NOT NULL,
	[MitarbeiterID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AusgabeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Blutausgaben]  WITH CHECK ADD  CONSTRAINT [FK__Blutausga__Konse__05A3D694] FOREIGN KEY([KonserveID])
REFERENCES [dbo].[Blutkonserven] ([KonserveID])
GO

ALTER TABLE [dbo].[Blutausgaben] CHECK CONSTRAINT [FK__Blutausga__Konse__05A3D694]
GO

ALTER TABLE [dbo].[Blutausgaben]  WITH CHECK ADD FOREIGN KEY([KrankenhausID])
REFERENCES [dbo].[Krankenhaeuser] ([KrankenhausID])
GO

ALTER TABLE [dbo].[Blutausgaben]  WITH CHECK ADD  CONSTRAINT [FK__Blutausga__Mitar__078C1F06] FOREIGN KEY([MitarbeiterID])
REFERENCES [dbo].[Mitarbeiter] ([MitarbeiterID])
GO

ALTER TABLE [dbo].[Blutausgaben] CHECK CONSTRAINT [FK__Blutausga__Mitar__078C1F06]
GO



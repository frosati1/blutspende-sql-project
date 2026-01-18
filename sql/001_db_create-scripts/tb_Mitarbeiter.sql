USE [Blutspende]
GO

/****** Object:  Table [dbo].[Mitarbeiter]    Script Date: 15.01.2026 13:27:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Mitarbeiter](
	[MitarbeiterID] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](50) NOT NULL,
	[Nachname] [varchar](50) NOT NULL,
	[PositionID] [int] NOT NULL,
	[Qualifikation] [varchar](100) NULL,
	[Email] [varchar](100) NOT NULL,
	[Telefon] [varchar](20) NULL,
	[Einstellungsdatum] [date] NOT NULL,
	[Aktiv] [bit] NULL,
 CONSTRAINT [PK__Mitarbeiter] PRIMARY KEY CLUSTERED 
(
	[MitarbeiterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Mitarbeiter] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mitarbeiter] ADD  CONSTRAINT [DF__Mitarbeit__Aktiv]  DEFAULT ((1)) FOR [Aktiv]
GO

ALTER TABLE [dbo].[Mitarbeiter]  WITH CHECK ADD  CONSTRAINT [FK_Mitarbeiter_tb_Mitarbeiter-Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[tb_Mitarbeiter-Position] ([PositionID])
GO

ALTER TABLE [dbo].[Mitarbeiter] CHECK CONSTRAINT [FK_Mitarbeiter_tb_Mitarbeiter-Position]
GO



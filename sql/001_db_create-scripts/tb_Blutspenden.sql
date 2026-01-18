USE [Blutspende]
GO

/****** Object:  Table [dbo].[Blutspenden]    Script Date: 15.01.2026 13:27:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blutspenden](
	[SpendeID] [int] IDENTITY(1,1) NOT NULL,
	[TerminID] [int] NOT NULL,
	[MitarbeiterID] [int] NOT NULL,
	[SpendeUhrzeit] [time](7) NOT NULL,
	[MengeML] [int] NOT NULL,
	[SpendenartID] [int] NOT NULL,
	[Geeignet] [bit] NULL,
 CONSTRAINT [PK_Blutspenden] PRIMARY KEY CLUSTERED 
(
	[SpendeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Blutspenden] UNIQUE NONCLUSTERED 
(
	[TerminID] ASC,
	[SpendeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Blutspenden] ADD  CONSTRAINT [DF__Blutspend__Menge__662B2B3B]  DEFAULT ((500)) FOR [MengeML]
GO

ALTER TABLE [dbo].[Blutspenden] ADD  CONSTRAINT [DF_Blutspenden_SpendenartID]  DEFAULT ((1)) FOR [SpendenartID]
GO

ALTER TABLE [dbo].[Blutspenden] ADD  CONSTRAINT [DF__Blutspend__Geeig__690797E6]  DEFAULT ((1)) FOR [Geeignet]
GO

ALTER TABLE [dbo].[Blutspenden]  WITH CHECK ADD  CONSTRAINT [FK_Blutspenden_Mitarbeiter] FOREIGN KEY([MitarbeiterID])
REFERENCES [dbo].[Mitarbeiter] ([MitarbeiterID])
GO

ALTER TABLE [dbo].[Blutspenden] CHECK CONSTRAINT [FK_Blutspenden_Mitarbeiter]
GO

ALTER TABLE [dbo].[Blutspenden]  WITH CHECK ADD  CONSTRAINT [FK_Blutspenden_Spendearten] FOREIGN KEY([SpendenartID])
REFERENCES [dbo].[Spendearten] ([SpendeartID])
GO

ALTER TABLE [dbo].[Blutspenden] CHECK CONSTRAINT [FK_Blutspenden_Spendearten]
GO

ALTER TABLE [dbo].[Blutspenden]  WITH CHECK ADD  CONSTRAINT [FK_Blutspenden_Spendetermine] FOREIGN KEY([TerminID])
REFERENCES [dbo].[Spendetermine] ([TerminID])
GO

ALTER TABLE [dbo].[Blutspenden] CHECK CONSTRAINT [FK_Blutspenden_Spendetermine]
GO

ALTER TABLE [dbo].[Blutspenden]  WITH CHECK ADD  CONSTRAINT [chk_Menge] CHECK  (([MengeML]>=(200) AND [MengeML]<=(500)))
GO

ALTER TABLE [dbo].[Blutspenden] CHECK CONSTRAINT [chk_Menge]
GO



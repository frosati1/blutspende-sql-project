USE [Blutspende]
GO

/****** Object:  Table [dbo].[Spender]    Script Date: 15.01.2026 13:26:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Spender](
	[SpenderID] [int] IDENTITY(1,1) NOT NULL,
	[Vorname] [varchar](50) NOT NULL,
	[Nachname] [varchar](50) NOT NULL,
	[Geburtsdatum] [date] NOT NULL,
	[Geschlecht] [bit] NULL,
	[BlutgruppeID] [int] NOT NULL,
	[Email] [varchar](100) NULL,
	[Telefon] [varchar](20) NULL,
	[Strasse] [varchar](100) NULL,
	[PLZ] [varchar](10) NULL,
	[Ort] [varchar](50) NULL,
	[Land] [varchar](50) NULL,
	[Registrierungsdatum] [date] NOT NULL,
	[Aktiv] [bit] NULL,
	[Notizen] [nvarchar](max) NULL,
 CONSTRAINT [PK__Spender] PRIMARY KEY CLUSTERED 
(
	[SpenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Spender] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Spender] ADD  CONSTRAINT [DF__Spender__Land__1F98B2C1]  DEFAULT ('Deutschland') FOR [Land]
GO

ALTER TABLE [dbo].[Spender] ADD  CONSTRAINT [DF__Spender__Aktiv__208CD6FA]  DEFAULT ((1)) FOR [Aktiv]
GO

ALTER TABLE [dbo].[Spender]  WITH CHECK ADD  CONSTRAINT [FK_Spender_Blutgruppen] FOREIGN KEY([BlutgruppeID])
REFERENCES [dbo].[Blutgruppen] ([BlutgruppeID])
GO

ALTER TABLE [dbo].[Spender] CHECK CONSTRAINT [FK_Spender_Blutgruppen]
GO

ALTER TABLE [dbo].[Spender]  WITH CHECK ADD  CONSTRAINT [chk_Email_Format] CHECK  (([Email] like '%@%.%'))
GO

ALTER TABLE [dbo].[Spender] CHECK CONSTRAINT [chk_Email_Format]
GO



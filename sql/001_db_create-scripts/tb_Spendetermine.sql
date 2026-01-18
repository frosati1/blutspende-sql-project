USE [Blutspende]
GO

/****** Object:  Table [dbo].[Spendetermine]    Script Date: 15.01.2026 13:26:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Spendetermine](
	[TerminID] [int] IDENTITY(1,1) NOT NULL,
	[SpenderID] [int] NOT NULL,
	[ZentrumID] [int] NOT NULL,
	[TerminDatum] [date] NOT NULL,
	[TerminUhrzeit] [time](7) NOT NULL,
	[ErstelltAm] [time](7) NOT NULL,
 CONSTRAINT [PK__Spendete__42126CB5CB752E3A] PRIMARY KEY CLUSTERED 
(
	[TerminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Spendetermine] ADD  CONSTRAINT [DF__Spendeter__Erste__607251E5]  DEFAULT (getdate()) FOR [ErstelltAm]
GO

ALTER TABLE [dbo].[Spendetermine]  WITH CHECK ADD  CONSTRAINT [FK_Spendetermine_Spender] FOREIGN KEY([SpenderID])
REFERENCES [dbo].[Spender] ([SpenderID])
GO

ALTER TABLE [dbo].[Spendetermine] CHECK CONSTRAINT [FK_Spendetermine_Spender]
GO

ALTER TABLE [dbo].[Spendetermine]  WITH CHECK ADD  CONSTRAINT [FK_Spendetermine_Spendezentren] FOREIGN KEY([ZentrumID])
REFERENCES [dbo].[Spendezentren] ([ZentrumID])
GO

ALTER TABLE [dbo].[Spendetermine] CHECK CONSTRAINT [FK_Spendetermine_Spendezentren]
GO



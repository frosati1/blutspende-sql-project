USE [Blutspende]
GO

/****** Object:  Table [dbo].[Blutgruppen]    Script Date: 15.01.2026 13:28:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blutgruppen](
	[BlutgruppeID] [int] IDENTITY(1,1) NOT NULL,
	[Blutgruppe] [varchar](3) NOT NULL,
	[Rhesusfaktor] [varchar](1) NOT NULL,
	[Beschreibung] [varchar](100) NULL,
 CONSTRAINT [PK__Blutgrup__CCD6BC7B0EEBB9C7] PRIMARY KEY CLUSTERED 
(
	[BlutgruppeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



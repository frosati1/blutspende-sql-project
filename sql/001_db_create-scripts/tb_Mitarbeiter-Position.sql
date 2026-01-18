USE [Blutspende]
GO

/****** Object:  Table [dbo].[tb_Mitarbeiter-Position]    Script Date: 15.01.2026 13:25:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_Mitarbeiter-Position](
	[PositionID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nchar](20) NOT NULL,
 CONSTRAINT [PK_tb_Mitarbeiter-Position] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



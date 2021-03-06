USE [Consorzio]
GO
/****** Object:  Table [dbo].[Acquirente]    Script Date: 01/06/2017 17:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Acquirente](
	[IdAcquirente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[TipoAcquirente] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Acquirente] PRIMARY KEY CLUSTERED 
(
	[IdAcquirente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AziendaVinicola]    Script Date: 01/06/2017 17:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AziendaVinicola](
	[IdAzienda] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[NomeTitolare] [varchar](50) NOT NULL,
	[Indirizzo] [varchar](50) NOT NULL,
	[Regione] [varchar](50) NOT NULL,
	[Longitudine] [float] NOT NULL,
	[Latitudine] [float] NOT NULL,
 CONSTRAINT [PK_AziendaVinicola] PRIMARY KEY CLUSTERED 
(
	[IdAzienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottiglia]    Script Date: 01/06/2017 17:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottiglia](
	[Nome] [varchar](50) NOT NULL,
	[TipoVino] [varchar](50) NOT NULL,
	[AnnoProduzione] [int] NOT NULL,
	[OrigineControllata] [bit] NOT NULL,
	[IdCassa] [int] NOT NULL,
	[IdAzienda] [int] NOT NULL,
 CONSTRAINT [PK_Bottiglia] PRIMARY KEY CLUSTERED 
(
	[Nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CassaBottiglia]    Script Date: 01/06/2017 17:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CassaBottiglia](
	[IdCassa] [int] IDENTITY(1,1) NOT NULL,
	[QuantitaBottiglie] [int] NOT NULL,
	[DataVendita] [date] NOT NULL,
	[IdAcquirente] [int] NOT NULL,
 CONSTRAINT [PK_CassaBottiglia] PRIMARY KEY CLUSTERED 
(
	[IdCassa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Immagine]    Script Date: 01/06/2017 17:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Immagine](
	[IdImmagine] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[IdAzienda] [int] NOT NULL,
 CONSTRAINT [PK_Immagine] PRIMARY KEY CLUSTERED 
(
	[IdImmagine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lavorazione]    Script Date: 01/06/2017 17:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lavorazione](
	[IdLavorazione] [int] IDENTITY(1,1) NOT NULL,
	[QuantitaUvaRaccolte] [int] NOT NULL,
	[QuantitaLitriVinoProdotti] [float] NOT NULL,
	[DataLavorazione] [date] NOT NULL,
	[IdAzienda] [int] NOT NULL,
 CONSTRAINT [PK_Lavorazione] PRIMARY KEY CLUSTERED 
(
	[IdLavorazione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Acquirente] ON 

INSERT [dbo].[Acquirente] ([IdAcquirente], [Nome], [TipoAcquirente]) VALUES (1, N'Marco', N'Grossista')
INSERT [dbo].[Acquirente] ([IdAcquirente], [Nome], [TipoAcquirente]) VALUES (2, N'Paolo', N'Grande distribuzione')
INSERT [dbo].[Acquirente] ([IdAcquirente], [Nome], [TipoAcquirente]) VALUES (4, N'Gianni', N'Grossista')
INSERT [dbo].[Acquirente] ([IdAcquirente], [Nome], [TipoAcquirente]) VALUES (5, N'Caluso', N'Grande distribuzione')
INSERT [dbo].[Acquirente] ([IdAcquirente], [Nome], [TipoAcquirente]) VALUES (6, N'Nome1', N'Grossista')
INSERT [dbo].[Acquirente] ([IdAcquirente], [Nome], [TipoAcquirente]) VALUES (7, N'Nome2', N'Grande distribuzione')
INSERT [dbo].[Acquirente] ([IdAcquirente], [Nome], [TipoAcquirente]) VALUES (8, N'Nome3', N'Grossista')
SET IDENTITY_INSERT [dbo].[Acquirente] OFF
SET IDENTITY_INSERT [dbo].[AziendaVinicola] ON 

INSERT [dbo].[AziendaVinicola] ([IdAzienda], [Nome], [NomeTitolare], [Indirizzo], [Regione], [Longitudine], [Latitudine]) VALUES (1, N'Peppina', N'Antonio', N'Via dei palazzi 21', N'Piemonte', 24542, 43456)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [Nome], [NomeTitolare], [Indirizzo], [Regione], [Longitudine], [Latitudine]) VALUES (2, N'Cattina', N'Ludovico', N'Via delle serre 75', N'Liguria', 5454, 65657)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [Nome], [NomeTitolare], [Indirizzo], [Regione], [Longitudine], [Latitudine]) VALUES (5, N'Borgo', N'Ruggero', N'Via molinari 54', N'Piemonte', 54576, 76767)
SET IDENTITY_INSERT [dbo].[AziendaVinicola] OFF
INSERT [dbo].[Bottiglia] ([Nome], [TipoVino], [AnnoProduzione], [OrigineControllata], [IdCassa], [IdAzienda]) VALUES (N'Astrono', N'Leggiadro', 1990, 0, 2, 2)
INSERT [dbo].[Bottiglia] ([Nome], [TipoVino], [AnnoProduzione], [OrigineControllata], [IdCassa], [IdAzienda]) VALUES (N'Callero', N'Tavola', 1995, 1, 3, 5)
INSERT [dbo].[Bottiglia] ([Nome], [TipoVino], [AnnoProduzione], [OrigineControllata], [IdCassa], [IdAzienda]) VALUES (N'Marmoro', N'Tavola', 1990, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[CassaBottiglia] ON 

INSERT [dbo].[CassaBottiglia] ([IdCassa], [QuantitaBottiglie], [DataVendita], [IdAcquirente]) VALUES (1, 12, CAST(0xD52F0B00 AS Date), 1)
INSERT [dbo].[CassaBottiglia] ([IdCassa], [QuantitaBottiglie], [DataVendita], [IdAcquirente]) VALUES (2, 12, CAST(0x25310B00 AS Date), 2)
INSERT [dbo].[CassaBottiglia] ([IdCassa], [QuantitaBottiglie], [DataVendita], [IdAcquirente]) VALUES (3, 12, CAST(0x80310B00 AS Date), 4)
SET IDENTITY_INSERT [dbo].[CassaBottiglia] OFF
SET IDENTITY_INSERT [dbo].[Immagine] ON 

INSERT [dbo].[Immagine] ([IdImmagine], [Nome], [IdAzienda]) VALUES (1, N'foto.jpg', 1)
INSERT [dbo].[Immagine] ([IdImmagine], [Nome], [IdAzienda]) VALUES (2, N'foto2.jpg', 2)
INSERT [dbo].[Immagine] ([IdImmagine], [Nome], [IdAzienda]) VALUES (3, N'foto3.jpg', 5)
SET IDENTITY_INSERT [dbo].[Immagine] OFF
SET IDENTITY_INSERT [dbo].[Lavorazione] ON 

INSERT [dbo].[Lavorazione] ([IdLavorazione], [QuantitaUvaRaccolte], [QuantitaLitriVinoProdotti], [DataLavorazione], [IdAzienda]) VALUES (1, 34, 1243, CAST(0x89360B00 AS Date), 1)
INSERT [dbo].[Lavorazione] ([IdLavorazione], [QuantitaUvaRaccolte], [QuantitaLitriVinoProdotti], [DataLavorazione], [IdAzienda]) VALUES (4, 30, 764, CAST(0xB5340B00 AS Date), 2)
INSERT [dbo].[Lavorazione] ([IdLavorazione], [QuantitaUvaRaccolte], [QuantitaLitriVinoProdotti], [DataLavorazione], [IdAzienda]) VALUES (5, 54, 1900, CAST(0x29330B00 AS Date), 5)
SET IDENTITY_INSERT [dbo].[Lavorazione] OFF
ALTER TABLE [dbo].[Bottiglia]  WITH CHECK ADD  CONSTRAINT [FK_Bottiglia_AziendaVinicola] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[AziendaVinicola] ([IdAzienda])
GO
ALTER TABLE [dbo].[Bottiglia] CHECK CONSTRAINT [FK_Bottiglia_AziendaVinicola]
GO
ALTER TABLE [dbo].[Bottiglia]  WITH CHECK ADD  CONSTRAINT [FK_Bottiglia_CassaBottiglia] FOREIGN KEY([IdCassa])
REFERENCES [dbo].[CassaBottiglia] ([IdCassa])
GO
ALTER TABLE [dbo].[Bottiglia] CHECK CONSTRAINT [FK_Bottiglia_CassaBottiglia]
GO
ALTER TABLE [dbo].[CassaBottiglia]  WITH CHECK ADD  CONSTRAINT [FK_CassaBottiglia_Acquirente] FOREIGN KEY([IdAcquirente])
REFERENCES [dbo].[Acquirente] ([IdAcquirente])
GO
ALTER TABLE [dbo].[CassaBottiglia] CHECK CONSTRAINT [FK_CassaBottiglia_Acquirente]
GO
ALTER TABLE [dbo].[Immagine]  WITH CHECK ADD  CONSTRAINT [FK_Immagine_AziendaVinicola] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[AziendaVinicola] ([IdAzienda])
GO
ALTER TABLE [dbo].[Immagine] CHECK CONSTRAINT [FK_Immagine_AziendaVinicola]
GO
ALTER TABLE [dbo].[Lavorazione]  WITH CHECK ADD  CONSTRAINT [FK_Lavorazione_AziendaVinicola] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[AziendaVinicola] ([IdAzienda])
GO
ALTER TABLE [dbo].[Lavorazione] CHECK CONSTRAINT [FK_Lavorazione_AziendaVinicola]
GO

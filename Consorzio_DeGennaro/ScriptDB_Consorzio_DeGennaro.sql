USE [Consorzio_DeGennaro]
GO
/****** Object:  Table [dbo].[Acquirente]    Script Date: 06/06/2017 16:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Acquirente](
	[IdAcquirente] [int] IDENTITY(1,1) NOT NULL,
	[NomeAcquirente] [varchar](100) NOT NULL,
	[TipoAcquirente] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Acquirente] PRIMARY KEY CLUSTERED 
(
	[IdAcquirente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AziendaVinicola]    Script Date: 06/06/2017 16:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AziendaVinicola](
	[IdAzienda] [int] IDENTITY(1,1) NOT NULL,
	[NomeAzienda] [varchar](100) NOT NULL,
	[Indirizzo] [varchar](100) NOT NULL,
	[NomeTitolare] [varchar](100) NOT NULL,
	[Latitudine] [float] NOT NULL,
	[Longitudine] [float] NOT NULL,
	[IdRegione] [int] NOT NULL,
 CONSTRAINT [PK_AziendaVinicola] PRIMARY KEY CLUSTERED 
(
	[IdAzienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AziendeProduzioni]    Script Date: 06/06/2017 16:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AziendeProduzioni](
	[IdAzienda] [int] NOT NULL,
	[IdProduzione] [int] NOT NULL,
	[QuantitaUvaLavorata_KG] [float] NOT NULL,
	[QuantitaVinoProdotto_L] [float] NOT NULL,
	[QuantitaUvaImpiegataVino_KG] [float] NOT NULL,
 CONSTRAINT [PK_AziendeProduzioni] PRIMARY KEY CLUSTERED 
(
	[IdAzienda] ASC,
	[IdProduzione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottiglia]    Script Date: 06/06/2017 16:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottiglia](
	[IdBottiglia] [int] IDENTITY(1,1) NOT NULL,
	[NomeVino] [varchar](100) NOT NULL,
	[TipoVino] [varchar](100) NOT NULL,
	[DataProduzione] [date] NOT NULL,
	[OrigineControllata] [bit] NOT NULL,
	[IdCassa] [int] NOT NULL,
 CONSTRAINT [PK_Bottiglia] PRIMARY KEY CLUSTERED 
(
	[IdBottiglia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CassaBottiglie]    Script Date: 06/06/2017 16:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CassaBottiglie](
	[IdCassa] [int] IDENTITY(1,1) NOT NULL,
	[DataVendita] [date] NOT NULL,
	[IdAcquirente] [int] NOT NULL,
	[IdAzienda] [int] NOT NULL,
 CONSTRAINT [PK_CassaBottiglie] PRIMARY KEY CLUSTERED 
(
	[IdCassa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiornataProduzione]    Script Date: 06/06/2017 16:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiornataProduzione](
	[IdProduzione] [int] IDENTITY(1,1) NOT NULL,
	[DataProduzione] [date] NOT NULL,
 CONSTRAINT [PK_Produzione] PRIMARY KEY CLUSTERED 
(
	[IdProduzione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Immagine]    Script Date: 06/06/2017 16:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Immagine](
	[IdImmagine] [int] IDENTITY(1,1) NOT NULL,
	[NomeImmagine] [varchar](100) NOT NULL,
	[IdAzienda] [int] NOT NULL,
 CONSTRAINT [PK_Immagine] PRIMARY KEY CLUSTERED 
(
	[IdImmagine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Regione]    Script Date: 06/06/2017 16:18:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Regione](
	[IdRegione] [int] IDENTITY(1,1) NOT NULL,
	[NomeRegione] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Regione] PRIMARY KEY CLUSTERED 
(
	[IdRegione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Acquirente] ON 

INSERT [dbo].[Acquirente] ([IdAcquirente], [NomeAcquirente], [TipoAcquirente]) VALUES (1, N'Marco', N'Grossista')
INSERT [dbo].[Acquirente] ([IdAcquirente], [NomeAcquirente], [TipoAcquirente]) VALUES (2, N'Paolo', N'GD')
INSERT [dbo].[Acquirente] ([IdAcquirente], [NomeAcquirente], [TipoAcquirente]) VALUES (3, N'Riccardo', N'Grossista')
INSERT [dbo].[Acquirente] ([IdAcquirente], [NomeAcquirente], [TipoAcquirente]) VALUES (4, N'Lucio', N'Grossista')
INSERT [dbo].[Acquirente] ([IdAcquirente], [NomeAcquirente], [TipoAcquirente]) VALUES (5, N'Pino', N'GD')
INSERT [dbo].[Acquirente] ([IdAcquirente], [NomeAcquirente], [TipoAcquirente]) VALUES (6, N'Nome6', N'Grossista')
INSERT [dbo].[Acquirente] ([IdAcquirente], [NomeAcquirente], [TipoAcquirente]) VALUES (7, N'Nome7', N'GD')
INSERT [dbo].[Acquirente] ([IdAcquirente], [NomeAcquirente], [TipoAcquirente]) VALUES (8, N'Nome8', N'Grossista')
SET IDENTITY_INSERT [dbo].[Acquirente] OFF
SET IDENTITY_INSERT [dbo].[AziendaVinicola] ON 

INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (1, N'AZPiemontese1', N'Via dalla strada 23', N'Mastrolindo', 23235, 43212, 2)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (2, N'AZPiemontese2', N'Via dei palazzi 15', N'Giuseppe', 43435.2, 3235.3, 2)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (3, N'AZLigure1', N'Via genovese 43', N'Calogero', 3214, 34433, 3)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (4, N'AZLigure2', N'Via dei boschi 2', N'Mauro', 35344, 11222, 3)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (5, N'BorgoMolinese', N'Via non esistente 35', N'Dullio', 6576, 76655, 14)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (6, N'AZLombarda1', N'Via lombarda', N'Vercingetorige', 2321, 34356, 4)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (8, N'AZLombarda2', N'Via lombarda 2', N'Celiaco', 11111, 22222, 4)
SET IDENTITY_INSERT [dbo].[AziendaVinicola] OFF
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (1, 1, 35, 1222, 25)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (1, 2, 30, 1555.8, 29)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (1, 10, 34, 2800, 20)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (2, 1, 13, 5443, 12)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (2, 2, 23, 4532, 20)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (2, 3, 45, 2455, 36)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (2, 11, 32, 2900, 12)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (3, 1, 65, 3454, 54)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (3, 2, 55, 1223, 43)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (3, 3, 34, 5565, 30)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (3, 4, 24, 2323, 20)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (3, 10, 44, 2222, 10)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (4, 4, 24, 3000.2, 20)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (4, 10, 43.5, 3456.7, 45.6)
INSERT [dbo].[AziendeProduzioni] ([IdAzienda], [IdProduzione], [QuantitaUvaLavorata_KG], [QuantitaVinoProdotto_L], [QuantitaUvaImpiegataVino_KG]) VALUES (5, 10, 56, 2900, 32)
SET IDENTITY_INSERT [dbo].[Bottiglia] ON 

INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (1, N'Chardonet', N'Rosso', CAST(0xBE160B00 AS Date), 1, 1)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (2, N'Martinet', N'Tavola', CAST(0xDD160B00 AS Date), 0, 1)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (3, N'Lupolet', N'Rosso', CAST(0xFF1D0B00 AS Date), 0, 1)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (4, N'Cavolet', N'Rosso', CAST(0x65240B00 AS Date), 1, 2)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (5, N'Mountret', N'Tavola', CAST(0x84240B00 AS Date), 0, 2)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (6, N'Cabernet', N'Tavola', CAST(0x92210B00 AS Date), 0, 3)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (7, N'Stonet', N'Tavola', CAST(0x25170B00 AS Date), 1, 3)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (8, N'Bidonet', N'Tavola', CAST(0x73180B00 AS Date), 1, 3)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (9, N'Maniquette', N'Tavola', CAST(0xA8860A00 AS Date), 0, 3)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (10, N'Subemelet', N'Rosso', CAST(0xC0160B00 AS Date), 1, 4)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (11, N'Stufatonet', N'Tavola', CAST(0xF51A0B00 AS Date), 0, 5)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (12, N'Xnet', N'Bianco', CAST(0x42180B00 AS Date), 1, 4)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (13, N'Chardonet parfum', N'Rosso', CAST(0xB9160B00 AS Date), 1, 4)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (14, N'Chardonet miller', N'Bianco', CAST(0xE3150B00 AS Date), 1, 4)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (15, N'Chardonet gtt', N'Rosso', CAST(0xD71B0B00 AS Date), 0, 1)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (16, N'Palinet', N'Tavola', CAST(0xA1070B00 AS Date), 0, 6)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (17, N'Arpent', N'Tavola', CAST(0x3E200B00 AS Date), 1, 3)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (18, N'Ynet', N'Tavola', CAST(0x00190B00 AS Date), 0, 7)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (19, N'Tavnet', N'Tavola', CAST(0x53170B00 AS Date), 1, 2)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (20, N'FrameNet', N'Rosso', CAST(0x691A0B00 AS Date), 0, 1)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (21, N'Chardonet kilos', N'Tavola', CAST(0xF7190B00 AS Date), 1, 6)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (22, N'Chardonet mali', N'Bianco', CAST(0xC3150B00 AS Date), 1, 8)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (23, N'AAAAnet', N'Tavola', CAST(0x6D170B00 AS Date), 1, 9)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (24, N'BBBBnet', N'Rosso', CAST(0x86150B00 AS Date), 0, 9)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [NomeVino], [TipoVino], [DataProduzione], [OrigineControllata], [IdCassa]) VALUES (25, N'Chardonet de parfum', N'Tavola', CAST(0x171E0B00 AS Date), 0, 10)
SET IDENTITY_INSERT [dbo].[Bottiglia] OFF
SET IDENTITY_INSERT [dbo].[CassaBottiglie] ON 

INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (1, CAST(0x863A0B00 AS Date), 1, 1)
INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (2, CAST(0x693A0B00 AS Date), 2, 1)
INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (3, CAST(0x1B390B00 AS Date), 3, 2)
INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (4, CAST(0xFC380B00 AS Date), 3, 2)
INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (5, CAST(0xFC380B00 AS Date), 4, 3)
INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (6, CAST(0x22360B00 AS Date), 4, 1)
INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (7, CAST(0xB4340B00 AS Date), 5, 4)
INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (8, CAST(0x47330B00 AS Date), 5, 5)
INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (9, CAST(0xCE370B00 AS Date), 4, 6)
INSERT [dbo].[CassaBottiglie] ([IdCassa], [DataVendita], [IdAcquirente], [IdAzienda]) VALUES (10, CAST(0x3D390B00 AS Date), 3, 8)
SET IDENTITY_INSERT [dbo].[CassaBottiglie] OFF
SET IDENTITY_INSERT [dbo].[GiornataProduzione] ON 

INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (1, CAST(0x89360B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (2, CAST(0x8A360B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (3, CAST(0x8B360B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (4, CAST(0xF6370B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (5, CAST(0xF7370B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (6, CAST(0xF8370B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (7, CAST(0x63390B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (8, CAST(0x64390B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (9, CAST(0x65390B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (10, CAST(0x4A3C0B00 AS Date))
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [DataProduzione]) VALUES (11, CAST(0x6B3C0B00 AS Date))
SET IDENTITY_INSERT [dbo].[GiornataProduzione] OFF
SET IDENTITY_INSERT [dbo].[Immagine] ON 

INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (1, N'ImgAZ1di1', 1)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (3, N'ImgAZ1di2', 1)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (5, N'ImgAZ1di3', 1)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (6, N'ImgAZ2di1', 2)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (7, N'ImgAZ2di2', 2)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (8, N'ImgAZ3di3', 2)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (9, N'ImgAZ3di1', 3)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (11, N'ImgAZ3di2', 3)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (12, N'ImgAZ3di3', 3)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (13, N'ImgAZ4di1', 4)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (14, N'ImgAZ4di2', 4)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (15, N'ImgAZ4di3', 4)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (16, N'ImgAZ5di1', 5)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (17, N'ImgAZ5di2', 5)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (18, N'ImgAZ5di3', 5)
SET IDENTITY_INSERT [dbo].[Immagine] OFF
SET IDENTITY_INSERT [dbo].[Regione] ON 

INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (1, N'Valle d''Aosta')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (2, N'Piemonte')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (3, N'Liguria')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (4, N'Lombardia')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (5, N'Trentino-Alto Adige')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (6, N'Veneto')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (7, N'Friuli-Venezia Giulia')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (8, N'Emilia-Romagna')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (9, N'Toscana')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (10, N'Marche')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (11, N'Umbria')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (12, N'Lazio')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (13, N'Abruzzo')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (14, N'Molise')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (15, N'Campania')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (16, N'Basilicata')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (17, N'Puglia')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (18, N'Calabria')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (19, N'Sicilia')
INSERT [dbo].[Regione] ([IdRegione], [NomeRegione]) VALUES (20, N'Sardegna')
SET IDENTITY_INSERT [dbo].[Regione] OFF
ALTER TABLE [dbo].[AziendaVinicola]  WITH CHECK ADD  CONSTRAINT [FK_AziendaVinicola_Regione] FOREIGN KEY([IdRegione])
REFERENCES [dbo].[Regione] ([IdRegione])
GO
ALTER TABLE [dbo].[AziendaVinicola] CHECK CONSTRAINT [FK_AziendaVinicola_Regione]
GO
ALTER TABLE [dbo].[AziendeProduzioni]  WITH CHECK ADD  CONSTRAINT [FK_AziendeProduzioni_AziendaVinicola] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[AziendaVinicola] ([IdAzienda])
GO
ALTER TABLE [dbo].[AziendeProduzioni] CHECK CONSTRAINT [FK_AziendeProduzioni_AziendaVinicola]
GO
ALTER TABLE [dbo].[AziendeProduzioni]  WITH CHECK ADD  CONSTRAINT [FK_AziendeProduzioni_Produzione] FOREIGN KEY([IdProduzione])
REFERENCES [dbo].[GiornataProduzione] ([IdProduzione])
GO
ALTER TABLE [dbo].[AziendeProduzioni] CHECK CONSTRAINT [FK_AziendeProduzioni_Produzione]
GO
ALTER TABLE [dbo].[Bottiglia]  WITH CHECK ADD  CONSTRAINT [FK_Bottiglia_CassaBottiglie] FOREIGN KEY([IdCassa])
REFERENCES [dbo].[CassaBottiglie] ([IdCassa])
GO
ALTER TABLE [dbo].[Bottiglia] CHECK CONSTRAINT [FK_Bottiglia_CassaBottiglie]
GO
ALTER TABLE [dbo].[CassaBottiglie]  WITH CHECK ADD  CONSTRAINT [FK_CassaBottiglie_Acquirente] FOREIGN KEY([IdAcquirente])
REFERENCES [dbo].[Acquirente] ([IdAcquirente])
GO
ALTER TABLE [dbo].[CassaBottiglie] CHECK CONSTRAINT [FK_CassaBottiglie_Acquirente]
GO
ALTER TABLE [dbo].[CassaBottiglie]  WITH CHECK ADD  CONSTRAINT [FK_CassaBottiglie_AziendaVinicola] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[AziendaVinicola] ([IdAzienda])
GO
ALTER TABLE [dbo].[CassaBottiglie] CHECK CONSTRAINT [FK_CassaBottiglie_AziendaVinicola]
GO
ALTER TABLE [dbo].[Immagine]  WITH CHECK ADD  CONSTRAINT [FK_Immagine_AziendaVinicola] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[AziendaVinicola] ([IdAzienda])
GO
ALTER TABLE [dbo].[Immagine] CHECK CONSTRAINT [FK_Immagine_AziendaVinicola]
GO

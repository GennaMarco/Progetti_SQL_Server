USE [Consorzio_DeGennaro]
GO
/****** Object:  Table [dbo].[AziendaVinicola]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AziendaVinicola](
	[IdAzienda] [int] IDENTITY(1,1) NOT NULL,
	[NomeAzienda] [varchar](255) NOT NULL,
	[Indirizzo] [varchar](255) NOT NULL,
	[NomeTitolare] [varchar](255) NOT NULL,
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
/****** Object:  Table [dbo].[Bottiglia]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottiglia](
	[IdBottiglia] [int] IDENTITY(1,1) NOT NULL,
	[DataProduzione] [date] NOT NULL,
	[NumeroProgressivo] [int] NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[OrigineControllata] [bit] NOT NULL,
	[Prezzo] [money] NOT NULL,
	[IdAzienda] [int] NOT NULL,
	[IdTipoVino] [int] NOT NULL,
 CONSTRAINT [PK_Bottiglia_1] PRIMARY KEY CLUSTERED 
(
	[IdBottiglia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[NomeCliente] [varchar](255) NOT NULL,
	[Cognome] [varchar](255) NOT NULL,
	[RagSoc] [varchar](255) NULL,
	[Telefono] [varchar](255) NULL,
	[Fax] [varchar](255) NULL,
	[Cellulare] [varchar](10) NULL,
	[Email] [varchar](255) NOT NULL,
	[CodiceFiscale] [varchar](16) NOT NULL,
	[PartitaIva] [varchar](255) NULL,
	[IdTipoAcquirente] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DettaglioOrdine]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DettaglioOrdine](
	[IdBottiglia] [int] NOT NULL,
	[IdOrdine] [int] NOT NULL,
	[QuantitaBottiglie] [int] NOT NULL,
 CONSTRAINT [PK_DettaglioOrdine] PRIMARY KEY CLUSTERED 
(
	[IdBottiglia] ASC,
	[IdOrdine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiornataProduzione]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiornataProduzione](
	[IdProduzione] [int] IDENTITY(1,1) NOT NULL,
	[QuantitaUvaLavorata] [float] NOT NULL,
	[QuantitaVinoProdotto] [float] NOT NULL,
	[QuantitaUvaImpNelVino] [float] NOT NULL,
	[DataProduzione] [date] NOT NULL,
	[IdAzienda] [int] NOT NULL,
 CONSTRAINT [PK_GiornataProduzione] PRIMARY KEY CLUSTERED 
(
	[IdProduzione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Immagine]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Immagine](
	[IdImmagine] [int] IDENTITY(1,1) NOT NULL,
	[NomeImmagine] [varchar](255) NOT NULL,
	[IdAzienda] [int] NOT NULL,
 CONSTRAINT [PK_Immagine] PRIMARY KEY CLUSTERED 
(
	[IdImmagine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Indirizzo]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Indirizzo](
	[IdIndirizzo] [int] IDENTITY(1,1) NOT NULL,
	[Cap] [int] NOT NULL,
	[Citta] [varchar](255) NOT NULL,
	[Provincia] [varchar](255) NOT NULL,
	[Fatturazione] [bit] NOT NULL,
	[Spedizione] [bit] NOT NULL,
	[IdCliente] [int] NOT NULL,
 CONSTRAINT [PK_Indirizzo] PRIMARY KEY CLUSTERED 
(
	[IdIndirizzo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ordine]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordine](
	[IdOrdine] [int] IDENTITY(1,1) NOT NULL,
	[DataOrdine] [date] NOT NULL,
	[IdIndirizzo] [int] NOT NULL,
 CONSTRAINT [PK_Ordine] PRIMARY KEY CLUSTERED 
(
	[IdOrdine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regione]    Script Date: 09/06/2017 18:07:15 ******/
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
/****** Object:  Table [dbo].[TipoAcquirente]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoAcquirente](
	[IdTipoAcquirente] [int] IDENTITY(1,1) NOT NULL,
	[TipoAcquirente] [varchar](255) NOT NULL,
 CONSTRAINT [PK_TipoAcquirente] PRIMARY KEY CLUSTERED 
(
	[IdTipoAcquirente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoVino]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoVino](
	[IdTipoVino] [int] IDENTITY(1,1) NOT NULL,
	[TipoVino] [varchar](255) NOT NULL,
 CONSTRAINT [PK_TipoVino] PRIMARY KEY CLUSTERED 
(
	[IdTipoVino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[BottigliePerVinoConSpec]    Script Date: 09/06/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* f) Visualizzare i dati dell'azienda vinicola che ha venduto il maggior numero di bottiglie di Cabernet di origine controllata di una data annata

CREATE VIEW QuantitaBottiglieVendutePerAzienda
AS
SELECT av.NomeAzienda, AV.NomeTitolare, AV.Indirizzo, AV.Latitudine, av.Longitudine, r.NomeRegione, SUM(do.QuantitaBottiglie) AS [Quantita bottiglie per azienda]
FROM  
dbo.AziendaVinicola AS av INNER JOIN
dbo.Bottiglia AS b ON av.IdAzienda = b.IdAzienda INNER JOIN
dbo.DettaglioOrdine AS do ON b.IdBottiglia = do.IdBottiglia INNER JOIN
dbo.Regione AS r ON r.IdRegione = av.IdRegione
GROUP BY  av.NomeAzienda, AV.NomeTitolare, AV.Indirizzo, AV.Latitudine, av.Longitudine, r.NomeRegione


SELECT *
FROM AziendaVinicola av, QuantitaBottiglieVendutePerAzienda qb, Bottiglia b
WHERE av.NomeAzienda = qb.NomeAzienda AND b.IdAzienda = av.IdAzienda
AND  b.Nome = 'Cabernet' AND b.OrigineControllata = 'True' AND YEAR(b.DataProduzione) = '1990'
AND qb.[Quantita bottiglie per azienda] IN
(
  
)*/
CREATE VIEW [dbo].[BottigliePerVinoConSpec]
AS
SELECT        av.IdAzienda, b.IdBottiglia, SUM(do.QuantitaBottiglie) AS [Quantita bottiglie per azienda]
FROM            dbo.AziendaVinicola AS av INNER JOIN
                         dbo.Bottiglia AS b ON av.IdAzienda = b.IdAzienda INNER JOIN
                         dbo.DettaglioOrdine AS do ON b.IdBottiglia = do.IdBottiglia INNER JOIN
                         dbo.Regione AS r ON r.IdRegione = av.IdRegione
WHERE        (b.Nome = 'Cabernet') AND (b.OrigineControllata = 'True') AND (YEAR(b.DataProduzione) = '1990')
GROUP BY av.IdAzienda, b.IdBottiglia

GO
SET IDENTITY_INSERT [dbo].[AziendaVinicola] ON 

INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (1, N'AZPiemontese1', N'Via dalla strada 23', N'Mastrolindo', 23235, 43212, 2)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (2, N'AZPiemontese2', N'Via dei palazzi 15', N'Giuseppe', 43435.2, 3235.3, 2)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (3, N'AZLigure1', N'Via genovese 43', N'Calogero', 3214, 34433, 3)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (4, N'AZLigure2', N'Via dei boschi 2', N'Mauro', 35344, 11222, 3)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (5, N'Centauro', N'Via non esistente 35', N'Dullio', 6576, 76655, 14)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (6, N'AZLombarda1', N'Via lombarda', N'Vercingetorige', 2321, 34356, 4)
INSERT [dbo].[AziendaVinicola] ([IdAzienda], [NomeAzienda], [Indirizzo], [NomeTitolare], [Latitudine], [Longitudine], [IdRegione]) VALUES (7, N'AZLombarda2', N'Via lombarda 2', N'Celiaco', 11111, 22222, 4)
SET IDENTITY_INSERT [dbo].[AziendaVinicola] OFF
SET IDENTITY_INSERT [dbo].[Bottiglia] ON 

INSERT [dbo].[Bottiglia] ([IdBottiglia], [DataProduzione], [NumeroProgressivo], [Nome], [OrigineControllata], [Prezzo], [IdAzienda], [IdTipoVino]) VALUES (1, CAST(0x20160B00 AS Date), 2, N'Cabernet', 1, 30.3200, 1, 3)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [DataProduzione], [NumeroProgressivo], [Nome], [OrigineControllata], [Prezzo], [IdAzienda], [IdTipoVino]) VALUES (2, CAST(0x20160B00 AS Date), 6, N'Mountret', 1, 13.0000, 3, 3)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [DataProduzione], [NumeroProgressivo], [Nome], [OrigineControllata], [Prezzo], [IdAzienda], [IdTipoVino]) VALUES (3, CAST(0x3F160B00 AS Date), 1, N'Chardonet', 1, 43.5000, 1, 1)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [DataProduzione], [NumeroProgressivo], [Nome], [OrigineControllata], [Prezzo], [IdAzienda], [IdTipoVino]) VALUES (4, CAST(0x8D170B00 AS Date), 3, N'Cabernet', 1, 12.0000, 2, 2)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [DataProduzione], [NumeroProgressivo], [Nome], [OrigineControllata], [Prezzo], [IdAzienda], [IdTipoVino]) VALUES (5, CAST(0xF8180B00 AS Date), 4, N'Cabernet', 0, 18.0000, 4, 2)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [DataProduzione], [NumeroProgressivo], [Nome], [OrigineControllata], [Prezzo], [IdAzienda], [IdTipoVino]) VALUES (6, CAST(0x1B190B00 AS Date), 5, N'Scipmanze', 0, 25.0000, 5, 3)
INSERT [dbo].[Bottiglia] ([IdBottiglia], [DataProduzione], [NumeroProgressivo], [Nome], [OrigineControllata], [Prezzo], [IdAzienda], [IdTipoVino]) VALUES (7, CAST(0xF41B0B00 AS Date), 7, N'Pillet', 1, 29.0000, 3, 2)
SET IDENTITY_INSERT [dbo].[Bottiglia] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IdCliente], [NomeCliente], [Cognome], [RagSoc], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva], [IdTipoAcquirente]) VALUES (1, N'Mauro', N'Tampasso', N'S.R.L', N'0119579255', N'343', N'3668579885', N'mauro@gmail.com', N'DGNMEGTHUIEY476T', N'12345', 1)
INSERT [dbo].[Cliente] ([IdCliente], [NomeCliente], [Cognome], [RagSoc], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva], [IdTipoAcquirente]) VALUES (2, N'Paolo', N'Karo', N'S.R.L', N'0119579255', N'343', N'3668579885', N'paolo@gmail.com', N'DGNMEGGFUIEY476T', N'122245', 2)
INSERT [dbo].[Cliente] ([IdCliente], [NomeCliente], [Cognome], [RagSoc], [Telefono], [Fax], [Cellulare], [Email], [CodiceFiscale], [PartitaIva], [IdTipoAcquirente]) VALUES (3, N'Riccardo', N'Jolo', N'S.R.L', N'0119579255', N'343', N'3668579885', N'riccardo@gmail.com', N'YGNMEKTHUIEY426T', N'1654345', 1)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
INSERT [dbo].[DettaglioOrdine] ([IdBottiglia], [IdOrdine], [QuantitaBottiglie]) VALUES (1, 1, 24)
INSERT [dbo].[DettaglioOrdine] ([IdBottiglia], [IdOrdine], [QuantitaBottiglie]) VALUES (2, 1, 12)
INSERT [dbo].[DettaglioOrdine] ([IdBottiglia], [IdOrdine], [QuantitaBottiglie]) VALUES (2, 2, 36)
INSERT [dbo].[DettaglioOrdine] ([IdBottiglia], [IdOrdine], [QuantitaBottiglie]) VALUES (3, 2, 48)
INSERT [dbo].[DettaglioOrdine] ([IdBottiglia], [IdOrdine], [QuantitaBottiglie]) VALUES (4, 2, 24)
INSERT [dbo].[DettaglioOrdine] ([IdBottiglia], [IdOrdine], [QuantitaBottiglie]) VALUES (4, 3, 12)
INSERT [dbo].[DettaglioOrdine] ([IdBottiglia], [IdOrdine], [QuantitaBottiglie]) VALUES (4, 4, 36)
INSERT [dbo].[DettaglioOrdine] ([IdBottiglia], [IdOrdine], [QuantitaBottiglie]) VALUES (5, 2, 24)
INSERT [dbo].[DettaglioOrdine] ([IdBottiglia], [IdOrdine], [QuantitaBottiglie]) VALUES (5, 3, 48)
SET IDENTITY_INSERT [dbo].[GiornataProduzione] ON 

INSERT [dbo].[GiornataProduzione] ([IdProduzione], [QuantitaUvaLavorata], [QuantitaVinoProdotto], [QuantitaUvaImpNelVino], [DataProduzione], [IdAzienda]) VALUES (1, 1111.1, 1111.1, 1111.1, CAST(0xEA390B00 AS Date), 1)
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [QuantitaUvaLavorata], [QuantitaVinoProdotto], [QuantitaUvaImpNelVino], [DataProduzione], [IdAzienda]) VALUES (2, 2222.2, 2222.2, 2222.2, CAST(0x0A3A0B00 AS Date), 1)
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [QuantitaUvaLavorata], [QuantitaVinoProdotto], [QuantitaUvaImpNelVino], [DataProduzione], [IdAzienda]) VALUES (3, 3333.3, 3333.3, 3333.3, CAST(0xC53C0B00 AS Date), 2)
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [QuantitaUvaLavorata], [QuantitaVinoProdotto], [QuantitaUvaImpNelVino], [DataProduzione], [IdAzienda]) VALUES (5, 4444.4, 4444.4, 4444.4, CAST(0x493C0B00 AS Date), 2)
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [QuantitaUvaLavorata], [QuantitaVinoProdotto], [QuantitaUvaImpNelVino], [DataProduzione], [IdAzienda]) VALUES (6, 5555.5, 5555.5, 5555.5, CAST(0x693C0B00 AS Date), 3)
INSERT [dbo].[GiornataProduzione] ([IdProduzione], [QuantitaUvaLavorata], [QuantitaVinoProdotto], [QuantitaUvaImpNelVino], [DataProduzione], [IdAzienda]) VALUES (7, 6666.6, 6666.6, 6666.6, CAST(0xA53C0B00 AS Date), 3)
SET IDENTITY_INSERT [dbo].[GiornataProduzione] OFF
SET IDENTITY_INSERT [dbo].[Immagine] ON 

INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (1, N'ImgAZ1di1', 1)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (2, N'ImgAZ1di2', 1)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (3, N'ImgAZ1di3', 1)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (4, N'ImgAZ2di1', 2)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (5, N'ImgAZ2di2', 2)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (6, N'ImgAZ3di3', 2)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (7, N'ImgAZ3di1', 3)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (8, N'ImgAZ3di2', 3)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (9, N'ImgAZ3di3', 3)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (10, N'ImgAZ4di1', 4)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (11, N'ImgAZ4di2', 4)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (12, N'ImgAZ4di3', 4)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (13, N'ImgAZ5di1', 5)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (14, N'ImgAZ5di2', 5)
INSERT [dbo].[Immagine] ([IdImmagine], [NomeImmagine], [IdAzienda]) VALUES (15, N'ImgAZ5di3', 5)
SET IDENTITY_INSERT [dbo].[Immagine] OFF
SET IDENTITY_INSERT [dbo].[Indirizzo] ON 

INSERT [dbo].[Indirizzo] ([IdIndirizzo], [Cap], [Citta], [Provincia], [Fatturazione], [Spedizione], [IdCliente]) VALUES (1, 10098, N'Rivoli', N'Torino', 1, 0, 1)
INSERT [dbo].[Indirizzo] ([IdIndirizzo], [Cap], [Citta], [Provincia], [Fatturazione], [Spedizione], [IdCliente]) VALUES (2, 10099, N'Cuneo', N'Torino', 0, 1, 2)
INSERT [dbo].[Indirizzo] ([IdIndirizzo], [Cap], [Citta], [Provincia], [Fatturazione], [Spedizione], [IdCliente]) VALUES (3, 10098, N'Collegno', N'Torino', 1, 1, 2)
INSERT [dbo].[Indirizzo] ([IdIndirizzo], [Cap], [Citta], [Provincia], [Fatturazione], [Spedizione], [IdCliente]) VALUES (5, 10097, N'Molfetta', N'Bari', 1, 1, 3)
SET IDENTITY_INSERT [dbo].[Indirizzo] OFF
SET IDENTITY_INSERT [dbo].[Ordine] ON 

INSERT [dbo].[Ordine] ([IdOrdine], [DataOrdine], [IdIndirizzo]) VALUES (1, CAST(0x3A3B0B00 AS Date), 1)
INSERT [dbo].[Ordine] ([IdOrdine], [DataOrdine], [IdIndirizzo]) VALUES (2, CAST(0x863C0B00 AS Date), 2)
INSERT [dbo].[Ordine] ([IdOrdine], [DataOrdine], [IdIndirizzo]) VALUES (3, CAST(0x873C0B00 AS Date), 2)
INSERT [dbo].[Ordine] ([IdOrdine], [DataOrdine], [IdIndirizzo]) VALUES (4, CAST(0xAD390B00 AS Date), 3)
SET IDENTITY_INSERT [dbo].[Ordine] OFF
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
SET IDENTITY_INSERT [dbo].[TipoAcquirente] ON 

INSERT [dbo].[TipoAcquirente] ([IdTipoAcquirente], [TipoAcquirente]) VALUES (1, N'Grossista')
INSERT [dbo].[TipoAcquirente] ([IdTipoAcquirente], [TipoAcquirente]) VALUES (2, N'Grande distribuzione')
SET IDENTITY_INSERT [dbo].[TipoAcquirente] OFF
SET IDENTITY_INSERT [dbo].[TipoVino] ON 

INSERT [dbo].[TipoVino] ([IdTipoVino], [TipoVino]) VALUES (1, N'Rosso')
INSERT [dbo].[TipoVino] ([IdTipoVino], [TipoVino]) VALUES (2, N'Bianco')
INSERT [dbo].[TipoVino] ([IdTipoVino], [TipoVino]) VALUES (3, N'Tavola')
INSERT [dbo].[TipoVino] ([IdTipoVino], [TipoVino]) VALUES (4, N'Nero')
SET IDENTITY_INSERT [dbo].[TipoVino] OFF
ALTER TABLE [dbo].[AziendaVinicola]  WITH CHECK ADD  CONSTRAINT [FK_AziendaVinicola_Regione] FOREIGN KEY([IdRegione])
REFERENCES [dbo].[Regione] ([IdRegione])
GO
ALTER TABLE [dbo].[AziendaVinicola] CHECK CONSTRAINT [FK_AziendaVinicola_Regione]
GO
ALTER TABLE [dbo].[Bottiglia]  WITH CHECK ADD  CONSTRAINT [FK_Bottiglia_AziendaVinicola] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[AziendaVinicola] ([IdAzienda])
GO
ALTER TABLE [dbo].[Bottiglia] CHECK CONSTRAINT [FK_Bottiglia_AziendaVinicola]
GO
ALTER TABLE [dbo].[Bottiglia]  WITH CHECK ADD  CONSTRAINT [FK_Bottiglia_TipoVino] FOREIGN KEY([IdTipoVino])
REFERENCES [dbo].[TipoVino] ([IdTipoVino])
GO
ALTER TABLE [dbo].[Bottiglia] CHECK CONSTRAINT [FK_Bottiglia_TipoVino]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_TipoAcquirente] FOREIGN KEY([IdTipoAcquirente])
REFERENCES [dbo].[TipoAcquirente] ([IdTipoAcquirente])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_TipoAcquirente]
GO
ALTER TABLE [dbo].[DettaglioOrdine]  WITH CHECK ADD  CONSTRAINT [FK_DettaglioOrdine_Bottiglia] FOREIGN KEY([IdBottiglia])
REFERENCES [dbo].[Bottiglia] ([IdBottiglia])
GO
ALTER TABLE [dbo].[DettaglioOrdine] CHECK CONSTRAINT [FK_DettaglioOrdine_Bottiglia]
GO
ALTER TABLE [dbo].[DettaglioOrdine]  WITH CHECK ADD  CONSTRAINT [FK_DettaglioOrdine_Ordine] FOREIGN KEY([IdOrdine])
REFERENCES [dbo].[Ordine] ([IdOrdine])
GO
ALTER TABLE [dbo].[DettaglioOrdine] CHECK CONSTRAINT [FK_DettaglioOrdine_Ordine]
GO
ALTER TABLE [dbo].[GiornataProduzione]  WITH CHECK ADD  CONSTRAINT [FK_GiornataProduzione_AziendaVinicola] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[AziendaVinicola] ([IdAzienda])
GO
ALTER TABLE [dbo].[GiornataProduzione] CHECK CONSTRAINT [FK_GiornataProduzione_AziendaVinicola]
GO
ALTER TABLE [dbo].[Immagine]  WITH CHECK ADD  CONSTRAINT [FK_Immagine_AziendaVinicola] FOREIGN KEY([IdAzienda])
REFERENCES [dbo].[AziendaVinicola] ([IdAzienda])
GO
ALTER TABLE [dbo].[Immagine] CHECK CONSTRAINT [FK_Immagine_AziendaVinicola]
GO
ALTER TABLE [dbo].[Indirizzo]  WITH CHECK ADD  CONSTRAINT [FK_Indirizzo_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Indirizzo] CHECK CONSTRAINT [FK_Indirizzo_Cliente]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_Indirizzo] FOREIGN KEY([IdIndirizzo])
REFERENCES [dbo].[Indirizzo] ([IdIndirizzo])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_Indirizzo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "av"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 248
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "do"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 382
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "r"
            Begin Extent = 
               Top = 384
               Left = 38
               Bottom = 479
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BottigliePerVinoConSpec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BottigliePerVinoConSpec'
GO

USE [Store]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 09/06/2017 15:48:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descrizione] [varchar](255) NULL,
	[Immagine] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 09/06/2017 15:48:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](30) NOT NULL,
	[Cognome] [varchar](30) NOT NULL,
	[RagSoc] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Cellulare] [varchar](20) NULL,
	[Email] [varchar](50) NOT NULL,
	[CodFis] [varchar](16) NOT NULL,
	[Piva] [varchar](20) NULL,
 CONSTRAINT [PK__Cliente__3214EC07B446EF58] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DettaglioOrdine]    Script Date: 09/06/2017 15:48:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DettaglioOrdine](
	[IdOrdine] [int] NOT NULL,
	[IdProdotto] [int] NOT NULL,
	[Quantita] [int] NOT NULL,
 CONSTRAINT [PK_DettOrdine] PRIMARY KEY CLUSTERED 
(
	[IdOrdine] ASC,
	[IdProdotto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 09/06/2017 15:48:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id] [int] NOT NULL,
	[IdProd] [int] NOT NULL,
	[Immagine] [varchar](100) NOT NULL,
	[Didascalia] [datetime] NOT NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Indirizzo]    Script Date: 09/06/2017 15:48:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Indirizzo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Via] [varchar](50) NOT NULL,
	[Cap] [int] NOT NULL,
	[Provincia] [varchar](2) NOT NULL,
	[Stato] [varchar](10) NOT NULL,
	[Fattura] [bit] NOT NULL,
	[Spedizione] [bit] NOT NULL,
	[IdCliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ordine]    Script Date: 09/06/2017 15:48:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdStato] [int] NOT NULL,
	[IdFatturazione] [int] NOT NULL,
	[IdSpedizione] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
 CONSTRAINT [PK__Ordine__3214EC0768229EED] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prodotto]    Script Date: 09/06/2017 15:48:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prodotto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descrizione] [text] NULL,
	[Prezzo] [float] NOT NULL,
	[Giacenza] [int] NOT NULL,
 CONSTRAINT [PK__Prodotto__3214EC0711525FA6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stato]    Script Date: 09/06/2017 15:48:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stato](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (1, N'Cappelli', N'Berretti giovanili', N'Cappelli.jpg')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (2, N'Occhiali', N'Occhiali giovanili', N'Occhiali.jpg')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (3, N'Sciarpe', N'Sciarpe giovanili', N'Scarpe.jpg')
INSERT [dbo].[Categoria] ([Id], [Nome], [Descrizione], [Immagine]) VALUES (4, N'Maglie', N'Maglie giovanili', N'Maglie.jpg')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
ALTER TABLE [dbo].[DettaglioOrdine]  WITH CHECK ADD  CONSTRAINT [FK_DettaglioOrdine_Ordine] FOREIGN KEY([IdOrdine])
REFERENCES [dbo].[Ordine] ([Id])
GO
ALTER TABLE [dbo].[DettaglioOrdine] CHECK CONSTRAINT [FK_DettaglioOrdine_Ordine]
GO
ALTER TABLE [dbo].[DettaglioOrdine]  WITH CHECK ADD  CONSTRAINT [FK_DettaglioOrdine_Prodotto] FOREIGN KEY([IdProdotto])
REFERENCES [dbo].[Prodotto] ([Id])
GO
ALTER TABLE [dbo].[DettaglioOrdine] CHECK CONSTRAINT [FK_DettaglioOrdine_Prodotto]
GO
ALTER TABLE [dbo].[Gallery]  WITH CHECK ADD  CONSTRAINT [FK_Gallery_Prodotto] FOREIGN KEY([IdProd])
REFERENCES [dbo].[Prodotto] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Gallery] CHECK CONSTRAINT [FK_Gallery_Prodotto]
GO
ALTER TABLE [dbo].[Indirizzo]  WITH CHECK ADD  CONSTRAINT [FK_Indirizzo_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Indirizzo] CHECK CONSTRAINT [FK_Indirizzo_Cliente]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_IndirizzoFatturazione] FOREIGN KEY([IdFatturazione])
REFERENCES [dbo].[Indirizzo] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_IndirizzoFatturazione]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_IndirizzoSpedizione] FOREIGN KEY([IdSpedizione])
REFERENCES [dbo].[Indirizzo] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_IndirizzoSpedizione]
GO
ALTER TABLE [dbo].[Ordine]  WITH CHECK ADD  CONSTRAINT [FK_Ordine_Stato] FOREIGN KEY([IdStato])
REFERENCES [dbo].[Stato] ([Id])
GO
ALTER TABLE [dbo].[Ordine] CHECK CONSTRAINT [FK_Ordine_Stato]
GO
ALTER TABLE [dbo].[Prodotto]  WITH CHECK ADD  CONSTRAINT [FK_Prodotto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Prodotto] CHECK CONSTRAINT [FK_Prodotto_Categoria]
GO

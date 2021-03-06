USE [ManifestazioniSportive]
GO
/****** Object:  Table [dbo].[Attivita]    Script Date: 30/05/2017 17:54:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attivita](
	[NomeAttivita] [varchar](100) NOT NULL,
	[IdManifestazione] [int] NOT NULL,
 CONSTRAINT [PK_Attivita] PRIMARY KEY CLUSTERED 
(
	[NomeAttivita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manifestazione]    Script Date: 30/05/2017 17:54:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manifestazione](
	[IdManifestazione] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[GiornoInizio] [datetime] NOT NULL,
	[GiornoFine] [datetime] NOT NULL,
 CONSTRAINT [PK_Manifestazione] PRIMARY KEY CLUSTERED 
(
	[IdManifestazione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartecipazioneStudente]    Script Date: 30/05/2017 17:54:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartecipazioneStudente](
	[IdStudente] [int] NOT NULL,
	[IdManifestazione] [int] NOT NULL,
 CONSTRAINT [PK_Partecipazione] PRIMARY KEY CLUSTERED 
(
	[IdStudente] ASC,
	[IdManifestazione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Professore]    Script Date: 30/05/2017 17:54:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Professore](
	[IdProfessore] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Cognome] [varchar](100) NOT NULL,
	[IdScuola] [int] NOT NULL,
	[NomeAttivita] [varchar](100) NOT NULL,
	[Allenatore] [bit] NOT NULL,
 CONSTRAINT [PK_Professore] PRIMARY KEY CLUSTERED 
(
	[IdProfessore] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Scuola]    Script Date: 30/05/2017 17:54:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Scuola](
	[IdScuola] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Indirizzo] [varchar](100) NOT NULL,
	[Telefono] [char](10) NOT NULL,
 CONSTRAINT [PK_Scuola] PRIMARY KEY CLUSTERED 
(
	[IdScuola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Studente]    Script Date: 30/05/2017 17:54:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Studente](
	[IdStudente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Cognome] [varchar](100) NOT NULL,
	[IdScuola] [int] NOT NULL,
 CONSTRAINT [PK_Studente] PRIMARY KEY CLUSTERED 
(
	[IdStudente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Attivita] ([NomeAttivita], [IdManifestazione]) VALUES (N'Partita di Basket', 3)
INSERT [dbo].[Attivita] ([NomeAttivita], [IdManifestazione]) VALUES (N'Partita di Calcio', 1)
INSERT [dbo].[Attivita] ([NomeAttivita], [IdManifestazione]) VALUES (N'Partita di Pallavolo', 5)
INSERT [dbo].[Attivita] ([NomeAttivita], [IdManifestazione]) VALUES (N'Rigori di Basket', 3)
INSERT [dbo].[Attivita] ([NomeAttivita], [IdManifestazione]) VALUES (N'Rigori di Calcio', 1)
SET IDENTITY_INSERT [dbo].[Manifestazione] ON 

INSERT [dbo].[Manifestazione] ([IdManifestazione], [Nome], [GiornoInizio], [GiornoFine]) VALUES (1, N'Calcio', CAST(0x0000A69D00000000 AS DateTime), CAST(0x0000A6DB00000000 AS DateTime))
INSERT [dbo].[Manifestazione] ([IdManifestazione], [Nome], [GiornoInizio], [GiornoFine]) VALUES (3, N'Basket', CAST(0x0000A51300000000 AS DateTime), CAST(0x0000A51500000000 AS DateTime))
INSERT [dbo].[Manifestazione] ([IdManifestazione], [Nome], [GiornoInizio], [GiornoFine]) VALUES (5, N'Pallavolo', CAST(0x0000A71400000000 AS DateTime), CAST(0x0000A71500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Manifestazione] OFF
INSERT [dbo].[PartecipazioneStudente] ([IdStudente], [IdManifestazione]) VALUES (1, 1)
INSERT [dbo].[PartecipazioneStudente] ([IdStudente], [IdManifestazione]) VALUES (1, 3)
INSERT [dbo].[PartecipazioneStudente] ([IdStudente], [IdManifestazione]) VALUES (2, 1)
SET IDENTITY_INSERT [dbo].[Professore] ON 

INSERT [dbo].[Professore] ([IdProfessore], [Nome], [Cognome], [IdScuola], [NomeAttivita], [Allenatore]) VALUES (1, N'Rocco', N'Catalano', 5, N'Partita di Calcio', 1)
INSERT [dbo].[Professore] ([IdProfessore], [Nome], [Cognome], [IdScuola], [NomeAttivita], [Allenatore]) VALUES (2, N'Cesare', N'Iacobelli', 3, N'Partita di Basket', 0)
INSERT [dbo].[Professore] ([IdProfessore], [Nome], [Cognome], [IdScuola], [NomeAttivita], [Allenatore]) VALUES (3, N'Massimo', N'Castagno ', 1, N'Partita di Pallavolo', 1)
INSERT [dbo].[Professore] ([IdProfessore], [Nome], [Cognome], [IdScuola], [NomeAttivita], [Allenatore]) VALUES (4, N'Mauro', N'Bogliaccino', 1, N'Partita di Calcio', 0)
INSERT [dbo].[Professore] ([IdProfessore], [Nome], [Cognome], [IdScuola], [NomeAttivita], [Allenatore]) VALUES (5, N'Mauro', N'Allenatore', 3, N'Partita di Calcio', 1)
SET IDENTITY_INSERT [dbo].[Professore] OFF
SET IDENTITY_INSERT [dbo].[Scuola] ON 

INSERT [dbo].[Scuola] ([IdScuola], [Nome], [Indirizzo], [Telefono]) VALUES (1, N'Majorana', N'Via Baracca 81', N'0114354438')
INSERT [dbo].[Scuola] ([IdScuola], [Nome], [Indirizzo], [Telefono]) VALUES (2, N'Natta', N'Via Rosario 32', N'0114788709')
INSERT [dbo].[Scuola] ([IdScuola], [Nome], [Indirizzo], [Telefono]) VALUES (3, N'Vittorini', N'Via Sebastian 87', N'0116873468')
INSERT [dbo].[Scuola] ([IdScuola], [Nome], [Indirizzo], [Telefono]) VALUES (5, N'Pininfarina', N'Via Dei Calusi 12', N'0114327843')
SET IDENTITY_INSERT [dbo].[Scuola] OFF
SET IDENTITY_INSERT [dbo].[Studente] ON 

INSERT [dbo].[Studente] ([IdStudente], [Nome], [Cognome], [IdScuola]) VALUES (1, N'Marco', N'de Gennaro', 1)
INSERT [dbo].[Studente] ([IdStudente], [Nome], [Cognome], [IdScuola]) VALUES (2, N'Andrea', N'Scavuzzo', 2)
INSERT [dbo].[Studente] ([IdStudente], [Nome], [Cognome], [IdScuola]) VALUES (5, N'Vincenzo', N'di Domenico', 1)
INSERT [dbo].[Studente] ([IdStudente], [Nome], [Cognome], [IdScuola]) VALUES (6, N'Danilo', N'Cappellino', 3)
SET IDENTITY_INSERT [dbo].[Studente] OFF
ALTER TABLE [dbo].[Attivita]  WITH CHECK ADD  CONSTRAINT [FK_Attivita_IdManifestazione] FOREIGN KEY([IdManifestazione])
REFERENCES [dbo].[Manifestazione] ([IdManifestazione])
GO
ALTER TABLE [dbo].[Attivita] CHECK CONSTRAINT [FK_Attivita_IdManifestazione]
GO
ALTER TABLE [dbo].[PartecipazioneStudente]  WITH CHECK ADD  CONSTRAINT [FK_PartecipazioneStudente_IdManifestazione] FOREIGN KEY([IdManifestazione])
REFERENCES [dbo].[Manifestazione] ([IdManifestazione])
GO
ALTER TABLE [dbo].[PartecipazioneStudente] CHECK CONSTRAINT [FK_PartecipazioneStudente_IdManifestazione]
GO
ALTER TABLE [dbo].[PartecipazioneStudente]  WITH CHECK ADD  CONSTRAINT [FK_PartecipazioneStudente_IdStudente] FOREIGN KEY([IdStudente])
REFERENCES [dbo].[Studente] ([IdStudente])
GO
ALTER TABLE [dbo].[PartecipazioneStudente] CHECK CONSTRAINT [FK_PartecipazioneStudente_IdStudente]
GO
ALTER TABLE [dbo].[Professore]  WITH CHECK ADD  CONSTRAINT [FK_Professore_IdScuola] FOREIGN KEY([IdScuola])
REFERENCES [dbo].[Scuola] ([IdScuola])
GO
ALTER TABLE [dbo].[Professore] CHECK CONSTRAINT [FK_Professore_IdScuola]
GO
ALTER TABLE [dbo].[Professore]  WITH CHECK ADD  CONSTRAINT [FK_Professore_NomeAttivita] FOREIGN KEY([NomeAttivita])
REFERENCES [dbo].[Attivita] ([NomeAttivita])
GO
ALTER TABLE [dbo].[Professore] CHECK CONSTRAINT [FK_Professore_NomeAttivita]
GO
ALTER TABLE [dbo].[Studente]  WITH CHECK ADD  CONSTRAINT [FK_Studente_IdScuola] FOREIGN KEY([IdScuola])
REFERENCES [dbo].[Scuola] ([IdScuola])
GO
ALTER TABLE [dbo].[Studente] CHECK CONSTRAINT [FK_Studente_IdScuola]
GO

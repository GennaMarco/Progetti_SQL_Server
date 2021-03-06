USE [CompilationMusicali]
GO
/****** Object:  Table [dbo].[Brano]    Script Date: 16/06/2017 17:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brano](
	[IdBrano] [int] IDENTITY(1,1) NOT NULL,
	[Titolo] [varchar](50) NOT NULL,
	[Durata] [int] NOT NULL,
	[IdCompilation] [int] NOT NULL,
 CONSTRAINT [PK_Brano] PRIMARY KEY CLUSTERED 
(
	[IdBrano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compilation]    Script Date: 16/06/2017 17:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compilation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titolo] [varchar](50) NOT NULL,
	[Artista] [varchar](50) NOT NULL,
	[CasaDiscografica] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Compilation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Brano] ON 

INSERT [dbo].[Brano] ([IdBrano], [Titolo], [Durata], [IdCompilation]) VALUES (2, N'Portami in tunisia', 134, 1)
SET IDENTITY_INSERT [dbo].[Brano] OFF
SET IDENTITY_INSERT [dbo].[Compilation] ON 

INSERT [dbo].[Compilation] ([Id], [Titolo], [Artista], [CasaDiscografica]) VALUES (1, N'Andiamo al mare', N'Bruno Mars', N'ITS Group')
INSERT [dbo].[Compilation] ([Id], [Titolo], [Artista], [CasaDiscografica]) VALUES (2, N'Portami al mare', N'Nettuno', N'BOH')
SET IDENTITY_INSERT [dbo].[Compilation] OFF
ALTER TABLE [dbo].[Brano]  WITH CHECK ADD  CONSTRAINT [FK_Brano_Compilation] FOREIGN KEY([IdCompilation])
REFERENCES [dbo].[Compilation] ([Id])
GO
ALTER TABLE [dbo].[Brano] CHECK CONSTRAINT [FK_Brano_Compilation]
GO

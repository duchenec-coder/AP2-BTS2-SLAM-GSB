USE [proto_classe]
GO
/****** Object:  Table [dbo].[tb_client]    Script Date: 12/03/2012 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_client](
	[idClient] [int] NOT NULL,
	[nomClient] [nchar](30) NOT NULL,
 CONSTRAINT [PK_tb_client] PRIMARY KEY CLUSTERED 
(
	[idClient] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_client] ([idClient], [nomClient]) VALUES (1, N'DUPONT                        ')
INSERT [dbo].[tb_client] ([idClient], [nomClient]) VALUES (2, N'DURAND                        ')
INSERT [dbo].[tb_client] ([idClient], [nomClient]) VALUES (3, N'MARTIN                        ')
INSERT [dbo].[tb_client] ([idClient], [nomClient]) VALUES (4, N'GEORGES                       ')
INSERT [dbo].[tb_client] ([idClient], [nomClient]) VALUES (5, N'HENRI                         ')
/****** Object:  Table [dbo].[tb_facture]    Script Date: 12/03/2012 20:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_facture](
	[numFact] [int] NOT NULL,
	[dateFact] [date] NOT NULL,
	[mtFact] [float] NOT NULL,
	[idClientFact] [int] NOT NULL,
 CONSTRAINT [PK_tb_facture] PRIMARY KEY CLUSTERED 
(
	[numFact] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_facture] ([numFact], [dateFact], [mtFact], [idClientFact]) VALUES (10, CAST(0x58360B00 AS Date), 5600.2, 1)
INSERT [dbo].[tb_facture] ([numFact], [dateFact], [mtFact], [idClientFact]) VALUES (11, CAST(0x5B360B00 AS Date), 6000, 1)
INSERT [dbo].[tb_facture] ([numFact], [dateFact], [mtFact], [idClientFact]) VALUES (12, CAST(0x74360B00 AS Date), 5200.45, 1)
INSERT [dbo].[tb_facture] ([numFact], [dateFact], [mtFact], [idClientFact]) VALUES (13, CAST(0x74360B00 AS Date), 64800, 2)
/****** Object:  StoredProcedure [dbo].[prc_listeTousClientsAlpha]    Script Date: 12/03/2012 20:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery6.sql|8|0|C:\Users\EARL HELLARD\AppData\Local\Temp\~vs7892.sql
CREATE PROCEDURE [dbo].[prc_listeTousClientsAlpha]
AS
BEGIN
	SET NOCOUNT ON;

    -- liste des clients dans l'ordre alphabétique
	SELECT * FROM tb_client ORDER BY 2
END
GO
/****** Object:  StoredProcedure [dbo].[prc_ajouterClient]    Script Date: 12/03/2012 20:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery5.sql|8|0|C:\Users\EARL HELLARD\AppData\Local\Temp\~vs103D.sql
CREATE PROCEDURE [dbo].[prc_ajouterClient] 
	-- Add the parameters for the stored procedure here
	@idClient int,
	@nomClient nchar(30)
AS
BEGIN
	SET NOCOUNT ON;
	
    -- Insertion du client
	INSERT INTO tb_client VALUES (@idClient, @nomClient)
END
GO
/****** Object:  ForeignKey [FK_tb_facture_tb_client]    Script Date: 12/03/2012 20:04:39 ******/
ALTER TABLE [dbo].[tb_facture]  WITH CHECK ADD  CONSTRAINT [FK_tb_facture_tb_client] FOREIGN KEY([idClientFact])
REFERENCES [dbo].[tb_client] ([idClient])
GO
ALTER TABLE [dbo].[tb_facture] CHECK CONSTRAINT [FK_tb_facture_tb_client]
GO

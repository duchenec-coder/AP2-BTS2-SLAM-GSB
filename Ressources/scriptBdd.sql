USE [master]
GO
/****** Object:  Database [GSB_gesAMM]    Script Date: 13/12/2022 09:34:59 ******/
CREATE DATABASE [GSB_gesAMM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GSB_gesAMM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GSB_gesAMM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GSB_gesAMM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GSB_gesAMM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GSB_gesAMM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GSB_gesAMM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GSB_gesAMM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET ARITHABORT OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GSB_gesAMM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GSB_gesAMM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GSB_gesAMM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GSB_gesAMM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GSB_gesAMM] SET  MULTI_USER 
GO
ALTER DATABASE [GSB_gesAMM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GSB_gesAMM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GSB_gesAMM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GSB_gesAMM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GSB_gesAMM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GSB_gesAMM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GSB_gesAMM] SET QUERY_STORE = OFF
GO
USE [GSB_gesAMM]
GO
/****** Object:  Table [dbo].[DECISION]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DECISION](
	[DCS_ID] [int] NOT NULL,
	[DCS_LIBELLE] [nchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DCS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ETAPE]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETAPE](
	[ETP_NUM] [int] NOT NULL,
	[ETP_LIBELLE] [varchar](50) NULL,
	[ETP_NORME] [varchar](20) NULL,
	[ETP_DATE_NORME] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ETP_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAMILLE]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAMILLE](
	[FAM_CODE] [nchar](5) NOT NULL,
	[FAM_LIBELLE] [nchar](255) NOT NULL,
	[FAM_NB_MEDI_AMM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FAM_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HISTORIQUE]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HISTORIQUE](
	[id] [int] NOT NULL,
	[dateMaj] [date] NOT NULL,
	[idUtilHist] [int] NOT NULL,
	[etpNumHist] [int] NOT NULL,
	[normeAvMaj] [nchar](20) NOT NULL,
	[normeApMaj] [nchar](20) NOT NULL,
	[dateNormeAvMaj] [date] NOT NULL,
	[dateNormeApMaj] [date] NOT NULL,
 CONSTRAINT [PK2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEDICAMENT]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDICAMENT](
	[MED_DEPOTLEGAL] [nchar](10) NOT NULL,
	[MED_NOMCOMMERCIAL] [nchar](25) NOT NULL,
	[MED_COMPOSITION] [nchar](255) NOT NULL,
	[MED_EFFETS] [nchar](255) NOT NULL,
	[MED_CONTREINDIC] [nchar](255) NOT NULL,
	[MED_AMM] [nchar](10) NULL,
	[MED_FAM_CODE] [nchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MED_DEPOTLEGAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UTILISATEUR]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UTILISATEUR](
	[id] [int] NOT NULL,
	[identifiant] [varchar](20) NULL,
	[mdp] [varchar](50) NULL,
 CONSTRAINT [pk1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WORKFLOW]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WORKFLOW](
	[WRK_DATE_DECISION] [date] NULL,
	[WRK_DCS_ID] [int] NULL,
	[WRK_ETP_NUM] [int] NOT NULL,
	[WRK_MED_DEPOTLEGAL] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WRK_ETP_NUM] ASC,
	[WRK_MED_DEPOTLEGAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HISTORIQUE]  WITH CHECK ADD  CONSTRAINT [FK_HISTORIQUE_ETAPE] FOREIGN KEY([etpNumHist])
REFERENCES [dbo].[ETAPE] ([ETP_NUM])
GO
ALTER TABLE [dbo].[HISTORIQUE] CHECK CONSTRAINT [FK_HISTORIQUE_ETAPE]
GO
ALTER TABLE [dbo].[HISTORIQUE]  WITH CHECK ADD  CONSTRAINT [FK_HISTORIQUE_UTILISATEUR] FOREIGN KEY([idUtilHist])
REFERENCES [dbo].[UTILISATEUR] ([id])
GO
ALTER TABLE [dbo].[HISTORIQUE] CHECK CONSTRAINT [FK_HISTORIQUE_UTILISATEUR]
GO
ALTER TABLE [dbo].[MEDICAMENT]  WITH CHECK ADD  CONSTRAINT [FK_MEDICAMENT_FAMILLE] FOREIGN KEY([MED_FAM_CODE])
REFERENCES [dbo].[FAMILLE] ([FAM_CODE])
GO
ALTER TABLE [dbo].[MEDICAMENT] CHECK CONSTRAINT [FK_MEDICAMENT_FAMILLE]
GO
ALTER TABLE [dbo].[WORKFLOW]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_] FOREIGN KEY([WRK_DCS_ID])
REFERENCES [dbo].[DECISION] ([DCS_ID])
GO
ALTER TABLE [dbo].[WORKFLOW] CHECK CONSTRAINT [FK_Table_1_]
GO
ALTER TABLE [dbo].[WORKFLOW]  WITH CHECK ADD  CONSTRAINT [FK_WORKFLOW_ETAPE] FOREIGN KEY([WRK_ETP_NUM])
REFERENCES [dbo].[ETAPE] ([ETP_NUM])
GO
ALTER TABLE [dbo].[WORKFLOW] CHECK CONSTRAINT [FK_WORKFLOW_ETAPE]
GO
ALTER TABLE [dbo].[WORKFLOW]  WITH CHECK ADD  CONSTRAINT [FK_WORKFLOW_MEDICAMENT] FOREIGN KEY([WRK_MED_DEPOTLEGAL])
REFERENCES [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL])
GO
ALTER TABLE [dbo].[WORKFLOW] CHECK CONSTRAINT [FK_WORKFLOW_MEDICAMENT]
GO
/****** Object:  StoredProcedure [dbo].[getDecision]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getDecision]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DCS_ID, DCS_LIBELLE from DECISION
END
GO
/****** Object:  StoredProcedure [dbo].[getEtape]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getEtape]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ETP_NUM, ETP_LIBELLE, ETP_NORME, ETP_DATE_NORME from ETAPE
END
GO
/****** Object:  StoredProcedure [dbo].[getFamille]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getFamille]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT FAM_CODE, FAM_LIBELLE, FAM_NB_MEDI_AMM from FAMILLE
END
GO
/****** Object:  StoredProcedure [dbo].[getMedicaments]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getMedicaments]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT MED_DEPOTLEGAL, MED_NOMCOMMERCIAL, MED_COMPOSITION, MED_EFFETS, MED_CONTREINDIC, MED_AMM, MED_FAM_CODE from MEDICAMENT
END
GO
/****** Object:  StoredProcedure [dbo].[getWorkflow]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getWorkflow]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT WRK_DATE_DECISION, WRK_DCS_ID, WRK_ETP_NUM, WRK_MED_DEPOTLEGAL from WORKFLOW
END
GO
/****** Object:  StoredProcedure [dbo].[prc_ListeTousUtilisateurs]    Script Date: 13/12/2022 09:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_ListeTousUtilisateurs]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select id, identifiant, mdp
	from UTILISATEUR
	order by id asc
END
GO
USE [master]
GO
ALTER DATABASE [GSB_gesAMM] SET  READ_WRITE 
GO

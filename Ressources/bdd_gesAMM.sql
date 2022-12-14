USE [master]
GO
/****** Object:  Database [GSB_gesAMM]    Script Date: 06/01/2023 14:45:29 ******/
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
ALTER DATABASE [GSB_gesAMM] SET QUERY_STORE = OFF
GO
USE [GSB_gesAMM]
GO
/****** Object:  Table [dbo].[DECISION]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DECISION](
	[DCS_ID] [int] NOT NULL,
	[DCS_LIBELLE] [varchar](15) NOT NULL,
 CONSTRAINT [PK__DECISION__7137882A78E6A0B3] PRIMARY KEY CLUSTERED 
(
	[DCS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ETAPE]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETAPE](
	[ETP_NUM] [int] NOT NULL,
	[ETP_LIBELLE] [varchar](50) NULL,
	[ETP_NORME] [varchar](20) NULL,
	[ETP_DATE_NORME] [datetime] NULL,
 CONSTRAINT [PK__ETAPE__A467C29F51A56BAD] PRIMARY KEY CLUSTERED 
(
	[ETP_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAMILLE]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAMILLE](
	[FAM_CODE] [varchar](50) NOT NULL,
	[FAM_LIBELLE] [varchar](255) NOT NULL,
	[FAM_NB_MEDI_AMM] [int] NULL,
 CONSTRAINT [PK__FAMILLE__35344A2FF423D3CD] PRIMARY KEY CLUSTERED 
(
	[FAM_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HISTORIQUE]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HISTORIQUE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dateMaj] [datetime] NOT NULL,
	[idUtilHist] [int] NOT NULL,
	[etpNumHist] [int] NOT NULL,
	[normeAvMaj] [varchar](20) NOT NULL,
	[normeApMaj] [varchar](20) NOT NULL,
	[dateNormeAvMaj] [datetime] NOT NULL,
	[dateNormeApMaj] [datetime] NOT NULL,
 CONSTRAINT [PK2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEDICAMENT]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDICAMENT](
	[MED_DEPOTLEGAL] [varchar](50) NOT NULL,
	[MED_NOMCOMMERCIAL] [varchar](25) NULL,
	[MED_COMPOSITION] [varchar](255) NULL,
	[MED_EFFETS] [varchar](255) NULL,
	[MED_CONTREINDIC] [varchar](255) NULL,
	[MED_AMM] [tinyint] NULL,
	[MED_FAM_CODE] [varchar](50) NULL,
 CONSTRAINT [PK__MEDICAME__5CC80CE429D663F9] PRIMARY KEY CLUSTERED 
(
	[MED_DEPOTLEGAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UTILISATEUR]    Script Date: 06/01/2023 14:45:29 ******/
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
/****** Object:  Table [dbo].[WORKFLOW]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WORKFLOW](
	[WRK_DATE_DECISION] [datetime] NULL,
	[WRK_DCS_ID] [int] NULL,
	[WRK_ETP_NUM] [int] NOT NULL,
	[WRK_MED_DEPOTLEGAL] [varchar](50) NOT NULL,
 CONSTRAINT [PK__WORKFLOW__FA90046C8FE4EB70] PRIMARY KEY CLUSTERED 
(
	[WRK_ETP_NUM] ASC,
	[WRK_MED_DEPOTLEGAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DECISION] ([DCS_ID], [DCS_LIBELLE]) VALUES (1, N'refusée')
INSERT [dbo].[DECISION] ([DCS_ID], [DCS_LIBELLE]) VALUES (2, N'validée')
GO
INSERT [dbo].[ETAPE] ([ETP_NUM], [ETP_LIBELLE], [ETP_NORME], [ETP_DATE_NORME]) VALUES (1, N'Définition du protocole de validation', NULL, NULL)
INSERT [dbo].[ETAPE] ([ETP_NUM], [ETP_LIBELLE], [ETP_NORME], [ETP_DATE_NORME]) VALUES (2, N'Pharmacologie expérimentale', NULL, NULL)
INSERT [dbo].[ETAPE] ([ETP_NUM], [ETP_LIBELLE], [ETP_NORME], [ETP_DATE_NORME]) VALUES (3, N'Toxicologie', N'726/2004/CEE', CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[ETAPE] ([ETP_NUM], [ETP_LIBELLE], [ETP_NORME], [ETP_DATE_NORME]) VALUES (4, N'Pharmacocinétique', NULL, NULL)
INSERT [dbo].[ETAPE] ([ETP_NUM], [ETP_LIBELLE], [ETP_NORME], [ETP_DATE_NORME]) VALUES (5, N'Expérimentation animale', N'180/2012/CEE', CAST(N'2012-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[ETAPE] ([ETP_NUM], [ETP_LIBELLE], [ETP_NORME], [ETP_DATE_NORME]) VALUES (6, N'Méthodes alternatives', NULL, NULL)
INSERT [dbo].[ETAPE] ([ETP_NUM], [ETP_LIBELLE], [ETP_NORME], [ETP_DATE_NORME]) VALUES (7, N'Essais ciniques', N'457/2008/CEE', CAST(N'2008-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[ETAPE] ([ETP_NUM], [ETP_LIBELLE], [ETP_NORME], [ETP_DATE_NORME]) VALUES (8, N'Atorisation Mise sur le Marché', N'665/2005/CEE', CAST(N'2005-04-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AA', N'Antalgiques en association                                                                                                                                                                                                                                     ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AAA', N'Antalgiques antipyrétiques en association                                                                                                                                                                                                                      ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AAC', N'Antidépresseur d''action centrale                                                                                                                                                                                                                               ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AAH', N'Antivertigineux antihistaminique H1                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ABA', N'Antibiotique antituberculeux                                                                                                                                                                                                                                   ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ABC', N'Antibiotique antiacnéique local                                                                                                                                                                                                                                ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ABP', N'Antibiotique de la famille des béta-lactamines (pénicilline A)                                                                                                                                                                                                 ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AFC', N'Antibiotique de la famille des cyclines                                                                                                                                                                                                                        ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AFM', N'Antibiotique de la famille des macrolides                                                                                                                                                                                                                      ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AH', N'Antihistaminique H1 local                                                                                                                                                                                                                                      ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AIM', N'Antidépresseur imipraminique (tricyclique)                                                                                                                                                                                                                     ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AIN', N'Antidépresseur inhibiteur sélectif de la recapture de la sérotonine                                                                                                                                                                                            ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ALO', N'Antibiotique local (ORL)                                                                                                                                                                                                                                       ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ANS', N'Antidépresseur IMAO non sélectif                                                                                                                                                                                                                               ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AO', N'Antibiotique ophtalmique                                                                                                                                                                                                                                       ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AP', N'Antipsychotique normothymique                                                                                                                                                                                                                                  ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AUM', N'Antibiotique urinaire minute                                                                                                                                                                                                                                   ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'CRT', N'Corticoïde, antibiotique et antifongique à  usage local                                                                                                                                                                                                        ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'HYP', N'Hypnotique antihistaminique                                                                                                                                                                                                                                    ', 0)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'PSA', N'Psychostimulant, antiasthénique                                                                                                                                                                                                                                ', 0)
GO
SET IDENTITY_INSERT [dbo].[HISTORIQUE] ON 

INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (1, CAST(N'2023-01-06T10:04:53.770' AS DateTime), 1, 1, N'726/2004/C', N'726/2004/C', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (2, CAST(N'2023-01-06T10:06:02.650' AS DateTime), 1, 1, N'726/2004/C', N'726/2004/C', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (3, CAST(N'2023-01-06T10:06:03.123' AS DateTime), 1, 1, N'726/2004/C', N'726/2004/C', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (4, CAST(N'2023-01-06T10:06:03.283' AS DateTime), 1, 1, N'726/2004/C', N'726/2004/C', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (5, CAST(N'2023-01-06T10:06:03.437' AS DateTime), 1, 1, N'726/2004/C', N'726/2004/C', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (6, CAST(N'2023-01-06T10:06:40.740' AS DateTime), 1, 1, N'726/2004/C', N'726/2004/C', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (7, CAST(N'2023-01-06T10:20:15.687' AS DateTime), 1, 1, N'726/2004/C', N'726/2004/C', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (8, CAST(N'2023-01-06T10:21:28.793' AS DateTime), 1, 1, N'726/2004/C', N'726/2004/CEE', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (9, CAST(N'2023-01-06T10:21:35.833' AS DateTime), 1, 1, N'726/2004/CEE', N'726/2004/CEA', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[HISTORIQUE] ([id], [dateMaj], [idUtilHist], [etpNumHist], [normeAvMaj], [normeApMaj], [dateNormeAvMaj], [dateNormeApMaj]) VALUES (10, CAST(N'2023-01-06T10:21:40.830' AS DateTime), 1, 1, N'726/2004/CEA', N'726/2004/CEE', CAST(N'2004-05-12T00:00:00.000' AS DateTime), CAST(N'2004-05-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[HISTORIQUE] OFF
GO
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'3MYC7', N'TRIMYCINE', N'Triamcinolone (acétonide) + Néomycine + Nystatine', N'Ce médicament est un corticoïde à  activité forte ou très forte associé à  un antibiotique et un antifongique, utilisé en application locale dans certaines atteintes cutanées surinfectées.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''infections de la peau ou de parasitisme non traités, d''acné. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.', 0, N'CRT')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'ADIMOL9', N'ADIMOL', N'Amoxicilline + Acide clavulanique', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines ou aux céphalosporines.                                                                                                                                                                    ', 1, N'ABP')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'AMOPIL7', N'AMOPIL', N'Amoxicilline', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.                                                                                                              ', 1, N'ABP')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'AMOX45', N'AMOXAR', N'Amoxicilline', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', N'La prise de ce médicament peut rendre positifs les tests de dépistage du dopage.                                                                                                                                                                               ', 0, N'ABP')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'AMOXIG12', N'AMOXI Gé', N'Amoxicilline', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.                                                                                                              ', 0, N'ABP')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'APATOUX22', N'APATOUX Vitamine C', N'Tyrothricine + Tétracaïne + Acide ascorbique (Vitamine C)', N'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, en cas de phénylcétonurie et chez l''enfant de moins de 6 ans.                                                                                                                     ', 0, N'ALO')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'BACTIG10', N'BACTIGEL', N'Erythromycine', N'Ce médicament est utilisé en application locale pour traiter l''acné et les infections cutanées bactériennes associées.', N'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques de la famille des macrolides ou des lincosanides.                                                                                                                                         ', 0, N'ABC')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'BACTIV13', N'BACTIVIL', N'Erythromycine', N'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).                                                                                                                                                  ', 0, N'AFM')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'BITALV', N'BIVALIC', N'Dextropropoxyphène + Paracétamol', N'Ce médicament est utilisé pour traiter les douleurs d''intensité modérée ou intense.', N'Ce médicament est contre-indiqué en cas d''allergie aux médicaments de cette famille, d''insuffisance hépatique ou d''insuffisance rénale.                                                                                                                        ', 0, N'AAA')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'CARTION6', N'CARTION', N'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', N'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', N'Ce médicament est contre-indiqué en cas de troubles de la coagulation (tendances aux hémorragies), d''ulcère gastroduodénal, maladies graves du foie.                                                                                                           ', 0, N'AAA')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'CLAZER6', N'CLAZER', N'Clarithromycine', N'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques. Il est également utilisé dans le traitement de l''ulcère gastro-duodénal, en association avec d''autres médicaments.', N'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).                                                                                                                                                  ', 0, N'AFM')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'DEPRIL9', N'DEPRAMIL', N'Clomipramine', N'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines énurésies chez l''enfant.', N'Ce médicament est contre-indiqué en cas de glaucome ou d''adénome de la prostate, d''infarctus récent, ou si vous avez reà§u un traitement par IMAO durant les 2 semaines précédentes ou en cas d''allergie aux antidépresseurs imipraminiques.                   ', 0, N'AIM')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'DIMIRTAM6', N'DIMIRTAM', N'Mirtazapine', N'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères.', N'La prise de ce produit est contre-indiquée en cas de d''allergie à  l''un des constituants.                                                                                                                                                                      ', 0, N'AAC')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'DOLRIL7', N'DOLORIL', N'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', N'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', N'Ce médicament est contre-indiqué en cas d''allergie au paracétamol ou aux salicylates.                                                                                                                                                                          ', 0, N'AAA')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'DORNOM8', N'NORMADOR', N'Doxylamine', N'Ce médicament est utilisé pour traiter l''insomnie chez l''adulte.', N'Ce médicament est contre-indiqué en cas de glaucome, de certains troubles urinaires (rétention urinaire) et chez l''enfant de moins de 15 ans.                                                                                                                  ', 0, N'HYP')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'EQUILARX6', N'EQUILAR', N'Méclozine', N'Ce médicament est utilisé pour traiter les vertiges et pour prévenir le mal des transports.', N'Ce médicament ne doit pas être utilisé en cas d''allergie au produit, en cas de glaucome ou de rétention urinaire.                                                                                                                                              ', 0, N'AAH')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'EVILR7', N'EVEILLOR', N'Adrafinil', N'Ce médicament est utilisé pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet agé.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.                                                                                                                                                                                   ', 0, N'PSA')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'INSXT5', N'INSECTIL', N'Diphénydramine', N'Ce médicament est utilisé en application locale sur les piqûres d''insecte et l''urticaire.', N'Ce médicament est contre-indiqué en cas d''allergie aux antihistaminiques.                                                                                                                                                                                      ', 0, N'AH')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'JOVAI8', N'JOVENIL', N'Josamycine', N'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).                                                                                                                                                  ', 0, N'AFM')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'LIDOXY23', N'LIDOXYTRACINE', N'Oxytétracycline +Lidocaïne', N'Ce médicament est utilisé en injection intramusculaire pour traiter certaines infections spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants. Il ne doit pas être associé aux rétinoïdes.                                                                                                                                       ', 0, N'AFC')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'LITHOR12', N'LITHORINE', N'Lithium', N'Ce médicament est indiqué dans la prévention des psychoses maniaco-dépressives ou pour traiter les états maniaques.', N'Ce médicament ne doit pas être utilisé si vous êtes allergique au lithium. Avant de prendre ce traitement, signalez à  votre médecin traitant si vous souffrez d''insuffisance rénale, ou si vous avez un régime sans sel.                                      ', 0, N'AP')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'PARMOL16', N'PARMOCODEINE', N'Codéine + Paracétamol', N'Ce médicament est utilisé pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, chez l''enfant de moins de 15 Kg, en cas d''insuffisance hépatique ou respiratoire, d''asthme, de phénylcétonurie et chez la femme qui allaite.                                      ', 0, N'AA')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'PHYSOI8', N'PHYSICOR', N'Sulbutiamine', N'Ce médicament est utilisé pour traiter les baisses d''activité physique ou psychique, souvent dans un contexte de dépression.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.                                                                                                                                                                                   ', 0, N'PSA')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'PIRIZ8', N'PIRIZAN', N'Pyrazinamide', N'Ce médicament est utilisé, en association à  d''autres antibiotiques, pour traiter la tuberculose.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''insuffisance rénale ou hépatique, d''hyperuricémie ou de porphyrie.                                                                                                              ', 0, N'ABA')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'POMDI20', N'POMADINE', N'Bacitracine', N'Ce médicament est utilisé pour traiter les infections oculaires de la surface de l''oeil.', N'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques appliqués localement.                                                                                                                                                                     ', 0, N'AO')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'TROXT21', N'TROXADET', N'Paroxétine', N'Ce médicament est utilisé pour traiter la dépression et les troubles obsessionnels compulsifs. Il peut également être utilisé en prévention des crises de panique avec ou sans agoraphobie.', N'Ce médicament est contre-indiqué en cas d''allergie au produit.                                                                                                                                                                                                 ', 0, N'AIN')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'TXISOL22', N'TOUXISOL Vitamine C', N'Tyrothricine + Acide ascorbique (Vitamine C)', N'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants et chez l''enfant de moins de 6 ans.                                                                                                                                                ', 0, N'ALO')
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'URIEG6', N'URIREGUL', N'Fosfomycine trométamol', N'Ce médicament est utilisé pour traiter les infections urinaires simples chez la femme de moins de 65 ans.', N'La prise de ce médicament est contre-indiquée en cas d''allergie à  l''un des constituants et d''insuffisance rénale.                                                                                                                                             ', 0, N'AUM')
GO
INSERT [dbo].[UTILISATEUR] ([id], [identifiant], [mdp]) VALUES (1, N'Guigasp', N'Ggaspard43')
GO
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2000-06-27T00:00:00.000' AS DateTime), 2, 1, N'3MYC7')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2000-12-01T00:00:00.000' AS DateTime), 2, 1, N'ADIMOL9')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2000-07-27T00:00:00.000' AS DateTime), 2, 2, N'3MYC7')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2002-01-12T00:00:00.000' AS DateTime), 2, 2, N'ADIMOL9')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2000-08-27T00:00:00.000' AS DateTime), 2, 3, N'3MYC7')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2002-02-01T00:00:00.000' AS DateTime), 2, 3, N'ADIMOL9')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2023-01-02T18:18:47.140' AS DateTime), 2, 4, N'3MYC7')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2002-03-01T00:00:00.000' AS DateTime), 2, 4, N'ADIMOL9')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2023-01-02T18:27:32.407' AS DateTime), 2, 5, N'3MYC7')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2002-04-01T00:00:00.000' AS DateTime), 2, 5, N'ADIMOL9')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2023-01-02T18:18:48.230' AS DateTime), 2, 6, N'3MYC7')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2002-05-01T00:00:00.000' AS DateTime), 2, 6, N'ADIMOL9')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2023-01-02T18:27:33.380' AS DateTime), 1, 7, N'3MYC7')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2002-06-01T00:00:00.000' AS DateTime), 2, 7, N'ADIMOL9')
INSERT [dbo].[WORKFLOW] ([WRK_DATE_DECISION], [WRK_DCS_ID], [WRK_ETP_NUM], [WRK_MED_DEPOTLEGAL]) VALUES (CAST(N'2002-06-01T00:00:00.000' AS DateTime), 2, 8, N'ADIMOL9')
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
/****** Object:  StoredProcedure [dbo].[ajoutWorkflow]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ajoutWorkflow](@DepotLegal varchar(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    insert into WORKFLOW
	values(GETDATE(), 1, (select COUNT(*) from WORKFLOW where WRK_MED_DEPOTLEGAL = @DepotLegal)+1, @DepotLegal)
END
GO
/****** Object:  StoredProcedure [dbo].[ChangDecision]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ChangDecision] (@DepotLegal varchar(50), @NumEtape int, @IdDeci int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	update WORKFLOW
	set WRK_DCS_ID = @IdDeci
	where WRK_ETP_NUM = @NumEtape and WRK_MED_DEPOTLEGAL = @DepotLegal

	update WORKFLOW
	set WRK_DATE_DECISION = GETDATE()
	where WRK_ETP_NUM = @NumEtape and WRK_MED_DEPOTLEGAL = @DepotLegal
END
GO
/****** Object:  StoredProcedure [dbo].[getDecision]    Script Date: 06/01/2023 14:45:29 ******/
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
/****** Object:  StoredProcedure [dbo].[getEtape]    Script Date: 06/01/2023 14:45:29 ******/
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
/****** Object:  StoredProcedure [dbo].[getFamille]    Script Date: 06/01/2023 14:45:29 ******/
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
/****** Object:  StoredProcedure [dbo].[getMedicaments]    Script Date: 06/01/2023 14:45:29 ******/
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
/****** Object:  StoredProcedure [dbo].[getWorkflow]    Script Date: 06/01/2023 14:45:29 ******/
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
/****** Object:  StoredProcedure [dbo].[insertHistorique]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertHistorique](@dateMaj datetime,@idUtilHist int,@etpNumHist int,@normeAvMaj varchar(50),@normeApMaj varchar(50),@dateNormeAvMaj datetime,@dateNormeApMaj datetime)
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into HISTORIQUE
	VALUES(@dateMaj,@idUtilHist ,@etpNumHist ,@normeAvMaj ,@normeApMaj ,@dateNormeAvMaj ,@dateNormeApMaj)
END
GO
/****** Object:  StoredProcedure [dbo].[prc_ajout_medicament]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_ajout_medicament]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

END
GO
/****** Object:  StoredProcedure [dbo].[prc_listeConsultation]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prc_listeConsultation]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

END
GO
/****** Object:  StoredProcedure [dbo].[prc_ListeTousUtilisateurs]    Script Date: 06/01/2023 14:45:29 ******/
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
/****** Object:  StoredProcedure [dbo].[updateEtapeNormee]    Script Date: 06/01/2023 14:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateEtapeNormee](@dateNorme DateTime ,@Norme varchar(50),@EtapeNum int)
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE ETAPE 
	SET ETP_NORME = @Norme, ETP_DATE_NORME = @dateNorme
	WHERE ETP_NUM = @EtapeNum

END
GO
USE [master]
GO
ALTER DATABASE [GSB_gesAMM] SET  READ_WRITE 
GO

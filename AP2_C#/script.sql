USE [master]
GO
/****** Object:  Database [GSB_gesAMM]    Script Date: 25/11/2022 15:10:08 ******/
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
/****** Object:  Table [dbo].[DECISION]    Script Date: 25/11/2022 15:10:08 ******/
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
/****** Object:  Table [dbo].[ETAPE]    Script Date: 25/11/2022 15:10:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ETAPE](
	[ETP_NUM] [int] NOT NULL,
	[ETP_LIBELLE] [nchar](50) NOT NULL,
	[ETP_NORME] [nchar](20) NULL,
	[ETP_DATE_NORME] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ETP_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAMILLE]    Script Date: 25/11/2022 15:10:08 ******/
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
/****** Object:  Table [dbo].[HISTORIQUE]    Script Date: 25/11/2022 15:10:08 ******/
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
/****** Object:  Table [dbo].[MEDICAMENT]    Script Date: 25/11/2022 15:10:08 ******/
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
/****** Object:  Table [dbo].[UTILISATEUR]    Script Date: 25/11/2022 15:10:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UTILISATEUR](
	[id] [int] NOT NULL,
	[identifiant] [nchar](20) NOT NULL,
	[mdp] [nchar](50) NOT NULL,
 CONSTRAINT [pk1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WORKFLOW]    Script Date: 25/11/2022 15:10:08 ******/
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
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AA   ', N'Antalgiques en association                                                                                                                                                                                                                                     ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AAA  ', N'Antalgiques antipyrétiques en association                                                                                                                                                                                                                      ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AAC  ', N'Antidépresseur d''action centrale                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AAH  ', N'Antivertigineux antihistaminique H1                                                                                                                                                                                                                            ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ABA  ', N'Antibiotique antituberculeux                                                                                                                                                                                                                                   ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ABC  ', N'Antibiotique antiacnéique local                                                                                                                                                                                                                                ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ABP  ', N'Antibiotique de la famille des béta-lactamines (pénicilline A)                                                                                                                                                                                                 ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AFC  ', N'Antibiotique de la famille des cyclines                                                                                                                                                                                                                        ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AFM  ', N'Antibiotique de la famille des macrolides                                                                                                                                                                                                                      ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AH   ', N'Antihistaminique H1 local                                                                                                                                                                                                                                      ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AIM  ', N'Antidépresseur imipraminique (tricyclique)                                                                                                                                                                                                                     ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AIN  ', N'Antidépresseur inhibiteur sélectif de la recapture de la sérotonine                                                                                                                                                                                            ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ALO  ', N'Antibiotique local (ORL)                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'ANS  ', N'Antidépresseur IMAO non sélectif                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AO   ', N'Antibiotique ophtalmique                                                                                                                                                                                                                                       ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AP   ', N'Antipsychotique normothymique                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'AUM  ', N'Antibiotique urinaire minute                                                                                                                                                                                                                                   ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'CRT  ', N'Corticoïde, antibiotique et antifongique à  usage local                                                                                                                                                                                                        ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'HYP  ', N'Hypnotique antihistaminique                                                                                                                                                                                                                                    ', NULL)
INSERT [dbo].[FAMILLE] ([FAM_CODE], [FAM_LIBELLE], [FAM_NB_MEDI_AMM]) VALUES (N'PSA  ', N'Psychostimulant, antiasthénique                                                                                                                                                                                                                                ', NULL)
GO
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'3MYC7     ', N'TRIMYCINE                ', N'Triamcinolone (acétonide) + Néomycine + Nystatine                                                                                                                                                                                                              ', N'Ce médicament est un corticoïde à  activité forte ou très forte associé à  un antibiotique et un antifongique, utilisé en application locale dans certaines atteintes cutanées surinfectées.                                                                   ', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''infections de la peau ou de parasitisme non traités, d''acné. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.                                                     ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'ADIMOL9   ', N'ADIMOL                   ', N'Amoxicilline + Acide clavulanique                                                                                                                                                                                                                              ', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.                                                                                                                                   ', N'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines ou aux céphalosporines.                                                                                                                                                                    ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'AMOPIL7   ', N'AMOPIL                   ', N'Amoxicilline                                                                                                                                                                                                                                                   ', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.                                                                                                                                   ', N'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.                                                                                                              ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'AMOX45    ', N'AMOXAR                   ', N'Amoxicilline                                                                                                                                                                                                                                                   ', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.                                                                                                                                   ', N'La prise de ce médicament peut rendre positifs les tests de dépistage du dopage.                                                                                                                                                                               ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'AMOXIG12  ', N'AMOXI Gé                 ', N'Amoxicilline                                                                                                                                                                                                                                                   ', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.                                                                                                                                   ', N'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.                                                                                                              ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'APATOUX22 ', N'APATOUX Vitamine C       ', N'Tyrothricine + Tétracaïne + Acide ascorbique (Vitamine C)                                                                                                                                                                                                      ', N'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.                                                                                                                                                                             ', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, en cas de phénylcétonurie et chez l''enfant de moins de 6 ans.                                                                                                                     ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'BACTIG10  ', N'BACTIGEL                 ', N'Erythromycine                                                                                                                                                                                                                                                  ', N'Ce médicament est utilisé en application locale pour traiter l''acné et les infections cutanées bactériennes associées.                                                                                                                                         ', N'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques de la famille des macrolides ou des lincosanides.                                                                                                                                         ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'BACTIV13  ', N'BACTIVIL                 ', N'Erythromycine                                                                                                                                                                                                                                                  ', N'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.                                                                                                                                                                                ', N'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).                                                                                                                                                  ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'BITALV    ', N'BIVALIC                  ', N'Dextropropoxyphène + Paracétamol                                                                                                                                                                                                                               ', N'Ce médicament est utilisé pour traiter les douleurs d''intensité modérée ou intense.                                                                                                                                                                            ', N'Ce médicament est contre-indiqué en cas d''allergie aux médicaments de cette famille, d''insuffisance hépatique ou d''insuffisance rénale.                                                                                                                        ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'CARTION6  ', N'CARTION                  ', N'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol                                                                                                                                                                               ', N'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.                                                                                                                                                                      ', N'Ce médicament est contre-indiqué en cas de troubles de la coagulation (tendances aux hémorragies), d''ulcère gastroduodénal, maladies graves du foie.                                                                                                           ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'CLAZER6   ', N'CLAZER                   ', N'Clarithromycine                                                                                                                                                                                                                                                ', N'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques. Il est également utilisé dans le traitement de l''ulcère gastro-duodénal, en association avec d''autres médicaments.                                                             ', N'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).                                                                                                                                                  ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'DEPRIL9   ', N'DEPRAMIL                 ', N'Clomipramine                                                                                                                                                                                                                                                   ', N'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines énurésies chez l''enfant.                                                                               ', N'Ce médicament est contre-indiqué en cas de glaucome ou d''adénome de la prostate, d''infarctus récent, ou si vous avez reà§u un traitement par IMAO durant les 2 semaines précédentes ou en cas d''allergie aux antidépresseurs imipraminiques.                   ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'DIMIRTAM6 ', N'DIMIRTAM                 ', N'Mirtazapine                                                                                                                                                                                                                                                    ', N'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères.                                                                                                                                                                                        ', N'La prise de ce produit est contre-indiquée en cas de d''allergie à  l''un des constituants.                                                                                                                                                                      ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'DOLRIL7   ', N'DOLORIL                  ', N'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol                                                                                                                                                                               ', N'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.                                                                                                                                                                      ', N'Ce médicament est contre-indiqué en cas d''allergie au paracétamol ou aux salicylates.                                                                                                                                                                          ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'DORNOM8   ', N'NORMADOR                 ', N'Doxylamine                                                                                                                                                                                                                                                     ', N'Ce médicament est utilisé pour traiter l''insomnie chez l''adulte.                                                                                                                                                                                               ', N'Ce médicament est contre-indiqué en cas de glaucome, de certains troubles urinaires (rétention urinaire) et chez l''enfant de moins de 15 ans.                                                                                                                  ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'EQUILARX6 ', N'EQUILAR                  ', N'Méclozine                                                                                                                                                                                                                                                      ', N'Ce médicament est utilisé pour traiter les vertiges et pour prévenir le mal des transports.                                                                                                                                                                    ', N'Ce médicament ne doit pas être utilisé en cas d''allergie au produit, en cas de glaucome ou de rétention urinaire.                                                                                                                                              ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'EVILR7    ', N'EVEILLOR                 ', N'Adrafinil                                                                                                                                                                                                                                                      ', N'Ce médicament est utilisé pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet agé.                                                                                                                                     ', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.                                                                                                                                                                                   ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'INSXT5    ', N'INSECTIL                 ', N'Diphénydramine                                                                                                                                                                                                                                                 ', N'Ce médicament est utilisé en application locale sur les piqûres d''insecte et l''urticaire.                                                                                                                                                                      ', N'Ce médicament est contre-indiqué en cas d''allergie aux antihistaminiques.                                                                                                                                                                                      ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'JOVAI8    ', N'JOVENIL                  ', N'Josamycine                                                                                                                                                                                                                                                     ', N'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.                                                                                                                                                                                ', N'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).                                                                                                                                                  ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'LIDOXY23  ', N'LIDOXYTRACINE            ', N'Oxytétracycline +Lidocaïne                                                                                                                                                                                                                                     ', N'Ce médicament est utilisé en injection intramusculaire pour traiter certaines infections spécifiques.                                                                                                                                                          ', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants. Il ne doit pas être associé aux rétinoïdes.                                                                                                                                       ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'LITHOR12  ', N'LITHORINE                ', N'Lithium                                                                                                                                                                                                                                                        ', N'Ce médicament est indiqué dans la prévention des psychoses maniaco-dépressives ou pour traiter les états maniaques.                                                                                                                                            ', N'Ce médicament ne doit pas être utilisé si vous êtes allergique au lithium. Avant de prendre ce traitement, signalez à  votre médecin traitant si vous souffrez d''insuffisance rénale, ou si vous avez un régime sans sel.                                      ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'PARMOL16  ', N'PARMOCODEINE             ', N'Codéine + Paracétamol                                                                                                                                                                                                                                          ', N'Ce médicament est utilisé pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.                                                                                                                                         ', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, chez l''enfant de moins de 15 Kg, en cas d''insuffisance hépatique ou respiratoire, d''asthme, de phénylcétonurie et chez la femme qui allaite.                                      ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'PHYSOI8   ', N'PHYSICOR                 ', N'Sulbutiamine                                                                                                                                                                                                                                                   ', N'Ce médicament est utilisé pour traiter les baisses d''activité physique ou psychique, souvent dans un contexte de dépression.                                                                                                                                   ', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.                                                                                                                                                                                   ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'PIRIZ8    ', N'PIRIZAN                  ', N'Pyrazinamide                                                                                                                                                                                                                                                   ', N'Ce médicament est utilisé, en association à  d''autres antibiotiques, pour traiter la tuberculose.                                                                                                                                                              ', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''insuffisance rénale ou hépatique, d''hyperuricémie ou de porphyrie.                                                                                                              ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'POMDI20   ', N'POMADINE                 ', N'Bacitracine                                                                                                                                                                                                                                                    ', N'Ce médicament est utilisé pour traiter les infections oculaires de la surface de l''oeil.                                                                                                                                                                       ', N'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques appliqués localement.                                                                                                                                                                     ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'TROXT21   ', N'TROXADET                 ', N'Paroxétine                                                                                                                                                                                                                                                     ', N'Ce médicament est utilisé pour traiter la dépression et les troubles obsessionnels compulsifs. Il peut également être utilisé en prévention des crises de panique avec ou sans agoraphobie.                                                                    ', N'Ce médicament est contre-indiqué en cas d''allergie au produit.                                                                                                                                                                                                 ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'TXISOL22  ', N'TOUXISOL Vitamine C      ', N'Tyrothricine + Acide ascorbique (Vitamine C)                                                                                                                                                                                                                   ', N'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.                                                                                                                                                                             ', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants et chez l''enfant de moins de 6 ans.                                                                                                                                                ', NULL, NULL)
INSERT [dbo].[MEDICAMENT] ([MED_DEPOTLEGAL], [MED_NOMCOMMERCIAL], [MED_COMPOSITION], [MED_EFFETS], [MED_CONTREINDIC], [MED_AMM], [MED_FAM_CODE]) VALUES (N'URIEG6    ', N'URIREGUL                 ', N'Fosfomycine trométamol                                                                                                                                                                                                                                         ', N'Ce médicament est utilisé pour traiter les infections urinaires simples chez la femme de moins de 65 ans.                                                                                                                                                      ', N'La prise de ce médicament est contre-indiquée en cas d''allergie à  l''un des constituants et d''insuffisance rénale.                                                                                                                                             ', NULL, NULL)
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
USE [master]
GO
ALTER DATABASE [GSB_gesAMM] SET  READ_WRITE 
GO

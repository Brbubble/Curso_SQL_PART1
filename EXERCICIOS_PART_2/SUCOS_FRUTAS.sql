USE [master]
GO
/****** Object:  Database [SUCOS_FRUTAS]    Script Date: 01/06/2023 21:02:57 ******/
CREATE DATABASE [SUCOS_FRUTAS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SUCOS_FRUTAS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SUCOS_FRUTAS.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SUCOS_FRUTAS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SUCOS_FRUTAS_log.ldf' , SIZE = 401408KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SUCOS_FRUTAS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SUCOS_FRUTAS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SUCOS_FRUTAS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET ARITHABORT OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET RECOVERY FULL 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET  MULTI_USER 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SUCOS_FRUTAS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SUCOS_FRUTAS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SUCOS_FRUTAS', N'ON'
GO
ALTER DATABASE [SUCOS_FRUTAS] SET QUERY_STORE = ON
GO
ALTER DATABASE [SUCOS_FRUTAS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SUCOS_FRUTAS]
GO
/****** Object:  Table [dbo].[TABELA_DE_CLIENTES]    Script Date: 01/06/2023 21:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TABELA_DE_CLIENTES](
	[CPF] [varchar](11) NOT NULL,
	[NOME] [varchar](100) NULL,
	[ENDERECO_1] [varchar](150) NULL,
	[ENDERECO_2] [varchar](150) NULL,
	[BAIRRO] [varchar](50) NULL,
	[CIDADE] [varchar](50) NULL,
	[ESTADO] [varchar](2) NULL,
	[CEP] [varchar](8) NULL,
	[DATA_DE_NASCIMENTO] [date] NULL,
	[IDADE] [int] NULL,
	[GENERO] [varchar](1) NULL,
	[LIMITE_DE_CREDITO] [float] NULL,
	[VOLUME_DE_COMPRA] [float] NULL,
	[PRIMEIRA_COMPRA] [bit] NULL,
 CONSTRAINT [PK_TABELA_DE_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TABELA_DE_PRODUTOS]    Script Date: 01/06/2023 21:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TABELA_DE_PRODUTOS](
	[CODIGO_DO_PRODUTO] [varchar](10) NOT NULL,
	[NOME_DO_PRODUTO] [varchar](50) NULL,
	[EMBALAGEM] [varchar](20) NULL,
	[TAMANHO] [varchar](10) NULL,
	[SABOR] [varchar](20) NULL,
	[PRECO_DE_LISTA] [float] NOT NULL,
 CONSTRAINT [PK_TABELA_DE_PRODUTOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_DO_PRODUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TABELA_DE_VENDEDORES]    Script Date: 01/06/2023 21:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TABELA_DE_VENDEDORES](
	[MATRICULA] [varchar](5) NOT NULL,
	[NOME] [varchar](100) NULL,
	[PERCENTUAL_COMISSAO] [float] NULL,
	[DATA_ADMISSAO] [date] NULL,
	[DE_FERIAS] [bit] NULL,
	[BAIRRO] [varchar](50) NULL,
 CONSTRAINT [PK_TABELA_DE_VENDEDORES] PRIMARY KEY CLUSTERED 
(
	[MATRICULA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NOTAS_FISCAIS]    Script Date: 01/06/2023 21:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOTAS_FISCAIS](
	[CPF] [varchar](11) NOT NULL,
	[MATRICULA] [varchar](5) NOT NULL,
	[DATA_VENDA] [date] NULL,
	[NUMERO] [int] NOT NULL,
	[IMPOSTO] [float] NOT NULL,
 CONSTRAINT [PK_NOTAS_FISCAIS] PRIMARY KEY CLUSTERED 
(
	[NUMERO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ITENS_NOTAS_FISCAIS]    Script Date: 01/06/2023 21:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITENS_NOTAS_FISCAIS](
	[NUMERO] [int] NOT NULL,
	[CODIGO_DO_PRODUTO] [varchar](10) NOT NULL,
	[QUANTIDADE] [int] NOT NULL,
	[PRECO] [float] NOT NULL,
 CONSTRAINT [PK_ITENS_NOTAS_FISCAIS] PRIMARY KEY CLUSTERED 
(
	[NUMERO] ASC,
	[CODIGO_DO_PRODUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 01/06/2023 21:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT dbo.NOTAS_FISCAIS.*, dbo.NOTAS_FISCAIS.CPF AS Expr1
FROM   dbo.ITENS_NOTAS_FISCAIS INNER JOIN
             dbo.NOTAS_FISCAIS ON dbo.ITENS_NOTAS_FISCAIS.NUMERO = dbo.NOTAS_FISCAIS.NUMERO INNER JOIN
             dbo.TABELA_DE_CLIENTES ON dbo.NOTAS_FISCAIS.CPF = dbo.TABELA_DE_CLIENTES.CPF INNER JOIN
             dbo.TABELA_DE_PRODUTOS ON dbo.ITENS_NOTAS_FISCAIS.CODIGO_DO_PRODUTO = dbo.TABELA_DE_PRODUTOS.CODIGO_DO_PRODUTO INNER JOIN
             dbo.TABELA_DE_VENDEDORES ON dbo.NOTAS_FISCAIS.MATRICULA = dbo.TABELA_DE_VENDEDORES.MATRICULA
GO
/****** Object:  View [dbo].[MEDIA_EMBALAGENS]    Script Date: 01/06/2023 21:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MEDIA_EMBALAGENS] AS 
SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO 
FROM TABELA_DE_PRODUTOS 
GROUP BY EMBALAGEM;
GO
/****** Object:  View [dbo].[VW_QUANTIDADE_PRODUTOS]    Script Date: 01/06/2023 21:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_QUANTIDADE_PRODUTOS] AS SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL FROM ITENS_NOTAS_FISCAIS  INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO;
GO
ALTER TABLE [dbo].[ITENS_NOTAS_FISCAIS]  WITH CHECK ADD  CONSTRAINT [FK_ITENS_NOTAS_FISCAIS1] FOREIGN KEY([CODIGO_DO_PRODUTO])
REFERENCES [dbo].[TABELA_DE_PRODUTOS] ([CODIGO_DO_PRODUTO])
GO
ALTER TABLE [dbo].[ITENS_NOTAS_FISCAIS] CHECK CONSTRAINT [FK_ITENS_NOTAS_FISCAIS1]
GO
ALTER TABLE [dbo].[ITENS_NOTAS_FISCAIS]  WITH CHECK ADD  CONSTRAINT [FK_ITENS_NOTAS_FISCAIS2] FOREIGN KEY([NUMERO])
REFERENCES [dbo].[NOTAS_FISCAIS] ([NUMERO])
GO
ALTER TABLE [dbo].[ITENS_NOTAS_FISCAIS] CHECK CONSTRAINT [FK_ITENS_NOTAS_FISCAIS2]
GO
ALTER TABLE [dbo].[NOTAS_FISCAIS]  WITH CHECK ADD  CONSTRAINT [FK_NOTAS_FISCAIS1] FOREIGN KEY([MATRICULA])
REFERENCES [dbo].[TABELA_DE_VENDEDORES] ([MATRICULA])
GO
ALTER TABLE [dbo].[NOTAS_FISCAIS] CHECK CONSTRAINT [FK_NOTAS_FISCAIS1]
GO
ALTER TABLE [dbo].[NOTAS_FISCAIS]  WITH CHECK ADD  CONSTRAINT [FK_NOTAS_FISCAIS2] FOREIGN KEY([CPF])
REFERENCES [dbo].[TABELA_DE_CLIENTES] ([CPF])
GO
ALTER TABLE [dbo].[NOTAS_FISCAIS] CHECK CONSTRAINT [FK_NOTAS_FISCAIS2]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[72] 4[15] 2[8] 3) )"
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
         Begin Table = "ITENS_NOTAS_FISCAIS"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 354
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "NOTAS_FISCAIS"
            Begin Extent = 
               Top = 9
               Left = 411
               Bottom = 285
               Right = 676
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TABELA_DE_CLIENTES"
            Begin Extent = 
               Top = 9
               Left = 733
               Bottom = 206
               Right = 1031
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TABELA_DE_PRODUTOS"
            Begin Extent = 
               Top = 9
               Left = 1088
               Bottom = 206
               Right = 1385
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TABELA_DE_VENDEDORES"
            Begin Extent = 
               Top = 9
               Left = 1442
               Bottom = 206
               Right = 1749
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
      Begin ColumnWidths = 11
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
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
USE [master]
GO
ALTER DATABASE [SUCOS_FRUTAS] SET  READ_WRITE 
GO

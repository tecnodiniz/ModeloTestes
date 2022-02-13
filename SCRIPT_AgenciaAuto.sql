﻿
/****** Object:  Database [AgenciaAuto]    Script Date: 21/04/2021 07:21:27 ******/
DROP DATABASE IF EXISTS [AgenciaAuto]
Go
CREATE DATABASE [AgenciaAuto]
Go

USE [AgenciaAuto]
GO
/****** Object:  Table [dbo].[tb_Veiculos]    Script Date: 21/04/2021 07:10:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Veiculos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Ano] [smallint] NOT NULL,
	[Fabricacao] [smallint] NOT NULL,
	[Cor] [varchar](10) NOT NULL,
	[Combustivel] [tinyint] NOT NULL,
	[Automatico] [bit] NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[Ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Veiculos] ON 

INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (1, N'FORD FIESTA', N'1.0 MPI PERSONNALITÉ SEDAN 4P ', 2005, 2005, N'Prata', 1, 0, CAST(11550.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (2, N'KIA CERATO', N'1.6 EX3 SEDAN 16V 4P A', 2012, 2011, N'Prata', 1, 1, CAST(32550.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (3, N'HYUNDAI HB20', N'1.0 COMFORT 12V FLEX 4P ', 2017, 2016, N'Branco', 3, 0, CAST(38745.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (4, N'CITROËN C3', N'5 TENDANCE 8V FLEX 4P', 2014, 2014, N'Vermelho', 3, 0, CAST(31395.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (6, N'CHEVROLET PRISMA', N'1.4 MPFI LT 8V FLEX 4P', 2012, 2011, N'Preto', 3, 0, CAST(21000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (7, N'HONDA CRV', N'2.0 LX 4X2 16V 4P', 2011, 2011, N'Prata', 1, 1, CAST(41895.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (8, N'FORD FIESTA', N'1.6 MPI CLASS HATCH 8V FLEX 4P ', 2013, 2013, N'Prata', 3, 0, CAST(25800.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (11, N'CITROËN C4 LOUNGE', N'2.0 MPFI TENDANCE 16V FLEX 4P', 2016, 2015, N'Prata', 3, 1, CAST(42945.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (12, N'HYUNDAI HB20', N'1.6 PREMIUM 16V FLEX 4P', 2014, 2013, N'Branco', 3, 1, CAST(39795.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (14, N'CHEVROLET ONIX', N'1.4 MPFI LTZ 8V FLEX 4P ', 2017, 2016, N'Preto', 3, 0, CAST(49245.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (15, N'TOYOTA HILUX', N'2.8 SRV 4X4 CD 16V 4P', 2016, 2015, N'Prata', 4, 1, CAST(136500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (16, N'KIA MOHAVE', N'3.0 4X4 V6 24V TURBO 4P', 2011, 2010, N'Prata', 4, 1, CAST(63000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (17, N'CHEVROLET OPALA', N'4.1 DIPLOMATA SE 12V 4P', 1991, 1991, N'Verde', 2, 1, CAST(58695.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (18, N'VOLKSWAGEN POLO', N'1.0 200 TSI HIGHLINE', 2018, 2018, N'Azul', 3, 1, CAST(66045.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (19, N'VOLKSWAGEN UP', N'1.0 MPI MOVE UP 12V FLEX 4P', 2018, 2017, N'Branco', 3, 1, CAST(36645.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (20, N'CHEVROLET CORSA', N'1.4 MPFI PREMIUM 8V FLEX 4P', 2009, 2008, N'Preto', 3, 1, CAST(21840.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (21, N'LAND ROVER DISCOVERY 4', N'3.0 SE 4X4 V6 24V BI-TURBO 4P ', 2013, 2013, N'Preto', 4, 1, CAST(131250.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (22, N'VOLKSWAGEN AMAROK', N'2.0 SE 4X4 CD 16V TURBO INTERCOOLER 4P', 2018, 2018, N'Preto', 4, 0, CAST(99592.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (23, N'VOLKSWAGEN PASSAT', N'2.0 16V TSI BLUEMOTION GASOLINA HIGHLINE 4P DSG', 2019, 2018, N'Branco', 5, 1, CAST(206850.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (24, N'GURGEL X12', N'1.6 LE TOCANTIS 8V 2P', 1985, 1985, N'Vermelho', 2, 0, CAST(29190.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (25, N'VOLKSWAGEN FUSCA', N'1.3 8V 2P ', 1977, 1977, N'Branco', 1, 0, CAST(19950.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (27, N'HONDA FIT', N'1.4 LX 16V FLEX 4P', 2010, 2010, N'Prata', 3, 0, CAST(26250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (28, N'Honda Civic', N'.8 LXS 16V FLEX 4P', 2008, 2008, N'Prata', 3, 1, CAST(31395.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (29, N'HONDA FIT', N'1.4 LX 16V FLEX 4P', 2009, 2009, N'Cinza', 3, 0, CAST(26775.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (30, N'VOLKSWAGEN GOLF', N'1.4 TSI HIGHLINE 16V 4P ', 2014, 2014, N'Prata', 3, 1, CAST(58800.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (31, N'MERCEDES-BENZ E 250', N'2.0 CGI AVANTGARDE 9G-TRONIC', 2017, 2016, N'Azul', 1, 1, CAST(199395.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[tb_Veiculos] OFF
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1=gasolina 2=álcoll 3=flex 4=diesel 5=gas natural' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_Veiculos', @level2type=N'COLUMN',@level2name=N'Combustivel'
GO

CREATE TABLE [dbo].[tb_Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[Senha] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
([Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[tb_Veiculos] ON 

INSERT INTO [dbo].[tb_Usuario]([Nome],[Senha])VALUES('admin','admin')
SET IDENTITY_INSERT [dbo].[tb_Veiculos] OFF
GO


USE [master]
GO
ALTER DATABASE [AgenciaAuto] SET  READ_WRITE 
GO

/****** Object:  Database [AgenciaAuto]    Script Date: 21/04/2021 07:21:27 ******/
DROP DATABASE IF EXISTS [AgenciaAuto]
Go
CREATE DATABASE [AgenciaAuto]
Go

USE [AgenciaAuto]
GO
/****** Object:  Table [dbo].[tb_Veiculos]    Script Date: 21/04/2021 07:10:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Veiculos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Ano] [smallint] NOT NULL,
	[Fabricacao] [smallint] NOT NULL,
	[Cor] [varchar](10) NOT NULL,
	[Combustivel] [tinyint] NOT NULL,
	[Automatico] [bit] NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[Ativo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Veiculos] ON 

INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (1, N'FORD FIESTA', N'1.0 MPI PERSONNALITÉ SEDAN 4P ', 2005, 2005, N'Prata', 1, 0, CAST(11550.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (2, N'KIA CERATO', N'1.6 EX3 SEDAN 16V 4P A', 2012, 2011, N'Prata', 1, 1, CAST(32550.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (3, N'HYUNDAI HB20', N'1.0 COMFORT 12V FLEX 4P ', 2017, 2016, N'Branco', 3, 0, CAST(38745.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (4, N'CITROËN C3', N'5 TENDANCE 8V FLEX 4P', 2014, 2014, N'Vermelho', 3, 0, CAST(31395.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (6, N'CHEVROLET PRISMA', N'1.4 MPFI LT 8V FLEX 4P', 2012, 2011, N'Preto', 3, 0, CAST(21000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (7, N'HONDA CRV', N'2.0 LX 4X2 16V 4P', 2011, 2011, N'Prata', 1, 1, CAST(41895.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (8, N'FORD FIESTA', N'1.6 MPI CLASS HATCH 8V FLEX 4P ', 2013, 2013, N'Prata', 3, 0, CAST(25800.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (11, N'CITROËN C4 LOUNGE', N'2.0 MPFI TENDANCE 16V FLEX 4P', 2016, 2015, N'Prata', 3, 1, CAST(42945.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (12, N'HYUNDAI HB20', N'1.6 PREMIUM 16V FLEX 4P', 2014, 2013, N'Branco', 3, 1, CAST(39795.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (14, N'CHEVROLET ONIX', N'1.4 MPFI LTZ 8V FLEX 4P ', 2017, 2016, N'Preto', 3, 0, CAST(49245.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (15, N'TOYOTA HILUX', N'2.8 SRV 4X4 CD 16V 4P', 2016, 2015, N'Prata', 4, 1, CAST(136500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (16, N'KIA MOHAVE', N'3.0 4X4 V6 24V TURBO 4P', 2011, 2010, N'Prata', 4, 1, CAST(63000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (17, N'CHEVROLET OPALA', N'4.1 DIPLOMATA SE 12V 4P', 1991, 1991, N'Verde', 2, 1, CAST(58695.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (18, N'VOLKSWAGEN POLO', N'1.0 200 TSI HIGHLINE', 2018, 2018, N'Azul', 3, 1, CAST(66045.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (19, N'VOLKSWAGEN UP', N'1.0 MPI MOVE UP 12V FLEX 4P', 2018, 2017, N'Branco', 3, 1, CAST(36645.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (20, N'CHEVROLET CORSA', N'1.4 MPFI PREMIUM 8V FLEX 4P', 2009, 2008, N'Preto', 3, 1, CAST(21840.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (21, N'LAND ROVER DISCOVERY 4', N'3.0 SE 4X4 V6 24V BI-TURBO 4P ', 2013, 2013, N'Preto', 4, 1, CAST(131250.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (22, N'VOLKSWAGEN AMAROK', N'2.0 SE 4X4 CD 16V TURBO INTERCOOLER 4P', 2018, 2018, N'Preto', 4, 0, CAST(99592.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (23, N'VOLKSWAGEN PASSAT', N'2.0 16V TSI BLUEMOTION GASOLINA HIGHLINE 4P DSG', 2019, 2018, N'Branco', 5, 1, CAST(206850.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (24, N'GURGEL X12', N'1.6 LE TOCANTIS 8V 2P', 1985, 1985, N'Vermelho', 2, 0, CAST(29190.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (25, N'VOLKSWAGEN FUSCA', N'1.3 8V 2P ', 1977, 1977, N'Branco', 1, 0, CAST(19950.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (27, N'HONDA FIT', N'1.4 LX 16V FLEX 4P', 2010, 2010, N'Prata', 3, 0, CAST(26250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (28, N'Honda Civic', N'.8 LXS 16V FLEX 4P', 2008, 2008, N'Prata', 3, 1, CAST(31395.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (29, N'HONDA FIT', N'1.4 LX 16V FLEX 4P', 2009, 2009, N'Cinza', 3, 0, CAST(26775.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (30, N'VOLKSWAGEN GOLF', N'1.4 TSI HIGHLINE 16V 4P ', 2014, 2014, N'Prata', 3, 1, CAST(58800.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_Veiculos] ([Id], [Nome], [Modelo], [Ano], [Fabricacao], [Cor], [Combustivel], [Automatico], [Valor], [Ativo]) VALUES (31, N'MERCEDES-BENZ E 250', N'2.0 CGI AVANTGARDE 9G-TRONIC', 2017, 2016, N'Azul', 1, 1, CAST(199395.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[tb_Veiculos] OFF
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1=gasolina 2=álcoll 3=flex 4=diesel 5=gas natural' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_Veiculos', @level2type=N'COLUMN',@level2name=N'Combustivel'
GO

CREATE TABLE [dbo].[tb_Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[Senha] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
([Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[tb_Veiculos] ON 

INSERT INTO [dbo].[tb_Usuario]([Nome],[Senha])VALUES('admin','admin')
SET IDENTITY_INSERT [dbo].[tb_Veiculos] OFF
GO


USE [master]
GO
ALTER DATABASE [AgenciaAuto] SET  READ_WRITE 
GO

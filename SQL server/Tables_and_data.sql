USE MASTER
GO
DROP DATABASE IF EXISTS DB_Customers;
GO
CREATE DATABASE DB_Customers;
GO
USE DB_Customers;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CITY](
	[City_iD] [int] NOT NULL,
	[City_Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_City_ID] PRIMARY KEY CLUSTERED 
(
	[City_iD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7/22/2016 11:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[Customer_id] [int] IDENTITY(100,3) NOT NULL,
	[CustName] [varchar](260) NOT NULL,
	[Address] [varchar](280) NOT NULL,
	[City_iD] [int] NOT NULL,
	[Zip] [varchar](10) NULL,
	[Phone] [varchar](20) NULL,
 CONSTRAINT [PK_Customr_id] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/22/2016 11:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_id] [int] IDENTITY(10,2) NOT NULL,
	[Sales_person] [varchar](260) NOT NULL,
	[Order_Date] [datetime] NOT NULL,
	[ShipDate] [datetime] NOT NULL,
	[Customer_id] [int] NOT NULL,
	[ShipCity_iD] [int] NOT NULL,
	[ShipPhone] [varchar](20) NULL,
 CONSTRAINT [PK_Ord_id] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders_details]    Script Date: 7/22/2016 11:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_details](
	[Orders_details_id] [int] NOT NULL,
	[Order_id] [int] NOT NULL,
	[Product_id] [int] NULL,
	[Unit_price] [decimal](18, 2) NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Ord_dit_id] PRIMARY KEY CLUSTERED 
(
	[Orders_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/22/2016 11:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Product_id] [int] NOT NULL,
	[Product_name] [varchar](100) NOT NULL,
	[Unit_price] [decimal](18, 2) NULL,
	[Unit_in_stock] [decimal](18, 2) NULL,
	[Unit_ON_order] [decimal](18, 2) NULL,
	[Quantity_per_unit] [int] NULL,
	[Supplier_id] [int] NOT NULL,
 CONSTRAINT [PK_Product_id] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 7/22/2016 11:58:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Supplier_id] [int] NOT NULL,
	[Company_name] [varchar](260) NOT NULL,
	[Contact_name] [varchar](260) NOT NULL,
	[Sup_Address] [varchar](280) NOT NULL,
	[Sup_City_iD] [int] NOT NULL,
	[Sup_Phone] [varchar](20) NULL,
	[Customer_id] [int] NOT NULL,
 CONSTRAINT [PK_Supplier_id] PRIMARY KEY CLUSTERED 
(
	[Supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (1, N'DECAN')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (2, N'GJAKOVE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (3, N'GLLOGOC')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (4, N'GJILANI')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (5, N'DRAGASH')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (6, N'ISTOG')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (7, N'KACANIK')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (8, N'KLINE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (9, N'FUSHE KOSOVE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (10, N'KAMENICE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (11, N'MITROVICE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (12, N'LEPOSAVIQ')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (13, N'LIPJAN')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (14, N'NOVO BERDE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (15, N'OBILIQ')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (16, N'RAHOVEC')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (17, N'PEJE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (18, N'PODUJEVE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (19, N'PRISHTINE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (20, N'PRIZREN')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (21, N'SKENDERAJ')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (22, N'SHTIME')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (23, N'SHTERPCE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (24, N'SUHAREKE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (25, N'FERIZAJ')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (26, N'VITI')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (27, N'VUSHTRRI')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (28, N'ZUBIN POTOK')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (29, N'ZVECAN')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (30, N'MALISHEVE')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (32, N'JUNIK')
INSERT [dbo].[CITY] ([City_iD], [City_Name]) VALUES (39, N'HANI I ELEZIT')
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (550, N'D.P.SH. " IppoE 1"', N'122/2', 17, N'10000', N'35770247')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (553, N'EU. AriaE', N'Shpetim Robaj', 19, N'10003', N'35307952')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (556, N'E.P.U.SH.P. BEARGO', N'270/8', 17, N'10005', N'35429167')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (559, N'E.U.P. " BiEi "', N'Wiliam Woker', 13, N'10006', N'35345106')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (562, N'"PrroEi "', N'Agim Bajrami', 7, N'10001', N'35770247')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (565, N'"UE ISAKU"', N'STAN.I POSHTEM', 27, N'10002', N'35602428')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (568, N' "UEiverzal -Col"', N'TMK', 17, N'10003', N'35602428')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (571, N'EUP " Luli -Urade "', N'01, Sh.Polluzha', 19, N'10000', N'35128601')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (574, N'UOPALLI', N' " Kadri Zeka "', 25, N'10003', N'35128601')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (577, N'"Move"', N'SLLATINE E MADHE', 9, N'10005', N'35500520')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (580, N'" ErhaE "', N'Galibardi  15/5', 19, N'10006', N'35814267')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (583, N'" Besa "', N'R.Bislimi', 25, N'10001', N'35814267')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (586, N'"Sprak"', N'BARDHOSH', 19, N'10002', N'35258283')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (589, N'Uregu "', N'W.Woker', 20, N'10003', N'35289539')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (592, N'HeUemi', N'TMK', 25, N'10000', N'35378314')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (595, N'" CompuUers "', N'H.Prishtina', 25, N'10003', N'35172283')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (598, N'E.P.U."Pharm "', N'R.SADIKU', 19, N'10005', N'35136924')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (601, N'"Durimi "', N'Arberia', 4, N'10006', N'35136924')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (604, N'"Lushi"', N'Skenderbeu', 18, N'10001', N'35153041')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (607, N'" Hidro - MaEi "  ', N'P.N.', 25, N'10002', N'35689685')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (610, N'" Farma-MMM', N'M. Fejza', 19, N'10003', N'35259434')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (613, N'"KurUa"', N'A Jashari', 20, N'10000', N'45281830')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (616, N'",Miri"', N'Xh.Ahmeti', 19, N'10003', N'35605081')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (619, N'"Cali"', N'Vashingtoni', 2, N'10005', N'35237187')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (622, N'"Eiki" ', N'Ismajl Raka', 7, N'10006', N'35253108')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (625, N'"KORKU"', N'U.C.K/P.N', 2, N'10001', N'39026202')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (628, N'" Ermali "', N'Drenica  ', 27, N'10002', N'49814870')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (631, N'" FreskAT "', N'U.C.K/P.N', 6, N'10003', N'35138592')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (634, N'" GA-COMMERC "', N'GUMNASELLE', 13, N'10006', N'35537098')
INSERT [dbo].[Customers] ([Customer_id], [CustName], [Address], [City_iD], [Zip], [Phone]) VALUES (637, N'Europa"', N'Taslixhe  III', 19, N'10001', N'35537098')
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (142, N'NUHI			', CAST(N'2005-05-19 00:00:00.000' AS DateTime), CAST(N'2005-05-25 00:00:00.000' AS DateTime), 550, 17, N'35770254')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (144, N'FADIL		', CAST(N'2008-01-03 00:00:00.000' AS DateTime), CAST(N'2008-05-03 00:00:00.000' AS DateTime), 553, 19, N'35307959')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (146, N'Loni			', CAST(N'2007-01-08 00:00:00.000' AS DateTime), CAST(N'2007-05-08 00:00:00.000' AS DateTime), 556, 17, N'35429174')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (148, N'CAKOLLI		', CAST(N'2005-01-04 00:00:00.000' AS DateTime), CAST(N'2005-05-14 00:00:00.000' AS DateTime), 559, 13, N'35345113')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (150, N'NJPB			', CAST(N'2004-01-23 00:00:00.000' AS DateTime), CAST(N'2004-05-29 00:00:00.000' AS DateTime), 562, 7, N'35770254')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (152, N'DEMAJ		', CAST(N'2000-01-20 00:00:00.000' AS DateTime), CAST(N'2000-05-26 00:00:00.000' AS DateTime), 565, 27, N'35602435')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (154, N'Radoniqi		', CAST(N'2005-01-06 00:00:00.000' AS DateTime), CAST(N'2005-04-06 00:00:00.000' AS DateTime), 568, 17, N'35602435')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (156, N'DINO			', CAST(N'2010-01-05 00:00:00.000' AS DateTime), CAST(N'2010-05-18 00:00:00.000' AS DateTime), 571, 19, N'35128608')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (158, N'AUTOAS		', CAST(N'2007-01-14 00:00:00.000' AS DateTime), CAST(N'2007-05-20 00:00:00.000' AS DateTime), 550, 25, N'35128608')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (160, N'VALONI		', CAST(N'2003-04-27 00:00:00.000' AS DateTime), CAST(N'2003-05-09 00:00:00.000' AS DateTime), 553, 9, N'35500527')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (162, N'ATIFETE		', CAST(N'2007-04-05 00:00:00.000' AS DateTime), CAST(N'2007-05-14 00:00:00.000' AS DateTime), 556, 19, N'35814274')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (164, N'Medical		', CAST(N'2000-04-05 00:00:00.000' AS DateTime), CAST(N'2000-04-05 00:00:00.000' AS DateTime), 559, 25, N'35814274')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (166, N'Londra		', CAST(N'2002-04-11 00:00:00.000' AS DateTime), CAST(N'2002-04-11 00:00:00.000' AS DateTime), 562, 19, N'35258290')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (168, N'Lider		', CAST(N'2003-07-20 00:00:00.000' AS DateTime), CAST(N'2003-07-26 00:00:00.000' AS DateTime), 565, 20, N'35289546')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (170, N'GT2			', CAST(N'2010-07-26 00:00:00.000' AS DateTime), CAST(N'2010-07-03 00:00:00.000' AS DateTime), 568, 25, N'35378321')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (172, N'DINI			', CAST(N'2007-05-12 00:00:00.000' AS DateTime), CAST(N'2007-07-12 00:00:00.000' AS DateTime), 571, 25, N'35172290')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (174, N'Barac		', CAST(N'2006-05-13 00:00:00.000' AS DateTime), CAST(N'2006-07-19 00:00:00.000' AS DateTime), 574, 19, N'35136931')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (176, N'SOTIR		', CAST(N'2010-05-21 00:00:00.000' AS DateTime), CAST(N'2010-07-27 00:00:00.000' AS DateTime), 577, 4, N'35136931')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (178, N'LIMAK		', CAST(N'2012-05-28 00:00:00.000' AS DateTime), CAST(N'2012-07-03 00:00:00.000' AS DateTime), 580, 18, N'35153048')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (180, N'M LOUNGE		', CAST(N'2012-05-14 00:00:00.000' AS DateTime), CAST(N'2012-07-20 00:00:00.000' AS DateTime), 583, 25, N'35689692')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (182, N'NONI			', CAST(N'2011-08-11 00:00:00.000' AS DateTime), CAST(N'2011-09-11 00:00:00.000' AS DateTime), 586, 19, N'35259441')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (184, N'GRD			', CAST(N'2001-08-17 00:00:00.000' AS DateTime), CAST(N'2001-09-23 00:00:00.000' AS DateTime), 589, 20, N'45281837')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (186, N'QAKF			', CAST(N'2012-08-16 00:00:00.000' AS DateTime), CAST(N'2012-09-22 00:00:00.000' AS DateTime), 595, 19, N'35605088')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (188, N'TC GR		', CAST(N'2002-08-17 00:00:00.000' AS DateTime), CAST(N'2002-09-23 00:00:00.000' AS DateTime), 595, 2, N'35237194')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (190, N'NUHI CAKO	', CAST(N'2008-08-12 00:00:00.000' AS DateTime), CAST(N'2008-09-18 00:00:00.000' AS DateTime), 595, 7, N'35253115')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (192, N'KRASNIQI		', CAST(N'2013-08-19 00:00:00.000' AS DateTime), CAST(N'2013-09-25 00:00:00.000' AS DateTime), 595, 2, N'39026209')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (194, N'STELA- HP	', CAST(N'2013-11-23 00:00:00.000' AS DateTime), CAST(N'2013-11-29 00:00:00.000' AS DateTime), 625, 27, N'49814877')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (196, N'VEWO			', CAST(N'2013-11-07 00:00:00.000' AS DateTime), CAST(N'2013-11-17 00:00:00.000' AS DateTime), 619, 6, N'35138599')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (198, N'NUHI DEMA	', CAST(N'2011-11-14 00:00:00.000' AS DateTime), CAST(N'2011-11-20 00:00:00.000' AS DateTime), 619, 13, N'35537105')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (200, N'RUSHIT		', CAST(N'2012-11-28 00:00:00.000' AS DateTime), CAST(N'2012-11-06 00:00:00.000' AS DateTime), 619, 19, N'35537105')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (202, N'TRGOSPED		', CAST(N'2012-11-23 00:00:00.000' AS DateTime), CAST(N'2012-11-29 00:00:00.000' AS DateTime), 619, 17, N'35605089')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (204, N'DENIS		', CAST(N'2012-11-03 00:00:00.000' AS DateTime), CAST(N'2012-11-15 00:00:00.000' AS DateTime), 619, 13, N'35237195')
INSERT [dbo].[Orders] ([Order_id], [Sales_person], [Order_Date], [ShipDate], [Customer_id], [ShipCity_iD], [ShipPhone]) VALUES (206, N'IIA			', CAST(N'2012-11-24 00:00:00.000' AS DateTime), CAST(N'2012-11-30 00:00:00.000' AS DateTime), 619, 7, N'35253116')
SET IDENTITY_INSERT [dbo].[Orders] OFF
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (110, 142, 10, CAST(656525.00 AS Decimal(18, 2)), 1100)
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (111, 144, 20, CAST(565265.00 AS Decimal(18, 2)), 10000)
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (112, 146, 30, CAST(566562.00 AS Decimal(18, 2)), 10000)
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (113, 148, 40, CAST(65522.00 AS Decimal(18, 2)), 3000)
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (114, 150, 30, CAST(50000.00 AS Decimal(18, 2)), 1000)
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (115, 152, 20, CAST(2000.00 AS Decimal(18, 2)), 1000)
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (116, 154, 10, CAST(2000.00 AS Decimal(18, 2)), 1000)
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (117, 156, 20, CAST(20000.00 AS Decimal(18, 2)), 100000)
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (118, 158, 30, CAST(5000.00 AS Decimal(18, 2)), 5000)
INSERT [dbo].[Orders_details] ([Orders_details_id], [Order_id], [Product_id], [Unit_price], [Quantity]) VALUES (119, 160, 20, CAST(5000.00 AS Decimal(18, 2)), 6000)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (10, N'Software', CAST(10000.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 20, 100)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (20, N'Hardwer', CAST(12000.00 AS Decimal(18, 2)), CAST(1300.00 AS Decimal(18, 2)), CAST(1300.00 AS Decimal(18, 2)), 30, 100)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (30, N'License', CAST(32000.00 AS Decimal(18, 2)), CAST(1302.00 AS Decimal(18, 2)), CAST(3251.00 AS Decimal(18, 2)), 30, 100)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (40, N'Software', CAST(325000.00 AS Decimal(18, 2)), CAST(356000.00 AS Decimal(18, 2)), CAST(56152.00 AS Decimal(18, 2)), 50, 200)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (50, N'Hrdwer', CAST(35650.00 AS Decimal(18, 2)), CAST(658.00 AS Decimal(18, 2)), CAST(6566.00 AS Decimal(18, 2)), 30, 200)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (60, N'License', CAST(65954.00 AS Decimal(18, 2)), CAST(65999.00 AS Decimal(18, 2)), CAST(9898765.00 AS Decimal(18, 2)), 30, 200)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (70, N'Software', CAST(565989.00 AS Decimal(18, 2)), CAST(989896.00 AS Decimal(18, 2)), CAST(85122.00 AS Decimal(18, 2)), 60, 300)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (80, N'Hardwer', CAST(659556.00 AS Decimal(18, 2)), CAST(6566.00 AS Decimal(18, 2)), CAST(5626.00 AS Decimal(18, 2)), 60, 300)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (90, N'License', CAST(58552.00 AS Decimal(18, 2)), CAST(6562.00 AS Decimal(18, 2)), CAST(56015.00 AS Decimal(18, 2)), 60, 300)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (100, N'Fast Food', CAST(563356.00 AS Decimal(18, 2)), CAST(62226.00 AS Decimal(18, 2)), CAST(661452.00 AS Decimal(18, 2)), 1000, 600)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (110, N'Parfum', CAST(565685.00 AS Decimal(18, 2)), CAST(6562.00 AS Decimal(18, 2)), CAST(6526.00 AS Decimal(18, 2)), 10000, 700)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (120, N'Parfum', CAST(655266.00 AS Decimal(18, 2)), CAST(654122.00 AS Decimal(18, 2)), CAST(666556.00 AS Decimal(18, 2)), 10000, 900)
INSERT [dbo].[Products] ([Product_id], [Product_name], [Unit_price], [Unit_in_stock], [Unit_ON_order], [Quantity_per_unit], [Supplier_id]) VALUES (130, N'Jewelry', CAST(45456.00 AS Decimal(18, 2)), CAST(8655263.00 AS Decimal(18, 2)), CAST(84652.00 AS Decimal(18, 2)), 60000, 1000)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (100, N'Google', N'Mountain View', N'California', 4, N'589
8989', 589)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (200, N'Oracle', N'Jackson JOE', N'Texas', 5, N'5656566', 592)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (300, N'Yahoo', N'Kimberly-Clark', N'Arkansas', 6, N'5656566', 595)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (400, N'Tyson Foods', N'Springdale', N'California', 7, N'7878878', 601)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (500, N'SC Johnson', N'Racine Reynold', N'Wisconsin', 8, N'5885526', 604)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (600, N'Dole Food ', N'Zajn Ramesh', N'California', 8, N'5662656', 604)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (700, N'JOP', N'Denis Agrish', N'California', 6, N'4545454', 601)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (800, N'Dolce Vita', N'Arne Doris', N'Arkansas', 7, N'5626566', 610)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (900, N'Kristan Dior', N'Pamela Reinhard', N'Gorgoia', 7, N'5656265', 610)
INSERT [dbo].[Suppliers] ([Supplier_id], [Company_name], [Contact_name], [Sup_Address], [Sup_City_iD], [Sup_Phone], [Customer_id]) VALUES (1000, N'Penelop', N'Artisa Remen', N'Georgia', 7, N'5626565', 610)
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [city__FK] FOREIGN KEY([City_iD])
REFERENCES [dbo].[CITY] ([City_iD])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [city__FK]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Custom_id] FOREIGN KEY([Customer_id])
REFERENCES [dbo].[Customers] ([Customer_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Custom_id]
GO
ALTER TABLE [dbo].[Orders_details]  WITH CHECK ADD  CONSTRAINT [FK_Orders_id] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[Orders_details] CHECK CONSTRAINT [FK_Orders_id]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_id] FOREIGN KEY([Supplier_id])
REFERENCES [dbo].[Suppliers] ([Supplier_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Supplier_id]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Cust_id] FOREIGN KEY([Customer_id])
REFERENCES [dbo].[Customers] ([Customer_id])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Cust_id]
GO

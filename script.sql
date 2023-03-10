USE [Trade]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 24.12.2022 12:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 24.12.2022 12:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK__OrderPro__817A2662AFBE217C] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickUpPoint]    Script Date: 24.12.2022 12:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickUpPoint](
	[zip-code] [int] NOT NULL,
	[city] [nchar](100) NOT NULL,
	[street] [nchar](100) NOT NULL,
	[appartment] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24.12.2022 12:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductPhoto] [image] NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductStatus] [nvarchar](max) NULL,
 CONSTRAINT [PK__Product__2EA7DCD57B12594B] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 24.12.2022 12:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24.12.2022 12:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (1, N'Новый ', CAST(N'2022-05-12T00:00:00.000' AS DateTime), N'25')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (2, N'Новый ', CAST(N'2022-05-12T00:00:00.000' AS DateTime), N'20')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (3, N'Завершен', CAST(N'2022-05-14T00:00:00.000' AS DateTime), N'22')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (4, N'Завершен', CAST(N'2022-05-14T00:00:00.000' AS DateTime), N'24')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (5, N'Завершен', CAST(N'2022-05-16T00:00:00.000' AS DateTime), N'25')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (6, N'Завершен', CAST(N'2022-05-17T00:00:00.000' AS DateTime), N'28')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (7, N'Новый ', CAST(N'2022-05-18T00:00:00.000' AS DateTime), N'36')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (8, N'Новый ', CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'32')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (9, N'Новый ', CAST(N'2022-05-21T00:00:00.000' AS DateTime), N'34')
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint]) VALUES (10, N'Завершен', CAST(N'2022-05-21T00:00:00.000' AS DateTime), N'36')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (2, 1, N'G453T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (1, 1, N'А112Т4', 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (3, 2, N'F432F4', 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (4, 2, N'Y324F4', 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (5, 3, N'E532Q5', 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (6, 3, N'T432F4', 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (8, 4, N'E345R4', 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (7, 4, N'G345E4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (10, 5, N'E431R5', 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (9, 5, N'R356F4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (12, 6, N'D643B5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (11, 6, N'H436R4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (13, 7, N'H342F5', 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (14, 7, N'Q245F5', 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (15, 8, N'K436T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (16, 8, N'V527T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (18, 9, N'K452T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (17, 9, N'V527T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (19, 10, N'M356R4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Quantity]) VALUES (20, 10, N'W548O7', 1)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
GO
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (344288, N' г. Нефтеюганск                                                                                     ', N' ул. Чехова                                                                                         ', 1)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (614164, N' г.Нефтеюганск                                                                                      ', N'  ул. Степная                                                                                       ', 30)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (394242, N' г. Нефтеюганск                                                                                     ', N' ул. Коммунистическая                                                                               ', 43)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (660540, N' г. Нефтеюганск                                                                                     ', N' ул. Солнечная                                                                                      ', 25)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (125837, N' г. Нефтеюганск                                                                                     ', N' ул. Шоссейная                                                                                      ', 40)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (125703, N' г. Нефтеюганск                                                                                     ', N' ул. Партизанская                                                                                   ', 49)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (625283, N' г. Нефтеюганск                                                                                     ', N' ул. Победы                                                                                         ', 46)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (614611, N' г. Нефтеюганск                                                                                     ', N' ул. Молодежная                                                                                     ', 50)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (454311, N' г.Нефтеюганск                                                                                      ', N' ул. Новая                                                                                          ', 19)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (660007, N' г.Нефтеюганск                                                                                      ', N' ул. Октябрьская                                                                                    ', 19)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (603036, N' г. Нефтеюганск                                                                                     ', N' ул. Садовая                                                                                        ', 4)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (450983, N' г.Нефтеюганск                                                                                      ', N' ул. Комсомольская                                                                                  ', 26)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (394782, N' г. Нефтеюганск                                                                                     ', N' ул. Чехова                                                                                         ', 3)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (603002, N' г. Нефтеюганск                                                                                     ', N' ул. Дзержинского                                                                                   ', 28)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (450558, N' г. Нефтеюганск                                                                                     ', N' ул. Набережная                                                                                     ', 30)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (394060, N' г.Нефтеюганск                                                                                      ', N' ул. Фрунзе                                                                                         ', 43)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (410661, N' г. Нефтеюганск                                                                                     ', N' ул. Школьная                                                                                       ', 50)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (625590, N' г. Нефтеюганск                                                                                     ', N' ул. Коммунистическая                                                                               ', 20)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (625683, N' г. Нефтеюганск                                                                                     ', N' ул. 8 Марта                                                                                        ', NULL)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (400562, N' г. Нефтеюганск                                                                                     ', N' ул. Зеленая                                                                                        ', 32)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (614510, N' г. Нефтеюганск                                                                                     ', N' ул. Маяковского                                                                                    ', 47)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (410542, N' г. Нефтеюганск                                                                                     ', N' ул. Светлая                                                                                        ', 46)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (620839, N' г. Нефтеюганск                                                                                     ', N' ул. Цветочная                                                                                      ', 8)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (443890, N' г. Нефтеюганск                                                                                     ', N' ул. Коммунистическая                                                                               ', 1)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (603379, N' г. Нефтеюганск                                                                                     ', N' ул. Спортивная                                                                                     ', 46)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (603721, N' г. Нефтеюганск                                                                                     ', N' ул. Гоголя                                                                                         ', 41)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (410172, N' г. Нефтеюганск                                                                                     ', N' ул. Северная                                                                                       ', 13)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (420151, N' г. Нефтеюганск                                                                                     ', N' ул. Вишневая                                                                                       ', 32)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (125061, N' г. Нефтеюганск                                                                                     ', N' ул. Подгорная                                                                                      ', 8)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (630370, N' г. Нефтеюганск                                                                                     ', N' ул. Шоссейная                                                                                      ', 24)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (614753, N' г. Нефтеюганск                                                                                     ', N' ул. Полевая                                                                                        ', 35)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (426030, N' г. Нефтеюганск                                                                                     ', N' ул. Маяковского                                                                                    ', 44)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (450375, N' г. Нефтеюганск                                                                                     ', N'ул. Клубная                                                                                         ', 44)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (625560, N' г. Нефтеюганск                                                                                     ', N' ул. Некрасова                                                                                      ', 12)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (630201, N' г. Нефтеюганск                                                                                     ', N' ул. Комсомольская                                                                                  ', 17)
INSERT [dbo].[PickUpPoint] ([zip-code], [city], [street], [appartment]) VALUES (190949, N' г. Нефтеюганск                                                                                     ', N' ул. Мичурина                                                                                       ', 26)
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'B427R5', N'Миска', N'Миска для животных Triol "Стрекоза", 450 мл', N'Для животных', NULL, N'Triol', CAST(400.0000 AS Decimal(19, 4)), 4, 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'D356R4', N'Мячик', N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', N'Товары для собак', NULL, N'trixie', CAST(600.0000 AS Decimal(19, 4)), 2, 16, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'D563F4', N'Игрушка', N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', N'Товары для собак', NULL, N'Triol', CAST(600.0000 AS Decimal(19, 4)), 5, 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'D643B5', N'Сухой корм', N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', N'Товары для кошек', NULL, N'Cat Chow', CAST(4100.0000 AS Decimal(19, 4)), 4, 9, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'E345R4', N'Игрушка', N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'Товары для кошек', NULL, N'Fancy Pets', CAST(199.0000 AS Decimal(19, 4)), 5, 7, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'E431R5', N'Лакомство', N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'Товары для собак', NULL, N'Triol', CAST(170.0000 AS Decimal(19, 4)), 5, 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'E434U6', N'Лакомство', N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', N'Товары для собак', NULL, N'TitBit', CAST(140.0000 AS Decimal(19, 4)), 3, 19, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'E466T6', N'Клетка', N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', N'Товары для собак', NULL, N'Triol', CAST(3500.0000 AS Decimal(19, 4)), 5, 3, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'E532Q5', N'Лакомство', N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'Товары для собак', NULL, N'TitBit', CAST(166.0000 AS Decimal(19, 4)), 5, 18, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'F432F4', N'Сухой корм', N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'Товары для кошек', NULL, N'Pro Plan', CAST(1200.0000 AS Decimal(19, 4)), 3, 15, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'G345E4', N'Мячик', N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'Товары для собак', NULL, N'LIKER', CAST(300.0000 AS Decimal(19, 4)), 3, 19, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'G453T5', N'Щетка-варежка', N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'Для животных', NULL, N'True Touch', CAST(149.0000 AS Decimal(19, 4)), 2, 7, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'G542F5', N'Сухой корм', N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', N'Товары для собак', NULL, N'Pro Plan', CAST(2190.0000 AS Decimal(19, 4)), 4, 7, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'H342F5', N'Игрушка', N'Игрушка для собак Triol Енот 41 см 12141063 серый', N'Товары для собак', NULL, N'Triol', CAST(510.0000 AS Decimal(19, 4)), 2, 17, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'H432F4', N'Миска', N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', N'Для животных', NULL, N'Triol', CAST(385.0000 AS Decimal(19, 4)), 2, 17, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'H436R4', N'Игрушка', N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', N'Товары для собак', NULL, N'Triol', CAST(300.0000 AS Decimal(19, 4)), 2, 15, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'H542R6', N'Лакомство', N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', N'Товары для собак', NULL, N'Triol', CAST(177.0000 AS Decimal(19, 4)), 3, 15, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'H643W2', N'Миска', N'Миска Triol CB02/30231002 100 мл бежевый/голубой', N'Для животных', NULL, N'Triol', CAST(292.0000 AS Decimal(19, 4)), 3, 13, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'K436T5', N'Мячик', N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', N'Товары для собак', NULL, N'Triol', CAST(100.0000 AS Decimal(19, 4)), 4, 21, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'K452T5', N'Лежак', N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', N'Товары для собак', NULL, N'ZooM', CAST(800.0000 AS Decimal(19, 4)), 2, 17, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'M356R4', N'Лакомство', N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', N'Товары для собак', NULL, N'TitBit', CAST(50.0000 AS Decimal(19, 4)), 4, 6, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'Q245F5', N'Игрушка', N'Игрушка для собак Triol Бобер 41 см 12141063 серый', N'Товары для собак', NULL, N'Triol', CAST(510.0000 AS Decimal(19, 4)), 2, 17, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'R356F4', N'Миска', N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'Товары для собак', NULL, N'Nobby', CAST(234.0000 AS Decimal(19, 4)), 3, 17, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'S245R4', N'Сухой корм', N'Сухой корм для кошек CAT CHOW', N'Товары для кошек', NULL, N'Cat Chow', CAST(280.0000 AS Decimal(19, 4)), 3, 8, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'T432F4', N'Сухой корм', N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'Товары для собак', NULL, N'Chappy', CAST(1700.0000 AS Decimal(19, 4)), 2, 5, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'V352R4', N'Сухой корм', N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', N'Товары для собак', NULL, N'Chappy', CAST(1700.0000 AS Decimal(19, 4)), 4, 9, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'V527T5', N'Игрушка', N'Игрушка для собак Triol Ящерица 39 см коричневый', N'Товары для собак', NULL, N'Triol', CAST(640.0000 AS Decimal(19, 4)), 5, 4, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'W548O7', N'Сухой корм', N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', N'Товары для собак', NULL, N'Dog Chow', CAST(600.0000 AS Decimal(19, 4)), 5, 15, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'Y324F4', N'Лакомство', N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Товары для собак', NULL, N'TitBit', CAST(86.0000 AS Decimal(19, 4)), 4, 17, NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'А112Т4', N'Лакомство', N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'Товары для кошек', NULL, N'Dreames', CAST(123.0000 AS Decimal(19, 4)), 3, 6, NULL)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (24, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (27, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (28, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (29, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (30, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (31, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (32, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (33, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (34, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Order__2D27B809] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Order__2D27B809]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Produ__2E1BDC42] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Produ__2E1BDC42]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO


-------------------------------------
--MEMBER
CREATE TABLE [dbo].[MEMBER](
	[Id][int] NOT NULL IDENTITY(1,1),
	[FullName][nvarchar](100) NOT NULL,
	[Email][nvarchar](50) NOT NULL,
	[Password][nvarchar](30) NOT NULL,
	[Address] [nvarchar](30)  NULL,
	[Telephone Number][int] NOT NULL,
	[TotalIncome][float] NULL,

	-----Foreign Keys--------

	[Member Category][int] NOT NULL , --pk member category
	[Last Discount] [int] NULL, --pk discount
	[Last Order] [int]  NULL, --pk basket
	
	CONSTRAINT [PK_MEMBER] PRIMARY KEY ([Id] ASC) 
)

------------------------------------------------
--MEMBER CATEGORY
CREATE TABLE [dbo].[MEMBER CATEGORY](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Category][nvarchar](20) NOT NULL,

	CONSTRAINT [PK_MEMBER_CATEGORY] PRIMARY KEY ([Id] ASC) 
)

------------------------------------------------
--DISCOUNT
CREATE TABLE [dbo].[DISCOUNT](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Date][smalldatetime]  NULL ,
	[Last Discount] [float] NULL,

	CONSTRAINT [PK_DISCOUNT] PRIMARY KEY ([Id] ASC),
)

------------------------------------------------
--PROMOTING PRODUCTS
CREATE TABLE [dbo].[PROMOTING PRODUCTS](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,

-----Foreign Keys--------

	[PPCategory][int] NOT NULL,

	CONSTRAINT [PK_PROMOTING_PRODUCTS] PRIMARY KEY ([Id] ASC)
)


-----------------------------------------------
--PROMOTING PRODUCTS CATEGORY
CREATE TABLE [dbo].[PROMOTING PRODUCTS CATEGORY](

	[Id][int] NOT NULL IDENTITY(1,1),
	[Category][nvarchar](20) NOT NULL,

	CONSTRAINT [PK_PROMOTING_PRODUCTS_CATEGORY] PRIMARY KEY ([Id] ASC) 
	
)

-----------------------------------------------
--BASKET
CREATE TABLE [dbo].[BASKET](

	[BasketNo][int] NOT NULL IDENTITY(1,1),
	[Date][smalldatetime]  NULL ,

	CONSTRAINT [PK_BASKET] PRIMARY KEY ([BasketNo] ASC)
)

-----------------------------------------------
--ADMINISTRATOR
CREATE TABLE [dbo].[ADMINISTRATOR](
	[Id][int] NOT NULL IDENTITY(1,1),
	[FullName][nvarchar](100) NOT NULL,
	[Email][nvarchar](50) NOT NULL,
	[Password][nvarchar](30) NOT NULL,

	CONSTRAINT [PK_ADMINISTRATOR] PRIMARY KEY ([Id] ASC)
)



-----------------------------------------------
--STATIONERY
CREATE TABLE [dbo].[STATIONERY](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,
	[Price][float] NOT NULL,
	[Stock][int] NOT NULL,
	[Description] [nvarchar](200)  NOT NULL,
	[Barcode][bigint] NOT NULL,

	CONSTRAINT [PK_STATIONERY] PRIMARY KEY ([Id] ASC)
)

-----------------------------------------------
--NOTES
CREATE TABLE [dbo].[NOTES](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Title][nvarchar](100) NOT NULL,
	[Description] [nvarchar](200)  NOT NULL,

	-----Foreign Keys--------
[Field Category] [int] NOT NULL,


	CONSTRAINT [PK_NOTES] PRIMARY KEY ([Id] ASC)
)


------------------------------------------------
--FIELD
CREATE TABLE [dbo].[FIELD](

	
	[Id][int] NOT NULL IDENTITY(1,1),
	[Category][nvarchar](20) NOT NULL,
	
	CONSTRAINT [PK_FIELD] PRIMARY KEY ([Id] ASC)
)


-------------------------------------
--KEYRINGS
CREATE TABLE [dbo].[KEYRINGS](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,
	[Stock][int] NOT NULL,
	[Height][float] NOT NULL,
	[Weight][float] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Material] [nvarchar](20)  NOT NULL,

	-----Foreign Keys--------
	[PPCategory] [int] NOT NULL,
	[BasketNo][int] NOT NULL,
	
	
	CONSTRAINT [PK_KEYRINGS] PRIMARY KEY ([Id] ASC) 
)


-------------------------------------
--BANNERS
CREATE TABLE [dbo].[BANNERS](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,
	[Stock][int] NOT NULL,
	[Height][float] NOT NULL,
	[Weight][float] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Material] [nvarchar](20)  NOT NULL,


-----Foreign Keys--------
[PPCategory] [int] NOT NULL,
[BasketNo][int] NOT NULL,
	
	
	CONSTRAINT [PK_BANNERS] PRIMARY KEY ([Id] ASC) 
)

-------------------------------------
--PILLOWS
CREATE TABLE [dbo].[PILLOWS](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,
	[Stock][int] NOT NULL,
	[Height][float] NOT NULL,
	[Weight][float] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,


-----Foreign Keys--------
[PPCategory] [int] NOT NULL,
[BasketNo][int] NOT NULL,
	
	
	CONSTRAINT [PK_PILLOWS] PRIMARY KEY ([Id] ASC) 
)

-------------------------------------
--GLASSES
CREATE TABLE [dbo].[GLASSES](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,
	[Stock][int] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,


-----Foreign Keys--------
	[PPCategory] [int] NOT NULL,
[BasketNo][int] NOT NULL,


	CONSTRAINT [PK_GLASSES] PRIMARY KEY ([Id] ASC) 
)

-------------------------------------
--CANVAS/WOOD
CREATE TABLE [dbo].[CANVAS_WOOD](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,
	[Stock][int] NOT NULL,
	[Height][float] NOT NULL,
	[Weight][float] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Material] [nvarchar](20)  NOT NULL,


-----Foreign Keys--------
[PPCategory] [int] NOT NULL,
[BasketNo][int] NOT NULL,
	
	
	CONSTRAINT [PK_CANVAS_WOOD] PRIMARY KEY ([Id] ASC) 
)

-------------------------------------
--STICKERS
CREATE TABLE [dbo].[STICKERS](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,
	[Stock][int] NOT NULL,
	[Height][float] NOT NULL,
	[Weight][float] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	
-----Foreign Keys--------
[PPCategory] [int] NOT NULL,
[BasketNo][int] NOT NULL,
	
	
	CONSTRAINT [PK_STICKERS] PRIMARY KEY ([Id] ASC) 
)

-------------------------------------
--BADGES
CREATE TABLE [dbo].[BADGES](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,
	[Stock][int] NOT NULL,
	[Height][float] NOT NULL,
	[Weight][float] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	

-----Foreign Keys--------
[PPCategory] [int] NOT NULL,
[BasketNo][int] NOT NULL,

	
	CONSTRAINT [PK_BADGES] PRIMARY KEY ([Id] ASC) 
)

-------------------------------------
--T-SHIRTS
CREATE TABLE [dbo].[TSHIRTS](
	[Id][int] NOT NULL IDENTITY(1,1),
	[Name][nvarchar](100) NOT NULL,
	[Stock][int] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](20)  NOT NULL,


-----Foreign Keys--------
[PPCategory] [int] NOT NULL,
[BasketNo][int] NOT NULL,
	
	
	CONSTRAINT [PK_TSHIRTS] PRIMARY KEY ([Id] ASC) 
)






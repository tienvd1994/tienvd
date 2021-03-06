USE [ATI.VinhHung]
GO
/****** Object:  Table [dbo].[Agencies]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agencies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[UnsignName] [nvarchar](250) NOT NULL,
	[SeoLink] [varchar](250) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Province] [nvarchar](50) NOT NULL,
	[ProvinceSeolink] [varchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[DistrictSeolink] [varchar](50) NOT NULL,
	[Level] [tinyint] NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Website] [nvarchar](100) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Long] [float] NOT NULL,
	[Lang] [float] NOT NULL,
	[Introduce] [nvarchar](max) NOT NULL,
	[OrderNo] [int] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[ViewNo] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Image] [nvarchar](400) NOT NULL,
	[Thumb] [nvarchar](4000) NULL,
	[LangId] [int] NULL,
 CONSTRAINT [PK_Agencies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BussinessAreas]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BussinessAreas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[SeoLink] [varchar](150) NOT NULL,
	[EnglishName] [nvarchar](150) NOT NULL,
	[SeoLink_En] [varchar](150) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Content_En] [nvarchar](max) NOT NULL,
	[ViewNo] [int] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[LangId] [int] NULL,
 CONSTRAINT [PK_BussinessAreas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CateNews]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CateNews](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnglishName] [nvarchar](50) NOT NULL,
	[OrderNo] [smallint] NOT NULL,
	[SeoLink] [varchar](50) NULL,
	[LangId] [int] NULL,
	[Type] [int] NULL,
	[UnsignName] [varchar](50) NULL,
 CONSTRAINT [PK_CateNews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CateProduct]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CateProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SeoLink] [varchar](50) NOT NULL,
	[EnglishName] [nvarchar](50) NOT NULL,
	[ParrentCateId] [smallint] NOT NULL,
	[ParrentCateName] [nvarchar](50) NOT NULL,
	[OrderNo] [smallint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDelete] [bit] NOT NULL,
	[ChildCount] [smallint] NOT NULL,
	[LangId] [int] NULL,
	[UnsignName] [nvarchar](50) NULL,
	[IsShowHomePage] [bit] NULL,
 CONSTRAINT [PK_CateProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommonInfo]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonInfo](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[HeadOffice] [nvarchar](500) NOT NULL,
	[HeadOffice_En] [nvarchar](500) NOT NULL,
	[Office] [nvarchar](4000) NOT NULL,
	[Office_En] [nvarchar](4000) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Fax] [nvarchar](50) NOT NULL,
	[ShortName] [nvarchar](50) NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[EnglishName] [nvarchar](150) NOT NULL,
	[Long] [float] NULL,
	[Lang] [float] NULL,
	[Facebook] [nvarchar](50) NOT NULL,
	[Yahoo] [nvarchar](100) NOT NULL,
	[Skype] [nvarchar](100) NOT NULL,
	[Logo] [nvarchar](500) NOT NULL,
	[Summary] [nvarchar](3000) NULL,
	[Summary_En] [nvarchar](3000) NULL,
	[LangId] [tinyint] NULL,
	[Logo2] [varchar](500) NULL,
 CONSTRAINT [PK_CommonInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConfigImage]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Name_En] [varchar](50) NULL,
	[Image] [varchar](500) NULL,
	[Url] [varchar](500) NULL,
	[Status] [int] NULL,
	[UnsignName] [varchar](50) NULL,
	[UnsignName_En] [varchar](50) NULL,
	[LangId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[CreatedUserId] [int] NULL,
	[CreatedFullname] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[Summary] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ConfigImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[Company] [nvarchar](150) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Content] [nvarchar](4000) NOT NULL,
	[SendTime] [datetime] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[UnsignName] [varchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContentStatic]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentStatic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](512) NOT NULL,
	[LangId] [tinyint] NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContentStatic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contractor]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contractor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[UnsignName] [nvarchar](150) NULL,
	[SeoLink] [nvarchar](150) NOT NULL,
	[EnglishName] [nvarchar](150) NOT NULL,
	[Summary] [nvarchar](300) NULL,
	[Summary_En] [nvarchar](300) NULL,
	[SeoLink_En] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[SlideShow] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Content_En] [nvarchar](max) NOT NULL,
	[ViewNo] [smallint] NOT NULL,
	[OrderNo] [smallint] NOT NULL,
	[IsDelete] [smallint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[LangId] [tinyint] NULL,
 CONSTRAINT [PK_Contractor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[EnglishName] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Website] [nvarchar](100) NOT NULL,
	[Image2] [nvarchar](200) NULL,
	[OrderNo] [smallint] NOT NULL,
	[Status] [bit] NOT NULL,
	[LangId] [tinyint] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerSay]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerSay](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Title_En] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Company_En] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](300) NOT NULL,
	[Content_En] [nvarchar](300) NOT NULL,
	[OrderNo] [smallint] NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[LangId] [int] NULL,
	[UnsignName] [varchar](50) NULL,
	[UnsignName_En] [varchar](50) NULL,
 CONSTRAINT [PK_CustomerSay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Districts]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SeoLink] [nvarchar](50) NOT NULL,
	[ProvinceSeoLink] [nvarchar](50) NOT NULL,
	[National] [nvarchar](50) NOT NULL,
	[LangId] [tinyint] NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FAQs]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](300) NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[Time] [datetime] NOT NULL,
	[LangId] [tinyint] NULL,
 CONSTRAINT [PK_FAQs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Introduce]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Introduce](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[SeoLink] [nvarchar](50) NULL,
	[EnglishTitle] [nvarchar](50) NULL,
	[SeoLink_En] [nchar](10) NULL,
	[Summary] [nvarchar](200) NULL,
	[Summary_En] [nvarchar](200) NULL,
	[Content] [nvarchar](max) NULL,
	[LastUpdateTime] [datetime] NULL,
	[LastUpdateUser] [nvarchar](50) NULL,
	[ViewNo] [int] NULL,
	[Content_En] [nvarchar](max) NULL,
	[LangId] [tinyint] NULL,
	[IsShowHomePage] [bit] NULL,
	[UnsignName] [varchar](50) NULL,
	[UnsignName_En] [varchar](50) NULL,
 CONSTRAINT [PK_Introduce] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[SeoLink] [varchar](150) NOT NULL,
	[Title_En] [nvarchar](150) NOT NULL,
	[SeoLink_En] [varchar](150) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Description_En] [nvarchar](max) NOT NULL,
	[Requirement] [nvarchar](max) NOT NULL,
	[Requirement_En] [nvarchar](max) NOT NULL,
	[Benefit] [nvarchar](4000) NOT NULL,
	[Benefit_En] [nvarchar](4000) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[Profile] [nvarchar](4000) NOT NULL,
	[ContactInfo] [nvarchar](300) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[LangId] [tinyint] NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Members]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[EnglishName] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Fax] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Website] [nvarchar](100) NOT NULL,
	[LangId] [tinyint] NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateId] [int] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[SeoLink] [varchar](200) NOT NULL,
	[Title_En] [nvarchar](200) NOT NULL,
	[SeoLink_En] [varchar](200) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Summary] [nvarchar](300) NOT NULL,
	[Summary_En] [nvarchar](300) NULL,
	[Content] [nvarchar](max) NULL,
	[Content_En] [nvarchar](max) NULL,
	[PostTime] [datetime] NOT NULL,
	[Author] [nvarchar](50) NULL,
	[ViewNo] [int] NOT NULL,
	[IsHot] [smallint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[UnsignTitle] [varchar](200) NULL,
	[LangId] [int] NULL,
	[Type] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[CreatedUserId] [int] NULL,
	[CreatedFullname] [nvarchar](150) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IP] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[Items] [nvarchar](max) NOT NULL,
	[OrderTime] [datetime] NOT NULL,
	[Status] [smallint] NOT NULL,
	[LangId] [tinyint] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partner]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[SeoLink] [nvarchar](150) NOT NULL,
	[EnglishName] [nvarchar](150) NOT NULL,
	[SeoLink_En] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Summary] [nvarchar](300) NOT NULL,
	[Summary_En] [nvarchar](300) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Content_En] [nvarchar](max) NULL,
	[ViewNo] [int] NOT NULL,
	[OrderNo] [smallint] NULL,
	[LangId] [tinyint] NULL,
	[CreatedUserId] [int] NULL,
	[CreatedFullname] [nvarchar](150) NULL,
	[CreatedDate] [datetime] NULL,
	[UnsignName] [varchar](150) NULL,
	[UnsignName_En] [varchar](150) NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateId] [int] NOT NULL,
	[CreateDate] [nvarchar](100) NULL,
	[Customer] [nvarchar](100) NULL,
	[Name] [nvarchar](150) NOT NULL,
	[SeoLink] [nvarchar](150) NOT NULL,
	[UnsignName] [varchar](150) NOT NULL,
	[EnglishName] [nvarchar](150) NOT NULL,
	[SeoLink_En] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Summary] [nvarchar](300) NOT NULL,
	[Summary_En] [nvarchar](300) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Content_En] [nvarchar](max) NULL,
	[ViewNo] [int] NOT NULL,
	[OrderNo] [smallint] NULL,
	[Status] [tinyint] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Tags] [nvarchar](500) NULL,
	[IsHot] [tinyint] NOT NULL,
	[LangId] [int] NULL,
	[IsShowHomePage] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SeoLink] [nvarchar](50) NOT NULL,
	[National] [nvarchar](30) NOT NULL,
	[CountryCode] [varchar](4) NULL,
	[ZipCode] [varchar](6) NULL,
	[LangId] [tinyint] NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[SeoLink] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LangId] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tracker]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tracker](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Browser] [varchar](20) NULL,
	[Version] [varchar](50) NULL,
	[OS] [varchar](15) NULL,
	[PageUrl] [varchar](400) NULL,
	[UrlReferrer] [varchar](450) NULL,
	[SessionID] [varchar](30) NULL,
	[IP] [varchar](20) NULL,
	[InTime] [datetime] NOT NULL,
	[Country] [varchar](20) NULL,
	[City] [nvarchar](20) NULL,
	[IsMobileDevice] [bit] NOT NULL,
	[MobileDeviceManufacturer] [varchar](20) NULL,
	[LangId] [int] NULL,
 CONSTRAINT [PK_Tracker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[LangId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CateNews] ON 

INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId], [Type], [UnsignName]) VALUES (9, N'Tin tức và sự kiện', N'Tin tức và sự kiện', 1, N'tin-tuc-va-su-kien', 0, 0, N'tin tuc va su kien')
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId], [Type], [UnsignName]) VALUES (10, N'Giải pháp cho Doanh nghiệp', N'Giải pháp cho Doanh nghiệp', 1, N'giai-phap-cho-doanh-nghiep', 0, 1, N'giai phap cho doanh nghiep')
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId], [Type], [UnsignName]) VALUES (11, N'Giải pháp mạng', N'Giải pháp mạng', 2, N'giai-phap-mang', 0, 1, N'giai phap mang')
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId], [Type], [UnsignName]) VALUES (12, N'Giải pháp đo lường', N'Giải pháp đo lường', 3, N'giai-phap-do-luong', 0, 1, N'giai phap do luong')
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId], [Type], [UnsignName]) VALUES (13, N'Giải pháp công nghệ trồng nấm', N'Giải pháp công nghệ trồng nấm', 4, N'giai-phap-cong-nghe-trong-nam', 0, 1, N'giai phap cong nghe trong nam')
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId], [Type], [UnsignName]) VALUES (14, N'Giải pháp cấy mô, tế bào', N'Giải pháp cấy mô, tế bào', 5, N'giai-phap-cay-mo-te-bao', 0, 1, N'giai phap cay mo te bao')
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId], [Type], [UnsignName]) VALUES (15, N'Tin công nghệ', N'Tin công nghệ', 2, N'tin-cong-nghe', 0, 0, N'tin cong nghe')
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId], [Type], [UnsignName]) VALUES (16, N'Tin khoa học kỹ thuật', N'Tin khoa học kỹ thuật', 3, N'tin-khoa-hoc-ky-thuat', 0, 0, N'tin khoa hoc ky thuat')
SET IDENTITY_INSERT [dbo].[CateNews] OFF
SET IDENTITY_INSERT [dbo].[CateProduct] ON 

INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (16, N'Phần mềm', N'phan-mem', N'Phần mềm', -1, N'', 1, N'<p>Phần mềm</p>
', 0, 0, 0, N'phan mem', 1)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (17, N'Software', N'software', N'Software', -1, N'', 1, N'<p>Software</p>
', 0, 0, 1, N'software', 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (18, N'Công nghệ thông tin', N'cong-nghe-thong-tin', N'Công nghệ thông tin', -1, N'', 2, N'<p>Công nghệ thông tin</p>
', 0, 4, 0, N'cong nghe thong tin', 1)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (19, N'Thiết bị giáo dục', N'thiet-bi-giao-duc', N'Thiết bị giáo dục', -1, N'', 3, N'<p>Thiết bị giáo dục</p>
', 0, 0, 0, N'thiet bi giao duc', 1)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (20, N'Thiết bị khoa học công nghệ', N'thiet-bi-khoa-hoc-cong-nghe', N'Thiết bị khoa học công nghệ', -1, N'', 4, N'<p><span style="font-size:12px">Thiết bị khoa học công nghệ</span></p>
', 0, 0, 0, N'thiet bi khoa hoc cong nghe', 1)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (21, N'Thiết bị y tế', N'thiet-bi-y-te', N'Thiết bị y tế', -1, N'', 5, N'<p>Thiết bị y tế</p>
', 0, 0, 0, N'thiet bi y te', 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (22, N'Thiết bị xây dựng', N'thiet-bi-xay-dung', N'Thiết bị xây dựng', -1, N'', 6, N'<p>Thiết bị xây dựng</p>
', 0, 0, 0, N'thiet bi xay dung', 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (23, N'Laptop', N'laptop', N'Laptop', 18, N'', 1, N'<p>Laptop</p>
', 0, 0, 0, N'laptop', 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (24, N'Desktop', N'desktop', N'Desktop', 18, N'', 2, N'<p>Desktop</p>
', 0, 3, 0, N'desktop', 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (25, N'Thiết bị mạng', N'thiet-bi-mang', N'Thiết bị mạng', 18, N'', 3, N'<p>Thiết bị mạng</p>
', 0, 0, 0, N'thiet bi mang', 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (26, N'Server', N'server', N'Server', 18, N'', 4, N'<p>Server</p>
', 0, 0, 0, N'server', 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (27, N'CMS', N'cms', N'CMS', 24, N'', 1, N'<p>CMS</p>
', 0, 0, 0, N'cms', 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (28, N'Dell', N'dell', N'Dell', 24, N'', 2, N'<p>Dell</p>
', 0, 0, 0, N'dell', 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId], [UnsignName], [IsShowHomePage]) VALUES (29, N'HP', N'hp', N'HP', 24, N'', 3, N'<p>HP</p>
', 0, 0, 0, N'hp', 0)
SET IDENTITY_INSERT [dbo].[CateProduct] OFF
SET IDENTITY_INSERT [dbo].[CommonInfo] ON 

INSERT [dbo].[CommonInfo] ([ID], [HeadOffice], [HeadOffice_En], [Office], [Office_En], [Mobile], [Phone], [Fax], [ShortName], [Name], [Email], [EnglishName], [Long], [Lang], [Facebook], [Yahoo], [Skype], [Logo], [Summary], [Summary_En], [LangId], [Logo2]) VALUES (7, N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'0987654321', N'84.4. 3782 1388', N'sdfg', N'Vinh Hung Group', N'Vinh Hung Group', N'info@vinhhunggroup.com.vn', N'Vinh Hung Group', NULL, NULL, N'https://www.facebook.com/tien.vuduy.94', N'sdfg', N'dfsdf', N'/Uploads/logo.png', N'Nhân viên Vĩnh Hưng Group dù ở đâu, làm việc gì cũng hướng về Công ty với tình cảm cao đẹp. Nói đến Vĩnh Hưng Group trước tiên phải nói về tính văn hóa, con người và những giá trị tinh thần bao năm xây đắp. Văn hóa đó, những con người đó đóng vai trò quyết định trong sự nghiệp của Vĩnh Hưng Group hôm nay và cả mai sau.', NULL, 0, N'/Uploads/logo2.png')
INSERT [dbo].[CommonInfo] ([ID], [HeadOffice], [HeadOffice_En], [Office], [Office_En], [Mobile], [Phone], [Fax], [ShortName], [Name], [Email], [EnglishName], [Long], [Lang], [Facebook], [Yahoo], [Skype], [Logo], [Summary], [Summary_En], [LangId], [Logo2]) VALUES (9, N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'0987654321', N'84.4. 3782 1388', N'sdfg', N'Vinh Hung Group', N'Vinh Hung Group', N'info@vinhhunggroup.com.vn', N'Vinh Hung Group', NULL, NULL, N'dfsg', N'sdfg', N'dfsdf', N'/Uploads/logo.png', N'Nhân viên Vĩnh Hưng Group dù ở đâu, làm việc gì cũng hướng về Công ty với tình cảm cao đẹp. Nói đến Vĩnh Hưng Group trước tiên phải nói về tính văn hóa, con người và những giá trị tinh thần bao năm xây đắp. Văn hóa đó, những con người đó đóng vai trò quyết định trong sự nghiệp của Vĩnh Hưng Group hôm nay và cả mai sau.', NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[CommonInfo] OFF
SET IDENTITY_INSERT [dbo].[ConfigImage] ON 

INSERT [dbo].[ConfigImage] ([Id], [Name], [Name_En], [Image], [Url], [Status], [UnsignName], [UnsignName_En], [LangId], [CreatedTime], [CreatedUserId], [CreatedFullname], [Title], [Summary]) VALUES (4, NULL, NULL, N'/Uploads/image-1.jpg', N'http://vinhhunggroup.com.vn/home', 1, N'', N'', 0, CAST(N'2017-09-27T13:35:27.073' AS DateTime), 1, N'admin', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ConfigImage] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Name], [Title], [Type], [Company], [Address], [Mobile], [Email], [Content], [SendTime], [Status], [UnsignName]) VALUES (5, N'Hoàng Văn Hưng', N'', N'Mua sản phẩm', N'Không có', N'', N'1234567890', N'hunghv@gmail.com', N'Gửi thư', CAST(N'2017-09-28T06:16:54.547' AS DateTime), 0, N'hoang van hunghunghvgmailcom 1234567890')
INSERT [dbo].[Contact] ([ID], [Name], [Title], [Type], [Company], [Address], [Mobile], [Email], [Content], [SendTime], [Status], [UnsignName]) VALUES (6, N'Bùi Như Lạc', N'', N'Mua sản phẩm', N'', N'', N'0987654321', N'lacbn@gmail.com', N'Gửi yêu cầu mua liên hệ', CAST(N'2017-09-28T06:18:29.370' AS DateTime), 0, N'bui nhu laclacbngmailcom 0987654321')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[CustomerSay] ON 

INSERT [dbo].[CustomerSay] ([ID], [FullName], [Title], [Title_En], [Company], [Company_En], [Content], [Content_En], [OrderNo], [Image], [LangId], [UnsignName], [UnsignName_En]) VALUES (3, N'IBM', N'http://192.168.100.200:89', N'http://192.168.100.200:89', N'', N'', N'', N'', 1, N'/Uploads/imb.png', 0, N'ibm', N'ibm')
INSERT [dbo].[CustomerSay] ([ID], [FullName], [Title], [Title_En], [Company], [Company_En], [Content], [Content_En], [OrderNo], [Image], [LangId], [UnsignName], [UnsignName_En]) VALUES (4, N'Cisco', N'https://www.cisco.com/', N'https://www.cisco.com/', N'', N'', N'', N'', 2, N'/Uploads/cisco.png', 0, N'cisco', N'cisco')
INSERT [dbo].[CustomerSay] ([ID], [FullName], [Title], [Title_En], [Company], [Company_En], [Content], [Content_En], [OrderNo], [Image], [LangId], [UnsignName], [UnsignName_En]) VALUES (5, N'Oracle', N'https://www.oracle.com/index.html', N'https://www.oracle.com/index.html', N'', N'', N'', N'', 3, N'/Uploads/oracle.png', 0, N'oracle', N'oracle')
INSERT [dbo].[CustomerSay] ([ID], [FullName], [Title], [Title_En], [Company], [Company_En], [Content], [Content_En], [OrderNo], [Image], [LangId], [UnsignName], [UnsignName_En]) VALUES (6, N'hp', N'http://www8.hp.com/vn/en/home.html', N'http://www8.hp.com/vn/en/home.html', N'', N'', N'', N'', 4, N'/Uploads/hp.png', 0, N'hp', N'hp')
INSERT [dbo].[CustomerSay] ([ID], [FullName], [Title], [Title_En], [Company], [Company_En], [Content], [Content_En], [OrderNo], [Image], [LangId], [UnsignName], [UnsignName_En]) VALUES (7, N'Agia', N'', N'', N'', N'', N'', N'', 1, N'/Uploads/agia.png', 0, N'agia', N'agia')
INSERT [dbo].[CustomerSay] ([ID], [FullName], [Title], [Title_En], [Company], [Company_En], [Content], [Content_En], [OrderNo], [Image], [LangId], [UnsignName], [UnsignName_En]) VALUES (8, N'Pola', N'', N'', N'', N'', N'', N'', 5, N'/Uploads/Pola.png', 0, N'pola', N'pola')
SET IDENTITY_INSERT [dbo].[CustomerSay] OFF
SET IDENTITY_INSERT [dbo].[Introduce] ON 

INSERT [dbo].[Introduce] ([ID], [Title], [SeoLink], [EnglishTitle], [SeoLink_En], [Summary], [Summary_En], [Content], [LastUpdateTime], [LastUpdateUser], [ViewNo], [Content_En], [LangId], [IsShowHomePage], [UnsignName], [UnsignName_En]) VALUES (5, N'Văn hóa công ty', N'van-hoa-cong-ty', NULL, NULL, NULL, NULL, N'<p><img class="img-responsive img-tab-space" src="/Uploads/images.jpg" style="float:right" /></p>

<p>Nhân viên Vĩnh Hưng Group dù ở đâu, làm việc gì cũng hướng về Công ty với tình cảm cao đẹp. Nói đến Vĩnh Hưng Group trước tiên phải nói về tính văn hóa, con người và những giá trị tinh thần bao năm xây đắp. Văn hóa đó, những con người đó đóng vai trò quyết định trong sự nghiệp của Vĩnh Hưng Group hôm nay và cả mai sau.</p>

<p>Tinh thần, giá trị nhân học là nền móng cho văn hóa Vĩnh Hưng Group phát triển. Biểu hiện cao nhất của con người là sự lao động quên mình, sáng tạo tột bực tạo nên thành công cho Vĩnh Hưng Group trên các mặt trận.</p>
', CAST(N'2017-09-27T17:11:39.120' AS DateTime), N'admin', NULL, N'<p><img class="img-responsive img-tab-space" src="/Uploads/images.jpg" style="float:right" /></p>

<p>Nhân viên Vĩnh Hưng Group dù ở đâu, làm việc gì cũng hướng về Công ty với tình cảm cao đẹp. Nói đến Vĩnh Hưng Group trước tiên phải nói về tính văn hóa, con người và những giá trị tinh thần bao năm xây đắp. Văn hóa đó, những con người đó đóng vai trò quyết định trong sự nghiệp của Vĩnh Hưng Group hôm nay và cả mai sau.</p>

<p>Tinh thần, giá trị nhân học là nền móng cho văn hóa Vĩnh Hưng Group phát triển. Biểu hiện cao nhất của con người là sự lao động quên mình, sáng tạo tột bực tạo nên thành công cho Vĩnh Hưng Group trên các mặt trận.</p>
', 0, 0, N'van hoa cong ty', N'van hoa cong ty')
INSERT [dbo].[Introduce] ([ID], [Title], [SeoLink], [EnglishTitle], [SeoLink_En], [Summary], [Summary_En], [Content], [LastUpdateTime], [LastUpdateUser], [ViewNo], [Content_En], [LangId], [IsShowHomePage], [UnsignName], [UnsignName_En]) VALUES (6, N'Đội ngũ nhân viên', N'doi-ngu-nhan-vien', NULL, NULL, NULL, NULL, N'<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Đội ngũ nhân viên</span></p>
', CAST(N'2017-09-27T17:17:00.410' AS DateTime), N'admin', NULL, NULL, 0, 0, N'doi ngu nhan vien', N'doi ngu nhan vien')
INSERT [dbo].[Introduce] ([ID], [Title], [SeoLink], [EnglishTitle], [SeoLink_En], [Summary], [Summary_En], [Content], [LastUpdateTime], [LastUpdateUser], [ViewNo], [Content_En], [LangId], [IsShowHomePage], [UnsignName], [UnsignName_En]) VALUES (7, N'Phương châm hoạt động', N'phuong-cham-hoat-dong', NULL, NULL, NULL, NULL, N'<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Phương châm hoạt động</span></p>
', CAST(N'2017-09-27T17:17:16.457' AS DateTime), N'admin', NULL, NULL, 0, 0, N'phuong cham hoat dong', N'phuong cham hoat dong')
INSERT [dbo].[Introduce] ([ID], [Title], [SeoLink], [EnglishTitle], [SeoLink_En], [Summary], [Summary_En], [Content], [LastUpdateTime], [LastUpdateUser], [ViewNo], [Content_En], [LangId], [IsShowHomePage], [UnsignName], [UnsignName_En]) VALUES (8, N'Định hướng phát triển', N'dinh-huong-phat-trien', NULL, NULL, NULL, NULL, N'<p>Định hướng phát triển</p>
', CAST(N'2017-09-27T17:17:53.970' AS DateTime), N'admin', NULL, NULL, 0, 0, N'dinh huong phat trien', N'dinh huong phat trien')
INSERT [dbo].[Introduce] ([ID], [Title], [SeoLink], [EnglishTitle], [SeoLink_En], [Summary], [Summary_En], [Content], [LastUpdateTime], [LastUpdateUser], [ViewNo], [Content_En], [LangId], [IsShowHomePage], [UnsignName], [UnsignName_En]) VALUES (9, N'Phong cách làm việc', N'phong-cach-lam-viec', NULL, NULL, NULL, NULL, N'<p>Phong cách làm việc</p>
', CAST(N'2017-09-27T17:18:21.373' AS DateTime), N'admin', NULL, NULL, 0, 0, N'phong cach lam viec', N'phong cach lam viec')
SET IDENTITY_INSERT [dbo].[Introduce] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (13, 9, N'Xu hướng Laptop của năm 2014', N'xu-huong-laptop-cua-nam-2014', N'Xu hướng Laptop của năm 2014', N'xu-huong-laptop-cua-nam-2014', N'/Uploads/laptop1.jpg', N'Năm nay, Hội chợ điện tử tiêu dùng quốc tế (CES 2014) nổi bật với rất nhiều sản phẩm công nghệ được dự đoán là xu hướng cho cả năm dài,...', N'Năm nay, Hội chợ điện tử tiêu dùng quốc tế (CES 2014) nổi bật với rất nhiều sản phẩm công nghệ được dự đoán là xu hướng cho cả năm dài,...', N'<p style="text-align:justify"><span style="font-size:small">Tại&nbsp;<a href="http://www.24h.com.vn/ces-2013-c407e2482.html" style="color: rgb(39, 39, 39); text-decoration-line: none;">CES</a>&nbsp;2014, Lenovo đã tung ra hàng loạt các sản phẩm thuộc danh mục thiết bị đa chế độ sử dụng, như<strong>&nbsp;MIIX 2</strong>&nbsp;- laptop ba chế độ có thể tháo rời;&nbsp;<strong>YOGA 2</strong>&nbsp;- chiếc laptop chuyển đổi thông minh hơn với bốn chế độ sử dụng độc đáo; và cuối cùng là Flex<strong>&nbsp;14D</strong>&nbsp;và&nbsp;<strong>15D</strong>&nbsp;- bộ đôi laptop chuyển đổi chế độ kép.</span></p>

<p style="text-align:justify"><span style="font-size:small"><strong>MIIX 2</strong>&nbsp;gồm hai dòng có kích thước màn hình 10-inch và 11-inch với thiết kế có thể tháo rời cùng các chế độ sử dụng Laptop, Stand và Tablet.</span></p>

<p style="text-align:justify"><span style="font-size:small">MIIX 2 phiên bản&nbsp;<em>10-inch</em>&nbsp;mỏng 9,14mm và nặng 590gram, sử dụng vi xử lý lõi tứ Intel Atom 64-bit và hệ điều hành Windows 8.1. Máy là sự pha trộn lý tưởng giữa tính năng di động và tính năng giải trí với màn hình FHD 1920 x 1200, cảm ứng chạm 10 ngón, kết nối Wi-Fi và tùy chọn 3G, loa âm thanh vòm JBL cho trải nghiệm âm thanh phong phú, lưu trữ eMMC 128GB cùng một khe cắm thẻ nhớ micro SD có thể nâng cấp lên 32GB để chứa nhạc, ảnh và nhiều dữ liệu khác. Máy được trang bị camera sau 5MP và cemara trước 2MP độ phân giải 720p.</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 1" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522508-ww_images_-_product_photography_lenovo_miix_2_10--_product_tour_01.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Trong khi MIIX 2 bản 10-inch tối ưu hóa khả năng di động thì phiên bản&nbsp;<em>11-inch&nbsp;</em>lại tập trung vào việc nâng cao hiệu suất với bộ xử lý Intel Core i5 thế hệ thứ 4, dung lượng lưu trữ lớn hơn - 256 GB SSD và sở hữu màn hình FHD độ phân giải 1920 x 1200 với tấm nền IPS cho góc nhìn rộng. Phiên bản 11-inch cũng được trang bị những tính năng giống mẫu 10-inch với Windows 8.1, hỗ trợ cảm ứng chạm 10 ngón, WiFi và tùy chọn 3G, loa JBL...</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 2" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522520-ww_image_consumer_lenovo_miix_2_dynamic_shot_option_1_high_res.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Cả hai mẫu MIIX 2 đều có màu xám và bạc, có thể dễ dàng kết nối, lưu trữ và truyền phát nội dung sang một màn hình lớn hơn thông qua cổng mini HDMI, một đầu đọc thẻ SD, cổng micro USB và hỗ trợ cổng USB 2.0 có trên bàn phím. Hiện chưa có thông tin về giá của 2 sản phẩm này.</span></p>

<p style="text-align:justify"><span style="font-size:small"><strong>YOGA 2</strong>&nbsp;thì thừa hưởng thiết kế lật, gấp 360 độ nổi tiếng từ dòng Yoga trước đây nhưng được cải tiến với các thông số kỹ thuật hiện đại, gồm mẫu 11-inch và 13-inch.</span></p>

<p style="text-align:justify"><span style="font-size:small">Mẫu máy&nbsp;<em>11-inch</em>&nbsp;chỉ mỏng 17mm, nặng 1,3kg và được trang bị vi xử lý lõi tứ Intel Pentium thế hệ mới cho hiệu năng hoạt động cao. Người dùng có thể lưu trữ rất nhiều tập tin cá nhân bao gồm các bức ảnh, những bộ phim và game với 500 GB dung lượng ổ cứng.</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 3" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522550-ww_images_-_product_photography_lenovo_yoga_2_11--_orange_standard_02.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Trong một thiết kế lớn hơn, mạnh mẽ hơn, mẫu máy YOGA 2 phiên bản&nbsp;<em>13-inch</em>&nbsp;mỏng 17,27mm, nặng 1,59kg và được trang bị bộ xử lý Intel Core i5 thế hệ thứ 4, bàn phím có đèn nền backlit và màn hình Full HD độ phân giải 1920 x 1080. dung lượng ổ cứng lên đến 500GB HDD hoặc SSHD.</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 4" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522570-ww_image_consumer_lenovo_yoga_2_echo_shot_option_5_low_res3113x2783.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Bên cạnh đó,&nbsp;<strong>Flex 14D</strong>&nbsp;và&nbsp;<strong>15D&nbsp;</strong>tiếp tục mở rộng lựa chọn cho người dùng trong xu hướng laptop có thể chuyển đổi đa chế độ sử dụng khi mang đến hiệu năng hoạt động mạnh mẽ nhờ sử dụng bộ vi xử lý AMD A6 lõi tứ cùng card đồ họa AMD Radeon. Cả Flex 14D và 15D đều cung cấp hai chế độ sử dụng là Laptop và Stand chỉ trong một thiết bị duy nhất.</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 5" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522592-flex-14d_silver-c-cover-_hero_05.jpg" /></span></p>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 6" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522599-flex-14d_silver-c-cover-_hero_06.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Dự kiến, YOGA 2 bản 11-inch sẽ ra mắt vào tháng 2 tới, còn bản 13-inch là vào cuối tháng 1 này, với giá khởi điểm lần lượt từ 529 USD và 999 USD, tại các hệ thống Best Buy, Best Buy Canada, Future Shop và qua trang chủ của nhà sản xuất. Còn hai mẫu máy Flex14D và 15D có giá khởi điểm từ 499 USD.</span></p>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-size:small">Tổng hợp theo nguồn&nbsp;<a href="http://hn.24h.com.vn/" style="color: rgb(39, 39, 39); text-decoration-line: none;">http://hn.24h.com.vn</a></span></p>
', N'<p style="text-align:justify"><span style="font-size:small">Tại&nbsp;<a href="http://www.24h.com.vn/ces-2013-c407e2482.html" style="color: rgb(39, 39, 39); text-decoration-line: none;">CES</a>&nbsp;2014, Lenovo đã tung ra hàng loạt các sản phẩm thuộc danh mục thiết bị đa chế độ sử dụng, như<strong>&nbsp;MIIX 2</strong>&nbsp;- laptop ba chế độ có thể tháo rời;&nbsp;<strong>YOGA 2</strong>&nbsp;- chiếc laptop chuyển đổi thông minh hơn với bốn chế độ sử dụng độc đáo; và cuối cùng là Flex<strong>&nbsp;14D</strong>&nbsp;và&nbsp;<strong>15D</strong>&nbsp;- bộ đôi laptop chuyển đổi chế độ kép.</span></p>

<p style="text-align:justify"><span style="font-size:small"><strong>MIIX 2</strong>&nbsp;gồm hai dòng có kích thước màn hình 10-inch và 11-inch với thiết kế có thể tháo rời cùng các chế độ sử dụng Laptop, Stand và Tablet.</span></p>

<p style="text-align:justify"><span style="font-size:small">MIIX 2 phiên bản&nbsp;<em>10-inch</em>&nbsp;mỏng 9,14mm và nặng 590gram, sử dụng vi xử lý lõi tứ Intel Atom 64-bit và hệ điều hành Windows 8.1. Máy là sự pha trộn lý tưởng giữa tính năng di động và tính năng giải trí với màn hình FHD 1920 x 1200, cảm ứng chạm 10 ngón, kết nối Wi-Fi và tùy chọn 3G, loa âm thanh vòm JBL cho trải nghiệm âm thanh phong phú, lưu trữ eMMC 128GB cùng một khe cắm thẻ nhớ micro SD có thể nâng cấp lên 32GB để chứa nhạc, ảnh và nhiều dữ liệu khác. Máy được trang bị camera sau 5MP và cemara trước 2MP độ phân giải 720p.</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 1" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522508-ww_images_-_product_photography_lenovo_miix_2_10--_product_tour_01.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Trong khi MIIX 2 bản 10-inch tối ưu hóa khả năng di động thì phiên bản&nbsp;<em>11-inch&nbsp;</em>lại tập trung vào việc nâng cao hiệu suất với bộ xử lý Intel Core i5 thế hệ thứ 4, dung lượng lưu trữ lớn hơn - 256 GB SSD và sở hữu màn hình FHD độ phân giải 1920 x 1200 với tấm nền IPS cho góc nhìn rộng. Phiên bản 11-inch cũng được trang bị những tính năng giống mẫu 10-inch với Windows 8.1, hỗ trợ cảm ứng chạm 10 ngón, WiFi và tùy chọn 3G, loa JBL...</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 2" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522520-ww_image_consumer_lenovo_miix_2_dynamic_shot_option_1_high_res.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Cả hai mẫu MIIX 2 đều có màu xám và bạc, có thể dễ dàng kết nối, lưu trữ và truyền phát nội dung sang một màn hình lớn hơn thông qua cổng mini HDMI, một đầu đọc thẻ SD, cổng micro USB và hỗ trợ cổng USB 2.0 có trên bàn phím. Hiện chưa có thông tin về giá của 2 sản phẩm này.</span></p>

<p style="text-align:justify"><span style="font-size:small"><strong>YOGA 2</strong>&nbsp;thì thừa hưởng thiết kế lật, gấp 360 độ nổi tiếng từ dòng Yoga trước đây nhưng được cải tiến với các thông số kỹ thuật hiện đại, gồm mẫu 11-inch và 13-inch.</span></p>

<p style="text-align:justify"><span style="font-size:small">Mẫu máy&nbsp;<em>11-inch</em>&nbsp;chỉ mỏng 17mm, nặng 1,3kg và được trang bị vi xử lý lõi tứ Intel Pentium thế hệ mới cho hiệu năng hoạt động cao. Người dùng có thể lưu trữ rất nhiều tập tin cá nhân bao gồm các bức ảnh, những bộ phim và game với 500 GB dung lượng ổ cứng.</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 3" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522550-ww_images_-_product_photography_lenovo_yoga_2_11--_orange_standard_02.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Trong một thiết kế lớn hơn, mạnh mẽ hơn, mẫu máy YOGA 2 phiên bản&nbsp;<em>13-inch</em>&nbsp;mỏng 17,27mm, nặng 1,59kg và được trang bị bộ xử lý Intel Core i5 thế hệ thứ 4, bàn phím có đèn nền backlit và màn hình Full HD độ phân giải 1920 x 1080. dung lượng ổ cứng lên đến 500GB HDD hoặc SSHD.</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 4" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522570-ww_image_consumer_lenovo_yoga_2_echo_shot_option_5_low_res3113x2783.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Bên cạnh đó,&nbsp;<strong>Flex 14D</strong>&nbsp;và&nbsp;<strong>15D&nbsp;</strong>tiếp tục mở rộng lựa chọn cho người dùng trong xu hướng laptop có thể chuyển đổi đa chế độ sử dụng khi mang đến hiệu năng hoạt động mạnh mẽ nhờ sử dụng bộ vi xử lý AMD A6 lõi tứ cùng card đồ họa AMD Radeon. Cả Flex 14D và 15D đều cung cấp hai chế độ sử dụng là Laptop và Stand chỉ trong một thiết bị duy nhất.</span></p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 5" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522592-flex-14d_silver-c-cover-_hero_05.jpg" /></span></p>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-size:small"><img alt="Laptop chuyển đổi: Xu hướng của năm 2014 - 6" border="0" class="news-image" src="http://img-hn.24hstatic.com/upload/1-2014/images/2014-01-12/1389522599-flex-14d_silver-c-cover-_hero_06.jpg" /></span></p>

<p style="text-align:justify"><span style="font-size:small">Dự kiến, YOGA 2 bản 11-inch sẽ ra mắt vào tháng 2 tới, còn bản 13-inch là vào cuối tháng 1 này, với giá khởi điểm lần lượt từ 529 USD và 999 USD, tại các hệ thống Best Buy, Best Buy Canada, Future Shop và qua trang chủ của nhà sản xuất. Còn hai mẫu máy Flex14D và 15D có giá khởi điểm từ 499 USD.</span></p>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-size:small">Tổng hợp theo nguồn&nbsp;<a href="http://hn.24h.com.vn/" style="color: rgb(39, 39, 39); text-decoration-line: none;">http://hn.24h.com.vn</a></span></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Xu huong Laptop cua nam 2014', 0, 0, CAST(N'2017-09-27T13:02:41.853' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (14, 10, N'Giải pháp trình chiếu', N'giai-phap-trinh-chieu', N'Giải pháp trình chiếu', N'giai-phap-trinh-chieu', N'/Uploads/giai-phap-trinh-chieu.jpg', N'Trong quá trình hội nghị truyền hình,giảng dạy nếu có nhu cầu về việc trình chiếu dữ liệu thông qua hình ảnh. Giải pháp chia sẽ dữ liệu từ máy vi tính/máy chiếu...', N'Trong quá trình hội nghị truyền hình,giảng dạy nếu có nhu cầu về việc trình chiếu dữ liệu thông qua hình ảnh. Giải pháp chia sẽ dữ liệu từ máy vi tính/máy chiếu...', N'<p>Trong quá trình hội nghị truyền hình,giảng dạy nếu có nhu cầu về việc trình chiếu dữ liệu thông qua hình ảnh. Giải pháp chia sẽ dữ liệu từ máy vi tính/máy chiếu thông qua hình ảnh của thiết bị hội nghị truyền hình trực tuyến hoặc thiết bị điều khiển trung tâm, các điểm khác sẽ nhìn thấy được dữ liệu</p>
', N'<p>Trong quá trình hội nghị truyền hình,giảng dạy nếu có nhu cầu về việc trình chiếu dữ liệu thông qua hình ảnh. Giải pháp chia sẽ dữ liệu từ máy vi tính/máy chiếu thông qua hình ảnh của thiết bị hội nghị truyền hình trực tuyến hoặc thiết bị điều khiển trung tâm, các điểm khác sẽ nhìn thấy được dữ liệu</p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Giai phap trinh chieu', 0, 1, CAST(N'2017-09-27T13:28:42.820' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (15, 10, N'Giải pháp chống xâm nhập (IPS) chuyên nghiệp', N'giai-phap-chong-xam-nhap-ips-chuyen-nghiep', N'Giải pháp chống xâm nhập (IPS) chuyên nghiệp', N'giai-phap-chong-xam-nhap-ips-chuyen-nghiep', N'/Uploads/chong-xam-nhap.jpg', N'Giảm thiểu rủi ro cho hệ thống theo phương pháp chủ động - Thiết bị phát hiện và ngăn chặn xâm nhập trái phép ...', N'Giảm thiểu rủi ro cho hệ thống theo phương pháp chủ động - Thiết bị phát hiện và ngăn chặn xâm nhập trái phép ...', N'<p style="text-align:justify"><strong>Những điểm nổi bật của giải pháp</strong></p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<ul>
	<li>Giảm thiểu rủi ro cho hệ thống theo phương pháp chủ động - Thiết bị phát hiện và ngăn chặn xâm nhập trái phép McAfee IntruShield đảm bảo tính sẵn sàng và bảo mật của của các thành phần quan trọng của cơ sở hạ tầng mạng thông qua các biện pháp chủ động phát hiện và ngăn chặn xâm nhập trái phép cho phép phát hiện và ngăn chặn các hình thức tấn công trước khi chúng tác động đến hệ thống</li>
	<li>Bảo vệ hệ thống trước các nguy cơ tấn công ngày càng đa dạng - thiết bị IntruShield IDS/IPS phát hiện và ngăn chặn hầu hết các hình hình thức tấn công liên tục thay đổi ngày nay như: các hình thức tấn công đã biết, chưa biết, các hình thức khai thác các lỗ hổng chưa có miếng vá từ nhà cung cấp (zero-day threats), tấn công từ chối dịch vụ...</li>
	<li>Tính chính xác cao, mức độ cảnh báo giả thấp - Với sự kết hợp cả 3 công nghệ nhận dạng tiên tiến là: Signature detection, anomaly detection và DDoS detection, IntruShield cải thiện đáng kể tính chính xác của thiết bị IDS và giảm thiểu các cảnh báo giả của hệ thống</li>
	<li>Dễ mở rộng theo qui mô của tổ chức - Có thể triển khai hệ thống để bảo vệ từ hệ thống mạng trung tâm đến các văn phòng chi nhánh với năng lực xử lý thay đổi từ vài trăm Mbps đến vài Gbps</li>
	<li>Chi phí sở hữu thấp - IntruShield IDS/IPS giảm chi phí sở hữu nhờ giảm chi phí triển khai và nhân sự quản trị hệ thống</li>
</ul>
</div>
', N'<p style="text-align:justify"><strong>Những điểm nổi bật của giải pháp</strong></p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<ul>
	<li>Giảm thiểu rủi ro cho hệ thống theo phương pháp chủ động - Thiết bị phát hiện và ngăn chặn xâm nhập trái phép McAfee IntruShield đảm bảo tính sẵn sàng và bảo mật của của các thành phần quan trọng của cơ sở hạ tầng mạng thông qua các biện pháp chủ động phát hiện và ngăn chặn xâm nhập trái phép cho phép phát hiện và ngăn chặn các hình thức tấn công trước khi chúng tác động đến hệ thống</li>
	<li>Bảo vệ hệ thống trước các nguy cơ tấn công ngày càng đa dạng - thiết bị IntruShield IDS/IPS phát hiện và ngăn chặn hầu hết các hình hình thức tấn công liên tục thay đổi ngày nay như: các hình thức tấn công đã biết, chưa biết, các hình thức khai thác các lỗ hổng chưa có miếng vá từ nhà cung cấp (zero-day threats), tấn công từ chối dịch vụ...</li>
	<li>Tính chính xác cao, mức độ cảnh báo giả thấp - Với sự kết hợp cả 3 công nghệ nhận dạng tiên tiến là: Signature detection, anomaly detection và DDoS detection, IntruShield cải thiện đáng kể tính chính xác của thiết bị IDS và giảm thiểu các cảnh báo giả của hệ thống</li>
	<li>Dễ mở rộng theo qui mô của tổ chức - Có thể triển khai hệ thống để bảo vệ từ hệ thống mạng trung tâm đến các văn phòng chi nhánh với năng lực xử lý thay đổi từ vài trăm Mbps đến vài Gbps</li>
	<li>Chi phí sở hữu thấp - IntruShield IDS/IPS giảm chi phí sở hữu nhờ giảm chi phí triển khai và nhân sự quản trị hệ thống</li>
</ul>
</div>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Giai phap chong xam nhap IPS chuyen nghiep', 0, 1, CAST(N'2017-09-27T17:45:02.730' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (16, 10, N'Giải pháp AntiVirus Client and Server', N'giai-phap-antivirus-client-and-server', N'Giải pháp AntiVirus Client and Server', N'giai-phap-antivirus-client-and-server', N'/Uploads/AVG-Anti-Virus-free-Edition.png', N'Giải pháp Antivirus Client and Server của Norton phiên bản Antivirus Coporation 10.1.7000 tạo ra một hệ thống Antivirus duy nhất cho cả hệ thống máy tính...', N'Giải pháp Antivirus Client and Server của Norton phiên bản Antivirus Coporation 10.1.7000 tạo ra một hệ thống Antivirus duy nhất cho cả hệ thống máy tính...', N'<p>Bài viết sẽ trình bày cách sử dụng giải pháp Antivirus Client and Server của Norton phiên bản Antivirus Coporation 10.1.7000 tạo ra một hệ thống Antivirus duy nhất cho cả hệ thống máy tính, giúp người quản lý đơn giản hơn trong việc quản trị hệ thống, tiết kiệm băng thông, nâng cao bảo mật.</p>

<p>Trên đây là mô hình sử dụng phần mềm Antivirus Server, với giải pháp này hệ thống chỉ cần một máy tính nối ra Internet và Update sau đó sẽ cung cấp bản update này cho Client một cách tự động, giảm thời giản quản lý, đảm bảo tính bảo mật.</p>

<p>Toàn bộ thiết lập về Update, cài đặt… chúng ta thực hiện chủ yếu trên Server. Client không thể Manual update được mà sẽ tự động update từ máy chủ. Khi cài đặt mô hình Client Server này các máy Client cũng không có quyền tự động gỡ bỏ phần mềm diệt Virus này.</p>

<p>Bất kỳ máy tính nào trong hệ thống nhiễm virus lập tức thông tin đó được gửi về cho Server, nhà quản trị biết được thông tin đó sẽ có những hành động trực tiếp tới máy tính nhiễm virus đó.</p>
', N'<p>Bài viết sẽ trình bày cách sử dụng giải pháp Antivirus Client and Server của Norton phiên bản Antivirus Coporation 10.1.7000 tạo ra một hệ thống Antivirus duy nhất cho cả hệ thống máy tính, giúp người quản lý đơn giản hơn trong việc quản trị hệ thống, tiết kiệm băng thông, nâng cao bảo mật.</p>

<p>Trên đây là mô hình sử dụng phần mềm Antivirus Server, với giải pháp này hệ thống chỉ cần một máy tính nối ra Internet và Update sau đó sẽ cung cấp bản update này cho Client một cách tự động, giảm thời giản quản lý, đảm bảo tính bảo mật.</p>

<p>Toàn bộ thiết lập về Update, cài đặt… chúng ta thực hiện chủ yếu trên Server. Client không thể Manual update được mà sẽ tự động update từ máy chủ. Khi cài đặt mô hình Client Server này các máy Client cũng không có quyền tự động gỡ bỏ phần mềm diệt Virus này.</p>

<p>Bất kỳ máy tính nào trong hệ thống nhiễm virus lập tức thông tin đó được gửi về cho Server, nhà quản trị biết được thông tin đó sẽ có những hành động trực tiếp tới máy tính nhiễm virus đó.</p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Giai phap AntiVirus Client and Server', 0, 1, CAST(N'2017-09-27T17:49:18.270' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (17, 10, N'Giải pháp báo cháy tự động', N'giai-phap-bao-chay-tu-dong', N'Giải pháp báo cháy tự động', N'giai-phap-bao-chay-tu-dong', N'/Uploads/giai-phap-bao-chay.jpg', N'Hệ thống báo cháy tự động là hệ thống gồm tập hợp các thiết bị có nhiệm vụ phát hiện và báo động khi có cháy xảy ra. Việc phát hiện ra các tín hiệu cháy có thể...', N'Hệ thống báo cháy tự động là hệ thống gồm tập hợp các thiết bị có nhiệm vụ phát hiện và báo động khi có cháy xảy ra. Việc phát hiện ra các tín hiệu cháy có thể...', N'<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">I. KHÁI NIỆM VỀ HỆ THỐNG BÁO CHÁY TỰ ĐỘNG</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Hệ thống báo cháy tự động là hệ thống gồm tập hợp các thiết bị có nhiệm vụ phát hiện và báo động khi có cháy xảy ra. Việc phát hiện ra các tín hiệu cháy có thể được thực hiện tự động bởi các thiết bị hoặc bởi con người, và nhất thiết phải hoạt động liên tục trong 24/24 giờ.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><strong>II. CÁC THÀNH PHẦN CỦA MỘT HỆ THỐNG BÁO CHÁY TỰ ĐỘNG</strong></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Một hệ thống báo cháy tự động tiêu biểu sẽ có 3 thành phần như sau:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">1. Trung tâm báo cháy</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được thiết kế dạng tủ, bao gồm cc thiết bị chính : một mainboard, một biến thế, một battery.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2. Thiết bị đầu vào</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo: báo khói, báo nhiệt, báo gas, báo lửa.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Công tắc khẩn (nút nhấn khẩn).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3. Thiết bị đầu ra</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Bảng hiển thị phụ (bàn phím).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Chuông báo động, còi báo động.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đèn báo động, đèn exit.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Bộ quay số điện thoại tự động.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><strong>III. NGUYÊN LÝ HOẠT ĐỘNG CỦA HỆ THỐNG BÁO CHÁY</strong></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Quy trình hoạt động của hệ thống báo cháy là một quy trình khép kín. Khi có hiện tượng về sự cháy (chẳng hạn như nhiệt độ gia tăng đột ngột, có sự xuất hiện của khói hoặc các tia lửa) các thiết bị đầu vào (đầu báo, công tắc khẩn) nhận tín hiệu và truyền thông tin của sự cố về trung tâm báo cháy. Tại đây trung tâm sẽ xử lý thông tin nhận được, xác định vị trí nơi xảy ra sự cháy (thông qua các zone) và truyền thông tin đến các thiết bị đầu ra (bảng hiển thị phụ, chuông, còi, đèn), các thiết bị này sẽ phát tín hiệu âm thanh, ánh sáng để mọi người nhận biết khu vực đang xảy ra sự cháy và xử lý kịp thời.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">IV. PHÂN LOẠI HỆ THỐNG BÁO CHÁY</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">•Hệ thống báo cháy sử dụng 2 loại điện thế khác nhau : 12V và 24V.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Về mặt lý thuyết cả hai loại này đều có tính năng kỹ thuật và công dụng như nhau. Nhưng, so với hệ thống báo cháy 24V thì hệ thống báo cháy 12V không mang tính chuyên nghiệp, trung tâm 12V chủ yếu được sử dụng trong hệ thống báo trộm, ngoài ra hệ thống còn bắt buộc phải có bàn phím lập trình. Trong khi hệ thống báo cháy 24V là một hệ thống báo cháy chuyên nghiệp, khả năng truyền tín hiệu đi xa hơn, và không bắt buộc phải có bàn phím lập trình. Tuy nhiên, trung tâm xử lý hệ báo cháy 12V ( trung tâm Networx) có giá thành thấp hơn so với trung tâm xử lý hệ báo cháy 24V (trung tâm Mircom,…)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Ngoài ra, Hệ thống báo cháy được chia làm 2 hệ chính, gồm:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">1.Hệ báo cháy thông thường:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Với tính năng đơn giản, giá thành không cao, hệ thống báo cháy thông thường chỉ thích hợp lắp đặt tại các công ty có diện tích vừa hoặc nhỏ (khoảng vài ngàn m2), số lượng các phòng ban không nhiều (vài chục phòng); lắp đặt cho những nhà, xưởng nhỏ… Các thiết bị trong hệ thống được mắc nối tiếp với nhau và mắc nối tiếp với trung tâm báo cháy, nên khi xảy ra sự cố trung tâm chỉ có thể nhận biết khái quát và hiển thị toàn bộ khu vực (zone) mà hệ thống giám sát (chứ không cho biết chính xác vị trí từng đầu báo, từng địa điểm có cháy). Điều này làm hạn chế khả năng xử lý của nhân viên giám sát</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.Hệ báo cháy địa chỉ:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Với tính năng kỹ thuật cao, hệ thống báo cháy địa chỉ dùng để lắp đặt tại các công ty mà mặt bằng sử dụng rộng lớn (vài chục ngàn m2), được chia ra làm nhiều khu vực độc lập, các phòng ban trong từng khu vực riêng biệt với nhau. Từng thiết bị trong hệ thống được mắc trực tiếp vào trung tâm báo cháy giúp trung tâm nhận tín hiệu xảy ra cháy tại từng khu vực, từng địa điểm một cách rõ ràng, chính xác. Từ đó trung tâm có thể nhận biết thông tin sự cố một cách chi tiết và được hiển thị trên bảng hiển thị phụ giúp nhân viên giám sát có thể xử lý sự cố một cách nhanh chóng.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><strong>V. GIẢI THÍCH CHI TIẾT CÁC THIẾT BỊ</strong></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">1- Trung tâm báo cháy: (Tủ trung tâm , Trung tâm điều khiển, Control Panel)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Đây là thiết bị quan trọng nhất trong hệ thống và quyết định chất lượng của hệ thống. Là thiết bị cung cấp năng lượng cho các đầu báo cháy tự động. Có khả năng nhận và xử lý các tín hiệu báo cháy từ các đầu báo cháy tự động hoặc các tín hiệu sự cố kỹ thuật, hiển thị các thông tin về hệ thống và phát lệnh báo động, chỉ thị nơi xảy ra cháy. Trong trường hợp cần thiết có thể truyền tín hiệu đến nơi nhận tin báo cháy. Có khả năng tự kiểm tra hoạt động bình thường của hệ thống, chỉ thị sự cố của hệ thống như đứt dây, chập mạch.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2- Thiết bị đầu vào:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Là thiết bị nhạy cảm với các hiện tượng của sự cháy (sự tăng nhiệt, tỏa khói, phát sáng, phát lửa), và có nhiệm vụ nhận thông tin nơi xảy ra sự cháy và truyền tín hiệu đến trung tâm báo cháy.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1- Đầu báo:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.1 Đầu báo khói: (Smoke Detector)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Là thiết bị giám sát trực tiếp, phát hiện ra dấu hiệu khói để chuyển các tín hiệu khói về trung tâm xử lý. Thời gian các đầu báo khói nhận và truyền thông tin đến trung tâm báo cháy không quá 30s. Mật độ môi trường từ 15% đến 20%. Nếu nồng độ của khói trong môi trường tại khu vực vượt qua ngưỡng cho phép (10% -20%) thì thiết bị sẽ phát tín hiệu báo động về trung tâm để xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Các đầu báo khói thường được bố trí tại các phòng làm việc, hội trường, các kho quỹ, các khu vực có mật độ không gian kín và các chất gây cháy thường tạo khói trước.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo khói được chia làm 2 loại chính như sau :</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.1.1 Đầu báo khói dạng điểm.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp tại các khu vực mà phạm vi giám sát nhỏ, trần nhà thấp (văn phòng, chung cư …)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">a. Đầu báo khói Ion : Thiết bị tạo ra các dòng ion dương và ion âm chuyển động, khi có khói, khói sẽ làm cản trở chuyển động của các ion dương và ion âm, từ đó thiết bị sẽ gởi tín hiệu báo cháy về trung tâm xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">b. Đầu báo khói Quang (photo): Thiết bị bao gồm một cặp đầu báo (một đầu phát tín hiệu, một đầu thu tín hiệu) bố trí đối nhau, khi có khói xen giữa 2 đầu báo, khói sẽ làm cản trở đường truyền tín hiệu giữa 2 đầu báo, từ đó đầu báo sẽ gởi tín hiệu báo cháy về trung tâm xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.1.2 Đầu báo khói dạng Beam</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Gồm một cặp thiết bị được lắp ở hai đầu của khu vực cần giám sát. Thiết bị chiếu phát chiếu một chùm tia hồng ngoại, qua khu vực thuộc phạm vi giám sát rồi tới một thiết bị nhận có chứa một tế bào cảm quang có nhiệm vụ theo dõi sự cân bằng tín hiệu của chùm tia sáng. Đầu báo này hoạt động trên nguyên lý làm mờ ánh sáng đối nghịch với nguyên lý tán xạ ánh sáng (cảm ứng khói ngay tại đầu báo).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo khói loại Beam có tầm hoạt động rất rộng (15m x 100m), sử dụng thích hợp tại những khu vực mà các loại đầu báo khói quang điện tỏ ra không thích hợp, chẳng hạn như tại những nơi mà đám khói tiên liệu là sẽ có khói màu đen.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Hơn nữa đầu báo loại Beam có thể đương đầu với tình trạng khắc nghiệt về nhiệt độ, bụi bặm, độ ẩm quá mức, nhiều tạp chất,… Do đầu báo dạng Beam có thể đặt đằng sau cửa sổ có kiếng trong, nên rất dễ lau chùi, bảo quản.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo dạng Beam thường được lắp trong khu vực có phạm vi giám sát lớn, trần nhà quá cao không thể lắp các đầu báo điểm (các nhà xưởng, …)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.2 Đầu báo nhiệt: (Heat Detector)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo nhiệt là loại dùng để dò nhiệt độ của môi trường trong phạm vi bảo vệ , khi nhiệt độ của môi trường không thỏa mãn những quy định của các đầu báo nhiệt do nhà sản xuất quy định, thì nó sẽ phát tín hiệu báo động gởi về trung tâm xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Các đầu báo nhiệt được lắp đặt ở những nơi không thể lắp được đầu báo khói (nơi chứa thiết bị máy móc, Garage, các buồng điện động lực, nhà máy, nhà bếp,…)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.2.1 Đầu báo nhiệt cố định</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Là loại đầu báo bị kích hoạt và phát tín hiệu báo động khi cảm ứng nhiệt độ trong bầu không khí chung quanh đầu báo tăng lên ở mức độ nhà sản xuất quy định (57o, 70o, 100o…).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.2.2 Đầu báo nhiệt gia tăng</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Là loại đầu báo bị kích hoạt và phát tín hiệu báo động khi cảm ứng hiện tượng bầu không khí chung quanh đầu báo gia tăng nhiệt độ đột ngột khoảng 9oC / phút</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.3 Đầu báo ga (Gas Detector)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Là thiết bị trực tiếp giám sát, phát hiện dấu hiệu có gas khi tỉ lệ gas tập trung vượt quá mức 0.503% (Propane/ Butane) và gởi tín hiệu báo động về trung tâm xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Các đầu báo gas thường được bố trí trong khoảng gần nơi có gas như các phòng vô gas hay các kho chứa gas. Các đầu báo gas được lắp trên tường, cách sàn nhà từ 10-16cm, tuyệt đối không được phép lắp đặt dưới sàn nhà.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.4 Đầu báo lửa (Flame Detector)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Là thiết bị cảm ứng các tia cực tím phát ra từ ngọn lửa, nhận tín hiệu, rồi gởi tín hiệu báo động về trung tâm xử lý khi phát hiện lửa.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Được sử dụng chủ yếu ở các nơi xét thấy có sự nguy hiểm cao độ, những nơi mà ánh sáng của ngọn lửa là dấu hiệu tiêu biểu cho sự cháy (ví dụ như kho chứa chất lỏng dễ cháy).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo lửa rất nhạy cảm đối với các tia cực tím và đã được nghiên cứu tỉ mỉ để tránh tình trạng báo giả. Đầu dò chỉ phát tín hiệu báo động về trung tâm báo cháy khi có 2 xung cảm ứng tia cực tím sau 2 khoảng thời gian, mỗi thời kỳ là 5s.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.2- Công tắc khẩn:(Emergency breaker, nút nhấn khẩn)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp đặt tại những nơi dễ thấy của hành lang các cầu thang để sử dụng khi cần thiết. Thiết bị này cho phép người sử dụng chủ động truyền thông tin báo cháy bằng cách nhấn hoặc kéo vào công tắc khẩn, báo động khẩn cấp cho mọi người đang hiện diện trong khu vực đó được biết để có biện pháp xử lý hỏa hoạn và di chuyển ra khỏi khu vực nguy hiểm bằng các lối thoát hiểm. Gồm có các loại công tắc khẩn như sau:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.2.1 Khẩn tròn, vuông</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.2.2 Khẩn kính vỡ (break glass)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.2.3 Khẩn giật</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3- Thiết bị đầu ra:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Nhận tín hiệu từ trung tâm báo cháy truyền đến và có tính năng phát đi các thông tin bằng âm thanh (chuông, còi), bằng tín hiệu phát sáng (đèn) giúp mọi người nhận biết đang có hiện tượng cháy xảy ra.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.1 Bảng hiện thị phụ</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Hiển thị thông tin các khu vực xảy ra sự cố từ trung tâm báo cháy truyền đến, giúp nhận biết tình trạng nơi xảy ra sự cố để xử lý kịp thời.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.2 Chuông báo cháy</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp đặt tại phòng bảo vệ, các phòng có nhân viên trực ban, hành lang, cầu thang hoặc những nơi đông người qua lại nhằm thông báo cho những người xung quanh có thể biết được sự cố đang xảy ra để có phương án xử lý, di tản kịp thời.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Khi xảy ra sự cố hỏa hoạn, chuông báo động sẽ phát tín hiệu báo động giúp cho nhân viên bảo vệ nhận biết và thông qua thiết bị theo dõi sự cố hỏa hoạn (bảng hiển thị phụ) sẽ biết khu vực nào xảy ra hỏa hoạn, từ đó thông báo kịp thời đến các nhân viên có trách nhiệm phòng cháy chữa cháy khắc phục sự cố hoặc có biện pháp xử lý thích hợp.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.3 Còi báo cháy</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Có tính năng và vị trí lắp đặt giống như chuông báo cháy, tuy nhiên còi được sử dụng khi khoảng cách giữa nơi phát thông báo đến nơi cần nhận thông báo báo động quá xa.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4 Đèn</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Có công dụng phát tín hiệu báo động, mỗi lọai đèn có chức năng khác nhau và được lắp đặt ở tại các vị trí thích hợp để phát huy tối đa tính năng của thiết bị này. Gồm có các lọai đèn:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4.1 Đèn chỉ lối thoát hiểm (Exit Light)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được đặt gần các cầu thang của mỗi tầng lầu, để chỉ lối thoát hiểm trong trường hợp có cháy. Tự động chiếu sáng trong trường hợp mất nguồn AC.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4.2 Đèn báo cháy (Corridor Lamp)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được đặt bên trên công tắc khẩn của mỗi tầng. Đèn báo cháy sẽ sáng lên mỗi khi công tắc khẩn hoạt động, đồng thời đây cũng là đèn báo khẩn cấp cho những người hiện diện trong tòa nhà được biết. Điều này có ý nghĩa quan trọng, vì trong lúc bối rối do sự cố cháy, thì người sử dụng cần phân biệt rõ ràng công tác khẩn nào còn hiệu lực được kích hoạt máy bơm chữa cháy.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4.3 Đèn báo phòng(Room Lamp)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp đặt trước cửa mỗi phòng giúp nhận biết phòng nào có sự cố một cách dễ dàng và nhanh chóng.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4.4 Đèn chiếu sáng trong trường hợp khẩn (Emergency Light):</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Khi có báo cháy, thao tác đầu tiên là phải cúp điện. Bây giờ đèn chiếu sáng này sẽ tự động bật sáng (nhờ có bình điện dự phòng battery), nó giúp cho mọi người dễ dàng tìm đường thoát hiểm, hoặc giúp cho các nhân viên có trách nhiệm nhanh chóng thi hành phận sự. Hoặc trong trường hợp mất điện đột ngột do có sự cố về điện, đèn Emergency cũng tỏ ra hữu hiệu.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.5 Bộ quay số điện thoại tự động</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp trong trung tâm báo cháy, khi nhận được thông tin báo cháy từ trung tâm thiết bị sẽ tự động quay số điện thoại đã được cài đặt trước để thông báo đến người chịu trách nhiệm chính. Thông thường quay được từ 3 tới hơn 10 số.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.6 Bàn phím (Keypad, Bàn phím điều khiển):</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Là phương tiện để điều khiển mọi hoạt động của hệ thống. Qua bàn phím, bạn có thể điều khiển hoạt động theo ý muốn một cách dễ dàng, như nhập lệnh đưa hệ thống vào chế độ giám sát, hoặc có thể ngưng chế độ giám sát một số khu vực trong toàn bộ hệ thống, hoặc có thể lập trình để hệ thống tự động chuyển sang chế độ giám sát vào một thời gian nhất định trong ngày đối với một số khu vực nào đó.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.7 Modul địa chỉ:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Modul địa chỉ được sử dụng trong hệ thống báo cháy địa chỉ, nó có khả năng cho biết vị trí chính xác nơi xảy ra sự cố cháy trong một khu vực đang bảo vệ.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">VI. TIÊU CHUẨN VÀ CÁC YÊU CẦU THIẾT KẾ</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">1.Tiêu chuẩn</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">TCVN5738-1993: Hệ thống báo cháy tự động –yêu cầu kỹ thuật. Tiêu chuẩn này áp dụng cho các hệ thống báo cháy được trang bị tại các nhà máy, xí nghiệp, cơ sở sản xuất, cơ quan công trình công cộng v.v.. - Hệ thống báo cháy tự động là một hệ thống các thiết bị có thể tự động phát hiện và thông báo địa điểm cháy chính xác, đảm bảo hệ thống hoạt động liên tục 24/24 giờ.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.Yêu Cầu Thiết Kế</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">* Việc thiết kế, lắp đặt, hệ thống báo cháy phải được sự thỏa thuận của cơ quan phòng cháy, chữa cháy và thỏa mãn các yêu cầu, quy định của các tiêu chuẩn, quy phạm hiện hành có liên quan.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">* Hệ thống báo cháy đáp ứng những yêu cầu như sau :</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Phát hiện cháy nhanh chóng tại khu vực xảy ra sự cố.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Chuyển tín hiệu khi phát hiện có cháy, tín hiệu báo động rõ ràng để những người xung quanh có thể thực hiện ngay các giải pháp thích hợp.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Có khả năng chống nhiễu tốt.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Không bị ảnh hưởng bởi các hệ thống khác lắp đặt chung hoặc riêng lẻ.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Không bị tê liệt một phần hay toàn bộ do cháy gây ra trước khi phát hiện ra cháy.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Hệ thống báo cháy phải đảm bảo độ tin cậy. Hệ thống này thực hiện đầy đủ các chức năng đã được đề ra mà không xảy ra sai sót hoặc các trường hợp đáng tiếc khác.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Những tác động bên ngoài gây sự cố cho một bộ phận của hệ thống không gây ra những sự cố tiếp theo trong hệ thống.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Khả năng dự phòng cao.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Khả năng mở rộng dể dàng với chi phí thấp</span></span></p>
', N'<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">I. KHÁI NIỆM VỀ HỆ THỐNG BÁO CHÁY TỰ ĐỘNG</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Hệ thống báo cháy tự động là hệ thống gồm tập hợp các thiết bị có nhiệm vụ phát hiện và báo động khi có cháy xảy ra. Việc phát hiện ra các tín hiệu cháy có thể được thực hiện tự động bởi các thiết bị hoặc bởi con người, và nhất thiết phải hoạt động liên tục trong 24/24 giờ.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><strong>II. CÁC THÀNH PHẦN CỦA MỘT HỆ THỐNG BÁO CHÁY TỰ ĐỘNG</strong></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Một hệ thống báo cháy tự động tiêu biểu sẽ có 3 thành phần như sau:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">1. Trung tâm báo cháy</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được thiết kế dạng tủ, bao gồm cc thiết bị chính : một mainboard, một biến thế, một battery.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2. Thiết bị đầu vào</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo: báo khói, báo nhiệt, báo gas, báo lửa.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Công tắc khẩn (nút nhấn khẩn).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3. Thiết bị đầu ra</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Bảng hiển thị phụ (bàn phím).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Chuông báo động, còi báo động.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đèn báo động, đèn exit.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Bộ quay số điện thoại tự động.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><strong>III. NGUYÊN LÝ HOẠT ĐỘNG CỦA HỆ THỐNG BÁO CHÁY</strong></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Quy trình hoạt động của hệ thống báo cháy là một quy trình khép kín. Khi có hiện tượng về sự cháy (chẳng hạn như nhiệt độ gia tăng đột ngột, có sự xuất hiện của khói hoặc các tia lửa) các thiết bị đầu vào (đầu báo, công tắc khẩn) nhận tín hiệu và truyền thông tin của sự cố về trung tâm báo cháy. Tại đây trung tâm sẽ xử lý thông tin nhận được, xác định vị trí nơi xảy ra sự cháy (thông qua các zone) và truyền thông tin đến các thiết bị đầu ra (bảng hiển thị phụ, chuông, còi, đèn), các thiết bị này sẽ phát tín hiệu âm thanh, ánh sáng để mọi người nhận biết khu vực đang xảy ra sự cháy và xử lý kịp thời.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">IV. PHÂN LOẠI HỆ THỐNG BÁO CHÁY</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">•Hệ thống báo cháy sử dụng 2 loại điện thế khác nhau : 12V và 24V.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Về mặt lý thuyết cả hai loại này đều có tính năng kỹ thuật và công dụng như nhau. Nhưng, so với hệ thống báo cháy 24V thì hệ thống báo cháy 12V không mang tính chuyên nghiệp, trung tâm 12V chủ yếu được sử dụng trong hệ thống báo trộm, ngoài ra hệ thống còn bắt buộc phải có bàn phím lập trình. Trong khi hệ thống báo cháy 24V là một hệ thống báo cháy chuyên nghiệp, khả năng truyền tín hiệu đi xa hơn, và không bắt buộc phải có bàn phím lập trình. Tuy nhiên, trung tâm xử lý hệ báo cháy 12V ( trung tâm Networx) có giá thành thấp hơn so với trung tâm xử lý hệ báo cháy 24V (trung tâm Mircom,…)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Ngoài ra, Hệ thống báo cháy được chia làm 2 hệ chính, gồm:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">1.Hệ báo cháy thông thường:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Với tính năng đơn giản, giá thành không cao, hệ thống báo cháy thông thường chỉ thích hợp lắp đặt tại các công ty có diện tích vừa hoặc nhỏ (khoảng vài ngàn m2), số lượng các phòng ban không nhiều (vài chục phòng); lắp đặt cho những nhà, xưởng nhỏ… Các thiết bị trong hệ thống được mắc nối tiếp với nhau và mắc nối tiếp với trung tâm báo cháy, nên khi xảy ra sự cố trung tâm chỉ có thể nhận biết khái quát và hiển thị toàn bộ khu vực (zone) mà hệ thống giám sát (chứ không cho biết chính xác vị trí từng đầu báo, từng địa điểm có cháy). Điều này làm hạn chế khả năng xử lý của nhân viên giám sát</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.Hệ báo cháy địa chỉ:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Với tính năng kỹ thuật cao, hệ thống báo cháy địa chỉ dùng để lắp đặt tại các công ty mà mặt bằng sử dụng rộng lớn (vài chục ngàn m2), được chia ra làm nhiều khu vực độc lập, các phòng ban trong từng khu vực riêng biệt với nhau. Từng thiết bị trong hệ thống được mắc trực tiếp vào trung tâm báo cháy giúp trung tâm nhận tín hiệu xảy ra cháy tại từng khu vực, từng địa điểm một cách rõ ràng, chính xác. Từ đó trung tâm có thể nhận biết thông tin sự cố một cách chi tiết và được hiển thị trên bảng hiển thị phụ giúp nhân viên giám sát có thể xử lý sự cố một cách nhanh chóng.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><strong>V. GIẢI THÍCH CHI TIẾT CÁC THIẾT BỊ</strong></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">1- Trung tâm báo cháy: (Tủ trung tâm , Trung tâm điều khiển, Control Panel)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Đây là thiết bị quan trọng nhất trong hệ thống và quyết định chất lượng của hệ thống. Là thiết bị cung cấp năng lượng cho các đầu báo cháy tự động. Có khả năng nhận và xử lý các tín hiệu báo cháy từ các đầu báo cháy tự động hoặc các tín hiệu sự cố kỹ thuật, hiển thị các thông tin về hệ thống và phát lệnh báo động, chỉ thị nơi xảy ra cháy. Trong trường hợp cần thiết có thể truyền tín hiệu đến nơi nhận tin báo cháy. Có khả năng tự kiểm tra hoạt động bình thường của hệ thống, chỉ thị sự cố của hệ thống như đứt dây, chập mạch.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2- Thiết bị đầu vào:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Là thiết bị nhạy cảm với các hiện tượng của sự cháy (sự tăng nhiệt, tỏa khói, phát sáng, phát lửa), và có nhiệm vụ nhận thông tin nơi xảy ra sự cháy và truyền tín hiệu đến trung tâm báo cháy.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1- Đầu báo:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.1 Đầu báo khói: (Smoke Detector)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Là thiết bị giám sát trực tiếp, phát hiện ra dấu hiệu khói để chuyển các tín hiệu khói về trung tâm xử lý. Thời gian các đầu báo khói nhận và truyền thông tin đến trung tâm báo cháy không quá 30s. Mật độ môi trường từ 15% đến 20%. Nếu nồng độ của khói trong môi trường tại khu vực vượt qua ngưỡng cho phép (10% -20%) thì thiết bị sẽ phát tín hiệu báo động về trung tâm để xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Các đầu báo khói thường được bố trí tại các phòng làm việc, hội trường, các kho quỹ, các khu vực có mật độ không gian kín và các chất gây cháy thường tạo khói trước.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo khói được chia làm 2 loại chính như sau :</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.1.1 Đầu báo khói dạng điểm.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp tại các khu vực mà phạm vi giám sát nhỏ, trần nhà thấp (văn phòng, chung cư …)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">a. Đầu báo khói Ion : Thiết bị tạo ra các dòng ion dương và ion âm chuyển động, khi có khói, khói sẽ làm cản trở chuyển động của các ion dương và ion âm, từ đó thiết bị sẽ gởi tín hiệu báo cháy về trung tâm xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">b. Đầu báo khói Quang (photo): Thiết bị bao gồm một cặp đầu báo (một đầu phát tín hiệu, một đầu thu tín hiệu) bố trí đối nhau, khi có khói xen giữa 2 đầu báo, khói sẽ làm cản trở đường truyền tín hiệu giữa 2 đầu báo, từ đó đầu báo sẽ gởi tín hiệu báo cháy về trung tâm xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.1.2 Đầu báo khói dạng Beam</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Gồm một cặp thiết bị được lắp ở hai đầu của khu vực cần giám sát. Thiết bị chiếu phát chiếu một chùm tia hồng ngoại, qua khu vực thuộc phạm vi giám sát rồi tới một thiết bị nhận có chứa một tế bào cảm quang có nhiệm vụ theo dõi sự cân bằng tín hiệu của chùm tia sáng. Đầu báo này hoạt động trên nguyên lý làm mờ ánh sáng đối nghịch với nguyên lý tán xạ ánh sáng (cảm ứng khói ngay tại đầu báo).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo khói loại Beam có tầm hoạt động rất rộng (15m x 100m), sử dụng thích hợp tại những khu vực mà các loại đầu báo khói quang điện tỏ ra không thích hợp, chẳng hạn như tại những nơi mà đám khói tiên liệu là sẽ có khói màu đen.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Hơn nữa đầu báo loại Beam có thể đương đầu với tình trạng khắc nghiệt về nhiệt độ, bụi bặm, độ ẩm quá mức, nhiều tạp chất,… Do đầu báo dạng Beam có thể đặt đằng sau cửa sổ có kiếng trong, nên rất dễ lau chùi, bảo quản.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo dạng Beam thường được lắp trong khu vực có phạm vi giám sát lớn, trần nhà quá cao không thể lắp các đầu báo điểm (các nhà xưởng, …)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.2 Đầu báo nhiệt: (Heat Detector)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo nhiệt là loại dùng để dò nhiệt độ của môi trường trong phạm vi bảo vệ , khi nhiệt độ của môi trường không thỏa mãn những quy định của các đầu báo nhiệt do nhà sản xuất quy định, thì nó sẽ phát tín hiệu báo động gởi về trung tâm xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Các đầu báo nhiệt được lắp đặt ở những nơi không thể lắp được đầu báo khói (nơi chứa thiết bị máy móc, Garage, các buồng điện động lực, nhà máy, nhà bếp,…)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.2.1 Đầu báo nhiệt cố định</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Là loại đầu báo bị kích hoạt và phát tín hiệu báo động khi cảm ứng nhiệt độ trong bầu không khí chung quanh đầu báo tăng lên ở mức độ nhà sản xuất quy định (57o, 70o, 100o…).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.2.2 Đầu báo nhiệt gia tăng</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Là loại đầu báo bị kích hoạt và phát tín hiệu báo động khi cảm ứng hiện tượng bầu không khí chung quanh đầu báo gia tăng nhiệt độ đột ngột khoảng 9oC / phút</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.3 Đầu báo ga (Gas Detector)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Là thiết bị trực tiếp giám sát, phát hiện dấu hiệu có gas khi tỉ lệ gas tập trung vượt quá mức 0.503% (Propane/ Butane) và gởi tín hiệu báo động về trung tâm xử lý.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Các đầu báo gas thường được bố trí trong khoảng gần nơi có gas như các phòng vô gas hay các kho chứa gas. Các đầu báo gas được lắp trên tường, cách sàn nhà từ 10-16cm, tuyệt đối không được phép lắp đặt dưới sàn nhà.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.1.4 Đầu báo lửa (Flame Detector)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Là thiết bị cảm ứng các tia cực tím phát ra từ ngọn lửa, nhận tín hiệu, rồi gởi tín hiệu báo động về trung tâm xử lý khi phát hiện lửa.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Được sử dụng chủ yếu ở các nơi xét thấy có sự nguy hiểm cao độ, những nơi mà ánh sáng của ngọn lửa là dấu hiệu tiêu biểu cho sự cháy (ví dụ như kho chứa chất lỏng dễ cháy).</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Đầu báo lửa rất nhạy cảm đối với các tia cực tím và đã được nghiên cứu tỉ mỉ để tránh tình trạng báo giả. Đầu dò chỉ phát tín hiệu báo động về trung tâm báo cháy khi có 2 xung cảm ứng tia cực tím sau 2 khoảng thời gian, mỗi thời kỳ là 5s.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.2- Công tắc khẩn:(Emergency breaker, nút nhấn khẩn)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp đặt tại những nơi dễ thấy của hành lang các cầu thang để sử dụng khi cần thiết. Thiết bị này cho phép người sử dụng chủ động truyền thông tin báo cháy bằng cách nhấn hoặc kéo vào công tắc khẩn, báo động khẩn cấp cho mọi người đang hiện diện trong khu vực đó được biết để có biện pháp xử lý hỏa hoạn và di chuyển ra khỏi khu vực nguy hiểm bằng các lối thoát hiểm. Gồm có các loại công tắc khẩn như sau:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.2.1 Khẩn tròn, vuông</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.2.2 Khẩn kính vỡ (break glass)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.2.3 Khẩn giật</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3- Thiết bị đầu ra:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Nhận tín hiệu từ trung tâm báo cháy truyền đến và có tính năng phát đi các thông tin bằng âm thanh (chuông, còi), bằng tín hiệu phát sáng (đèn) giúp mọi người nhận biết đang có hiện tượng cháy xảy ra.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.1 Bảng hiện thị phụ</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Hiển thị thông tin các khu vực xảy ra sự cố từ trung tâm báo cháy truyền đến, giúp nhận biết tình trạng nơi xảy ra sự cố để xử lý kịp thời.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.2 Chuông báo cháy</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp đặt tại phòng bảo vệ, các phòng có nhân viên trực ban, hành lang, cầu thang hoặc những nơi đông người qua lại nhằm thông báo cho những người xung quanh có thể biết được sự cố đang xảy ra để có phương án xử lý, di tản kịp thời.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Khi xảy ra sự cố hỏa hoạn, chuông báo động sẽ phát tín hiệu báo động giúp cho nhân viên bảo vệ nhận biết và thông qua thiết bị theo dõi sự cố hỏa hoạn (bảng hiển thị phụ) sẽ biết khu vực nào xảy ra hỏa hoạn, từ đó thông báo kịp thời đến các nhân viên có trách nhiệm phòng cháy chữa cháy khắc phục sự cố hoặc có biện pháp xử lý thích hợp.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.3 Còi báo cháy</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Có tính năng và vị trí lắp đặt giống như chuông báo cháy, tuy nhiên còi được sử dụng khi khoảng cách giữa nơi phát thông báo đến nơi cần nhận thông báo báo động quá xa.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4 Đèn</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Có công dụng phát tín hiệu báo động, mỗi lọai đèn có chức năng khác nhau và được lắp đặt ở tại các vị trí thích hợp để phát huy tối đa tính năng của thiết bị này. Gồm có các lọai đèn:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4.1 Đèn chỉ lối thoát hiểm (Exit Light)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được đặt gần các cầu thang của mỗi tầng lầu, để chỉ lối thoát hiểm trong trường hợp có cháy. Tự động chiếu sáng trong trường hợp mất nguồn AC.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4.2 Đèn báo cháy (Corridor Lamp)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được đặt bên trên công tắc khẩn của mỗi tầng. Đèn báo cháy sẽ sáng lên mỗi khi công tắc khẩn hoạt động, đồng thời đây cũng là đèn báo khẩn cấp cho những người hiện diện trong tòa nhà được biết. Điều này có ý nghĩa quan trọng, vì trong lúc bối rối do sự cố cháy, thì người sử dụng cần phân biệt rõ ràng công tác khẩn nào còn hiệu lực được kích hoạt máy bơm chữa cháy.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4.3 Đèn báo phòng(Room Lamp)</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp đặt trước cửa mỗi phòng giúp nhận biết phòng nào có sự cố một cách dễ dàng và nhanh chóng.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.4.4 Đèn chiếu sáng trong trường hợp khẩn (Emergency Light):</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Khi có báo cháy, thao tác đầu tiên là phải cúp điện. Bây giờ đèn chiếu sáng này sẽ tự động bật sáng (nhờ có bình điện dự phòng battery), nó giúp cho mọi người dễ dàng tìm đường thoát hiểm, hoặc giúp cho các nhân viên có trách nhiệm nhanh chóng thi hành phận sự. Hoặc trong trường hợp mất điện đột ngột do có sự cố về điện, đèn Emergency cũng tỏ ra hữu hiệu.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.5 Bộ quay số điện thoại tự động</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Được lắp trong trung tâm báo cháy, khi nhận được thông tin báo cháy từ trung tâm thiết bị sẽ tự động quay số điện thoại đã được cài đặt trước để thông báo đến người chịu trách nhiệm chính. Thông thường quay được từ 3 tới hơn 10 số.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.6 Bàn phím (Keypad, Bàn phím điều khiển):</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Là phương tiện để điều khiển mọi hoạt động của hệ thống. Qua bàn phím, bạn có thể điều khiển hoạt động theo ý muốn một cách dễ dàng, như nhập lệnh đưa hệ thống vào chế độ giám sát, hoặc có thể ngưng chế độ giám sát một số khu vực trong toàn bộ hệ thống, hoặc có thể lập trình để hệ thống tự động chuyển sang chế độ giám sát vào một thời gian nhất định trong ngày đối với một số khu vực nào đó.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">3.7 Modul địa chỉ:</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Modul địa chỉ được sử dụng trong hệ thống báo cháy địa chỉ, nó có khả năng cho biết vị trí chính xác nơi xảy ra sự cố cháy trong một khu vực đang bảo vệ.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">VI. TIÊU CHUẨN VÀ CÁC YÊU CẦU THIẾT KẾ</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">1.Tiêu chuẩn</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">TCVN5738-1993: Hệ thống báo cháy tự động –yêu cầu kỹ thuật. Tiêu chuẩn này áp dụng cho các hệ thống báo cháy được trang bị tại các nhà máy, xí nghiệp, cơ sở sản xuất, cơ quan công trình công cộng v.v.. - Hệ thống báo cháy tự động là một hệ thống các thiết bị có thể tự động phát hiện và thông báo địa điểm cháy chính xác, đảm bảo hệ thống hoạt động liên tục 24/24 giờ.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">2.Yêu Cầu Thiết Kế</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">* Việc thiết kế, lắp đặt, hệ thống báo cháy phải được sự thỏa thuận của cơ quan phòng cháy, chữa cháy và thỏa mãn các yêu cầu, quy định của các tiêu chuẩn, quy phạm hiện hành có liên quan.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">* Hệ thống báo cháy đáp ứng những yêu cầu như sau :</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Phát hiện cháy nhanh chóng tại khu vực xảy ra sự cố.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Chuyển tín hiệu khi phát hiện có cháy, tín hiệu báo động rõ ràng để những người xung quanh có thể thực hiện ngay các giải pháp thích hợp.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Có khả năng chống nhiễu tốt.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Không bị ảnh hưởng bởi các hệ thống khác lắp đặt chung hoặc riêng lẻ.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Không bị tê liệt một phần hay toàn bộ do cháy gây ra trước khi phát hiện ra cháy.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Hệ thống báo cháy phải đảm bảo độ tin cậy. Hệ thống này thực hiện đầy đủ các chức năng đã được đề ra mà không xảy ra sai sót hoặc các trường hợp đáng tiếc khác.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Những tác động bên ngoài gây sự cố cho một bộ phận của hệ thống không gây ra những sự cố tiếp theo trong hệ thống.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Khả năng dự phòng cao.</span></span></p>

<p style="text-align: justify;"><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">- Khả năng mở rộng dể dàng với chi phí thấp</span></span></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Giai phap bao chay tu dong', 0, 1, CAST(N'2017-09-27T17:51:56.547' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (18, 10, N'Giải Pháp về hệ thống máy chủ - lưu trữ', N'giai-phap-ve-he-thong-may-chu--luu-tru', N'Giải Pháp về hệ thống máy chủ - lưu trữ', N'giai-phap-ve-he-thong-may-chu--luu-tru', N'/Uploads/may-chu-luu-tru.jpg', N'VINHHƯNGGROUP có khả năng cung cấp các giải pháp tổng thể về hệ thống máy chủ và lưu trữ cho doanh nghiệp, đặc biệt là các hệ thống lớn, có độ phức tạp cao về thiết kế và triển khai, tích hợp.', N'VINHHƯNGGROUP có khả năng cung cấp các giải pháp tổng thể về hệ thống máy chủ và lưu trữ cho doanh nghiệp, đặc biệt là các hệ thống lớn, có độ phức tạp cao về thiết kế và triển khai, tích hợp.', N'<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Thiết kế, lựa chọn cấu hình (sizing), triển khai cài đặt… máy chủ - lưu trữ phù hợp với các ứng dụng: File, mail, database, web service, e-commerce, security, billing system…., các ứng dụng chuyên biệt như core banking, core securities, core insurances …</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Tư vấn, thiết kế và triển khai các giải pháp chuyên sâu như: sẵn sàng cao (High Availability), ảo hóa và phân vùng máy chủ - lưu trữ (Visualization and Partition), môi trường đa hệ điều hành (Multiple Operating Environments), các giải pháp cao cấp cloudcomputing, Metro cluster …</span></span></li>
</ul>

<p style="text-align:justify"><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp của VINHHƯNGGROUP cung cấp dựa trên các công nghệ tiên tiến nhất trên toàn dòng sản phẩm và công nghệ (phần cứng + phần mềm) của HP-IBM và được kết hợp, bổ sung các thành phần của các nhà sản xuất khác: Veritas, Hitachi, Oracle… để bảo đảm đáp ứng mọi yêu cầu của khách hàng Một số giải pháp tiêu biểu:</span></span></p>

<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Giải pháp máy chủ - lưu trữ cao cấp, hiệu năng cao: hệ các máy chủ cao cấp HP Integrity, Superdome, IBM p, z series, HP XP family storage, các hệ máy chủ chuyên dụng dùng cho xử lý, tính toán …</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp phân vùng và ảo hóa, giải pháp điện toán đám mây (cloud computing)</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp Core OS và Clustering</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp lưu trữ qua Tape – Disk, giải pháp SAN lưu trữ trực tuyến</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp đồng bộ dữ liệu</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">...</span></span></li>
</ul>

<p style="text-align:justify"><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Ngoài ra, VINHHƯNGGROUP còn có thể cung cấp các dịch vụ cao cấp liên quan đến máy chủ và lưu trữ như:</span></span></p>

<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Dịch vụ cài đặt, cấu hình hệ thống theo yêu cầu</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Dịch vụ bảo trì, hỗ trợ khắc phục sự cố</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Dịch vụ phân tích tải và hiệu năng, tối ưu hóa hệ thống máy chủ và lưu trữ</span></span></li>
</ul>
', N'<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Thiết kế, lựa chọn cấu hình (sizing), triển khai cài đặt… máy chủ - lưu trữ phù hợp với các ứng dụng: File, mail, database, web service, e-commerce, security, billing system…., các ứng dụng chuyên biệt như core banking, core securities, core insurances …</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Tư vấn, thiết kế và triển khai các giải pháp chuyên sâu như: sẵn sàng cao (High Availability), ảo hóa và phân vùng máy chủ - lưu trữ (Visualization and Partition), môi trường đa hệ điều hành (Multiple Operating Environments), các giải pháp cao cấp cloudcomputing, Metro cluster …</span></span></li>
</ul>

<p style="text-align:justify"><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp của VINHHƯNGGROUP cung cấp dựa trên các công nghệ tiên tiến nhất trên toàn dòng sản phẩm và công nghệ (phần cứng + phần mềm) của HP-IBM và được kết hợp, bổ sung các thành phần của các nhà sản xuất khác: Veritas, Hitachi, Oracle… để bảo đảm đáp ứng mọi yêu cầu của khách hàng Một số giải pháp tiêu biểu:</span></span></p>

<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Giải pháp máy chủ - lưu trữ cao cấp, hiệu năng cao: hệ các máy chủ cao cấp HP Integrity, Superdome, IBM p, z series, HP XP family storage, các hệ máy chủ chuyên dụng dùng cho xử lý, tính toán …</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp phân vùng và ảo hóa, giải pháp điện toán đám mây (cloud computing)</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp Core OS và Clustering</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp lưu trữ qua Tape – Disk, giải pháp SAN lưu trữ trực tuyến</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Các giải pháp đồng bộ dữ liệu</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">...</span></span></li>
</ul>

<p style="text-align:justify"><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Ngoài ra, VINHHƯNGGROUP còn có thể cung cấp các dịch vụ cao cấp liên quan đến máy chủ và lưu trữ như:</span></span></p>

<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Dịch vụ cài đặt, cấu hình hệ thống theo yêu cầu</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Dịch vụ bảo trì, hỗ trợ khắc phục sự cố</span></span></li>
	<li><span style="font-size:12px"><span style="font-family:arial,helvetica,sans-serif">Dịch vụ phân tích tải và hiệu năng, tối ưu hóa hệ thống máy chủ và lưu trữ</span></span></li>
</ul>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Giai Phap ve he thong may chu - luu tru', 0, 1, CAST(N'2017-09-27T17:53:59.430' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (19, 9, N'7 chiếc smartphone hấp dẫn nhưng ít ai quan tâm tới', N'7-chiec-smartphone-hap-dan-nhung-it-ai-quan-tam-toi', N'7 chiếc smartphone hấp dẫn nhưng ít ai quan tâm tới', N'7-chiec-smartphone-hap-dan-nhung-it-ai-quan-tam-toi', N'/Uploads/7-chiec-iphone.jpg', N'Hàng năm, có rất nhiều ý tưởng thú vị và tiềm năng ở sân chơi smartphone nhưng không phải tất cả chúng đều thành công. Một số mẫu máy được tung ra thị trường nhưng mờ nhạt.', N'Hàng năm, có rất nhiều ý tưởng thú vị và tiềm năng ở sân chơi smartphone nhưng không phải tất cả chúng đều thành công. Một số mẫu máy được tung ra thị trường nhưng mờ nhạt.', N'<h3 style="text-align:justify">Hàng năm, có rất nhiều ý tưởng thú vị và tiềm năng ở sân chơi smartphone nhưng không phải tất cả chúng đều thành công. Một số mẫu máy được tung ra thị trường nhưng mờ nhạt, một số thậm chí còn không được hiện thực hóa.</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nếu bạn đang cảm thấy có phần chán nản vì thị trường smartphone dần bão hòa và thiếu điểm nhấn sáng tạo thì 7 mẫu máy dưới đây, mặc dù không đạt được nhiều thành công, nhưng sẽ là những sắc màu mới mẻ có thể làm bạn thỏa mãn. Những mẫu điện thoại này đều được trang thông tin&nbsp;<em>Business Insider</em>&nbsp;chọn lựa.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">1. Nokia N9</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">N9 đến từ Nokia được đánh giá là một chiếc điện thoại có thiết kế đẹp cùng với đó là một nền tảng hệ điều hành không giống với bất cứ một thiết bị nào có mặt trên thị trường ở thời điểm ra mắt. Rất tiếc, đối với dòng máy này, Nokia không thể thương thuyết đàm phán thành công với các nhà mạng trên đất Mỹ để phân phối chính thức, do đó, nó không đạt được độ phổ biến trên thị trường quan trọng này.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">2. Ubuntu Edge</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mùa hè năm nay, thiết bị có tên Ubuntu Edge đã huy động vốn được tới 12 triệu USD trên trang khởi nghiệp cộng đồng Indiegogo, dẫu vậy con số này vẫn là không đủ bởi dự án cần đến 30 triệu USD để có thể hiện thực hóa. Điều này thật đáng tiếc bởi chúng ta đã không có cơ hội được chiêm ngưỡng một thiết bị cao cấp vận hành trên nền tảng Ubuntu. Theo thiết kế dự kiến, Ubuntu Edge sẽ sở hữu màn hình 4,5 inch, độ phân giải HD 720p, vi xử lí lõi tứ, RAM 4 GB và bộ nhớ trong cực lớn 128 GB.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">3. Project S</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Project S cũng là một dự án smartphone cao cấp khác không thể gọi vốn thành công trên Indiegogo. Trong khi số tiền vốn để khởi tạo dự án Project S ít hơn Ubuntu Edge rất nhiều thì dự án vẫn không thể trở thành hiện thực bởi thiết bị không tạo được nhiều sự khác biệt đủ sức gây chú ý như dự án smartphone chạy Ubuntu kể trên. Theo thiết kế ban đầu, Project S có màn hình 5,8 inch, vi xử lí 8 nhân, RAM 3 GB, camera sau và trước có thông số lần lượt là 16 Mpx và 2 Mpx cùng với đó là viên pin 3000 mAh.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">4. Điện thoại tiết kiệm năng lượng từ E Ink</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">E Ink, nhà sản xuất phụ kiện màn hình tiết kiệm năng lượng cho các thiết bị Kindle, cũng đã từng hé lộ một mẫu điện thoại sử dụng công nghệ cho phép điện thoại có thể vận hành trong nhiều tuần liên tục. Đáng tiếc, dự án này đã dừng lại ở giai đoạn thử nghiệm.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">5. YotaPhone</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">YotaPhone cũng là một thiết bị smartphone tận dụng công nghệ màn hình E Ink, điểm độc đáo nằm ở chỗ nó còn có cả một màn hình LCD quen thuộc nữa. Người dùng hoàn toàn có thể dễ dàng chuyển đổi giao diện người dùng giữa hai màn hình này, ví dụ khi muốn tiết kiệm pin, bạn sẽ chuyển sang sử dụng màn hình E Ink. Dẫu mang nhiều tiềm năng thế nhưng hiện nay nhà sản xuất mới chỉ phát hành thiết bị độc đáo này tại thị trường Nga.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">6. Smartphone nền tảng Tizen</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với nỗ lực đa dạng hóa sản phẩm đồng thời dần thoát ra khỏi sự phụ thuộc vào nền tảng Android của Google, đến thời điểm này, Samsung đã giới thiệu một vài mẫu máy sử dụng nền tảng Tizen, hệ điều hành do chính ông lớn công nghệ Hoàn Quốc đầu tư phát triển dựa trên nền tảng Linux và HTML 5.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Được biết, một số dòng sản phẩm dự kiến chạy Tizen sẽ có cấu hình tương đương dòng máy Galaxy cao cấp hiện tại, tuy nhiên, chúng ta có quyền hoài nghi về sự thành công của chúng khi lên kệ vào năm tới vì một lí do đơn giản: dĩ nhiên sẽ có những sự bổ sung sau này, nhưng ở giai đoạn bắt đầu sẽ không có quá nhiều ứng dụng khả dụng trên Tizen.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">7. Lenovo K900</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Lenovo K900 là chiếc điện thoại có thiết kế "siêu mẫu". Máy sở hữu màn hình 5,5 inch 1080p, vi xử lí lõi đôi của Intel cùng với RAM 2 GB . Hiện nay, Lenovo K900 chưa được nhà sản xuất phát hành ngoài lãnh thổ Trung Quốc. Dự kiến sản phẩm sẽ xuất hiện rộng rãi trên thị trường vào dịp cuối năm nay, thế nhưng được ra mắt từ lâu nên K900 khó lòng cạnh tranh được với những smartphone Android khác.</span></p>
', N'<h3 style="text-align:justify">Hàng năm, có rất nhiều ý tưởng thú vị và tiềm năng ở sân chơi smartphone nhưng không phải tất cả chúng đều thành công. Một số mẫu máy được tung ra thị trường nhưng mờ nhạt, một số thậm chí còn không được hiện thực hóa.</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nếu bạn đang cảm thấy có phần chán nản vì thị trường smartphone dần bão hòa và thiếu điểm nhấn sáng tạo thì 7 mẫu máy dưới đây, mặc dù không đạt được nhiều thành công, nhưng sẽ là những sắc màu mới mẻ có thể làm bạn thỏa mãn. Những mẫu điện thoại này đều được trang thông tin&nbsp;<em>Business Insider</em>&nbsp;chọn lựa.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">1. Nokia N9</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">N9 đến từ Nokia được đánh giá là một chiếc điện thoại có thiết kế đẹp cùng với đó là một nền tảng hệ điều hành không giống với bất cứ một thiết bị nào có mặt trên thị trường ở thời điểm ra mắt. Rất tiếc, đối với dòng máy này, Nokia không thể thương thuyết đàm phán thành công với các nhà mạng trên đất Mỹ để phân phối chính thức, do đó, nó không đạt được độ phổ biến trên thị trường quan trọng này.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">2. Ubuntu Edge</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mùa hè năm nay, thiết bị có tên Ubuntu Edge đã huy động vốn được tới 12 triệu USD trên trang khởi nghiệp cộng đồng Indiegogo, dẫu vậy con số này vẫn là không đủ bởi dự án cần đến 30 triệu USD để có thể hiện thực hóa. Điều này thật đáng tiếc bởi chúng ta đã không có cơ hội được chiêm ngưỡng một thiết bị cao cấp vận hành trên nền tảng Ubuntu. Theo thiết kế dự kiến, Ubuntu Edge sẽ sở hữu màn hình 4,5 inch, độ phân giải HD 720p, vi xử lí lõi tứ, RAM 4 GB và bộ nhớ trong cực lớn 128 GB.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">3. Project S</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Project S cũng là một dự án smartphone cao cấp khác không thể gọi vốn thành công trên Indiegogo. Trong khi số tiền vốn để khởi tạo dự án Project S ít hơn Ubuntu Edge rất nhiều thì dự án vẫn không thể trở thành hiện thực bởi thiết bị không tạo được nhiều sự khác biệt đủ sức gây chú ý như dự án smartphone chạy Ubuntu kể trên. Theo thiết kế ban đầu, Project S có màn hình 5,8 inch, vi xử lí 8 nhân, RAM 3 GB, camera sau và trước có thông số lần lượt là 16 Mpx và 2 Mpx cùng với đó là viên pin 3000 mAh.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">4. Điện thoại tiết kiệm năng lượng từ E Ink</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">E Ink, nhà sản xuất phụ kiện màn hình tiết kiệm năng lượng cho các thiết bị Kindle, cũng đã từng hé lộ một mẫu điện thoại sử dụng công nghệ cho phép điện thoại có thể vận hành trong nhiều tuần liên tục. Đáng tiếc, dự án này đã dừng lại ở giai đoạn thử nghiệm.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">5. YotaPhone</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">YotaPhone cũng là một thiết bị smartphone tận dụng công nghệ màn hình E Ink, điểm độc đáo nằm ở chỗ nó còn có cả một màn hình LCD quen thuộc nữa. Người dùng hoàn toàn có thể dễ dàng chuyển đổi giao diện người dùng giữa hai màn hình này, ví dụ khi muốn tiết kiệm pin, bạn sẽ chuyển sang sử dụng màn hình E Ink. Dẫu mang nhiều tiềm năng thế nhưng hiện nay nhà sản xuất mới chỉ phát hành thiết bị độc đáo này tại thị trường Nga.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">6. Smartphone nền tảng Tizen</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với nỗ lực đa dạng hóa sản phẩm đồng thời dần thoát ra khỏi sự phụ thuộc vào nền tảng Android của Google, đến thời điểm này, Samsung đã giới thiệu một vài mẫu máy sử dụng nền tảng Tizen, hệ điều hành do chính ông lớn công nghệ Hoàn Quốc đầu tư phát triển dựa trên nền tảng Linux và HTML 5.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Được biết, một số dòng sản phẩm dự kiến chạy Tizen sẽ có cấu hình tương đương dòng máy Galaxy cao cấp hiện tại, tuy nhiên, chúng ta có quyền hoài nghi về sự thành công của chúng khi lên kệ vào năm tới vì một lí do đơn giản: dĩ nhiên sẽ có những sự bổ sung sau này, nhưng ở giai đoạn bắt đầu sẽ không có quá nhiều ứng dụng khả dụng trên Tizen.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">7. Lenovo K900</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Lenovo K900 là chiếc điện thoại có thiết kế "siêu mẫu". Máy sở hữu màn hình 5,5 inch 1080p, vi xử lí lõi đôi của Intel cùng với RAM 2 GB . Hiện nay, Lenovo K900 chưa được nhà sản xuất phát hành ngoài lãnh thổ Trung Quốc. Dự kiến sản phẩm sẽ xuất hiện rộng rãi trên thị trường vào dịp cuối năm nay, thế nhưng được ra mắt từ lâu nên K900 khó lòng cạnh tranh được với những smartphone Android khác.</span></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'7 chiec smartphone hap dan nhung it ai quan tam toi', 0, 0, CAST(N'2017-09-27T22:17:38.847' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (20, 9, N'Lịch sử 12 năm vẻ vang của máy chơi game Xbox', N'lich-su-12-nam-ve-vang-cua-may-choi-game-xbox', N'Lịch sử 12 năm vẻ vang của máy chơi game Xbox', N'lich-su-12-nam-ve-vang-cua-may-choi-game-xbox', N'/Uploads/lich-su-12-nam-ve-vang.jpg', N'Đã tròn 12 năm kể từ khi chiếc Xbox đầu tiên được bán ra. Sau đây là những điểm nhấn của máy chơi game console được Microsoft tung ra vào 2001 này.', N'Đã tròn 12 năm kể từ khi chiếc Xbox đầu tiên được bán ra. Sau đây là những điểm nhấn của máy chơi game console được Microsoft tung ra vào 2001 này.', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đã tròn 12 năm kể từ khi chiếc Xbox đầu tiên được bán ra. Sau đây là những điểm nhấn của máy chơi game console được Microsoft tung ra vào 2001 này.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chiếc Xbox đầu tiên</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chiếc Xbox đầu tiên lên kệ vào ngày 15/11/2001 với giá bán 299 USD, cạnh tranh trực tiếp với Play Station 2 của Sony và GameCube của Nintendo. Microsoft cũng đưa tựa game đình đám Halo, cùng hàng loạt game lớn khác, lên console này. Điểm mạnh của chiếc Xbox đầu tiên là cấu hình tốt, hỗ trợ màn hình độ phân giải cao, cổng Ethernet, bộ nhớ lớn. Điểm yếu của máy là kích thước cồng kềnh, yêu cầu phần cứng ngoài để mở khóa tính năng xem DVD.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Pro</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">4 năm sau đó, ngày 22/11/2005, Microsoft giới thiệu Xbox thế hệ thứ 2, hay còn gọi là Xbox 360. Máy có phần mặt có thể tháo rời, ổ cứng 20 GB, không hỗ trợ WiFi (người dùng phải mua bộ hỗ trợ riêng với giá 99 USD). Mặc dù máy không có cổng xuất HDMI (chỉ được bổ sung ở các phiên bản sau đó), nhưng đây được xem là console đầu tiên được thiết kế để hỗ trợ đồ họa chuẩn HD. 360 lên kệ sớm hơn các đối thủ Play Station 3 và Nintendo Wii 1 năm (các console này ra mắt tháng 11/2006), và phần cứng bị tố gặp lỗi nặng, trong đó đáng hổ thẹn nhất là lỗi "đèn đỏ" (một ánh sáng màu đỏ liên tục nhấp nháy trên máy).</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 phiên bản ổ cứng 20 GB được bán với giá 399 USD. Ngoài ra Microsoft cũng bán một phiên bản khác với giá 299 USD nhưng máy không đi kèm ổ cứng.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Elite</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Elite có thể xem là phiên bản cải tiến của Xbox 360 đời đầu. Máy có thiết kế toàn màu đen và ra mắt tháng 4 năm 2007. Xbox 360 Elite được bổ sung cổng xuất HDMI, ổ cứng dung lượng cao 120 GB, và được bán với giá 480 USD.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Điểm mạnh của chiếc máy này chính là bộ sưu tập game đồ sộ, bao gồm nhiều tựa game độc quyền của Xbox 360, tất cả các game đều có độ phân giải cao, giao diện Dashboard thân thiện, hỗ trợ tay cầm không dây và các phụ kiện khác, dịch vụ Xbox Live hỗ trợ multiplayer trực tuyến (có chat voice và matchmaking - ghép 2 người chơi với nhau). Xbox 360 Elite tương thích ngược với rất nhiều game trên Xbox đời đầu, Marketplace trực tuyến cho phép mua các minigame dễ dàng, hỗ trợ phim HD và TV Show.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tuy nhiên, máy cũng có nhiều điểm yếu như không thể khắc phục các lỗi khó chịu mà người tiền nhiệm của nó - Xbox 360 - để lại: ổ DVD và hệ thống tản nhiệt phát ra nhiều tiếng ồn, bộ nguồn có kích cỡ quá to, không hỗ trợ kết nối mạng không dây, chỉ có 3 cổng USB, ổ DVD chất lượng tầm thường, chơi online cần phải mất thêm phí đăng kí dịch vụ Xbox Live, hạn chế phụ kiện của bên thứ 3.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360S</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tại Hội chợ E3 năm 2010, Microsoft giới thiệu Xbox 360S, một phiên bản cải tiến nữa của 360 với thiết kế được "giảm béo", gọn gàng hơn. Microsoft cũng bổ sung kết nối WiFi và ổ cứng dung lượng lớn, 250 GB ở phiên bản này. Máy có giá bán 299 USD. Đồng thời đến phiên bản này thì lỗi đèn đỏ ở Xbox 360 đời đầu cũng được khắc phục. Đồng thời, cùng với việc bổ sung Netflix (dịch vụ cho thuê phim) và hàng loạt dịch vụ stream khác, Xbox 360 ngày càng trở thành một thiết bị media quan trọng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những điểm mạnh của máy là thiết kế bóng bẩy (nhỏ hơn phiên bản cũ 17%), hoạt động êm hơn, tản nhiệt tốt hơn, khay đĩa và nguồn cũng ổn định hơn, ổ cứng dung lượng cao (250 GB), WiFi tích hợp, 5 cổng USB, cổng Kinect riêng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nhược điểm của Xbox 360S là vẫn dùng ổ cứng độc quyền, nguồn máy vẫn cồng kềnh, controller trên D-pad không có gì cải tiến, không có cáp đi kèm để hỗ trợ chơi game HD.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Kinect</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cũng trong năm 2010, Microsoft giới thiệu cảm biến Kinect. Đây được xem là câu trả lời cho Wii của Nintendo với tay cầm Wii Remote có thể nhận diện cử chỉ. Ngoài việc bổ sung nhận diện cử chỉ cho Xbox 360, Kinect cũng được tích hợp cả camera. Mặc dù cảm biến này bán tốt, nhưng không có nhiều game tận dụng các tính năng của nó. Kinect, vì thế, chỉ như một phụ kiện tạo nên sự nổi bật cho Xbox mà thôi.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những điểm mạnh của Xbox 360 Kinect là hỗ trợ điều khiển bằng chuyển động, thư viện game phong phú, điều khiển giọng nói. Điểm yếu là nó đòi hỏi người chơi mất công tìm hiểu, điều hướng menu và video thường không ổn định, cần phòng có diện tích lớn để hoạt động, nhiều game yêu cầu người chơi phải đứng, cần nguồn riêng khi sử dụng với các máy Xbox 360 đời cũ.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360E</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Được giới thiệu tại E3 2013, Microsoft đã thiết kế giúp Xbox 360E nhỏ gọn hơn một chút so với thế hệ trước nó. Máy có giá bán 250 USD và thường được tặng kèm 1 đến 2 game khi mua. Có thể nói đó là một mức giá hấp dẫn dành cho game thủ. Điểm mạnh của máy vẫn là thư viện game phong phú, máy chạy mát hơn các thế hệ trước. Điểm yếu đó là cổng A/V cũ và S/PDIF đã bị loại bỏ, không có ổ Blu-ray, yêu cầu phải có tài khoản Xbox Live Gold mới hỗ trợ chơi online và nhiều ứng dụng giải trí.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox One</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox One - thế hệ Xbox mới nhất của Microsoft, vừa lên kệ ngày 22/11 vừa qua, chỉ sau PS4 một tuần lễ. Máy có giá 499 USD đã bao gồm cả cảm biến Kinect thế hệ mới (người dùng bắt buộc phải mua cả combo này, không thể mua riêng). Với Xbox One, Microsoft không chỉ tập trung vào tải nghiệm game, mà còn tích hợp trong đó nhiều tiện ích giải trí. One được tích hợp dịch vụ TV trực tuyến, có tính năng nhận diện giọng nói, điều khiển chuyển động rất hứa hẹn. Những điểm mạnh khác gồm đồ họa game được cải tiến, game độc quyền nhiều hơn (1 chút) so với PS4.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tất nhiên, One vẫn còn những điểm yếu như dịch vụ TV trực tuyến hoạt động chưa mượt mà, khả năng nhận diện giọng nói của Kinect chưa ổn định, giao diện dashboard mới phức tạp hơn trước. Máy có giá đắt hơn đối thủ PS4 100 USD, và yêu cầu phải đăng kí dịch vụ Xbox Live Gold (có trả phí) mới có thể sử dụng nhiều tính năng hấp dẫn.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Genk/CNET</span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đã tròn 12 năm kể từ khi chiếc Xbox đầu tiên được bán ra. Sau đây là những điểm nhấn của máy chơi game console được Microsoft tung ra vào 2001 này.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chiếc Xbox đầu tiên</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chiếc Xbox đầu tiên lên kệ vào ngày 15/11/2001 với giá bán 299 USD, cạnh tranh trực tiếp với Play Station 2 của Sony và GameCube của Nintendo. Microsoft cũng đưa tựa game đình đám Halo, cùng hàng loạt game lớn khác, lên console này. Điểm mạnh của chiếc Xbox đầu tiên là cấu hình tốt, hỗ trợ màn hình độ phân giải cao, cổng Ethernet, bộ nhớ lớn. Điểm yếu của máy là kích thước cồng kềnh, yêu cầu phần cứng ngoài để mở khóa tính năng xem DVD.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Pro</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">4 năm sau đó, ngày 22/11/2005, Microsoft giới thiệu Xbox thế hệ thứ 2, hay còn gọi là Xbox 360. Máy có phần mặt có thể tháo rời, ổ cứng 20 GB, không hỗ trợ WiFi (người dùng phải mua bộ hỗ trợ riêng với giá 99 USD). Mặc dù máy không có cổng xuất HDMI (chỉ được bổ sung ở các phiên bản sau đó), nhưng đây được xem là console đầu tiên được thiết kế để hỗ trợ đồ họa chuẩn HD. 360 lên kệ sớm hơn các đối thủ Play Station 3 và Nintendo Wii 1 năm (các console này ra mắt tháng 11/2006), và phần cứng bị tố gặp lỗi nặng, trong đó đáng hổ thẹn nhất là lỗi "đèn đỏ" (một ánh sáng màu đỏ liên tục nhấp nháy trên máy).</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 phiên bản ổ cứng 20 GB được bán với giá 399 USD. Ngoài ra Microsoft cũng bán một phiên bản khác với giá 299 USD nhưng máy không đi kèm ổ cứng.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Elite</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Elite có thể xem là phiên bản cải tiến của Xbox 360 đời đầu. Máy có thiết kế toàn màu đen và ra mắt tháng 4 năm 2007. Xbox 360 Elite được bổ sung cổng xuất HDMI, ổ cứng dung lượng cao 120 GB, và được bán với giá 480 USD.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Điểm mạnh của chiếc máy này chính là bộ sưu tập game đồ sộ, bao gồm nhiều tựa game độc quyền của Xbox 360, tất cả các game đều có độ phân giải cao, giao diện Dashboard thân thiện, hỗ trợ tay cầm không dây và các phụ kiện khác, dịch vụ Xbox Live hỗ trợ multiplayer trực tuyến (có chat voice và matchmaking - ghép 2 người chơi với nhau). Xbox 360 Elite tương thích ngược với rất nhiều game trên Xbox đời đầu, Marketplace trực tuyến cho phép mua các minigame dễ dàng, hỗ trợ phim HD và TV Show.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tuy nhiên, máy cũng có nhiều điểm yếu như không thể khắc phục các lỗi khó chịu mà người tiền nhiệm của nó - Xbox 360 - để lại: ổ DVD và hệ thống tản nhiệt phát ra nhiều tiếng ồn, bộ nguồn có kích cỡ quá to, không hỗ trợ kết nối mạng không dây, chỉ có 3 cổng USB, ổ DVD chất lượng tầm thường, chơi online cần phải mất thêm phí đăng kí dịch vụ Xbox Live, hạn chế phụ kiện của bên thứ 3.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360S</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tại Hội chợ E3 năm 2010, Microsoft giới thiệu Xbox 360S, một phiên bản cải tiến nữa của 360 với thiết kế được "giảm béo", gọn gàng hơn. Microsoft cũng bổ sung kết nối WiFi và ổ cứng dung lượng lớn, 250 GB ở phiên bản này. Máy có giá bán 299 USD. Đồng thời đến phiên bản này thì lỗi đèn đỏ ở Xbox 360 đời đầu cũng được khắc phục. Đồng thời, cùng với việc bổ sung Netflix (dịch vụ cho thuê phim) và hàng loạt dịch vụ stream khác, Xbox 360 ngày càng trở thành một thiết bị media quan trọng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những điểm mạnh của máy là thiết kế bóng bẩy (nhỏ hơn phiên bản cũ 17%), hoạt động êm hơn, tản nhiệt tốt hơn, khay đĩa và nguồn cũng ổn định hơn, ổ cứng dung lượng cao (250 GB), WiFi tích hợp, 5 cổng USB, cổng Kinect riêng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nhược điểm của Xbox 360S là vẫn dùng ổ cứng độc quyền, nguồn máy vẫn cồng kềnh, controller trên D-pad không có gì cải tiến, không có cáp đi kèm để hỗ trợ chơi game HD.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Kinect</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cũng trong năm 2010, Microsoft giới thiệu cảm biến Kinect. Đây được xem là câu trả lời cho Wii của Nintendo với tay cầm Wii Remote có thể nhận diện cử chỉ. Ngoài việc bổ sung nhận diện cử chỉ cho Xbox 360, Kinect cũng được tích hợp cả camera. Mặc dù cảm biến này bán tốt, nhưng không có nhiều game tận dụng các tính năng của nó. Kinect, vì thế, chỉ như một phụ kiện tạo nên sự nổi bật cho Xbox mà thôi.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những điểm mạnh của Xbox 360 Kinect là hỗ trợ điều khiển bằng chuyển động, thư viện game phong phú, điều khiển giọng nói. Điểm yếu là nó đòi hỏi người chơi mất công tìm hiểu, điều hướng menu và video thường không ổn định, cần phòng có diện tích lớn để hoạt động, nhiều game yêu cầu người chơi phải đứng, cần nguồn riêng khi sử dụng với các máy Xbox 360 đời cũ.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360E</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Được giới thiệu tại E3 2013, Microsoft đã thiết kế giúp Xbox 360E nhỏ gọn hơn một chút so với thế hệ trước nó. Máy có giá bán 250 USD và thường được tặng kèm 1 đến 2 game khi mua. Có thể nói đó là một mức giá hấp dẫn dành cho game thủ. Điểm mạnh của máy vẫn là thư viện game phong phú, máy chạy mát hơn các thế hệ trước. Điểm yếu đó là cổng A/V cũ và S/PDIF đã bị loại bỏ, không có ổ Blu-ray, yêu cầu phải có tài khoản Xbox Live Gold mới hỗ trợ chơi online và nhiều ứng dụng giải trí.</span></p>

<h4 style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox One</span></strong></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox One - thế hệ Xbox mới nhất của Microsoft, vừa lên kệ ngày 22/11 vừa qua, chỉ sau PS4 một tuần lễ. Máy có giá 499 USD đã bao gồm cả cảm biến Kinect thế hệ mới (người dùng bắt buộc phải mua cả combo này, không thể mua riêng). Với Xbox One, Microsoft không chỉ tập trung vào tải nghiệm game, mà còn tích hợp trong đó nhiều tiện ích giải trí. One được tích hợp dịch vụ TV trực tuyến, có tính năng nhận diện giọng nói, điều khiển chuyển động rất hứa hẹn. Những điểm mạnh khác gồm đồ họa game được cải tiến, game độc quyền nhiều hơn (1 chút) so với PS4.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tất nhiên, One vẫn còn những điểm yếu như dịch vụ TV trực tuyến hoạt động chưa mượt mà, khả năng nhận diện giọng nói của Kinect chưa ổn định, giao diện dashboard mới phức tạp hơn trước. Máy có giá đắt hơn đối thủ PS4 100 USD, và yêu cầu phải đăng kí dịch vụ Xbox Live Gold (có trả phí) mới có thể sử dụng nhiều tính năng hấp dẫn.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Genk/CNET</span></em></p>
', CAST(N'2017-09-28T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Lich su 12 nam ve vang cua may choi game Xbox', 0, 0, CAST(N'2017-09-27T22:20:46.607' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (21, 9, N'Galaxy Gear 2 đồng hành cùng Galaxy S5 ra mắt tháng 3/2014', N'galaxy-gear-2-dong-hanh-cung-galaxy-s5-ra-mat-thang-32014', N'Galaxy Gear 2 đồng hành cùng Galaxy S5 ra mắt tháng 3/2014', N'galaxy-gear-2-dong-hanh-cung-galaxy-s5-ra-mat-thang-32014', N'/Uploads/hinhanhgalaxynote8.jpg', N'Theo thông báo từ trang ETNews của Hàn Quốc thì thế hệ tiếp theo của Galaxy Gear sẽ không đợi đến ngày Galaxy Note 4 ra mắt,...', N'Theo thông báo từ trang ETNews của Hàn Quốc thì thế hệ tiếp theo của Galaxy Gear sẽ không đợi đến ngày Galaxy Note 4 ra mắt,...', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo thông báo từ trang<em>&nbsp;ETNews</em>&nbsp;của Hàn Quốc thì thế hệ tiếp theo của Galaxy Gear sẽ không đợi đến ngày Galaxy Note 4 ra mắt, thay vào đó nó sẽ ra mắt vào tháng 3 cùng với Galaxy S5.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nguồn tin chỉ ra rằng Samsung dự kiến sẽ công bố Gear 2 tại CES vào tháng 1/2014, và điều này sẽ giúp công ty phát hành sản phẩm ra thị trường vào khoảng tháng 2 đến tháng 3. Việc cập nhật phiên bản mới của smartwatch sẽ giúp Samsung cạnh tranh tốt hơn với các đối thủ mới gia nhập thị trường smartwatch vào năm tới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trước đó, người dùng đã phàn nàn rằng thế hệ Galaxy Gear đầu tiên quá dày, không hiển thị đầy đủ các thông báo và tuổi thọ pin quá ngắn. Chính vì vậy, thông tin từ<em>ETNews&nbsp;</em>cho biết Gear 2 có kích thước ỏng hơn 15 đến 20% so với phiên bản gốc chắc chắn sẽ nhận được sự chú ý của người dùng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Liên quan đến Galaxy S5, đây là mẫu smartphone được đồn là sẽ phát hành trong khoảng thời điểm từ tháng 2 đến tháng 4, nhưng trước đó máy sẽ được Samsung cho giới thiệu tại MWC vào tháng 2.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Để chuẩn bị cho sự phát hành, Samsung sẽ bắt đầu hoạt động sản xuất Galaxy S5 vào tháng Giêng với sản lượng đạt khoảng 800.000 đến 1 triệu máy, trước khi tăng tốc độ lắp ráp lên 6 triệu vào tháng 2. Đây là sản phẩm cao cấp của Samsung, hứa hẹn trang bị VXL Exynos 6 với kiến trúc 64 bit, RAM 3 GB cùng pin dung lượng 4000 mAh. Màn hình 5 inch của máy cung cấp độ phân giải 2560 x 1440 pixel.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://www.androidheadlines.com/2013/11/next-generation-galaxy-gear-pair-galaxy-s5-launch-march.html" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">Android Headlines</a></span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo thông báo từ trang<em>&nbsp;ETNews</em>&nbsp;của Hàn Quốc thì thế hệ tiếp theo của Galaxy Gear sẽ không đợi đến ngày Galaxy Note 4 ra mắt, thay vào đó nó sẽ ra mắt vào tháng 3 cùng với Galaxy S5.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nguồn tin chỉ ra rằng Samsung dự kiến sẽ công bố Gear 2 tại CES vào tháng 1/2014, và điều này sẽ giúp công ty phát hành sản phẩm ra thị trường vào khoảng tháng 2 đến tháng 3. Việc cập nhật phiên bản mới của smartwatch sẽ giúp Samsung cạnh tranh tốt hơn với các đối thủ mới gia nhập thị trường smartwatch vào năm tới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trước đó, người dùng đã phàn nàn rằng thế hệ Galaxy Gear đầu tiên quá dày, không hiển thị đầy đủ các thông báo và tuổi thọ pin quá ngắn. Chính vì vậy, thông tin từ<em>ETNews&nbsp;</em>cho biết Gear 2 có kích thước ỏng hơn 15 đến 20% so với phiên bản gốc chắc chắn sẽ nhận được sự chú ý của người dùng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Liên quan đến Galaxy S5, đây là mẫu smartphone được đồn là sẽ phát hành trong khoảng thời điểm từ tháng 2 đến tháng 4, nhưng trước đó máy sẽ được Samsung cho giới thiệu tại MWC vào tháng 2.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Để chuẩn bị cho sự phát hành, Samsung sẽ bắt đầu hoạt động sản xuất Galaxy S5 vào tháng Giêng với sản lượng đạt khoảng 800.000 đến 1 triệu máy, trước khi tăng tốc độ lắp ráp lên 6 triệu vào tháng 2. Đây là sản phẩm cao cấp của Samsung, hứa hẹn trang bị VXL Exynos 6 với kiến trúc 64 bit, RAM 3 GB cùng pin dung lượng 4000 mAh. Màn hình 5 inch của máy cung cấp độ phân giải 2560 x 1440 pixel.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://www.androidheadlines.com/2013/11/next-generation-galaxy-gear-pair-galaxy-s5-launch-march.html" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">Android Headlines</a></span></em></p>
', CAST(N'2017-09-28T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Galaxy Gear 2 dong hanh cung Galaxy S5 ra mat thang 32014', 0, 0, CAST(N'2017-09-27T22:23:16.633' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (22, 9, N'Chip xử lí di động hướng đến nền tảng 64 bit', N'chip-xu-li-di-dong-huong-den-nen-tang-64-bit', N'Chip xử lí di động hướng đến nền tảng 64 bit', N'chip-xu-li-di-dong-huong-den-nen-tang-64-bit', N'/Uploads/chip.jpg', N'Chip Apple chip A7 trong iPhone 5s và iPad Air với khả năng vận hành mã 64 bit là "phát súng" đầu tiên khởi động cuộc đua chip xử lí 64 bit cho các thiết bị di động trong năm 2014', N'Chip Apple chip A7 trong iPhone 5s và iPad Air với khả năng vận hành mã 64 bit là "phát súng" đầu tiên khởi động cuộc đua chip xử lí 64 bit cho các thiết bị di động trong năm 2014', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chip Apple chip A7 trong iPhone 5s và iPad Air với khả năng vận hành mã 64 bit là "phát súng" đầu tiên khởi động cuộc đua chip xử lí 64 bit cho các thiết bị di động trong năm 2014.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Intel, Samsung và Qualcomm đều rục rịch chuẩn bị cho cuộc đua này.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong lộ trình từ 2014 đến năm 2016, Intel sẽ lần lượt giới thiệu các phiên bản chip Atom mới cho smartphone và tablet, mục tiêu tăng tốc độ xử lí của CPU lên gấp 5 lần và khả năng xử lí đồ họa lên đến 15 lần vào năm 2016.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chip Atom mới dựa trên các nhân xử lí đồ họa và CPU mới, có mức giá thấp hướng đến nhóm thiết bị di động tầm trung, dự kiến có mặt vào năm 2015. Intel tập trung cải thiện khả năng xử lí điện năng hiệu quả hơn, tiết kiệm nguồn điện để gia tăng thời lượng pin sử dụng của thiết bị. Ở cả ba phân khúc thiết bị di động bình dân, tầm trung và cao cấp, Intel đều sẽ có những đại diện CPU mới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hiện Intel đang trong cuộc đuổi bắt với ARM trên thị trường chip xử lí cho smartphone. Intel sẽ tung ra các chip Atom đầu tiên theo quy trình sản xuất 14 nm (nanometer), cho hiệu năng xử lí và tiết kiệm điện. Cụ thể, vào cuối năm 2014, dòng chip cho thiết bị di động tên mã Cherry Trail sẽ xuất xưởng, nó dựa trên nền CPU Airmont sắp ra mắt. Cherry Trail mang theo thế hệ nhân xử lí đồ họa mới của Intel. Kế đến vào năm 2015, lần lượt các thế hệ kế tiếp gồm Broxton (dựa trên nền CPU Goldmont, GPU Skylake) ra mắt.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Năm 2014, Intel cũng tung ra chip hai nhân (dual-core) Merrifield dành cho smartphone cao cấp. Merrifield sản xuất theo tiến trình 22 nm. Thế hệ Merrifield bốn nhân (quad-core) ra mắt vào nửa cuối năm sau. Đối với smartphone bình dân, Intel có chip Atom SoC tên mã Sofia vào cuối năm 2014, nhân xử lí dựa trên kiến trúc x86.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo TechHive, Giám đốc điều hành (CEO) Intel Brian Krzanich thừa nhận, Intel phải tăng tốc để bắt kịp các đối thủ lớn khác trên thị trường để trở thành nhà cung cấp chip xử lí cho thị trường smartphone và tablet đang phát triển mạnh mẽ. Do đó, Broxton và Sofia ra mắt sớm hơn dự kiến. Thậm chí ba tháng trước đó, lộ trình sản xuất chưa có những cái tên này".</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cuộc đua chip xử lí 64 bit</span></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Khi ra mắt iPhone 5s, chip A7 SoC (System-on-Chip) của Apple đã khiến thị trường chip xử lí di động một phen "khó thở" khi tận dụng lợi ích ở cả hai nền tảng 32 bit lẫn 64 bit. Tuy nhiên, vào thời điểm hiện tại, A7 là bước nền để chuyển dịch sang môi trường 64 bit, và qua đó, Apple khuyến khích các nhà phát triển ứng dụng, game nâng cấp sản phẩm của mình tiến lên tầm cao hơn về cả khả năng xử lí lẫn đồ họa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong lộ trình sản phẩm của Intel cho thấy hãng này sẽ chuyển đổi nền tảng chip 32 bit sang 64 bit, hướng đến các thiết bị dùng Windows trước, và sau đó sẽ là các máy tính bảng Android. Tuy nhiên, đưa Bay Trail trên nền Atom tiến lên 64 bit cũng sẽ gặp phải một đối thủ khác là AMD với chip Kabini (vi kiến trúc Jaguar) đã có mặt trong các notebook tầm trung.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đầu tháng 11, Samsung tuyên bố sẽ sản xuất CPU 64 bit và smartphone dùng chip 64 bit của hãng này cũng sẽ xuất xưởng trong năm 2014. Chip 64 bit của Samsung là bản tối ưu dựa trên thiết kế từ ARM tương tự Apple A7 có trong iPhone 5s và iPad Air.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ngày 21/11 vừa qua, Qualcomm đã trình làng dòng chip Snapdragon 805, một thế hệ cải tiến cho chip xử lí Snapdragon 800 đang có mặt trong nhiều smartphone và tablet cao cấp trên thị trường. Theo Qualcomm, Snapdragon 805 không phải là phiên bản lớn so với Snapdragon 800, nó tập trung cải tiến CPU, GPU (hỗ trợ video nén theo chuẩn H.265, độ phân giải từ Full-HD lên 2560 x 1440), giao diện bộ nhớ (tối đa 4 GB RAM), được sản xuất theo tiến trình 28 nm HPm tương tự Snapdragon 800.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Khác với Nvidia và Samsung dựa trên vi kiến trúc ARM Cortex A15, Qualcomm tận dụng vi kiến trúc Krait và công nghệ xử lí đồ họa (GPU) Areno. Qualcomm đã có kế hoạch chuyến lên môi trường 64 bit và ARMv8 nhưng chưa công bố chi tiết lộ trình.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Tuổi Trẻ Online</span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chip Apple chip A7 trong iPhone 5s và iPad Air với khả năng vận hành mã 64 bit là "phát súng" đầu tiên khởi động cuộc đua chip xử lí 64 bit cho các thiết bị di động trong năm 2014.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Intel, Samsung và Qualcomm đều rục rịch chuẩn bị cho cuộc đua này.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong lộ trình từ 2014 đến năm 2016, Intel sẽ lần lượt giới thiệu các phiên bản chip Atom mới cho smartphone và tablet, mục tiêu tăng tốc độ xử lí của CPU lên gấp 5 lần và khả năng xử lí đồ họa lên đến 15 lần vào năm 2016.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chip Atom mới dựa trên các nhân xử lí đồ họa và CPU mới, có mức giá thấp hướng đến nhóm thiết bị di động tầm trung, dự kiến có mặt vào năm 2015. Intel tập trung cải thiện khả năng xử lí điện năng hiệu quả hơn, tiết kiệm nguồn điện để gia tăng thời lượng pin sử dụng của thiết bị. Ở cả ba phân khúc thiết bị di động bình dân, tầm trung và cao cấp, Intel đều sẽ có những đại diện CPU mới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hiện Intel đang trong cuộc đuổi bắt với ARM trên thị trường chip xử lí cho smartphone. Intel sẽ tung ra các chip Atom đầu tiên theo quy trình sản xuất 14 nm (nanometer), cho hiệu năng xử lí và tiết kiệm điện. Cụ thể, vào cuối năm 2014, dòng chip cho thiết bị di động tên mã Cherry Trail sẽ xuất xưởng, nó dựa trên nền CPU Airmont sắp ra mắt. Cherry Trail mang theo thế hệ nhân xử lí đồ họa mới của Intel. Kế đến vào năm 2015, lần lượt các thế hệ kế tiếp gồm Broxton (dựa trên nền CPU Goldmont, GPU Skylake) ra mắt.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Năm 2014, Intel cũng tung ra chip hai nhân (dual-core) Merrifield dành cho smartphone cao cấp. Merrifield sản xuất theo tiến trình 22 nm. Thế hệ Merrifield bốn nhân (quad-core) ra mắt vào nửa cuối năm sau. Đối với smartphone bình dân, Intel có chip Atom SoC tên mã Sofia vào cuối năm 2014, nhân xử lí dựa trên kiến trúc x86.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo TechHive, Giám đốc điều hành (CEO) Intel Brian Krzanich thừa nhận, Intel phải tăng tốc để bắt kịp các đối thủ lớn khác trên thị trường để trở thành nhà cung cấp chip xử lí cho thị trường smartphone và tablet đang phát triển mạnh mẽ. Do đó, Broxton và Sofia ra mắt sớm hơn dự kiến. Thậm chí ba tháng trước đó, lộ trình sản xuất chưa có những cái tên này".</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cuộc đua chip xử lí 64 bit</span></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Khi ra mắt iPhone 5s, chip A7 SoC (System-on-Chip) của Apple đã khiến thị trường chip xử lí di động một phen "khó thở" khi tận dụng lợi ích ở cả hai nền tảng 32 bit lẫn 64 bit. Tuy nhiên, vào thời điểm hiện tại, A7 là bước nền để chuyển dịch sang môi trường 64 bit, và qua đó, Apple khuyến khích các nhà phát triển ứng dụng, game nâng cấp sản phẩm của mình tiến lên tầm cao hơn về cả khả năng xử lí lẫn đồ họa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong lộ trình sản phẩm của Intel cho thấy hãng này sẽ chuyển đổi nền tảng chip 32 bit sang 64 bit, hướng đến các thiết bị dùng Windows trước, và sau đó sẽ là các máy tính bảng Android. Tuy nhiên, đưa Bay Trail trên nền Atom tiến lên 64 bit cũng sẽ gặp phải một đối thủ khác là AMD với chip Kabini (vi kiến trúc Jaguar) đã có mặt trong các notebook tầm trung.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đầu tháng 11, Samsung tuyên bố sẽ sản xuất CPU 64 bit và smartphone dùng chip 64 bit của hãng này cũng sẽ xuất xưởng trong năm 2014. Chip 64 bit của Samsung là bản tối ưu dựa trên thiết kế từ ARM tương tự Apple A7 có trong iPhone 5s và iPad Air.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ngày 21/11 vừa qua, Qualcomm đã trình làng dòng chip Snapdragon 805, một thế hệ cải tiến cho chip xử lí Snapdragon 800 đang có mặt trong nhiều smartphone và tablet cao cấp trên thị trường. Theo Qualcomm, Snapdragon 805 không phải là phiên bản lớn so với Snapdragon 800, nó tập trung cải tiến CPU, GPU (hỗ trợ video nén theo chuẩn H.265, độ phân giải từ Full-HD lên 2560 x 1440), giao diện bộ nhớ (tối đa 4 GB RAM), được sản xuất theo tiến trình 28 nm HPm tương tự Snapdragon 800.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Khác với Nvidia và Samsung dựa trên vi kiến trúc ARM Cortex A15, Qualcomm tận dụng vi kiến trúc Krait và công nghệ xử lí đồ họa (GPU) Areno. Qualcomm đã có kế hoạch chuyến lên môi trường 64 bit và ARMv8 nhưng chưa công bố chi tiết lộ trình.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Tuổi Trẻ Online</span></em></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Chip xu li di dong huong den nen tang 64 bit', 0, 0, CAST(N'2017-09-27T22:26:21.880' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (23, 9, N'HTC ra mắt loạt 4 smartphone Desire mới', N'htc-ra-mat-loat-4-smartphone-desire-moi', N'HTC ra mắt loạt 4 smartphone Desire mới', N'htc-ra-mat-loat-4-smartphone-desire-moi', N'/Uploads/htc.jpg', N'HTC vừa công bố loạt 4 điện thoại mới ra thị trường Đài Loan, gồm Desire 700, Desire 501, Desire 601 và Desire 300 được thiết kế hướng đến nhiều phân khúc khác nhau.', N'HTC vừa công bố loạt 4 điện thoại mới ra thị trường Đài Loan, gồm Desire 700, Desire 501, Desire 601 và Desire 300 được thiết kế hướng đến nhiều phân khúc khác nhau.', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">HTC vừa công bố loạt 4 điện thoại mới ra thị trường Đài Loan, gồm Desire 700, Desire 501, Desire 601 và Desire 300 được thiết kế hướng đến nhiều phân khúc khác nhau. Trong số này 601 và 300 từng được công ty giới thiệu tại IFA 2013.</span></p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<div class="image-caption"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">HTC Desire 700</span></strong></div>
</div>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Desire 700 là phiên bản cao nhất với khả năng hỗ trợ 2 SIM, VXL Qualcomm Snapdragonn 4 nhân tốc độ 1,2 GHz cùng màn hình 5 inch có độ phân giải 960 x 540 pixel. Bên cạnh đó máy còn được trang bị RAM 1 GB, bộ nhớ trong 8 GB, máy ảnh 8 Mpx ở mặt sau và 2,1 Mpx ở mặt trước hỗ trợ thoại có hình.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tiếp theo là Desire 501 với màn hình 4,3 inch có độ phân giải 800 x 480 pixel, VXL lõi kép Qualcomm Snapdragon tốc độ 1,2 GHz, RAM 1 GB, bộ nhớ trong 8 GB, máy ảnh 8 Mpx ở mặt sau và 2,1 Mpx ở mặt trước hỗ trợ thoại có hình.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">HTC Desire 601 cung cấp màn hình 4,5 inch với độ phân giải 960 x 540 pixel, VXL lõi tứ tốc độ 1,2 GHz, RAM 1 GB, bộ nhớ trong 4 GB và máy ảnh 5 Mpx ở mặt sau.</span></p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<div class="image-caption"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">HTC Desire 601.</span></strong></div>
</div>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cuối cùng là phiên bản rẻ nhất Desire 300 với màn hình cảm ứng 4,3 inch cho độ phân giải 854 x 480 pixel, VXL lõi kép tốc độ 1 GHz, RAM 512 MB, bộ nhớ trong 4 GB và máy ảnh 5 Mpx ở mặt sau.</span></p>
</div>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong số này, 700 và 601 hỗ trợ 2 SIM và 2 loa stereo với tính năng BoomSound, còn 501 và 300 chỉ trang bị loa thiết kế bình thường, riêng 501 hỗ trợ tính năng NFC.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Giá bán cho Desire 700 là 470 USD, Desire 501 là 335 USD, Desire 601 là 368 USD và cuối cùng Desire 300 là 267 USD, áp dụng cho thị trường Đài Loan.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://www.androidheadlines.com/2013/11/htc-unveils-four-new-desire-smartphones-more-mid-range-devices-for-taiwan.html" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">Android Headlines</a></span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">HTC vừa công bố loạt 4 điện thoại mới ra thị trường Đài Loan, gồm Desire 700, Desire 501, Desire 601 và Desire 300 được thiết kế hướng đến nhiều phân khúc khác nhau. Trong số này 601 và 300 từng được công ty giới thiệu tại IFA 2013.</span></p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<div class="image-caption"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">HTC Desire 700</span></strong></div>
</div>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Desire 700 là phiên bản cao nhất với khả năng hỗ trợ 2 SIM, VXL Qualcomm Snapdragonn 4 nhân tốc độ 1,2 GHz cùng màn hình 5 inch có độ phân giải 960 x 540 pixel. Bên cạnh đó máy còn được trang bị RAM 1 GB, bộ nhớ trong 8 GB, máy ảnh 8 Mpx ở mặt sau và 2,1 Mpx ở mặt trước hỗ trợ thoại có hình.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tiếp theo là Desire 501 với màn hình 4,3 inch có độ phân giải 800 x 480 pixel, VXL lõi kép Qualcomm Snapdragon tốc độ 1,2 GHz, RAM 1 GB, bộ nhớ trong 8 GB, máy ảnh 8 Mpx ở mặt sau và 2,1 Mpx ở mặt trước hỗ trợ thoại có hình.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">HTC Desire 601 cung cấp màn hình 4,5 inch với độ phân giải 960 x 540 pixel, VXL lõi tứ tốc độ 1,2 GHz, RAM 1 GB, bộ nhớ trong 4 GB và máy ảnh 5 Mpx ở mặt sau.</span></p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<div class="image-caption"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">HTC Desire 601.</span></strong></div>
</div>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cuối cùng là phiên bản rẻ nhất Desire 300 với màn hình cảm ứng 4,3 inch cho độ phân giải 854 x 480 pixel, VXL lõi kép tốc độ 1 GHz, RAM 512 MB, bộ nhớ trong 4 GB và máy ảnh 5 Mpx ở mặt sau.</span></p>
</div>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong số này, 700 và 601 hỗ trợ 2 SIM và 2 loa stereo với tính năng BoomSound, còn 501 và 300 chỉ trang bị loa thiết kế bình thường, riêng 501 hỗ trợ tính năng NFC.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Giá bán cho Desire 700 là 470 USD, Desire 501 là 335 USD, Desire 601 là 368 USD và cuối cùng Desire 300 là 267 USD, áp dụng cho thị trường Đài Loan.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://www.androidheadlines.com/2013/11/htc-unveils-four-new-desire-smartphones-more-mid-range-devices-for-taiwan.html" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">Android Headlines</a></span></em></p>
', CAST(N'2017-09-28T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'HTC ra mat loat 4 smartphone Desire moi', 0, 0, CAST(N'2017-09-27T22:28:11.853' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (24, 15, N'Sẽ có thiết bị chạy chip Tegra 4i và Tegra 5 của NVIDIA vào Q1/ 2014', N'se-co-thiet-bi-chay-chip-tegra-4i-va-tegra-5-cua-nvidia-vao-q1-2014', N'Sẽ có thiết bị chạy chip Tegra 4i và Tegra 5 của NVIDIA vào Q1/ 2014', N'se-co-thiet-bi-chay-chip-tegra-4i-va-tegra-5-cua-nvidia-vao-q1-2014', N'/Uploads/terga.jpg', N'Nguồn tin từ trang GSMarena cho hay, sẽ có loạt thiết bị chạy thế hệ VLX mới nhất của NVIDIA được tung ra vào đầu 2014 tới do hệ chip Tegra 4 hiện tại không còn được ưa chuộng và nhà mạng AT&T sẽ là nơi dừng chân đầu tiên của loạt thiết bị này.', N'Nguồn tin từ trang GSMarena cho hay, sẽ có loạt thiết bị chạy thế hệ VLX mới nhất của NVIDIA được tung ra vào đầu 2014 tới do hệ chip Tegra 4 hiện tại không còn được ưa chuộng và nhà mạng AT&T sẽ là nơi dừng chân đầu tiên của loạt thiết bị này.', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nguồn tin từ trang GSMarena cho hay, sẽ có loạt thiết bị chạy thế hệ VLX mới nhất của NVIDIA được tung ra vào đầu 2014 tới do hệ chip Tegra 4 hiện tại không còn được ưa chuộng và nhà mạng AT&amp;T sẽ là nơi dừng chân đầu tiên của loạt thiết bị này.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo đó, thế hệ VXL tiếp theo của NVIDIA bao gồm Tegra 4i và Tegra 5 sẽ có mặt trên smartphone vào Q1/2014. Tegra 4i sẽ là chip nhắm vào các thiết bị tầm trung (sẽ công bố vào Q1/2014 và bán ra vào quý tiếp theo). Đây là VXL kết hợp giữa Tegra 3 và Tegra 4, sử dụng bốn lõi CPU Cortex-A9 kèm lõi tiết kiệm năng lượng (tương tự Tegra 3), tích hợp GPU thu gọn của Tegra 4, có mặt của kết nối 4G LTE/HSPA+,... Trong Tegra 4i cũng sẽ được NVIDIA tích hợp nhân Cortex-A9 tốc độ xung nhịp 2,3 Ghz mỗi nhân giúp tăng hiệu suất xử lí từ 30 - 40% so với nhân A15 có mặt trên Tegra 4.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cùng với Tegra 4i, Tegra 5 cũng có cấu hình tương tự. Tuy nhiên, Tegra 5 sẽ không đi kèm với một modem di động tích hợp mà sẽ được bổ sung con chip giống Icera i500 của NVIDIA. Tegra 5 sẽ sử dụng GPU Kepler, đây là công nghệ mà NVIDIA sử dụng cho máy tính để bàn và GPU di động GeForce 6xx.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://blog.gsmarena.com/devices-with-nvidias-tegra-5-and-tegra-4i-chipsets-coming-in-q1-next-year/" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">GSMarena</a></span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nguồn tin từ trang GSMarena cho hay, sẽ có loạt thiết bị chạy thế hệ VLX mới nhất của NVIDIA được tung ra vào đầu 2014 tới do hệ chip Tegra 4 hiện tại không còn được ưa chuộng và nhà mạng AT&amp;T sẽ là nơi dừng chân đầu tiên của loạt thiết bị này.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo đó, thế hệ VXL tiếp theo của NVIDIA bao gồm Tegra 4i và Tegra 5 sẽ có mặt trên smartphone vào Q1/2014. Tegra 4i sẽ là chip nhắm vào các thiết bị tầm trung (sẽ công bố vào Q1/2014 và bán ra vào quý tiếp theo). Đây là VXL kết hợp giữa Tegra 3 và Tegra 4, sử dụng bốn lõi CPU Cortex-A9 kèm lõi tiết kiệm năng lượng (tương tự Tegra 3), tích hợp GPU thu gọn của Tegra 4, có mặt của kết nối 4G LTE/HSPA+,... Trong Tegra 4i cũng sẽ được NVIDIA tích hợp nhân Cortex-A9 tốc độ xung nhịp 2,3 Ghz mỗi nhân giúp tăng hiệu suất xử lí từ 30 - 40% so với nhân A15 có mặt trên Tegra 4.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cùng với Tegra 4i, Tegra 5 cũng có cấu hình tương tự. Tuy nhiên, Tegra 5 sẽ không đi kèm với một modem di động tích hợp mà sẽ được bổ sung con chip giống Icera i500 của NVIDIA. Tegra 5 sẽ sử dụng GPU Kepler, đây là công nghệ mà NVIDIA sử dụng cho máy tính để bàn và GPU di động GeForce 6xx.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://blog.gsmarena.com/devices-with-nvidias-tegra-5-and-tegra-4i-chipsets-coming-in-q1-next-year/" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">GSMarena</a></span></em></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Se co thiet bi chay chip Tegra 4i va Tegra 5 cua NVIDIA vao Q1 2014', 0, 0, CAST(N'2017-09-27T22:30:55.137' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (25, 15, N'Pin ống nano carbon dẻo cho thiết bị di động', N'pin-ong-nano-carbon-deo-cho-thiet-bi-di-dong', N'Pin ống nano carbon dẻo cho thiết bị di động', N'pin-ong-nano-carbon-deo-cho-thiet-bi-di-dong', N'/Uploads/pin-ong-nano.jpg', N'Để có thể mang lại những sản phẩm cong và uốn dẻo đúng nghĩa, một nhóm nghiên cứu đến từ New Jersey Institute of Technology (NJIT) đã phát triển pin dẻo sử dụng các ống nano carbon.', N'Để có thể mang lại những sản phẩm cong và uốn dẻo đúng nghĩa, một nhóm nghiên cứu đến từ New Jersey Institute of Technology (NJIT) đã phát triển pin dẻo sử dụng các ống nano carbon.', N'<p><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Để có thể mang lại những sản phẩm cong và uốn dẻo đúng nghĩa, một nhóm nghiên cứu đến từ New Jersey Institute of Technology (NJIT) đã phát triển pin dẻo sử dụng các ống nano carbon.</span></em></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chúng ta thường thấy trong tất cả những màn trình diễn công nghệ màn hình dẻo, chúng luôn được kết nối với một nguồn bên ngoài. Cũng như lí do khiến các điện thoại màn hình cong mới của Samsung và LG có kích thước lớn là bởi nó chứa một pin phẳng bên trong. Với công nghệ được phát triển tại NJIT, chúng có thể giải quyết vấn đề này và mang có thể mang lại nhiều hơn nữa những lợi ích trong tương lai.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Một số đã được minh chứng qua các ý tưởng của các nhà nghiên cứu tại NJIT và họ đả bắt đầu đưa ra một số tiêu chuẩn cho pin điện hóa cảu mình trên kiến trúc vật liệu mềm. Cụ thể, cấu trúc các pin này đơn giản là một loại nhựa dẻo với các ống nano carbon và hạt nano khác như là thành phần chính hoạt động trong pin. Tất cả (cực âm, cực dương và các hạt nano) được cố định một cách khá kiên cố.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Công nghệ pin này có khả năng mở rộng rất lớn. Các nhà nghiên cứu cho rằng, bằng cách thay đổi kích thước hai cực ka-tốt và a-nốt, kích thước các tế bào có thể được dễ dàng sửa đổi. Nó có thể có kích thước như một đầu kim, hoặc có thể lớn hơn nhiều.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Bằng sáng chế liên quan đến công nghệ này vừa được NJIT đăng kí, và vẫn chưa có thông tin về việc triển khai thương mại trên công nghệ này. Nếu điều này là khả thi, có thể Samsung hay LG rất mong mỏi nó sớm được tung ra thị trường.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo NLĐ/Extremetech</span></em></p>
', N'<p><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Để có thể mang lại những sản phẩm cong và uốn dẻo đúng nghĩa, một nhóm nghiên cứu đến từ New Jersey Institute of Technology (NJIT) đã phát triển pin dẻo sử dụng các ống nano carbon.</span></em></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chúng ta thường thấy trong tất cả những màn trình diễn công nghệ màn hình dẻo, chúng luôn được kết nối với một nguồn bên ngoài. Cũng như lí do khiến các điện thoại màn hình cong mới của Samsung và LG có kích thước lớn là bởi nó chứa một pin phẳng bên trong. Với công nghệ được phát triển tại NJIT, chúng có thể giải quyết vấn đề này và mang có thể mang lại nhiều hơn nữa những lợi ích trong tương lai.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Một số đã được minh chứng qua các ý tưởng của các nhà nghiên cứu tại NJIT và họ đả bắt đầu đưa ra một số tiêu chuẩn cho pin điện hóa cảu mình trên kiến trúc vật liệu mềm. Cụ thể, cấu trúc các pin này đơn giản là một loại nhựa dẻo với các ống nano carbon và hạt nano khác như là thành phần chính hoạt động trong pin. Tất cả (cực âm, cực dương và các hạt nano) được cố định một cách khá kiên cố.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Công nghệ pin này có khả năng mở rộng rất lớn. Các nhà nghiên cứu cho rằng, bằng cách thay đổi kích thước hai cực ka-tốt và a-nốt, kích thước các tế bào có thể được dễ dàng sửa đổi. Nó có thể có kích thước như một đầu kim, hoặc có thể lớn hơn nhiều.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Bằng sáng chế liên quan đến công nghệ này vừa được NJIT đăng kí, và vẫn chưa có thông tin về việc triển khai thương mại trên công nghệ này. Nếu điều này là khả thi, có thể Samsung hay LG rất mong mỏi nó sớm được tung ra thị trường.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo NLĐ/Extremetech</span></em></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Pin ong nano carbon deo cho thiet bi di dong', 0, 0, CAST(N'2017-09-27T22:32:40.597' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (26, 15, N'Công nghệ mới biến nước thành lửa', N'cong-nghe-moi-bien-nuoc-thanh-lua', N'Công nghệ mới biến nước thành lửa', N'cong-nghe-moi-bien-nuoc-thanh-lua', N'/Uploads/bien-nuoc-thanh-lua.jpg', N'Các nhà khoa học thuộc Dự án nghiên cứu châu Âu đang phát triển một thiết bị cầm tay có thể sử dụng nước để tạo ra lửa. Thiết bị này được kì vọng sẽ giúp tiết kiệm chi phí sản xuất trong ngành công nghiệp hàn xì, hay những công việc cần đến lửa vì nó có thể tự tạo ra nguồn năng lượng khi cần.', N'Các nhà khoa học thuộc Dự án nghiên cứu châu Âu đang phát triển một thiết bị cầm tay có thể sử dụng nước để tạo ra lửa. Thiết bị này được kì vọng sẽ giúp tiết kiệm chi phí sản xuất trong ngành công nghiệp hàn xì, hay những công việc cần đến lửa vì nó có thể tự tạo ra nguồn năng lượng khi cần.', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà khoa học thuộc Dự án nghiên cứu châu Âu đang phát triển một thiết bị cầm tay có thể sử dụng nước để tạo ra lửa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Thiết bị này được kì vọng sẽ giúp tiết kiệm chi phí sản xuất trong ngành công nghiệp hàn xì, hay những công việc cần đến lửa vì nó có thể tự tạo ra nguồn năng lượng khi cần.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đây là một hệ thống điện phân, được thiết kể để sử dụng một nguồn cung cấp điện và nước. Trong đó, nước được phân tách thành khí hydro và oxy, sau đó đưa vào một "ngọn đuốc" - nơi tạo ra lửa. Ngọn lửa này có thể được sử dụng cho việc hàn xì hoặc các ứng dụng công nghiệp khác cần đến lửa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ông Andrew Ellis, chuyên gia kĩ thuật thuộc Công ty ITM Power (Anh) cho biết: “Chúng tôi có đội ngũ các chuyên gia hóa học, nghiên cứu về công thức màng ngăn mới. Chúng tôi đã thử nghiệm rất nhiều với chất xúc tác, cố gắng làm giảm lượng platinum (bạch kim) và thay thế bằng các vật liệu rẻ hơn. Điều này sẽ giảm chi phí cho hệ thống điện phân”.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hydro và oxy kết hợp với nhau ở đỉnh của ngọn đuốc, tạo ra một ngọn lửa mát hơn và dễ xử lí hơn so với ngọn lửa nóng được kết hợp từ khí oxy với propan hoặc acetylene.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ông Rory Olney, chuyên gia tư vấn hàn xì cho biết: “Ngọn lửa này nhẹ hơn nhiều so với một ngọn lửa kết hợp giữa oxy và acetylene. Sức nóng không quá mạnh ở đỉnh của ngọn đuốc, do đó ánh sáng phát ra từ ngọn lửa cũng ít gây hại hơn đối với mắt".</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà khoa học cho biết, những nguyên liệu tạo ra ngọn lửa nóng theo phương pháp truyền thống như acetylene rất nguy hiểm và bất tiện. Việc sử dụng nguyên liệu này đã bị cấm ở những nơi dễ rò rỉ khí. Ngoài ra, việc sử dụng ngọn lửa kết hợp giữa oxy và acetylene đòi hỏi sự chú ý đặc biệt khi xử lí các kim loại nhạy như nhôm.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nhận định về lợi ích của thiết bị tạo lửa mới, chuyên gia Rory Olney giải thích: “Một trong những lợi ích chính của thiết bị này là ngọn đuốc luôn lạnh khi chạm vào, vì lửa được sinh ra và bốc cháy bên ngoài đuốc. Khi không sử dụng nữa, ngọn đuốc sẽ luôn ở trạng thái lạnh, do đó có thể đặt ở bất cứ nơi nào theo ý muốn".</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo nhà khoa học nghiên cứu kim loại Nick Ludford, việc tạo ra khí đốt từ hydro rẻ hơn 20 lần so với khí đốt từ acetylene vì không cần chi phí vào việc tích trữ khí đốt, bảo hiểm và vận chuyển. Do đó, những doanh nghiệp nhỏ và vừa có thể sẽ đánh giá cao những lợi thế của việc tạo ra ngọn lửa mát từ lửa và nước khi công nghệ này được đưa vào thị trường trong tương lai gần.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo VOV/EuroNews</span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà khoa học thuộc Dự án nghiên cứu châu Âu đang phát triển một thiết bị cầm tay có thể sử dụng nước để tạo ra lửa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Thiết bị này được kì vọng sẽ giúp tiết kiệm chi phí sản xuất trong ngành công nghiệp hàn xì, hay những công việc cần đến lửa vì nó có thể tự tạo ra nguồn năng lượng khi cần.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đây là một hệ thống điện phân, được thiết kể để sử dụng một nguồn cung cấp điện và nước. Trong đó, nước được phân tách thành khí hydro và oxy, sau đó đưa vào một "ngọn đuốc" - nơi tạo ra lửa. Ngọn lửa này có thể được sử dụng cho việc hàn xì hoặc các ứng dụng công nghiệp khác cần đến lửa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ông Andrew Ellis, chuyên gia kĩ thuật thuộc Công ty ITM Power (Anh) cho biết: “Chúng tôi có đội ngũ các chuyên gia hóa học, nghiên cứu về công thức màng ngăn mới. Chúng tôi đã thử nghiệm rất nhiều với chất xúc tác, cố gắng làm giảm lượng platinum (bạch kim) và thay thế bằng các vật liệu rẻ hơn. Điều này sẽ giảm chi phí cho hệ thống điện phân”.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hydro và oxy kết hợp với nhau ở đỉnh của ngọn đuốc, tạo ra một ngọn lửa mát hơn và dễ xử lí hơn so với ngọn lửa nóng được kết hợp từ khí oxy với propan hoặc acetylene.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ông Rory Olney, chuyên gia tư vấn hàn xì cho biết: “Ngọn lửa này nhẹ hơn nhiều so với một ngọn lửa kết hợp giữa oxy và acetylene. Sức nóng không quá mạnh ở đỉnh của ngọn đuốc, do đó ánh sáng phát ra từ ngọn lửa cũng ít gây hại hơn đối với mắt".</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà khoa học cho biết, những nguyên liệu tạo ra ngọn lửa nóng theo phương pháp truyền thống như acetylene rất nguy hiểm và bất tiện. Việc sử dụng nguyên liệu này đã bị cấm ở những nơi dễ rò rỉ khí. Ngoài ra, việc sử dụng ngọn lửa kết hợp giữa oxy và acetylene đòi hỏi sự chú ý đặc biệt khi xử lí các kim loại nhạy như nhôm.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nhận định về lợi ích của thiết bị tạo lửa mới, chuyên gia Rory Olney giải thích: “Một trong những lợi ích chính của thiết bị này là ngọn đuốc luôn lạnh khi chạm vào, vì lửa được sinh ra và bốc cháy bên ngoài đuốc. Khi không sử dụng nữa, ngọn đuốc sẽ luôn ở trạng thái lạnh, do đó có thể đặt ở bất cứ nơi nào theo ý muốn".</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo nhà khoa học nghiên cứu kim loại Nick Ludford, việc tạo ra khí đốt từ hydro rẻ hơn 20 lần so với khí đốt từ acetylene vì không cần chi phí vào việc tích trữ khí đốt, bảo hiểm và vận chuyển. Do đó, những doanh nghiệp nhỏ và vừa có thể sẽ đánh giá cao những lợi thế của việc tạo ra ngọn lửa mát từ lửa và nước khi công nghệ này được đưa vào thị trường trong tương lai gần.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo VOV/EuroNews</span></em></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Cong nghe moi bien nuoc thanh lua', 0, 0, CAST(N'2017-09-27T22:34:19.137' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (27, 15, N'Trung Quốc ra mắt bóng đèn có thể phát sóng Wi-Fi', N'trung-quoc-ra-mat-bong-den-co-the-phat-song-wi-fi', N'Trung Quốc ra mắt bóng đèn có thể phát sóng Wi-Fi', N'trung-quoc-ra-mat-bong-den-co-the-phat-song-wi-fi', N'/Uploads/img-1382897533-1.jpg', N'
Trung Quốc ra mắt bóng đèn có thể phát sóng Wi-Fi

Một nhóm các nhà khoa học ở Trung Quốc đã phát minh ra bóng đèn phát ra tín hiệu Wi-Fi đầu tiên trên thế giới. Các nhà khoa học thuộc trường đại học Phục Đán ở Thượng Hải (Trung Quốc) đã phát triển thành công bóng', N'
Trung Quốc ra mắt bóng đèn có thể phát sóng Wi-Fi

Một nhóm các nhà khoa học ở Trung Quốc đã phát minh ra bóng đèn phát ra tín hiệu Wi-Fi đầu tiên trên thế giới. Các nhà khoa học thuộc trường đại học Phục Đán ở Thượng Hải (Trung Quốc) đã phát triển thành công bóng', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Một nhóm các nhà khoa học ở Trung Quốc đã phát minh ra bóng đèn phát ra tín hiệu Wi-Fi đầu tiên trên thế giới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà khoa học thuộc trường đại học Phục Đán ở Thượng Hải (Trung Quốc) đã phát triển thành công bóng đèn LED được gắn vi mạch có khả năng phát ra sóng Wi-Fi. Các chuyên gia cho biết sản phẩm được đặt tên là Li-Fi thậm chí có tốc độ kết nối tốt hơn kết nối internet không dây ở Trung Quốc.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo trang công nghệ&nbsp;<em>Gizmodo&nbsp;</em>cho biết, 4 thiết bị đặt gần bóng đèn Li-Fi có thể kết nối với tín hiệu Wi-Fi sử dụng các tần số ánh sáng thay vì sóng radio. Bóng đèn được gắn vi mạch có khả năng phát tín hiệu với tốc độ 150 Mbps, được coi là nhanh hơn tốc độ kết nối Wi-Fi trung bình ở Trung Quốc.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tháng tới, các nhà nghiên cứu sẽ giới thiệu 10 mẫu bóng đèn đầu tiên cùng các thiết bị đi kèm tại Hội chợ công nghiệp quốc tế ở Thượng Hải. Bóng đèn Li-Fi được đánh giá cao vì chỉ sử dụng 5% năng lượng cần thiết để cung cấp cho các thiết bị phát Wi-Fi khác.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các chuyên gia cho rằng cách kết nối Wi-Fi nhanh, rẻ và tiết kiệm năng lượng này có thể sẽ trở nên phổ biến tại các gia đình Trung Quốc, khi ngày càng nhiều người bỏ bóng đèn sợi đốt để chuyển sang sử dụng bóng đèn LED.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mặc dù công nghệ mới phù hợp với xu hướng thay đổi công nghệ của Trung Quốc, nhưng các nhà phát triển vẫn đối mặt với nhiều vấn đề trong thiết kế và sản xuất, đặc biệt là khó khăn trong thiết kế vi mạch và kết nối có thể bị gián đoạn nếu bóng đèn bị tắt hay ánh sáng từ bóng đèn bị che khuất.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Daily Mail/Khám Phá</span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Một nhóm các nhà khoa học ở Trung Quốc đã phát minh ra bóng đèn phát ra tín hiệu Wi-Fi đầu tiên trên thế giới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà khoa học thuộc trường đại học Phục Đán ở Thượng Hải (Trung Quốc) đã phát triển thành công bóng đèn LED được gắn vi mạch có khả năng phát ra sóng Wi-Fi. Các chuyên gia cho biết sản phẩm được đặt tên là Li-Fi thậm chí có tốc độ kết nối tốt hơn kết nối internet không dây ở Trung Quốc.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo trang công nghệ&nbsp;<em>Gizmodo&nbsp;</em>cho biết, 4 thiết bị đặt gần bóng đèn Li-Fi có thể kết nối với tín hiệu Wi-Fi sử dụng các tần số ánh sáng thay vì sóng radio. Bóng đèn được gắn vi mạch có khả năng phát tín hiệu với tốc độ 150 Mbps, được coi là nhanh hơn tốc độ kết nối Wi-Fi trung bình ở Trung Quốc.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tháng tới, các nhà nghiên cứu sẽ giới thiệu 10 mẫu bóng đèn đầu tiên cùng các thiết bị đi kèm tại Hội chợ công nghiệp quốc tế ở Thượng Hải. Bóng đèn Li-Fi được đánh giá cao vì chỉ sử dụng 5% năng lượng cần thiết để cung cấp cho các thiết bị phát Wi-Fi khác.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các chuyên gia cho rằng cách kết nối Wi-Fi nhanh, rẻ và tiết kiệm năng lượng này có thể sẽ trở nên phổ biến tại các gia đình Trung Quốc, khi ngày càng nhiều người bỏ bóng đèn sợi đốt để chuyển sang sử dụng bóng đèn LED.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mặc dù công nghệ mới phù hợp với xu hướng thay đổi công nghệ của Trung Quốc, nhưng các nhà phát triển vẫn đối mặt với nhiều vấn đề trong thiết kế và sản xuất, đặc biệt là khó khăn trong thiết kế vi mạch và kết nối có thể bị gián đoạn nếu bóng đèn bị tắt hay ánh sáng từ bóng đèn bị che khuất.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Daily Mail/Khám Phá</span></em></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Trung Quoc ra mat bong den co the phat song Wi-Fi', 0, 0, CAST(N'2017-09-27T22:35:39.583' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (28, 15, N'Microsoft đang thử nghiệm kính thông minh giống Google Glass', N'microsoft-dang-thu-nghiem-kinh-thong-minh-giong-google-glass', N'Microsoft đang thử nghiệm kính thông minh giống Google Glass', N'microsoft-dang-thu-nghiem-kinh-thong-minh-giong-google-glass', N'/Uploads/google-glass.jpg', N'Microsoft đang thử nghiệm các bản mẫu của chiếc kính có khả năng kết nối Internet giống như Google Glass của Google, tờ The Wall Street Journal đưa tin hôm qua, 22/12.', N'Microsoft đang thử nghiệm các bản mẫu của chiếc kính có khả năng kết nối Internet giống như Google Glass của Google, tờ The Wall Street Journal đưa tin hôm qua, 22/12.', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Microsoft đang thử nghiệm các bản mẫu của chiếc kính có khả năng kết nối Internet giống như Google Glass của Google, tờ&nbsp;<em>The Wall Street Journal</em>&nbsp;đưa tin hôm qua, 22/12.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tờ tạp chí Mỹ không đưa ra bất cứ chi tiết nào về bản mẫu chiếc kính thông minh của Mirosoft, tuy nhiên, tờ báo này khẳng định rằng, chương trình này là một phần trong kế hoạch của Microsoft nhằm cạnh tranh với các đối thủ Google, Samsung và Apple trên thị trường phần cứng.</span></p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<div class="image-caption"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Microsoft đang phát triển mẫu kính thông minh để cạnh tranh với Google Glass.</span></div>
</div>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mặc dù người phát ngôn của Microsoft đã từ chối đưa ra bình luận trước những thông tin nói trên, tuy nhiên, nhiều ý kiến cho rằng, việc Microsoft tham gia vào lĩnh vực kính thông minh hoàn toàn không có gì lạ khi thị trường này được dự đoán là sẽ rất phát triển trong vài năm tới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Google đã giới thiệu chiếc kính thông minh Google Glass phiên bản Explorer vào đầu năm nay với giá 1.500 USD dành riêng cho các nhà phát triển và những người đặt hàng sớm. Nhiều dự đoán cho rằng, “gã khổng lồ tìm kiếm” sẽ cho ra phiên bản Google Glass phiên bản thương mại có giá mềm hơn vào cuối năm này. Tuy nhiên, cho tới hiện tại, việc ra mắt bản thương mại của Google Glass trong năm nay gần như đã trở nên vô vọng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Không chỉ có Microsoft, nhiều hãng công nghệ cũng bắt đầu tham gia vào cuộc chạy đua thiết bị công nghệ mang mặc. Hãng Recon được cho là đang chuẩn bị cho ra mắt chiếc kính thông minh Reconjet vào tháng 3 năm tới. Hãng này cũng khẳng định sẽ tiếp tục theo đuổi các thiết bị công nghệ mang mặc được nhờ khoản đầu tư rất lớn từ Intel.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ngoài ra, Samsung, hãng điện tử đến từ Hàn Quốc cũng được cho là đang phát triển chiếc kính thông minh cùng họ Gear với chiếc smartwatch Galaxy Gear ra mắt hồi tháng trước.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Thị trường các thiết bị công nghệ mang mặc được dự kiến sẽ có những bước phát triển đột phá trong vài năm tới đây. Nhiều sản phẩm sẽ có tính ứng dụng cao đặc biệt là trong các lĩnh vực sức khỏe và an ninh.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Vietnamnet/CNET</span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Microsoft đang thử nghiệm các bản mẫu của chiếc kính có khả năng kết nối Internet giống như Google Glass của Google, tờ&nbsp;<em>The Wall Street Journal</em>&nbsp;đưa tin hôm qua, 22/12.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tờ tạp chí Mỹ không đưa ra bất cứ chi tiết nào về bản mẫu chiếc kính thông minh của Mirosoft, tuy nhiên, tờ báo này khẳng định rằng, chương trình này là một phần trong kế hoạch của Microsoft nhằm cạnh tranh với các đối thủ Google, Samsung và Apple trên thị trường phần cứng.</span></p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<div class="image-caption"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Microsoft đang phát triển mẫu kính thông minh để cạnh tranh với Google Glass.</span></div>
</div>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mặc dù người phát ngôn của Microsoft đã từ chối đưa ra bình luận trước những thông tin nói trên, tuy nhiên, nhiều ý kiến cho rằng, việc Microsoft tham gia vào lĩnh vực kính thông minh hoàn toàn không có gì lạ khi thị trường này được dự đoán là sẽ rất phát triển trong vài năm tới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Google đã giới thiệu chiếc kính thông minh Google Glass phiên bản Explorer vào đầu năm nay với giá 1.500 USD dành riêng cho các nhà phát triển và những người đặt hàng sớm. Nhiều dự đoán cho rằng, “gã khổng lồ tìm kiếm” sẽ cho ra phiên bản Google Glass phiên bản thương mại có giá mềm hơn vào cuối năm này. Tuy nhiên, cho tới hiện tại, việc ra mắt bản thương mại của Google Glass trong năm nay gần như đã trở nên vô vọng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Không chỉ có Microsoft, nhiều hãng công nghệ cũng bắt đầu tham gia vào cuộc chạy đua thiết bị công nghệ mang mặc. Hãng Recon được cho là đang chuẩn bị cho ra mắt chiếc kính thông minh Reconjet vào tháng 3 năm tới. Hãng này cũng khẳng định sẽ tiếp tục theo đuổi các thiết bị công nghệ mang mặc được nhờ khoản đầu tư rất lớn từ Intel.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ngoài ra, Samsung, hãng điện tử đến từ Hàn Quốc cũng được cho là đang phát triển chiếc kính thông minh cùng họ Gear với chiếc smartwatch Galaxy Gear ra mắt hồi tháng trước.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Thị trường các thiết bị công nghệ mang mặc được dự kiến sẽ có những bước phát triển đột phá trong vài năm tới đây. Nhiều sản phẩm sẽ có tính ứng dụng cao đặc biệt là trong các lĩnh vực sức khỏe và an ninh.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Vietnamnet/CNET</span></em></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Microsoft dang thu nghiem kinh thong minh giong Google Glass', 0, 0, CAST(N'2017-09-27T22:37:27.593' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (29, 16, N'Review BlackBerry Passport từ Kuala Lumpur', N'review-blackberry-passport-tu-kuala-lumpur', N'Review BlackBerry Passport từ Kuala Lumpur', N'review-blackberry-passport-tu-kuala-lumpur', N'/Uploads/blackbary.jpg', N'Hôm qua 24/9 BlackBerry đã chính thức ra mắt thiết bị BlackBerry Passport. Đây là chiếc điện thoại thông minh cao cấp mới được sản xuất ngay tại quê hương Canada. Theo BlackBerry thì sản phẩm này sẽ tập trung vào phân khúc khách hàng doanh nghiệp với thiết kế và nhiều tính năng mới hỗ trợ công việc ', N'Hôm qua 24/9 BlackBerry đã chính thức ra mắt thiết bị BlackBerry Passport. Đây là chiếc điện thoại thông minh cao cấp mới được sản xuất ngay tại quê hương Canada. Theo BlackBerry thì sản phẩm này sẽ tập trung vào phân khúc khách hàng doanh nghiệp với thiết kế và nhiều tính năng mới hỗ trợ công việc ', N'<p><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Hôm qua 24/9 BlackBerry đã chính thức ra mắt thiết bị BlackBerry Passport. Đây là chiếc điện thoại thông minh cao cấp mới được sản xuất ngay tại quê hương Canada. Theo BlackBerry thì sản phẩm này sẽ tập trung vào phân khúc khách hàng doanh nghiệp với thiết kế và nhiều tính năng mới hỗ trợ công việc hiệu quả hơn.</span><br />
<br />
<strong>Thiết kế</strong><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Máy được bao quanh bởi viền kim loại, hai bên canh bo nhẹ vào thân máy cho cảm giác cầm rất thoải mái và không bị cấn tay. Với màn hình vuông 4.5" và "bàn phím cứng có cảm ứng" BlackBerry Passport có thiết kế khác hẳn với những chiếc điện thoại trên thị trường hiện nay cũng như các sản phẩm trước đây của hãng. Cảm giác đầu tiên khi cầm là máy rất to và khá sang trọng, tuy nhiên sẽ hơi khó khăn khi sử dụng bằng một tay.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Nhìn tổng thể mặt trước máy khá hài hoà, bàn phím được BlackBerry rút gọn chỉ còn 3 dãy phím. Phía trên là loa thoại kèm các cảm biến cùng camera trước 2 MP.</span></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/UUE68F7.jpg" /><br />
<br />
Cạnh phải là các phím tăng giảm âm lượng và phím chức năng Pause/Play dành cho Media hoặc kích hoạt BlackBerry Assistant ở giữa 2 phím âm lượng.<br />
<br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/qbK6GY3.jpg" /><br />
<br />
Cạnh trái máy không được trang bị thêm phím chức năng nào<br />
<br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/JoqP8oS.jpg" /><br />
<br />
Trên đỉnh máy là cổng cắm tai nghe 3.5mm và phím nguồn cũng được làm bằng kim loai nhìn rất tinh tế và thêm một khe nhỏ ở giữa để chúng ta có thể mở phần nắp để gắn sim card và thẻ nhớ<br />
<br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/WxArD9S.jpg" /><br />
<br />
Cạnh đáy máy chỉ có cổng MicroUSB để truyền dữ liệu và sạc pin. Trên thiết bi Passport BlackBerry đã tích hợp luôn cổng HDMI qua giao thức MHL (?) Bên mình sẽ trải nghiệm cổng này ngay khi có cable tương thích. Và cuối cùng là một mic để thoại chính.<br />
<br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/3l1kGoh.jpg" /><br />
​</span></div>

<p><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Năp lưng máy được thiết kế khá đơn giản, chất liệu giống với mặt lưng của Playbook và không cho người dùng thay thế pin. Ở giữa là logo BlackBerry giống với thiết kế truyền thống trước đây của hãng.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Cụm camera 13MP của Passport có thiết kế khá đẹp và có phần lồi hơn so với nắp lưng. gần phía trên đỉnh máy có một đường viền kim loại cắt ngang để phân chia khung bỏ sim và thẻ nhớ và phần nắp lưng còn lại.</span></span></p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><br />
<span style="font-size:12px"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/3GoBRYc.jpg" /><br />
​</span></div>

<p><span style="font-size:12px"><strong>Trải nghiệm</strong><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">BlackBerry Passport sở hữu màn hình vuông 4.5" sử dụng công nghệ và có độ phân phân giải 1440x1440 (453ppi). Theo cảm nhận của mình thì màn hình của thiết bị chất lượng hình ảnh và màu sắc cao và sắc nét. Khi ra ngoài trời nắng máy vẫn hiển thị tốt nội dung. Mặt kính cường lực Gorilla Glass 3 giúp giảm trầy xước tốt và bảo vệ màn hình hiệu quả hơn.</span></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/yOxzfxU.jpg" />​</span></div>

<p><br />
<span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Đặt biệt với màn hình lớn này, Passport hiển thị nội dung đầy đủ hơn, nhiều hơn khi lướt web, xem và soạn văn bản. Mỗi dòng chữ hiện 60 kí tự khác với những chiếc điện thoại khác hiện nay chỉ có khoảng 40 kí tự đổ lại hoặc phải xoay ngang màn hình.</span></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/FadOnHq.jpg" />​</span></div>

<p><br />
<span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Bàn phím có cảm ứng giúp thao tác điều hướng khi lướt web hay soạn văn bản khá tiện lợi và nhanh chóng với các thao tác khác như:</span></span></p>

<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li><span style="font-size:12px">Xoá văn bản bằng cách vuốt từ bên phải sang trực tiếp trên bàn phím cứng (giống thao tác khi thực hiện trên bàn phím ảo)</span></li>
	<li><span style="font-size:12px">Vuốt lên để dự đoán từ trên bàn phím cứng</span></li>
	<li><span style="font-size:12px">Bàn phím Passport cũng giống như một trackpad lớn chúng ta có thể di chuyển con trỏ trên đó khi soạn văn bản hoặc chọn từ thay vì phải chạm ngón tay lên màn hình để di chuyển con trỏ như các máy thuần cảm ứng khác làm nội dung bị khuất sau ngón tay rất bất tiện.</span></li>
</ul>

<p><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Bàn phím cũng được lượt bỏ đi một dòng, trên các phím chỉ được in chữ cái, các kí tự và phím shift cũng đã bị lượt bỏ. Khi các bạn gõ văn bản sẽ có thểm một dòng kỉ tự nhỏ và phím shift sẽ được hiển thị trên màn hình. Điều này tạm thời khá bất tiện nếu như ban đã quen dùng những chiếc BlackBerry có bàn phím cứng trước đây.</span><br />
<br />
<strong>Hiệu năng</strong></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><strong><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/nARQUOH.jpg" /></strong>​</span></div>

<p><br />
<span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">BlackBerry Passport được trang bị chip Snapdragon 800 Quad-Core 2.2GHz, GPU Adreno 330 và 3 GB RAM, đây cũng là thiết bị có cấu hình cao nhất từ trước đến nay của BlackBerry. Mình đã thử một số ứng dụng và tính năng để kiểm tra xem tốc độ và hiệu năng của máy. Tốc độ khi truy cập và thoát các ứng dụng khá nhanh, nhanh hơn hẵn so với chiếc BlackBerry Z30. Khi vào trình duyệt máy tải hình ảnh khá nhanh và mượt.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Hầu hết các tác vụ như chụp ảnh, quay phim, xử lý ảnh, văn bản lớn đều được cải thiện tốc độ đáng kể, rất nhanh và hầu như không có độ trễ (lag). Nếu như bạn là tín đồ của "dâu đen" và chưa hài lòng với hiệu năng của các model BB10 trước đây thì Passport chính là sự lựa chọn của bạn.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Pin cũng là một đặc điểm khá nổt bật trên chiếc BlackBerry Passport. Với dung pin 3450mAh, hãng đã nói rằng chúng ta có thể sử dụng trọn một ngày với cường độ làm việc cao. Mình chưa sử dụng thiết bị này nhiều nền sẽ có bài đánh giá pin chi tiết và khách quan cho các bạn.</span></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><strong>Video trên tay BlackBerry Passport:</strong><br />
[Đang cập nhật...]​</span></div>

<p><br />
<span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Thông số kỹ thuật chính thức của BlackBerry Passport:</span></span><br />
 </p>

<div class="parseHTML" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<table border="0" style="border-collapse:collapse; width:680px">
	<tbody>
		<tr>
			<th><span style="font-size:12px">Brand</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">BlackBerry</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Model</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">Passport</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Bộ xử lý</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">Qualcomm Snapdragon 800 with 2.2GHz Quad-Core CPUs (MSM8974-AA), Card đồ họa Adreno 330, 450MHz GPU</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Bộ nhớ RAM</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">3GB LPDDR3 800MHz RAM, 32GB Flash (Bộ nhớ trong), Khe cắm thẻ nhớ MicroSD có thể thay nóng hộn trợ lên đến 64Gb</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Màn hình</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">LCD 4.5" tỷ lệ 1:1, Độ phân giải 1440 x 1440 , Sử dụng công nghệ LCD, Mật độ điểm ảnh 453 DPI, Độ sâu màu 24-bit, 10 điểm cảm ứng đa điểm, Sử dụng kính cường lực Gorilla Glass 3</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Camera trước</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">2MP Fixed-Focus, Chống rung hình ảnh &amp; video, Zoom kỹ thuật số 3x, Quay video HD 720p</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Camera sau</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">Sử dụng cảm biến ảnh 13MP tự động lấy nét (Auto-Focus ), Ổn định hình ảnh quang học (OIS), Lens f2.0, Flash LED, Quay video HD 1080p ở 60fps, Ổn định video 6DOF, Zoom kỹ thuật số 5x, Ổn định hình ảnh liên tục, chạm để lấy nét</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Cổng kết nối</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">USB 2.0 hỗ trợ đầy đủ với cáp tiêu chuẩn microUSB 2.0 ( tùy chọn USB 3.0), Cáp-Video Out hỗ trợ với tiêu chuẩn bộ chuyển đổi SlimPort. Bộ chuyển đổi cáp SlimPort có sẵn để hỗ trợ các giao thức followingvideo: HDMI, VGA, DisplayPort 1.1, DisplayPort 1.2, DVI, NFC</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Nguồn sạc</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">Bộ chuyển đổi điện AC to 5 V DC / 1.3A</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Pin</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">3450mAH tích hợp không thể tháo rời</span><br />
			 </td>
		</tr>
	</tbody>
</table>
</div>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px">Nguồn:techrum.vn</span></div>
', N'<p><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Hôm qua 24/9 BlackBerry đã chính thức ra mắt thiết bị BlackBerry Passport. Đây là chiếc điện thoại thông minh cao cấp mới được sản xuất ngay tại quê hương Canada. Theo BlackBerry thì sản phẩm này sẽ tập trung vào phân khúc khách hàng doanh nghiệp với thiết kế và nhiều tính năng mới hỗ trợ công việc hiệu quả hơn.</span><br />
<br />
<strong>Thiết kế</strong><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Máy được bao quanh bởi viền kim loại, hai bên canh bo nhẹ vào thân máy cho cảm giác cầm rất thoải mái và không bị cấn tay. Với màn hình vuông 4.5" và "bàn phím cứng có cảm ứng" BlackBerry Passport có thiết kế khác hẳn với những chiếc điện thoại trên thị trường hiện nay cũng như các sản phẩm trước đây của hãng. Cảm giác đầu tiên khi cầm là máy rất to và khá sang trọng, tuy nhiên sẽ hơi khó khăn khi sử dụng bằng một tay.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Nhìn tổng thể mặt trước máy khá hài hoà, bàn phím được BlackBerry rút gọn chỉ còn 3 dãy phím. Phía trên là loa thoại kèm các cảm biến cùng camera trước 2 MP.</span></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/UUE68F7.jpg" /><br />
<br />
Cạnh phải là các phím tăng giảm âm lượng và phím chức năng Pause/Play dành cho Media hoặc kích hoạt BlackBerry Assistant ở giữa 2 phím âm lượng.<br />
<br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/qbK6GY3.jpg" /><br />
<br />
Cạnh trái máy không được trang bị thêm phím chức năng nào<br />
<br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/JoqP8oS.jpg" /><br />
<br />
Trên đỉnh máy là cổng cắm tai nghe 3.5mm và phím nguồn cũng được làm bằng kim loai nhìn rất tinh tế và thêm một khe nhỏ ở giữa để chúng ta có thể mở phần nắp để gắn sim card và thẻ nhớ<br />
<br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/WxArD9S.jpg" /><br />
<br />
Cạnh đáy máy chỉ có cổng MicroUSB để truyền dữ liệu và sạc pin. Trên thiết bi Passport BlackBerry đã tích hợp luôn cổng HDMI qua giao thức MHL (?) Bên mình sẽ trải nghiệm cổng này ngay khi có cable tương thích. Và cuối cùng là một mic để thoại chính.<br />
<br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/3l1kGoh.jpg" /><br />
​</span></div>

<p><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Năp lưng máy được thiết kế khá đơn giản, chất liệu giống với mặt lưng của Playbook và không cho người dùng thay thế pin. Ở giữa là logo BlackBerry giống với thiết kế truyền thống trước đây của hãng.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Cụm camera 13MP của Passport có thiết kế khá đẹp và có phần lồi hơn so với nắp lưng. gần phía trên đỉnh máy có một đường viền kim loại cắt ngang để phân chia khung bỏ sim và thẻ nhớ và phần nắp lưng còn lại.</span></span></p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><br />
<span style="font-size:12px"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/3GoBRYc.jpg" /><br />
​</span></div>

<p><span style="font-size:12px"><strong>Trải nghiệm</strong><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">BlackBerry Passport sở hữu màn hình vuông 4.5" sử dụng công nghệ và có độ phân phân giải 1440x1440 (453ppi). Theo cảm nhận của mình thì màn hình của thiết bị chất lượng hình ảnh và màu sắc cao và sắc nét. Khi ra ngoài trời nắng máy vẫn hiển thị tốt nội dung. Mặt kính cường lực Gorilla Glass 3 giúp giảm trầy xước tốt và bảo vệ màn hình hiệu quả hơn.</span></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/yOxzfxU.jpg" />​</span></div>

<p><br />
<span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Đặt biệt với màn hình lớn này, Passport hiển thị nội dung đầy đủ hơn, nhiều hơn khi lướt web, xem và soạn văn bản. Mỗi dòng chữ hiện 60 kí tự khác với những chiếc điện thoại khác hiện nay chỉ có khoảng 40 kí tự đổ lại hoặc phải xoay ngang màn hình.</span></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/FadOnHq.jpg" />​</span></div>

<p><br />
<span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Bàn phím có cảm ứng giúp thao tác điều hướng khi lướt web hay soạn văn bản khá tiện lợi và nhanh chóng với các thao tác khác như:</span></span></p>

<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li><span style="font-size:12px">Xoá văn bản bằng cách vuốt từ bên phải sang trực tiếp trên bàn phím cứng (giống thao tác khi thực hiện trên bàn phím ảo)</span></li>
	<li><span style="font-size:12px">Vuốt lên để dự đoán từ trên bàn phím cứng</span></li>
	<li><span style="font-size:12px">Bàn phím Passport cũng giống như một trackpad lớn chúng ta có thể di chuyển con trỏ trên đó khi soạn văn bản hoặc chọn từ thay vì phải chạm ngón tay lên màn hình để di chuyển con trỏ như các máy thuần cảm ứng khác làm nội dung bị khuất sau ngón tay rất bất tiện.</span></li>
</ul>

<p><span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Bàn phím cũng được lượt bỏ đi một dòng, trên các phím chỉ được in chữ cái, các kí tự và phím shift cũng đã bị lượt bỏ. Khi các bạn gõ văn bản sẽ có thểm một dòng kỉ tự nhỏ và phím shift sẽ được hiển thị trên màn hình. Điều này tạm thời khá bất tiện nếu như ban đã quen dùng những chiếc BlackBerry có bàn phím cứng trước đây.</span><br />
<br />
<strong>Hiệu năng</strong></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><strong><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/nARQUOH.jpg" /></strong>​</span></div>

<p><br />
<span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">BlackBerry Passport được trang bị chip Snapdragon 800 Quad-Core 2.2GHz, GPU Adreno 330 và 3 GB RAM, đây cũng là thiết bị có cấu hình cao nhất từ trước đến nay của BlackBerry. Mình đã thử một số ứng dụng và tính năng để kiểm tra xem tốc độ và hiệu năng của máy. Tốc độ khi truy cập và thoát các ứng dụng khá nhanh, nhanh hơn hẵn so với chiếc BlackBerry Z30. Khi vào trình duyệt máy tải hình ảnh khá nhanh và mượt.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Hầu hết các tác vụ như chụp ảnh, quay phim, xử lý ảnh, văn bản lớn đều được cải thiện tốc độ đáng kể, rất nhanh và hầu như không có độ trễ (lag). Nếu như bạn là tín đồ của "dâu đen" và chưa hài lòng với hiệu năng của các model BB10 trước đây thì Passport chính là sự lựa chọn của bạn.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Pin cũng là một đặc điểm khá nổt bật trên chiếc BlackBerry Passport. Với dung pin 3450mAh, hãng đã nói rằng chúng ta có thể sử dụng trọn một ngày với cường độ làm việc cao. Mình chưa sử dụng thiết bị này nhiều nền sẽ có bài đánh giá pin chi tiết và khách quan cho các bạn.</span></span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px"><strong>Video trên tay BlackBerry Passport:</strong><br />
[Đang cập nhật...]​</span></div>

<p><br />
<span style="font-size:12px"><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif">Thông số kỹ thuật chính thức của BlackBerry Passport:</span></span><br />
 </p>

<div class="parseHTML" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<table border="0" style="border-collapse:collapse; width:680px">
	<tbody>
		<tr>
			<th><span style="font-size:12px">Brand</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">BlackBerry</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Model</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">Passport</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Bộ xử lý</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">Qualcomm Snapdragon 800 with 2.2GHz Quad-Core CPUs (MSM8974-AA), Card đồ họa Adreno 330, 450MHz GPU</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Bộ nhớ RAM</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">3GB LPDDR3 800MHz RAM, 32GB Flash (Bộ nhớ trong), Khe cắm thẻ nhớ MicroSD có thể thay nóng hộn trợ lên đến 64Gb</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Màn hình</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">LCD 4.5" tỷ lệ 1:1, Độ phân giải 1440 x 1440 , Sử dụng công nghệ LCD, Mật độ điểm ảnh 453 DPI, Độ sâu màu 24-bit, 10 điểm cảm ứng đa điểm, Sử dụng kính cường lực Gorilla Glass 3</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Camera trước</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">2MP Fixed-Focus, Chống rung hình ảnh &amp; video, Zoom kỹ thuật số 3x, Quay video HD 720p</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Camera sau</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">Sử dụng cảm biến ảnh 13MP tự động lấy nét (Auto-Focus ), Ổn định hình ảnh quang học (OIS), Lens f2.0, Flash LED, Quay video HD 1080p ở 60fps, Ổn định video 6DOF, Zoom kỹ thuật số 5x, Ổn định hình ảnh liên tục, chạm để lấy nét</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Cổng kết nối</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">USB 2.0 hỗ trợ đầy đủ với cáp tiêu chuẩn microUSB 2.0 ( tùy chọn USB 3.0), Cáp-Video Out hỗ trợ với tiêu chuẩn bộ chuyển đổi SlimPort. Bộ chuyển đổi cáp SlimPort có sẵn để hỗ trợ các giao thức followingvideo: HDMI, VGA, DisplayPort 1.1, DisplayPort 1.2, DVI, NFC</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Nguồn sạc</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">Bộ chuyển đổi điện AC to 5 V DC / 1.3A</span></td>
		</tr>
		<tr>
			<th><span style="font-size:12px">Pin</span></th>
			<td style="vertical-align:top"><span style="font-size:12px">3450mAH tích hợp không thể tháo rời</span><br />
			 </td>
		</tr>
	</tbody>
</table>
</div>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-size:12px">Nguồn:techrum.vn</span></div>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Review BlackBerry Passport tu Kuala Lumpur', 0, 0, CAST(N'2017-09-27T22:39:41.383' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (30, 16, N'Nghiên cứu não ong để phát triển các robot tự bay', N'nghien-cuu-nao-ong-de-phat-trien-cac-robot-tu-bay', N'Nghiên cứu não ong để phát triển các robot tự bay', N'nghien-cuu-nao-ong-de-phat-trien-cac-robot-tu-bay', N'/Uploads/ong.jpg', N'Mục đích của các nhà nghiên cứu là làm ra loại robot có thể tự hoạt động như những con ong mật. Các nhà nghiên cứu trong trường đại học đang nghiên cứu bộ não của ong mật nhằm xây dựng loại robot có khả năng tự bay mà không cần hướng dẫn.', N'Mục đích của các nhà nghiên cứu là làm ra loại robot có thể tự hoạt động như những con ong mật. Các nhà nghiên cứu trong trường đại học đang nghiên cứu bộ não của ong mật nhằm xây dựng loại robot có khả năng tự bay mà không cần hướng dẫn.', N'<div class="summary" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mục đích của các nhà nghiên cứu là làm ra loại robot có thể tự hoạt động như những con ong mật.</span></div>

<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà nghiên cứu trong trường đại học đang nghiên cứu bộ não của ong mật nhằm xây dựng loại robot có khả năng tự bay mà không cần hướng dẫn.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Bằng việc tạo ra những hệ thống trong não của ong mà kiểm soát thị giác, khứu giác, các nhà khoa học đang hy vọng xây dựng được một robot biết bay có thể làm nhiều hơn là chỉ thực hiện theo hướng dẫn lập trình trước. Một robot như vậy sẽ có thể tự cảm nhận, hành động như một con ong.</span></p>

<p><br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Nếu có thể làm được điều đó, robot biết bay sẽ có thể sử dụng "khứu giác" của nó để phát hiện khí gas hoặc các mùi khác, sau đó trở về nhà ở và báo cáo nguồn sinh ra mùi đó.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">"Việc phát triển bộ não nhân tạo là một trong những thách thức lớn nhất của trí tuệ nhân tạo", ông James Marshall, người đứng đầu dự án nghiên cứu tại Đại học Sheffield nói. "Cho đến nay, các nhà nghiên cứu thường nghiên cứu não của chuột, khỉ và người. Nhưng những sinh vật thực sự đơn giản, chẳng hạn như xã hội côn trùng, có khả năng nhận thức tiên tiến đáng ngạc nhiên".</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Các trường đại học đang sử dụng những bộ tăng tốc GPU do NVIDIA tặng để thực hiện các tính toán cần thiết, mô phỏng bộ não bằng cách sử dụng máy tính để bàn tiêu chuẩn, thay vì dùng siêu máy tính đắt hơn rất nhiều.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà khoa học hy vọng những phát hiện về bộ não ong của họ có thể được dùng để xây dựng loại robot biết bay có thể được sử dụng trong các nhiệm vụ tìm kiếm cứu nạn, thu thập thông tin mà các đội cứu hộ có thể dùng để đưa ra quyết định về cách thức tiến hành.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo ông Thomas Nowotny - người lãnh đạo dự án tại Đại học Sussex, các kỹ thuật mô hình máy tính trong nghiên cứu về bộ não ong sẽ được sử dụng rộng rãi cho việc mô hình bộ não và các dự án thần kinh khác.</span></p>
', N'<div class="summary" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mục đích của các nhà nghiên cứu là làm ra loại robot có thể tự hoạt động như những con ong mật.</span></div>

<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà nghiên cứu trong trường đại học đang nghiên cứu bộ não của ong mật nhằm xây dựng loại robot có khả năng tự bay mà không cần hướng dẫn.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Bằng việc tạo ra những hệ thống trong não của ong mà kiểm soát thị giác, khứu giác, các nhà khoa học đang hy vọng xây dựng được một robot biết bay có thể làm nhiều hơn là chỉ thực hiện theo hướng dẫn lập trình trước. Một robot như vậy sẽ có thể tự cảm nhận, hành động như một con ong.</span></p>

<p><br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Nếu có thể làm được điều đó, robot biết bay sẽ có thể sử dụng "khứu giác" của nó để phát hiện khí gas hoặc các mùi khác, sau đó trở về nhà ở và báo cáo nguồn sinh ra mùi đó.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">"Việc phát triển bộ não nhân tạo là một trong những thách thức lớn nhất của trí tuệ nhân tạo", ông James Marshall, người đứng đầu dự án nghiên cứu tại Đại học Sheffield nói. "Cho đến nay, các nhà nghiên cứu thường nghiên cứu não của chuột, khỉ và người. Nhưng những sinh vật thực sự đơn giản, chẳng hạn như xã hội côn trùng, có khả năng nhận thức tiên tiến đáng ngạc nhiên".</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Các trường đại học đang sử dụng những bộ tăng tốc GPU do NVIDIA tặng để thực hiện các tính toán cần thiết, mô phỏng bộ não bằng cách sử dụng máy tính để bàn tiêu chuẩn, thay vì dùng siêu máy tính đắt hơn rất nhiều.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Các nhà khoa học hy vọng những phát hiện về bộ não ong của họ có thể được dùng để xây dựng loại robot biết bay có thể được sử dụng trong các nhiệm vụ tìm kiếm cứu nạn, thu thập thông tin mà các đội cứu hộ có thể dùng để đưa ra quyết định về cách thức tiến hành.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo ông Thomas Nowotny - người lãnh đạo dự án tại Đại học Sussex, các kỹ thuật mô hình máy tính trong nghiên cứu về bộ não ong sẽ được sử dụng rộng rãi cho việc mô hình bộ não và các dự án thần kinh khác.</span></p>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Nghien cuu nao ong de phat trien cac robot tu bay', 0, 0, CAST(N'2017-09-27T22:41:30.340' AS DateTime), 1, N'admin')
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId], [Type], [CreatedTime], [CreatedUserId], [CreatedFullname]) VALUES (31, 16, N'Robot hỗ trợ người khuyết tật', N'robot-ho-tro-nguoi-khuyet-tat', N'Robot hỗ trợ người khuyết tật', N'robot-ho-tro-nguoi-khuyet-tat', N'/Uploads/robot-khuyet-tat.jpg', N'Hãng Toyota vừa giới thiệu một dòng robot mới được thiết kế để trợ giúp người khuyết tật sinh hoạt dễ dàng hơn. Dòng robot này có tên gọi "robot hỗ trợ con người"(HSR), có thể đi quanh nhà, vén rèm cửa, nhặt các đồ vật trên sàn nhà…', N'Hãng Toyota vừa giới thiệu một dòng robot mới được thiết kế để trợ giúp người khuyết tật sinh hoạt dễ dàng hơn. Dòng robot này có tên gọi "robot hỗ trợ con người"(HSR), có thể đi quanh nhà, vén rèm cửa, nhặt các đồ vật trên sàn nhà…', N'<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px; text-align:justify">
	<tbody>
		<tr>
			<td style="vertical-align:top">
			<div id="divContent">
			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif">Hãng Toyota vừa giới thiệu một dòng robot mới được thiết kế để trợ giúp người khuyết tật sinh hoạt dễ dàng hơn.&nbsp;Dòng robot này có tên gọi&nbsp;<em>"robot hỗ trợ con người"</em>(HSR), có thể đi quanh nhà, vén rèm cửa, nhặt các đồ vật trên sàn nhà…</span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif"><img alt="Robot hỗ trợ người khuyết tật" border="0" src="http://www.khoahoc.com.vn/photos/image/092012/26/hsrrobot.jpg" /></span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif"><img alt="Robot hỗ trợ người khuyết tật" border="0" src="http://www.khoahoc.com.vn/photos/image/092012/26/hsrrobot1.jpg" style="height:270px; width:550px" /></span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif">Người dùng dễ dàng điều khiển HSR qua máy tính bảng. Bản thân HRS cũng có thể được trang bị một máy tính bảng, qua đó giúp người khuyết tật và các thành viên khác trong gia đình liên lạc bằng dịch vụ Skype. Không chỉ nhặt đồ vật trên sàn nhà, cánh tay robot HRS còn có thể với lên kệ cao để lấy đồ theo ý chủ nhân. Nó sử dụng năng lượng tiết kiệm và làm việc chậm để tránh gây tai nạn hoặc thương tích cho người dùng.</span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif">Thông số kỹ thuật cho biết HRS nặng gần 32kg, có thể thao tác với các đồ vật nặng 1,7kg. Được trang bị cảm biến Prosense (kỹ thuật Microsoft Kinect) cùng camera gắn trên đầu, HRS có thể cảm nhận chiều sâu và trực quan đối với con người cũng như các vật thể khác.</span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif">Theo&nbsp;<a href="http://www.gizmag.com/toyota-human-support-robot/24246/pictures#1" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">Gizmag</a>, hãng Toyota đã hợp tác với Trung tâm phục hồi chức năng Yokohama để thử nghiệm HRS từ năm 2011, thu thập ý kiến của bệnh nhân để hoàn thiện thiết kế HRS. Dự kiến HRS sẽ chính thức ra mắt công chúng vào cuối tháng 9 này. Chưa có mức giá cụ thể nhưng theo đạo luật mới thì tại Nhật Bản, bảo hiểm y tế sẽ gánh 90% chi phí hỗ trợ người khuyết tật sử dụng HRS.</span></span></p>
			</div>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top"> </td>
		</tr>
		<tr>
			<td style="text-align:right; vertical-align:top"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><em>Theo Thanh Niên, Gizmag</em></span></td>
		</tr>
	</tbody>
</table>
', N'<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px; text-align:justify">
	<tbody>
		<tr>
			<td style="vertical-align:top">
			<div id="divContent">
			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif">Hãng Toyota vừa giới thiệu một dòng robot mới được thiết kế để trợ giúp người khuyết tật sinh hoạt dễ dàng hơn.&nbsp;Dòng robot này có tên gọi&nbsp;<em>"robot hỗ trợ con người"</em>(HSR), có thể đi quanh nhà, vén rèm cửa, nhặt các đồ vật trên sàn nhà…</span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif"><img alt="Robot hỗ trợ người khuyết tật" border="0" src="http://www.khoahoc.com.vn/photos/image/092012/26/hsrrobot.jpg" /></span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif"><img alt="Robot hỗ trợ người khuyết tật" border="0" src="http://www.khoahoc.com.vn/photos/image/092012/26/hsrrobot1.jpg" style="height:270px; width:550px" /></span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif">Người dùng dễ dàng điều khiển HSR qua máy tính bảng. Bản thân HRS cũng có thể được trang bị một máy tính bảng, qua đó giúp người khuyết tật và các thành viên khác trong gia đình liên lạc bằng dịch vụ Skype. Không chỉ nhặt đồ vật trên sàn nhà, cánh tay robot HRS còn có thể với lên kệ cao để lấy đồ theo ý chủ nhân. Nó sử dụng năng lượng tiết kiệm và làm việc chậm để tránh gây tai nạn hoặc thương tích cho người dùng.</span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif">Thông số kỹ thuật cho biết HRS nặng gần 32kg, có thể thao tác với các đồ vật nặng 1,7kg. Được trang bị cảm biến Prosense (kỹ thuật Microsoft Kinect) cùng camera gắn trên đầu, HRS có thể cảm nhận chiều sâu và trực quan đối với con người cũng như các vật thể khác.</span></span></p>

			<p><span style="font-size:small"><span style="font-family:arial,helvetica,sans-serif">Theo&nbsp;<a href="http://www.gizmag.com/toyota-human-support-robot/24246/pictures#1" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">Gizmag</a>, hãng Toyota đã hợp tác với Trung tâm phục hồi chức năng Yokohama để thử nghiệm HRS từ năm 2011, thu thập ý kiến của bệnh nhân để hoàn thiện thiết kế HRS. Dự kiến HRS sẽ chính thức ra mắt công chúng vào cuối tháng 9 này. Chưa có mức giá cụ thể nhưng theo đạo luật mới thì tại Nhật Bản, bảo hiểm y tế sẽ gánh 90% chi phí hỗ trợ người khuyết tật sử dụng HRS.</span></span></p>
			</div>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top"> </td>
		</tr>
		<tr>
			<td style="text-align:right; vertical-align:top"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><em>Theo Thanh Niên, Gizmag</em></span></td>
		</tr>
	</tbody>
</table>
', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL, 0, 0, 1, N'Robot ho tro nguoi khuyet tat', 0, 0, CAST(N'2017-09-27T22:44:01.477' AS DateTime), 1, N'admin')
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([ID], [Name], [SeoLink], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [LangId], [CreatedUserId], [CreatedFullname], [CreatedDate], [UnsignName], [UnsignName_En]) VALUES (8, N'Dịch vụ thẩm đinh giá', N'dich-vu-tham-dinh-gia', N'Dịch vụ thẩm đinh giá', N'dich-vu-tham-dinh-gia', N'/Uploads/dola.jpg', N'Công ty chúng tôi cung cấp dịch vụ: Thẩm định giá tài sản, Dịch vụ thẩm định giá Bất động sản, Xác định giá trị doanh nghiệp...', N'Công ty chúng tôi cung cấp dịch vụ: Thẩm định giá tài sản, Dịch vụ thẩm định giá Bất động sản, Xác định giá trị doanh nghiệp...', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.&nbsp;</em></strong><strong><em>Thẩm định giá và dịch vụ về giá</em></strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.1. Thẩm định giá tài sản</em></strong>&nbsp;:Thẩm định giá tài sản hữu hình và tài sản vô hình cho mục đích sau:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Đầu tư, mua sắm, thanh quyết toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Hoạch toán kế toán tài sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cho thuê, cho vay, liên doanh, góp vốn</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Thanh lý, nhượng bán, đấu giá tài sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Làm căn cứ tính toán: Thuế, bồi thường,…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Các loại tài sản đã và đang thực hiện:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tài sản hữu hình: Vật tư, hàng hoá, máy móc thíêt bị, dây chuyền công nghệ,...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tài sản vô hình: Thương hiệu, phần mềm</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.2. Dịch vụ thẩm định giá Bất động sản:</em></strong>&nbsp;Thẩm định giá Bất động sản bao gồm Quyền sử dụng đất, Nhà cửa, vật kiến trúc cho các mục đích đấu giá, chuyển nhượng, đầu tư, cho vay,…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Đầu tư, mua sắm, thanh quyết toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Hoạch toán kế toán tài sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cho thuê, cho vay, liên doanh, góp vốn</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Thanh lý, nhượng bán, đấu giá tài sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Làm căn cứ tính toán: Thuế, bồi thường, đền bù…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.3. Xác định giá trị doanh nghiệp:</em></strong>&nbsp;Xác định giá trị doanh nghiệp cho mục đích như:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Mua, bán chuyển nhượng doanh nghiệp</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Chuyển đổi loại hình doanh nghiệp</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Đầu tư, liên doanh liên kết, cổ phần hoá doanh nghiệp, đi vay…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.4. Dịch vụ giá</em></strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thông tin giá cả thị trường</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Đánh giá xu hướng biến động giá cả thị trường và dự báo giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Xây dựng phương án giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>2.&nbsp;</em></strong><strong><em>Đấu giá:&nbsp;</em></strong>Tư vấn và tổ chức đấu giá tài sản và bất động sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Tư vấn về đấu giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn về pháp lý</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn tổ chức đấu giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Tổ chức đấu giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Nhận uỷ quyền bán đấu giá tài sản và bất động sản cho các cá nhân và tổ chức có nhu cầu.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Điều hành phiên đấu giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>3.&nbsp;</em></strong><strong><em>Tư vấn</em></strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+Tư vấn thiết kế kỹ thuật và lập tổng dự toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Lập thiết kế kỹ thuật và xây dựng dự toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thẩm định thiết kế kỹ thuật và dự toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+Tư vấn về đầu tư, lập dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Lập dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thẩm định dự án</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn trình tự thủ tục liên quan đến dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+Tư vấn đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tổ chức đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn trình tự, thủ tục có liên quan đến công tác đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Tư vấn giám sát</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thực hiện giám sát thực hiện dự án theo yêu cầu của chủ đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>4.&nbsp;</em></strong><strong><em>Thẩm dịnh kỹ thuật và công nghệ</em></strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Thẩm định thiết kế kỹ thuật và khối lượng dự toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Thẩm định công nghệ theo yêu cầu của Chủ đầu tư</span></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.&nbsp;</em></strong><strong><em>Thẩm định giá và dịch vụ về giá</em></strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.1. Thẩm định giá tài sản</em></strong>&nbsp;:Thẩm định giá tài sản hữu hình và tài sản vô hình cho mục đích sau:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Đầu tư, mua sắm, thanh quyết toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Hoạch toán kế toán tài sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cho thuê, cho vay, liên doanh, góp vốn</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Thanh lý, nhượng bán, đấu giá tài sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Làm căn cứ tính toán: Thuế, bồi thường,…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Các loại tài sản đã và đang thực hiện:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tài sản hữu hình: Vật tư, hàng hoá, máy móc thíêt bị, dây chuyền công nghệ,...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tài sản vô hình: Thương hiệu, phần mềm</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.2. Dịch vụ thẩm định giá Bất động sản:</em></strong>&nbsp;Thẩm định giá Bất động sản bao gồm Quyền sử dụng đất, Nhà cửa, vật kiến trúc cho các mục đích đấu giá, chuyển nhượng, đầu tư, cho vay,…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Đầu tư, mua sắm, thanh quyết toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Hoạch toán kế toán tài sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cho thuê, cho vay, liên doanh, góp vốn</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Thanh lý, nhượng bán, đấu giá tài sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Làm căn cứ tính toán: Thuế, bồi thường, đền bù…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.3. Xác định giá trị doanh nghiệp:</em></strong>&nbsp;Xác định giá trị doanh nghiệp cho mục đích như:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Mua, bán chuyển nhượng doanh nghiệp</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Chuyển đổi loại hình doanh nghiệp</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Đầu tư, liên doanh liên kết, cổ phần hoá doanh nghiệp, đi vay…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.4. Dịch vụ giá</em></strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thông tin giá cả thị trường</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Đánh giá xu hướng biến động giá cả thị trường và dự báo giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Xây dựng phương án giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>2.&nbsp;</em></strong><strong><em>Đấu giá:&nbsp;</em></strong>Tư vấn và tổ chức đấu giá tài sản và bất động sản</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Tư vấn về đấu giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn về pháp lý</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn tổ chức đấu giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Tổ chức đấu giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Nhận uỷ quyền bán đấu giá tài sản và bất động sản cho các cá nhân và tổ chức có nhu cầu.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Điều hành phiên đấu giá</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>3.&nbsp;</em></strong><strong><em>Tư vấn</em></strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+Tư vấn thiết kế kỹ thuật và lập tổng dự toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Lập thiết kế kỹ thuật và xây dựng dự toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thẩm định thiết kế kỹ thuật và dự toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+Tư vấn về đầu tư, lập dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Lập dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thẩm định dự án</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn trình tự thủ tục liên quan đến dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+Tư vấn đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tổ chức đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn trình tự, thủ tục có liên quan đến công tác đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Tư vấn giám sát</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thực hiện giám sát thực hiện dự án theo yêu cầu của chủ đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>4.&nbsp;</em></strong><strong><em>Thẩm dịnh kỹ thuật và công nghệ</em></strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Thẩm định thiết kế kỹ thuật và khối lượng dự toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Thẩm định công nghệ theo yêu cầu của Chủ đầu tư</span></p>
', 0, 1, 0, 1, N'admin', CAST(N'2017-09-27T12:50:37.927' AS DateTime), N'dich vu tham dinh gia', N'dich vu tham dinh gia')
INSERT [dbo].[Partner] ([ID], [Name], [SeoLink], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [LangId], [CreatedUserId], [CreatedFullname], [CreatedDate], [UnsignName], [UnsignName_En]) VALUES (9, N'Cung cấp sản phẩm công nghệ', N'cung-cap-san-pham-cong-nghe', N'Cung cấp sản phẩm công nghệ', N'cung-cap-san-pham-cong-nghe', N'/Uploads/san-pham-cong-nghe.jpg', N'Chuyên cung cấp sản phẩm công nghệ về lĩnh vực công nghệ thông tin, thiết bị y tế, trường học....', N'Chuyên cung cấp sản phẩm công nghệ về lĩnh vực công nghệ thông tin, thiết bị y tế, trường học....', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Phân phối các sản phẩm CNTT, viễn thông của các Hãng IBM, COMPAQ, HP, EPSON, DELL, TOSHIBA, CISCO, ORACLE, MICROSOFT, EXCHANGE…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Phát triển và cung cấp giải pháp phần mềm tin học cung cấp giải pháp và tích hợp hệ thống cho các đơn vị và tổ chức.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp các sản phẩm và giải pháp về điện, điện tử, điện lạnh của Hãng LG, SamSung, TOSHIBA, FUNIKI,…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị phục vụ hội nghị, hội thảo, trình chiếu, thiết bị văn phòng: SHARP, TOSHIBA, PANASONIC, SONY, HITACHI…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị giáo dục, thiết bị y tế, thiết bị dạy nghề, thiết bị âm thanh chiếu sáng, thiết bị điều khiển tự động hóa</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị và giải pháp về kiểm tra, giám sát, dò tìm kim loại của các hãng sản xuất thiết bị của Đức, Anh, Mỹ, Trung Quốc</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Dịch vụ lắp đặt, bảo hành, bảo dưỡng, bảo trì các thiết bị công nghệ thông tin, điện, điện tử, điện lạnh và các thiết&nbsp; bị điều khiển tự động, Thiết bị kiểm tra an ninh, giám sát bảo vệ.</span></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Phân phối các sản phẩm CNTT, viễn thông của các Hãng IBM, COMPAQ, HP, EPSON, DELL, TOSHIBA, CISCO, ORACLE, MICROSOFT, EXCHANGE…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Phát triển và cung cấp giải pháp phần mềm tin học cung cấp giải pháp và tích hợp hệ thống cho các đơn vị và tổ chức.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp các sản phẩm và giải pháp về điện, điện tử, điện lạnh của Hãng LG, SamSung, TOSHIBA, FUNIKI,…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị phục vụ hội nghị, hội thảo, trình chiếu, thiết bị văn phòng: SHARP, TOSHIBA, PANASONIC, SONY, HITACHI…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị giáo dục, thiết bị y tế, thiết bị dạy nghề, thiết bị âm thanh chiếu sáng, thiết bị điều khiển tự động hóa</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị và giải pháp về kiểm tra, giám sát, dò tìm kim loại của các hãng sản xuất thiết bị của Đức, Anh, Mỹ, Trung Quốc</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Dịch vụ lắp đặt, bảo hành, bảo dưỡng, bảo trì các thiết bị công nghệ thông tin, điện, điện tử, điện lạnh và các thiết&nbsp; bị điều khiển tự động, Thiết bị kiểm tra an ninh, giám sát bảo vệ.</span></p>
', 0, 1, 0, 1, N'admin', CAST(N'2017-09-27T13:44:49.490' AS DateTime), N'cung cap san pham cong nghe', N'cung cap san pham cong nghe')
INSERT [dbo].[Partner] ([ID], [Name], [SeoLink], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [LangId], [CreatedUserId], [CreatedFullname], [CreatedDate], [UnsignName], [UnsignName_En]) VALUES (10, N'Tư Vấn Xây dựng', N'tu-van-xay-dung', N'Tư Vấn Xây dựng', N'tu-van-xay-dung', N'/Uploads/tu-van-xay-dung.jpg', N'Tư vấn, triển khai dự án xây dựng dân dụng, công nghiệp, Tư vấn, triển khai dự án xây dựng dân dụng, công nghiệp...', N'Tư vấn, triển khai dự án xây dựng dân dụng, công nghiệp, Tư vấn, triển khai dự án xây dựng dân dụng, công nghiệp...', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+</strong><strong>&nbsp;Xây dựng công trình công trình dân dụng, công nghiệp, hạ tầng kỹ thuật</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>- Xây dựng các công trình dân dụng:</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tại&nbsp;<strong>Vĩnh Hưng Group</strong>&nbsp;tập hợp một đội ngũ kỹ sư xây dựng có chuyên môn cao kết hợp với các đội thi công tay nghề cao và có nhiều kinh nghiệm trong việc thi công xây dựng công trình cùng với sự hỗ trợ của máy móc thiết bị thi công hiện đại, phương pháp tiếp cận một cách sáng tạo những tiến bộ khoa học kỹ thuật về công nghệ kỹ thuật thi công và vật liệu hoàn thiện, cùng với việc áp dụng hàng loạt những kỷ năng chuyên nghiệp, những phần mềm, dữ liệu thu thập được trong quá trình thi công để đảm bảo đưa ra được những giải pháp thi công ưu việt nhất, giải quyết có hiệu quả các vấn đề đặc thù của mỗi công trình.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chính đó là yếu tố giúp&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;tự tin có thể triển khai thành công các công trình có yêu cầu kỹ thuật cao, phức tạp.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;sẵn sàng cung cấp dịch vụ thi công xây dựng công trình, trang trí nội ngoại thất đến tất cả khách hàng ở mọi miền tổ quốc. Với phương châm "&nbsp;<strong><em>Uy tín, chất lượng"</em></strong>&nbsp;chúng tôi sẽ cùng bạn xây dựng nên những công trình mơ ước.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<strong>Xây dựng công nghiệp&nbsp;</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những hiểu biết sâu rộng của&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;về công nghệ, kinh nghiệm làm việc của đội ngũ chuyên gia&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;đảm bảo dịch vụ xây dựng các công trình công nghiệp trong các loại hình công nghiệp như: chế biến giấy, hóa chất, khai thác khoáng sản, xi măng, luyện kim...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<strong>Xây dựng hạ tầng</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;cung cấp các dịch vụ xây dựng hạ tầng kỹ thuật bao gồm: Hạ tầng các khu đô thị, khu công nghiệp, các tuyến cấp nước, tuyến tải điện cũng như hệ thống kênh mương, kè sông, đập chắn...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+&nbsp;&nbsp; Xây dựng công trình giao thông:</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với mong muốn góp một phần nguồn lực của mình trong công cuộc đổi mới hiện đại hóa đất nước, Vĩnh Hưng luôn chú trọng đến lĩnh vực đầu tư xây dựng các công trình giao thông tạo điều kiện thuận lợi cho sự phát triển kinh kế tại các địa phương.&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small">VH Group</span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;đã chú tâm vào đầu tư các trang thiết bị, máy móc thi công hiện đại sẵn sàng đảm nhận thi công các công trình giao thông như: Công trình đường bộ, công trình vượt sông, hệ thống cảng, cầu, cống...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+ Kinh doanh, buôn bán vật liệu xây dựng, máy móc công trình:</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nhận thức được sự cần thiết và tầm quan trọng trong công tác kinh doanh thương mại&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">đang nỗ lực hết mình để từng bước khẳng định thương hiệu và mở rộng thị trường.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Vĩnh Hưng chú trọng vào các hoạt động kinh doanh máy móc thiết bị, vật liệu xây dựng, đồ gỗ nội thất thông qua việc xây dựng và phát triển mạng lưới bán hàng, thiết lập mạng lưới tiêu thụ vững chắc trên các thị trường trọng điểm. Chúng tôi sẵn sàng thiết lập những quan hệ lâu dài, cùng chia sẻ lợi nhuận và hợp tác giải quyết khó khăn với tất cả các bạn hàng- những doanh nghiệp, doanh nhân có động lực cao với tầm nhìn toàn diện, bao quát không xa rời với thực tế.</span></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+</strong><strong>&nbsp;Xây dựng công trình công trình dân dụng, công nghiệp, hạ tầng kỹ thuật</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>- Xây dựng các công trình dân dụng:</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tại&nbsp;<strong>Vĩnh Hưng Group</strong>&nbsp;tập hợp một đội ngũ kỹ sư xây dựng có chuyên môn cao kết hợp với các đội thi công tay nghề cao và có nhiều kinh nghiệm trong việc thi công xây dựng công trình cùng với sự hỗ trợ của máy móc thiết bị thi công hiện đại, phương pháp tiếp cận một cách sáng tạo những tiến bộ khoa học kỹ thuật về công nghệ kỹ thuật thi công và vật liệu hoàn thiện, cùng với việc áp dụng hàng loạt những kỷ năng chuyên nghiệp, những phần mềm, dữ liệu thu thập được trong quá trình thi công để đảm bảo đưa ra được những giải pháp thi công ưu việt nhất, giải quyết có hiệu quả các vấn đề đặc thù của mỗi công trình.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chính đó là yếu tố giúp&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;tự tin có thể triển khai thành công các công trình có yêu cầu kỹ thuật cao, phức tạp.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;sẵn sàng cung cấp dịch vụ thi công xây dựng công trình, trang trí nội ngoại thất đến tất cả khách hàng ở mọi miền tổ quốc. Với phương châm "&nbsp;<strong><em>Uy tín, chất lượng"</em></strong>&nbsp;chúng tôi sẽ cùng bạn xây dựng nên những công trình mơ ước.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<strong>Xây dựng công nghiệp&nbsp;</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những hiểu biết sâu rộng của&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;về công nghệ, kinh nghiệm làm việc của đội ngũ chuyên gia&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;đảm bảo dịch vụ xây dựng các công trình công nghiệp trong các loại hình công nghiệp như: chế biến giấy, hóa chất, khai thác khoáng sản, xi măng, luyện kim...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<strong>Xây dựng hạ tầng</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;cung cấp các dịch vụ xây dựng hạ tầng kỹ thuật bao gồm: Hạ tầng các khu đô thị, khu công nghiệp, các tuyến cấp nước, tuyến tải điện cũng như hệ thống kênh mương, kè sông, đập chắn...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+&nbsp;&nbsp; Xây dựng công trình giao thông:</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với mong muốn góp một phần nguồn lực của mình trong công cuộc đổi mới hiện đại hóa đất nước, Vĩnh Hưng luôn chú trọng đến lĩnh vực đầu tư xây dựng các công trình giao thông tạo điều kiện thuận lợi cho sự phát triển kinh kế tại các địa phương.&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small">VH Group</span><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;đã chú tâm vào đầu tư các trang thiết bị, máy móc thi công hiện đại sẵn sàng đảm nhận thi công các công trình giao thông như: Công trình đường bộ, công trình vượt sông, hệ thống cảng, cầu, cống...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+ Kinh doanh, buôn bán vật liệu xây dựng, máy móc công trình:</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nhận thức được sự cần thiết và tầm quan trọng trong công tác kinh doanh thương mại&nbsp;</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng Group</strong></span><span style="font-family:arial,helvetica,sans-serif; font-size:small">đang nỗ lực hết mình để từng bước khẳng định thương hiệu và mở rộng thị trường.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Vĩnh Hưng chú trọng vào các hoạt động kinh doanh máy móc thiết bị, vật liệu xây dựng, đồ gỗ nội thất thông qua việc xây dựng và phát triển mạng lưới bán hàng, thiết lập mạng lưới tiêu thụ vững chắc trên các thị trường trọng điểm. Chúng tôi sẵn sàng thiết lập những quan hệ lâu dài, cùng chia sẻ lợi nhuận và hợp tác giải quyết khó khăn với tất cả các bạn hàng- những doanh nghiệp, doanh nhân có động lực cao với tầm nhìn toàn diện, bao quát không xa rời với thực tế.</span></p>
', 0, 1, 0, 1, N'admin', CAST(N'2017-09-27T13:45:33.827' AS DateTime), N'tu van xay dung', N'tu van xay dung')
INSERT [dbo].[Partner] ([ID], [Name], [SeoLink], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [LangId], [CreatedUserId], [CreatedFullname], [CreatedDate], [UnsignName], [UnsignName_En]) VALUES (11, N'Tư vấn đầu tư', N'tu-van-dau-tu', N'Tư vấn đầu tư', N'tu-van-dau-tu', N'/Uploads/tu-van-dau-tu.jpg', N'Tư vấn đầu tư, Tư vấn quản lý dự án, Tư vấn thiết kế xây dựng, Tư vấn giám sát xây dựng, giám sát lắp đặt thiết bị, Tư vấn đấu thầu,', N'Tư vấn đầu tư, Tư vấn quản lý dự án, Tư vấn thiết kế xây dựng, Tư vấn giám sát xây dựng, giám sát lắp đặt thiết bị, Tư vấn đấu thầu,', N'<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">+&nbsp; Tư vấn đầu tư</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Lập dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thẩm định và phê duyệt dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Lập, thẩm định, phê duyệt hồ sơ thiết kế và tổng dự toán; Xây dựng công trình thuộc các dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Đăng ký kế hoạch đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thực hiện dự án đầu tư</span></p>

<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">+&nbsp; Tư vấn quản lý dự án</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quản lý về chất lượng dự án</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- &nbsp;Quản lý về tiến độ của dự án</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;<strong>&nbsp;</strong>Đảm bảo giá thành dự án</span></p>

<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +&nbsp; Tư vấn thiết kế xây dựng</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Khảo sát đo đạc bản đồ địa hình</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Khoan thăm dò địa chất</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn lập dự án xây dựng, tư vấn thiết kế và tư vấn lập dự toán, tổng dự toán xây dựng công trình giao thông (Cầu, đường bộ, cảng, đường thủy); công trình dân dụng và công nghiệp.</span></p>

<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">+&nbsp; Tư vấn giám sát xây dựng, giám sát lắp đặt thiết bị</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp; Tư vấn Giám sát thi công các công trình xây dựng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp; Tư vấn Quản lý dự án</span></p>

<p><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +&nbsp; Tư vấn đấu thầu</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn trình tự thực hiện đấu thầu, phương thức đấu thầu.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn và xử lý tình huống phát sinh trong quá trình đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn lập và đánh giá hồ sơ cho bên mời thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn lập hồ sơ dự thầu cho nhà thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Dịch vụ hỗ trợ đăng tin và cung cấp thông tin đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+&nbsp; Tư vấn kiểm định chất lượng thiết b</strong>ị</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Kiểm định chất lượng nền, móng công trình</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Kiểm định chất lượng của bán thành phẩm bằng bê tông, bê tông cốt thép, kết cấu kim loại</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Kiểm định chất lượng vật liệu xây dựng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Đánh giá chất lượng xây dựng công trình hoặc từng bộ phận công trình như: thử PIT (Pile Integrity Test), PDA (Pile Driving Analyzer, siêu âm kiểm tra vết nứt và độ đồng nhất bê tông, siêu âm cọc khoan nhồi (Crosshole Sonic Logging), nén tĩnh cọc.</span></p>
', N'<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">+&nbsp; Tư vấn đầu tư</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Lập dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thẩm định và phê duyệt dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Lập, thẩm định, phê duyệt hồ sơ thiết kế và tổng dự toán; Xây dựng công trình thuộc các dự án đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Đăng ký kế hoạch đầu tư</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thực hiện dự án đầu tư</span></p>

<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">+&nbsp; Tư vấn quản lý dự án</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quản lý về chất lượng dự án</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- &nbsp;Quản lý về tiến độ của dự án</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;<strong>&nbsp;</strong>Đảm bảo giá thành dự án</span></p>

<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +&nbsp; Tư vấn thiết kế xây dựng</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Khảo sát đo đạc bản đồ địa hình</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Khoan thăm dò địa chất</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn lập dự án xây dựng, tư vấn thiết kế và tư vấn lập dự toán, tổng dự toán xây dựng công trình giao thông (Cầu, đường bộ, cảng, đường thủy); công trình dân dụng và công nghiệp.</span></p>

<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">+&nbsp; Tư vấn giám sát xây dựng, giám sát lắp đặt thiết bị</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp; Tư vấn Giám sát thi công các công trình xây dựng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp; Tư vấn Quản lý dự án</span></p>

<p><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +&nbsp; Tư vấn đấu thầu</span></strong></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn trình tự thực hiện đấu thầu, phương thức đấu thầu.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn và xử lý tình huống phát sinh trong quá trình đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn lập và đánh giá hồ sơ cho bên mời thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tư vấn lập hồ sơ dự thầu cho nhà thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Dịch vụ hỗ trợ đăng tin và cung cấp thông tin đấu thầu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+&nbsp; Tư vấn kiểm định chất lượng thiết b</strong>ị</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Kiểm định chất lượng nền, móng công trình</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Kiểm định chất lượng của bán thành phẩm bằng bê tông, bê tông cốt thép, kết cấu kim loại</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Kiểm định chất lượng vật liệu xây dựng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Đánh giá chất lượng xây dựng công trình hoặc từng bộ phận công trình như: thử PIT (Pile Integrity Test), PDA (Pile Driving Analyzer, siêu âm kiểm tra vết nứt và độ đồng nhất bê tông, siêu âm cọc khoan nhồi (Crosshole Sonic Logging), nén tĩnh cọc.</span></p>
', 0, 1, 0, 1, N'admin', CAST(N'2017-09-27T13:46:04.617' AS DateTime), N'tu van dau tu', N'tu van dau tu')
SET IDENTITY_INSERT [dbo].[Partner] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId], [IsShowHomePage]) VALUES (7, 16, NULL, NULL, N'Phần mềm quản lý công văn', N'phan-mem-quan-ly-cong-van', N'Phan mem quan ly cong van', N'Phần mềm quản lý công văn', N'phan-mem-quan-ly-cong-van', N'/Uploads/pm_xay_dung.png', N'Phần mềm quản lý công văn', N'Phần mềm quản lý công văn', N'<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm quản lý công văn Adsoft của công ty chung tôi được viết trên nền công nghệ mới nhất, tiên tiến nhất dựa trên các tác nghiệp văn phòng về công tác quản lý công văn và đáp ứng yêu cầu của bên sử dụng.</span></p>
', N'<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm quản lý công văn Adsoft của công ty chung tôi được viết trên nền công nghệ mới nhất, tiên tiến nhất dựa trên các tác nghiệp văn phòng về công tác quản lý công văn và đáp ứng yêu cầu của bên sử dụng.</span></p>
', 4, 1, 1, 0, NULL, 0, 0, 1)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId], [IsShowHomePage]) VALUES (8, 16, NULL, NULL, N'Quản lý nhà hàng, khách sạn', N'quan-ly-nha-hang-khach-san', N'Quan ly nha hang khach san', N'Quản lý nhà hàng, khách sạn', N'quan-ly-nha-hang-khach-san', N'/Uploads/pm-ke-toan.png', N'Quản lý nhà hàng, khách sạn', N'Quản lý nhà hàng, khách sạn', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với mục đích cung cấp một giải pháp tốt nhất phục vụ hiệu quả trong quá trình quản lý nhà hàng khách sạn. Hệ thống phần mềm quản lý nhà hàng khách sạn Adsoft của công ty chúng tôi được viết trên nền công nghệ mới nhất, tiên tiến nhất...</span></p>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>I. TUÂN THỦ CÁC VĂN BẢN NHÀ NƯỚC</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">&nbsp; Quyết định số15/2006/QĐ-BTCcủa Bộ trưởng Bộ Tài chính ngày 20/03/2006 về việc Ban hành chế độ kế toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Thông tư số 60/2007/TT-BTC của Bộ trưởng Bộ tài chính ngày 14/06/2007</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Luật kế toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Các chuẩn mực kế toán</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Các văn bản về chế độ quản lý tài chính, kế toán áp dụng dụng cho doanh nghiệp.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>&nbsp;</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>II.</strong><strong>&nbsp;</strong><strong>GIỚI THIỆU CHUNG VỀ CHƯƠNG TRÌNH</strong>&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Ngôn ngữ lập trình: Phần mềm kế toán ADSOFT được thiết kế bằng ngôn ngữ C#, cơ sở dữ liệu SQL server, chạy trên môi trường Windows 98 trở lên....</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Có thể chạy trên môi trường máy đơn lẻ hoặc chạy mạng nội bộ được phân quyền chi tiết đến từng người sử dụng, từng danh mục, từng báo cáo... với quyền hành tối đa trao cho người quản trị nắm quyền hệ thống.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Cơ chế sao lưu dữ liệu lựa chọn cùng với chế độ tự động Backup tạo sự an toàn về số liệu hạch toán và cất trữ dữ liệu khi làm việc với chương trình .</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Ngôn ngữ hiển thị: Ngôn ngữ Tiếng Việt thuận tiện cho người&nbsp;sử dụng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Đồng tiền hạch toán: Cho phép người sử dụng hạch toán kép theo nhiều loại nguyên tệ và tiền Việt song song: USD và VNĐ</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Chương trình có khả năng tính toán dữ liệu và lập dự toán theo yêu cầu của người quản trị.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Có khả năng gửi/ truyền dữ liệu các file bằng điện tử.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Có khả năng xuất dữ liệu ra file Excel.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Các chức năng ưu việt của phần mềm:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+&nbsp;Cơ sở dữ liệu mở</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hệ thống các công cụ quản trị mạnh như: Chức năng tìm kiếm, gộp, chọn lựa, tự động định dạng các báo cáo theo yêu cầu của người quản trị.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>&nbsp;</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>III. NỘI DUNG CHI TIẾT VỀ CHƯƠNG TRÌNH.</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>&nbsp;</strong></span></p>

<table border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px; text-align:justify; width:679px">
	<tbody>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>STT</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>CÁC PHÂN HỆ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>01</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>KẾ TOÁN TIỀN MẶT, TIỀN GỬI NGÂN HÀNG.</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§&nbsp;Cho phép quản lý thu, chi tiền theo nhiều nguồn, nhiều quỹ khác nhau.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§&nbsp;Cho phép khai thác thông tin tức thời số dư tiền tại quĩ.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§&nbsp;Cho phép theo dõi chi tiết nhiều tài khoản tại nhiều ngân hàng khác nhau, mục đích quản lý tiền của đơn vị</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§&nbsp;Cho phép in phiếu thu, phiếu chi trên máy tính.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§&nbsp;Chương trình cung cấp các báo cáo như:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Sổ quĩ tiền mặt.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Sổ chi tiết, tổng hợp tài khoản tiền mặt, tiền gửi.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Sổ cái</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>02</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>KẾ TOÁN CÔNG NỢ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§&nbsp;Cho phép quản lý tình hình công nợ phải thu, công nợ phải trả chi tiết đến từng đối tượng công nợ, nhóm đối tượng công nợ, khu vực công nợ.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§&nbsp;Theo dõi công nợ của khách hàng kèm theo các thông tin về hàng hoá về cả chỉ tiêu số lượng và giá cả, giá trị để tiện cho công việc kiểm tra đối chiếu với các đối tượng có liên quan.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§&nbsp;Chương trình cung cấp các báo cáo:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Sổ chi tiết công nợ cho từng đối tượng và từng tài khoản công nợ</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-&nbsp;Sổ tổng hợp công nợ .</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>03</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>KẾ TOÁN VẬT TƯ, HÀNG HOÁ.</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§&nbsp;Chương trình cho phép quản lý vật tư hàng hoá theo các chỉ tiêu:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Giá trị vật tư.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Số lượng vật tư.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Chương trình cho phép theo dõi chi tiết theo từng loại vật tư hàng hoá, từng đối tượng nhập xuất.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Tự động tính giá xuất kho, tồn kho theo nhiều phương pháp tính khác nhau.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Chương trình cho phép in phiếu nhập, phiếu xuất.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Chương trình cung cấp các báo cáo về hàng hoá như:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Thẻ kho</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Sổ chi tiết hàng hoá</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Báo cáo nhập- xuất- tồn vật tư, hàng hoá</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Bảng kê nhập xuất hàng hoá.</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>04</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>KẾ TOÁN THUẾ GIÁ TRỊ GIA TĂNG</strong><strong>&nbsp;</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Chương trình cung cấp ngay sau khi hạch toán các báo cáo thuế theo chế độ hiện hành:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Bảng kê hàng hoá dịch vụ mua vào.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Bảng kê hàng hoá dịch vụ bán ra.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Tờ khai thuế.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Bảng kê DVMV có hoá đơn bán hàng.</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>05</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>QUẢN LÝ CÁC KHOẢN THU</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý Doanh thu</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Quản lý doanh thu theo từng toà nhà</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Quản lý doanh thu chi phí theo từngnhà hàng, lập định mức vật tư cho từng sản phẩm</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Quản lý doanh thu theo ngành hàng</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Quản lý doanh thu theo từng nhóm hàng</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Quản lý doanh thu theo từng loại hàng</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Quản lý doanh thu theo từng đối tượng khách hàng, nhóm khách hàng</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Báo cáo tổng hợp doanh thu giá vốn hàng và tính lãi lỗ cho từng loại mặt hàng.</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>06</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>QUẢN LÝ CHI PHÍ VÀ TÍNH GIÁ THÀNH</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý chi phí gián tiếp theo các tiêu thức sau:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Theo đối tượng tập hợp chi phí</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Theo yếu tố chi phí</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý chi phí trực tiếp sản xuất sản phẩm, công trình theo các tiêu thức sau:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Theo từng phân xưởng, tổ đội, đơn đặt hàng.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Quản lý theo từng sản phẩm (Đối tượng tính giá thành)</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý chi phí theo khoản mục các yếu tố chi phí.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cuối kỳ đánh giá sản phẩm làm dở và chương trình tự động tính giá sản phẩm theo từng yếu tố chi phí và theo khoản mục với hai chỉ tiêu:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Lượng tiêu hao.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Giá trị tiêu hao.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Tự động kết chuyển phân bổ chi phí, các báo cáo chi tiết và tổng hợp giá thành.</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>07</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>KẾ TOÁN TỔNG HỢP</strong><strong>&nbsp;</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý hệ thống tài khoản, cho phép mở các tài khoản chi tiết đến nhiều cấp.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Ghi nhận các nghiệp vụ kinh tế vào sổ chi tiết, sổ cái các tài khoản</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Tự động cập nhật các nghiệp vụ phát sinh từ các phân hệ khác.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép điều chỉnh dữ liệu khi có yêu cầu, linh hoạt trong quản lý chu kỳ kế toán.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép in các sổ tổng hợp tài khoản các tài khoản khác nhau, theo các cấp độ kế toán khác nhau.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép hạch toán theo nhiều hoạt động thu khác nhau.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cung cấp các báo cáo tổng hợp chi tiết các khoản thu.<em>&nbsp;</em></span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>08</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>KẾ TOÁN TSCĐ, LƯƠNG, BHXH, BHYT</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép theo dõi hạch toán tổng hợp tiền lương, bảo hiểm xã hội, bảo hiểm y tế.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép hạch toán tổng hợp tình hình tăng, giảm và hao mòn TSCĐ.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý tài sản theo mẫu chung của bộ tài chính</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý tài sản cố định theo nhiều tiêu thức và các cấp quản lý</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Nguyên giá TSCĐ</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Khấu hao tài sản cố định</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Giá trị còn lại</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Hồ sơ tài sản cố định ( quá trình mua sắm, nâng cấp sửa chữa …)</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý tài sản theo cả hai chỉ tiêu</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Giá trị</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Số lượng</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý và tổng hợp theo dõi tình hình trang bị và sử dụng TSCĐ tại các đơn vị phòng ban</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Quản lý và theo dõi chi tiết đến từng đơn vị, phòng ban và đối tượngsử dụng TSCĐ</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Tự động tính và trích khấu hao TSCĐ trong kỳ và tự động cập nhật số dư cuối kỳ trước và đầu kỳ sau khi có sự thay đổi hoặc điều chỉnh</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Tự động cung cấp các báo cáo về tài sản như:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Các sổ, thẻ chi tiết tài sản</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Các sổ tổng hợp tài sản</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Các báo cáo tăng giảm tài sản cố định</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Các báo cáo về khấu hao TSCĐ</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Các báo cáo về tình trạng thiết bị thiết bị đang dùng, không cần dùng…</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Các báo cáo trên được cung cấp theo yêu cầu quản trị của người quản lý theo các tiêu thức đối tượng sử dụng, tình trạng tài sản, nhóm tài sản</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Cung cấp các báo cáo liên quan đến việc kiểm tra đối chiếu, thuyết minh số liệu kế toán tại đơn vị</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Cung cấp các chức năng quản trị nhanh và hiệu quả ( tìm kiếm, lọc dữ liệu …)</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Đưa ra giải pháp lưu dữ liệu tập chung</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>9</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>HỆ THỐNG BÁO CÁO TÀI CHÍNH</strong><strong>&nbsp;</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Tự động cập nhật nghiệp vụ phát sinh vào các phân hệ kế toán có liên quan.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Tự động cập nhật số liệu vào hệ thống các chỉ tiêu báo cáo tài chính có liên quan:</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Bảng cân đối phát sinh các tài khoản.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Bảng cân đối kế toán.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Báo cáo kết quả hoạt động kinh doanh.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Báo cáo thuế và tình hình thực hiện nghĩa vụ với nhà nước.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Báo cáo lưu chuyển tiền tệ.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Sổ cái các tài khoản.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">-Và các báo cáo khác theo chế độ quy định.</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>&nbsp;</strong></span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>&nbsp;</strong></span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>&nbsp;</strong></span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>10</strong></span></p>

			<p> </p>

			<p> </p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>QUẢN TRỊ HỆ THỐNG.</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép phân quyền sử dụng đến từng người sử dụng, chức năng, từng phân hệ kế toán.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép nhiều người sử dụng, chạy qua hệ thống mạng</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép nén dữ liệu và backup ra đĩa mềm và các thiết bị khác</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép lưu và khôi phục dữ liệu.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Dữ liệu được bảo mật bằng hệ cơ sở quản trị dữ liệu và hệ thống người dùng bằng việc mã hoá dữ liệu và phân quyền người sử dụng</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>11</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>TRUYỀN FILE, TỔNG HỢP DỮ LIỆU.</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Cho phép truyền File dữ liệu chi tiết, File báo cáo Tài chính trên mạng Internetđể chương trình tự động cập nhật, tổng hợp số liệu in báo cáo cần thiết.</span></p>
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>12</strong></span></p>
			</td>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>HỆ THỐNG CÁC CÔNG CỤ QUẢN TRỊ</strong></span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Hệ thống công cụ sử dụng nguyên lý logic đảm bảo người dùng có thể khai thác nhanh chóng tiện lợi và theo yêu cầu.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Công cụ tìm kiếm, lọc, gộp theo nhiều loại dữ liệu.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Công cụ kết xuất dữ liệu dưới nhiều dạng lựa chọn như: Word, Exell...</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Công cụ in ấn dữ liệu theo nguyên lý thấy là in được.</span></p>

			<p><span style="font-family:arial,helvetica,sans-serif; font-size:small">§Công cụ quản trị dữ liệu phục vụ cho công tác nhập, kiểm tra, khai thác dữ liệu.</span></p>
			</td>
		</tr>
	</tbody>
</table>
', NULL, 2, 1, 1, 0, NULL, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId], [IsShowHomePage]) VALUES (9, 16, NULL, NULL, N'Phần mềm quản lý tài sản', N'phan-mem-quan-ly-tai-san', N'Phan mem quan ly tai san', N'Phần mềm quản lý tài sản', N'phan-mem-quan-ly-tai-san', N'/Uploads/quan-ly-tai-san.jpg', N'Phần mềm quản lý tài sản', N'Phần mềm quản lý tài sản', N'<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm quản lý tài sản cố định là phần mềm được thiết kế tổng thể cho phép tất cả các đơn vị thuộc các ngành khác nhau sử dụng hiệu quả..Phần mềm quản lý tài sản cố định của công ty chúng tôi được xây dựng theo hướng mở, dễ dàng nâng cấp, mở rộng trong tương lai...</span></p>
', N'<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm quản lý tài sản cố định là phần mềm được thiết kế tổng thể cho phép tất cả các đơn vị thuộc các ngành khác nhau sử dụng hiệu quả..Phần mềm quản lý tài sản cố định của công ty chúng tôi được xây dựng theo hướng mở, dễ dàng nâng cấp, mở rộng trong tương lai...</span></p>
', 1, 1, 1, 0, NULL, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId], [IsShowHomePage]) VALUES (10, 16, NULL, NULL, N'Phần mềm nhân sự', N'phan-mem-nhan-su', N'Phan mem nhan su', N'Phần mềm nhân sự', N'phan-mem-nhan-su', N'/Uploads/crm.jpg', N'Phần mềm nhân sự', N'Phần mềm nhân sự', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ứng dụng công nghệ tin học trong công tác hoạt động sản xuất kinh doanh nói chung và trong quản lý nguồn nhân lực, tiền lương nói riêng là một trong những mục tiêu chiến lược hàng đầu đã và đang được các nhà quản lý quan tâm…Biết được điều đó Công ty chúng tôi đã cho ra đời bộ phần mềm quản lý nhân sự và tiền lương với nhiều tính năng...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>NỘI DUNG CỦA CHƯƠNG TRÌNH</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* Các phân hệ quản lý nhân sự, tiền lương</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">* Quản lý thông tin chi tiết của hệ thống nhân sự</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quản lý chi tiết theo từng phòng ban, từng bộ phận.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quản lý các thông tin cá nhân như: Tên, ngày sinh, địa chỉ nhà, điện thoại, email, trình độ học vấn...</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* Quản lý quá trình của nhân viên trước và sau khi vào công ty</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quan hệ gia đình: Quản lý từng nhân thân có mối quan hệ với nhân viên.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình hoạt động bản thân của nhân viên từ trước đến thời điểm hiện tại (từng thời điểm làm gì? Ở đâu? Cơ quan nào?).</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình công tác của nhân viên trong đơn vị: Từng thời điểm làm việc ở những đơn vị nào, chức vụ gì?</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình khen thưởng, kỷ luật của nhân viên: thời điểm nào được khen thưởng (hoặc kỷ luật)? Cấp khen thưởng (kỷ luật)? Hình thức gì? Lý do gì?</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình đào tạo của nhân viên: từng thời điểm tham gia đào tạo, nội dung đào tạo? Hình thức đào tạo? Nơi đào tạo? Chi phí đào tạo?</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình nghiên cứu khoa học của nhân viên: Thời điểm nào tham gia? Tham gia ở cấp nào? Đơn vị nào? Kết quả thế nào? Nơi nghiệm thu kết quả?</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quản lý quá trình biến động lương của nhân viên: Từng thời điểm có sự thay đổi gì? Mức cũ và mức mới? Theo dõi chi tiết từng thông tin như: bậc lương, ngạch lương, lương tối thiểu, hệ số, hệ số vượt khung, BHXH, BHYT, các loại phụ cấp.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* Theo dõi điều chuyển cán bộ</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo dõi tình hình điều chuyển nhân viên trong nội bộ giữa các đơn vị, phòng ban.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo dõi tình hình điều chuyển công tác của nhân viên.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo dõi những nhân viên nghỉ hưu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Theo dõi những nhân viên nghỉ việc</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* Quản lý tiền lương</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo dõi từng khoản lương chi tiết đến từng nhân viên.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Phân hệ tiền lương được quản lý động tới từng khoản lương giúp cho người quản lý có thể khai báo công thức tới từng khoản lương của từng nhân viên dựa vào danh sách biến khai báo trong hệ thống.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chương trình có thể tổng hợp dễ dàng lương tháng nhân viên dựa vào các khoản khai báo trong từng tháng. Chương trình cho phép khai báo các khoản khác nhau trong các tháng hoặc các tháng khác nhau của nhân viên.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chương trình cho phép tự động chuyển tháng lương của nhân viên trong trường hợp các tháng nhân viên có khoản lương giống nhau hoặc gần giống nhau giúp cho nhà quản lý giảm bớt thao tác nhập liệu</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* CÁC TIỆN ÍCH CHỨC NĂNG CỦA PHẦN MỀM</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Hệ thống báo cáo linh hoạt phục vụ cho người quản trị có thể in danh sách nhân sự theo yêu cầu quản lý.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Báo cáo tổng hợp lương tháng giảm bớt công việc cho người sử dụng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hệ thống chức năng đa dạng hỗ trợ tối đa cho người dùng. Chương trình được thiết kế với rất nhiều tính năng như:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng thêm mới dòng mới (thêm bản ghi mới) đơn giản, dễ dàng cho người dùng nhập thông tin</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng sửa trên form và sửa trực tiếp trên lưới giúp người dùng có thể dễ dàng thao tác sửa thông tin sai</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng đánh dấu dòng giúp người dùng có thể sao chép hoặc xoá nhiều dòng được đánh dấu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng tìm kiếm đa dạng giúp người dùng có thể tìm kiếm nhanh những thông tin cần tìm kiếm.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng sắp xếp giúp người dùng sắp xếp dữ liệu theo nhiều tiêu chí.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng di chuyển dòng giúp người dùng di chuyển nhanh đến 1 dòng bất kỳ</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng chọn cột hiển thị giúp người dùng có thể ẩn những cột không cần thiết.</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><span style="color:rgb(255, 0, 0)"><a name="_Toc196291974"></a></span></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng gộp dữ liệu trên 1 và nhiều cột: giúp cho người dùng có thể dễ dàng tổng hợp thông tin.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng in bảng (F5)&nbsp;giúp cho người dùng có thể in danh sách bất kỳ</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Thay thế giá trị trong cột giúp người dùng có thể thay thế 1 hoặc nhiều giá trị trong cột chỉ bằng 1 thao tác</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chép dữ liệu ra tệp tin giúp cho người dùng muốn sao lưu riêng 1 bảng dữ liệu phục cụ công tác lưu trữ, sao lưu an toàn</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Bổ sung dữ liệu từ tệp tin giúp cho người dùng muốn bổ sung những dòng đã chép.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Kiểm tra trùng lặp: giúp cho người dùng có thể kiểm tra những thông tin thừa do nhập trùng nhau.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chức năng thay đổi tiêu đề cột giúp cho người dùng có thể thay đổi tiêu đề cột DL cho phù hợp với mục đích sử dụng của người dùng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Thay đổi độ rộng cột giúp cho người dùng có thể thay đổi độ rộng cột cho phù hợp với dữ liệu sử dụng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Kết xuất ra excel: Xuất dữ liệu từ lưới ra excel (xuất những gì ta nhìn thấy đang hiển thị trên lưới).</span></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ứng dụng công nghệ tin học trong công tác hoạt động sản xuất kinh doanh nói chung và trong quản lý nguồn nhân lực, tiền lương nói riêng là một trong những mục tiêu chiến lược hàng đầu đã và đang được các nhà quản lý quan tâm…Biết được điều đó Công ty chúng tôi đã cho ra đời bộ phần mềm quản lý nhân sự và tiền lương với nhiều tính năng...</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>NỘI DUNG CỦA CHƯƠNG TRÌNH</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* Các phân hệ quản lý nhân sự, tiền lương</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">* Quản lý thông tin chi tiết của hệ thống nhân sự</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quản lý chi tiết theo từng phòng ban, từng bộ phận.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quản lý các thông tin cá nhân như: Tên, ngày sinh, địa chỉ nhà, điện thoại, email, trình độ học vấn...</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* Quản lý quá trình của nhân viên trước và sau khi vào công ty</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quan hệ gia đình: Quản lý từng nhân thân có mối quan hệ với nhân viên.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình hoạt động bản thân của nhân viên từ trước đến thời điểm hiện tại (từng thời điểm làm gì? Ở đâu? Cơ quan nào?).</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình công tác của nhân viên trong đơn vị: Từng thời điểm làm việc ở những đơn vị nào, chức vụ gì?</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình khen thưởng, kỷ luật của nhân viên: thời điểm nào được khen thưởng (hoặc kỷ luật)? Cấp khen thưởng (kỷ luật)? Hình thức gì? Lý do gì?</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình đào tạo của nhân viên: từng thời điểm tham gia đào tạo, nội dung đào tạo? Hình thức đào tạo? Nơi đào tạo? Chi phí đào tạo?</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Quản lý quá trình nghiên cứu khoa học của nhân viên: Thời điểm nào tham gia? Tham gia ở cấp nào? Đơn vị nào? Kết quả thế nào? Nơi nghiệm thu kết quả?</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quản lý quá trình biến động lương của nhân viên: Từng thời điểm có sự thay đổi gì? Mức cũ và mức mới? Theo dõi chi tiết từng thông tin như: bậc lương, ngạch lương, lương tối thiểu, hệ số, hệ số vượt khung, BHXH, BHYT, các loại phụ cấp.</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* Theo dõi điều chuyển cán bộ</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo dõi tình hình điều chuyển nhân viên trong nội bộ giữa các đơn vị, phòng ban.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo dõi tình hình điều chuyển công tác của nhân viên.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo dõi những nhân viên nghỉ hưu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Theo dõi những nhân viên nghỉ việc</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* Quản lý tiền lương</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo dõi từng khoản lương chi tiết đến từng nhân viên.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Phân hệ tiền lương được quản lý động tới từng khoản lương giúp cho người quản lý có thể khai báo công thức tới từng khoản lương của từng nhân viên dựa vào danh sách biến khai báo trong hệ thống.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chương trình có thể tổng hợp dễ dàng lương tháng nhân viên dựa vào các khoản khai báo trong từng tháng. Chương trình cho phép khai báo các khoản khác nhau trong các tháng hoặc các tháng khác nhau của nhân viên.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chương trình cho phép tự động chuyển tháng lương của nhân viên trong trường hợp các tháng nhân viên có khoản lương giống nhau hoặc gần giống nhau giúp cho nhà quản lý giảm bớt thao tác nhập liệu</span><br />
<br />
<span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>* CÁC TIỆN ÍCH CHỨC NĂNG CỦA PHẦN MỀM</strong></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Hệ thống báo cáo linh hoạt phục vụ cho người quản trị có thể in danh sách nhân sự theo yêu cầu quản lý.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Báo cáo tổng hợp lương tháng giảm bớt công việc cho người sử dụng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hệ thống chức năng đa dạng hỗ trợ tối đa cho người dùng. Chương trình được thiết kế với rất nhiều tính năng như:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng thêm mới dòng mới (thêm bản ghi mới) đơn giản, dễ dàng cho người dùng nhập thông tin</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng sửa trên form và sửa trực tiếp trên lưới giúp người dùng có thể dễ dàng thao tác sửa thông tin sai</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng đánh dấu dòng giúp người dùng có thể sao chép hoặc xoá nhiều dòng được đánh dấu</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng tìm kiếm đa dạng giúp người dùng có thể tìm kiếm nhanh những thông tin cần tìm kiếm.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng sắp xếp giúp người dùng sắp xếp dữ liệu theo nhiều tiêu chí.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng di chuyển dòng giúp người dùng di chuyển nhanh đến 1 dòng bất kỳ</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng chọn cột hiển thị giúp người dùng có thể ẩn những cột không cần thiết.</span><span style="font-family:arial,helvetica,sans-serif; font-size:small"><span style="color:rgb(255, 0, 0)"><a name="_Toc196291974"></a></span></span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng gộp dữ liệu trên 1 và nhiều cột: giúp cho người dùng có thể dễ dàng tổng hợp thông tin.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chức năng in bảng (F5)&nbsp;giúp cho người dùng có thể in danh sách bất kỳ</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Thay thế giá trị trong cột giúp người dùng có thể thay thế 1 hoặc nhiều giá trị trong cột chỉ bằng 1 thao tác</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chép dữ liệu ra tệp tin giúp cho người dùng muốn sao lưu riêng 1 bảng dữ liệu phục cụ công tác lưu trữ, sao lưu an toàn</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Bổ sung dữ liệu từ tệp tin giúp cho người dùng muốn bổ sung những dòng đã chép.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Kiểm tra trùng lặp: giúp cho người dùng có thể kiểm tra những thông tin thừa do nhập trùng nhau.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chức năng thay đổi tiêu đề cột giúp cho người dùng có thể thay đổi tiêu đề cột DL cho phù hợp với mục đích sử dụng của người dùng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Thay đổi độ rộng cột giúp cho người dùng có thể thay đổi độ rộng cột cho phù hợp với dữ liệu sử dụng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Kết xuất ra excel: Xuất dữ liệu từ lưới ra excel (xuất những gì ta nhìn thấy đang hiển thị trên lưới).</span></p>
', 6, 1, 1, 0, NULL, 0, 0, 0)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId], [IsShowHomePage]) VALUES (11, 27, NULL, NULL, N'Desktop CMS Scorpion S175', N'desktop-cms-scorpion-s175', N'Desktop CMS Scorpion S175', N'Desktop CMS Scorpion S175', N'desktop-cms-scorpion-s175', N'/Uploads/cms1.jpg', N'Desktop CMS Scorpion S175', N'Desktop CMS Scorpion S175', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hãng sản xuất:&nbsp; CMS</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tên sản phẩm:&nbsp; Scorpion</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- P/N:&nbsp; S175-31</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chipset:&nbsp; Intel G31 Express Chipset</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Bộ xử lý:&nbsp; Intel® Core 2 Duo E7500 (2.93GHz, 1066MHz FSB, 3MB Cache L2</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Bộ nhớ RAM:&nbsp; 2GB DDR2</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Ổ cứng HDD:&nbsp; 320GB SATA</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Ổ đĩa quang ODD:&nbsp; DVD-RW</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Giao tiếp mạng:&nbsp; Onboard</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Card Đồ họa:&nbsp; Radeon ATI 512MB up to 1GB DDR2</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Card Âm thanh:&nbsp; Onboard</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Bàn phím và chuột:&nbsp; Keyboard và Mouse</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Hệ điều hành:&nbsp; PC DOS</span></p>

<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:small">- Nguồn:&nbsp; ATX</span></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hãng sản xuất:&nbsp; CMS</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Tên sản phẩm:&nbsp; Scorpion</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- P/N:&nbsp; S175-31</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chipset:&nbsp; Intel G31 Express Chipset</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Bộ xử lý:&nbsp; Intel® Core 2 Duo E7500 (2.93GHz, 1066MHz FSB, 3MB Cache L2</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Bộ nhớ RAM:&nbsp; 2GB DDR2</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Ổ cứng HDD:&nbsp; 320GB SATA</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Ổ đĩa quang ODD:&nbsp; DVD-RW</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Giao tiếp mạng:&nbsp; Onboard</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Card Đồ họa:&nbsp; Radeon ATI 512MB up to 1GB DDR2</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Card Âm thanh:&nbsp; Onboard</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Bàn phím và chuột:&nbsp; Keyboard và Mouse</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Hệ điều hành:&nbsp; PC DOS</span></p>

<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:small">- Nguồn:&nbsp; ATX</span></p>
', 7, 1, 1, 0, NULL, 0, 0, 1)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId], [IsShowHomePage]) VALUES (12, 27, NULL, NULL, N'Desktop CMS Scorpion SC65', N'desktop-cms-scorpion-sc65', N'Desktop CMS Scorpion SC65', N'Desktop CMS Scorpion SC65', N'desktop-cms-scorpion-sc65', N'/Uploads/12096_SC5361.jpg', N'Desktop CMS Scorpion SC65', N'Desktop CMS Scorpion SC65', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Hãng sản xuất:&nbsp; CMS</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Xuất xứ:&nbsp; Chính hãng</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Chipset:&nbsp; Intel® H55 Express FSB support 1066/1333MHz</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Bộ xử lý:&nbsp; Intel® Core i5-650 (4M Cache, 3.2 GHz)</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Bộ nhớ RAM:&nbsp; 2 *1GB DDR3 1066/1333MHz expandable to 8GB</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Ổ cứng HDD:&nbsp; 320GB SATA</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Ổ đĩa quang ODD:&nbsp; DVD-RW</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Giao tiếp mạng:&nbsp; 10/100/1000 Mbits/sec</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Cổng mở rộng:&nbsp; 6 x SATA,S/PDIF out Optical,DVI,HDMI</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Card Đồ họa:&nbsp; Intel® Graphics Media Accelerator HD</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Card Âm thanh:&nbsp; Audio High Definition Audio, 7.1-Channel</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Bàn phím và chuột:&nbsp; CMS PS2</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Hệ điều hành:&nbsp; Free Dos</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Kiểu case:&nbsp; Tower</span></p>
', NULL, 5, 1, 1, 0, NULL, 0, 0, 1)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId], [IsShowHomePage]) VALUES (13, 28, NULL, NULL, N'DELL OPTIPLEX 755 MT', N'dell-optiplex-755-mt', N'DELL OPTIPLEX 755 MT', N'DELL OPTIPLEX 755 MT', N'dell-optiplex-755-mt', N'/Uploads/dell-optiplex.jpg', N'DELL OPTIPLEX 755 MT', N'DELL OPTIPLEX 755 MT', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hãng sản xuất: Dell</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Kiểu máy: Kiểu Tower</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dòng CPU: Intel Core 2 Duo E7400&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tốc độ CPU: 2.8GHz / Cache size: 3MB L2 cache</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chipset Mainboard: Intel Q35 Express</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ổ quang (Optical drive): DVD-R&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dung lượng Ổ cứng: 320GB / Giao tiếp ổ cứng: SATA2 / Số vòng quay ổ cứng: 7200RPM</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dung lượng RAM: 1GB / Loại RAM: DDR2 - 800MHz&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dung lượng RAM gắn tối đa: 16GB</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Card màn hình: Onboard - -&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dung lượng bộ nhớ đồ họa: 384MB</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Card mạng: 10/100/1000Mbps</span></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hãng sản xuất: Dell</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Kiểu máy: Kiểu Tower</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dòng CPU: Intel Core 2 Duo E7400&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tốc độ CPU: 2.8GHz / Cache size: 3MB L2 cache</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chipset Mainboard: Intel Q35 Express</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ổ quang (Optical drive): DVD-R&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dung lượng Ổ cứng: 320GB / Giao tiếp ổ cứng: SATA2 / Số vòng quay ổ cứng: 7200RPM</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dung lượng RAM: 1GB / Loại RAM: DDR2 - 800MHz&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dung lượng RAM gắn tối đa: 16GB</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Card màn hình: Onboard - -&nbsp;</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Dung lượng bộ nhớ đồ họa: 384MB</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Card mạng: 10/100/1000Mbps</span></p>
', 2, 1, 1, 0, NULL, 0, 0, 1)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId], [IsShowHomePage]) VALUES (14, 18, NULL, NULL, N'XPS 15 9560 High Performance Laptop', N'xps-15-9560-high-performance-laptop', N'XPS 15 9560 High Performance Laptop', N'XPS 15 9560 High Performance Laptop', N'xps-15-9560-high-performance-laptop', N'/Uploads/laptop-xps-15-pdp-polaris-15a.jpg', N'XPS 15 9560 High Performance Laptop', N'XPS 15 9560 High Performance Laptop', N'<p>XPS 15 9560 High Performance Laptop</p>
', NULL, 0, 1, 1, 0, NULL, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Tracker] ON 

INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (14, N'Chrome', N'60', N'WinNT', N'/', N'', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T09:57:37.143' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (15, N'Chrome', N'60', N'WinNT', N'/', N'', N'ncluf1ppdcb5v3b4r0g2bhxq', N'192.168.100.200', CAST(N'2017-09-27T09:57:48.537' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (16, N'Chrome', N'61', N'Unknown', N'/', N'', N'bik40jddohhokm4k2cgnjz43', N'192.168.100.8', CAST(N'2017-09-27T10:03:51.420' AS DateTime), N'VN', N'...', 1, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (17, N'Chrome', N'61', N'Unknown', N'/', N'http://192.168.100.200:89/', N'thuo24ckmpoiegxq04pmvkcn', N'192.168.100.8', CAST(N'2017-09-27T10:03:56.080' AS DateTime), N'VN', N'...', 1, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (18, N'Chrome', N'61', N'Unknown', N'/dfsdf', N'http://192.168.100.200:89/', N'vzkrb35rtbaqc4bfypff4hus', N'192.168.100.8', CAST(N'2017-09-27T10:04:02.287' AS DateTime), N'VN', N'...', 1, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (19, N'Chrome', N'61', N'Unknown', N'/', N'http://192.168.100.200:89/', N'wxd2wekuvw12mp51f0bbn5od', N'192.168.100.8', CAST(N'2017-09-27T10:04:17.753' AS DateTime), N'VN', N'...', 1, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (20, N'Chrome', N'61', N'Unknown', N'/', N'http://192.168.100.200:89/', N'p4sdcolxiwwuqkzj2mafny0i', N'192.168.100.8', CAST(N'2017-09-27T10:04:36.107' AS DateTime), N'VN', N'...', 1, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (21, N'Chrome', N'61', N'Unknown', N'/', N'http://192.168.100.200:89/', N'vq44byddudhev5dwsk2hk21w', N'192.168.100.8', CAST(N'2017-09-27T10:04:39.243' AS DateTime), N'VN', N'...', 1, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (22, N'Chrome', N'60', N'WinNT', N'/', N'http://192.168.100.200:89/', N'slvph1hmo0dizbts3nktaw55', N'192.168.100.200', CAST(N'2017-09-27T10:06:25.403' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (23, N'Chrome', N'60', N'WinNT', N'/dich-vu', N'http://192.168.100.200:89/', N'wzdggtexgm2bbzbiofgfwfk4', N'192.168.100.200', CAST(N'2017-09-27T10:06:27.343' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (24, N'Chrome', N'60', N'WinNT', N'/lien-he', N'http://192.168.100.200:89/dich-vu', N'fth3hk5x0lfcfsbcgixlsffs', N'192.168.100.200', CAST(N'2017-09-27T10:06:30.630' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (25, N'Chrome', N'60', N'WinNT', N'/tim-san-pham', N'http://192.168.100.200:89/lien-he', N'raebbaylteb510yg4mci1l3g', N'192.168.100.200', CAST(N'2017-09-27T10:06:50.967' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (26, N'Chrome', N'61', N'Unknown', N'/', N'http://192.168.100.200:89/', N'sti1bbuco2dhoi4t0inbejl2', N'192.168.100.8', CAST(N'2017-09-27T12:02:15.567' AS DateTime), N'VN', N'...', 1, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (27, N'Chrome', N'61', N'Unknown', N'/', N'http://192.168.100.200:89/', N'5zuagloqg2ay0zcn3mifjgfl', N'192.168.100.8', CAST(N'2017-09-27T12:02:23.873' AS DateTime), N'VN', N'...', 1, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (28, N'Chrome', N'61', N'Unknown', N'/', N'http://192.168.100.200:89/', N'3uysk02a4xdckmakkxke3tlk', N'192.168.100.8', CAST(N'2017-09-27T12:02:44.227' AS DateTime), N'VN', N'...', 1, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (29, N'Chrome', N'60', N'WinNT', N'/dang-nhap', N'', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T12:24:31.060' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (30, N'Chrome', N'60', N'WinNT', N'/san-pham/phan-mem', N'http://192.168.100.200:89/', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T12:44:25.990' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (31, N'Chrome', N'60', N'WinNT', N'/chi-tiet/phan-mem-quan-ly-cong-van', N'http://192.168.100.200:89/san-pham/phan-mem', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T12:44:27.803' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (32, N'Chrome', N'60', N'WinNT', N'/dich-vu', N'http://192.168.100.200:89/san-pham/phan-mem', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T12:44:37.517' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (33, N'Chrome', N'60', N'WinNT', N'/lien-he', N'http://192.168.100.200:89/', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:35:36.963' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (34, N'Chrome', N'60', N'WinNT', N'/san-pham/cong-nghe-thong-tin', N'http://192.168.100.200:89/san-pham/phan-mem', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:39:31.740' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (35, N'Chrome', N'60', N'WinNT', N'/chi-tiet/quan-ly-nha-hang-khach-san', N'http://192.168.100.200:89/san-pham/phan-mem', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:42:45.807' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (36, N'Chrome', N'60', N'WinNT', N'/dich-vu/cung-cap-san-pham-cong-nghe', N'http://192.168.100.200:89/dich-vu', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:46:15.050' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (37, N'Chrome', N'60', N'WinNT', N'/dich-vu/dich-vu-tham-dinh-gia', N'http://192.168.100.200:89/dich-vu/cung-cap-san-pham-cong-nghe', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:46:24.543' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (38, N'Chrome', N'60', N'WinNT', N'/dich-vu/tu-van-xay-dung', N'http://192.168.100.200:89/dich-vu/dich-vu-tham-dinh-gia', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:46:34.000' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (39, N'Chrome', N'60', N'WinNT', N'/chi-tiet-dich-vu/cung-cap-san-pham-cong-nghe', N'http://192.168.100.200:89/dich-vu/cung-cap-san-pham-cong-nghe', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:48:50.357' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (40, N'Chrome', N'60', N'WinNT', N'/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'http://192.168.100.200:89/chi-tiet-dich-vu/cung-cap-san-pham-cong-nghe', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:49:29.083' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (41, N'Chrome', N'60', N'WinNT', N'/chi-tiet-dich-vu/tu-van-xay-dung', N'http://192.168.100.200:89/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:49:34.147' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (42, N'Chrome', N'60', N'WinNT', N'/chi-tiet-dich-vu/tu-van-dau-tu', N'http://192.168.100.200:89/dich-vu', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T13:52:55.437' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (43, N'Chrome', N'60', N'WinNT', N'/giai-phap/giai-phap-cho-doanh-nghiep', N'http://192.168.100.200:89/dich-vu', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T14:03:27.190' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (44, N'Chrome', N'60', N'WinNT', N'/tin-tuc/tin-tuc-va-su-kien', N'http://192.168.100.200:89/giai-phap/giai-phap-cho-doanh-nghiep', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T14:05:28.260' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (45, N'Chrome', N'60', N'WinNT', N'/gioi-thieu/van-hoa-cong-ty', N'http://192.168.100.200:89/', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:11:49.477' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (46, N'Chrome', N'60', N'WinNT', N'/gioi-thieu/phuong-cham-hoat-dong', N'http://192.168.100.200:89/gioi-thieu/van-hoa-cong-ty', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:18:40.697' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (47, N'Chrome', N'60', N'WinNT', N'/gioi-thieu/doi-ngu-nhan-vien', N'http://192.168.100.200:89/gioi-thieu/phuong-cham-hoat-dong', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:23:28.910' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (48, N'Chrome', N'60', N'WinNT', N'/bai-viet/xu-huong-laptop-cua-nam-2014', N'http://192.168.100.200:89/tin-tuc/tin-tuc-va-su-kien', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:23:33.387' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (49, N'Chrome', N'60', N'WinNT', N'/dich-vu/2', N'http://192.168.100.200:89/dich-vu', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:39:08.650' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (50, N'Chrome', N'60', N'WinNT', N'/dich-vu/1', N'http://192.168.100.200:89/dich-vu/2', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:39:10.600' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (51, N'Chrome', N'60', N'WinNT', N'/giai-phap/giai-phap-cong-nghe-trong-nam', N'http://192.168.100.200:89/chi-tiet-dich-vu/cung-cap-san-pham-cong-nghe', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:40:57.303' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (52, N'Chrome', N'60', N'WinNT', N'/giai-phap/giai-phap-mang', N'http://192.168.100.200:89/giai-phap/giai-phap-cong-nghe-trong-nam', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:41:00.817' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (53, N'Chrome', N'60', N'WinNT', N'/giai-phap/giai-phap-do-luong', N'http://192.168.100.200:89/giai-phap/giai-phap-mang', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:41:02.460' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (54, N'Chrome', N'60', N'WinNT', N'/giai-phap/giai-phap-cho-doanh-nghiep/2', N'http://192.168.100.200:89/giai-phap/giai-phap-cho-doanh-nghiep', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T17:49:23.857' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (55, N'Chrome', N'60', N'WinNT', N'/bai-viet/7-chiec-smartphone-hap-dan-nhung-it-ai-quan-tam-toi', N'http://192.168.100.200:89/tin-tuc/tin-tuc-va-su-kien', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T22:28:23.467' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (56, N'Chrome', N'60', N'WinNT', N'/tin-tuc/tin-cong-nghe', N'http://192.168.100.200:89/bai-viet/7-chiec-smartphone-hap-dan-nhung-it-ai-quan-tam-toi', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T22:28:39.150' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (57, N'Chrome', N'60', N'WinNT', N'/tin-tuc/tin-khoa-hoc-ky-thuat', N'http://192.168.100.200:89/tin-tuc/tin-cong-nghe', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T22:37:39.137' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (58, N'Chrome', N'60', N'WinNT', N'/bai-viet/review-blackberry-passport-tu-kuala-lumpur', N'http://192.168.100.200:89/tin-tuc/tin-khoa-hoc-ky-thuat', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T22:39:47.543' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (59, N'Chrome', N'60', N'WinNT', N'/bai-viet/nghien-cuu-nao-ong-de-phat-trien-cac-robot-tu-bay', N'http://192.168.100.200:89/tin-tuc/tin-khoa-hoc-ky-thuat', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T22:41:35.070' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (60, N'Chrome', N'60', N'WinNT', N'/giai-phap-chi-tiet/giai-phap-bao-chay-tu-dong', N'http://192.168.100.200:89/giai-phap/giai-phap-cho-doanh-nghiep', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T22:47:43.010' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (61, N'Chrome', N'60', N'WinNT', N'/bai-viet/chip-xu-li-di-dong-huong-den-nen-tang-64-bit', N'http://192.168.100.200:89/tin-tuc/tin-tuc-va-su-kien', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T22:55:42.743' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (62, N'Chrome', N'60', N'WinNT', N'/giai-phap-chi-tiet/giai-phap-ve-he-thong-may-chu--luu-tru', N'http://192.168.100.200:89/giai-phap/giai-phap-cho-doanh-nghiep', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-27T22:56:14.850' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (63, N'Chrome', N'60', N'WinNT', N'/reset-password', N'http://192.168.100.200:89/dang-nhap?u=/tro-giup', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-28T06:21:31.783' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (64, N'Chrome', N'60', N'WinNT', N'/chi-tiet/phan-mem-nhan-su', N'http://192.168.100.200:89/san-pham/phan-mem', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-28T06:31:05.537' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (65, N'Chrome', N'60', N'WinNT', N'/san-pham/cms', N'http://192.168.100.200:89/san-pham/cong-nghe-thong-tin', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-28T06:33:41.347' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (66, N'Chrome', N'60', N'WinNT', N'/san-pham/desktop', N'http://192.168.100.200:89/', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-28T06:42:12.157' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (67, N'Chrome', N'60', N'WinNT', N'/chi-tiet/desktop-cms-scorpion-sc65', N'http://192.168.100.200:89/san-pham/desktop', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-28T06:42:38.100' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (68, N'Chrome', N'60', N'WinNT', N'/san-pham/dell', N'http://192.168.100.200:89/chi-tiet/desktop-cms-scorpion-sc65', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-28T07:19:53.257' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (69, N'Chrome', N'60', N'WinNT', N'/chi-tiet/desktop-cms-scorpion-s175', N'http://192.168.100.200:89/', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-28T07:22:31.210' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (70, N'Chrome', N'60', N'WinNT', N'/san-pham/software', N'http://192.168.100.200:89/', N'mzk1zzqfegrysm3qzgdw1g5t', N'192.168.100.200', CAST(N'2017-09-28T07:26:45.153' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (71, N'Chrome', N'61', N'WinNT', N'/', N'', N'yuegwqos2cqkq4kdbmpqt5wz', N'192.168.100.200', CAST(N'2017-09-28T08:05:54.430' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (72, N'Chrome', N'61', N'WinNT', N'/', N'', N'fewqervm2go3uvclmz01bgfa', N'192.168.100.200', CAST(N'2017-09-28T08:17:13.300' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (73, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'uxhvyijljz3eaanw1jcok2cl', N'192.168.100.200', CAST(N'2017-09-28T08:27:16.950' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (74, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'o2czel4byfr3uo5htaj5itz0', N'192.168.100.200', CAST(N'2017-09-28T08:37:17.733' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (75, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'rj4vcxofrdmuf4mi5cuuau3n', N'192.168.100.200', CAST(N'2017-09-28T08:47:18.197' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (76, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'gq3qzvehr0waukkb53rvcbdj', N'192.168.100.200', CAST(N'2017-09-28T08:51:48.823' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (77, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'3g54hr0dcxsmtqebszzraztg', N'192.168.100.200', CAST(N'2017-09-28T08:51:55.250' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (78, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'ngdgtcez0crsabhhnlb4fiy0', N'192.168.100.200', CAST(N'2017-09-28T08:52:05.980' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (79, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'ybfx3ums0l00onnnq3vngzb1', N'192.168.100.200', CAST(N'2017-09-28T08:53:38.730' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (80, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'dph2canxp2ltcbyb1sd2n1pl', N'192.168.100.200', CAST(N'2017-09-28T08:53:39.933' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (81, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'bmqd4uudk3kq1oskt4ibydar', N'192.168.100.200', CAST(N'2017-09-28T08:53:40.257' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (82, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'ebcu4hkyolp0ogqpz3orlk0l', N'192.168.100.200', CAST(N'2017-09-28T08:53:40.500' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (83, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'kvlwwxmhld1mjysxyxoxynlj', N'192.168.100.200', CAST(N'2017-09-28T08:53:40.700' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (84, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'1vr0e1gkm5kbeqz4rkt3dk0s', N'192.168.100.200', CAST(N'2017-09-28T08:53:40.887' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (85, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'ktycaay3aeav0irqhalznaxn', N'192.168.100.200', CAST(N'2017-09-28T08:53:41.073' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (86, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'sn1bwnofqbdsmurfcdcjotcl', N'192.168.100.200', CAST(N'2017-09-28T08:53:41.257' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (87, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'xttm5nqnig330mzy3102c0u5', N'192.168.100.200', CAST(N'2017-09-28T08:53:41.447' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (88, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'aeurwrxsl4myyg3gen4h23dp', N'192.168.100.200', CAST(N'2017-09-28T08:53:41.627' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (89, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'pdrdfdrzsylvzxz2kqgzhscn', N'192.168.100.200', CAST(N'2017-09-28T08:53:41.797' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (90, N'Chrome', N'61', N'WinNT', N'/', N'', N'varszp2p4a4zbx43ias5zpsv', N'192.168.100.200', CAST(N'2017-09-28T09:00:30.617' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (91, N'Chrome', N'61', N'WinNT', N'/dich-vu/dich-vu-tham-dinh-gia', N'http://192.168.100.200:89/', N'xeyfietstoetvcasby3fz051', N'192.168.100.200', CAST(N'2017-09-28T09:00:38.767' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (92, N'Chrome', N'61', N'WinNT', N'/giai-phap/giai-phap-cho-doanh-nghiep', N'http://192.168.100.200:89/', N'4pfsiy3cd2hhkknun5pz5n5p', N'192.168.100.200', CAST(N'2017-09-28T09:01:54.103' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (93, N'Chrome', N'61', N'WinNT', N'/bai-viet/nghien-cuu-nao-ong-de-phat-trien-cac-robot-tu-bay', N'http://192.168.100.200:89/', N'523ht5h4vgvuh4utc3wptdmf', N'192.168.100.200', CAST(N'2017-09-28T09:02:55.157' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (94, N'Chrome', N'61', N'WinNT', N'/dich-vu', N'http://192.168.100.200:89/bai-viet/nghien-cuu-nao-ong-de-phat-trien-cac-robot-tu-bay', N'anse4ym5dn4vwuonitgqtrey', N'192.168.100.200', CAST(N'2017-09-28T09:02:58.767' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (95, N'Chrome', N'61', N'WinNT', N'/san-pham/phan-mem', N'http://192.168.100.200:89/dich-vu', N'dmxt1fcugdxsu10liy2svegk', N'192.168.100.200', CAST(N'2017-09-28T09:03:21.110' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (96, N'Chrome', N'61', N'WinNT', N'/san-pham/cong-nghe-thong-tin', N'http://192.168.100.200:89/san-pham/phan-mem', N'ay2cni5mpcc2tcts3bhunaky', N'192.168.100.200', CAST(N'2017-09-28T09:03:24.040' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (97, N'Chrome', N'61', N'WinNT', N'/tin-tuc/tin-tuc-va-su-kien', N'http://192.168.100.200:89/san-pham/cong-nghe-thong-tin', N'ztbciewqzdb4h5fthyqglhsh', N'192.168.100.200', CAST(N'2017-09-28T09:03:31.467' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (98, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'nfybeouo3gpjulzeh3etl1tb', N'192.168.100.200', CAST(N'2017-09-28T09:04:15.103' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (99, N'Chrome', N'61', N'WinNT', N'/tin-tuc/tin-tuc-va-su-kien', N'http://192.168.100.200:89/san-pham/cong-nghe-thong-tin', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:04:46.250' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (100, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/tin-tuc/tin-tuc-va-su-kien', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:08:55.453' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (101, N'Chrome', N'61', N'WinNT', N'/dich-vu', N'http://192.168.100.200:89/', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:20:50.427' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (102, N'Chrome', N'61', N'WinNT', N'/giai-phap/giai-phap-cho-doanh-nghiep', N'http://192.168.100.200:89/dich-vu', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:21:58.917' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (103, N'Chrome', N'61', N'WinNT', N'/san-pham/thiet-bi-giao-duc', N'http://192.168.100.200:89/tin-tuc/tin-tuc-va-su-kien', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:24:59.007' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (104, N'Chrome', N'61', N'WinNT', N'/san-pham/phan-mem', N'http://192.168.100.200:89/san-pham/thiet-bi-giao-duc', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:25:01.787' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (105, N'Chrome', N'61', N'WinNT', N'/san-pham/cong-nghe-thong-tin', N'http://192.168.100.200:89/san-pham/phan-mem', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:25:50.477' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (106, N'Chrome', N'61', N'WinNT', N'/gioi-thieu/doi-ngu-nhan-vien', N'http://192.168.100.200:89/', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:27:22.963' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (107, N'Chrome', N'61', N'WinNT', N'/bai-viet/galaxy-gear-2-dong-hanh-cung-galaxy-s5-ra-mat-thang-32014', N'http://192.168.100.200:89/tin-tuc/tin-tuc-va-su-kien', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:28:16.337' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (108, N'Chrome', N'61', N'WinNT', N'/bai-viet/htc-ra-mat-loat-4-smartphone-desire-moi', N'http://192.168.100.200:89/tin-tuc/tin-tuc-va-su-kien', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:28:28.690' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (109, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'http://192.168.100.200:89/cms/tin-tuc', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:28:37.760' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (110, N'Chrome', N'61', N'WinNT', N'/lien-he', N'http://192.168.100.200:89/dich-vu', N'hrnwdczex0yxsw4vbyqbpymi', N'192.168.100.200', CAST(N'2017-09-28T09:31:23.723' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (111, N'Chrome', N'61', N'WinNT', N'/', N'', N'zaper4d0b4mbfi4tcoowwn3d', N'192.168.100.200', CAST(N'2017-09-28T15:29:53.610' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (112, N'Chrome', N'61', N'WinNT', N'/', N'', N'5dnzur4g25qkkc22mcgn2o5o', N'192.168.100.200', CAST(N'2017-09-28T15:31:31.270' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
GO
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (113, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'vylnl331c4j02wpwgxxbqevj', N'192.168.100.200', CAST(N'2017-09-28T15:31:40.550' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (114, N'Chrome', N'61', N'WinNT', N'/', N'', N'mmn5vwhf0z4maspkgj50ndx2', N'192.168.100.200', CAST(N'2017-09-28T15:32:30.367' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (115, N'Chrome', N'61', N'WinNT', N'/tin-tuc/tin-tuc-va-su-kien', N'http://192.168.100.200:89/', N'mmn5vwhf0z4maspkgj50ndx2', N'192.168.100.200', CAST(N'2017-09-28T15:40:03.530' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (116, N'Chrome', N'61', N'WinNT', N'/', N'', N'mspmya4mdzqp4mhwpytbecn5', N'192.168.100.200', CAST(N'2017-09-29T09:58:42.207' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (117, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N'mspmya4mdzqp4mhwpytbecn5', N'192.168.100.200', CAST(N'2017-09-29T13:59:59.210' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (118, N'Chrome', N'61', N'WinNT', N'/', N'', N'1jmh1ismtwydkw5d0ofw4i50', N'192.168.100.200', CAST(N'2017-10-09T21:09:18.190' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (119, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N's2bxa3lpqklwh4lmvleih3vc', N'192.168.100.200', CAST(N'2017-10-09T21:19:23.077' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (120, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'qqsenwrvgpmis2y0it0fnow0', N'192.168.100.200', CAST(N'2017-10-09T21:29:23.613' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (121, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'2wqd2towpceax5rmrie3tm45', N'192.168.100.200', CAST(N'2017-10-09T21:39:24.127' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (122, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'4vu1evh3dksl54xoue525mgs', N'192.168.100.200', CAST(N'2017-10-09T21:49:24.627' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (123, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'pfh5nenxwld43noqzm3wkmu1', N'192.168.100.200', CAST(N'2017-10-09T21:59:25.113' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (124, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'yow2mpcrtsinsjnfxqhwufiu', N'192.168.100.200', CAST(N'2017-10-09T22:02:57.667' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (125, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'ikflqn04etrgy50eenqmvfsb', N'192.168.100.200', CAST(N'2017-10-09T22:03:02.143' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (126, N'Chrome', N'61', N'WinNT', N'/dich-vu', N'http://192.168.100.200:89/', N'gtybhgq0yq2tjkdqejs0ikg1', N'192.168.100.200', CAST(N'2017-10-09T22:04:59.313' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (127, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'41zk00zhrikmv1dirpx2avkr', N'192.168.100.200', CAST(N'2017-10-09T22:05:11.993' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (128, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'xr5pycmyoeoaj00m2sexiqqy', N'192.168.100.200', CAST(N'2017-10-09T22:10:23.323' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (129, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'h2hs40kwy4uzy2ub42af023q', N'192.168.100.200', CAST(N'2017-10-09T22:12:05.847' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (130, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'v5fabb3bwb0ywnphyngqapbu', N'192.168.100.200', CAST(N'2017-10-09T22:14:03.663' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (131, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'wdf3h3zujscpj4l2auqjt5ao', N'192.168.100.200', CAST(N'2017-10-09T22:15:33.947' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (132, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'5yvtnguvpksqyzpp4utpvk5c', N'192.168.100.200', CAST(N'2017-10-09T22:21:03.263' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (133, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'2dipfkq34fxo0kp2mudavcxm', N'192.168.100.200', CAST(N'2017-10-09T22:21:23.910' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (134, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'ikaxz2xnueojyssm3hgqu2te', N'192.168.100.200', CAST(N'2017-10-09T22:21:33.530' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (135, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'q403luiiskknc5yvdjq1vlyd', N'192.168.100.200', CAST(N'2017-10-09T22:24:43.600' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (136, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'2crmpllnluynynt0e4uvejf3', N'192.168.100.200', CAST(N'2017-10-09T22:25:32.727' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (137, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'ig5mtwts0s5umid2wkonvktz', N'192.168.100.200', CAST(N'2017-10-09T22:26:41.437' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (138, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'uglntrpepqkagewllmjamiht', N'192.168.100.200', CAST(N'2017-10-09T22:27:02.160' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (139, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'aa3mfnfx45gd14i5vvasbk5j', N'192.168.100.200', CAST(N'2017-10-09T22:27:13.520' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (140, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'aodlu3qwc5cwsrvn5lffjdsk', N'192.168.100.200', CAST(N'2017-10-09T22:28:15.610' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (141, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'vhlkhncsk0uvgc5o35frvchj', N'192.168.100.200', CAST(N'2017-10-09T22:29:20.950' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (142, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'2obzu2joj1wuvi4t1jtw5lvh', N'192.168.100.200', CAST(N'2017-10-09T22:30:20.963' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (143, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'3blxce5m0xolmgo5qqn5hzjk', N'192.168.100.200', CAST(N'2017-10-09T22:31:04.083' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (144, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'g41dibzy1e42fw3zarakp4sd', N'192.168.100.200', CAST(N'2017-10-09T22:33:27.437' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (145, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'2w5dul5qn3siluxrtoy2sfzm', N'192.168.100.200', CAST(N'2017-10-09T22:34:13.517' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (146, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'chhkgcc4gpamhrs4axdwcmvo', N'192.168.100.200', CAST(N'2017-10-09T22:34:40.397' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (147, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'i3qifvb45v4smgps0bcljawk', N'192.168.100.200', CAST(N'2017-10-09T22:36:24.880' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (148, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'p02adgeiownx2thjr0lgjee4', N'192.168.100.200', CAST(N'2017-10-09T22:36:45.073' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (149, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'0eafrmpzdw5wnhjogr23zwpd', N'192.168.100.200', CAST(N'2017-10-09T22:37:45.837' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (150, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'yn0yjo5fy2jeakkvmmznw3it', N'192.168.100.200', CAST(N'2017-10-09T22:38:51.763' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (151, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'gumbsna5dwp5ussskxkcwrzv', N'192.168.100.200', CAST(N'2017-10-09T22:39:06.983' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (152, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'tzonljvxo23tdgxsyxgvajli', N'192.168.100.200', CAST(N'2017-10-09T22:40:09.047' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (153, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'w2gdkjhtm3ehogdhonzjcwg5', N'192.168.100.200', CAST(N'2017-10-09T22:44:22.033' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (154, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'wysqt0arnmlnusc3nqyix5gi', N'192.168.100.200', CAST(N'2017-10-09T22:44:51.927' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (155, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'uedin4xhrblso51vf3oebkar', N'192.168.100.200', CAST(N'2017-10-09T22:45:29.320' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (156, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'qweb3jt3va3ulobszaso11zi', N'192.168.100.200', CAST(N'2017-10-09T22:47:38.217' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (157, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'yx5bsb4ald1cfw0pmql23hws', N'192.168.100.200', CAST(N'2017-10-09T22:51:26.853' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (158, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'wg03akz2jvmwppjbt5tdex40', N'192.168.100.200', CAST(N'2017-10-09T22:56:16.497' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (159, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'5ez3w55wq0e3jsp0sayy2o0z', N'192.168.100.200', CAST(N'2017-10-09T22:56:46.327' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (160, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'4monoqrigwtz1ki32kzk2bai', N'192.168.100.200', CAST(N'2017-10-09T22:57:29.870' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (161, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'h2wb5o1zxrxn0u2yh53q0ab4', N'192.168.100.200', CAST(N'2017-10-09T22:57:58.067' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (162, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'bd3nljhdqirn2uvyjwngasjr', N'192.168.100.200', CAST(N'2017-10-09T22:59:02.930' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (163, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'ticjtbiqp4ryaxkefah1srqd', N'192.168.100.200', CAST(N'2017-10-09T22:59:19.887' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (164, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'v0kg2ac3l34lgsha12wzy2vv', N'192.168.100.200', CAST(N'2017-10-09T23:02:16.227' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (165, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'as5j5v4nacuadovbctcfdmiv', N'192.168.100.200', CAST(N'2017-10-09T23:02:40.683' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (166, N'Chrome', N'61', N'WinNT', N'/dich-vu/dich-vu-tham-dinh-gia', N'http://192.168.100.200:89/', N'2q2lkrarhwhrw2xrxvir5uco', N'192.168.100.200', CAST(N'2017-10-09T23:03:58.327' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (167, N'Chrome', N'61', N'WinNT', N'/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'http://192.168.100.200:89/dich-vu/dich-vu-tham-dinh-gia', N'14b5dvsety5u5q1cj30nl22t', N'192.168.100.200', CAST(N'2017-10-09T23:04:01.400' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (168, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'1mk2rnwq5tydenoqnyy1vacw', N'192.168.100.200', CAST(N'2017-10-09T23:04:12.310' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (169, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'cjuqsuht2wzyi1szmoqsmbwx', N'192.168.100.200', CAST(N'2017-10-09T23:04:18.513' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (170, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'gaxbjb00olukrselbjwlzsq0', N'192.168.100.200', CAST(N'2017-10-09T23:04:38.003' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (171, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'kvgmqktulrqft2xmkjhvdpnj', N'192.168.100.200', CAST(N'2017-10-09T23:04:51.580' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (172, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'51phtonnhocxyvjsjkqifb2n', N'192.168.100.200', CAST(N'2017-10-09T23:05:19.207' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (173, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'k53lcahjgkzbciih13ijmuje', N'192.168.100.200', CAST(N'2017-10-09T23:05:35.067' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (174, N'Chrome', N'61', N'WinNT', N'/dich-vu/cung-cap-san-pham-cong-nghe', N'http://192.168.100.200:89/', N'qwldhxfv51nuehcck3ca0ola', N'192.168.100.200', CAST(N'2017-10-09T23:05:57.663' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (175, N'Chrome', N'61', N'WinNT', N'/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'http://192.168.100.200:89/dich-vu/cung-cap-san-pham-cong-nghe', N'0x2icgbhs1ybko2qxhldeiuw', N'192.168.100.200', CAST(N'2017-10-09T23:06:01.847' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (176, N'Chrome', N'61', N'WinNT', N'/chi-tiet-dich-vu/tu-van-xay-dung', N'http://192.168.100.200:89/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'sk005crthj01b4053hv24mu4', N'192.168.100.200', CAST(N'2017-10-09T23:06:05.150' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (177, N'Chrome', N'61', N'WinNT', N'/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'http://192.168.100.200:89/chi-tiet-dich-vu/tu-van-xay-dung', N'ff5eltcvasbrxmawdc4dfwxi', N'192.168.100.200', CAST(N'2017-10-09T23:06:07.437' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (178, N'Chrome', N'61', N'WinNT', N'/tim-san-pham', N'http://192.168.100.200:89/chi-tiet-dich-vu/dich-vu-tham-dinh-gia', N'iser4nanzoyzwoy2fvem5q1w', N'192.168.100.200', CAST(N'2017-10-09T23:06:11.320' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (179, N'Chrome', N'61', N'WinNT', N'/san-pham/cong-nghe-thong-tin', N'http://192.168.100.200:89/tim-san-pham?key=uhiyj', N'tnsslqpf41uzxvgfh1qq2kr4', N'192.168.100.200', CAST(N'2017-10-09T23:06:13.940' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (180, N'Chrome', N'61', N'WinNT', N'/san-pham/phan-mem', N'http://192.168.100.200:89/san-pham/cong-nghe-thong-tin', N'nf1wrqqgdj3qbfa3ir0o5w1y', N'192.168.100.200', CAST(N'2017-10-09T23:06:15.077' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (181, N'Chrome', N'61', N'WinNT', N'/chi-tiet/phan-mem-quan-ly-cong-van', N'http://192.168.100.200:89/san-pham/phan-mem', N'neoutveyipercnhmjv3abckr', N'192.168.100.200', CAST(N'2017-10-09T23:06:16.027' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (182, N'Chrome', N'61', N'WinNT', N'/chi-tiet/phan-mem-quan-ly-tai-san', N'http://192.168.100.200:89/chi-tiet/phan-mem-quan-ly-cong-van', N'rho4ucjnareq514fh540f3pb', N'192.168.100.200', CAST(N'2017-10-09T23:06:19.047' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (183, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet/phan-mem-quan-ly-tai-san', N'15yabuvcjxjxzhlf3zdtiy1g', N'192.168.100.200', CAST(N'2017-10-09T23:06:23.613' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (184, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'lme1bjfpwljf0nb1tapa1xvh', N'192.168.100.200', CAST(N'2017-10-09T23:06:39.637' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (185, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'b4mfiu1dnfisvhzi03q0q01e', N'192.168.100.200', CAST(N'2017-10-09T23:06:42.740' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (186, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'crc42cmohzuj4zfvwgqsnw2u', N'192.168.100.200', CAST(N'2017-10-09T23:06:52.793' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (187, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'ymtfzjhhjehj2s01xdizcsxp', N'192.168.100.200', CAST(N'2017-10-09T23:13:14.127' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (188, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'csikswdewtrrncjisedrrlgf', N'192.168.100.200', CAST(N'2017-10-09T23:14:08.277' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (189, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'qekj03vxs0eb1r0r3cgim4ta', N'192.168.100.200', CAST(N'2017-10-09T23:14:46.840' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (190, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'ivnrr4rtfcz31ntrauatlj2c', N'192.168.100.200', CAST(N'2017-10-09T23:15:12.840' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (191, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'pstccace0pqeucoibabp54yc', N'192.168.100.200', CAST(N'2017-10-09T23:15:31.140' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (192, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'chrmp2cbpmrcf5ghmk3able5', N'192.168.100.200', CAST(N'2017-10-09T23:18:44.040' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (193, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'ja5czsbvpwrnng4egfl2dlja', N'192.168.100.200', CAST(N'2017-10-09T23:20:24.597' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (194, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'rgy10dpd44tlzptfii0qdyrl', N'192.168.100.200', CAST(N'2017-10-09T23:21:20.833' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (195, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'bovn1yftk2zuda0pofx4jwss', N'192.168.100.200', CAST(N'2017-10-09T23:21:53.503' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (196, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'ys0cgilo3r1rnqisshixwogs', N'192.168.100.200', CAST(N'2017-10-09T23:27:15.933' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (197, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'rlay5tsuc5jdmkuo2axqhf5h', N'192.168.100.200', CAST(N'2017-10-09T23:35:47.803' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (198, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/dich-vu', N'z5dddqn2euz34scgmviaxaaz', N'192.168.100.200', CAST(N'2017-10-09T23:36:12.457' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (199, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'cunmkcnnbyus5mjzdqnnrzp4', N'192.168.100.200', CAST(N'2017-10-09T23:46:13.390' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (200, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'1xbjdh0glxtsbhehkix0zoyf', N'192.168.100.200', CAST(N'2017-10-09T23:56:14.640' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (201, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'kbl0zcaga5hrkihvyezrd3g4', N'192.168.100.200', CAST(N'2017-10-10T00:06:15.667' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (202, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'lbni0odp3axg3bofidtujvfj', N'192.168.100.200', CAST(N'2017-10-10T00:16:16.640' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (203, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N't1h10wg1nnzz35uxsg0mvg4d', N'192.168.100.200', CAST(N'2017-10-10T00:26:17.587' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (204, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'tge44uyoqhmc0xfp5cw10f1p', N'192.168.100.200', CAST(N'2017-10-10T00:36:18.467' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (205, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'c0twyeie2agdtw0pwxgwtyl1', N'192.168.100.200', CAST(N'2017-10-10T00:46:19.467' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (206, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'so21pmd3jbks3z3wlnne24uk', N'192.168.100.200', CAST(N'2017-10-10T00:56:20.343' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (207, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N's0mmjyrfmrsb4dfswhdjxndo', N'192.168.100.200', CAST(N'2017-10-10T01:06:21.263' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (208, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'mxodnyu3i3bu5nnkyufsbofk', N'192.168.100.200', CAST(N'2017-10-10T01:16:22.213' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (209, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'af133phzkge0mnnbodi2okhk', N'192.168.100.200', CAST(N'2017-10-10T01:26:23.130' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (210, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'bdonxvfth25mle3naisoq2t1', N'192.168.100.200', CAST(N'2017-10-10T01:36:24.020' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (211, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'ziqmg0hyzkzdvjkzeqdllit0', N'192.168.100.200', CAST(N'2017-10-10T01:46:24.923' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (212, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'v1dxew4neq2an5lpnss2xpw3', N'192.168.100.200', CAST(N'2017-10-10T01:56:25.837' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
GO
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (213, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'5v4zo31ey5ithdrjvh5la04c', N'192.168.100.200', CAST(N'2017-10-10T02:06:26.740' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (214, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'zslmsshaqsr000frdpkd1bti', N'192.168.100.200', CAST(N'2017-10-10T02:16:27.617' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (215, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'vlflu1pxayufv3ncd3yd0bnl', N'192.168.100.200', CAST(N'2017-10-10T02:26:28.550' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (216, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'ehg413qpcp5jwvw2vx2yarvd', N'192.168.100.200', CAST(N'2017-10-10T02:36:29.453' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (217, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'fx3xmgpjchbppikw34pdw1w4', N'192.168.100.200', CAST(N'2017-10-10T02:46:30.337' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (218, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'pwxtkqax4vh30hkabe5icjua', N'192.168.100.200', CAST(N'2017-10-10T02:56:31.237' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (219, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'tdjobmqahscgc4pr5or4nfdz', N'192.168.100.200', CAST(N'2017-10-10T03:06:32.100' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (220, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'imungtgorojsr4gqdzb0lex4', N'192.168.100.200', CAST(N'2017-10-10T03:16:33.120' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (221, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'wazbt0x3z5wjkixsug01fdq0', N'192.168.100.200', CAST(N'2017-10-10T03:26:34.030' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (222, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'cg1snsajrxoefmddkk4ktvrh', N'192.168.100.200', CAST(N'2017-10-10T03:36:34.907' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (223, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'oc2tvlytdj2b4fabt4szzum0', N'192.168.100.200', CAST(N'2017-10-10T03:46:35.920' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (224, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'bgh5mogd0inojzaagiw0wfzn', N'192.168.100.200', CAST(N'2017-10-10T03:56:36.907' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (225, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'yms235pz3fbwgmqmyp5waokd', N'192.168.100.200', CAST(N'2017-10-10T04:06:37.767' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (226, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'ozwxvq5lgsqvodl5jto03alp', N'192.168.100.200', CAST(N'2017-10-10T04:16:38.760' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (227, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'3x5ufzbfgk4c2wr0s1wc54n1', N'192.168.100.200', CAST(N'2017-10-10T04:26:39.793' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (228, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'dq2ztzll3jmok3jjgqnahqo0', N'192.168.100.200', CAST(N'2017-10-10T04:36:40.673' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (229, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'45b0k2zgx1iqjm33ky5x23jz', N'192.168.100.200', CAST(N'2017-10-10T04:46:41.560' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (230, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'3xla1bqbadcvwwmqnuutz4r0', N'192.168.100.200', CAST(N'2017-10-10T04:56:42.627' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (231, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'yi0qdnmwv3gjhsnhchx22oce', N'192.168.100.200', CAST(N'2017-10-10T05:06:43.560' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (232, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'uw3bo0m03oeteobyveo51rib', N'192.168.100.200', CAST(N'2017-10-10T05:16:44.487' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (233, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'3bd3lr1xbo20kojyaerk2nda', N'192.168.100.200', CAST(N'2017-10-10T05:26:45.357' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (234, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'qi1xgkxw3flmp2dwotdozegz', N'192.168.100.200', CAST(N'2017-10-10T05:36:46.210' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (235, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'4ped5qvstkukarti3wdbjey4', N'192.168.100.200', CAST(N'2017-10-10T05:46:47.090' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (236, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'pkiuvj4m3034snmy1v3dfclt', N'192.168.100.200', CAST(N'2017-10-10T05:56:47.980' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (237, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'sbs2oag40rgb5llpe22twfwk', N'192.168.100.200', CAST(N'2017-10-10T06:06:48.830' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (238, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'lycuyxg1ozdv4dpacy2apf11', N'192.168.100.200', CAST(N'2017-10-10T06:13:14.717' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (239, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N't1vwojgf4ewo12320jvn52gv', N'192.168.100.200', CAST(N'2017-10-10T06:14:06.767' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (240, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'quwqdlob2ra1kiqvpnavefss', N'192.168.100.200', CAST(N'2017-10-10T06:14:57.357' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (241, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'knnlldkxrt5aj02sytxnexxw', N'192.168.100.200', CAST(N'2017-10-10T06:15:15.440' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (242, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'vs4kamjp4mzm55w2pf5kazj3', N'192.168.100.200', CAST(N'2017-10-10T06:15:18.903' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (243, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'r33yka4m2ysexcf4wyy5ulik', N'192.168.100.200', CAST(N'2017-10-10T06:17:28.420' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (244, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'wkriesgeohbzpk1disrm204w', N'192.168.100.200', CAST(N'2017-10-10T06:20:19.813' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (245, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'dcaq3d3w5birxbrnebq0l2oi', N'192.168.100.200', CAST(N'2017-10-10T06:21:35.357' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (246, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'4chfzmwi1gybzzs0j25ik5jm', N'192.168.100.200', CAST(N'2017-10-10T06:26:24.807' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (247, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'gwlotelzr112ho5jrocz0yvz', N'192.168.100.200', CAST(N'2017-10-10T06:27:33.483' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (248, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'mspihaepauq0irteag53fmky', N'192.168.100.200', CAST(N'2017-10-10T06:27:56.353' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (249, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/', N'yudp1yef3nauhvnqzxk02hwn', N'192.168.100.200', CAST(N'2017-10-10T06:28:12.350' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (250, N'Chrome', N'61', N'WinNT', N'/chi-tiet/dell-optiplex-755-mt', N'http://192.168.100.200:89/', N'rdtac4z3qmo3fzu4lmvowxpy', N'192.168.100.200', CAST(N'2017-10-10T06:33:48.610' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (251, N'Chrome', N'61', N'WinNT', N'/chi-tiet/dell-optiplex-755-mt', N'http://192.168.100.200:89/', N'ba2lu11l0ulfdtqxin4byr42', N'192.168.100.200', CAST(N'2017-10-10T06:33:51.697' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (252, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet/dell-optiplex-755-mt', N'crpcnttl5hdzzy3ddpb5onfv', N'192.168.100.200', CAST(N'2017-10-10T06:33:54.067' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (253, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet/dell-optiplex-755-mt', N'yt5vvexyrrs11any2legrdih', N'192.168.100.200', CAST(N'2017-10-10T06:38:41.050' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (254, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet/dell-optiplex-755-mt', N'beyam0bhuhqi3g1fswfxuko2', N'192.168.100.200', CAST(N'2017-10-10T06:40:44.913' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (255, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet/dell-optiplex-755-mt', N'zvagdibuv3xowui4n1d4pia1', N'192.168.100.200', CAST(N'2017-10-10T06:41:40.077' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (256, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet/dell-optiplex-755-mt', N'5kuplemddr5kabxf2q5hxili', N'192.168.100.200', CAST(N'2017-10-10T06:43:20.827' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (257, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet/dell-optiplex-755-mt', N'vp3hudzdceo2szeat2202dvk', N'192.168.100.200', CAST(N'2017-10-10T06:44:26.287' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (258, N'Chrome', N'61', N'WinNT', N'/chi-tiet/desktop-cms-scorpion-s175', N'http://192.168.100.200:89/', N'te3f3bev3pic4msfcibokxlz', N'192.168.100.200', CAST(N'2017-10-10T06:44:37.700' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (259, N'Chrome', N'61', N'WinNT', N'/admin', N'', N'lakil3ssgvi3awp502nayw30', N'192.168.100.200', CAST(N'2017-10-10T06:45:10.167' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (260, N'Chrome', N'61', N'WinNT', N'/dang-nhap', N'', N't0mo01qd3onqbckzgcvh33w1', N'192.168.100.200', CAST(N'2017-10-10T06:45:14.153' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (261, N'Chrome', N'61', N'WinNT', N'/', N'http://192.168.100.200:89/chi-tiet/dell-optiplex-755-mt', N'm532xx2xyahavxuzo3el0ter', N'192.168.100.200', CAST(N'2017-10-10T06:45:37.627' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (262, N'Chrome', N'61', N'WinNT', N'/dich-vu', N'http://192.168.100.200:89/', N'm532xx2xyahavxuzo3el0ter', N'192.168.100.200', CAST(N'2017-10-10T07:14:15.300' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (263, N'Chrome', N'61', N'WinNT', N'/chi-tiet-dich-vu/cung-cap-san-pham-cong-nghe', N'http://192.168.100.200:89/dich-vu', N'm532xx2xyahavxuzo3el0ter', N'192.168.100.200', CAST(N'2017-10-10T07:14:18.220' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
INSERT [dbo].[Tracker] ([ID], [Browser], [Version], [OS], [PageUrl], [UrlReferrer], [SessionID], [IP], [InTime], [Country], [City], [IsMobileDevice], [MobileDeviceManufacturer], [LangId]) VALUES (264, N'Chrome', N'61', N'WinNT', N'/dich-vu/cung-cap-san-pham-cong-nghe', N'http://192.168.100.200:89/', N'm532xx2xyahavxuzo3el0ter', N'192.168.100.200', CAST(N'2017-10-10T07:46:18.160' AS DateTime), N'VN', N'...', 0, N'Unknown', NULL)
SET IDENTITY_INSERT [dbo].[Tracker] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [FullName], [Title], [Password], [Image], [IsDelete], [Status], [LangId]) VALUES (1, N'admin', N'admin', N'admin', N'c2f1366c51911b52369fe27df307ff84', N'/Uploads/bg-heading-red.png', 0, 1, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[CateNews] ADD  CONSTRAINT [DF_CateNews_Type]  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[CateProduct] ADD  CONSTRAINT [DF_CateProduct_IsShowHomePage]  DEFAULT ((0)) FOR [IsShowHomePage]
GO
ALTER TABLE [dbo].[Introduce] ADD  CONSTRAINT [DF_Introduce_IsShowHomePage]  DEFAULT ((0)) FOR [IsShowHomePage]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsShowHomePage]  DEFAULT ((0)) FOR [IsShowHomePage]
GO
/****** Object:  StoredProcedure [dbo].[sp_Contact_GetLastest]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Contact_GetLastest]
@Type NVARCHAR(50),
@PageIndex INT,
@RecordPerPage INT,
@TotalRecord INT OUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT *
	FROM dbo.Contact
	WHERE Type LIKE '%' + @Type + '%'
	ORDER BY  ID DESC
	OFFSET (@PageIndex - 1)*@RecordPerPage ROWS FETCH NEXT @RecordPerPage ROWS ONLY
      
	SELECT @TotalRecord = COUNT(ID)
	FROM dbo.Contact 
	WHERE Type LIKE '%' + @Type + '%'
END



GO
/****** Object:  StoredProcedure [dbo].[sp_CustomerSay_GetByOrderNo]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_CustomerSay_GetByOrderNo]
@LangId INT,
@PageIndex INT,
@RecordPerPage INT,
@TotalRecord INT OUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT *
	FROM dbo.CustomerSay
	WHERE LangId = @LangId
	ORDER BY OrderNo DESC
	OFFSET (@PageIndex - 1)*@RecordPerPage ROWS FETCH NEXT @RecordPerPage ROWS ONLY
      
	SELECT @TotalRecord = COUNT(Id)
	FROM dbo.CustomerSay
	WHERE LangId = @LangId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_News_SearchByTitle]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_News_SearchByTitle]
@LangId INT,
@CateId INT,
@UnsignTitle VARCHAR(150),
@PageIndex INT,
@RecordPerPage INT,
@TotalRecord INT OUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT *
	FROM dbo.News
	WHERE LangId = @LangId AND (UnsignTitle LIKE '%'+@UnsignTitle+'%' OR @UnsignTitle = '') AND (@CateId = -1 OR CateId = @CateId)
	ORDER BY  ID DESC
	OFFSET (@PageIndex - 1)*@RecordPerPage ROWS FETCH NEXT @RecordPerPage ROWS ONLY
      
	SELECT @TotalRecord = COUNT(ID)
	FROM dbo.News 
	WHERE LangId = @LangId AND (UnsignTitle LIKE '%'+@UnsignTitle+'%' OR @UnsignTitle = '') AND (@CateId = -1 OR CateId = @CateId)
END



GO
/****** Object:  StoredProcedure [dbo].[sp_Tracker_GetLastest]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE .[dbo].[sp_Tracker_GetLastest]
@IP NVARCHAR(50),
@PageIndex INT,
@RecordPerPage INT,
@TotalRecord INT OUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT *
	FROM dbo.Tracker
	WHERE IP LIKE '%' + @IP + '%'
	ORDER BY  ID DESC
	OFFSET (@PageIndex - 1)*@RecordPerPage ROWS FETCH NEXT @RecordPerPage ROWS ONLY
      
	SELECT @TotalRecord = COUNT(ID)
	FROM dbo.Tracker 
	WHERE IP LIKE '%' + @IP + '%'
END



GO
/****** Object:  StoredProcedure [dbo].[sp_User_GetLastest]    Script Date: 10/10/2017 5:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_User_GetLastest]
@PageIndex INT,
@RecordPerPage INT,
@TotalRecord INT OUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT *
	FROM dbo.[User]
	ORDER BY  ID DESC
	OFFSET (@PageIndex - 1)*@RecordPerPage ROWS FETCH NEXT @RecordPerPage ROWS ONLY
      
	SELECT @TotalRecord = COUNT(ID)
	FROM dbo.[User]
END



GO

USE [ATI.VinhHung]
GO
/****** Object:  Table [dbo].[Agencies]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[BussinessAreas]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[CateNews]    Script Date: 9/21/2017 8:13:59 AM ******/
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
 CONSTRAINT [PK_CateNews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CateProduct]    Script Date: 9/21/2017 8:13:59 AM ******/
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
 CONSTRAINT [PK_CateProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommonInfo]    Script Date: 9/21/2017 8:13:59 AM ******/
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
 CONSTRAINT [PK_CommonInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9/21/2017 8:13:59 AM ******/
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
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContentStatic]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[Contractor]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[CustomerSay]    Script Date: 9/21/2017 8:13:59 AM ******/
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
 CONSTRAINT [PK_CustomerSay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Districts]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[FAQs]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[Introduce]    Script Date: 9/21/2017 8:13:59 AM ******/
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
 CONSTRAINT [PK_Introduce] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[Members]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 9/21/2017 8:13:59 AM ******/
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
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[Partner]    Script Date: 9/21/2017 8:13:59 AM ******/
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
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/21/2017 8:13:59 AM ******/
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
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[Tags]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[Tracker]    Script Date: 9/21/2017 8:13:59 AM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 9/21/2017 8:13:59 AM ******/
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

INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId]) VALUES (1, N'Tin tức và sự kiện', N'Tin tức và sự kiện', 1, N'tin-tuc-va-su-kien', 0)
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId]) VALUES (2, N'Tin công nghệ', N'Tin công nghệ', 2, N'tin-cong-nghe', 0)
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId]) VALUES (3, N'Tin khoa học kỹ thuật', N'Tin khoa học kỹ thuật', 3, N'tin-khoa-hoc-ky-thuat', 0)
INSERT [dbo].[CateNews] ([ID], [Name], [EnglishName], [OrderNo], [SeoLink], [LangId]) VALUES (4, N'Tin tuyển dụng', N'Tin tuyển dụng', 4, N'tin-tuyen-dung', 0)
SET IDENTITY_INSERT [dbo].[CateNews] OFF
SET IDENTITY_INSERT [dbo].[CateProduct] ON 

INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId]) VALUES (1, N'Phần mềm', N'loai-1', N'Phần mềm', -1, N'-- Nhóm cha --', 1, N'<p>Phần mềm</p>
', 0, 0, 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId]) VALUES (2, N'Công nghệ thông tin', N'cong-nghe-thong-tin', N'Công nghệ thông tin', -1, N'', 2, N'<p>Công nghệ thông tin</p>
', 0, 0, 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId]) VALUES (3, N'Thiết bị giáo dục', N'thiet-bi-giao-duc', N'Thiết bị giáo dục', -1, N'-- Nhóm cha --', 3, N'<p>Thiết bị giáo dục</p>
', 0, 0, 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId]) VALUES (4, N'Thiết bị khoa học công nghệ', N'thiet-bi-khoa-hoc-cong-nghe', N'Thiết bị khoa học công nghệ', -1, N'-- Nhóm cha --', 4, N'<p>Thiết bị khoa học công nghệ</p>
', 0, 0, 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId]) VALUES (5, N'Thiết bị y tế', N'thiet-bi-y-te', N'Thiết bị y tế', -1, N'-- Nhóm cha --', 5, N'<p>Thiết bị y tế</p>
', 0, 0, 0)
INSERT [dbo].[CateProduct] ([ID], [Name], [SeoLink], [EnglishName], [ParrentCateId], [ParrentCateName], [OrderNo], [Description], [IsDelete], [ChildCount], [LangId]) VALUES (6, N'Thiết bị xây dựng', N'thiet-bi-xay-dung', N'Thiết bị xây dựng', -1, N'-- Nhóm cha --', 6, N'<p>Thiết bị xây dựng</p>
', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[CateProduct] OFF
SET IDENTITY_INSERT [dbo].[CommonInfo] ON 

INSERT [dbo].[CommonInfo] ([ID], [HeadOffice], [HeadOffice_En], [Office], [Office_En], [Mobile], [Phone], [Fax], [ShortName], [Name], [Email], [EnglishName], [Long], [Lang], [Facebook], [Yahoo], [Skype], [Logo], [Summary], [Summary_En], [LangId]) VALUES (1, N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'Số 71, tổ 50, TT tổng cục Chính Trị, Phố Trung Kính, Phường Yên Hòa, Cầu Giấy, Hà Nội', N'', N'84.4. 3782 1388', N'', N'Vinh Hung Group', N'Vinh Hung Group', N'info@vinhhunggroup.com.vn', N'Vinh Hung Group', NULL, NULL, N'', N'', N'', N'Logo', N'Nhân viên Vĩnh Hưng Group dù ở đâu, làm việc gì cũng hướng về Công ty với tình cảm cao đẹp. Nói đến Vĩnh Hưng Group trước tiên phải nói về tính văn hóa, con người và những giá trị tinh thần bao năm xây đắp. Văn hóa đó, những con người đó đóng vai trò quyết định trong sự nghiệp của Vĩnh Hưng Group hôm nay và cả mai sau.

Tinh thần, giá trị nhân học là nền móng cho văn hóa Vĩnh Hưng Group phát triển. Biểu hiện cao nhất của con người là sự lao động quên mình, sáng tạo tột bực tạo nên thành công cho Vĩnh Hưng Group trên các mặt trận.', NULL, 0)
SET IDENTITY_INSERT [dbo].[CommonInfo] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Name], [Title], [Type], [Company], [Address], [Mobile], [Email], [Content], [SendTime], [Status]) VALUES (1, N'Nguyễn Văn A', N'', N'Mua sản phẩm', N'', N'', N'0987654321', N'nguyenvana@gmail.com', N'fasdfasdfasd', CAST(N'2017-09-19T00:36:18.400' AS DateTime), 1)
INSERT [dbo].[Contact] ([ID], [Name], [Title], [Type], [Company], [Address], [Mobile], [Email], [Content], [SendTime], [Status]) VALUES (2, N'Nguyen Van D', N'', N'Mua sản phẩm', N'Khoong biet', N'', N'0987654321', N'nguyenvand@gmail.com', N'asdfasdfasd', CAST(N'2017-09-19T00:53:11.437' AS DateTime), 0)
INSERT [dbo].[Contact] ([ID], [Name], [Title], [Type], [Company], [Address], [Mobile], [Email], [Content], [SendTime], [Status]) VALUES (3, N'Nguyen Van C', N'', N'Mua sản phẩm', N'Hoang Ha', N'', N'0987456321', N'admin@yourstore.com', N'czxczx', CAST(N'2017-09-19T00:54:36.683' AS DateTime), 0)
INSERT [dbo].[Contact] ([ID], [Name], [Title], [Type], [Company], [Address], [Mobile], [Email], [Content], [SendTime], [Status]) VALUES (4, N'Anti Mage', N'', N'Mua sản phẩm', N'Hoang Ha', N'', N'0987456321', N'abc@gmail.com', N'sdfasdfa', CAST(N'2017-09-19T00:55:43.117' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[CustomerSay] ON 

INSERT [dbo].[CustomerSay] ([ID], [FullName], [Title], [Title_En], [Company], [Company_En], [Content], [Content_En], [OrderNo], [Image], [LangId]) VALUES (2, N'IMB', N'', N'', N'', N'', N'', N'', 1, N'', 0)
SET IDENTITY_INSERT [dbo].[CustomerSay] OFF
SET IDENTITY_INSERT [dbo].[Introduce] ON 

INSERT [dbo].[Introduce] ([ID], [Title], [SeoLink], [EnglishTitle], [SeoLink_En], [Summary], [Summary_En], [Content], [LastUpdateTime], [LastUpdateUser], [ViewNo], [Content_En], [LangId]) VALUES (1, N'Về công ty', N've-cong-ty', N'Về công ty', N've-cong-ty', N'Summary', N'Summary_En', N'<h3 style="text-align:justify">Vĩnh Hưng Group</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trước tiên, tôi xin gửi lời chào, lời chúc sức khỏe, lời cảm ơn sâu sắc tới Quý khách hàng đã quan tâm, tin tưởng, lựa chọn và sử dụng các sản phẩm, dịch vụ của Vĩnh Hưng Group.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hình thành và phát triển từ năm 1996,&nbsp;<strong>Vĩnh Hưng Group</strong>&nbsp;đã liên tục khẳng định vị thể và uy tín trên thương trường và trở thành nhà cung cấp sản phẩm, dịch vụ lớn tại Việt Nam.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với phương châm&nbsp;<strong><em>“Nhanh chóng - Chất lượng - Hiệu quả</em></strong>”,&nbsp;<strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;luôn phấn đấu trở thành đối tác tin cậy và hiệu quả trên mọi lĩnh vực: Công nghệ, Xây dựng, Tư vấn và Thẩm định.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong xu thế hội nhập của nền kinh tế&nbsp;<strong>Vĩnh Hưng Group</strong>&nbsp;luôn mong muốn được hợp tác, liên doanh, liên kết với các đối tác trong và ngoài nước để được cống hiến nhiều hơn nữa trong quá trình Công nghiệp hóa, hiện đại hóa đất nước. Vĩnh Hưng đã và đang xây dựng quan hệ đối tác chiến lược với các hãng sản xuất nổi tiếng trên thế giới như:<em>Microsoft, IBM, Cisco, Oracle, HP, Symantec...Hochiki, Tyco, Topica, Kerisystems...Medison, OsteoSys, Fukuda, Aloka, Pentax, Gigante, Siui...</em>&nbsp;và tạo dựng quan hệ với các tập đoàn tài chính hàng đầu Việt Nam như: T<em>ập đoàn Bảo Việt, Ngân hàng Agribank, Ngân hàng TMCP Đông Nam Á, Ngân hàng TMCP Sài Gòn Công thương, Ngân hàng Ngoại thương Việt Nam, Ngân hàng TMCP Quân Đội và Ngân hàng TMCP Liên Việt</em>.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;luôn kiên trì với định hướng đa ngành, đa lĩnh vực, và đã xây dựng, phát triển môi trường làm việc chuyên nghiệp cho gần 600 cán bộ nhân viên và đạt được nhiều thành tựu đáng kể trong hoạt động sản xuất kinh doanh. Trong nhiều năm liền,&nbsp;<strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;luôn giữ tốc độ tăng trưởng trung bình trên 50% và dự kiến tiếp tục tăng trưởng mạnh mẽ trong thời gian tới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;đã và đang khẳng định vị thế trên thị trường nội địa và hướng tới các khu vực trên thế giới. Trong thời gian tới&nbsp;<strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;tiếp tục đầu tư và phát triển mạnh mẽ các lĩnh vực chủ đạo như:&nbsp;<strong><em>Công nghệ, Xây dựng, Tư vấn và Thẩm định</em></strong>&nbsp;để trở thành tập đoàn hàng đầu tại Việt Nam và có năng lực cạnh tranh trên thị trường khu vực và quốc tế.</span></p>
', CAST(N'2017-09-18T00:28:22.273' AS DateTime), N'LastUpdateUser', 1, N'<h3 style="text-align:justify">Vĩnh Hưng Group</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trước tiên, tôi xin gửi lời chào, lời chúc sức khỏe, lời cảm ơn sâu sắc tới Quý khách hàng đã quan tâm, tin tưởng, lựa chọn và sử dụng các sản phẩm, dịch vụ của Vĩnh Hưng Group.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hình thành và phát triển từ năm 1996,&nbsp;<strong>Vĩnh Hưng Group</strong>&nbsp;đã liên tục khẳng định vị thể và uy tín trên thương trường và trở thành nhà cung cấp sản phẩm, dịch vụ lớn tại Việt Nam.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với phương châm&nbsp;<strong><em>“Nhanh chóng - Chất lượng - Hiệu quả</em></strong>”,&nbsp;<strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;luôn phấn đấu trở thành đối tác tin cậy và hiệu quả trên mọi lĩnh vực: Công nghệ, Xây dựng, Tư vấn và Thẩm định.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong xu thế hội nhập của nền kinh tế&nbsp;<strong>Vĩnh Hưng Group</strong>&nbsp;luôn mong muốn được hợp tác, liên doanh, liên kết với các đối tác trong và ngoài nước để được cống hiến nhiều hơn nữa trong quá trình Công nghiệp hóa, hiện đại hóa đất nước. Vĩnh Hưng đã và đang xây dựng quan hệ đối tác chiến lược với các hãng sản xuất nổi tiếng trên thế giới như:<em>Microsoft, IBM, Cisco, Oracle, HP, Symantec...Hochiki, Tyco, Topica, Kerisystems...Medison, OsteoSys, Fukuda, Aloka, Pentax, Gigante, Siui...</em>&nbsp;và tạo dựng quan hệ với các tập đoàn tài chính hàng đầu Việt Nam như: T<em>ập đoàn Bảo Việt, Ngân hàng Agribank, Ngân hàng TMCP Đông Nam Á, Ngân hàng TMCP Sài Gòn Công thương, Ngân hàng Ngoại thương Việt Nam, Ngân hàng TMCP Quân Đội và Ngân hàng TMCP Liên Việt</em>.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;luôn kiên trì với định hướng đa ngành, đa lĩnh vực, và đã xây dựng, phát triển môi trường làm việc chuyên nghiệp cho gần 600 cán bộ nhân viên và đạt được nhiều thành tựu đáng kể trong hoạt động sản xuất kinh doanh. Trong nhiều năm liền,&nbsp;<strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;luôn giữ tốc độ tăng trưởng trung bình trên 50% và dự kiến tiếp tục tăng trưởng mạnh mẽ trong thời gian tới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;đã và đang khẳng định vị thế trên thị trường nội địa và hướng tới các khu vực trên thế giới. Trong thời gian tới&nbsp;<strong>Vĩnh Hưng &nbsp;Group</strong>&nbsp;tiếp tục đầu tư và phát triển mạnh mẽ các lĩnh vực chủ đạo như:&nbsp;<strong><em>Công nghệ, Xây dựng, Tư vấn và Thẩm định</em></strong>&nbsp;để trở thành tập đoàn hàng đầu tại Việt Nam và có năng lực cạnh tranh trên thị trường khu vực và quốc tế.</span></p>
', 0)
SET IDENTITY_INSERT [dbo].[Introduce] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId]) VALUES (3, 1, N'7 chiếc smartphone hấp dẫn nhưng ít ai quan tâm tới', N'7-chiec-smartphone-hap-dan-nhung-it-ai-quan-tam-toi', N'7 chiếc smartphone hấp dẫn nhưng ít ai quan tâm tới', N'7-chiec-smartphone-hap-dan-nhung-it-ai-quan-tam-toi', N'/Uploads/tin1.jpg', N'Hàng năm, có rất nhiều ý tưởng thú vị và tiềm năng ở sân chơi smartphone nhưng không phải tất cả chúng đều thành công. Một số mẫu máy được tung ra thị trường nhưng mờ nhạt, một số thậm chí còn không được hiện thực hóa.', N'Hàng năm, có rất nhiều ý tưởng thú vị và tiềm năng ở sân chơi smartphone nhưng không phải tất cả chúng đều thành công. Một số mẫu máy được tung ra thị trường nhưng mờ nhạt, một số thậm chí còn không được hiện thực hóa.', N'<h3 style="text-align:justify">7 chiếc smartphone hấp dẫn nhưng ít ai quan tâm tới</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hàng năm, có rất nhiều ý tưởng thú vị và tiềm năng ở sân chơi smartphone nhưng không phải tất cả chúng đều thành công. Một số mẫu máy được tung ra thị trường nhưng mờ nhạt, một số thậm chí còn không được hiện thực hóa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nếu bạn đang cảm thấy có phần chán nản vì thị trường smartphone dần bão hòa và thiếu điểm nhấn sáng tạo thì 7 mẫu máy dưới đây, mặc dù không đạt được nhiều thành công, nhưng sẽ là những sắc màu mới mẻ có thể làm bạn thỏa mãn. Những mẫu điện thoại này đều được trang thông tin&nbsp;<em>Business Insider</em>&nbsp;chọn lựa.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">1. Nokia N9</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">N9 đến từ Nokia được đánh giá là một chiếc điện thoại có thiết kế đẹp cùng với đó là một nền tảng hệ điều hành không giống với bất cứ một thiết bị nào có mặt trên thị trường ở thời điểm ra mắt. Rất tiếc, đối với dòng máy này, Nokia không thể thương thuyết đàm phán thành công với các nhà mạng trên đất Mỹ để phân phối chính thức, do đó, nó không đạt được độ phổ biến trên thị trường quan trọng này.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">2. Ubuntu Edge</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mùa hè năm nay, thiết bị có tên Ubuntu Edge đã huy động vốn được tới 12 triệu USD trên trang khởi nghiệp cộng đồng Indiegogo, dẫu vậy con số này vẫn là không đủ bởi dự án cần đến 30 triệu USD để có thể hiện thực hóa. Điều này thật đáng tiếc bởi chúng ta đã không có cơ hội được chiêm ngưỡng một thiết bị cao cấp vận hành trên nền tảng Ubuntu. Theo thiết kế dự kiến, Ubuntu Edge sẽ sở hữu màn hình 4,5 inch, độ phân giải HD 720p, vi xử lí lõi tứ, RAM 4 GB và bộ nhớ trong cực lớn 128 GB.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">3. Project S</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-3.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-3.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Project S cũng là một dự án smartphone cao cấp khác không thể gọi vốn thành công trên Indiegogo. Trong khi số tiền vốn để khởi tạo dự án Project S ít hơn Ubuntu Edge rất nhiều thì dự án vẫn không thể trở thành hiện thực bởi thiết bị không tạo được nhiều sự khác biệt đủ sức gây chú ý như dự án smartphone chạy Ubuntu kể trên. Theo thiết kế ban đầu, Project S có màn hình 5,8 inch, vi xử lí 8 nhân, RAM 3 GB, camera sau và trước có thông số lần lượt là 16 Mpx và 2 Mpx cùng với đó là viên pin 3000 mAh.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">4. Điện thoại tiết kiệm năng lượng từ E Ink</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-4.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-4.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">E Ink, nhà sản xuất phụ kiện màn hình tiết kiệm năng lượng cho các thiết bị Kindle, cũng đã từng hé lộ một mẫu điện thoại sử dụng công nghệ cho phép điện thoại có thể vận hành trong nhiều tuần liên tục. Đáng tiếc, dự án này đã dừng lại ở giai đoạn thử nghiệm.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">5. YotaPhone</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-5.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-5.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">YotaPhone cũng là một thiết bị smartphone tận dụng công nghệ màn hình E Ink, điểm độc đáo nằm ở chỗ nó còn có cả một màn hình LCD quen thuộc nữa. Người dùng hoàn toàn có thể dễ dàng chuyển đổi giao diện người dùng giữa hai màn hình này, ví dụ khi muốn tiết kiệm pin, bạn sẽ chuyển sang sử dụng màn hình E Ink. Dẫu mang nhiều tiềm năng thế nhưng hiện nay nhà sản xuất mới chỉ phát hành thiết bị độc đáo này tại thị trường Nga.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">6. Smartphone nền tảng Tizen</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-6.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-6.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với nỗ lực đa dạng hóa sản phẩm đồng thời dần thoát ra khỏi sự phụ thuộc vào nền tảng Android của Google, đến thời điểm này, Samsung đã giới thiệu một vài mẫu máy sử dụng nền tảng Tizen, hệ điều hành do chính ông lớn công nghệ Hoàn Quốc đầu tư phát triển dựa trên nền tảng Linux và HTML 5.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Được biết, một số dòng sản phẩm dự kiến chạy Tizen sẽ có cấu hình tương đương dòng máy Galaxy cao cấp hiện tại, tuy nhiên, chúng ta có quyền hoài nghi về sự thành công của chúng khi lên kệ vào năm tới vì một lí do đơn giản: dĩ nhiên sẽ có những sự bổ sung sau này, nhưng ở giai đoạn bắt đầu sẽ không có quá nhiều ứng dụng khả dụng trên Tizen.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">7. Lenovo K900</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-7.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-7.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Lenovo K900 là chiếc điện thoại có thiết kế "siêu mẫu". Máy sở hữu màn hình 5,5 inch 1080p, vi xử lí lõi đôi của Intel cùng với RAM 2 GB . Hiện nay, Lenovo K900 chưa được nhà sản xuất phát hành ngoài lãnh thổ Trung Quốc. Dự kiến sản phẩm sẽ xuất hiện rộng rãi trên thị trường vào dịp cuối năm nay, thế nhưng được ra mắt từ lâu nên K900 khó lòng cạnh tranh được với những smartphone Android khác.</span></p>
', N'<h3 style="text-align:justify">7 chiếc smartphone hấp dẫn nhưng ít ai quan tâm tới</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hàng năm, có rất nhiều ý tưởng thú vị và tiềm năng ở sân chơi smartphone nhưng không phải tất cả chúng đều thành công. Một số mẫu máy được tung ra thị trường nhưng mờ nhạt, một số thậm chí còn không được hiện thực hóa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nếu bạn đang cảm thấy có phần chán nản vì thị trường smartphone dần bão hòa và thiếu điểm nhấn sáng tạo thì 7 mẫu máy dưới đây, mặc dù không đạt được nhiều thành công, nhưng sẽ là những sắc màu mới mẻ có thể làm bạn thỏa mãn. Những mẫu điện thoại này đều được trang thông tin&nbsp;<em>Business Insider</em>&nbsp;chọn lựa.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">1. Nokia N9</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">N9 đến từ Nokia được đánh giá là một chiếc điện thoại có thiết kế đẹp cùng với đó là một nền tảng hệ điều hành không giống với bất cứ một thiết bị nào có mặt trên thị trường ở thời điểm ra mắt. Rất tiếc, đối với dòng máy này, Nokia không thể thương thuyết đàm phán thành công với các nhà mạng trên đất Mỹ để phân phối chính thức, do đó, nó không đạt được độ phổ biến trên thị trường quan trọng này.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">2. Ubuntu Edge</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Mùa hè năm nay, thiết bị có tên Ubuntu Edge đã huy động vốn được tới 12 triệu USD trên trang khởi nghiệp cộng đồng Indiegogo, dẫu vậy con số này vẫn là không đủ bởi dự án cần đến 30 triệu USD để có thể hiện thực hóa. Điều này thật đáng tiếc bởi chúng ta đã không có cơ hội được chiêm ngưỡng một thiết bị cao cấp vận hành trên nền tảng Ubuntu. Theo thiết kế dự kiến, Ubuntu Edge sẽ sở hữu màn hình 4,5 inch, độ phân giải HD 720p, vi xử lí lõi tứ, RAM 4 GB và bộ nhớ trong cực lớn 128 GB.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">3. Project S</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-3.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-3.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Project S cũng là một dự án smartphone cao cấp khác không thể gọi vốn thành công trên Indiegogo. Trong khi số tiền vốn để khởi tạo dự án Project S ít hơn Ubuntu Edge rất nhiều thì dự án vẫn không thể trở thành hiện thực bởi thiết bị không tạo được nhiều sự khác biệt đủ sức gây chú ý như dự án smartphone chạy Ubuntu kể trên. Theo thiết kế ban đầu, Project S có màn hình 5,8 inch, vi xử lí 8 nhân, RAM 3 GB, camera sau và trước có thông số lần lượt là 16 Mpx và 2 Mpx cùng với đó là viên pin 3000 mAh.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">4. Điện thoại tiết kiệm năng lượng từ E Ink</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-4.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-4.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">E Ink, nhà sản xuất phụ kiện màn hình tiết kiệm năng lượng cho các thiết bị Kindle, cũng đã từng hé lộ một mẫu điện thoại sử dụng công nghệ cho phép điện thoại có thể vận hành trong nhiều tuần liên tục. Đáng tiếc, dự án này đã dừng lại ở giai đoạn thử nghiệm.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">5. YotaPhone</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-5.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-5.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">YotaPhone cũng là một thiết bị smartphone tận dụng công nghệ màn hình E Ink, điểm độc đáo nằm ở chỗ nó còn có cả một màn hình LCD quen thuộc nữa. Người dùng hoàn toàn có thể dễ dàng chuyển đổi giao diện người dùng giữa hai màn hình này, ví dụ khi muốn tiết kiệm pin, bạn sẽ chuyển sang sử dụng màn hình E Ink. Dẫu mang nhiều tiềm năng thế nhưng hiện nay nhà sản xuất mới chỉ phát hành thiết bị độc đáo này tại thị trường Nga.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">6. Smartphone nền tảng Tizen</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-6.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-6.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với nỗ lực đa dạng hóa sản phẩm đồng thời dần thoát ra khỏi sự phụ thuộc vào nền tảng Android của Google, đến thời điểm này, Samsung đã giới thiệu một vài mẫu máy sử dụng nền tảng Tizen, hệ điều hành do chính ông lớn công nghệ Hoàn Quốc đầu tư phát triển dựa trên nền tảng Linux và HTML 5.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Được biết, một số dòng sản phẩm dự kiến chạy Tizen sẽ có cấu hình tương đương dòng máy Galaxy cao cấp hiện tại, tuy nhiên, chúng ta có quyền hoài nghi về sự thành công của chúng khi lên kệ vào năm tới vì một lí do đơn giản: dĩ nhiên sẽ có những sự bổ sung sau này, nhưng ở giai đoạn bắt đầu sẽ không có quá nhiều ứng dụng khả dụng trên Tizen.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">7. Lenovo K900</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385585094-7.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385585094-7.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Lenovo K900 là chiếc điện thoại có thiết kế "siêu mẫu". Máy sở hữu màn hình 5,5 inch 1080p, vi xử lí lõi đôi của Intel cùng với RAM 2 GB . Hiện nay, Lenovo K900 chưa được nhà sản xuất phát hành ngoài lãnh thổ Trung Quốc. Dự kiến sản phẩm sẽ xuất hiện rộng rãi trên thị trường vào dịp cuối năm nay, thế nhưng được ra mắt từ lâu nên K900 khó lòng cạnh tranh được với những smartphone Android khác.</span></p>
', CAST(N'2017-09-19T00:00:00.000' AS DateTime), N'', 0, 0, 1, N'7 chiec smartphone hap dan nhung it ai quan tam toi', 0)
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId]) VALUES (4, 1, N'Xu hướng Laptop của năm 2014', N'xu-huong-laptop-cua-nam-2014', N'Xu hướng Laptop của năm 2014', N'xu-huong-laptop-cua-nam-2014', N'/Uploads/tin1.jpg', N'Xu hướng Laptop của năm 2014', N'Xu hướng Laptop của năm 2014', N'<h3 style="text-align:justify">Xu hướng Laptop của năm 2014</h3>

<p style="text-align:justify"><span style="font-size:small">Tại&nbsp;<a href="http://www.24h.com.vn/ces-2013-c407e2482.html" style="color: rgb(39, 39, 39); text-decoration-line: none;">CES</a>&nbsp;2014, Lenovo đã tung ra hàng loạt các sản phẩm thuộc danh mục thiết bị đa chế độ sử dụng, như<strong>&nbsp;MIIX 2</strong>&nbsp;- laptop ba chế độ có thể tháo rời;&nbsp;<strong>YOGA 2</strong>&nbsp;- chiếc laptop chuyển đổi thông minh hơn với bốn chế độ sử dụng độc đáo; và cuối cùng là Flex<strong>&nbsp;14D</strong>&nbsp;và&nbsp;<strong>15D</strong>&nbsp;- bộ đôi laptop chuyển đổi chế độ kép.</span></p>

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
', N'<h3 style="text-align:justify">Xu hướng Laptop của năm 2014</h3>

<p style="text-align:justify"><span style="font-size:small">Tại&nbsp;<a href="http://www.24h.com.vn/ces-2013-c407e2482.html" style="color: rgb(39, 39, 39); text-decoration-line: none;">CES</a>&nbsp;2014, Lenovo đã tung ra hàng loạt các sản phẩm thuộc danh mục thiết bị đa chế độ sử dụng, như<strong>&nbsp;MIIX 2</strong>&nbsp;- laptop ba chế độ có thể tháo rời;&nbsp;<strong>YOGA 2</strong>&nbsp;- chiếc laptop chuyển đổi thông minh hơn với bốn chế độ sử dụng độc đáo; và cuối cùng là Flex<strong>&nbsp;14D</strong>&nbsp;và&nbsp;<strong>15D</strong>&nbsp;- bộ đôi laptop chuyển đổi chế độ kép.</span></p>

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
', CAST(N'2017-09-20T00:00:00.000' AS DateTime), N'admin', 0, 0, 1, N'Xu huong Laptop cua nam 2014', 0)
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId]) VALUES (5, 1, N'Lịch sử 12 năm vẻ vang của máy chơi game Xbox', N'lich-su-12-nam-ve-vang-cua-may-choi-game-xbox', N'Lịch sử 12 năm vẻ vang của máy chơi game Xbox', N'lich-su-12-nam-ve-vang-cua-may-choi-game-xbox', N'/Uploads/tin1.jpg', N'Đã tròn 12 năm kể từ khi chiếc Xbox đầu tiên được bán ra. Sau đây là những điểm nhấn của máy chơi game console được Microsoft tung ra vào 2001 này. Chiếc Xbox đầu tiên lên kệ vào ngày 15/11/2001 với giá bán 299 USD, cạnh tranh trực tiếp với Play Station 2 của Sony và GameCube của Nintendo.', N'Đã tròn 12 năm kể từ khi chiếc Xbox đầu tiên được bán ra. Sau đây là những điểm nhấn của máy chơi game console được Microsoft tung ra vào 2001 này. Chiếc Xbox đầu tiên lên kệ vào ngày 15/11/2001 với giá bán 299 USD, cạnh tranh trực tiếp với Play Station 2 của Sony và GameCube của Nintendo.', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đã tròn 12 năm kể từ khi chiếc Xbox đầu tiên được bán ra. Sau đây là những điểm nhấn của máy chơi game console được Microsoft tung ra vào 2001 này.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chiếc Xbox đầu tiên</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chiếc Xbox đầu tiên lên kệ vào ngày 15/11/2001 với giá bán 299 USD, cạnh tranh trực tiếp với Play Station 2 của Sony và GameCube của Nintendo. Microsoft cũng đưa tựa game đình đám Halo, cùng hàng loạt game lớn khác, lên console này. Điểm mạnh của chiếc Xbox đầu tiên là cấu hình tốt, hỗ trợ màn hình độ phân giải cao, cổng Ethernet, bộ nhớ lớn. Điểm yếu của máy là kích thước cồng kềnh, yêu cầu phần cứng ngoài để mở khóa tính năng xem DVD.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Pro</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">4 năm sau đó, ngày 22/11/2005, Microsoft giới thiệu Xbox thế hệ thứ 2, hay còn gọi là Xbox 360. Máy có phần mặt có thể tháo rời, ổ cứng 20 GB, không hỗ trợ WiFi (người dùng phải mua bộ hỗ trợ riêng với giá 99 USD). Mặc dù máy không có cổng xuất HDMI (chỉ được bổ sung ở các phiên bản sau đó), nhưng đây được xem là console đầu tiên được thiết kế để hỗ trợ đồ họa chuẩn HD. 360 lên kệ sớm hơn các đối thủ Play Station 3 và Nintendo Wii 1 năm (các console này ra mắt tháng 11/2006), và phần cứng bị tố gặp lỗi nặng, trong đó đáng hổ thẹn nhất là lỗi "đèn đỏ" (một ánh sáng màu đỏ liên tục nhấp nháy trên máy).</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 phiên bản ổ cứng 20 GB được bán với giá 399 USD. Ngoài ra Microsoft cũng bán một phiên bản khác với giá 299 USD nhưng máy không đi kèm ổ cứng.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Elite</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-3.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-3.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Elite có thể xem là phiên bản cải tiến của Xbox 360 đời đầu. Máy có thiết kế toàn màu đen và ra mắt tháng 4 năm 2007. Xbox 360 Elite được bổ sung cổng xuất HDMI, ổ cứng dung lượng cao 120 GB, và được bán với giá 480 USD.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Điểm mạnh của chiếc máy này chính là bộ sưu tập game đồ sộ, bao gồm nhiều tựa game độc quyền của Xbox 360, tất cả các game đều có độ phân giải cao, giao diện Dashboard thân thiện, hỗ trợ tay cầm không dây và các phụ kiện khác, dịch vụ Xbox Live hỗ trợ multiplayer trực tuyến (có chat voice và matchmaking - ghép 2 người chơi với nhau). Xbox 360 Elite tương thích ngược với rất nhiều game trên Xbox đời đầu, Marketplace trực tuyến cho phép mua các minigame dễ dàng, hỗ trợ phim HD và TV Show.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tuy nhiên, máy cũng có nhiều điểm yếu như không thể khắc phục các lỗi khó chịu mà người tiền nhiệm của nó - Xbox 360 - để lại: ổ DVD và hệ thống tản nhiệt phát ra nhiều tiếng ồn, bộ nguồn có kích cỡ quá to, không hỗ trợ kết nối mạng không dây, chỉ có 3 cổng USB, ổ DVD chất lượng tầm thường, chơi online cần phải mất thêm phí đăng kí dịch vụ Xbox Live, hạn chế phụ kiện của bên thứ 3.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360S</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-4.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-4.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tại Hội chợ E3 năm 2010, Microsoft giới thiệu Xbox 360S, một phiên bản cải tiến nữa của 360 với thiết kế được "giảm béo", gọn gàng hơn. Microsoft cũng bổ sung kết nối WiFi và ổ cứng dung lượng lớn, 250 GB ở phiên bản này. Máy có giá bán 299 USD. Đồng thời đến phiên bản này thì lỗi đèn đỏ ở Xbox 360 đời đầu cũng được khắc phục. Đồng thời, cùng với việc bổ sung Netflix (dịch vụ cho thuê phim) và hàng loạt dịch vụ stream khác, Xbox 360 ngày càng trở thành một thiết bị media quan trọng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những điểm mạnh của máy là thiết kế bóng bẩy (nhỏ hơn phiên bản cũ 17%), hoạt động êm hơn, tản nhiệt tốt hơn, khay đĩa và nguồn cũng ổn định hơn, ổ cứng dung lượng cao (250 GB), WiFi tích hợp, 5 cổng USB, cổng Kinect riêng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nhược điểm của Xbox 360S là vẫn dùng ổ cứng độc quyền, nguồn máy vẫn cồng kềnh, controller trên D-pad không có gì cải tiến, không có cáp đi kèm để hỗ trợ chơi game HD.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Kinect</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-5.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-5.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cũng trong năm 2010, Microsoft giới thiệu cảm biến Kinect. Đây được xem là câu trả lời cho Wii của Nintendo với tay cầm Wii Remote có thể nhận diện cử chỉ. Ngoài việc bổ sung nhận diện cử chỉ cho Xbox 360, Kinect cũng được tích hợp cả camera. Mặc dù cảm biến này bán tốt, nhưng không có nhiều game tận dụng các tính năng của nó. Kinect, vì thế, chỉ như một phụ kiện tạo nên sự nổi bật cho Xbox mà thôi.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những điểm mạnh của Xbox 360 Kinect là hỗ trợ điều khiển bằng chuyển động, thư viện game phong phú, điều khiển giọng nói. Điểm yếu là nó đòi hỏi người chơi mất công tìm hiểu, điều hướng menu và video thường không ổn định, cần phòng có diện tích lớn để hoạt động, nhiều game yêu cầu người chơi phải đứng, cần nguồn riêng khi sử dụng với các máy Xbox 360 đời cũ.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360E</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-6.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-6.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Được giới thiệu tại E3 2013, Microsoft đã thiết kế giúp Xbox 360E nhỏ gọn hơn một chút so với thế hệ trước nó. Máy có giá bán 250 USD và thường được tặng kèm 1 đến 2 game khi mua. Có thể nói đó là một mức giá hấp dẫn dành cho game thủ. Điểm mạnh của máy vẫn là thư viện game phong phú, máy chạy mát hơn các thế hệ trước. Điểm yếu đó là cổng A/V cũ và S/PDIF đã bị loại bỏ, không có ổ Blu-ray, yêu cầu phải có tài khoản Xbox Live Gold mới hỗ trợ chơi online và nhiều ứng dụng giải trí.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox One</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-7.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-7.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox One - thế hệ Xbox mới nhất của Microsoft, vừa lên kệ ngày 22/11 vừa qua, chỉ sau PS4 một tuần lễ. Máy có giá 499 USD đã bao gồm cả cảm biến Kinect thế hệ mới (người dùng bắt buộc phải mua cả combo này, không thể mua riêng). Với Xbox One, Microsoft không chỉ tập trung vào tải nghiệm game, mà còn tích hợp trong đó nhiều tiện ích giải trí. One được tích hợp dịch vụ TV trực tuyến, có tính năng nhận diện giọng nói, điều khiển chuyển động rất hứa hẹn. Những điểm mạnh khác gồm đồ họa game được cải tiến, game độc quyền nhiều hơn (1 chút) so với PS4.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tất nhiên, One vẫn còn những điểm yếu như dịch vụ TV trực tuyến hoạt động chưa mượt mà, khả năng nhận diện giọng nói của Kinect chưa ổn định, giao diện dashboard mới phức tạp hơn trước. Máy có giá đắt hơn đối thủ PS4 100 USD, và yêu cầu phải đăng kí dịch vụ Xbox Live Gold (có trả phí) mới có thể sử dụng nhiều tính năng hấp dẫn.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Genk/CNET</span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đã tròn 12 năm kể từ khi chiếc Xbox đầu tiên được bán ra. Sau đây là những điểm nhấn của máy chơi game console được Microsoft tung ra vào 2001 này.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chiếc Xbox đầu tiên</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chiếc Xbox đầu tiên lên kệ vào ngày 15/11/2001 với giá bán 299 USD, cạnh tranh trực tiếp với Play Station 2 của Sony và GameCube của Nintendo. Microsoft cũng đưa tựa game đình đám Halo, cùng hàng loạt game lớn khác, lên console này. Điểm mạnh của chiếc Xbox đầu tiên là cấu hình tốt, hỗ trợ màn hình độ phân giải cao, cổng Ethernet, bộ nhớ lớn. Điểm yếu của máy là kích thước cồng kềnh, yêu cầu phần cứng ngoài để mở khóa tính năng xem DVD.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Pro</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">4 năm sau đó, ngày 22/11/2005, Microsoft giới thiệu Xbox thế hệ thứ 2, hay còn gọi là Xbox 360. Máy có phần mặt có thể tháo rời, ổ cứng 20 GB, không hỗ trợ WiFi (người dùng phải mua bộ hỗ trợ riêng với giá 99 USD). Mặc dù máy không có cổng xuất HDMI (chỉ được bổ sung ở các phiên bản sau đó), nhưng đây được xem là console đầu tiên được thiết kế để hỗ trợ đồ họa chuẩn HD. 360 lên kệ sớm hơn các đối thủ Play Station 3 và Nintendo Wii 1 năm (các console này ra mắt tháng 11/2006), và phần cứng bị tố gặp lỗi nặng, trong đó đáng hổ thẹn nhất là lỗi "đèn đỏ" (một ánh sáng màu đỏ liên tục nhấp nháy trên máy).</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 phiên bản ổ cứng 20 GB được bán với giá 399 USD. Ngoài ra Microsoft cũng bán một phiên bản khác với giá 299 USD nhưng máy không đi kèm ổ cứng.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Elite</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-3.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-3.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Elite có thể xem là phiên bản cải tiến của Xbox 360 đời đầu. Máy có thiết kế toàn màu đen và ra mắt tháng 4 năm 2007. Xbox 360 Elite được bổ sung cổng xuất HDMI, ổ cứng dung lượng cao 120 GB, và được bán với giá 480 USD.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Điểm mạnh của chiếc máy này chính là bộ sưu tập game đồ sộ, bao gồm nhiều tựa game độc quyền của Xbox 360, tất cả các game đều có độ phân giải cao, giao diện Dashboard thân thiện, hỗ trợ tay cầm không dây và các phụ kiện khác, dịch vụ Xbox Live hỗ trợ multiplayer trực tuyến (có chat voice và matchmaking - ghép 2 người chơi với nhau). Xbox 360 Elite tương thích ngược với rất nhiều game trên Xbox đời đầu, Marketplace trực tuyến cho phép mua các minigame dễ dàng, hỗ trợ phim HD và TV Show.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tuy nhiên, máy cũng có nhiều điểm yếu như không thể khắc phục các lỗi khó chịu mà người tiền nhiệm của nó - Xbox 360 - để lại: ổ DVD và hệ thống tản nhiệt phát ra nhiều tiếng ồn, bộ nguồn có kích cỡ quá to, không hỗ trợ kết nối mạng không dây, chỉ có 3 cổng USB, ổ DVD chất lượng tầm thường, chơi online cần phải mất thêm phí đăng kí dịch vụ Xbox Live, hạn chế phụ kiện của bên thứ 3.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360S</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-4.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-4.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tại Hội chợ E3 năm 2010, Microsoft giới thiệu Xbox 360S, một phiên bản cải tiến nữa của 360 với thiết kế được "giảm béo", gọn gàng hơn. Microsoft cũng bổ sung kết nối WiFi và ổ cứng dung lượng lớn, 250 GB ở phiên bản này. Máy có giá bán 299 USD. Đồng thời đến phiên bản này thì lỗi đèn đỏ ở Xbox 360 đời đầu cũng được khắc phục. Đồng thời, cùng với việc bổ sung Netflix (dịch vụ cho thuê phim) và hàng loạt dịch vụ stream khác, Xbox 360 ngày càng trở thành một thiết bị media quan trọng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những điểm mạnh của máy là thiết kế bóng bẩy (nhỏ hơn phiên bản cũ 17%), hoạt động êm hơn, tản nhiệt tốt hơn, khay đĩa và nguồn cũng ổn định hơn, ổ cứng dung lượng cao (250 GB), WiFi tích hợp, 5 cổng USB, cổng Kinect riêng.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nhược điểm của Xbox 360S là vẫn dùng ổ cứng độc quyền, nguồn máy vẫn cồng kềnh, controller trên D-pad không có gì cải tiến, không có cáp đi kèm để hỗ trợ chơi game HD.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360 Kinect</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-5.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-5.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cũng trong năm 2010, Microsoft giới thiệu cảm biến Kinect. Đây được xem là câu trả lời cho Wii của Nintendo với tay cầm Wii Remote có thể nhận diện cử chỉ. Ngoài việc bổ sung nhận diện cử chỉ cho Xbox 360, Kinect cũng được tích hợp cả camera. Mặc dù cảm biến này bán tốt, nhưng không có nhiều game tận dụng các tính năng của nó. Kinect, vì thế, chỉ như một phụ kiện tạo nên sự nổi bật cho Xbox mà thôi.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Những điểm mạnh của Xbox 360 Kinect là hỗ trợ điều khiển bằng chuyển động, thư viện game phong phú, điều khiển giọng nói. Điểm yếu là nó đòi hỏi người chơi mất công tìm hiểu, điều hướng menu và video thường không ổn định, cần phòng có diện tích lớn để hoạt động, nhiều game yêu cầu người chơi phải đứng, cần nguồn riêng khi sử dụng với các máy Xbox 360 đời cũ.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox 360E</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-6.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-6.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Được giới thiệu tại E3 2013, Microsoft đã thiết kế giúp Xbox 360E nhỏ gọn hơn một chút so với thế hệ trước nó. Máy có giá bán 250 USD và thường được tặng kèm 1 đến 2 game khi mua. Có thể nói đó là một mức giá hấp dẫn dành cho game thủ. Điểm mạnh của máy vẫn là thư viện game phong phú, máy chạy mát hơn các thế hệ trước. Điểm yếu đó là cổng A/V cũ và S/PDIF đã bị loại bỏ, không có ổ Blu-ray, yêu cầu phải có tài khoản Xbox Live Gold mới hỗ trợ chơi online và nhiều ứng dụng giải trí.</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox One</span></h4>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385584424-7.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385584424-7.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Xbox One - thế hệ Xbox mới nhất của Microsoft, vừa lên kệ ngày 22/11 vừa qua, chỉ sau PS4 một tuần lễ. Máy có giá 499 USD đã bao gồm cả cảm biến Kinect thế hệ mới (người dùng bắt buộc phải mua cả combo này, không thể mua riêng). Với Xbox One, Microsoft không chỉ tập trung vào tải nghiệm game, mà còn tích hợp trong đó nhiều tiện ích giải trí. One được tích hợp dịch vụ TV trực tuyến, có tính năng nhận diện giọng nói, điều khiển chuyển động rất hứa hẹn. Những điểm mạnh khác gồm đồ họa game được cải tiến, game độc quyền nhiều hơn (1 chút) so với PS4.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Tất nhiên, One vẫn còn những điểm yếu như dịch vụ TV trực tuyến hoạt động chưa mượt mà, khả năng nhận diện giọng nói của Kinect chưa ổn định, giao diện dashboard mới phức tạp hơn trước. Máy có giá đắt hơn đối thủ PS4 100 USD, và yêu cầu phải đăng kí dịch vụ Xbox Live Gold (có trả phí) mới có thể sử dụng nhiều tính năng hấp dẫn.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo Genk/CNET</span></em></p>
', CAST(N'2017-09-20T00:00:00.000' AS DateTime), N'admin', 2, 0, 1, N'Lich su 12 nam ve vang cua may choi game Xbox', 0)
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId]) VALUES (6, 1, N'Galaxy Gear 2 đồng hành cùng Galaxy S5 ra mắt tháng 3/2014', N'galaxy-gear-2-dong-hanh-cung-galaxy-s5-ra-mat-thang-32014', N'Galaxy Gear 2 đồng hành cùng Galaxy S5 ra mắt tháng 3/2014', N'galaxy-gear-2-dong-hanh-cung-galaxy-s5-ra-mat-thang-32014', N'/Uploads/tin1.jpg', N'Theo thông báo từ trang ETNews của Hàn Quốc thì thế hệ tiếp theo của Galaxy Gear sẽ không đợi đến ngày Galaxy Note 4 ra mắt, thay vào đó nó sẽ ra mắt vào tháng 3 cùng với Galaxy S5.', N'Theo thông báo từ trang ETNews của Hàn Quốc thì thế hệ tiếp theo của Galaxy Gear sẽ không đợi đến ngày Galaxy Note 4 ra mắt, thay vào đó nó sẽ ra mắt vào tháng 3 cùng với Galaxy S5.', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo thông báo từ trang<em>&nbsp;ETNews</em>&nbsp;của Hàn Quốc thì thế hệ tiếp theo của Galaxy Gear sẽ không đợi đến ngày Galaxy Note 4 ra mắt, thay vào đó nó sẽ ra mắt vào tháng 3 cùng với Galaxy S5.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385576728-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385576728-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nguồn tin chỉ ra rằng Samsung dự kiến sẽ công bố Gear 2 tại CES vào tháng 1/2014, và điều này sẽ giúp công ty phát hành sản phẩm ra thị trường vào khoảng tháng 2 đến tháng 3. Việc cập nhật phiên bản mới của smartwatch sẽ giúp Samsung cạnh tranh tốt hơn với các đối thủ mới gia nhập thị trường smartwatch vào năm tới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trước đó, người dùng đã phàn nàn rằng thế hệ Galaxy Gear đầu tiên quá dày, không hiển thị đầy đủ các thông báo và tuổi thọ pin quá ngắn. Chính vì vậy, thông tin từ<em>ETNews&nbsp;</em>cho biết Gear 2 có kích thước ỏng hơn 15 đến 20% so với phiên bản gốc chắc chắn sẽ nhận được sự chú ý của người dùng.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385576728-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385576728-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Liên quan đến Galaxy S5, đây là mẫu smartphone được đồn là sẽ phát hành trong khoảng thời điểm từ tháng 2 đến tháng 4, nhưng trước đó máy sẽ được Samsung cho giới thiệu tại MWC vào tháng 2.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Để chuẩn bị cho sự phát hành, Samsung sẽ bắt đầu hoạt động sản xuất Galaxy S5 vào tháng Giêng với sản lượng đạt khoảng 800.000 đến 1 triệu máy, trước khi tăng tốc độ lắp ráp lên 6 triệu vào tháng 2. Đây là sản phẩm cao cấp của Samsung, hứa hẹn trang bị VXL Exynos 6 với kiến trúc 64 bit, RAM 3 GB cùng pin dung lượng 4000 mAh. Màn hình 5 inch của máy cung cấp độ phân giải 2560 x 1440 pixel.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://www.androidheadlines.com/2013/11/next-generation-galaxy-gear-pair-galaxy-s5-launch-march.html" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">Android Headlines</a></span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo thông báo từ trang<em>&nbsp;ETNews</em>&nbsp;của Hàn Quốc thì thế hệ tiếp theo của Galaxy Gear sẽ không đợi đến ngày Galaxy Note 4 ra mắt, thay vào đó nó sẽ ra mắt vào tháng 3 cùng với Galaxy S5.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385576728-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385576728-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nguồn tin chỉ ra rằng Samsung dự kiến sẽ công bố Gear 2 tại CES vào tháng 1/2014, và điều này sẽ giúp công ty phát hành sản phẩm ra thị trường vào khoảng tháng 2 đến tháng 3. Việc cập nhật phiên bản mới của smartwatch sẽ giúp Samsung cạnh tranh tốt hơn với các đối thủ mới gia nhập thị trường smartwatch vào năm tới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trước đó, người dùng đã phàn nàn rằng thế hệ Galaxy Gear đầu tiên quá dày, không hiển thị đầy đủ các thông báo và tuổi thọ pin quá ngắn. Chính vì vậy, thông tin từ<em>ETNews&nbsp;</em>cho biết Gear 2 có kích thước ỏng hơn 15 đến 20% so với phiên bản gốc chắc chắn sẽ nhận được sự chú ý của người dùng.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/28/img-1385576728-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/28/img-1385576728-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Liên quan đến Galaxy S5, đây là mẫu smartphone được đồn là sẽ phát hành trong khoảng thời điểm từ tháng 2 đến tháng 4, nhưng trước đó máy sẽ được Samsung cho giới thiệu tại MWC vào tháng 2.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Để chuẩn bị cho sự phát hành, Samsung sẽ bắt đầu hoạt động sản xuất Galaxy S5 vào tháng Giêng với sản lượng đạt khoảng 800.000 đến 1 triệu máy, trước khi tăng tốc độ lắp ráp lên 6 triệu vào tháng 2. Đây là sản phẩm cao cấp của Samsung, hứa hẹn trang bị VXL Exynos 6 với kiến trúc 64 bit, RAM 3 GB cùng pin dung lượng 4000 mAh. Màn hình 5 inch của máy cung cấp độ phân giải 2560 x 1440 pixel.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://www.androidheadlines.com/2013/11/next-generation-galaxy-gear-pair-galaxy-s5-launch-march.html" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">Android Headlines</a></span></em></p>
', CAST(N'2017-09-20T00:00:00.000' AS DateTime), N'', 0, 0, 1, N'Galaxy Gear 2 dong hanh cung Galaxy S5 ra mat thang 32014', 0)
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId]) VALUES (7, 1, N'Chip xử lí di động hướng đến nền tảng 64 bit', N'chip-xu-li-di-dong-huong-den-nen-tang-64-bit', N'Chip xử lí di động hướng đến nền tảng 64 bit', N'chip-xu-li-di-dong-huong-den-nen-tang-64-bit', N'/Uploads/tin1.jpg', N'Chip Apple chip A7 trong iPhone 5s và iPad Air với khả năng vận hành mã 64 bit là "phát súng" đầu tiên khởi động cuộc đua chip xử lí 64 bit cho các thiết bị di động trong năm 2014.', N'Chip Apple chip A7 trong iPhone 5s và iPad Air với khả năng vận hành mã 64 bit là "phát súng" đầu tiên khởi động cuộc đua chip xử lí 64 bit cho các thiết bị di động trong năm 2014.', N'<h3 style="text-align:justify">Chip xử lí di động hướng đến nền tảng 64 bit</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chip Apple chip A7 trong iPhone 5s và iPad Air với khả năng vận hành mã 64 bit là "phát súng" đầu tiên khởi động cuộc đua chip xử lí 64 bit cho các thiết bị di động trong năm 2014.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Intel, Samsung và Qualcomm đều rục rịch chuẩn bị cho cuộc đua này.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/27/img-1385564314-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/27/img-1385564314-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong lộ trình từ 2014 đến năm 2016, Intel sẽ lần lượt giới thiệu các phiên bản chip Atom mới cho smartphone và tablet, mục tiêu tăng tốc độ xử lí của CPU lên gấp 5 lần và khả năng xử lí đồ họa lên đến 15 lần vào năm 2016.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chip Atom mới dựa trên các nhân xử lí đồ họa và CPU mới, có mức giá thấp hướng đến nhóm thiết bị di động tầm trung, dự kiến có mặt vào năm 2015. Intel tập trung cải thiện khả năng xử lí điện năng hiệu quả hơn, tiết kiệm nguồn điện để gia tăng thời lượng pin sử dụng của thiết bị. Ở cả ba phân khúc thiết bị di động bình dân, tầm trung và cao cấp, Intel đều sẽ có những đại diện CPU mới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hiện Intel đang trong cuộc đuổi bắt với ARM trên thị trường chip xử lí cho smartphone. Intel sẽ tung ra các chip Atom đầu tiên theo quy trình sản xuất 14 nm (nanometer), cho hiệu năng xử lí và tiết kiệm điện. Cụ thể, vào cuối năm 2014, dòng chip cho thiết bị di động tên mã Cherry Trail sẽ xuất xưởng, nó dựa trên nền CPU Airmont sắp ra mắt. Cherry Trail mang theo thế hệ nhân xử lí đồ họa mới của Intel. Kế đến vào năm 2015, lần lượt các thế hệ kế tiếp gồm Broxton (dựa trên nền CPU Goldmont, GPU Skylake) ra mắt.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/27/img-1385564314-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/27/img-1385564314-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Năm 2014, Intel cũng tung ra chip hai nhân (dual-core) Merrifield dành cho smartphone cao cấp. Merrifield sản xuất theo tiến trình 22 nm. Thế hệ Merrifield bốn nhân (quad-core) ra mắt vào nửa cuối năm sau. Đối với smartphone bình dân, Intel có chip Atom SoC tên mã Sofia vào cuối năm 2014, nhân xử lí dựa trên kiến trúc x86.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo TechHive, Giám đốc điều hành (CEO) Intel Brian Krzanich thừa nhận, Intel phải tăng tốc để bắt kịp các đối thủ lớn khác trên thị trường để trở thành nhà cung cấp chip xử lí cho thị trường smartphone và tablet đang phát triển mạnh mẽ. Do đó, Broxton và Sofia ra mắt sớm hơn dự kiến. Thậm chí ba tháng trước đó, lộ trình sản xuất chưa có những cái tên này".</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cuộc đua chip xử lí 64 bit</span></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Khi ra mắt iPhone 5s, chip A7 SoC (System-on-Chip) của Apple đã khiến thị trường chip xử lí di động một phen "khó thở" khi tận dụng lợi ích ở cả hai nền tảng 32 bit lẫn 64 bit. Tuy nhiên, vào thời điểm hiện tại, A7 là bước nền để chuyển dịch sang môi trường 64 bit, và qua đó, Apple khuyến khích các nhà phát triển ứng dụng, game nâng cấp sản phẩm của mình tiến lên tầm cao hơn về cả khả năng xử lí lẫn đồ họa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong lộ trình sản phẩm của Intel cho thấy hãng này sẽ chuyển đổi nền tảng chip 32 bit sang 64 bit, hướng đến các thiết bị dùng Windows trước, và sau đó sẽ là các máy tính bảng Android. Tuy nhiên, đưa Bay Trail trên nền Atom tiến lên 64 bit cũng sẽ gặp phải một đối thủ khác là AMD với chip Kabini (vi kiến trúc Jaguar) đã có mặt trong các notebook tầm trung.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đầu tháng 11, Samsung tuyên bố sẽ sản xuất CPU 64 bit và smartphone dùng chip 64 bit của hãng này cũng sẽ xuất xưởng trong năm 2014. Chip 64 bit của Samsung là bản tối ưu dựa trên thiết kế từ ARM tương tự Apple A7 có trong iPhone 5s và iPad Air.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/27/img-1385564314-3.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/27/img-1385564314-3.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ngày 21/11 vừa qua, Qualcomm đã trình làng dòng chip Snapdragon 805, một thế hệ cải tiến cho chip xử lí Snapdragon 800 đang có mặt trong nhiều smartphone và tablet cao cấp trên thị trường. Theo Qualcomm, Snapdragon 805 không phải là phiên bản lớn so với Snapdragon 800, nó tập trung cải tiến CPU, GPU (hỗ trợ video nén theo chuẩn H.265, độ phân giải từ Full-HD lên 2560 x 1440), giao diện bộ nhớ (tối đa 4 GB RAM), được sản xuất theo tiến trình 28 nm HPm tương tự Snapdragon 800.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/27/img-1385564314-4.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/27/img-1385564314-4.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Khác với Nvidia và Samsung dựa trên vi kiến trúc ARM Cortex A15, Qualcomm tận dụng vi kiến trúc Krait và công nghệ xử lí đồ họa (GPU) Areno. Qualcomm đã có kế hoạch chuyến lên môi trường 64 bit và ARMv8 nhưng chưa công bố chi tiết lộ trình.</span></p>
', N'<h3 style="text-align:justify">Chip xử lí di động hướng đến nền tảng 64 bit</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chip Apple chip A7 trong iPhone 5s và iPad Air với khả năng vận hành mã 64 bit là "phát súng" đầu tiên khởi động cuộc đua chip xử lí 64 bit cho các thiết bị di động trong năm 2014.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Intel, Samsung và Qualcomm đều rục rịch chuẩn bị cho cuộc đua này.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/27/img-1385564314-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/27/img-1385564314-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong lộ trình từ 2014 đến năm 2016, Intel sẽ lần lượt giới thiệu các phiên bản chip Atom mới cho smartphone và tablet, mục tiêu tăng tốc độ xử lí của CPU lên gấp 5 lần và khả năng xử lí đồ họa lên đến 15 lần vào năm 2016.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Chip Atom mới dựa trên các nhân xử lí đồ họa và CPU mới, có mức giá thấp hướng đến nhóm thiết bị di động tầm trung, dự kiến có mặt vào năm 2015. Intel tập trung cải thiện khả năng xử lí điện năng hiệu quả hơn, tiết kiệm nguồn điện để gia tăng thời lượng pin sử dụng của thiết bị. Ở cả ba phân khúc thiết bị di động bình dân, tầm trung và cao cấp, Intel đều sẽ có những đại diện CPU mới.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Hiện Intel đang trong cuộc đuổi bắt với ARM trên thị trường chip xử lí cho smartphone. Intel sẽ tung ra các chip Atom đầu tiên theo quy trình sản xuất 14 nm (nanometer), cho hiệu năng xử lí và tiết kiệm điện. Cụ thể, vào cuối năm 2014, dòng chip cho thiết bị di động tên mã Cherry Trail sẽ xuất xưởng, nó dựa trên nền CPU Airmont sắp ra mắt. Cherry Trail mang theo thế hệ nhân xử lí đồ họa mới của Intel. Kế đến vào năm 2015, lần lượt các thế hệ kế tiếp gồm Broxton (dựa trên nền CPU Goldmont, GPU Skylake) ra mắt.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/27/img-1385564314-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/27/img-1385564314-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Năm 2014, Intel cũng tung ra chip hai nhân (dual-core) Merrifield dành cho smartphone cao cấp. Merrifield sản xuất theo tiến trình 22 nm. Thế hệ Merrifield bốn nhân (quad-core) ra mắt vào nửa cuối năm sau. Đối với smartphone bình dân, Intel có chip Atom SoC tên mã Sofia vào cuối năm 2014, nhân xử lí dựa trên kiến trúc x86.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo TechHive, Giám đốc điều hành (CEO) Intel Brian Krzanich thừa nhận, Intel phải tăng tốc để bắt kịp các đối thủ lớn khác trên thị trường để trở thành nhà cung cấp chip xử lí cho thị trường smartphone và tablet đang phát triển mạnh mẽ. Do đó, Broxton và Sofia ra mắt sớm hơn dự kiến. Thậm chí ba tháng trước đó, lộ trình sản xuất chưa có những cái tên này".</span></p>

<h4 style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cuộc đua chip xử lí 64 bit</span></h4>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Khi ra mắt iPhone 5s, chip A7 SoC (System-on-Chip) của Apple đã khiến thị trường chip xử lí di động một phen "khó thở" khi tận dụng lợi ích ở cả hai nền tảng 32 bit lẫn 64 bit. Tuy nhiên, vào thời điểm hiện tại, A7 là bước nền để chuyển dịch sang môi trường 64 bit, và qua đó, Apple khuyến khích các nhà phát triển ứng dụng, game nâng cấp sản phẩm của mình tiến lên tầm cao hơn về cả khả năng xử lí lẫn đồ họa.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Trong lộ trình sản phẩm của Intel cho thấy hãng này sẽ chuyển đổi nền tảng chip 32 bit sang 64 bit, hướng đến các thiết bị dùng Windows trước, và sau đó sẽ là các máy tính bảng Android. Tuy nhiên, đưa Bay Trail trên nền Atom tiến lên 64 bit cũng sẽ gặp phải một đối thủ khác là AMD với chip Kabini (vi kiến trúc Jaguar) đã có mặt trong các notebook tầm trung.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Đầu tháng 11, Samsung tuyên bố sẽ sản xuất CPU 64 bit và smartphone dùng chip 64 bit của hãng này cũng sẽ xuất xưởng trong năm 2014. Chip 64 bit của Samsung là bản tối ưu dựa trên thiết kế từ ARM tương tự Apple A7 có trong iPhone 5s và iPad Air.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/27/img-1385564314-3.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/27/img-1385564314-3.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Ngày 21/11 vừa qua, Qualcomm đã trình làng dòng chip Snapdragon 805, một thế hệ cải tiến cho chip xử lí Snapdragon 800 đang có mặt trong nhiều smartphone và tablet cao cấp trên thị trường. Theo Qualcomm, Snapdragon 805 không phải là phiên bản lớn so với Snapdragon 800, nó tập trung cải tiến CPU, GPU (hỗ trợ video nén theo chuẩn H.265, độ phân giải từ Full-HD lên 2560 x 1440), giao diện bộ nhớ (tối đa 4 GB RAM), được sản xuất theo tiến trình 28 nm HPm tương tự Snapdragon 800.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/27/img-1385564314-4.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/27/img-1385564314-4.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Khác với Nvidia và Samsung dựa trên vi kiến trúc ARM Cortex A15, Qualcomm tận dụng vi kiến trúc Krait và công nghệ xử lí đồ họa (GPU) Areno. Qualcomm đã có kế hoạch chuyến lên môi trường 64 bit và ARMv8 nhưng chưa công bố chi tiết lộ trình.</span></p>
', CAST(N'2017-09-20T00:00:00.000' AS DateTime), N'', 0, 0, 1, N'Chip xu li di dong huong den nen tang 64 bit', 0)
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId]) VALUES (8, 3, N'Sẽ có thiết bị chạy chip Tegra 4i và Tegra 5 của NVIDIA vào Q1/ 2014', N'se-co-thiet-bi-chay-chip-tegra-4i-va-tegra-5-cua-nvidia-vao-q1-2014', N'Sẽ có thiết bị chạy chip Tegra 4i và Tegra 5 của NVIDIA vào Q1/ 2014', N'se-co-thiet-bi-chay-chip-tegra-4i-va-tegra-5-cua-nvidia-vao-q1-2014', N'/Uploads/congnghe.jpeg', N'Nguồn tin từ trang GSMarena cho hay, sẽ có loạt thiết bị chạy thế hệ VLX mới nhất của NVIDIA được tung ra vào đầu 2014 tới do hệ chip Tegra 4 hiện tại không còn được ưa chuộng và nhà mạng AT&T sẽ là nơi dừng chân đầu tiên của loạt thiết bị này.', N'Nguồn tin từ trang GSMarena cho hay, sẽ có loạt thiết bị chạy thế hệ VLX mới nhất của NVIDIA được tung ra vào đầu 2014 tới do hệ chip Tegra 4 hiện tại không còn được ưa chuộng và nhà mạng AT&T sẽ là nơi dừng chân đầu tiên của loạt thiết bị này.', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nguồn tin từ trang GSMarena cho hay, sẽ có loạt thiết bị chạy thế hệ VLX mới nhất của NVIDIA được tung ra vào đầu 2014 tới do hệ chip Tegra 4 hiện tại không còn được ưa chuộng và nhà mạng AT&amp;T sẽ là nơi dừng chân đầu tiên của loạt thiết bị này.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/18/img-1384776504-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/18/img-1384776504-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo đó, thế hệ VXL tiếp theo của NVIDIA bao gồm Tegra 4i và Tegra 5 sẽ có mặt trên smartphone vào Q1/2014. Tegra 4i sẽ là chip nhắm vào các thiết bị tầm trung (sẽ công bố vào Q1/2014 và bán ra vào quý tiếp theo). Đây là VXL kết hợp giữa Tegra 3 và Tegra 4, sử dụng bốn lõi CPU Cortex-A9 kèm lõi tiết kiệm năng lượng (tương tự Tegra 3), tích hợp GPU thu gọn của Tegra 4, có mặt của kết nối 4G LTE/HSPA+,... Trong Tegra 4i cũng sẽ được NVIDIA tích hợp nhân Cortex-A9 tốc độ xung nhịp 2,3 Ghz mỗi nhân giúp tăng hiệu suất xử lí từ 30 - 40% so với nhân A15 có mặt trên Tegra 4.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/18/img-1384776504-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/18/img-1384776504-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cùng với Tegra 4i, Tegra 5 cũng có cấu hình tương tự. Tuy nhiên, Tegra 5 sẽ không đi kèm với một modem di động tích hợp mà sẽ được bổ sung con chip giống Icera i500 của NVIDIA. Tegra 5 sẽ sử dụng GPU Kepler, đây là công nghệ mà NVIDIA sử dụng cho máy tính để bàn và GPU di động GeForce 6xx.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://blog.gsmarena.com/devices-with-nvidias-tegra-5-and-tegra-4i-chipsets-coming-in-q1-next-year/" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">GSMarena</a></span></em></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Nguồn tin từ trang GSMarena cho hay, sẽ có loạt thiết bị chạy thế hệ VLX mới nhất của NVIDIA được tung ra vào đầu 2014 tới do hệ chip Tegra 4 hiện tại không còn được ưa chuộng và nhà mạng AT&amp;T sẽ là nơi dừng chân đầu tiên của loạt thiết bị này.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/18/img-1384776504-1.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/18/img-1384776504-1.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo đó, thế hệ VXL tiếp theo của NVIDIA bao gồm Tegra 4i và Tegra 5 sẽ có mặt trên smartphone vào Q1/2014. Tegra 4i sẽ là chip nhắm vào các thiết bị tầm trung (sẽ công bố vào Q1/2014 và bán ra vào quý tiếp theo). Đây là VXL kết hợp giữa Tegra 3 và Tegra 4, sử dụng bốn lõi CPU Cortex-A9 kèm lõi tiết kiệm năng lượng (tương tự Tegra 3), tích hợp GPU thu gọn của Tegra 4, có mặt của kết nối 4G LTE/HSPA+,... Trong Tegra 4i cũng sẽ được NVIDIA tích hợp nhân Cortex-A9 tốc độ xung nhịp 2,3 Ghz mỗi nhân giúp tăng hiệu suất xử lí từ 30 - 40% so với nhân A15 có mặt trên Tegra 4.</span></p>

<p style="text-align:justify"> </p>

<div class="image-autosize image-align-none" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><a href="http://vtcdn.com/sites/default/files/images/2013/11/18/img-1384776504-2.jpg" style="color: rgb(39, 39, 39); text-decoration-line: none;"><img alt="Ảnh" border="0" src="http://vtcdn.com/sites/default/files/imagecache/med/images/2013/11/18/img-1384776504-2.jpg" style="border:none" /></a></span></div>

<p style="text-align:justify"> </p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Cùng với Tegra 4i, Tegra 5 cũng có cấu hình tương tự. Tuy nhiên, Tegra 5 sẽ không đi kèm với một modem di động tích hợp mà sẽ được bổ sung con chip giống Icera i500 của NVIDIA. Tegra 5 sẽ sử dụng GPU Kepler, đây là công nghệ mà NVIDIA sử dụng cho máy tính để bàn và GPU di động GeForce 6xx.</span></p>

<p style="text-align:right"><em><span style="font-family:arial,helvetica,sans-serif; font-size:small">Theo&nbsp;<a href="http://blog.gsmarena.com/devices-with-nvidias-tegra-5-and-tegra-4i-chipsets-coming-in-q1-next-year/" style="color: rgb(39, 39, 39); text-decoration-line: none;" target="_blank">GSMarena</a></span></em></p>
', CAST(N'2017-09-20T00:00:00.000' AS DateTime), N'admin', 0, 0, 1, N'Se co thiet bi chay chip Tegra 4i va Tegra 5 cua NVIDIA vao Q1 2014', 0)
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId]) VALUES (9, 3, N'Review BlackBerry Passport từ Kuala Lumpur', N'review-blackberry-passport-tu-kuala-lumpur', N'Review BlackBerry Passport từ Kuala Lumpur', N'review-blackberry-passport-tu-kuala-lumpur', N'/Uploads/blackberry-windermere-1.jpg', N'Hôm qua 24/9 BlackBerry đã chính thức ra mắt thiết bị BlackBerry Passport. Đây là chiếc điện thoại thông minh cao cấp mới được sản xuất ngay tại quê hương Canada. Theo BlackBerry thì sản phẩm này sẽ tập trung vào phân khúc khách hàng doanh nghiệp với thiết kế và nhiều tính năng mới hỗ trợ công việc ', N'Hôm qua 24/9 BlackBerry đã chính thức ra mắt thiết bị BlackBerry Passport. Đây là chiếc điện thoại thông minh cao cấp mới được sản xuất ngay tại quê hương Canada. Theo BlackBerry thì sản phẩm này sẽ tập trung vào phân khúc khách hàng doanh nghiệp với thiết kế và nhiều tính năng mới hỗ trợ công việc ', N'<h3 style="text-align:justify">Review BlackBerry Passport từ Kuala Lumpur</h3>

<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Hôm qua 24/9 BlackBerry đã chính thức ra mắt thiết bị BlackBerry Passport. Đây là chiếc điện thoại thông minh cao cấp mới được sản xuất ngay tại quê hương Canada. Theo BlackBerry thì sản phẩm này sẽ tập trung vào phân khúc khách hàng doanh nghiệp với thiết kế và nhiều tính năng mới hỗ trợ công việc hiệu quả hơn.</span><br />
<br />
<strong>Thiết kế</strong><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Máy được bao quanh bởi viền kim loại, hai bên canh bo nhẹ vào thân máy cho cảm giác cầm rất thoải mái và không bị cấn tay. Với màn hình vuông 4.5" và "bàn phím cứng có cảm ứng" BlackBerry Passport có thiết kế khác hẳn với những chiếc điện thoại trên thị trường hiện nay cũng như các sản phẩm trước đây của hãng. Cảm giác đầu tiên khi cầm là máy rất to và khá sang trọng, tuy nhiên sẽ hơi khó khăn khi sử dụng bằng một tay.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Nhìn tổng thể mặt trước máy khá hài hoà, bàn phím được BlackBerry rút gọn chỉ còn 3 dãy phím. Phía trên là loa thoại kèm các cảm biến cùng camera trước 2 MP.</span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/UUE68F7.jpg" /><br />
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
​</div>

<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Năp lưng máy được thiết kế khá đơn giản, chất liệu giống với mặt lưng của Playbook và không cho người dùng thay thế pin. Ở giữa là logo BlackBerry giống với thiết kế truyền thống trước đây của hãng.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Cụm camera 13MP của Passport có thiết kế khá đẹp và có phần lồi hơn so với nắp lưng. gần phía trên đỉnh máy có một đường viền kim loại cắt ngang để phân chia khung bỏ sim và thẻ nhớ và phần nắp lưng còn lại.</span></p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/3GoBRYc.jpg" /><br />
​</div>

<p><strong>Trải nghiệm</strong><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">BlackBerry Passport sở hữu màn hình vuông 4.5" sử dụng công nghệ và có độ phân phân giải 1440x1440 (453ppi). Theo cảm nhận của mình thì màn hình của thiết bị chất lượng hình ảnh và màu sắc cao và sắc nét. Khi ra ngoài trời nắng máy vẫn hiển thị tốt nội dung. Mặt kính cường lực Gorilla Glass 3 giúp giảm trầy xước tốt và bảo vệ màn hình hiệu quả hơn.</span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/yOxzfxU.jpg" />​</div>

<p><br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Đặt biệt với màn hình lớn này, Passport hiển thị nội dung đầy đủ hơn, nhiều hơn khi lướt web, xem và soạn văn bản. Mỗi dòng chữ hiện 60 kí tự khác với những chiếc điện thoại khác hiện nay chỉ có khoảng 40 kí tự đổ lại hoặc phải xoay ngang màn hình.</span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/FadOnHq.jpg" />​</div>

<p><br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Bàn phím có cảm ứng giúp thao tác điều hướng khi lướt web hay soạn văn bản khá tiện lợi và nhanh chóng với các thao tác khác như:</span></p>

<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li>Xoá văn bản bằng cách vuốt từ bên phải sang trực tiếp trên bàn phím cứng (giống thao tác khi thực hiện trên bàn phím ảo)</li>
	<li>Vuốt lên để dự đoán từ trên bàn phím cứng</li>
	<li>Bàn phím Passport cũng giống như một trackpad lớn chúng ta có thể di chuyển con trỏ trên đó khi soạn văn bản hoặc chọn từ thay vì phải chạm ngón tay lên màn hình để di chuyển con trỏ như các máy thuần cảm ứng khác làm nội dung bị khuất sau ngón tay rất bất tiện.</li>
</ul>

<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Bàn phím cũng được lượt bỏ đi một dòng, trên các phím chỉ được in chữ cái, các kí tự và phím shift cũng đã bị lượt bỏ. Khi các bạn gõ văn bản sẽ có thểm một dòng kỉ tự nhỏ và phím shift sẽ được hiển thị trên màn hình. Điều này tạm thời khá bất tiện nếu như ban đã quen dùng những chiếc BlackBerry có bàn phím cứng trước đây.</span><br />
<br />
<strong>Hiệu năng</strong><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><strong><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/nARQUOH.jpg" /></strong>​</div>

<p><br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">BlackBerry Passport được trang bị chip Snapdragon 800 Quad-Core 2.2GHz, GPU Adreno 330 và 3 GB RAM, đây cũng là thiết bị có cấu hình cao nhất từ trước đến nay của BlackBerry. Mình đã thử một số ứng dụng và tính năng để kiểm tra xem tốc độ và hiệu năng của máy. Tốc độ khi truy cập và thoát các ứng dụng khá nhanh, nhanh hơn hẵn so với chiếc BlackBerry Z30. Khi vào trình duyệt máy tải hình ảnh khá nhanh và mượt.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Hầu hết các tác vụ như chụp ảnh, quay phim, xử lý ảnh, văn bản lớn đều được cải thiện tốc độ đáng kể, rất nhanh và hầu như không có độ trễ (lag). Nếu như bạn là tín đồ của "dâu đen" và chưa hài lòng với hiệu năng của các model BB10 trước đây thì Passport chính là sự lựa chọn của bạn.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Pin cũng là một đặc điểm khá nổt bật trên chiếc BlackBerry Passport. Với dung pin 3450mAh, hãng đã nói rằng chúng ta có thể sử dụng trọn một ngày với cường độ làm việc cao. Mình chưa sử dụng thiết bị này nhiều nền sẽ có bài đánh giá pin chi tiết và khách quan cho các bạn.</span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><strong>Video trên tay BlackBerry Passport:</strong><br />
[Đang cập nhật...]​</div>

<p><br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Thông số kỹ thuật chính thức của BlackBerry Passport:</span><br />
 </p>

<div class="parseHTML" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<table border="0" style="border-collapse:collapse; width:680px">
	<tbody>
		<tr>
			<th>Brand</th>
			<td style="vertical-align:top">BlackBerry</td>
		</tr>
		<tr>
			<th>Model</th>
			<td style="vertical-align:top">Passport</td>
		</tr>
		<tr>
			<th>Bộ xử lý</th>
			<td style="vertical-align:top">Qualcomm Snapdragon 800 with 2.2GHz Quad-Core CPUs (MSM8974-AA), Card đồ họa Adreno 330, 450MHz GPU</td>
		</tr>
		<tr>
			<th>Bộ nhớ RAM</th>
			<td style="vertical-align:top">3GB LPDDR3 800MHz RAM, 32GB Flash (Bộ nhớ trong), Khe cắm thẻ nhớ MicroSD có thể thay nóng hộn trợ lên đến 64Gb</td>
		</tr>
		<tr>
			<th>Màn hình</th>
			<td style="vertical-align:top">LCD 4.5" tỷ lệ 1:1, Độ phân giải 1440 x 1440 , Sử dụng công nghệ LCD, Mật độ điểm ảnh 453 DPI, Độ sâu màu 24-bit, 10 điểm cảm ứng đa điểm, Sử dụng kính cường lực Gorilla Glass 3</td>
		</tr>
		<tr>
			<th>Camera trước</th>
			<td style="vertical-align:top">2MP Fixed-Focus, Chống rung hình ảnh &amp; video, Zoom kỹ thuật số 3x, Quay video HD 720p</td>
		</tr>
		<tr>
			<th>Camera sau</th>
			<td style="vertical-align:top">Sử dụng cảm biến ảnh 13MP tự động lấy nét (Auto-Focus ), Ổn định hình ảnh quang học (OIS), Lens f2.0, Flash LED, Quay video HD 1080p ở 60fps, Ổn định video 6DOF, Zoom kỹ thuật số 5x, Ổn định hình ảnh liên tục, chạm để lấy nét</td>
		</tr>
		<tr>
			<th>Cổng kết nối</th>
			<td style="vertical-align:top">USB 2.0 hỗ trợ đầy đủ với cáp tiêu chuẩn microUSB 2.0 ( tùy chọn USB 3.0), Cáp-Video Out hỗ trợ với tiêu chuẩn bộ chuyển đổi SlimPort. Bộ chuyển đổi cáp SlimPort có sẵn để hỗ trợ các giao thức followingvideo: HDMI, VGA, DisplayPort 1.1, DisplayPort 1.2, DVI, NFC</td>
		</tr>
		<tr>
			<th>Nguồn sạc</th>
			<td style="vertical-align:top">Bộ chuyển đổi điện AC to 5 V DC / 1.3A</td>
		</tr>
		<tr>
			<th>Pin</th>
			<td style="vertical-align:top">3450mAH tích hợp không thể tháo rời<br />
			 </td>
		</tr>
	</tbody>
</table>
</div>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">Nguồn:techrum.vn</div>
', N'<h3 style="text-align:justify">Review BlackBerry Passport từ Kuala Lumpur</h3>

<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Hôm qua 24/9 BlackBerry đã chính thức ra mắt thiết bị BlackBerry Passport. Đây là chiếc điện thoại thông minh cao cấp mới được sản xuất ngay tại quê hương Canada. Theo BlackBerry thì sản phẩm này sẽ tập trung vào phân khúc khách hàng doanh nghiệp với thiết kế và nhiều tính năng mới hỗ trợ công việc hiệu quả hơn.</span><br />
<br />
<strong>Thiết kế</strong><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Máy được bao quanh bởi viền kim loại, hai bên canh bo nhẹ vào thân máy cho cảm giác cầm rất thoải mái và không bị cấn tay. Với màn hình vuông 4.5" và "bàn phím cứng có cảm ứng" BlackBerry Passport có thiết kế khác hẳn với những chiếc điện thoại trên thị trường hiện nay cũng như các sản phẩm trước đây của hãng. Cảm giác đầu tiên khi cầm là máy rất to và khá sang trọng, tuy nhiên sẽ hơi khó khăn khi sử dụng bằng một tay.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Nhìn tổng thể mặt trước máy khá hài hoà, bàn phím được BlackBerry rút gọn chỉ còn 3 dãy phím. Phía trên là loa thoại kèm các cảm biến cùng camera trước 2 MP.</span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/UUE68F7.jpg" /><br />
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
​</div>

<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Năp lưng máy được thiết kế khá đơn giản, chất liệu giống với mặt lưng của Playbook và không cho người dùng thay thế pin. Ở giữa là logo BlackBerry giống với thiết kế truyền thống trước đây của hãng.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Cụm camera 13MP của Passport có thiết kế khá đẹp và có phần lồi hơn so với nắp lưng. gần phía trên đỉnh máy có một đường viền kim loại cắt ngang để phân chia khung bỏ sim và thẻ nhớ và phần nắp lưng còn lại.</span></p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><br />
<img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/3GoBRYc.jpg" /><br />
​</div>

<p><strong>Trải nghiệm</strong><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">BlackBerry Passport sở hữu màn hình vuông 4.5" sử dụng công nghệ và có độ phân phân giải 1440x1440 (453ppi). Theo cảm nhận của mình thì màn hình của thiết bị chất lượng hình ảnh và màu sắc cao và sắc nét. Khi ra ngoài trời nắng máy vẫn hiển thị tốt nội dung. Mặt kính cường lực Gorilla Glass 3 giúp giảm trầy xước tốt và bảo vệ màn hình hiệu quả hơn.</span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/yOxzfxU.jpg" />​</div>

<p><br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Đặt biệt với màn hình lớn này, Passport hiển thị nội dung đầy đủ hơn, nhiều hơn khi lướt web, xem và soạn văn bản. Mỗi dòng chữ hiện 60 kí tự khác với những chiếc điện thoại khác hiện nay chỉ có khoảng 40 kí tự đổ lại hoặc phải xoay ngang màn hình.</span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/FadOnHq.jpg" />​</div>

<p><br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Bàn phím có cảm ứng giúp thao tác điều hướng khi lướt web hay soạn văn bản khá tiện lợi và nhanh chóng với các thao tác khác như:</span></p>

<ul style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
	<li>Xoá văn bản bằng cách vuốt từ bên phải sang trực tiếp trên bàn phím cứng (giống thao tác khi thực hiện trên bàn phím ảo)</li>
	<li>Vuốt lên để dự đoán từ trên bàn phím cứng</li>
	<li>Bàn phím Passport cũng giống như một trackpad lớn chúng ta có thể di chuyển con trỏ trên đó khi soạn văn bản hoặc chọn từ thay vì phải chạm ngón tay lên màn hình để di chuyển con trỏ như các máy thuần cảm ứng khác làm nội dung bị khuất sau ngón tay rất bất tiện.</li>
</ul>

<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Bàn phím cũng được lượt bỏ đi một dòng, trên các phím chỉ được in chữ cái, các kí tự và phím shift cũng đã bị lượt bỏ. Khi các bạn gõ văn bản sẽ có thểm một dòng kỉ tự nhỏ và phím shift sẽ được hiển thị trên màn hình. Điều này tạm thời khá bất tiện nếu như ban đã quen dùng những chiếc BlackBerry có bàn phím cứng trước đây.</span><br />
<br />
<strong>Hiệu năng</strong><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><strong><img alt="[​IMG]" border="0" class="LbImage bbCodeImage" src="http://i.imgur.com/nARQUOH.jpg" /></strong>​</div>

<p><br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">BlackBerry Passport được trang bị chip Snapdragon 800 Quad-Core 2.2GHz, GPU Adreno 330 và 3 GB RAM, đây cũng là thiết bị có cấu hình cao nhất từ trước đến nay của BlackBerry. Mình đã thử một số ứng dụng và tính năng để kiểm tra xem tốc độ và hiệu năng của máy. Tốc độ khi truy cập và thoát các ứng dụng khá nhanh, nhanh hơn hẵn so với chiếc BlackBerry Z30. Khi vào trình duyệt máy tải hình ảnh khá nhanh và mượt.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Hầu hết các tác vụ như chụp ảnh, quay phim, xử lý ảnh, văn bản lớn đều được cải thiện tốc độ đáng kể, rất nhanh và hầu như không có độ trễ (lag). Nếu như bạn là tín đồ của "dâu đen" và chưa hài lòng với hiệu năng của các model BB10 trước đây thì Passport chính là sự lựa chọn của bạn.</span><br />
<br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Pin cũng là một đặc điểm khá nổt bật trên chiếc BlackBerry Passport. Với dung pin 3450mAh, hãng đã nói rằng chúng ta có thể sử dụng trọn một ngày với cường độ làm việc cao. Mình chưa sử dụng thiết bị này nhiều nền sẽ có bài đánh giá pin chi tiết và khách quan cho các bạn.</span><br />
 </p>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;"><strong>Video trên tay BlackBerry Passport:</strong><br />
[Đang cập nhật...]​</div>

<p><br />
<span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px">Thông số kỹ thuật chính thức của BlackBerry Passport:</span><br />
 </p>

<div class="parseHTML" style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">
<table border="0" style="border-collapse:collapse; width:680px">
	<tbody>
		<tr>
			<th>Brand</th>
			<td style="vertical-align:top">BlackBerry</td>
		</tr>
		<tr>
			<th>Model</th>
			<td style="vertical-align:top">Passport</td>
		</tr>
		<tr>
			<th>Bộ xử lý</th>
			<td style="vertical-align:top">Qualcomm Snapdragon 800 with 2.2GHz Quad-Core CPUs (MSM8974-AA), Card đồ họa Adreno 330, 450MHz GPU</td>
		</tr>
		<tr>
			<th>Bộ nhớ RAM</th>
			<td style="vertical-align:top">3GB LPDDR3 800MHz RAM, 32GB Flash (Bộ nhớ trong), Khe cắm thẻ nhớ MicroSD có thể thay nóng hộn trợ lên đến 64Gb</td>
		</tr>
		<tr>
			<th>Màn hình</th>
			<td style="vertical-align:top">LCD 4.5" tỷ lệ 1:1, Độ phân giải 1440 x 1440 , Sử dụng công nghệ LCD, Mật độ điểm ảnh 453 DPI, Độ sâu màu 24-bit, 10 điểm cảm ứng đa điểm, Sử dụng kính cường lực Gorilla Glass 3</td>
		</tr>
		<tr>
			<th>Camera trước</th>
			<td style="vertical-align:top">2MP Fixed-Focus, Chống rung hình ảnh &amp; video, Zoom kỹ thuật số 3x, Quay video HD 720p</td>
		</tr>
		<tr>
			<th>Camera sau</th>
			<td style="vertical-align:top">Sử dụng cảm biến ảnh 13MP tự động lấy nét (Auto-Focus ), Ổn định hình ảnh quang học (OIS), Lens f2.0, Flash LED, Quay video HD 1080p ở 60fps, Ổn định video 6DOF, Zoom kỹ thuật số 5x, Ổn định hình ảnh liên tục, chạm để lấy nét</td>
		</tr>
		<tr>
			<th>Cổng kết nối</th>
			<td style="vertical-align:top">USB 2.0 hỗ trợ đầy đủ với cáp tiêu chuẩn microUSB 2.0 ( tùy chọn USB 3.0), Cáp-Video Out hỗ trợ với tiêu chuẩn bộ chuyển đổi SlimPort. Bộ chuyển đổi cáp SlimPort có sẵn để hỗ trợ các giao thức followingvideo: HDMI, VGA, DisplayPort 1.1, DisplayPort 1.2, DVI, NFC</td>
		</tr>
		<tr>
			<th>Nguồn sạc</th>
			<td style="vertical-align:top">Bộ chuyển đổi điện AC to 5 V DC / 1.3A</td>
		</tr>
		<tr>
			<th>Pin</th>
			<td style="vertical-align:top">3450mAH tích hợp không thể tháo rời<br />
			 </td>
		</tr>
	</tbody>
</table>
</div>

<div style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 11px; text-align: justify;">Nguồn:techrum.vn</div>
', CAST(N'2017-09-20T00:00:00.000' AS DateTime), N'admin', 0, 0, 1, N'Review BlackBerry Passport tu Kuala Lumpur', 0)
INSERT [dbo].[News] ([ID], [CateId], [Title], [SeoLink], [Title_En], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [PostTime], [Author], [ViewNo], [IsHot], [Status], [UnsignTitle], [LangId]) VALUES (10, 4, N'Tuyển dụng nhân viên Kỹ Thuật Triển Khai', N'tuyen-dung-nhan-vien-ky-thuat-trien-khai', N'Tuyển dụng nhân viên Kỹ Thuật Triển Khai', N'tuyen-dung-nhan-vien-ky-thuat-trien-khai', N'/Uploads/congnghe.jpeg', N' Ngành nghề: IT phần cứng/mạng Mức lương: Thỏa thuận Hình thức làm việc: Toàn thời gian Chức vụ: Nhân viên', N' Ngành nghề: IT phần cứng/mạng Mức lương: Thỏa thuận Hình thức làm việc: Toàn thời gian Chức vụ: Nhân viên', N'<table border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px; text-align:justify; width:679px">
	<tbody>
		<tr>
			<td colspan="2" style="vertical-align:top">
			<p><strong>THÔNG BÁO TUYỂN DỤNG</strong></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Vị trí tuyển dụng:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p><strong>Nhân viên phòng Kỹ Thuật Triển Khai</strong></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Chức vụ:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Nhân viên</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Ngành nghề:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>IT phần cứng/mạng</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Hình thức làm việc:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Toàn thời gian cố định</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Địa điểm làm việc:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Hà Nội</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Mức lương:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Thỏa thuận</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Mô tả công việc:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Hỗ trợ tư vấn kỹ thuật sau bán hàng; Lập kế hoạch, tổ chức, quản lý, giám sát thực hiện mảng triển khai dự án; bảo hành, sửa chữa dịch vụ thiết bị; dịch vụ kinh doanh bán lẻ; dịch vụ bảo trì, sửa chữa dịch vụ;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Số lượng cần tuyển:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>05</p>
			</td>
		</tr>
		<tr>
			<td rowspan="4" style="vertical-align:top">
			<p><strong>Quyền lợi được hưởng:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Làm việc trong môi trường năng động, cạnh tranh&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Mức lương thỏa thuận theo năng lực&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Được hưởng tất cả chế độ đãi ngộ của công ty dành cho nhân viên&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Được đóng BHXH theo quy định của Luật lao động</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>&nbsp;</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Với nhân viên chưa có kinh nghiệm sẽ được đào tạo theo quy trình làm việc của công ty.</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Số năm kinh nghiệm:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Đã có kinh nghiệm triển khai dự án 02 năm</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Yêu cầu bằng cấp:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Đại học</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Yêu cầu giới tính:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Nam</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Yêu cầu độ tuổi:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Ưu tiên: 23 - 29 tuổi</p>
			</td>
		</tr>
		<tr>
			<td rowspan="5" style="vertical-align:top">
			<p><strong>Yêu cầu khác:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>- Độ tuổi: Từ 23 trở lên;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Kỹ năng khác: thuyết phục</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Vi tính: Tốt</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Ưu tiên:&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>+ Ưu tiên ứng viên có bằng tốt nghiệp đại học chuyên ngành: Công nghệ thông tin, Điện tử viễn thông, có các chứng chỉ về CNTT như: CCNA, MCTIP, ....</p>
			</td>
		</tr>
		<tr>
			<td rowspan="8" style="vertical-align:top">
			<p><strong>Hồ sơ bao gồm:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>- Sơ yếu lý lịch có xác nhận&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Đơn xin việc viết tay, 01 bản CV&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Bản sao bằng, chứng chỉ, CMTND&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Giấy khám sức khỏe&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Chấp nhận hồ sơ photo</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Gửi kèm theo bản hồ sơ ứng viên theo mẫu của công ty</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><a href="file:///C:/Documents%20and%20Settings/Admin/My%20Documents/Downloads/(link%20download%20http:/vinhhunggroup.com.vn/Thongtinungvien.doc)" style="color: rgb(39, 39, 39); text-decoration-line: none;">(link download&nbsp;</a><a href="http://vinhhunggroup.com.vn/Thongtinungvien.doc" style="color: rgb(39, 39, 39); text-decoration-line: none;" title="http://vinhhunggroup.com.vn/Thongtinungvien.doc">http://vinhhunggroup.com.vn/Thongtinungvien.doc</a>)&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><em>- Lưu ý: Hồ sơ phải có công chứng và không trả lại nếu không trúng tuyển</em></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Hạn nộp hồ sơ:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>30/09/2015</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Hình thức nộp hồ sơ:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>+ Trực tiếp hoặc qua email:&nbsp;<a href="mailto:thanhhuongtd09@gmail.com" style="color: rgb(39, 39, 39); text-decoration-line: none;">thanhhuongtd09@gmail.com</a></p>

			<p>+ Tại văn phòng công ty, gặp Miss Hương</p>
			</td>
		</tr>
	</tbody>
</table>
', N'<table border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse; color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:11px; text-align:justify; width:679px">
	<tbody>
		<tr>
			<td colspan="2" style="vertical-align:top">
			<p><strong>THÔNG BÁO TUYỂN DỤNG</strong></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Vị trí tuyển dụng:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p><strong>Nhân viên phòng Kỹ Thuật Triển Khai</strong></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Chức vụ:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Nhân viên</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Ngành nghề:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>IT phần cứng/mạng</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Hình thức làm việc:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Toàn thời gian cố định</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Địa điểm làm việc:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Hà Nội</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Mức lương:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Thỏa thuận</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Mô tả công việc:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Hỗ trợ tư vấn kỹ thuật sau bán hàng; Lập kế hoạch, tổ chức, quản lý, giám sát thực hiện mảng triển khai dự án; bảo hành, sửa chữa dịch vụ thiết bị; dịch vụ kinh doanh bán lẻ; dịch vụ bảo trì, sửa chữa dịch vụ;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Số lượng cần tuyển:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>05</p>
			</td>
		</tr>
		<tr>
			<td rowspan="4" style="vertical-align:top">
			<p><strong>Quyền lợi được hưởng:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Làm việc trong môi trường năng động, cạnh tranh&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Mức lương thỏa thuận theo năng lực&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Được hưởng tất cả chế độ đãi ngộ của công ty dành cho nhân viên&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Được đóng BHXH theo quy định của Luật lao động</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>&nbsp;</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Với nhân viên chưa có kinh nghiệm sẽ được đào tạo theo quy trình làm việc của công ty.</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Số năm kinh nghiệm:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Đã có kinh nghiệm triển khai dự án 02 năm</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Yêu cầu bằng cấp:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Đại học</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Yêu cầu giới tính:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Nam</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Yêu cầu độ tuổi:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>Ưu tiên: 23 - 29 tuổi</p>
			</td>
		</tr>
		<tr>
			<td rowspan="5" style="vertical-align:top">
			<p><strong>Yêu cầu khác:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>- Độ tuổi: Từ 23 trở lên;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Kỹ năng khác: thuyết phục</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Vi tính: Tốt</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Ưu tiên:&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>+ Ưu tiên ứng viên có bằng tốt nghiệp đại học chuyên ngành: Công nghệ thông tin, Điện tử viễn thông, có các chứng chỉ về CNTT như: CCNA, MCTIP, ....</p>
			</td>
		</tr>
		<tr>
			<td rowspan="8" style="vertical-align:top">
			<p><strong>Hồ sơ bao gồm:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>- Sơ yếu lý lịch có xác nhận&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Đơn xin việc viết tay, 01 bản CV&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Bản sao bằng, chứng chỉ, CMTND&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Giấy khám sức khỏe&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Chấp nhận hồ sơ photo</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>- Gửi kèm theo bản hồ sơ ứng viên theo mẫu của công ty</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><a href="file:///C:/Documents%20and%20Settings/Admin/My%20Documents/Downloads/(link%20download%20http:/vinhhunggroup.com.vn/Thongtinungvien.doc)" style="color: rgb(39, 39, 39); text-decoration-line: none;">(link download&nbsp;</a><a href="http://vinhhunggroup.com.vn/Thongtinungvien.doc" style="color: rgb(39, 39, 39); text-decoration-line: none;" title="http://vinhhunggroup.com.vn/Thongtinungvien.doc">http://vinhhunggroup.com.vn/Thongtinungvien.doc</a>)&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><em>- Lưu ý: Hồ sơ phải có công chứng và không trả lại nếu không trúng tuyển</em></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Hạn nộp hồ sơ:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>30/09/2015</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Hình thức nộp hồ sơ:</strong></p>
			</td>
			<td style="vertical-align:top">
			<p>+ Trực tiếp hoặc qua email:&nbsp;<a href="mailto:thanhhuongtd09@gmail.com" style="color: rgb(39, 39, 39); text-decoration-line: none;">thanhhuongtd09@gmail.com</a></p>

			<p>+ Tại văn phòng công ty, gặp Miss Hương</p>
			</td>
		</tr>
	</tbody>
</table>
', CAST(N'2017-09-20T00:00:00.000' AS DateTime), N'admin', 0, 0, 1, N'Tuyen dung nhan vien Ky Thuat Trien Khai', 0)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([ID], [Name], [SeoLink], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [LangId], [CreatedUserId], [CreatedFullname], [CreatedDate]) VALUES (3, N'Dịch vụ thẩm đinh giá', N'dich-vu-tham-dinh-gia', N'Dịch vụ thẩm đinh giá', N'dich-vu-tham-dinh-gia', N'/Uploads/congnghe.jpeg', N'Công ty chúng tôi cung cấp dịch vụ: Thẩm định giá tài sản, Dịch vụ thẩm định giá Bất động sản, Xác định giá trị doanh nghiệp, Dịch vụ giá, Đấu giá, Tư vấn, Thẩm dịnh kỹ thuật và công nghệ', N'Công ty chúng tôi cung cấp dịch vụ: Thẩm định giá tài sản, Dịch vụ thẩm định giá Bất động sản, Xác định giá trị doanh nghiệp, Dịch vụ giá, Đấu giá, Tư vấn, Thẩm dịnh kỹ thuật và công nghệ', N'<h3 style="text-align:justify">Dịch vụ thẩm đinh giá</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.&nbsp;</em></strong><strong><em>Thẩm định giá và dịch vụ về giá</em></strong></span></p>

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
', N'<h3 style="text-align:justify">Dịch vụ thẩm đinh giá</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong><em>1.&nbsp;</em></strong><strong><em>Thẩm định giá và dịch vụ về giá</em></strong></span></p>

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
', 0, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Partner] ([ID], [Name], [SeoLink], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [LangId], [CreatedUserId], [CreatedFullname], [CreatedDate]) VALUES (4, N'Cung cấp sản phẩm công nghệ', N'cung-cap-san-pham-cong-nghe', N'Cung cấp sản phẩm công nghệ', N'cung-cap-san-pham-cong-nghe', N'/Uploads/tu van dau tu.jpeg', N'Chuyên cung cấp sản phẩm công nghệ về lĩnh vực công nghệ thông tin, thiết bị y tế, trường học.... Xây dựng các giải pháp công nghệ phục vụ công tác an ninh ', N'Chuyên cung cấp sản phẩm công nghệ về lĩnh vực công nghệ thông tin, thiết bị y tế, trường học.... Xây dựng các giải pháp công nghệ phục vụ công tác an ninh ', N'<h3 style="text-align:justify">Cung cấp sản phẩm công nghệ</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Phân phối các sản phẩm CNTT, viễn thông của các Hãng IBM, COMPAQ, HP, EPSON, DELL, TOSHIBA, CISCO, ORACLE, MICROSOFT, EXCHANGE…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Phát triển và cung cấp giải pháp phần mềm tin học cung cấp giải pháp và tích hợp hệ thống cho các đơn vị và tổ chức.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp các sản phẩm và giải pháp về điện, điện tử, điện lạnh của Hãng LG, SamSung, TOSHIBA, FUNIKI,…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị phục vụ hội nghị, hội thảo, trình chiếu, thiết bị văn phòng: SHARP, TOSHIBA, PANASONIC, SONY, HITACHI…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị giáo dục, thiết bị y tế, thiết bị dạy nghề, thiết bị âm thanh chiếu sáng, thiết bị điều khiển tự động hóa</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị và giải pháp về kiểm tra, giám sát, dò tìm kim loại của các hãng sản xuất thiết bị của Đức, Anh, Mỹ, Trung Quốc</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Dịch vụ lắp đặt, bảo hành, bảo dưỡng, bảo trì các thiết bị công nghệ thông tin, điện, điện tử, điện lạnh và các thiết&nbsp; bị điều khiển tự động, Thiết bị kiểm tra an ninh, giám sát bảo vệ.</span></p>
', N'<h3 style="text-align:justify">Cung cấp sản phẩm công nghệ</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Phân phối các sản phẩm CNTT, viễn thông của các Hãng IBM, COMPAQ, HP, EPSON, DELL, TOSHIBA, CISCO, ORACLE, MICROSOFT, EXCHANGE…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Phát triển và cung cấp giải pháp phần mềm tin học cung cấp giải pháp và tích hợp hệ thống cho các đơn vị và tổ chức.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp các sản phẩm và giải pháp về điện, điện tử, điện lạnh của Hãng LG, SamSung, TOSHIBA, FUNIKI,…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị phục vụ hội nghị, hội thảo, trình chiếu, thiết bị văn phòng: SHARP, TOSHIBA, PANASONIC, SONY, HITACHI…</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị giáo dục, thiết bị y tế, thiết bị dạy nghề, thiết bị âm thanh chiếu sáng, thiết bị điều khiển tự động hóa</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Cung cấp thiết bị và giải pháp về kiểm tra, giám sát, dò tìm kim loại của các hãng sản xuất thiết bị của Đức, Anh, Mỹ, Trung Quốc</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">+ Dịch vụ lắp đặt, bảo hành, bảo dưỡng, bảo trì các thiết bị công nghệ thông tin, điện, điện tử, điện lạnh và các thiết&nbsp; bị điều khiển tự động, Thiết bị kiểm tra an ninh, giám sát bảo vệ.</span></p>
', 0, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Partner] ([ID], [Name], [SeoLink], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [LangId], [CreatedUserId], [CreatedFullname], [CreatedDate]) VALUES (5, N'Tư Vấn Xây dựng', N'tu-van-xay-dung', N'Tư Vấn Xây dựng', N'tu-van-xay-dung', N'/Uploads/tu van dau tu.jpeg', N'Tư vấn, triển khai dự án xây dựng dân dụng, công nghiệp...', N'Tư vấn, triển khai dự án xây dựng dân dụng, công nghiệp...', N'<h3 style="text-align:justify">Tư Vấn Xây dựng</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+</strong><strong>&nbsp;Xây dựng công trình công trình dân dụng, công nghiệp, hạ tầng kỹ thuật</strong></span></p>

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
', N'<h3 style="text-align:justify">Tư Vấn Xây dựng</h3>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small"><strong>+</strong><strong>&nbsp;Xây dựng công trình công trình dân dụng, công nghiệp, hạ tầng kỹ thuật</strong></span></p>

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
', 0, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[Partner] ([ID], [Name], [SeoLink], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [LangId], [CreatedUserId], [CreatedFullname], [CreatedDate]) VALUES (6, N'Tư vấn đầu tư', N'tu-van-dau-tu', N'Tư vấn đầu tư', N'tu-van-dau-tu', N'/Uploads/congnghe.jpeg', N'Tư vấn đầu tư, Tư vấn quản lý dự án, Tư vấn thiết kế xây dựng, Tư vấn giám sát xây dựng, giám sát lắp đặt thiết bị, Tư vấn đấu thầu, Tư vấn kiểm định chất lượng thiết bị', N'Tư vấn đầu tư, Tư vấn quản lý dự án, Tư vấn thiết kế xây dựng, Tư vấn giám sát xây dựng, giám sát lắp đặt thiết bị, Tư vấn đấu thầu, Tư vấn kiểm định chất lượng thiết bị', N'<h3 style="text-align:justify">Tư vấn đầu tư</h3>

<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">+&nbsp; Tư vấn đầu tư</span></strong></p>

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
', N'<h3 style="text-align:justify">Tư vấn đầu tư</h3>

<p style="text-align:justify"><strong><span style="font-family:arial,helvetica,sans-serif; font-size:small">+&nbsp; Tư vấn đầu tư</span></strong></p>

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
', 0, 1, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Partner] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId]) VALUES (1, 0, N'', N'Dự án 1', N'Dự án 1', N'du-an-1', N'Du an 1', N'Dự án 1', N'du-an-1', N'', N'Dự án 1', N'Dự án 1', N'<p>Dự án 1</p>
', N'<p>Dự án 1</p>
', 0, 1, 1, 1, NULL, 0, 0)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId]) VALUES (2, 0, N'', N'aaaa', N'Phần mềm quản lý công văn', N'phan-mem-quan-ly-cong-van', N'Phan mem quan ly cong van', N'Phần mềm quản lý công văn', N'phan-mem-quan-ly-cong-van', N'/_ATI/2017/9/20/-FM-pmxaydung.png', N'Phần mềm quản lý công văn Adsoft của công ty chung tôi được viết trên nền công nghệ mới nhất, tiên tiến nhất dựa trên các tác nghiệp văn phòng về công tác quản lý công văn và đáp ứng yêu cầu của bên sử dụng.', N'Phần mềm quản lý công văn Adsoft của công ty chung tôi được viết trên nền công nghệ mới nhất, tiên tiến nhất dựa trên các tác nghiệp văn phòng về công tác quản lý công văn và đáp ứng yêu cầu của bên sử dụng.', N'<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm quản lý công văn Adsoft của công ty chung tôi được viết trên nền công nghệ mới nhất, tiên tiến nhất dựa trên các tác nghiệp văn phòng về công tác quản lý công văn và đáp ứng yêu cầu của bên sử dụng.</span></p>
', N'<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm quản lý công văn Adsoft của công ty chung tôi được viết trên nền công nghệ mới nhất, tiên tiến nhất dựa trên các tác nghiệp văn phòng về công tác quản lý công văn và đáp ứng yêu cầu của bên sử dụng.</span></p>
', 0, 1, 1, 0, NULL, 0, 0)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId]) VALUES (3, 1, N'', N'', N'Quản lý nhà hàng, khách sạn', N'quan-ly-nha-hang-khach-san', N'Quan ly nha hang khach san', N'Quản lý nhà hàng, khách sạn', N'quan-ly-nha-hang-khach-san', N'/Uploads/pm_xay_dung.png', N'Quản lý nhà hàng, khách sạn', N'Quản lý nhà hàng, khách sạn', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với mục đích cung cấp một giải pháp tốt nhất phục vụ hiệu quả trong quá trình quản lý nhà hàng khách sạn. Hệ thống phần mềm quản lý nhà hàng khách sạn Adsoft của công ty chúng tôi được viết trên nền công nghệ mới nhất, tiên tiến nhất...</span></p>

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
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Với mục đích cung cấp một giải pháp tốt nhất phục vụ hiệu quả trong quá trình quản lý nhà hàng khách sạn. Hệ thống phần mềm quản lý nhà hàng khách sạn Adsoft của công ty chúng tôi được viết trên nền công nghệ mới nhất, tiên tiến nhất...</span></p>

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
', 1, 1, 1, 0, N'', 0, 0)
INSERT [dbo].[Product] ([ID], [CateId], [CreateDate], [Customer], [Name], [SeoLink], [UnsignName], [EnglishName], [SeoLink_En], [Image], [Summary], [Summary_En], [Content], [Content_En], [ViewNo], [OrderNo], [Status], [IsDelete], [Tags], [IsHot], [LangId]) VALUES (4, 1, N'', N'', N'Phần mềm kế toán HCSN', N'phan-mem-ke-toan-hcsn', N'Phan mem ke toan HCSN', N'Phần mềm kế toán HCSN', N'phan-mem-ke-toan-hcsn', N'/Uploads/pm_xay_dung.png', N'Phần mềm kế toán HCSN', N'Phần mềm kế toán HCSN', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm kế toán HCSN phiên bản Adsoft – HCSN 2006 của công ty chúng tôi được xây dựng và hoàn thiện theo Quyết định số 19/2006/QĐ – BTC ngày 30/03/2006 của Bộ trưởng Bộ Tài chính về việc ban hành chế độ kế toán hành chính sự nghiệp và đáp ứng tiêu chuẩn và điều kiện của phần mềm kế toán theo Thông tư 103/2005/TT – BTC ngày 24/11/2005 của Bộ Tài chính.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm kế toán hành chính sự nghiệp của công ty chúng tôi được viết trên nền công nghệ tiên tiến tuân thủ theo các văn bản của nhà nước như sau:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quyết định số 19/2006/QĐ-BTC của Bộ trưởng Bộ Tài chính ngày 30/03/2006 về việc Ban hành chế độ kế toán đối với đơn vị hành chính sự nghiệp.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Nghị định số 130/2005/NĐ- CP ngày 17/10/2005 của Chính phủ quy định về chế độ tự chủ, tự chịu trách nhiệm về sử dụng biên chế và kinh phí quản lý hành chính với các cơ quan nhà nước, chính phủ.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thông tư 60/TT-BTC ngày 14/06/2007 của Bộ tài chính hướng dẫn thi hành một số điều của Luật quản lý thuế và hướng dẫn thi hành Nghị định số 85/2007/NĐ-CP ngày 25/05/2007 của Chính phủ quy định chi tiết về một số điều của Luật Quản lý thuế.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Căn cứ Luật ngân sách Nhà nước số 01/2002/QH11 ngày 16/12/2002.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Căn cứ Luật kế toán 03/2003/QH11 ngày 17/06/2003 và Nghị định số 128/2004/NĐ-CP ngày 31/05/2004 của Chính phủ quy định chi tiết và hướng dẫn thi hành một số điều của Luật kế toán áp dụng trong Luật kế toán Nhà nước</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Các văn bản về chế độ quản lý tài chính kế toán</span></p>
', N'<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm kế toán HCSN phiên bản Adsoft – HCSN 2006 của công ty chúng tôi được xây dựng và hoàn thiện theo Quyết định số 19/2006/QĐ – BTC ngày 30/03/2006 của Bộ trưởng Bộ Tài chính về việc ban hành chế độ kế toán hành chính sự nghiệp và đáp ứng tiêu chuẩn và điều kiện của phần mềm kế toán theo Thông tư 103/2005/TT – BTC ngày 24/11/2005 của Bộ Tài chính.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">Phần mềm kế toán hành chính sự nghiệp của công ty chúng tôi được viết trên nền công nghệ tiên tiến tuân thủ theo các văn bản của nhà nước như sau:</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Quyết định số 19/2006/QĐ-BTC của Bộ trưởng Bộ Tài chính ngày 30/03/2006 về việc Ban hành chế độ kế toán đối với đơn vị hành chính sự nghiệp.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Nghị định số 130/2005/NĐ- CP ngày 17/10/2005 của Chính phủ quy định về chế độ tự chủ, tự chịu trách nhiệm về sử dụng biên chế và kinh phí quản lý hành chính với các cơ quan nhà nước, chính phủ.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Thông tư 60/TT-BTC ngày 14/06/2007 của Bộ tài chính hướng dẫn thi hành một số điều của Luật quản lý thuế và hướng dẫn thi hành Nghị định số 85/2007/NĐ-CP ngày 25/05/2007 của Chính phủ quy định chi tiết về một số điều của Luật Quản lý thuế.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Căn cứ Luật ngân sách Nhà nước số 01/2002/QH11 ngày 16/12/2002.</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Căn cứ Luật kế toán 03/2003/QH11 ngày 17/06/2003 và Nghị định số 128/2004/NĐ-CP ngày 31/05/2004 của Chính phủ quy định chi tiết và hướng dẫn thi hành một số điều của Luật kế toán áp dụng trong Luật kế toán Nhà nước</span></p>

<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif; font-size:small">- Các văn bản về chế độ quản lý tài chính kế toán</span></p>
', 7, 1, 1, 0, N'', 0, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [FullName], [Title], [Password], [Image], [IsDelete], [Status], [LangId]) VALUES (1, N'admin', N'admin', N'admin', N'c2f1366c51911b52369fe27df307ff84', N'', 0, 1, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  StoredProcedure [dbo].[sp_Contact_GetLastest]    Script Date: 9/21/2017 8:14:00 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CustomerSay_GetByOrderNo]    Script Date: 9/21/2017 8:14:00 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_News_SearchByTitle]    Script Date: 9/21/2017 8:14:00 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Tracker_GetLastest]    Script Date: 9/21/2017 8:14:00 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_User_GetLastest]    Script Date: 9/21/2017 8:14:00 AM ******/
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

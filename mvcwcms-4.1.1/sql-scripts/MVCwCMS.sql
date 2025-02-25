USE [MVCwCMS]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_admin_groups](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tb_groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_admin_groups_pages_permissions]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_admin_groups_pages_permissions](
	[GroupId] [int] NOT NULL,
	[PageId] [int] NOT NULL,
	[PermissionCode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tb_groups_pages_permissions] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[PageId] ASC,
	[PermissionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_admin_pages]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_admin_pages](
	[PageId] [int] IDENTITY(1,1) NOT NULL,
	[PageParentId] [int] NULL,
	[PageName] [nvarchar](255) NOT NULL,
	[Target] [nvarchar](255) NOT NULL,
	[Url] [nvarchar](1000) NULL,
	[Ordering] [int] NOT NULL,
	[ShowInMenu] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CssClass] [nchar](255) NULL,
 CONSTRAINT [PK_tb_pages] PRIMARY KEY CLUSTERED 
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_admin_users]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_admin_users](
	[UserName] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Salt] [nvarchar](255) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_tb_admin_users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_content_templates]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_content_templates](
	[ContentTemplateId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tb_cms_content_templates] PRIMARY KEY CLUSTERED 
(
	[ContentTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_countries]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_countries](
	[CountryCode] [char](2) NOT NULL,
	[CountryName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tb_cms_countries] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_global_configuration]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_global_configuration](
	[Id] [int] NOT NULL,
	[SiteName] [nvarchar](255) NOT NULL,
	[MetaTitle] [nvarchar](255) NULL,
	[MetaKeywords] [nvarchar](500) NULL,
	[MetaDescription] [nvarchar](1000) NULL,
	[Robots] [nvarchar](255) NULL,
	[NotificationEmail] [nvarchar](255) NOT NULL,
	[IsCanonicalizeActive] [bit] NOT NULL,
	[HostNameLabel] [nvarchar](20) NULL,
	[DomainName] [nvarchar](255) NOT NULL,
	[BingVerificationCode] [nvarchar](1000) NULL,
	[GoogleVerificationCode] [nvarchar](1000) NULL,
	[GoogleAnalyticsTrackingCode] [nvarchar](max) NULL,
	[GoogleSearchCode] [nvarchar](1000) NULL,
	[IsOffline] [bit] NOT NULL,
	[OfflineCode] [nvarchar](255) NOT NULL,
	[ServerTimeZone] [nvarchar](255) NOT NULL,
	[DateFormat] [nvarchar](20) NOT NULL,
	[TimeFormat] [nvarchar](20) NOT NULL,
	[DefaultLanguageCode] [char](2) NOT NULL,
	[DefaultErrorPageTemplateId] [int] NOT NULL,
 CONSTRAINT [PK_tb_cms_global_configuration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_languages]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_languages](
	[LanguageCode] [char](2) NOT NULL,
	[LanguageName] [nvarchar](255) NOT NULL,
	[LanguageNameOriginal] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tb_cms_languages] PRIMARY KEY CLUSTERED 
(
	[LanguageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_media_galleries]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_media_galleries](
	[MediaGalleryCode] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PublishDate] [datetime] NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tb_cms_media_galleries] PRIMARY KEY CLUSTERED 
(
	[MediaGalleryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_media_galleries_languages]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_media_galleries_languages](
	[MediaGalleryCode] [nvarchar](50) NOT NULL,
	[LanguageCode] [char](2) NOT NULL,
	[MediaGalleryTitle] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tb_cms_media_galleries_languages] PRIMARY KEY CLUSTERED 
(
	[MediaGalleryCode] ASC,
	[LanguageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_media_items]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_media_items](
	[MediaItemId] [int] IDENTITY(1,1) NOT NULL,
	[MediaGalleryCode] [nvarchar](50) NOT NULL,
	[IsMainItem] [bit] NOT NULL,
	[MediaItemPath] [nvarchar](max) NOT NULL,
	[MediaTypeId] [int] NOT NULL,
	[Ordering] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tb_cms_media_items] PRIMARY KEY CLUSTERED 
(
	[MediaItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_media_items_languages]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_media_items_languages](
	[MediaItemId] [int] NOT NULL,
	[LanguageCode] [char](2) NOT NULL,
	[MediaItemTitle] [nvarchar](255) NULL,
 CONSTRAINT [PK_tb_cms_media_items_languages] PRIMARY KEY CLUSTERED 
(
	[MediaItemId] ASC,
	[LanguageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_media_types]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_media_types](
	[MediaTypeId] [int] NOT NULL,
	[MediaTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_cms_media_types] PRIMARY KEY CLUSTERED 
(
	[MediaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_news]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_news](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[NewsDate] [datetime] NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[MainImageFilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_cms_news] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_news_categories]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_news_categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tb_cms_news_categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_news_categories_languages]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_news_categories_languages](
	[CategoryId] [int] NOT NULL,
	[LanguageCode] [char](2) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tb_cms_news_categories_languages] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[LanguageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_news_comments]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_news_comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[NewsId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Comment] [nvarchar](1000) NOT NULL,
	[CommentDate] [datetime] NOT NULL,
	[SubscriptionEmail] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tb_cms_news_comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_news_config]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_news_config](
	[Id] [int] NOT NULL,
	[IsNewsActive] [bit] NOT NULL,
	[NewsPageId] [int] NULL,
	[NumberOfNewsInSummary] [int] NOT NULL,
	[IsCommentAutoApproved] [bit] NOT NULL,
 CONSTRAINT [PK_tb_cms_news_config] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_news_languages]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_news_languages](
	[NewsId] [int] NOT NULL,
	[LanguageCode] [char](2) NOT NULL,
	[NewsTitle] [nvarchar](255) NOT NULL,
	[NewsContent] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tb_cms_news_languages] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC,
	[LanguageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_page_templates]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_page_templates](
	[PageTemplateId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[HtmlCode] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tb_cms_templates] PRIMARY KEY CLUSTERED 
(
	[PageTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_pages]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_pages](
	[PageId] [int] IDENTITY(1,1) NOT NULL,
	[PageParentId] [int] NULL,
	[Segment] [nvarchar](255) NULL,
	[PageName] [nvarchar](255) NOT NULL,
	[Target] [nvarchar](255) NOT NULL,
	[Url] [nvarchar](1000) NULL,
	[Ordering] [int] NOT NULL,
	[ShowInMainMenu] [bit] NOT NULL,
	[ShowInBottomMenu] [bit] NOT NULL,
	[ShowInSitemap] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PageTemplateId] [int] NULL,
	[IsAccessRestricted] [bit] NOT NULL,
	[IsHomePage] [bit] NOT NULL,
 CONSTRAINT [PK_tb_cms_pages] PRIMARY KEY CLUSTERED 
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_pages_languages]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_pages_languages](
	[PageId] [int] NOT NULL,
	[LanguageCode] [char](2) NOT NULL,
	[MetaTagTitle] [nvarchar](255) NULL,
	[MetaTagKeywords] [nvarchar](500) NULL,
	[MetaTagDescription] [nvarchar](1000) NULL,
	[HtmlCode] [nvarchar](max) NULL,
	[MenuName] [nvarchar](255) NULL,
	[Robots] [nvarchar](255) NULL,
 CONSTRAINT [PK_tb_cms_pages_languages] PRIMARY KEY CLUSTERED 
(
	[PageId] ASC,
	[LanguageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_shared_content]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_shared_content](
	[SharedContentCode] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tb_cms_shared_content_1] PRIMARY KEY CLUSTERED 
(
	[SharedContentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_shared_content_languages]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_shared_content_languages](
	[SharedContentCode] [nvarchar](255) NOT NULL,
	[LanguageCode] [char](2) NOT NULL,
	[HtmlCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_cms_shared_content_languages] PRIMARY KEY CLUSTERED 
(
	[SharedContentCode] ASC,
	[LanguageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_subscription_statuses]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_subscription_statuses](
	[SubscriptionStatusId] [int] NOT NULL,
	[SubscriptionStatusName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tb_cms_user_status] PRIMARY KEY CLUSTERED 
(
	[SubscriptionStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_subscriptions]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_subscriptions](
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Salt] [nvarchar](255) NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Birthdate] [datetime] NULL,
	[PhoneNumber] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[PostCode] [nvarchar](255) NULL,
	[CountryCode] [char](2) NULL,
	[SubscriptionStatusId] [int] NOT NULL,
	[WantsNewsletter] [bit] NOT NULL,
	[JoinDate] [datetime] NOT NULL,
	[IpAddress] [nvarchar](255) NOT NULL,
	[ActivationKey] [nvarchar](255) NOT NULL,
	[PasswordResetKey] [nvarchar](255) NULL,
	[Notes] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_cms_subscriptions] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cms_subscriptions_config]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cms_subscriptions_config](
	[Id] [int] NOT NULL,
	[IsSubscriptionActive] [bit] NOT NULL,
	[RegisterPageId] [int] NULL,
	[SignInPageId] [int] NULL,
	[ForgotPasswordPageId] [int] NULL,
	[ChangePasswordPageId] [int] NULL,
	[ProfilePageId] [int] NULL,
 CONSTRAINT [PK_tb_cms_subscriptions_config] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[fn_full_segment]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_full_segment] ( @PageID INT )
RETURNS TABLE
AS
RETURN
(
	WITH Recursive AS
	(
		SELECT
			PageId, 
				CAST(Segment AS VARCHAR(500)) AS 'FullSegment', 
				1 AS 'Level'
		FROM 
			dbo.tb_cms_pages
		WHERE
			PageParentId = NULL

		UNION ALL

		SELECT
			tbl.PageId, 
				CAST(r.FullSegment + '/' + tbl.Segment AS VARCHAR(500)) AS 'FullSegment', 
				r.Level + 1 AS 'Level' 
		FROM
			dbo.tb_cms_pages tbl
		INNER JOIN  
			Recursive r ON tbl.PageParentId = r.PageId
	)
	SELECT PageId, FullSegment FROM Recursive WHERE PageId = @PageID
)



GO
/****** Object:  UserDefinedFunction [dbo].[fn_split_delimited_string]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_split_delimited_string]
(
	@Delimiter NCHAR(1),
	@String NVARCHAR(MAX)
)
RETURNS TABLE 
AS
RETURN 
(
	WITH Split(stpos, endpos)
	AS(
		SELECT 0 AS stpos, CHARINDEX(@Delimiter, REPLACE(REPLACE(LTrim(RTrim(REPLACE(REPLACE(@String,' ','¡'),@Delimiter,' '))),' ',@Delimiter),'¡',' ')) AS endpos
		UNION ALL
		SELECT CAST(endpos + 1 AS int), CHARINDEX(@Delimiter, REPLACE(REPLACE(LTrim(RTrim(REPLACE(REPLACE(@String,' ','¡'),@Delimiter,' '))),' ',@Delimiter),'¡',' '), endpos + 1)
		FROM Split
		WHERE endpos > 0
	)
	SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS [Ordinal],
           SUBSTRING(REPLACE(REPLACE(LTrim(RTrim(REPLACE(REPLACE(@String,' ','¡'),@Delimiter,' '))),' ',@Delimiter),'¡',' '), stpos, COALESCE(NULLIF(endpos, 0), LEN(REPLACE(REPLACE(LTrim(RTrim(REPLACE(REPLACE(@String,' ','¡'),@Delimiter,' '))),' ',@Delimiter),'¡',' ')) + 1) - stpos) AS [Value]
	FROM Split
)


GO
SET IDENTITY_INSERT [dbo].[tb_admin_groups] ON 

INSERT [dbo].[tb_admin_groups] ([GroupId], [GroupName]) VALUES (1, N'Administrator')
INSERT [dbo].[tb_admin_groups] ([GroupId], [GroupName]) VALUES (2, N'Content editor')
SET IDENTITY_INSERT [dbo].[tb_admin_groups] OFF
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 2, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 5, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 7, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 8, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 9, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 11, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 11, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 11, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 11, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 11, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 12, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 14, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 14, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 14, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 14, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 14, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 16, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 16, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 16, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 16, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 16, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 17, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 18, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 19, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 20, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 21, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 22, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 22, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 22, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 22, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 22, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 23, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 23, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 23, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 23, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 23, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 24, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 24, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 24, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 24, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 24, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 25, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 25, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 25, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 25, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 25, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 30, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 31, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 32, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 33, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 34, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 35, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 36, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 37, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 38, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 39, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 40, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 41, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 42, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 45, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 45, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 45, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 45, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 45, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 46, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 47, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 48, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 49, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 49, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 49, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 49, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 49, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 50, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 51, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 53, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 54, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 55, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 56, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 57, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 82, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 83, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 84, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 84, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 84, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 84, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 84, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 85, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 86, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 87, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 88, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 89, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 107, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 107, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 107, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 107, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 107, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 108, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 109, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 110, N'browse')
GO
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 111, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 112, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1111, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1111, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1111, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1111, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1111, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1112, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1113, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1114, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1115, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1115, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1115, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1115, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1115, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1116, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1117, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1118, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1119, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1120, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1121, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1121, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1121, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1121, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1121, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1122, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (1, 1123, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 7, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 8, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 9, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 12, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 14, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 14, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 14, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 14, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 14, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 21, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 22, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 22, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 22, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 22, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 22, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 23, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 23, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 23, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 23, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 23, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 24, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 24, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 24, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 24, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 24, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 36, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 37, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 38, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 39, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 40, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 41, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 42, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 49, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 49, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 49, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 49, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 49, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 50, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 51, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 53, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 54, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 55, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 56, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 111, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 112, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1111, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1111, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1111, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1111, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1111, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1112, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1113, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1115, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1115, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1115, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1115, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1115, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1116, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1117, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1118, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1119, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1121, N'add')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1121, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1121, N'delete')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1121, N'edit')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1121, N'read')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1122, N'browse')
INSERT [dbo].[tb_admin_groups_pages_permissions] ([GroupId], [PageId], [PermissionCode]) VALUES (2, 1123, N'browse')
SET IDENTITY_INSERT [dbo].[tb_admin_pages] ON 

INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1, NULL, N'{#Dashboard}', N'_self', N'/Admin', 5, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (2, NULL, N'{#System}', N'_self', NULL, 7, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (5, 2, N'{#GlobalConfiguration}', N'_self', N'/Admin/GlobalConfiguration', 1, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (7, NULL, N'{#Content}', N'_self', NULL, 8, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (8, NULL, N'{#OpenWebsite}', N'_blank', N'/', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (9, NULL, N'{#Logout}', N'_self', N'/Admin/Logout', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (11, 83, N'{#Users}', N'_self', N'/Admin/Users', 1, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (12, 11, N'{#ChangePassword}', N'_self', N'/Admin/ChangePassword', 4, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (14, 7, N'{#CmsPages}', N'_self', N'/Admin/CmsPages', 2, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (16, 2, N'{#Languages}', N'_self', N'/Admin/Languages', 2, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (17, 11, N'{#UsersAdd}', N'_self', N'/Admin/UsersAdd', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (18, 11, N'{#UsersEdit}', N'_self', N'/Admin/UsersEdit', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (19, 11, N'{#UsersDelete}', N'_self', N'/Admin/UsersDelete', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (20, 2, N'{#ClearCache}', N'_self', N'/Admin/ClearCache', 7, 1, 1, N'confirm-action                                                                                                                                                                                                                                                 ')
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (21, 7, N'{#FileManager}', N'_self', N'/Admin/FileManager', 1, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (22, 7, N'{#News}', N'_self', N'/Admin/News', 5, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (23, 7, N'{#MediaGalleries}', N'_self', N'/Admin/MediaGalleries', 6, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (24, 83, N'{#Subscriptions}', N'_self', N'/Admin/Subscriptions', 4, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (25, 2, N'{#PageTemplates}', N'_self', N'/Admin/PageTemplates', 3, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (30, 16, N'{#LanguagesDelete}', N'_self', N'/Admin/LanguagesDelete', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (31, 16, N'{#LanguagesEdit}', N'_self', N'/Admin/LanguagesEdit', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (32, 16, N'{#LanguagesAdd}', N'_self', N'/Admin/LanguagesAdd', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (33, 25, N'{#PageTemplatesDelete}', N'_self', N'/Admin/PageTemplatesDelete', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (34, 25, N'{#PageTemplatesEdit}', N'_self', N'/Admin/PageTemplatesEdit', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (35, 25, N'{#PageTemplatesAdd}', N'_self', N'/Admin/PageTemplatesAdd', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (36, 14, N'{#CmsPagesAdd}', N'_self', N'/Admin/CmsPagesAdd', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (37, 14, N'{#CmsPagesEdit}', N'_self', N'/Admin/CmsPagesEdit', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (38, 14, N'{#CmsPagesDelete}', N'_self', N'/Admin/CmsPagesDelete', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (39, 14, N'{#CmsPagesMoveUp}', N'_self', N'/Admin/CmsPagesMoveUp', 4, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (40, 14, N'{#CmsPagesMoveDown}', N'_self', N'/Admin/CmsPagesMoveDown', 5, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (41, 14, N'{#PageContent}', N'_self', N'/Admin/CmsPagesLanguages', 6, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (42, 21, N'{#IsFileUsed}', N'_self', N'/Admin/FileManagerIsFileUsed', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (45, 2, N'{#ContentTemplates}', N'_self', N'/Admin/ContentTemplates', 4, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (46, 45, N'{#ContentTemplatesDelete}', N'_self', N'/Admin/ContentTemplatesDelete', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (47, 45, N'{#ContentTemplatesEdit}', N'_self', N'/Admin/ContentTemplatesEdit', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (48, 45, N'{#ContentTemplatesAdd}', N'_self', N'/Admin/ContentTemplatesAdd', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (49, 7, N'{#SharedContent}', N'_self', N'/Admin/SharedContent', 3, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (50, 49, N'{#SharedContentDelete}', N'_self', N'/Admin/SharedContentDelete', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (51, 49, N'{#SharedContentAddEdit}', N'_self', N'/Admin/SharedContentAddEdit', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (53, NULL, N'{#Login}', N'_self', N'/Admin/Login', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (54, 24, N'{#SubscriptionsAdd}', N'_self', N'/Admin/SubscriptionsAdd', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (55, 24, N'{#SubscriptionsEdit}', N'_self', N'/Admin/SubscriptionsEdit', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (56, 24, N'{#SubscriptionsDelete}', N'_self', N'/Admin/SubscriptionsDelete', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (57, 2, N'{#SubscriptionsConfiguration}', N'_self', N'/Admin/SubscriptionsConfiguration', 5, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (82, NULL, N'{#Impersonate}', N'_self', N'/Admin/Impersonate', 4, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (83, NULL, N'{#Permissions}', N'_self', NULL, 6, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (84, 83, N'{#AdminPages}', N'_self', N'/Admin/AdminPages', 3, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (85, 84, N'{#AdminPagesAdd}', N'_self', N'/Admin/AdminPagesAdd', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (86, 84, N'{#AdminPagesEdit}', N'_self', N'/Admin/AdminPagesEdit', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (87, 84, N'{#AdminPagesDelete}', N'_self', N'/Admin/AdminPagesDelete', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (88, 84, N'{#AdminPagesMoveUp}', N'_self', N'/Admin/AdminPagesMoveUp', 4, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (89, 84, N'{#AdminPagesMoveDown}', N'_self', N'/Admin/AdminPagesMoveDown', 5, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (107, 83, N'{#Groups}', N'_self', N'/Admin/Groups', 2, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (108, 107, N'{#GroupsAdd}', N'_self', N'/Admin/GroupsAdd', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (109, 107, N'{#GroupsEdit}', N'_self', N'/Admin/GroupsEdit', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (110, 107, N'{#GroupsDelete}', N'_self', N'/Admin/GroupsDelete', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (111, 23, N'{#MediaGalleriesAddEdit}', N'_self', N'/Admin/MediaGalleriesAddEdit', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (112, 23, N'{#MediaGalleriesDelete}', N'_self', N'/Admin/MediaGalleriesDelete', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1111, 23, N'{#MediaItems}', N'_self', N'/Admin/MediaItems', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1112, 1111, N'{#MediaItemsEdit}', N'_self', N'/Admin/MediaItemsEdit', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1113, 1111, N'{#MediaItemsAdd}', N'_self', N'/Admin/MediaItemsAdd', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1114, 2, N'{#UninstallCms}', N'_self', N'/Admin/UninstallCms', 8, 1, 1, N'confirm-action                                                                                                                                                                                                                                                 ')
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1115, 7, N'{#NewsCategories}', N'_self', N'/Admin/NewsCategories', 4, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1116, 1115, N'{#NewsCategoriesAddEdit}', N'_self', N'/Admin/NewsCategoriesAddEdit', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1117, 1115, N'{#NewsCategoriesDelete}', N'_self', N'/Admin/NewsCategoriesDelete', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1118, 22, N'{#NewsAddEdit}', N'_self', N'/Admin/NewsAddEdit', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1119, 22, N'{#NewsDelete}', N'_self', N'/Admin/NewsDelete', 2, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1120, 2, N'{#NewsConfiguration}', N'_self', N'/Admin/NewsConfiguration', 6, 1, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1121, 22, N'{#NewsComments}', N'_self', N'/Admin/NewsComments', 3, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1122, 1121, N'{#NewsCommentsEdit}', N'_self', N'/Admin/NewsCommentsEdit', 1, 0, 1, NULL)
INSERT [dbo].[tb_admin_pages] ([PageId], [PageParentId], [PageName], [Target], [Url], [Ordering], [ShowInMenu], [IsActive], [CssClass]) VALUES (1123, 1121, N'{#NewsCommentsDelete}', N'_self', N'/Admin/NewsCommentsDelete', 2, 0, 1, NULL)
SET IDENTITY_INSERT [dbo].[tb_admin_pages] OFF
INSERT [dbo].[tb_admin_users] ([UserName], [Password], [Salt], [FullName], [Email], [GroupId]) VALUES (N'Administrator', N'73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk92zNVnXLu8YiiDo6PyUrFqa3W0/UjS', N'dszVZ1y7vGIog6Oj8lKxamt1tP1I0g==', N'Predefined administrator', NULL, 1)
INSERT [dbo].[tb_admin_users] ([UserName], [Password], [Salt], [FullName], [Email], [GroupId]) VALUES (N'Operator', N'73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk82CSfMuD5Ps++iKkZjv+i4FZV/WpdA', N'NgknzLg+T7PvoipGY7/ouBWVf1qXQA==', N'Operator', N'johndoe@sharklasers.com', 2)
SET IDENTITY_INSERT [dbo].[tb_cms_content_templates] ON 

INSERT [dbo].[tb_cms_content_templates] ([ContentTemplateId], [Title], [Description], [Content], [IsActive]) VALUES (1, N'Two columns', N'Bootstrap template (8-4)', N'<div class="row">
    <div class="col-sm-12">
        <h1>Title here</h1>
    </div>
</div>
<div class="row">
    <div class="col-sm-8">Left column here</div>
    <div class="col-sm-4">Right column here</div>
</div>', 1)
INSERT [dbo].[tb_cms_content_templates] ([ContentTemplateId], [Title], [Description], [Content], [IsActive]) VALUES (3, N'One column', N'Bootstrap template (12)', N'<div class="row">
    <div class="col-sm-12">
        <h1>Title here</h1>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">Full column here</div>
</div>', 1)
SET IDENTITY_INSERT [dbo].[tb_cms_content_templates] OFF
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AD', N'Andorra')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AE', N'United Arab Emirates')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AF', N'Afghanistan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AG', N'Antigua and Barbuda')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AI', N'Anguilla')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AL', N'Albania')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AM', N'Armenia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AO', N'Angola')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AP', N'Asia/Pacific Region')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AQ', N'Antarctica')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AR', N'Argentina')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AS', N'American Samoa')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AT', N'Austria')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AU', N'Australia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AW', N'Aruba')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AX', N'Aland Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'AZ', N'Azerbaijan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BA', N'Bosnia and Herzegovina')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BB', N'Barbados')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BD', N'Bangladesh')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BE', N'Belgium')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BF', N'Burkina Faso')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BG', N'Bulgaria')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BH', N'Bahrain')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BI', N'Burundi')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BJ', N'Benin')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BL', N'Saint Barthelemy')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BM', N'Bermuda')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BN', N'Brunei Darussalam')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BO', N'Bolivia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BQ', N'Bonaire, Saint Eustatius and Saba')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BR', N'Brazil')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BS', N'Bahamas')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BT', N'Bhutan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BW', N'Botswana')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BY', N'Belarus')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'BZ', N'Belize')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CA', N'Canada')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CC', N'Cocos (Keeling) Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CD', N'Congo, The Democratic Republic of the')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CF', N'Central African Republic')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CG', N'Congo')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CH', N'Switzerland')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CI', N'Cote D''Ivoire')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CK', N'Cook Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CL', N'Chile')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CM', N'Cameroon')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CN', N'China')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CO', N'Colombia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CR', N'Costa Rica')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CU', N'Cuba')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CV', N'Cape Verde')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CW', N'Curacao')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CX', N'Christmas Island')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CY', N'Cyprus')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'CZ', N'Czech Republic')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'DE', N'Germany')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'DJ', N'Djibouti')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'DK', N'Denmark')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'DM', N'Dominica')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'DO', N'Dominican Republic')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'DZ', N'Algeria')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'EC', N'Ecuador')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'EE', N'Estonia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'EG', N'Egypt')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'EH', N'Western Sahara')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ER', N'Eritrea')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ES', N'Spain')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ET', N'Ethiopia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'EU', N'Europe')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'FI', N'Finland')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'FJ', N'Fiji')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'FK', N'Falkland Islands (Malvinas)')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'FM', N'Micronesia, Federated States of')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'FO', N'Faroe Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'FR', N'France')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GA', N'Gabon')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GB', N'United Kingdom')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GD', N'Grenada')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GE', N'Georgia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GF', N'French Guiana')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GG', N'Guernsey')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GH', N'Ghana')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GI', N'Gibraltar')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GL', N'Greenland')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GM', N'Gambia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GN', N'Guinea')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GP', N'Guadeloupe')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GQ', N'Equatorial Guinea')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GR', N'Greece')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GS', N'South Georgia and the South Sandwich Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GT', N'Guatemala')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GU', N'Guam')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GW', N'Guinea-Bissau')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'GY', N'Guyana')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'HK', N'Hong Kong')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'HN', N'Honduras')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'HR', N'Croatia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'HT', N'Haiti')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'HU', N'Hungary')
GO
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ID', N'Indonesia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'IE', N'Ireland')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'IL', N'Israel')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'IM', N'Isle of Man')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'IN', N'India')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'IO', N'British Indian Ocean Territory')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'IQ', N'Iraq')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'IR', N'Iran, Islamic Republic of')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'IS', N'Iceland')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'IT', N'Italy')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'JE', N'Jersey')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'JM', N'Jamaica')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'JO', N'Jordan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'JP', N'Japan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KE', N'Kenya')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KG', N'Kyrgyzstan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KH', N'Cambodia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KI', N'Kiribati')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KM', N'Comoros')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KN', N'Saint Kitts and Nevis')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KP', N'Korea, Democratic People''s Republic of')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KR', N'Korea, Republic of')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KW', N'Kuwait')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KY', N'Cayman Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'KZ', N'Kazakhstan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LA', N'Lao People''s Democratic Republic')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LB', N'Lebanon')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LC', N'Saint Lucia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LI', N'Liechtenstein')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LK', N'Sri Lanka')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LR', N'Liberia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LS', N'Lesotho')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LT', N'Lithuania')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LU', N'Luxembourg')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LV', N'Latvia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'LY', N'Libya')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MA', N'Morocco')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MC', N'Monaco')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MD', N'Moldova, Republic of')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ME', N'Montenegro')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MF', N'Saint Martin')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MG', N'Madagascar')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MH', N'Marshall Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MK', N'Macedonia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ML', N'Mali')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MM', N'Myanmar')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MN', N'Mongolia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MO', N'Macau')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MP', N'Northern Mariana Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MQ', N'Martinique')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MR', N'Mauritania')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MS', N'Montserrat')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MT', N'Malta')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MU', N'Mauritius')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MV', N'Maldives')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MW', N'Malawi')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MX', N'Mexico')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MY', N'Malaysia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'MZ', N'Mozambique')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NA', N'Namibia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NC', N'New Caledonia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NE', N'Niger')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NF', N'Norfolk Island')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NG', N'Nigeria')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NI', N'Nicaragua')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NL', N'Netherlands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NO', N'Norway')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NP', N'Nepal')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NR', N'Nauru')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NU', N'Niue')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'NZ', N'New Zealand')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'OM', N'Oman')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PA', N'Panama')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PE', N'Peru')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PF', N'French Polynesia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PG', N'Papua New Guinea')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PH', N'Philippines')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PK', N'Pakistan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PL', N'Poland')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PM', N'Saint Pierre and Miquelon')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PN', N'Pitcairn Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PR', N'Puerto Rico')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PS', N'Palestinian Territory')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PT', N'Portugal')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PW', N'Palau')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'PY', N'Paraguay')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'QA', N'Qatar')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'RE', N'Reunion')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'RO', N'Romania')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'RS', N'Serbia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'RU', N'Russian Federation')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'RW', N'Rwanda')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SA', N'Saudi Arabia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SB', N'Solomon Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SC', N'Seychelles')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SD', N'Sudan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SE', N'Sweden')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SG', N'Singapore')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SH', N'Saint Helena')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SI', N'Slovenia')
GO
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SJ', N'Svalbard and Jan Mayen')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SK', N'Slovakia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SL', N'Sierra Leone')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SM', N'San Marino')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SN', N'Senegal')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SO', N'Somalia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SR', N'Suriname')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SS', N'South Sudan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ST', N'Sao Tome and Principe')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SV', N'El Salvador')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SX', N'Sint Maarten (Dutch part)')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SY', N'Syrian Arab Republic')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'SZ', N'Swaziland')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TC', N'Turks and Caicos Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TD', N'Chad')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TF', N'French Southern Territories')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TG', N'Togo')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TH', N'Thailand')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TJ', N'Tajikistan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TK', N'Tokelau')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TL', N'Timor-Leste')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TM', N'Turkmenistan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TN', N'Tunisia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TO', N'Tonga')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TR', N'Turkey')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TT', N'Trinidad and Tobago')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TV', N'Tuvalu')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TW', N'Taiwan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'TZ', N'Tanzania, United Republic of')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'UA', N'Ukraine')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'UG', N'Uganda')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'UM', N'United States Minor Outlying Islands')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'US', N'United States')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'UY', N'Uruguay')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'UZ', N'Uzbekistan')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'VA', N'Holy See (Vatican City State)')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'VC', N'Saint Vincent and the Grenadines')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'VE', N'Venezuela')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'VG', N'Virgin Islands, British')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'VI', N'Virgin Islands, U.S.')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'VN', N'Vietnam')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'VU', N'Vanuatu')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'WF', N'Wallis and Futuna')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'WS', N'Samoa')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'YE', N'Yemen')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'YT', N'Mayotte')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ZA', N'South Africa')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ZM', N'Zambia')
INSERT [dbo].[tb_cms_countries] ([CountryCode], [CountryName]) VALUES (N'ZW', N'Zimbabwe')
INSERT [dbo].[tb_cms_global_configuration] ([Id], [SiteName], [MetaTitle], [MetaKeywords], [MetaDescription], [Robots], [NotificationEmail], [IsCanonicalizeActive], [HostNameLabel], [DomainName], [BingVerificationCode], [GoogleVerificationCode], [GoogleAnalyticsTrackingCode], [GoogleSearchCode], [IsOffline], [OfflineCode], [ServerTimeZone], [DateFormat], [TimeFormat], [DefaultLanguageCode], [DefaultErrorPageTemplateId]) VALUES (1, N'My website', N'My website', N'MVC, CMS, Content Management System', N'Model View Controller Web Content Management System', N'index, follow', N'info@mywebsite.com', 0, N'www.', N'mywebsite.com', NULL, NULL, NULL, NULL, 0, N'JcUI28hd', N'GMT Standard Time', N'dd/MM/yyyy', N'hh:mm tt', N'en', 1057)
INSERT [dbo].[tb_cms_languages] ([LanguageCode], [LanguageName], [LanguageNameOriginal], [IsActive]) VALUES (N'de', N'German', N'Deutsch', 0)
INSERT [dbo].[tb_cms_languages] ([LanguageCode], [LanguageName], [LanguageNameOriginal], [IsActive]) VALUES (N'en', N'English', N'English', 1)
INSERT [dbo].[tb_cms_languages] ([LanguageCode], [LanguageName], [LanguageNameOriginal], [IsActive]) VALUES (N'es', N'Spanish', N'Español', 0)
INSERT [dbo].[tb_cms_languages] ([LanguageCode], [LanguageName], [LanguageNameOriginal], [IsActive]) VALUES (N'fr', N'French', N'Français', 0)
INSERT [dbo].[tb_cms_languages] ([LanguageCode], [LanguageName], [LanguageNameOriginal], [IsActive]) VALUES (N'it', N'Italian', N'Italiano', 1)
INSERT [dbo].[tb_cms_media_galleries] ([MediaGalleryCode], [IsActive], [PublishDate], [UserName]) VALUES (N'GalleryExample', 1, CAST(N'2015-11-04T20:40:00.000' AS DateTime), N'Administrator')
INSERT [dbo].[tb_cms_media_galleries_languages] ([MediaGalleryCode], [LanguageCode], [MediaGalleryTitle]) VALUES (N'GalleryExample', N'en', N'Gallery example')
INSERT [dbo].[tb_cms_media_galleries_languages] ([MediaGalleryCode], [LanguageCode], [MediaGalleryTitle]) VALUES (N'GalleryExample', N'it', N'Esempio galleria')
SET IDENTITY_INSERT [dbo].[tb_cms_media_items] ON 

INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (53, N'GalleryExample', 1, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-01.jpg', 1, 1, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (54, N'GalleryExample', 0, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-09.jpg', 1, 2, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (55, N'GalleryExample', 0, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-08.jpg', 1, 3, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (56, N'GalleryExample', 0, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-07.jpg', 1, 4, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (57, N'GalleryExample', 0, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-06.jpg', 1, 5, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (58, N'GalleryExample', 0, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-05.jpg', 1, 6, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (59, N'GalleryExample', 0, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-04.jpg', 1, 7, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (60, N'GalleryExample', 0, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-03.jpg', 1, 8, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (61, N'GalleryExample', 0, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-02.jpg', 1, 9, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (62, N'GalleryExample', 0, N'/public/41646D696E6973747261746F72Images/GalleryExample/photo-example-10.jpg', 1, 10, 1)
INSERT [dbo].[tb_cms_media_items] ([MediaItemId], [MediaGalleryCode], [IsMainItem], [MediaItemPath], [MediaTypeId], [Ordering], [IsActive]) VALUES (63, N'GalleryExample', 0, N'https://www.youtube.com/watch?v=LjCzPp-MK48', 2, 11, 1)
SET IDENTITY_INSERT [dbo].[tb_cms_media_items] OFF
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (53, N'en', N'My flower')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (53, N'it', N'Il mio fiore')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (54, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (54, N'it', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (55, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (55, N'it', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (56, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (56, N'it', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (57, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (57, N'it', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (58, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (58, N'it', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (59, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (59, N'it', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (60, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (60, N'it', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (61, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (61, N'it', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (62, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (62, N'it', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (63, N'en', N'')
INSERT [dbo].[tb_cms_media_items_languages] ([MediaItemId], [LanguageCode], [MediaItemTitle]) VALUES (63, N'it', N'')
INSERT [dbo].[tb_cms_media_types] ([MediaTypeId], [MediaTypeName]) VALUES (1, N'{#MediaTypePhoto}')
INSERT [dbo].[tb_cms_media_types] ([MediaTypeId], [MediaTypeName]) VALUES (2, N'{#MediaTypeYouTubeVideo}')
SET IDENTITY_INSERT [dbo].[tb_cms_news] ON 

INSERT [dbo].[tb_cms_news] ([NewsId], [NewsDate], [UserName], [IsActive], [CategoryId], [MainImageFilePath]) VALUES (3, CAST(N'2015-06-01T10:35:00.000' AS DateTime), N'Administrator', 1, 4, NULL)
INSERT [dbo].[tb_cms_news] ([NewsId], [NewsDate], [UserName], [IsActive], [CategoryId], [MainImageFilePath]) VALUES (5, CAST(N'2016-01-11T21:45:00.000' AS DateTime), N'Administrator', 1, 5, N'/public/41646D696E6973747261746F72Images/News/Sport/WorldCup2014PublicTv/cover.jpg')
INSERT [dbo].[tb_cms_news] ([NewsId], [NewsDate], [UserName], [IsActive], [CategoryId], [MainImageFilePath]) VALUES (6, CAST(N'2015-12-10T10:35:00.000' AS DateTime), N'Administrator', 1, 3, N'/public/41646D696E6973747261746F72Images/News/Technology/SmallBeautiful/cover.jpg')
INSERT [dbo].[tb_cms_news] ([NewsId], [NewsDate], [UserName], [IsActive], [CategoryId], [MainImageFilePath]) VALUES (7, CAST(N'2015-10-14T10:15:00.000' AS DateTime), N'Administrator', 1, 4, N'/public/41646D696E6973747261746F72Images/News/Entertainment/CorpseFlower/cover.jpg')
INSERT [dbo].[tb_cms_news] ([NewsId], [NewsDate], [UserName], [IsActive], [CategoryId], [MainImageFilePath]) VALUES (8, CAST(N'2015-12-20T11:35:00.000' AS DateTime), N'Administrator', 1, 3, N'/public/41646D696E6973747261746F72Images/News/Technology/TechnologyAndCreativity/cover.jpg')
INSERT [dbo].[tb_cms_news] ([NewsId], [NewsDate], [UserName], [IsActive], [CategoryId], [MainImageFilePath]) VALUES (10, CAST(N'2016-01-01T16:35:00.000' AS DateTime), N'Administrator', 1, 3, N'/public/41646D696E6973747261746F72Images/News/Technology/BackdoorProtest/cover.jpg')
INSERT [dbo].[tb_cms_news] ([NewsId], [NewsDate], [UserName], [IsActive], [CategoryId], [MainImageFilePath]) VALUES (12, CAST(N'2016-01-02T18:35:00.000' AS DateTime), N'Administrator', 1, 1, N'/public/41646D696E6973747261746F72Images/News/World/Crocodile/cover.jpg')
INSERT [dbo].[tb_cms_news] ([NewsId], [NewsDate], [UserName], [IsActive], [CategoryId], [MainImageFilePath]) VALUES (13, CAST(N'2016-01-11T10:15:00.000' AS DateTime), N'Administrator', 1, 1, N'/public/41646D696E6973747261746F72Images/News/World/GasEmissions/cover.jpg')
SET IDENTITY_INSERT [dbo].[tb_cms_news] OFF
SET IDENTITY_INSERT [dbo].[tb_cms_news_categories] ON 

INSERT [dbo].[tb_cms_news_categories] ([CategoryId], [IsActive]) VALUES (1, 1)
INSERT [dbo].[tb_cms_news_categories] ([CategoryId], [IsActive]) VALUES (2, 1)
INSERT [dbo].[tb_cms_news_categories] ([CategoryId], [IsActive]) VALUES (3, 1)
INSERT [dbo].[tb_cms_news_categories] ([CategoryId], [IsActive]) VALUES (4, 1)
INSERT [dbo].[tb_cms_news_categories] ([CategoryId], [IsActive]) VALUES (5, 1)
SET IDENTITY_INSERT [dbo].[tb_cms_news_categories] OFF
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (1, N'en', N'World')
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (1, N'it', N'Mondo')
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (2, N'en', N'Business')
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (2, N'it', N'Affari')
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (3, N'en', N'Technology')
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (3, N'it', N'Tecnologia')
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (4, N'en', N'Entertainment')
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (4, N'it', N'Intrattenimento')
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (5, N'en', N'Sport')
INSERT [dbo].[tb_cms_news_categories_languages] ([CategoryId], [LanguageCode], [CategoryName]) VALUES (5, N'it', N'Sport')
SET IDENTITY_INSERT [dbo].[tb_cms_news_comments] ON 

INSERT [dbo].[tb_cms_news_comments] ([CommentId], [NewsId], [IsActive], [Comment], [CommentDate], [SubscriptionEmail]) VALUES (1, 5, 1, N'This is really interesting!', CAST(N'2016-01-02T18:35:45.000' AS DateTime), N'johndoe@sharklasers.com')
INSERT [dbo].[tb_cms_news_comments] ([CommentId], [NewsId], [IsActive], [Comment], [CommentDate], [SubscriptionEmail]) VALUES (5, 12, 1, N'This is really scary :)', CAST(N'2016-01-09T13:07:57.083' AS DateTime), N'johndoe@sharklasers.com')
INSERT [dbo].[tb_cms_news_comments] ([CommentId], [NewsId], [IsActive], [Comment], [CommentDate], [SubscriptionEmail]) VALUES (8, 12, 1, N'I''ve never seen such a big crocodile.. I''d love to see one like this!', CAST(N'2016-01-09T13:36:58.670' AS DateTime), N'johndoe@sharklasers.com')
INSERT [dbo].[tb_cms_news_comments] ([CommentId], [NewsId], [IsActive], [Comment], [CommentDate], [SubscriptionEmail]) VALUES (26, 8, 1, N'I think it''s possible.', CAST(N'2016-01-13T21:39:06.033' AS DateTime), N'johndoe@sharklasers.com')
SET IDENTITY_INSERT [dbo].[tb_cms_news_comments] OFF
INSERT [dbo].[tb_cms_news_config] ([Id], [IsNewsActive], [NewsPageId], [NumberOfNewsInSummary], [IsCommentAutoApproved]) VALUES (1, 1, 2365, 2, 1)
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (3, N'en', N'Cat slaps dog in face', N'<p>Cat ipsum dolor sit amet, pee in the shoe claws in your leg. Paw at your fat belly meowing non stop for food but chase imaginary bugs, for missing until dinner time. Stare out the window hate dog, yet intrigued by the shower, and if it fits, i sits.</p>
<p>Unwrap toilet paper put toy mouse in food bowl run out of litter box at full speed . Missing until dinner time hate dog. Under the bed under the bed. Steal the warm chair right after you get up purr while eating or peer out window, chatter at birds, lure them to mouth kick up litter if it fits, i sits i like big cats and i can not lie. Loves cheeseburgers attack the dog then pretend like nothing happened yet meowing non stop for food refuse to drink water except out of someone''s glass or eat and than sleep on your face spread kitty litter all over house.</p>
<p>Behind the couch human is washing you why halp oh the horror flee scratch hiss bite yet hate dog attack the dog then pretend like nothing happened and play time, so under the bed, for kitty power! . Brown cats with pink ears under the bed knock over christmas tree for swat turds around the house so you call this cat food?.</p>
<p>Chew foot caticus cuteicus yet scratch the furniture so hunt anything that moves if it fits, i sits but paw at your fat belly. Destroy the blinds lick the plastic bag has closed eyes but still sees you and bathe private parts with tongue then lick owner''s face meow all night having their mate disturbing sleeping humans.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (3, N'it', N'Gatto colpisce cane in faccia', N'<p>Gatto&nbsp;ipsum dolor sit amet, pee in the shoe claws in your leg. Paw at your fat belly meowing non stop for food but chase imaginary bugs, for missing until dinner time. Stare out the window hate dog, yet intrigued by the shower, and if it fits, i sits.</p>
<p>Unwrap toilet paper put toy mouse in food bowl run out of litter box at full speed . Missing until dinner time hate dog. Under the bed under the bed. Steal the warm chair right after you get up purr while eating or peer out window, chatter at birds, lure them to mouth kick up litter if it fits, i sits i like big cats and i can not lie. Loves cheeseburgers attack the dog then pretend like nothing happened yet meowing non stop for food refuse to drink water except out of someone''s glass or eat and than sleep on your face spread kitty litter all over house.</p>
<p>Behind the couch human is washing you why halp oh the horror flee scratch hiss bite yet hate dog attack the dog then pretend like nothing happened and play time, so under the bed, for kitty power! . Brown cats with pink ears under the bed knock over christmas tree for swat turds around the house so you call this cat food?.</p>
<p>Chew foot caticus cuteicus yet scratch the furniture so hunt anything that moves if it fits, i sits but paw at your fat belly. Destroy the blinds lick the plastic bag has closed eyes but still sees you and bathe private parts with tongue then lick owner''s face meow all night having their mate disturbing sleeping humans.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (5, N'en', N'Soccer - One billion watched 2014 World Cup final on TV', N'<p>More than one billion television viewers watched last year''s World Cup soccer final between Germany and Argentina in Brazil although audience figures for the tournament were slightly down because of adverse kickoff times, according to a FIFA report on Wednesday.</p>
<p>The report, produced by Kantar Media, said 695 million people watched at least 20 minutes of the final at home, a 12 percent rise on 2010, with out-of-home viewers taking the figure past one billion.</p>
<p>The global in-home audience for the whole tournament, based on at least 20 minutes of viewing, was 2.1 billion in 207 countries - down four percent on 2010 owing to matches kicking off in the middle of the night in Asia.</p>
<p>Some 280 million watched matches online or on mobile devices.</p>
<p>Audience reach was highest in China, where 252.3 million viewers tuned in during the tournament, 18.1 percent of the total population, while Germany set an all-time domestic viewing record when an average of 34.5 million people watched the country beat Argentina in the final.</p>
<p>The growth in interest in soccer in the United States was reflected in an average of 18.2 million people watching the U.S. versus Portugal, making it the most-watched soccer match ever on U.S. television.</p>
<p>In all, broadcasters showed some 98,087 hours of match footage from Brazil, up 36 percent from 2010.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (5, N'it', N'Calcio - Un miliardo di persone hanno guardato la finale dei Mondiali 2014 in TV', N'Pi&ugrave; di un miliardo di telespettatori a guardare la Coppa del Mondo di calcio finale dello scorso anno tra la Germania e l''Argentina in Brasile, anche se i dati di ascolto per il torneo sono stati leggermente verso il basso a causa di tempi avversi kickoff, secondo un rapporto della FIFA il Mercoled&igrave;.<br /><br />Il rapporto, prodotto da Kantar Media, ha detto che 695 milioni di persone hanno visto almeno 20 minuti della finale in casa, con un aumento del 12 per cento rispetto al 2010, con out-of-home spettatori prendendo la cifra passato un miliardo.<br /><br />Il pubblico globale in casa per tutto il torneo, sulla base di almeno 20 minuti di visione, &egrave; stato 2,1 miliardi in 207 paesi - gi&ugrave; quattro per cento rispetto al 2010 a causa di partite dando il via nel cuore della notte in Asia.<br /><br />Alcuni 280 milioni di partite online o su dispositivi mobili guardato.<br /><br />Pubblico portata &egrave; stato pi&ugrave; alto in Cina, dove 252,3 milioni di spettatori sintonizzati durante il torneo, 18,1 per cento della popolazione totale, mentre la Germania stabilito un record di visione domestica di tutti i tempi in cui una media di 34,5 milioni di persone hanno visto il paese ha battuto l''Argentina in finale.<br /><br />La crescita di interesse nel calcio negli Stati Uniti si &egrave; riflesso in una media di 18,2 milioni di persone che guardano gli Stati Uniti contro il Portogallo, che la rende la partita di calcio pi&ugrave; seguita sempre in televisione degli Stati Uniti.<br /><br />In tutto, le emittenti hanno mostrato alcuni 98087 ore di partita riprese dal Brasile, in crescita del 36 per cento a partire dal 2010.')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (6, N'en', N'Small is beautiful: Technology in your pocket', N'<div>
<p>The year is half over and we&rsquo;ve seen a mountain of gadgets. Apple Watch and wearables generally; virtual reality viewers; 3-D printers that are also scanners; drones; the explosion of the ultra-high-definition format (4K) for televisions and gaming; incredible high-resolution screens on phones; faster mobile networks &mdash; the list goes on.</p>
</div>
<p>In terms of impact, Elon Musk&rsquo;s Powerwall lithium-ion battery unit takes the cake. It stores renewable energy locally. Powerwall units are already sold out until mid-next year.</p>
<p>Meanwhile, the nanotechnology revolution continues. Computer components are even tinier. For example, a computer graphics card for gamers released this month by chipmaker AMD has 8.5 billion transistors. It means you can buy a fast, high-end computer that fits in your pocket, complete with one terabyte of storage, with a low-power central processing unit and large yet cheaper solid state drives. Lower power means less heat generated, less ventilation needed, hence less space.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (6, N'it', N'Piccolo è bello: la tecnologia in tasca', N'<p>L''anno &egrave; mezzo finito e abbiamo visto una montagna di gadget. Apple Osservare e indossabili in generale; spettatori di realt&agrave; virtuale; Stampanti 3D che sono anche scanner; droni; l''esplosione del formato ad altissima definizione (4K) per i televisori e giochi; incredibile schermi ad alta risoluzione sui telefoni; reti di telefonia mobile pi&ugrave; veloci - l''elenco potrebbe continuare.<br /><br />In termini di impatto, Powerwall unit&agrave; agli ioni di litio di Elon Musk prende la torta. Memorizza le energie rinnovabili a livello locale. Unit&agrave; Powerwall sono gi&agrave; esauriti fino a met&agrave; del prossimo anno.<br /><br />Nel frattempo, la rivoluzione delle nanotecnologie continua. I componenti del computer sono ancora pi&ugrave; piccoli. Ad esempio, una scheda grafica del computer per i giocatori pubblicato questo mese da produttore di chip AMD ha 8,5 miliardi di transistor. Significa che &egrave; possibile acquistare un computer veloce, high-end che pu&ograve; stare in tasca, completo di un terabyte di spazio di archiviazione, con una unit&agrave; a bassa potenza di elaborazione centrale e dischi allo stato solido ancora pi&ugrave; conveniente di grandi dimensioni. Potenza inferiore significa meno calore generato, meno la ventilazione necessaria, quindi meno spazio.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (7, N'en', N'Here''s why they call this the corpse flower', N'<p>A rotten stench has been wafting through a greenhouse at the Denver Botanic Gardens &mdash; and visitors are all too eager to breathe it in. Who knows if they&rsquo;ll ever get a second chance? <br /><br />The odiferous offender is a plant native to the Indonesian island of Sumatra and known commonly as the "corpse flower" &mdash; for reasons that are pungently apparent when it starts blooming. At that point, it becomes a botanical stink bomb, emitting a noisome odor evolved to attract certain beetles and flies, which unwittingly spread the plant&rsquo;s pollen. All told, the blooming process can take about 36 hours and won''t happen again for years &mdash; if ever.<br /><br />&ldquo;It&rsquo;s something that is potentially a once-in-a-lifetime opportunity to see,&rdquo; says Nick Snakenberg, curator of tropical plants at the Denver Botanic Gardens. &ldquo;We made the mistake of saying it might bloom on [August] 16th, and we had people lined up at the gate.&rdquo; The garden has several corpse flowers, but this is this particular flower''s debut bloom. The process started on Tuesday evening and finished on Thursday. This week, a corpse flower is expected to bloom in Chicago.<br /><br />This corpse flower in Denver has now died, but another in Chicago is about to bloom. Credit: Scott Dressel-Martin The corpse flower belongs to the same family as common houseplants such as philodendrons and peace lilies. But unlike its more domestic cousins, the place you&rsquo;ll most likely find this tropical species &mdash; which can reach 15 to 20 feet in its vegetative state, according to Snakenberg &mdash; is in university and botanical garden collections. In the floral stage, the plant is shorter.<br />It takes a lot of energy, and a long time, to build up a bloom. When a corpse flower finally starts the process &mdash; the Denver specimen is an estimated 12 or 13 years old &mdash; a leaf-like sheath called a spathe unfurls, revealing a ruffly, burgundy interior that starkly contrasts with the plant&rsquo;s green exterior. In its fanciful shape and two-toned hues, the structure is reminiscent of a weird hat you might see in a Tim Burton film.<br /><br />The corpse flower draws crowds eager to smell it''s awful odor. Credit: Scott Dressel-Martin But the plant&rsquo;s true centerpiece is a fleshy, protruding structure called the spadix, which inspired its scientific name, Amorphophallus titanum. Translation? &ldquo;The giant misshapen phallus,&rdquo; says Snakenberg. The spadix also heats up, probably as a way to better waft the stench to would-be pollinators.<br />Out of sight at the base of the spadix hides the actual flower &mdash; or flowers, to be more precise. In fact, the corpse flower is the largest unbranched inflorescence, or collection of individual flowers, on earth. The female flowers mature first, followed by the male ones, which produce the pollen that the insects collect.<br /><br />The odor that emanates from the flowers is a putrid potpourri of chemicals, explains Todd Brethauer, a science education volunteer at the United States Botanic Garden, in a video produced by the American Chemical Society. Characteristic molecules include dimethyl trisfulfide, &ldquo;which you can sort of describe as the smell of rotting onions or rotting cabbage,&rdquo; says Brethauer, as well as trimethylamine, &ldquo;which is the essence of rotting fish,&rdquo; and isovaleric acid &mdash; &ldquo;essentially the smell of old sweat socks.&rdquo;<br /><br />Given the plant&rsquo;s fetid scent, why do visitors come in droves to sniff and see? &ldquo;I think people have a similar reaction to this as they would to, say, a roller coaster ride or a haunted house or something like that,&rdquo; says Snakenberg. &ldquo;I think it''s just wanting this sensory overload in a safe environment. A shock to the system.&rdquo;<br /><br />But maybe those visceral thrills will translate into something with staying power &mdash; at least, that&rsquo;s what Snakenberg hopes, anyway.<br /><br />In the way that big cats and bears excite zoo goers about the animal kingdom, &ldquo;I think having plants like the Amorphophallus titanum species in our collection is a real strong tool to excite people about plants,&rdquo; he says, &ldquo;and when we get excited about plants and about animals, we get excited about conserving them in the wild and protecting their environments. And when we protect the megaflora and the megafauna, just by default, we&rsquo;re protecting everything else that lives in those environments&rdquo; &mdash; the stinky, the sweet and all that''s in between.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (7, N'it', N'Ecco perché questo fiore si chiama cadavere', N'<p>Un puzzo di marcio &egrave; stato che si diffondeva una serra presso i Giardini Botanici di Denver - ei visitatori sono tutti troppo ansiosi di respirare in Chiss&agrave; se faranno mai avere una seconda possibilit&agrave;.?<br />L''autore del reato odiferous &egrave; una pianta originaria per l''isola indonesiana di Sumatra e conosciuto comunemente come il "fiore cadavere" - per ragioni che sono evidenti pungente quando inizia la fioritura. A quel punto, diventa una bombetta puzzolente botanico, che emettono un odore fetido evoluti per attrarre alcuni coleotteri e mosche, che si diffuse inconsapevolmente polline della pianta. Tutto sommato, il processo di fioritura pu&ograve; durare circa 36 ore e non si ripeter&agrave; per anni - se mai.</p>
<p><br />"E ''qualcosa che &egrave; potenzialmente una volta-in-a-vita per vedere", dice Nick Snakenberg, curatore di piante tropicali ai giardini botanici di Denver. "Abbiamo fatto l''errore di dire che potrebbe sbocciare in [agosto] 16, e avevamo persone in fila davanti al cancello." Il giardino ha molti fiori di cadaveri, ma questo &egrave; il debutto fioritura di questo particolare fiore. Il processo &egrave; iniziato il Marted&igrave; sera e finito il Giovedi.</p>
<p>Questa settimana, un fiore cadavere &egrave; prevista per fiorire in Chicago.</p>
<p><br />Questo fiore cadavere a Denver &egrave; ormai morto, ma un altro a Chicago sta per fiorire. Credito: Scott Dressel-Martin Il fiore cadavere appartiene alla stessa famiglia di piante da appartamento comuni come filodendro e gigli di pace. Ma a differenza dei suoi cugini pi&ugrave; domestiche, il luogo che molto probabilmente trovato questa specie tropicale - che pu&ograve; raggiungere i 15 a 20 piedi nel suo stato vegetativo, secondo Snakenberg - &egrave; nelle universit&agrave; e collezioni botaniche. Nella fase floreale, la pianta &egrave; pi&ugrave; breve.</p>
<p><br />Ci vuole un sacco di energia, e un lungo tempo, per costruire un fiore. Quando un fiore cadavere infine avvia il processo - il campione di Denver &egrave; una stima di 12 o 13 anni - una guaina foglia-come chiamato una spata dispiega, rivelando un ruffly, interno bordeaux che contrasta fortemente con l''esterno verde della pianta. Nella sua forma fantasiosa e tinte bicolore, la struttura ricorda un cappello strano si potrebbe vedere in un film di Tim Burton.</p>
<p><br />Il fiore cadavere richiama folle desiderose di sentire l''odore &egrave; terribile odore. Credito: Scott Dressel-Martin Ma il vero fulcro della pianta &egrave; una struttura sporgente carnosa chiamata spadice, che ha ispirato il suo nome scientifico, Amorphophallus titanum. La traduzione? "Il fallo gigante deforme", dice Snakenberg. Il spadix riscalda anche, probabilmente, come un modo per aleggiare meglio la puzza di aspiranti impollinatori.</p>
<p><br />Lontano dagli occhi, alla base dello spadice nasconde il fiore reale - o fiori, per essere pi&ugrave; precisi. Infatti, il fiore cadavere &egrave; la pi&ugrave; grande infiorescenza ramificata, o raccolta di singoli fiori, sulla terra. I fiori femminili maturano prima, seguite da quelle maschili, che producono il polline che gli insetti raccolgono.</p>
<p><br />L''odore che emana dai fiori &egrave; un pot-pourri putrido di sostanze chimiche, spiega Todd Brethauer, un volontario educazione scientifica presso il Giardino Botanico Stati Uniti, in un video prodotto dalla American Chemical Society. Molecole caratteristiche includono dimetil trisfulfide, "che potete sorta di descrivere come l''odore di putrefazione cipolle o marcire cavolo", dice Brethauer, cos&igrave; come trimetilammina ", che &egrave; l''essenza di pesce marcio", e acido isovalerico - "essenzialmente l''odore di vecchi calzini di sudore. "</p>
<p><br />Dato profumo fetida della pianta, perch&eacute; i visitatori vengono a frotte per annusare e vedere? "Penso che le persone hanno una reazione simile a questo come farebbero a, diciamo, un giro sulle montagne russe o una casa infestata o qualcosa del genere", dice Snakenberg. "Penso che sia questo che vogliono semplicemente sovraccarico sensoriale in un ambiente sicuro. Una scossa al sistema. "</p>
<p><br />Ma forse queste emozioni viscerali si tradurranno in qualcosa con capacit&agrave; di resistenza - almeno, questo &egrave; quello che spera Snakenberg, comunque.</p>
<p><br />Nel modo in cui grandi felini e orsi eccitano zoo frequentatori sul regno animale, "Penso che avere piante come le specie Amorphophallus titanum della nostra collezione &egrave; un vero e proprio strumento forte per eccitare la gente sulle piante," dice, "e quando abbiamo emoziono sulle piante e sugli animali, otteniamo entusiasti di conservarli nel selvaggio e proteggere i loro ambienti. E quando proteggiamo la megaflora e la megafauna, solo per impostazione predefinita, stiamo proteggendo tutto il resto che vive in quegli ambienti "- il puzzolente, il dolce e tutto quello che c''&egrave; in mezzo.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (8, N'en', N'Can Technology And Creativity Be Friends?', N'<p>Thinking (purely) logically, technology and creativity can never be friends. One is physical but too broad, and the other is abstract. Also, they can&rsquo;t think.<br /><br />But, if we&rsquo;re talking about bonds between the two, they are, put simply, made for each other!<br /><br />Technology allows us to channel our creativity and make it a reality. Consider how they make things simpler for us and how they open up new opportunities when combined!<br /><br />First off, think about how technology makes being creative so simple. Can&rsquo;t think of any ideas? Search for some inspiration!<br /><br />Don&rsquo;t forget the ability to &lsquo;undo&rsquo;. Instead of having to start all over again if you make a mistake when you&rsquo;re creating a 2D or 3D masterpiece, or even a simple writing piece like this, you can simply go back a step. Or several! This can take a painfully large chunk of time off of projects, allowing you to refine many of the smaller, less important-but-still-significant details in tighter time limits. This is made even simpler with the technology itself, leading to my next statement&hellip;<br /><br />Technology and creativity provide many new opportunities for us when used in conjunction. For starters, technology has provided us the ability to edit our photos and images, as well as take and create them. That&rsquo;s not even mentioning that without even simple technology like a paintbrush, we would not even be able to create art in the first place.<br /><br />Technology is a must if we wish to channel our creative juices. Whether it is business, journalism or music recording, technology has provided us with amazing ways to gather inspiration and get it onto paper. As you can clearly see, technology and creativity are pretty much forced together like&hellip; well, technology and creativity!<br /><br />If you aren&rsquo;t satisfied with that answer, then they&rsquo;re like Dihydrogen Monoxide. That&rsquo;s H2O (water), in case you didn&rsquo;t know. This is still probably not an equal comparison, but if you know how the chemicals compound, it becomes a lot easier to understand. They cannot be separated. There is no better way to describe how technology has allowed us to channel our creativity.<br /><br />Technology has allowed us to do many, many complex things such as video game development and photography with barely a hitch. Without technology, we would not have even nearly as many tools at our disposals to be creative.<br /><br />There is no doubt whatsoever that technology and creativity can be, and are, friends. Hopefully good ones. Best friends, if we&rsquo;re lucky.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (8, N'it', N'Possono tecnologia e creatività essere amici?', N'<p>Thinking (puramente) logico, la tecnologia e la creativit&agrave; non pu&ograve; mai essere amici. Uno &egrave; fisica ma troppo ampia, e l''altro &egrave; astratta. Inoltre, essi non possono pensare.<br />Ma, se stiamo parlando di legami tra i due, sono, in poche parole, fatti uno per l''altro!</p>
<p><br />La tecnologia ci permette di canalizzare la nostra creativit&agrave; e renderlo una realt&agrave;. Considerare come fanno le cose pi&ugrave; semplici per noi e come si aprono nuove opportunit&agrave; quando combinato!</p>
<p><br />Prima di tutto, pensare a come la tecnologia rende essere creativi cos&igrave; semplice. Non riesco a pensare a tutte le idee? Cerca di qualche ispirazione!</p>
<p><br />Da non dimenticare la possibilit&agrave; di ''annullare''. Invece di dover ricominciare tutto da capo, se si commette un errore quando si sta creando un 2D o 3D capolavoro, o anche un semplice pezzo di scrittura come questo, si pu&ograve; semplicemente tornare indietro di un passo. O pi&ugrave;! Questo pu&ograve; richiedere un dolorosamente grande pezzo di tempo libero dei progetti, consentendo di affinare molti dei pi&ugrave; piccoli, meno importanti, ma-ancora-notevoli dettagli in termini pi&ugrave; rigorosi. Ci&ograve; &egrave; reso ancora pi&ugrave; semplice con la tecnologia stessa, che porta alla mia prossima dichiarazione ...</p>
<p><br />Tecnologia e creativit&agrave; offrono molte nuove opportunit&agrave; per noi quando usato in combinazione. Per cominciare, la tecnologia ci ha fornito la possibilit&agrave; di modificare le nostre foto e immagini, cos&igrave; come prendere e crearli. Che non &egrave; nemmeno menzionare che senza la tecnologia, anche semplice come un pennello, non saremmo nemmeno in grado di creare arte, in primo luogo.</p>
<p><br />La tecnologia &egrave; un must se si vuole incanalare le nostre creativit&agrave;. Che si tratti di affari, il giornalismo o la registrazione di musica, la tecnologia ci ha fornito modi sorprendenti per raccogliere ispirazione e farlo su carta. Come si pu&ograve; vedere chiaramente, tecnologia e creativit&agrave; sono praticamente costretti insieme come ... beh, tecnologia e creativit&agrave;!</p>
<p><br />Se non siete soddisfatti di questa risposta, quindi sono come Monossido di Diidrogeno. Questo &egrave; H2O (acqua), nel caso in cui non lo sapeva. Questo non &egrave; ancora probabilmente un uguale rispetto, ma se si sa come il composto chimico, diventa molto pi&ugrave; facile da capire. Non possono essere separati. Non c''&egrave; modo migliore per descrivere come la tecnologia ci ha permesso di canalizzare la nostra creativit&agrave;.</p>
<p><br />La tecnologia ha permesso di fare molte, molte cose complesse come lo sviluppo di videogiochi e la fotografia con appena un intoppo. Senza tecnologia, non avremmo anche quasi come molti strumenti a nostra dismissioni di essere creativi.</p>
<p><br />Non vi &egrave; alcun dubbio che la tecnologia e la creativit&agrave; possono essere, e sono, amici. Quelli buoni. Speriamo Migliori amici, se siamo fortunati.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (10, N'en', N'Australians join international protest against government ''backdoors'' in encryption', N'Nearly 200&nbsp;experts, companies and civil society groups from more than 40 countries &mdash; including Electronic Frontiers Australia, the Australian Privacy Foundation and Australian Lawyers for Human Rights &mdash;&nbsp;are asking governments around the world to support strong encryption&nbsp;and reject proposals that would&nbsp;undermine the digital security it provides.<br /><br />"The internet belongs to the world''s people, not its governments. We refuse to let this precious resource become nationalised and broken by any nation," Brett Solomon,&nbsp;executive director of Access Now, the online advocacy group that organised the open letter, said in a news&nbsp;release.<br /><br />The letter, released online in 10&nbsp;languages&nbsp;at&nbsp;SecureTheInternet.org, marks an escalation of a debate over encryption &mdash; a process that scrambles data so that only those authorised can decode it. The fight has been brewing&nbsp;for more than a year, prominent in Australia and the United States but&nbsp;also spreading everywhere from the United Kingdom to China.<br /><br />Encryption is widely relied upon to keep e-commerce and many of the websites people use every day safe from the prying eyes of cybercriminals. But the spread of the strongest forms of encryption, those which companies themselves cannot unlock, into products from major tech companies has drawn&nbsp;criticism from&nbsp;some law enforcement officials who argue that it may allow criminals and terrorists to "go dark."')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (10, N'it', N'Gli australiani si uniscono in una protesta internazionale contro il governo per opporsi ai ''backdoor'' nella crittografia', N'<p>Quasi 200 esperti, aziende e gruppi della societ&agrave; civile provenienti da pi&ugrave; di 40 paesi - tra cui elettronica Frontiers Australia, l''Australian Privacy Foundation e avvocati australiani per i diritti umani - chiedono ai governi di tutto il mondo per sostenere la crittografia forte e rifiutano le proposte che minerebbe la sicurezza digitale fornisce.</p>
<p><br />"Internet appartiene alle persone di tutto il mondo, non i suoi governi. Ci si rifiutano di lasciare che questa preziosa risorsa diventare nazionalizzate e rotto da qualsiasi nazione", Brett Solomon, direttore esecutivo di Access Now, il gruppo di pressione in linea che ha organizzato la lettera aperta, ha detto in un comunicato stampa.</p>
<p><br />La lettera, pubblicato online in 10 lingue al sicuro Il Internet.org, segna un''escalation di un dibattito sulla crittografia - un processo che si arrampica i dati in modo che solo quelli autorizzati pu&ograve; decodificarlo. La lotta &egrave; stato birra per pi&ugrave; di un anno, di primo piano in Australia e negli Stati Uniti, ma anche diffondendo ovunque dal Regno Unito alla Cina.</p>
<p><br />La crittografia &egrave; ampiamente invocata per mantenere il commercio elettronico e molti dei siti web di persone utilizzano ogni giorno al sicuro da occhi indiscreti di criminali informatici. Ma la diffusione dei pi&ugrave; forti forme di crittografia, quelle che le imprese stesse non possono sbloccare, in prodotti da grandi aziende di tecnologia si &egrave; attirato le critiche da parte di alcuni agenti delle forze dell''ordine che sostengono che essa pu&ograve; permettere che i criminali e terroristi di "andare buio".</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (12, N'en', N'Giant crocodile fossil found on edge of Sahara', N'<div class="story-intro">
<p><strong>PALEONTOLOGISTS have discovered the fossil remains of the world&rsquo;s biggest ocean-dwelling crocodile buried on the edge of the Sahara, a creature that was twice the size of anything seen today.</strong></p>
</div>
<p>Named Machimosaurus rex, this croc would have weighed in at least 3000kg (6,600 pounds) and been around 9.7 metres (32 feet) long. Other than its size, it would have looked much like a modern day crocodile except for its narrow snout &mdash; which was designed to allow it swim in the ocean.</p>
<p>It would have been the top predator in what was then an ocean that separated Africa from Europe about 130 million years ago.</p>
<p>&ldquo;This is an incredibly big crocodile. It is twice as big as a present day marine crocodile,&rdquo; University of Bologna&rsquo;s Federico Fanti, who was part of the team that made the discovery with support from the National Geographic Society Committee for Research and Exploration, told FoxNews.com.</p>
<p>&ldquo;The skull itself is as big I am,&rdquo; said Fanti, whose discovery was detailed in a study in the journal Cretaceous Research. &ldquo;Just the skull is more than five feet long. It&rsquo;s a massive crocodile.&rdquo;</p>
<p>Tunisia, where the skeleton and some bones were found, would have been a lagoon facing the ocean and the environment would have been filled with huge fish and turtles &mdash; all favourite prey of the Machimosaurus rex.</p>
<p><img src="/public/41646D696E6973747261746F72Images/News/World/Crocodile/crocodile.jpg" alt="" width="650" height="488" /></p>
<p>&ldquo;This animal, however, used to feast on the large turtles or big fishes that it found in the ocean,&rdquo; Fanti said.</p>
<p>&ldquo;He was so big and so powerful that it was absolutely at the top of the food chain.&rdquo;</p>
<p>Beyond its size, Fanti said the significance of the find is what it tells us about a mass extinction event that is believed to have happened between the Jurassic and Cretaceous period about 150 million years ago. Machimosaurus rex was thought to have died out then but the discovery suggests the extinction event was not as widespread as some palaeontologist thought.</p>
<p>&ldquo;The fact that Machimosaurus rex (pertaining to a group that was well alive in the Jurassic) lived 130-120 million years ago indicate that there was no mass extinction,&rdquo; Fanti said. &ldquo;Everyone thought this group of crocodiles went extinct in the Jurassic but we found it well into the Cretaceous,&rdquo; he said.</p>
<p>&ldquo;We simply extended the temporal range of the animals. Twenty million years is a lot of time.&rdquo;</p>
<p>Fanti, whose team has discovered 20 new species including a rebbachisaurid sauropod Tataouinea hannibalis in the same area, said there is less to learn about crocodile evolution from this new discovery. The reason, he said, is that crocodiles have changed little over time.</p>
<p>&ldquo;Basically, they are bigger or smaller,&rdquo; he said of their evolution, adding that even bigger crocodiles lived on land, many of which also have gone extinct. The largest freshwater crocodile, Sarcosuchus imperator, lived 110 million years ago and grew as long as 12 metres (40 feet). It weighed up to 8000kg (17,500 pounds), according to National Geographic.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (12, N'it', N'Fossile gigante di coccodrillo trovato ai confini del Sahara', N'<div class="story-intro">
<p><strong>I paleontologi hanno scoperto i resti fossili di coccodrillo pi&ugrave; grande oceano dimora del mondo sepolto ai margini del Sahara, una creatura che era il doppio di qualsiasi altra cosa vista oggi.</strong></p>
</div>
<p>Nominato machimosaurus rex, questo croc avrebbe pesato in almeno 3000kg (6.600 sterline) e stati circa 9,7 metri (32 piedi) lungo. Altro che le sue dimensioni, avrebbe guardato molto simile a un moderno coccodrillo i giorni, tranne per il suo stretto muso - che &egrave; stato progettato per permettere che nuotare nell''oceano.<br /><br />Sarebbe stato il predatore superiore a quello che allora era un oceano che separava l''Africa dall''Europa circa 130 milioni di anni fa.<br /><br />"Questo &egrave; un incredibilmente grande coccodrillo. E ''due volte pi&ugrave; grande come un coccodrillo marino oggi, "Universit&agrave; degli Studi di Bologna Federico Fanti, che faceva parte della squadra che ha fatto la scoperta con il sostegno del Comitato Geographic Society nazionale per la ricerca e di esplorazione, ha detto a FoxNews.com.<br /><br />"Il cranio in s&eacute; &egrave; grande io sono", ha detto Fanti, la cui scoperta &egrave; stata descritto in uno studio sulla rivista Cretaceo Research. "Solo il cranio &egrave; lungo pi&ugrave; di cinque piedi. Si tratta di un coccodrillo enorme. "<br /><br />Tunisia, dove sono stati trovati lo scheletro e alcune ossa, sarebbe stata una laguna di fronte al mare e per l''ambiente sarebbe stato pieno di pesci e tartarughe enorme - tutti preda preferita del rex machimosaurus.</p>
<p><img src="/public/41646D696E6973747261746F72Images/News/World/Crocodile/crocodile.jpg" alt="" width="650" height="488" /></p>
<p>"Questo animale, per&ograve;, usato per banchettare con grandi tartarughe o grossi pesci che trova nel mare", ha detto Fanti.</p>
<p>"Era cos&igrave; grande e cos&igrave; forte che era assolutamente in cima alla catena alimentare."</p>
<p>Oltre la sua dimensione, ha dichiarato Fanti il ​​significato del ritrovamento &egrave; quello che ci parla di un evento di estinzione di massa che si crede essere avvenuto tra il periodo Giurassico e Cretaceo circa 150 milioni di anni fa. Machimosaurus rex &egrave; stato pensato per essere morto fuori allora, ma la scoperta suggerisce l''evento di estinzione non era cos&igrave; diffusa come qualche pensiero paleontologo.</p>
<p>"Il fatto che machimosaurus rex (appartenenti ad un gruppo che &egrave; stato ben vivo nel Giurassico) ha vissuto 130-120 milioni di anni fa indicano che non vi era alcuna estinzione di massa" ha dichiarato Fanti.</p>
<p>"Tutti pensavano che questo gruppo di coccodrilli si estinse nel Giurassico ma abbiamo trovato bene nel Cretaceo," ha detto.</p>
<p>"Abbiamo semplicemente ampliato la gamma temporale degli animali. Venti milioni di anni &egrave; un sacco di tempo ".</p>
<p>Fanti, il cui team ha scoperto 20 nuove specie, tra cui un brachiosauro sauropodi Tataouinea Hannibalis nella stessa zona, ha detto che vi &egrave; meno di conoscere l''evoluzione di coccodrillo da questa nuova scoperta. La ragione, ha detto, &egrave; che i coccodrilli hanno cambiato poco nel corso del tempo.</p>
<p>"Fondamentalmente, sono grandi o pi&ugrave; piccoli", ha detto della loro evoluzione, aggiungendo che i coccodrilli ancora pi&ugrave; grandi vivevano sulla terra, molti dei quali hanno anche estinte. La pi&ugrave; grande coccodrillo d''acqua dolce, Sarcosuchus imperator, vissuto 110 milioni di anni fa ed &egrave; cresciuto fino a 12 metri (40 piedi). Pesava fino a 8000kg (17.500 libbre), secondo il National Geographic.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (13, N'en', N'Emissions trading: 2014 data shows emissions reduction', N'<p>Emissions of greenhouse gases from installations participating in the EU Emissions Trading System (EU ETS) are estimated to have decreased by about 4.5% last year, according to the information recorded in the Union Registry.<br /><br />European Commissioner responsible for Climate Action and Energy, Miguel Arias Ca&ntilde;ete said: "Even while our economies are getting back in the growth track, emissions continue to decrease. This once again shows that economic growth and climate protection can go hand in hand. This sends a powerful signal ahead of the new global climate deal to be agreed in Paris this December: carbon markets deliver cost-effective reductions. At the same time, the recession continues to have a lasting impact on our carbon market. I therefore warmly welcome the ambitious political deal on the Market Stability Reserve agreed by the Parliament and the Council very recently."<br /><br /><strong>2014 emissions decrease</strong><br /><br />The EU ETS covers more than 11 000 power plants and manufacturing installations in the 28 EU Member States, Iceland, Norway and Liechtenstein, as well as emissions from airlines flying between European airports.<br /><br />Verified emissions of greenhouse gases from stationary installations amounted to 1,812 million tonnes of CO2-equivalent in 2014. These emissions were about 4.5% below the 2013 level[1].<br /><br /><strong>Back-loading stabilises surplus</strong><br /><br />The cumulative surplus in emission allowances has been slightly reduced from around 2.1 billion to some 2.07 billion for the 2014 compliance year. In 2014 auction volumes were reduced by 400 million allowances due to the start of the implementation of the back-loading[2] measure, which postpones the auctioning of these allowances. The 2014 cumulative surplus figure takes into account the exchange of international credits into allowances, sales of phase 3 allowances that generated funds for the NER300 programme which supports innovative low-carbon technologies, allowances allocated for 2014 and the auctioning of phase 3 allowances in 2014 (including aviation allowances).<br /><br /><strong>High level of compliance</strong><br /><br />Companies'' level of compliance with the EU ETS rules was again high. Less than 1% of the installations which reported emissions for 2014 did not surrender allowances covering all their emissions by the deadline of 30 April 2015. These installations are typically small and together account for less than 0.5% of emissions covered by the EU ETS. A small number of installations &minus; accounting for less than 0.2% of emissions in the previous year &minus; did not report their 2014 emissions by 30 April 2015 according to registry data.<br /><br /><strong>Airlines report 2013 and 2014 emissions</strong><br /><br />According to the EU ETS Directive, for the period 2013-2016, all commercial and non-commercial aircraft operators with significant emissions[3] are responsible for their emissions from flights within the European Economic Area (EEA)[4]. Airlines that operated intra-European activities covered by the Directive during 2013 and 2014 were required to report emissions for both years, and surrender corresponding allowances by 30 April 2015. Verified CO2 emissions from aviation activities carried out between airports located in the EEA amounted to 54.9 million tonnes of CO2 in 2014, an increase of 2.8% compared to 53.4 million tonnes of CO2 in 2013.<br /><br />The level of compliance with the EU ETS rules is high: aircraft operators responsible for 99 % of aviation emissions covered under the EU ETS comply. This includes more than 100 commercial aircraft operators based outside the EU, which operate flights within the EEA.<br /><br /><strong>Exchanges of international credits</strong><br /><br />The total number of international credits exchanged into allowances since the exchange function became operational in March 2014 amounts to 386.67 million.<br /><br />Of these, 195.62 million were Certified Emission Reductions (CERs) and 191.05 million were Emission Reduction Units (ERUs). The CERs and ERUs exchanged came from projects taking place in a limited number of countries, with almost 77% of CERs originating from China and almost 77% of ERUs exchanged coming from projects in Ukraine.<br /><br />Since 31 March 2015, credits issued in respect of emission reductions occurring during the first commitment period of the Kyoto Protocol (so-called "CP1 credits") can no longer be exchanged in the EU ETS. The total number of "CP1 credits" exchanged by 31 March 2015 was 384.29 million.<br /><br />For full details, including the number and type of credits exchanged by 30 April 2015, by country of origin, project and commitment period[5], see the Annex.<br /><br /><strong>Background</strong><br /><br />Under the EU ETS, installations are required to submit their verified emissions data for each year to Member State registries. For 2014, this data became publicly available on the European Union Transaction Log (EUTL) on 1 April 2015. The EUTL displays compliance data from 4 May 2015, with information on whether installations have complied with their obligation to surrender an amount of allowances equal to the last year''s verified emissions.<br /><br />The third trading period of the EU ETS began on 1 January 2013 and runs for eight years until 31 December 2020. The legislation reforming the EU ETS, laying down revised rules until 2020 and beyond, was adopted as part of the EU climate and energy package on 23 April 2009.<br /><br />In May 2015, the European Parliament and the Council reached a political agreement to establish a Market Stability Reserve in 2018 to address the surplus of emission allowances that has built up and improve the EU ETS''s resilience to shocks by adjusting thesupply of allowances to be auctioned.</p>')
INSERT [dbo].[tb_cms_news_languages] ([NewsId], [LanguageCode], [NewsTitle], [NewsContent]) VALUES (13, N'it', N'Lo scambio di emissioni: dati 2014 mostra la riduzione delle emissioni', N'<p>Le emissioni di gas a effetto serra provenienti da impianti che partecipano al sistema di scambio delle emissioni (EU ETS) si stima che sono diminuite di circa il 4,5% lo scorso anno, secondo le informazioni registrate nel registro dell''Unione.</p>
<p><br />Commissario europeo responsabile per l''Azione per il clima e l''energia, Miguel Arias Ca&ntilde;ete, ha dichiarato: "Anche mentre le nostre economie sono di tornare in pista di crescita, le emissioni continuano a diminuire Questo dimostra ancora una volta che la crescita economica e la protezione del clima possono andare di pari passo Questo invia.. un segnale forte in vista del nuovo accordo globale sul clima da concordare a Parigi il prossimo dicembre:.. mercati del carbonio offrono riduzioni economicamente convenienti Allo stesso tempo, la recessione continua ad avere un impatto duraturo sul nostro mercato del carbonio pertanto con grande favore l''ambizioso accordo politico sulla stabilit&agrave; Riserva mercato approvata dal Parlamento e dal Consiglio a poco tempo fa. "<br /><br /><strong>Diminuiscono 2014 le emissioni</strong><br /><br />L''EU ETS copre pi&ugrave; di 11 000 centrali elettriche e gli impianti di produzione negli 28 Stati membri dell''UE, l''Islanda, Norvegia e Liechtenstein, nonch&eacute; le emissioni provenienti da compagnie aeree che volano tra aeroporti europei.<br /><br />Emissioni verificate di gas serra prodotte da impianti fissi pari a 1.812 milioni di tonnellate di CO2 equivalente nel 2014. Queste emissioni sono state circa il 4,5% al ​​di sotto del livello del 2013 [1].<br /><br /><strong>Back-caricamento stabilizza surplus</strong><br /><br />Il surplus cumulativo delle quote di emissione &egrave; stata leggermente ridotta da circa 2,1 miliardi a circa 2.070 milioni per l''anno 2014 di conformit&agrave;. Nel 2014 i volumi d''asta sono stati ridotti di 400 milioni di quote per l''avvio della realizzazione del [2] misura-back loading, che posticipa la vendita all''asta di tali indennit&agrave;. 2014 dato progressivo avanzo tiene conto degli scambi di crediti internazionali in quote, le vendite di fase 3 quote che hanno generato i fondi per il programma NER300, che supporta le tecnologie innovative basse emissioni di carbonio, le quote assegnate per il 2014 e la vendita all''asta di fase 3 Indennit&agrave; nel 2014 ( comprese quote del trasporto aereo).<br /><br /><strong>Alto livello di conformit&agrave;</strong><br /><br />Livello di rispetto delle norme EU ETS imprese era di nuovo alto. Meno dell''1% degli impianti che hanno registrato le emissioni per il 2014 non restituire quote coprono tutte le loro emissioni entro il termine del 30 aprile 2015. Queste installazioni sono in genere piccole e insieme rappresentano meno dello 0,5% delle emissioni rientrano nel sistema ETS comunitario. Un piccolo numero di impianti - che rappresentano meno dello 0,2% delle emissioni nell''anno precedente - non ha comunicato le loro emissioni del 2014 entro il 30 aprile 2015, in virt&ugrave; dati del Registro.<br /><br /><strong>Airlines riportano 2013 e 2014 le emissioni</strong><br /><br />In base alla direttiva EU ETS, per il periodo 2013-2016, tutti gli operatori aerei commerciali e non commerciali con emissioni significative [3] sono responsabili delle loro emissioni a voli all''interno dello Spazio economico europeo (SEE) [4]. Compagnie aeree che operavano attivit&agrave; intraeuropee coperte dalla direttiva durante il 2013 e il 2014 sono stati tenuti a comunicare le emissioni per entrambi gli anni, e indennit&agrave; di riscatto corrispondente entro il 30 aprile 2015. emissioni di CO2 verificati da attivit&agrave; di trasporto aereo svolte tra aeroporti situati nel SEE &egrave; stato pari a 54,9 milioni di tonnellate di CO2 nel 2014, con un incremento del 2,8% rispetto ai 53,4 milioni di tonnellate di CO2 nel 2013.<br /><br />Il livello di rispetto delle norme ETS dell''UE &egrave; elevato: gli esercenti di aeromobili responsabile per il 99% delle emissioni di trasporto aereo di cui sotto l''EU ETS rispettare. Questo include pi&ugrave; di 100 operatori aerei commerciali basati al di fuori dell''UE, che operano voli all''interno del SEE.<br /><br /><strong>Scambi di crediti internazionali</strong><br /><br />Il numero totale di crediti internazionali scambiate in quote in quanto la funzione di scambio &egrave; diventato operativo nel marzo 2014 &egrave; pari a 386.670.000.<br /><br />Riduzioni Di questi, 195.620.000 sono state certificate delle emissioni (CER) e 191.050.000 erano Emission Reduction Units (ERU). I CER ed ERU scambiate provenivano da progetti che si svolgono in un numero limitato di paesi, con quasi il 77% di CER provenienti dalla Cina e quasi il 77% delle ERU scambiate proveniente da progetti in Ucraina.<br /><br />Successivamente al 31 marzo 2015, i crediti rilasciate per delle riduzioni di emissioni che si verificano durante il primo periodo di impegno del protocollo di Kyoto (i cosiddetti "crediti CP1") non possono pi&ugrave; essere scambiati nel sistema ETS. Il numero totale di "crediti" CP1 scambiati entro il 31 marzo 2015 &egrave; stato 384.290.000.<br /><br />Per tutti i dettagli, tra cui il numero e il tipo di crediti scambiato entro il 30 aprile 2015, per paese di origine, progetto e periodo di impegno [5], vedere l''allegato.<br /><br /><strong>Sfondo</strong><br /><br />Nell''ambito del sistema ETS comunitario, gli impianti sono tenuti a presentare i propri dati sulle emissioni verificate per ogni anno di registri degli Stati membri. Per il 2014, questi dati si sono resi disponibili al pubblico per l''Unione europea log delle transazioni (nell''EUTL) il 1 &deg; aprile 2015. L''EUTL visualizza i dati di conformit&agrave; dal 4 maggio 2015, con informazioni su se gli impianti hanno rispettato il loro obbligo di restituire un numero di quote pari alle le emissioni verificate dell''anno precedente.<br /><br />Il terzo periodo di scambio del sistema ETS dell''UE &egrave; iniziata il 1 &deg; gennaio 2013 e una durata di otto anni, fino al 31 dicembre 2020. La normativa di riforma del sistema UE di scambio, che stabilisce le norme riviste fino al 2020 e oltre, &egrave; stato adottato nel quadro del pacchetto clima ed energia dell''Unione europea il 23 aprile 2009.<br /><br />Nel maggio 2015, il Parlamento europeo e il Consiglio hanno raggiunto un accordo politico per stabilire una stabilit&agrave; Riserva mercato nel 2018 per affrontare il surplus di quote di emissione, che ha costruito e migliorare la resilienza del sistema ETS dell''UE agli shock regolando thesupply di quote da mettere all''asta.</p>')
SET IDENTITY_INSERT [dbo].[tb_cms_page_templates] ON 

INSERT [dbo].[tb_cms_page_templates] ([PageTemplateId], [Title], [HtmlCode], [IsActive]) VALUES (23, N'Subpage', N'<div id="subpage">
  <div class="wrapper">
    <header>
      {$MainMenu-Index}
    </header>
    <main class="container">
      {$BreadCrumbs-Index}
      {$Content}
    </main>
  </div>
  {$SharedContent-Footer}
</div>', 1)
INSERT [dbo].[tb_cms_page_templates] ([PageTemplateId], [Title], [HtmlCode], [IsActive]) VALUES (1054, N'Home page', N'<div id="homepage">
  <div class="wrapper">
    <header>
      {$MainMenu-Index}
    </header>
    <main class="container">
      {$Content}
    </main>
  </div>
  {$SharedContent-Footer}
</div>', 1)
INSERT [dbo].[tb_cms_page_templates] ([PageTemplateId], [Title], [HtmlCode], [IsActive]) VALUES (1057, N'Error page', N'<div id="subpage">
  <div class="wrapper">
    <header>
      {$MainMenu-Index}
    </header>
    <main class="container">
      {$Error-Index}
    </main>
  </div>
  {$SharedContent-Footer}
</div>', 1)
SET IDENTITY_INSERT [dbo].[tb_cms_page_templates] OFF
SET IDENTITY_INSERT [dbo].[tb_cms_pages] ON 

INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (2, NULL, N'home', N'Home', N'_self', NULL, 1, 1, 1, 1, 1, 1054, 0, 1)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (3, NULL, N'about-us', N'About us', N'_self', NULL, 2, 1, 1, 1, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (4, NULL, N'contact', N'Contact', N'_self', NULL, 4, 1, 1, 1, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (1351, NULL, N'register', N'Register', N'_self', NULL, 6, 0, 0, 1, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (1352, NULL, N'sign-in', N'Sign in', N'_self', NULL, 7, 0, 0, 1, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (1353, NULL, N'sitemap', N'Sitemap', N'_self', NULL, 5, 0, 1, 0, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (1354, NULL, N'forgot-password', N'Forgot password', N'_self', NULL, 8, 0, 0, 1, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (1355, NULL, N'change-password', N'Change Password', N'_self', NULL, 9, 0, 0, 1, 1, 23, 1, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (1356, NULL, N'profile', N'Profile', N'_self', NULL, 11, 0, 0, 1, 1, 23, 1, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (1357, NULL, N'reset-password', N'Reset password', N'_self', NULL, 10, 0, 0, 0, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (1358, 2361, N'restricted-page-example', N'Restricted page example', N'_self', NULL, 3, 1, 0, 1, 1, 23, 1, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (2361, NULL, N'page-example', N'Page example', N'_self', NULL, 3, 1, 0, 1, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (2362, 2361, N'another-page-example', N'Another page example', N'_self', NULL, 1, 1, 0, 1, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (2363, 2361, NULL, N'External link example', N'_self', N'http://www.mvcwcms.com', 4, 1, 0, 1, 1, NULL, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (2364, 2361, N'gallery-example', N'Gallery example', N'_self', NULL, 2, 1, 0, 1, 1, 23, 0, 0)
INSERT [dbo].[tb_cms_pages] ([PageId], [PageParentId], [Segment], [PageName], [Target], [Url], [Ordering], [ShowInMainMenu], [ShowInBottomMenu], [ShowInSitemap], [IsActive], [PageTemplateId], [IsAccessRestricted], [IsHomePage]) VALUES (2365, 2361, N'news', N'News example', N'_self', NULL, 5, 1, 0, 1, 1, 23, 0, 0)
SET IDENTITY_INSERT [dbo].[tb_cms_pages] OFF
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2, N'en', N'Home - {$SiteName}', NULL, N'Welcome to {$SiteName} - {$DomainName}', N'<div class="row bottom-20">
<div id="carousel-container">
<div class="carousel slide" id="carousel-laptop" data-ride="carousel">
<ol class="carousel-indicators">
<li class="active" data-target="#carousel-laptop" data-slide-to="0"></li>
<li data-target="#carousel-laptop" data-slide-to="1"></li>
<li data-target="#carousel-laptop" data-slide-to="2"></li>
</ol>
<div class="carousel-inner">
<div class="item active"><img alt="Slide" src="/public/41646D696E6973747261746F72Images/Pages/slide-1.jpg" height="563" width="1170" /></div>
<div class="item"><img alt="Slide" src="/public/41646D696E6973747261746F72Images/Pages/slide-2.jpg" height="563" width="1170" /></div>
<div class="item"><img alt="Slide" src="/public/41646D696E6973747261746F72Images/Pages/slide-3.jpg" height="563" width="1170" /></div>
</div>
<a class="left carousel-control" href="#carousel-laptop" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span> </a> <a class="right carousel-control" href="#carousel-laptop" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a></div>
</div>
</div>
<div class="row marketing">
<div class="col-sm-4"><img src="https://hurlstonesnorthern.supplies/wp-content/uploads/2018/01/image-placeholder-140x140.jpg" class="img-circle" alt="Generic placeholder image" height="140" width="140" />
<h2>Heading</h2>
<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
</div>
<div class="col-sm-4"><img src="https://hurlstonesnorthern.supplies/wp-content/uploads/2018/01/image-placeholder-140x140.jpg" class="img-circle" alt="Generic placeholder image" height="140" width="140" />
<h2>Heading</h2>
<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
</div>
<div class="col-sm-4"><img src="https://hurlstonesnorthern.supplies/wp-content/uploads/2018/01/image-placeholder-140x140.jpg" class="img-circle" alt="Generic placeholder image" height="140" width="140" />
<h2>Heading</h2>
<p>Lorem ipsum, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
</div>
</div>
<div class="row latest-news bottom-20">
<div class="page-header">
<h2>Latest News</h2>
</div>
{$News-Summary}</div>', N'Home', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2, N'it', N'Home - My Website', NULL, N'Benvenuto su {$SiteName} - {$DomainName}', N'<div class="row bottom-20">
<div id="carousel-container">
<div class="carousel slide" id="carousel-laptop" data-ride="carousel">
<ol class="carousel-indicators">
<li class="active" data-target="#carousel-laptop" data-slide-to="0"></li>
<li data-target="#carousel-laptop" data-slide-to="1"></li>
<li data-target="#carousel-laptop" data-slide-to="2"></li>
</ol>
<div class="carousel-inner">
<div class="item active"><img alt="Slide" src="/public/41646D696E6973747261746F72Images/Pages/slide-1.jpg" height="563" width="1170" /></div>
<div class="item"><img alt="Slide" src="/public/41646D696E6973747261746F72Images/Pages/slide-2.jpg" height="563" width="1170" /></div>
<div class="item"><img alt="Slide" src="/public/41646D696E6973747261746F72Images/Pages/slide-3.jpg" height="563" width="1170" /></div>
</div>
<a class="left carousel-control" href="#carousel-laptop" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span> </a> <a class="right carousel-control" href="#carousel-laptop" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a></div>
</div>
</div>
<div class="row marketing">
<div class="col-sm-4"><img src="https://hurlstonesnorthern.supplies/wp-content/uploads/2018/01/image-placeholder-140x140.jpg" class="img-circle" alt="Generic placeholder image" height="140" width="140" />
<h2>Heading</h2>
<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
</div>
<div class="col-sm-4"><img src="https://hurlstonesnorthern.supplies/wp-content/uploads/2018/01/image-placeholder-140x140.jpg" class="img-circle" alt="Generic placeholder image" height="140" width="140" />
<h2>Heading</h2>
<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
</div>
<div class="col-sm-4"><img src="https://hurlstonesnorthern.supplies/wp-content/uploads/2018/01/image-placeholder-140x140.jpg" class="img-circle" alt="Generic placeholder image" height="140" width="140" />
<h2>Heading</h2>
<p>Lorem ipsum, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
<p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
</div>
</div>
<hr />
<div class="row latest-news bottom-20">
<div class="page-header">
<h2>Ultime Notizie</h2>
</div>
{$News-Summary}</div>', N'Home', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (3, N'en', N'About us - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-8 col-sm-offset-4">
<h1>About us</h1>
</div>
</div>
<div class="row">
<div class="col-sm-4"><img class="thumbnail img-responsive" alt="About us" src="/public/41646D696E6973747261746F72Images/Pages/aboutus.jpg" height="300" width="400" /></div>
<div class="col-sm-8">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.</p>
<p>Vivamus fermentum semper porta. Nunc diam velit, adipiscing ut tristique vitae, sagittis vel odio. Maecenas convallis ullamcorper ultricies. Curabitur ornare, ligula semper consectetur sagittis, nisi diam iaculis velit, id fringilla sem nunc vel mi. Nam dictum, odio nec pretium volutpat, arcu ante placerat erat, non tristique elit urna et turpis. Quisque mi metus, ornare sit amet fermentum et, tincidunt et orci. Fusce eget orci a orci congue vestibulum. Ut dolor diam, elementum et vestibulum eu, porttitor vel elit. Curabitur venenatis pulvinar tellus gravida ornare. Sed et erat faucibus nunc euismod ultricies ut id justo. Nullam cursus suscipit nisi, et ultrices justo sodales nec. Fusce venenatis facilisis lectus ac semper. Aliquam at massa ipsum. Quisque bibendum purus convallis nulla ultrices ultricies. Nullam aliquam, mi eu aliquam tincidunt, purus velit laoreet tortor, viverra pretium nisi quam vitae mi. Fusce vel volutpat elit. Nam sagittis nisi dui.</p>
</div>
</div>', N'About us', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (3, N'it', N'Chi siamo - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-8 col-sm-offset-4">
<h1>Chi siamo</h1>
</div>
</div>
<div class="row">
<div class="col-sm-4"><img class="thumbnail img-responsive" alt="About us" src="/public/41646D696E6973747261746F72Images/Pages/aboutus.jpg" height="300" width="400" /></div>
<div class="col-sm-8">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.</p>
<p>Vivamus fermentum semper porta. Nunc diam velit, adipiscing ut tristique vitae, sagittis vel odio. Maecenas convallis ullamcorper ultricies. Curabitur ornare, ligula semper consectetur sagittis, nisi diam iaculis velit, id fringilla sem nunc vel mi. Nam dictum, odio nec pretium volutpat, arcu ante placerat erat, non tristique elit urna et turpis. Quisque mi metus, ornare sit amet fermentum et, tincidunt et orci. Fusce eget orci a orci congue vestibulum. Ut dolor diam, elementum et vestibulum eu, porttitor vel elit. Curabitur venenatis pulvinar tellus gravida ornare. Sed et erat faucibus nunc euismod ultricies ut id justo. Nullam cursus suscipit nisi, et ultrices justo sodales nec. Fusce venenatis facilisis lectus ac semper. Aliquam at massa ipsum. Quisque bibendum purus convallis nulla ultrices ultricies. Nullam aliquam, mi eu aliquam tincidunt, purus velit laoreet tortor, viverra pretium nisi quam vitae mi. Fusce vel volutpat elit. Nam sagittis nisi dui.</p>
</div>
</div>', N'Chi siamo', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (4, N'en', N'Contact - My Website', NULL, N'If you would like to find out how we can help you or if you have any questions, suggestions or want to get in touch with us to advertise or partner with our site, please fill out the contact form and you will hear from us typically within 24h.', N'<h1>Contact</h1>
<div class="panel panel-default">
<div class="panel-body"><iframe width="100%" height="300" style="border: 0px currentColor;" frameborder="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6629.225010758126!2d151.19382459999994!3d-33.82231155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12aeddc403f233%3A0x5017d681632cc10!2sSt+Leonards+NSW+2065!5e0!3m2!1sen!2sau!4v1396095297026"></iframe></div>
</div>
<div class="row">
<div class="col-md-5 bottom-20">If you would like to find out how we can help you or if you have any questions, suggestions or want to get in touch with us to advertise or partner with our site, please fill out the contact form and you will hear from us typically within 24h.<br /><br /> <i class="fa fa-envelope"></i> <strong>Address</strong><br />Pacific Highway<br /> St Leonards NSW 2065<br /> Australia</div>
<div class="col-md-6 col-md-offset-1">{$Contact-Index}</div>
</div>', N'Contact', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (4, N'it', N'Contatti - My Website', NULL, N'Se desideri sapere come ti possiamo essere d''aiuto o se hai qualche domanda, suggerimento oppure vuoi metterti in contatto con noi per pubblicizzare o diventare partner in questo progetto, ti invitiamo a completatare il modulo contatti e noi ci faremo vivi nel giro di 24 ore.', N'<h1>Contatti</h1>
<div class="panel panel-default">
<div class="panel-body"><iframe width="100%" height="300" style="border: 0px currentColor;" frameborder="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6629.225010758126!2d151.19382459999994!3d-33.82231155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12aeddc403f233%3A0x5017d681632cc10!2sSt+Leonards+NSW+2065!5e0!3m2!1sen!2sau!4v1396095297026"></iframe></div>
</div>
<div class="row">
<div class="col-md-5 bottom-20">Se desideri sapere come ti possiamo essere d''aiuto o se hai qualche domanda, suggerimento oppure vuoi metterti in contatto con noi per pubblicizzare o diventare partner in questo progetto, ti invitiamo a completatare il modulo contatti e noi ci faremo vivi nel giro di 24 ore.<br /><br /> <i class="fa fa-envelope"></i> <strong>Indirizzo</strong><br />Pacific Highway<br /> St Leonards NSW 2065<br /> Australia</div>
<div class="col-md-6 col-md-offset-1">{$Contact-Index}</div>
</div>', N'Contatti', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1351, N'en', N'Register - My Website', N'register', N'Register a new account for free', N'<div class="row">
<div class="col-sm-12">
<h1>Register</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionRegister-Index}</div>
</div>', N'Register', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1351, N'it', N'Registrazione - My Website', N'registrazione', N'Registra gratuitamente un nuovo account', N'<div class="row">
<div class="col-sm-12">
<h1>Registrazione</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionRegister-Index}</div>
</div>', N'Registrazione', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1352, N'en', N'Sign in - My Website', N'Sign in', N'Sign in', N'<div class="row">
<div class="col-sm-12">
<h1>Sign in</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionSignIn-Index}</div>
</div>', N'Sign in', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1352, N'it', N'Login - My Website', N'Login', N'Login', N'<div class="row">
<div class="col-sm-12">
<h1>Login</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionSignIn-Index}</div>
</div>', N'Login', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1353, N'en', N'Sitemap - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Sitemap</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$Sitemap-Index}</div>
</div>', N'Sitemap', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1353, N'it', N'Mappa del sito - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Mappa del sito</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$Sitemap-Index}</div>
</div>', N'Mappa del sito', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1354, N'en', N'Forgot your password? - My Website', NULL, N'Simply submit your email address and you will receive all the instructions to reset your password', N'<div class="row">
<div class="col-sm-12">
<h1>Forgot your password?</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">Simply submit your email address and you will receive all the instructions to reset your password.<br /><br /></div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionPasswordForgot-Index}</div>
</div>', N'Forgot your password?', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1354, N'it', N'Password dimenticata? - My Website', NULL, N'Basta inserire il tuo indirizzo email per ricevere le istruzioni su come resettare la propria password', N'<div class="row">
<div class="col-sm-12">
<h1>Password dimenticata?</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">Basta inserire il tuo indirizzo email per ricevere le istruzioni su come resettare la propria password.<br /><br /></div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionPasswordForgot-Index}</div>
</div>', N'Password dimenticata?', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1355, N'en', N'Change password - My Website', NULL, N'Change password', N'<div class="row">
<div class="col-sm-12">
<h1>Change password</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionPasswordChange-Index}</div>
</div>', N'Change password', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1355, N'it', N'Cambia password - My Website', NULL, N'Cambia password', N'<div class="row">
<div class="col-sm-12">
<h1>Cambia&nbsp;password</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionPasswordChange-Index}</div>
</div>', N'Cambia password', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1356, N'en', N'Profile - My Website', NULL, N'Profile', N'<div class="row">
<div class="col-sm-12">
<h1>Profile</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionProfile-Index}</div>
</div>', N'Profile', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1356, N'it', N'Profilo - My Website', NULL, N'Profilo', N'<div class="row">
<div class="col-sm-12">
<h1>Profilo</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionProfile-Index}</div>
</div>', N'Profilo', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1357, N'en', N'Reset your password - My Website', NULL, N'Reset your password here', N'<div class="row">
<div class="col-sm-12">
<h1>Reset your password</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionPasswordReset-Index}</div>
</div>', N'Reset your password', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1357, N'it', N'Resetta la tua password - My Website', NULL, N'Resetta la tua password', N'<div class="row">
<div class="col-sm-12">
<h1>Resetta la tua password</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$SubscriptionPasswordReset-Index}</div>
</div>', N'Resetta la tua password', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1358, N'en', N'Restricted page example - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Restricted page example</h1>
<p>In this page you can serve content that is&nbsp;available only to registered users.</p>
</div>
</div>', N'Restricted page example', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (1358, N'it', N'Esempio pagina Riservata - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Esempio pagina Riservata</h1>
<p>In questa pagina puoi servire dei contenuti disponibili solo per gli&nbsp;utenti registrati.</p>
</div>
</div>', N'Esempio pagina Riservata', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2361, N'en', N'Page example - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Page example</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.</p>
<p>Vivamus fermentum semper porta. Nunc diam velit, adipiscing ut tristique vitae, sagittis vel odio. Maecenas convallis ullamcorper ultricies. Curabitur ornare, ligula semper consectetur sagittis, nisi diam iaculis velit, id fringilla sem nunc vel mi. Nam dictum, odio nec pretium volutpat, arcu ante placerat erat, non tristique elit urna et turpis. Quisque mi metus, ornare sit amet fermentum et, tincidunt et orci. Fusce eget orci a orci congue vestibulum. Ut dolor diam, elementum et vestibulum eu, porttitor vel elit. Curabitur venenatis pulvinar tellus gravida ornare. Sed et erat faucibus nunc euismod ultricies ut id justo. Nullam cursus suscipit nisi, et ultrices justo sodales nec. Fusce venenatis facilisis lectus ac semper. Aliquam at massa ipsum. Quisque bibendum purus convallis nulla ultrices ultricies. Nullam aliquam, mi eu aliquam tincidunt, purus velit laoreet tortor, viverra pretium nisi quam vitae mi. Fusce vel volutpat elit. Nam sagittis nisi dui.</p>
</div>
</div>', N'Page example', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2361, N'it', N'Esempio pagina - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Esempio pagina</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.</p>
<p>Vivamus fermentum semper porta. Nunc diam velit, adipiscing ut tristique vitae, sagittis vel odio. Maecenas convallis ullamcorper ultricies. Curabitur ornare, ligula semper consectetur sagittis, nisi diam iaculis velit, id fringilla sem nunc vel mi. Nam dictum, odio nec pretium volutpat, arcu ante placerat erat, non tristique elit urna et turpis. Quisque mi metus, ornare sit amet fermentum et, tincidunt et orci. Fusce eget orci a orci congue vestibulum. Ut dolor diam, elementum et vestibulum eu, porttitor vel elit. Curabitur venenatis pulvinar tellus gravida ornare. Sed et erat faucibus nunc euismod ultricies ut id justo. Nullam cursus suscipit nisi, et ultrices justo sodales nec. Fusce venenatis facilisis lectus ac semper. Aliquam at massa ipsum. Quisque bibendum purus convallis nulla ultrices ultricies. Nullam aliquam, mi eu aliquam tincidunt, purus velit laoreet tortor, viverra pretium nisi quam vitae mi. Fusce vel volutpat elit. Nam sagittis nisi dui.</p>
</div>
</div>', N'Esempio pagina', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2362, N'en', N'Another page example - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Another page example</h1>
</div>
</div>
<div class="row">
<div class="col-sm-8">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.</div>
<div class="col-sm-4">Vivamus fermentum semper porta. Nunc diam velit, adipiscing ut tristique vitae, sagittis vel odio. Maecenas convallis ullamcorper ultricies. Curabitur ornare, ligula semper consectetur sagittis, nisi diam iaculis velit, id fringilla sem nunc vel mi. Nam dictum, odio nec pretium volutpat, arcu ante placerat erat, non tristique elit urna et turpis. Quisque mi metus, ornare sit amet fermentum et, tincidunt et orci. Fusce eget orci a orci congue vestibulum. Ut dolor diam, elementum et vestibulum eu, porttitor vel elit. Curabitur venenatis pulvinar tellus gravida ornare. Sed et erat faucibus nunc euismod ultricies ut id justo. Nullam cursus suscipit nisi, et ultrices justo sodales nec. Fusce venenatis facilisis lectus ac semper. Aliquam at massa ipsum. Quisque bibendum purus convallis nulla ultrices ultricies. Nullam aliquam, mi eu aliquam tincidunt, purus velit laoreet tortor, viverra pretium nisi quam vitae mi. Fusce vel volutpat elit. Nam sagittis nisi dui.</div>
</div>', N'Another page example', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2362, N'it', N'Altro esempio pagina - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Altro esempio pagina</h1>
</div>
</div>
<div class="row">
<div class="col-sm-8">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.</div>
<div class="col-sm-4">Vivamus fermentum semper porta. Nunc diam velit, adipiscing ut tristique vitae, sagittis vel odio. Maecenas convallis ullamcorper ultricies. Curabitur ornare, ligula semper consectetur sagittis, nisi diam iaculis velit, id fringilla sem nunc vel mi. Nam dictum, odio nec pretium volutpat, arcu ante placerat erat, non tristique elit urna et turpis. Quisque mi metus, ornare sit amet fermentum et, tincidunt et orci. Fusce eget orci a orci congue vestibulum. Ut dolor diam, elementum et vestibulum eu, porttitor vel elit. Curabitur venenatis pulvinar tellus gravida ornare. Sed et erat faucibus nunc euismod ultricies ut id justo. Nullam cursus suscipit nisi, et ultrices justo sodales nec. Fusce venenatis facilisis lectus ac semper. Aliquam at massa ipsum. Quisque bibendum purus convallis nulla ultrices ultricies. Nullam aliquam, mi eu aliquam tincidunt, purus velit laoreet tortor, viverra pretium nisi quam vitae mi. Fusce vel volutpat elit. Nam sagittis nisi dui.</div>
</div>', N'Altro esempio pagina', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2364, N'en', N'Gallery example - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Gallery example</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$MediaGallery-GalleryExample}</div>
</div>', N'Gallery example', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2364, N'it', N'Esempio galleria - My Website', NULL, NULL, N'<div class="row">
<div class="col-sm-12">
<h1>Esempio galleria</h1>
</div>
</div>
<div class="row">
<div class="col-sm-12">{$MediaGallery-GalleryExample}</div>
</div>', N'Esempio galleria', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2365, N'en', NULL, NULL, NULL, N'<div class="row">
<div class="col-sm-12">{$News-Index}</div>
</div>', N'News example', NULL)
INSERT [dbo].[tb_cms_pages_languages] ([PageId], [LanguageCode], [MetaTagTitle], [MetaTagKeywords], [MetaTagDescription], [HtmlCode], [MenuName], [Robots]) VALUES (2365, N'it', NULL, NULL, NULL, N'<div class="row">
<div class="col-sm-12">{$News-Index}</div>
</div>', N'Esempio notizie', NULL)
INSERT [dbo].[tb_cms_shared_content] ([SharedContentCode], [IsActive]) VALUES (N'Footer', 1)
INSERT [dbo].[tb_cms_shared_content_languages] ([SharedContentCode], [LanguageCode], [HtmlCode]) VALUES (N'Footer', N'en', N'<footer>
<div class="container"><br />
<div class="row bottom-10">{$FooterMenu-Index}</div>
<div class="row bottom-10">
<div class="col-lg-6 pull-left">
<p>Powered by <a href="http://www.mvcwcms.com/">MVCwCMS</a></p>
<!--
Would you like to remove the "Powered by MVCwCMS" link in the bottom of the footer?
Find more info here http://www.mvcwcms.com/copyrightremoval
-->
<p>Copyright &copy;&nbsp;2015 - My Website&nbsp;- All Rights Reserved</p>
</div>
</div>
</div>
</footer>')
INSERT [dbo].[tb_cms_shared_content_languages] ([SharedContentCode], [LanguageCode], [HtmlCode]) VALUES (N'Footer', N'it', N'<footer>
<div class="container"><br />
<div class="row bottom-10">{$FooterMenu-Index}</div>
<div class="row bottom-10">
<div class="col-lg-6 pull-left">
<p>Powered by <a href="http://www.mvcwcms.com/">MVCwCMS</a></p>
<!--
Would you like to remove the "Powered by MVCwCMS" link in the bottom of the footer?
Find more info here http://www.mvcwcms.com/copyrightremoval
-->
<p>Copyright &copy;&nbsp;2015 - My Website&nbsp;- Tutti i diritti riservati</p>
</div>
</div>
</div>
</footer>')
INSERT [dbo].[tb_cms_subscription_statuses] ([SubscriptionStatusId], [SubscriptionStatusName]) VALUES (1, N'{#SubscriptionStatusNotVerified}')
INSERT [dbo].[tb_cms_subscription_statuses] ([SubscriptionStatusId], [SubscriptionStatusName]) VALUES (2, N'{#SubscriptionStatusActive}')
INSERT [dbo].[tb_cms_subscription_statuses] ([SubscriptionStatusId], [SubscriptionStatusName]) VALUES (3, N'{#SubscriptionStatusInactive}')
INSERT [dbo].[tb_cms_subscriptions] ([Email], [Password], [Salt], [FirstName], [LastName], [Birthdate], [PhoneNumber], [Address], [City], [PostCode], [CountryCode], [SubscriptionStatusId], [WantsNewsletter], [JoinDate], [IpAddress], [ActivationKey], [PasswordResetKey], [Notes]) VALUES (N'johndoe@sharklasers.com', N'73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk/OHQMP6ZiM0HCFxyolG/no1RRv6qMyFTkR', N'zh0DD+mYjNBwhccqJRv56NUUb+qjMhU5EQ==', N'John', N'Doe', CAST(N'1976-01-28T00:00:00.000' AS DateTime), N'0400000000', N'1 George St', N'Sydney', N'2000', N'AU', 2, 1, CAST(N'2014-04-13T13:22:34.263' AS DateTime), N'::1', N'4TRPNSOWYW9Cx33co5p52rx4d3b4ktdgs5y3', NULL, NULL)
INSERT [dbo].[tb_cms_subscriptions_config] ([Id], [IsSubscriptionActive], [RegisterPageId], [SignInPageId], [ForgotPasswordPageId], [ChangePasswordPageId], [ProfilePageId]) VALUES (1, 1, 1351, 1352, 1354, 1355, 1356)
ALTER TABLE [dbo].[tb_admin_groups_pages_permissions]  WITH CHECK ADD  CONSTRAINT [FK_tb_admin_groups_pages_permissions_tb_admin_groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[tb_admin_groups] ([GroupId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_admin_groups_pages_permissions] CHECK CONSTRAINT [FK_tb_admin_groups_pages_permissions_tb_admin_groups]
GO
ALTER TABLE [dbo].[tb_admin_groups_pages_permissions]  WITH CHECK ADD  CONSTRAINT [FK_tb_admin_groups_pages_permissions_tb_admin_pages] FOREIGN KEY([PageId])
REFERENCES [dbo].[tb_admin_pages] ([PageId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_admin_groups_pages_permissions] CHECK CONSTRAINT [FK_tb_admin_groups_pages_permissions_tb_admin_pages]
GO
ALTER TABLE [dbo].[tb_admin_pages]  WITH CHECK ADD  CONSTRAINT [FK_tb_admin_pages_tb_admin_pages] FOREIGN KEY([PageParentId])
REFERENCES [dbo].[tb_admin_pages] ([PageId])
GO
ALTER TABLE [dbo].[tb_admin_pages] CHECK CONSTRAINT [FK_tb_admin_pages_tb_admin_pages]
GO
ALTER TABLE [dbo].[tb_admin_users]  WITH CHECK ADD  CONSTRAINT [FK_tb_admin_users_tb_admin_groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[tb_admin_groups] ([GroupId])
GO
ALTER TABLE [dbo].[tb_admin_users] CHECK CONSTRAINT [FK_tb_admin_users_tb_admin_groups]
GO
ALTER TABLE [dbo].[tb_admin_users]  WITH CHECK ADD  CONSTRAINT [FK_tb_admin_users_tb_cms_subscriptions] FOREIGN KEY([Email])
REFERENCES [dbo].[tb_cms_subscriptions] ([Email])
GO
ALTER TABLE [dbo].[tb_admin_users] CHECK CONSTRAINT [FK_tb_admin_users_tb_cms_subscriptions]
GO
ALTER TABLE [dbo].[tb_cms_global_configuration]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_global_configuration_tb_cms_languages] FOREIGN KEY([DefaultLanguageCode])
REFERENCES [dbo].[tb_cms_languages] ([LanguageCode])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_global_configuration] CHECK CONSTRAINT [FK_tb_cms_global_configuration_tb_cms_languages]
GO
ALTER TABLE [dbo].[tb_cms_global_configuration]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_global_configuration_tb_cms_page_templates] FOREIGN KEY([DefaultErrorPageTemplateId])
REFERENCES [dbo].[tb_cms_page_templates] ([PageTemplateId])
GO
ALTER TABLE [dbo].[tb_cms_global_configuration] CHECK CONSTRAINT [FK_tb_cms_global_configuration_tb_cms_page_templates]
GO
ALTER TABLE [dbo].[tb_cms_media_galleries]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_media_galleries_tb_admin_users] FOREIGN KEY([UserName])
REFERENCES [dbo].[tb_admin_users] ([UserName])
GO
ALTER TABLE [dbo].[tb_cms_media_galleries] CHECK CONSTRAINT [FK_tb_cms_media_galleries_tb_admin_users]
GO
ALTER TABLE [dbo].[tb_cms_media_galleries_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_media_galleries_languages_tb_cms_languages] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[tb_cms_languages] ([LanguageCode])
GO
ALTER TABLE [dbo].[tb_cms_media_galleries_languages] CHECK CONSTRAINT [FK_tb_cms_media_galleries_languages_tb_cms_languages]
GO
ALTER TABLE [dbo].[tb_cms_media_galleries_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_media_galleries_languages_tb_cms_media_galleries] FOREIGN KEY([MediaGalleryCode])
REFERENCES [dbo].[tb_cms_media_galleries] ([MediaGalleryCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_media_galleries_languages] CHECK CONSTRAINT [FK_tb_cms_media_galleries_languages_tb_cms_media_galleries]
GO
ALTER TABLE [dbo].[tb_cms_media_items]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_media_items_tb_cms_media_galleries] FOREIGN KEY([MediaGalleryCode])
REFERENCES [dbo].[tb_cms_media_galleries] ([MediaGalleryCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_media_items] CHECK CONSTRAINT [FK_tb_cms_media_items_tb_cms_media_galleries]
GO
ALTER TABLE [dbo].[tb_cms_media_items]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_media_items_tb_cms_media_types] FOREIGN KEY([MediaTypeId])
REFERENCES [dbo].[tb_cms_media_types] ([MediaTypeId])
GO
ALTER TABLE [dbo].[tb_cms_media_items] CHECK CONSTRAINT [FK_tb_cms_media_items_tb_cms_media_types]
GO
ALTER TABLE [dbo].[tb_cms_media_items_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_media_items_languages_tb_cms_languages] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[tb_cms_languages] ([LanguageCode])
GO
ALTER TABLE [dbo].[tb_cms_media_items_languages] CHECK CONSTRAINT [FK_tb_cms_media_items_languages_tb_cms_languages]
GO
ALTER TABLE [dbo].[tb_cms_media_items_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_media_items_languages_tb_cms_media_items] FOREIGN KEY([MediaItemId])
REFERENCES [dbo].[tb_cms_media_items] ([MediaItemId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_media_items_languages] CHECK CONSTRAINT [FK_tb_cms_media_items_languages_tb_cms_media_items]
GO
ALTER TABLE [dbo].[tb_cms_news]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_news_tb_admin_users] FOREIGN KEY([UserName])
REFERENCES [dbo].[tb_admin_users] ([UserName])
GO
ALTER TABLE [dbo].[tb_cms_news] CHECK CONSTRAINT [FK_tb_cms_news_tb_admin_users]
GO
ALTER TABLE [dbo].[tb_cms_news]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_news_tb_cms_news_categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tb_cms_news_categories] ([CategoryId])
GO
ALTER TABLE [dbo].[tb_cms_news] CHECK CONSTRAINT [FK_tb_cms_news_tb_cms_news_categories]
GO
ALTER TABLE [dbo].[tb_cms_news_categories_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_news_categories_languages_tb_cms_languages] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[tb_cms_languages] ([LanguageCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_news_categories_languages] CHECK CONSTRAINT [FK_tb_cms_news_categories_languages_tb_cms_languages]
GO
ALTER TABLE [dbo].[tb_cms_news_categories_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_news_categories_languages_tb_cms_news_categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tb_cms_news_categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_news_categories_languages] CHECK CONSTRAINT [FK_tb_cms_news_categories_languages_tb_cms_news_categories]
GO
ALTER TABLE [dbo].[tb_cms_news_comments]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_news_comments_tb_cms_news] FOREIGN KEY([NewsId])
REFERENCES [dbo].[tb_cms_news] ([NewsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_news_comments] CHECK CONSTRAINT [FK_tb_cms_news_comments_tb_cms_news]
GO
ALTER TABLE [dbo].[tb_cms_news_comments]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_news_comments_tb_cms_subscriptions] FOREIGN KEY([SubscriptionEmail])
REFERENCES [dbo].[tb_cms_subscriptions] ([Email])
GO
ALTER TABLE [dbo].[tb_cms_news_comments] CHECK CONSTRAINT [FK_tb_cms_news_comments_tb_cms_subscriptions]
GO
ALTER TABLE [dbo].[tb_cms_news_config]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_news_config_tb_cms_pages] FOREIGN KEY([NewsPageId])
REFERENCES [dbo].[tb_cms_pages] ([PageId])
GO
ALTER TABLE [dbo].[tb_cms_news_config] CHECK CONSTRAINT [FK_tb_cms_news_config_tb_cms_pages]
GO
ALTER TABLE [dbo].[tb_cms_news_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_news_languages_tb_cms_languages] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[tb_cms_languages] ([LanguageCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_news_languages] CHECK CONSTRAINT [FK_tb_cms_news_languages_tb_cms_languages]
GO
ALTER TABLE [dbo].[tb_cms_news_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_news_languages_tb_cms_news] FOREIGN KEY([NewsId])
REFERENCES [dbo].[tb_cms_news] ([NewsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_news_languages] CHECK CONSTRAINT [FK_tb_cms_news_languages_tb_cms_news]
GO
ALTER TABLE [dbo].[tb_cms_pages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_pages_tb_cms_page_templates] FOREIGN KEY([PageTemplateId])
REFERENCES [dbo].[tb_cms_page_templates] ([PageTemplateId])
GO
ALTER TABLE [dbo].[tb_cms_pages] CHECK CONSTRAINT [FK_tb_cms_pages_tb_cms_page_templates]
GO
ALTER TABLE [dbo].[tb_cms_pages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_pages_tb_cms_pages] FOREIGN KEY([PageParentId])
REFERENCES [dbo].[tb_cms_pages] ([PageId])
GO
ALTER TABLE [dbo].[tb_cms_pages] CHECK CONSTRAINT [FK_tb_cms_pages_tb_cms_pages]
GO
ALTER TABLE [dbo].[tb_cms_pages_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_pages_languages_tb_cms_languages] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[tb_cms_languages] ([LanguageCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_pages_languages] CHECK CONSTRAINT [FK_tb_cms_pages_languages_tb_cms_languages]
GO
ALTER TABLE [dbo].[tb_cms_pages_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_pages_languages_tb_cms_pages] FOREIGN KEY([PageId])
REFERENCES [dbo].[tb_cms_pages] ([PageId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_pages_languages] CHECK CONSTRAINT [FK_tb_cms_pages_languages_tb_cms_pages]
GO
ALTER TABLE [dbo].[tb_cms_shared_content_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_shared_content_languages_tb_cms_languages] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[tb_cms_languages] ([LanguageCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_shared_content_languages] CHECK CONSTRAINT [FK_tb_cms_shared_content_languages_tb_cms_languages]
GO
ALTER TABLE [dbo].[tb_cms_shared_content_languages]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_shared_content_languages_tb_cms_shared_content] FOREIGN KEY([SharedContentCode])
REFERENCES [dbo].[tb_cms_shared_content] ([SharedContentCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_cms_shared_content_languages] CHECK CONSTRAINT [FK_tb_cms_shared_content_languages_tb_cms_shared_content]
GO
ALTER TABLE [dbo].[tb_cms_subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_users_tb_cms_countries] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[tb_cms_countries] ([CountryCode])
GO
ALTER TABLE [dbo].[tb_cms_subscriptions] CHECK CONSTRAINT [FK_tb_cms_users_tb_cms_countries]
GO
ALTER TABLE [dbo].[tb_cms_subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_users_tb_cms_user_status] FOREIGN KEY([SubscriptionStatusId])
REFERENCES [dbo].[tb_cms_subscription_statuses] ([SubscriptionStatusId])
GO
ALTER TABLE [dbo].[tb_cms_subscriptions] CHECK CONSTRAINT [FK_tb_cms_users_tb_cms_user_status]
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages] FOREIGN KEY([RegisterPageId])
REFERENCES [dbo].[tb_cms_pages] ([PageId])
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config] CHECK CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages]
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages1] FOREIGN KEY([SignInPageId])
REFERENCES [dbo].[tb_cms_pages] ([PageId])
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config] CHECK CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages1]
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages2] FOREIGN KEY([ForgotPasswordPageId])
REFERENCES [dbo].[tb_cms_pages] ([PageId])
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config] CHECK CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages2]
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages3] FOREIGN KEY([ChangePasswordPageId])
REFERENCES [dbo].[tb_cms_pages] ([PageId])
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config] CHECK CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages3]
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config]  WITH CHECK ADD  CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages4] FOREIGN KEY([ProfilePageId])
REFERENCES [dbo].[tb_cms_pages] ([PageId])
GO
ALTER TABLE [dbo].[tb_cms_subscriptions_config] CHECK CONSTRAINT [FK_tb_cms_subscriptions_config_tb_cms_pages4]
GO
/****** Object:  StoredProcedure [dbo].[sp_admin_groups_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_admin_groups_delete]
	@GroupId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_groups WHERE GroupId = @GroupId
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_admin_groups WHERE GroupId = @GroupId
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Record does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
		
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Record used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END













GO
/****** Object:  StoredProcedure [dbo].[sp_admin_groups_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_admin_groups_insert]
	@GroupName nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_groups WHERE GroupName = @GroupName
    
		IF @isRecordExisting = 0
			BEGIN
				INSERT INTO tb_admin_groups
				(GroupName)
				OUTPUT INSERTED.GroupId
				VALUES
				(@GroupName)

				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Record already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END













GO
/****** Object:  StoredProcedure [dbo].[sp_admin_groups_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_admin_groups_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT ag.GroupId,
		   ag.GroupName
	FROM tb_admin_groups ag
	ORDER BY ag.GroupName

	RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[sp_admin_groups_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[sp_admin_groups_update]
	@GroupId int,
	@GroupName nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_groups WHERE GroupId = @GroupId
    
		IF @isRecordExisting > 0
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_admin_groups
				WHERE GroupId <> @GroupId AND GroupName = @GroupName

				IF @isRecordExisting = 0
					BEGIN
						UPDATE tb_admin_groups
						SET
							GroupName = @GroupName
						WHERE GroupId = @GroupId
					
						RETURN 0; -- Success
					END
				ELSE
					RETURN 3; -- Record already exists
			END
		ELSE
			RETURN 2; -- Record does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END














GO
/****** Object:  StoredProcedure [dbo].[sp_admin_pages_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_admin_pages_delete]
	@PageId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_pages WHERE PageId = @PageId
    
		IF @isRecordExisting > 0
			BEGIN
				DECLARE @HasSubPages int;
				SELECT
					@HasSubPages = COUNT(*)
				FROM tb_admin_pages WHERE PageParentId = @PageId

				IF @HasSubPages = 0
					BEGIN

						DECLARE @PageParentIdCurrent int;
						DECLARE @OrderingCurrent int;
						SELECT
							@PageParentIdCurrent = PageParentId,
							@OrderingCurrent = Ordering
						FROM tb_admin_pages WHERE PageId = @PageId

						DELETE FROM tb_admin_pages WHERE PageId = @PageId
					
						UPDATE tb_admin_pages
						SET Ordering = Ordering - 1
						WHERE PageParentId = @PageParentIdCurrent AND Ordering > @OrderingCurrent

						SET @ret_code = 0; --Success
					END
				ELSE
					SET @ret_code = 3; -- @PageId has subpages
			END
		ELSE
			SET @ret_code = 2; -- @PageId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END












GO
/****** Object:  StoredProcedure [dbo].[sp_admin_pages_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[sp_admin_pages_insert]
	@PageParentId int,
	@PageName nvarchar(255),
	@Target nvarchar(255),
	@Url nvarchar(1000),
	@ShowInMenu bit,
	@IsActive bit,
	@CssClass nvarchar(255),
	@GroupsPermissions nvarchar(MAX)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_pages WHERE PageParentId = @PageParentId AND PageName = @PageName
    
		IF @isRecordExisting = 0
			BEGIN
				DECLARE @Ordering int;

				SELECT @Ordering = ISNULL(MAX(Ordering) + 1, 1)
				FROM tb_admin_pages
				WHERE PageParentId = @PageParentId

				INSERT INTO tb_admin_pages
					(PageParentId, PageName, [Target], Url, ShowInMenu, IsActive, Ordering, CssClass)
				VALUES
					(@PageParentId, @PageName, @Target, @Url, @ShowInMenu, @IsActive, @Ordering, @CssClass)

				DECLARE @lastPageId int;
				SET @lastPageId = SCOPE_IDENTITY();

				---------------------------------------------------------------------------------------------------------------
				--http://stackoverflow.com/questions/19334380/how-to-split-explode-comma-delimited-string-field-into-sql-query
				CREATE TABLE #GroupsPermissionsTable (GroupPermission nvarchar(255));

				INSERT INTO #GroupsPermissionsTable(GroupPermission)
				SELECT Value FROM dbo.fn_split_delimited_string('|', @GroupsPermissions);

				--http://www.codeproject.com/Articles/576949/TSQLplussplitplusaplusstringplusbyplusdelimiter
				INSERT INTO tb_admin_groups_pages_permissions (PageId, GroupId, PermissionCode)
				SELECT @lastPageId AS PageId,
					LTRIM(SUBSTRING(GroupPermission, 0,CHARINDEX(',',GroupPermission))), -- Splits by comma and get the left part of GroupPermission. E.g. '1,browse' = 1
					LTRIM(SUBSTRING(GroupPermission, CHARINDEX( ',',GroupPermission)+1,len(GroupPermission))) -- Splits by comma and get the right part of GroupPermission. E.g. '1,browse' = browse
				FROM #GroupsPermissionsTable
				---------------------------------------------------------------------------------------------------------------

				SET @ret_code = 0; --Success
			END
		ELSE
			SET @ret_code = 2; -- Record already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END










GO
/****** Object:  StoredProcedure [dbo].[sp_admin_pages_move_down]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[sp_admin_pages_move_down]
	@PageId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_pages WHERE PageId = @PageId
    
		IF @isRecordExisting > 0
			BEGIN
				DECLARE @PageParentIdCurrent int;
				DECLARE @OrderingCurrent int;
				DECLARE @PageIdNext int;

				SELECT
					@PageParentIdCurrent = PageParentId,
					@OrderingCurrent = Ordering
				FROM tb_admin_pages WHERE PageId = @PageId;

				SELECT
					@PageIdNext = PageId
				FROM tb_admin_pages WHERE PageParentId = @PageParentIdCurrent AND Ordering = @OrderingCurrent + 1;

				IF @PageIdNext IS NOT NULL
					BEGIN
						UPDATE tb_admin_pages
						SET Ordering = Ordering + 1
						WHERE PageId = @PageId;
						
						UPDATE tb_admin_pages
						SET Ordering = Ordering - 1
						WHERE PageId = @PageIdNext;
						
						SET @ret_code = 0; --Success
					END
				ELSE
					SET @ret_code = 3; --Can't move down because it's the last item
			END
		ELSE
			SET @ret_code = 2; -- @PageId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END














GO
/****** Object:  StoredProcedure [dbo].[sp_admin_pages_move_up]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_admin_pages_move_up]
	@PageId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_pages WHERE PageId = @PageId
    
		IF @isRecordExisting > 0
			BEGIN
				DECLARE @PageParentIdCurrent int;
				DECLARE @OrderingCurrent int;
				DECLARE @PageIdPrevious int;

				SELECT
					@PageParentIdCurrent = PageParentId,
					@OrderingCurrent = Ordering
				FROM tb_admin_pages WHERE PageId = @PageId;

				IF @OrderingCurrent > 1
					BEGIN
						SELECT
							@PageIdPrevious = PageId
						FROM tb_admin_pages WHERE PageParentId = @PageParentIdCurrent AND Ordering = @OrderingCurrent - 1;
					
						UPDATE tb_admin_pages
						SET Ordering = Ordering - 1
						WHERE PageId = @PageId;
						
						UPDATE tb_admin_pages
						SET Ordering = Ordering + 1
						WHERE PageId = @PageIdPrevious;
						
						SET @ret_code = 0; --Success
					END
				ELSE
					SET @ret_code = 3; --Can't move up because it's the first item
			END
		ELSE
			SET @ret_code = 2; -- @PageId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END













GO
/****** Object:  StoredProcedure [dbo].[sp_admin_pages_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_admin_pages_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT ap.PageId,
	       ap.PageParentId,
		   ap.PageName,
		   ap.[Target],
		   ap.Url,
		   ap.Ordering,
		   ap.ShowInMenu,
		   ap.IsActive,
		   ap.CssClass,
		   agpp.GroupId,
		   agpp.PermissionCode
	FROM tb_admin_pages ap
	LEFT OUTER JOIN tb_admin_groups_pages_permissions agpp ON ap.PageId = agpp.PageId
	ORDER BY ap.PageParentId, ap.Ordering

	RETURN 0
END







GO
/****** Object:  StoredProcedure [dbo].[sp_admin_pages_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[sp_admin_pages_update]
	@PageId int,
	@PageParentId int,
	@PageName nvarchar(255),
	@Target nvarchar(255),
	@Url nvarchar(1000),
	@ShowInMenu bit,
	@IsActive bit,
	@CssClass nvarchar(255),
	@GroupsPermissions nvarchar(MAX)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT @isRecordExisting = COUNT(*)
		FROM  tb_admin_pages
		WHERE PageId <> @PageId
		  AND PageParentId = @PageParentId
		  AND PageName = @PageName
    
		IF @isRecordExisting = 0
			BEGIN
				DECLARE @Ordering int;
				DECLARE @PageParentIdCurrent int;
				DECLARE @OrderingCurrent int;
				
				SELECT
					@PageParentIdCurrent = PageParentId,
					@OrderingCurrent = Ordering
				FROM tb_admin_pages WHERE PageId = @PageId;

				IF @PageParentIdCurrent <> @PageParentId
					BEGIN
						SELECT @Ordering = ISNULL(MAX(Ordering) + 1, 1)
						FROM tb_admin_pages
						WHERE PageParentId = @PageParentId
					END
				ELSE
					SET @Ordering = @OrderingCurrent

				UPDATE tb_admin_pages
				SET
					PageParentId = @PageParentId,
					PageName = @PageName,
					[Target] = @Target,
					Url = @Url,
					ShowInMenu = @ShowInMenu,
					IsActive = @IsActive,
					Ordering = @Ordering,
					CssClass = @CssClass
				WHERE PageId = @PageId;
				
				IF @PageParentIdCurrent <> @PageParentId
					BEGIN
						--compress the current branch
						UPDATE tb_admin_pages
						SET Ordering = Ordering - 1
						WHERE PageParentId = @PageParentIdCurrent AND Ordering > @OrderingCurrent;
					END
				
				---------------------------------------------------------------------------------------------------------------
				DELETE FROM tb_admin_groups_pages_permissions WHERE PageId = @PageId

				--http://stackoverflow.com/questions/19334380/how-to-split-explode-comma-delimited-string-field-into-sql-query
				CREATE TABLE #GroupsPermissionsTable (GroupPermission nvarchar(255));

				INSERT INTO #GroupsPermissionsTable(GroupPermission)
				SELECT Value FROM dbo.fn_split_delimited_string('|', @GroupsPermissions);

				--http://www.codeproject.com/Articles/576949/TSQLplussplitplusaplusstringplusbyplusdelimiter
				INSERT INTO tb_admin_groups_pages_permissions (PageId, GroupId, PermissionCode)
				SELECT @PageId AS PageId,
					LTRIM(SUBSTRING(GroupPermission, 0,CHARINDEX(',',GroupPermission))), -- Splits by comma and get the left part of GroupPermission. E.g. '1,browse' = 1
					LTRIM(SUBSTRING(GroupPermission, CHARINDEX( ',',GroupPermission)+1,len(GroupPermission))) -- Splits by comma and get the right part of GroupPermission. E.g. '1,browse' = browse
				FROM #GroupsPermissionsTable
				---------------------------------------------------------------------------------------------------------------

				SET @ret_code = 0; --Success
			END
		ELSE
			SET @ret_code = 2; -- Record already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END












GO
/****** Object:  StoredProcedure [dbo].[sp_admin_users_change_password]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_admin_users_change_password]
	@UserName nvarchar(255),
	@CurrentPassword nvarchar(255),
	@NewPassword nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_users WHERE UserName = @UserName AND [Password] = @CurrentPassword
    
		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_admin_users
				SET [Password] = @NewPassword
				WHERE UserName = @UserName
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Current password not valid
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END








GO
/****** Object:  StoredProcedure [dbo].[sp_admin_users_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_admin_users_delete]
	@UserName nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_users WHERE UserName = @UserName
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_admin_users WHERE UserName = @UserName
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- @UserName does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Record used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END









GO
/****** Object:  StoredProcedure [dbo].[sp_admin_users_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_admin_users_insert]
	@UserName nvarchar(255),
	@Password nvarchar(255),
	@Salt nvarchar(255),
	@FullName nvarchar(255),
	@Email nvarchar(255),
	@GroupId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_users WHERE UserName = @UserName
    
		IF @isRecordExisting = 0
			BEGIN
				INSERT INTO tb_admin_users
				(UserName, [Password], Salt, FullName, Email, GroupId)
				VALUES
				(@UserName, @Password, @Salt, @FullName, @Email, @GroupId)
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Username already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END









GO
/****** Object:  StoredProcedure [dbo].[sp_admin_users_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_admin_users_select] 
AS 
BEGIN
   SET NOCOUNT ON ;

   SELECT  au.UserName
		  ,au.Password
		  ,au.Salt
		  ,au.FullName
		  ,au.Email
		  ,au.GroupId
		  ,ag.GroupName
   FROM	tb_admin_users au
   INNER JOIN tb_admin_groups ag ON au.GroupId = ag.GroupId
   ORDER BY au.UserName

   RETURN 0
   
END







GO
/****** Object:  StoredProcedure [dbo].[sp_admin_users_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_admin_users_update]
	@UserName nvarchar(255),
	@Password nvarchar(255) = NULL,
	@Salt nvarchar(255) = NULL,
	@FullName nvarchar(255),
	@Email nvarchar(255),
	@GroupId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_admin_users WHERE UserName = @UserName
    
		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_admin_users
				SET
					[Password] = COALESCE(@Password, [Password]),
					Salt = COALESCE(@Salt, Salt),
					FullName = @FullName,
					Email = @Email,
					GroupId = @GroupId
				WHERE
					UserName = @UserName
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Username does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END










GO
/****** Object:  StoredProcedure [dbo].[sp_cms_content_templates_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_cms_content_templates_delete]
	@ContentTemplateId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_content_templates WHERE ContentTemplateId = @ContentTemplateId
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_content_templates WHERE ContentTemplateId = @ContentTemplateId
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- ContentTemplateId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
		
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Template used by one or more pages
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[sp_cms_content_templates_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_cms_content_templates_insert]
	@Title nvarchar(255),
	@Description nvarchar(255),
	@Content nvarchar(MAX),
	@IsActive bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_content_templates WHERE Title = @Title
    
		IF @isRecordExisting = 0
			BEGIN
				INSERT INTO tb_cms_content_templates
				(Title, [Description], [Content], IsActive)
				OUTPUT INSERTED.ContentTemplateId
				VALUES
				(@Title, @Description, @Content, @IsActive)

				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Title already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[sp_cms_content_templates_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_cms_content_templates_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT t.ContentTemplateId,
		   t.Title,
		   t.[Description],
		   t.[Content],
		   t.IsActive
	FROM tb_cms_content_templates t
	ORDER BY t.Title

	RETURN 0
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_content_templates_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_cms_content_templates_update]
	@ContentTemplateId int,
	@Title nvarchar(255),
	@Description nvarchar(255),
	@Content nvarchar(MAX),
	@IsActive bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_content_templates WHERE ContentTemplateId = @ContentTemplateId
    
		IF @isRecordExisting > 0
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_content_templates
				WHERE ContentTemplateId <> @ContentTemplateId AND Title = @Title

				IF @isRecordExisting = 0
					BEGIN
						UPDATE tb_cms_content_templates
						SET
							Title = @Title,
							[Description] = @Description,
							[Content] = @Content,
							IsActive = @IsActive
						OUTPUT INSERTED.ContentTemplateId
						WHERE ContentTemplateId = @ContentTemplateId
					
						RETURN 0; -- Success
					END
				ELSE
					RETURN 3; -- Title already exists
			END
		ELSE
			RETURN 2; -- Title does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END













GO
/****** Object:  StoredProcedure [dbo].[sp_cms_countries_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_cms_countries_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT c.CountryCode,
		   c.CountryName
	FROM tb_cms_countries c
	ORDER BY c.CountryName

	RETURN 0
END










GO
/****** Object:  StoredProcedure [dbo].[sp_cms_global_configuration_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cms_global_configuration_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT
		gc.Id,
		gc.SiteName,
		gc.MetaTitle,
		gc.MetaKeywords,
		gc.MetaDescription,
		gc.Robots,
		gc.NotificationEmail,
		gc.IsCanonicalizeActive,
		gc.HostNameLabel,
		gc.DomainName,
		gc.BingVerificationCode,
		gc.GoogleVerificationCode,
		gc.GoogleAnalyticsTrackingCode,
		gc.GoogleSearchCode,
		gc.IsOffline,
		gc.OfflineCode,
		gc.ServerTimeZone,
		gc.[DateFormat],
		gc.TimeFormat,
		gc.DefaultLanguageCode,
		gc.DefaultErrorPageTemplateId
	FROM tb_cms_global_configuration gc

	RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[sp_cms_global_configuration_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cms_global_configuration_update]
	@SiteName nvarchar(255),
	@MetaTitle nvarchar(255) = NULL,
	@MetaKeywords nvarchar(255) = NULL,
	@MetaDescription nvarchar(1000) = NULL,
	@Robots nvarchar(255) = NULL,
	@NotificationEmail nvarchar(255),
	@IsCanonicalizeActive bit = 0,
	@HostNameLabel nvarchar(20),
	@DomainName nvarchar(255),
	@BingVerificationCode nvarchar(1000) = NULL,
	@GoogleVerificationCode nvarchar(1000) = NULL,
	@GoogleAnalyticsTrackingCode nvarchar(MAX) = NULL,
	@GoogleSearchCode nvarchar(1000) = NULL,
	@IsOffline bit,
	@OfflineCode nvarchar(255),
	@ServerTimeZone nvarchar(255),
	@DateFormat nvarchar(20),
	@TimeFormat nvarchar(20),
	@DefaultLanguageCode char(2),
	@DefaultErrorPageTemplateId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_global_configuration

		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_cms_global_configuration
				SET
					SiteName = @SiteName,
					MetaTitle = @MetaTitle,
					MetaKeywords = @MetaKeywords,
					MetaDescription = @MetaDescription,
					Robots = @Robots,
					NotificationEmail = @NotificationEmail,
					IsCanonicalizeActive = @IsCanonicalizeActive,
					HostNameLabel = @HostNameLabel,
					DomainName = @DomainName,
					BingVerificationCode = @BingVerificationCode,
					GoogleVerificationCode = @GoogleVerificationCode,
					GoogleAnalyticsTrackingCode = @GoogleAnalyticsTrackingCode,
					GoogleSearchCode = @GoogleSearchCode,
					IsOffline = @IsOffline,
					OfflineCode = @OfflineCode,
					ServerTimeZone = @ServerTimeZone,
					[DateFormat] = @DateFormat,
					TimeFormat = @TimeFormat,
					DefaultLanguageCode = @DefaultLanguageCode,
					DefaultErrorPageTemplateId = @DefaultErrorPageTemplateId
				WHERE Id = 1

				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Item does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;

		RETURN 1; -- DB Error
	END CATCH
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_languages_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_cms_languages_delete]
	@LanguageCode char(2)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_languages WHERE LanguageCode = @LanguageCode
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_languages WHERE LanguageCode = @LanguageCode
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- @LanguageCode does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Record used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END










GO
/****** Object:  StoredProcedure [dbo].[sp_cms_languages_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_cms_languages_insert]
	@LanguageCode char(2),
	@LanguageName nvarchar(255),
	@LanguageNameOriginal nvarchar(255),
	@IsActive bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_languages WHERE LanguageCode = @LanguageCode
    
		IF @isRecordExisting = 0
			BEGIN
				INSERT INTO tb_cms_languages
				(LanguageCode, LanguageName, LanguageNameOriginal, IsActive)
				VALUES
				(LOWER(@LanguageCode), @LanguageName, @LanguageNameOriginal, @IsActive)
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- LanguageCode already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END










GO
/****** Object:  StoredProcedure [dbo].[sp_cms_languages_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_cms_languages_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT l.LanguageCode,
		   l.LanguageName,
		   l.LanguageNameOriginal,
		   l.IsActive
	FROM tb_cms_languages l
	ORDER BY l.LanguageName

	RETURN 0
END









GO
/****** Object:  StoredProcedure [dbo].[sp_cms_languages_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_cms_languages_update]
	@CurrentLanguageCode char(2),
	@NewLanguageCode char(2),
	@LanguageName nvarchar(255),
	@LanguageNameOriginal nvarchar(255),
	@IsActive bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_languages WHERE LanguageCode = @CurrentLanguageCode
    
		IF @isRecordExisting > 0
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_languages
				WHERE LanguageCode <> @CurrentLanguageCode AND LanguageCode = @NewLanguageCode

				IF @isRecordExisting = 0
					BEGIN
						UPDATE tb_cms_languages
						SET
							LanguageCode = LOWER(@NewLanguageCode),
							LanguageName = @LanguageName,
							LanguageNameOriginal = @LanguageNameOriginal,
							IsActive = @IsActive
						WHERE
							LanguageCode = @CurrentLanguageCode
					
						RETURN 0; -- Success
					END
				ELSE
					RETURN 3; -- NewLanguageCode already exists
			END
		ELSE
			RETURN 2; -- CurrentLanguageCode does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_media_galleries_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_cms_media_galleries_delete]
	@MediaGalleryCode nvarchar(50)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_media_galleries WHERE MediaGalleryCode = @MediaGalleryCode
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_media_galleries WHERE MediaGalleryCode = @MediaGalleryCode
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- @MediaGalleryCode does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Record used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_media_galleries_insert_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_cms_media_galleries_insert_update]
	@CurrentMediaGalleryCode nvarchar(50),
	@NewMediaGalleryCode nvarchar(50),
	@LanguageCode char(2),
	@IsActive bit,
	@PublishDate datetime,
	@UserName nvarchar(255),
	@MediaGalleryTitle nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;

		IF @CurrentMediaGalleryCode IS NULL
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_media_galleries_languages
				WHERE MediaGalleryCode = @NewMediaGalleryCode AND LanguageCode = @LanguageCode

				IF @isRecordExisting = 0
					BEGIN
						SELECT
							@isRecordExisting = COUNT(*)
						FROM tb_cms_media_galleries WHERE MediaGalleryCode = @NewMediaGalleryCode

						IF @isRecordExisting = 0
							BEGIN
								INSERT INTO tb_cms_media_galleries
								(IsActive, MediaGalleryCode, PublishDate, UserName)
								VALUES
								(@IsActive, @NewMediaGalleryCode, @PublishDate, @UserName)
							END
						ELSE
							BEGIN
								UPDATE tb_cms_media_galleries
								SET
									IsActive = @IsActive,
									MediaGalleryCode = @NewMediaGalleryCode,
									PublishDate = @PublishDate,
									UserName = @UserName
								WHERE MediaGalleryCode = @NewMediaGalleryCode
							END

						INSERT INTO tb_cms_media_galleries_languages
						(MediaGalleryCode, LanguageCode, MediaGalleryTitle)
						VALUES
						(@NewMediaGalleryCode, @LanguageCode, @MediaGalleryTitle)

						SET @ret_code = 0; --Success
					END
				ELSE
					BEGIN
						SET @ret_code = 3; -- @NewMediaGalleryCode already exists
					END
			END
		ELSE
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_media_galleries WHERE MediaGalleryCode = @CurrentMediaGalleryCode

				IF @isRecordExisting = 0
					BEGIN
						SET @ret_code = 2; -- @CurrentMediaGalleryCode does not exist
					END
				ELSE
					BEGIN
						IF @CurrentMediaGalleryCode = @NewMediaGalleryCode
							BEGIN
								UPDATE tb_cms_media_galleries
								SET
									IsActive = @IsActive,
									MediaGalleryCode = @NewMediaGalleryCode,
									PublishDate = @PublishDate,
									UserName = @UserName
								WHERE MediaGalleryCode = @NewMediaGalleryCode

								UPDATE tb_cms_media_galleries_languages
								SET
									MediaGalleryTitle = @MediaGalleryTitle
								WHERE MediaGalleryCode = @NewMediaGalleryCode
								AND LanguageCode = @LanguageCode

								SET @ret_code = 0; --Success
							END
						ELSE
							BEGIN
								SELECT
									@isRecordExisting = COUNT(*)
								FROM tb_cms_media_galleries WHERE MediaGalleryCode <> @CurrentMediaGalleryCode AND MediaGalleryCode = @NewMediaGalleryCode

								IF @isRecordExisting = 0
									BEGIN
										UPDATE tb_cms_media_galleries
										SET
											MediaGalleryCode = @NewMediaGalleryCode,
											IsActive = @IsActive,
											PublishDate = @PublishDate,
											UserName = @UserName
										WHERE MediaGalleryCode = @CurrentMediaGalleryCode

										UPDATE tb_cms_media_galleries_languages
										SET
											MediaGalleryTitle = @MediaGalleryTitle
										WHERE MediaGalleryCode = @NewMediaGalleryCode
										AND LanguageCode = @LanguageCode

										SET @ret_code = 0; --Success
									END
								ELSE
									BEGIN
										SET @ret_code = 3; -- @NewMediaGalleryCode already exists
									END
							END
					END
			END
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END













GO
/****** Object:  StoredProcedure [dbo].[sp_cms_media_galleries_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_cms_media_galleries_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT mg.IsActive,
		   mg.MediaGalleryCode,
		   mg.PublishDate,
		   mg.UserName,
		   mgl.LanguageCode,
		   mgl.MediaGalleryTitle
	FROM tb_cms_media_galleries mg
		 LEFT OUTER JOIN tb_cms_media_galleries_languages AS mgl
		 ON mg.MediaGalleryCode = mgl.MediaGalleryCode
	ORDER BY mgl.MediaGalleryTitle

	RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[sp_cms_media_items_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_cms_media_items_delete]
	@MediaItemId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_media_items WHERE MediaItemId = @MediaItemId
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_media_items WHERE MediaItemId = @MediaItemId
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- @MediaItemId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Record used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[sp_cms_media_items_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[sp_cms_media_items_insert]
	@MediaGalleryCode nvarchar(50),
	@MediaItemPath nvarchar(MAX),
	@MediaTypeId int,
	@IsActive bit,
	@LanguageCodes nvarchar(MAX)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;

		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_media_items
		WHERE MediaGalleryCode = @MediaGalleryCode AND MediaItemPath = @MediaItemPath

		IF @isRecordExisting = 0
			BEGIN
				DECLARE @Ordering int;

				SELECT @Ordering = ISNULL(MAX(Ordering) + 1, 1)
				FROM tb_cms_media_items
				WHERE MediaGalleryCode = @MediaGalleryCode

				DECLARE @IsMainItem bit;

				SELECT @IsMainItem = IIF(COUNT(*) > 0, 0, 1)
				FROM tb_cms_media_items
				WHERE MediaGalleryCode = @MediaGalleryCode AND IsMainItem = 1

				INSERT INTO tb_cms_media_items
				(IsActive, IsMainItem, MediaGalleryCode, MediaItemPath, MediaTypeId, Ordering)
				VALUES
				(@IsActive, @IsMainItem, @MediaGalleryCode, @MediaItemPath, @MediaTypeId, @Ordering)

				DECLARE @LastMediaItemId int;
				SET @LastMediaItemId = SCOPE_IDENTITY();

				---------------------------------------------------------------------------------------------------------------
				CREATE TABLE #LanguageCodesTable (LanguageCode char(2));

				INSERT INTO #LanguageCodesTable(LanguageCode)
				SELECT Value FROM dbo.fn_split_delimited_string('|', @LanguageCodes);

				INSERT INTO tb_cms_media_items_languages (MediaItemId, LanguageCode, MediaItemTitle)
				SELECT @LastMediaItemId AS MediaItemId, LanguageCode, ''
				FROM #LanguageCodesTable;
				---------------------------------------------------------------------------------------------------------------

				SET @ret_code = 0; --Success
			END
		ELSE
			BEGIN
				SET @ret_code = 2; -- @MediaItem already exists
			END
			
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END














GO
/****** Object:  StoredProcedure [dbo].[sp_cms_media_items_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_cms_media_items_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT mi.IsActive,
		   mi.IsMainItem,
	       mi.MediaGalleryCode,
		   mi.MediaItemPath,
		   mi.MediaItemId,
		   mt.MediaTypeName,
		   mi.MediaTypeId,
		   mi.Ordering,
		   --mil.LanguageCode,
		   --mil.MediaItemTitle
           SUBSTRING(
           (
				SELECT '|' + ISNULL(T1.LanguageCode, '') + '~' + ISNULL(T1.MediaItemTitle, '') AS [text()]
				FROM tb_cms_media_items_languages T1
				WHERE T1.MediaItemId = mi.MediaItemId
				ORDER BY T1.LanguageCode
				FOR XML PATH ('')
           ), 2, 50000) LanguageCodesTitles
	FROM tb_cms_media_items AS mi INNER JOIN
		 tb_cms_media_types mt ON mi.MediaTypeId = mt.MediaTypeId 
		 --LEFT OUTER JOIN tb_cms_media_items_languages AS mil ON mi.MediaItemId = mil.MediaItemId
	ORDER BY mi.Ordering

	RETURN 0
END









GO
/****** Object:  StoredProcedure [dbo].[sp_cms_media_items_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[sp_cms_media_items_update]
	@MediaItemId int,
	@IsMainItem	bit,
	@Ordering int,
	@IsActive bit,
	@LanguageCodesMediaTitles nvarchar(MAX)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;

		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_media_items WHERE MediaItemId = @MediaItemId

		IF @isRecordExisting > 0
			BEGIN
				DECLARE @MediaGalleryCode nvarchar(50);

				SELECT @MediaGalleryCode = MediaGalleryCode FROM tb_cms_media_items WHERE MediaItemId = @MediaItemId

				IF @IsMainItem = 1
					BEGIN
						UPDATE tb_cms_media_items SET IsMainItem = 0 WHERE MediaGalleryCode = @MediaGalleryCode
					END

				UPDATE tb_cms_media_items
				SET IsMainItem = @IsMainItem, Ordering = @Ordering, IsActive = @IsActive
				WHERE MediaItemId = @MediaItemId

				---------------------------------------------------------------------------------------------------------------
				DELETE FROM tb_cms_media_items_languages WHERE MediaItemId = @MediaItemId

				--http://stackoverflow.com/questions/19334380/how-to-split-explode-comma-delimited-string-field-into-sql-query
				CREATE TABLE #LanguageCodesMediaTitlesTable (LanguageCodeMediaTitle nvarchar(260));

				INSERT INTO #LanguageCodesMediaTitlesTable(LanguageCodeMediaTitle)
				SELECT Value FROM dbo.fn_split_delimited_string('|', @LanguageCodesMediaTitles);

				--http://www.codeproject.com/Articles/576949/TSQLplussplitplusaplusstringplusbyplusdelimiter
				INSERT INTO tb_cms_media_items_languages (MediaItemId, LanguageCode, MediaItemTitle)
				SELECT @MediaItemId AS MediaItemId,
					LTRIM(SUBSTRING(LanguageCodeMediaTitle, 0, CHARINDEX('~', LanguageCodeMediaTitle))), -- Splits by comma and get the left part of LanguageCodeMediaTitle. E.g. 'en,your photo title' = en
					LTRIM(SUBSTRING(LanguageCodeMediaTitle, CHARINDEX('~', LanguageCodeMediaTitle) + 1, len(LanguageCodeMediaTitle))) -- Splits by comma and get the right part of LanguageCodeMediaTitle. E.g. 'en,your photo title' = your photo title
				FROM #LanguageCodesMediaTitlesTable
				---------------------------------------------------------------------------------------------------------------

				SET @ret_code = 0; --Success
			END
		ELSE
			BEGIN
				SET @ret_code = 2; -- @MediaItemId does not exist
			END
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END














GO
/****** Object:  StoredProcedure [dbo].[sp_cms_media_types_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_cms_media_types_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT MediaTypeId,
	       MediaTypeName
	FROM tb_cms_media_types

	RETURN 0
END










GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_categories_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_categories_delete]
	@CategoryId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_news_categories WHERE CategoryId = @CategoryId
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_news_categories WHERE CategoryId = @CategoryId
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Item does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
		
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Record used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_categories_insert_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_categories_insert_update]
	@CategoryId int = NULL,
	@LanguageCode char(2),
	@IsActive bit,
	@CategoryName nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;

		IF @CategoryId IS NULL
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_news_categories_languages
				WHERE LanguageCode = @LanguageCode AND CategoryName = @CategoryName

				IF @isRecordExisting = 0
					BEGIN
						INSERT INTO tb_cms_news_categories
						(IsActive)
						OUTPUT INSERTED.CategoryId
						VALUES
						(@IsActive)

						DECLARE @NewCategoryId int;
						SET @NewCategoryId = SCOPE_IDENTITY();

						INSERT INTO tb_cms_news_categories_languages
						(CategoryId, LanguageCode, CategoryName)
						VALUES
						(@NewCategoryId, @LanguageCode, @CategoryName)

						SET @ret_code = 0; --Success
					END
				ELSE
					BEGIN
						SET @ret_code = 3; -- @CategoryName already exists
					END
			END
		ELSE
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_news_categories WHERE CategoryId = @CategoryId

				IF @isRecordExisting = 0
					BEGIN
						SET @ret_code = 2; -- @CategoryId does not exist
					END
				ELSE
					BEGIN
						SELECT
							@isRecordExisting = COUNT(*)
						FROM tb_cms_news_categories_languages WHERE CategoryId = @CategoryId AND LanguageCode = @LanguageCode

						IF @isRecordExisting = 0
							BEGIN
								INSERT INTO tb_cms_news_categories_languages
								(CategoryId, LanguageCode, CategoryName)
								VALUES
								(@CategoryId, @LanguageCode, @CategoryName)

								SET @ret_code = 0; --Success
							END
						ELSE
							BEGIN
								SELECT
									@isRecordExisting = COUNT(*)
								FROM tb_cms_news_categories_languages WHERE CategoryId <> @CategoryId AND LanguageCode = @LanguageCode AND CategoryName = @CategoryName

								IF @isRecordExisting = 0
									BEGIN
										UPDATE tb_cms_news_categories
										SET
											IsActive = @IsActive
										WHERE CategoryId = @CategoryId

										UPDATE tb_cms_news_categories_languages
										SET
											CategoryName = @CategoryName
										WHERE CategoryId = @CategoryId
										AND LanguageCode = @LanguageCode

										SET @ret_code = 0; --Success
									END
								ELSE
									BEGIN
										SET @ret_code = 3; -- @CategoryName already exists
									END
							END
					END
			END
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END



GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_categories_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_categories_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT nc.CategoryId,
		   nc.IsActive,
		   ncl.LanguageCode,
		   ncl.CategoryName
	FROM tb_cms_news_categories AS nc
		 LEFT OUTER JOIN tb_cms_news_categories_languages AS ncl
		 ON nc.CategoryId = ncl.CategoryId
    ORDER BY nc.CategoryId, ncl.LanguageCode

	RETURN 0
END



GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_comments_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_comments_delete]
	@CommentId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_news_comments WHERE CommentId = @CommentId
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_news_comments WHERE CommentId = @CommentId
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- @CommentId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Record used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_comments_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_comments_insert]
	@NewsId	int,
	@IsActive	bit,
	@Comment	nvarchar(1000),
	@CommentDate	datetime,
	@SubscriptionEmail	nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		
		INSERT INTO tb_cms_news_comments
		(NewsId, IsActive, Comment, CommentDate, SubscriptionEmail)
		OUTPUT inserted.CommentId
		VALUES
		(@NewsId, @IsActive, @Comment, @CommentDate, @SubscriptionEmail)
					
		RETURN 0; -- Success
		
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_comments_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_comments_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT nc.CommentId,
		   nc.NewsId,
		   nc.IsActive,
		   nc.Comment,
           nc.CommentDate,
           nc.SubscriptionEmail,
		   s.FirstName
	FROM tb_cms_news_comments AS nc INNER JOIN
        tb_cms_subscriptions AS s ON nc.SubscriptionEmail = s.Email
	ORDER BY nc.NewsId ASC, nc.CommentDate DESC

	RETURN 0
END



GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_comments_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_comments_update]
	@CommentId int,
	@IsActive	bit,
	@Comment	nvarchar(1000)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_news_comments WHERE CommentId = @CommentId
    
		IF @isRecordExisting > 0
			BEGIN

				UPDATE tb_cms_news_comments
				SET
					IsActive = @IsActive,
					Comment = @Comment
				WHERE
					CommentId = @CommentId
					
				RETURN 0; -- Success
					
			END
		ELSE
			RETURN 2; -- @CommentId does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_config_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_config_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT Id
	      ,IsNewsActive
		  ,NewsPageId
		  ,NumberOfNewsInSummary
		  ,IsCommentAutoApproved
	FROM tb_cms_news_config

	RETURN 0
END













GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_config_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_config_update]
	@IsNewsActive	bit,
	@NewsPageId	int,
	@NumberOfNewsInSummary	int,
	@IsCommentAutoApproved bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_news_config

		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_cms_news_config
				SET
					IsNewsActive = @IsNewsActive
					,NewsPageId = @NewsPageId
					,NumberOfNewsInSummary = @NumberOfNewsInSummary
					,IsCommentAutoApproved = @IsCommentAutoApproved
				WHERE Id = 1

				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Item does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;

		RETURN 1; -- DB Error
	END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_delete]
	@NewsId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_news WHERE NewsId = @NewsId
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_news WHERE NewsId = @NewsId
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Item does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
		
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Record used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_insert_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_cms_news_insert_update]
	@NewsId int = NULL,
	@NewsDate datetime,
	@UserName nvarchar(255),
	@IsActive bit,
	@CategoryId int,
	@MainImageFilePath nvarchar(MAX),
	@LanguageCode char(2),
	@NewsTitle nvarchar(255),
	@NewsContent nvarchar(MAX)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;

		IF @NewsId IS NULL
			BEGIN
				INSERT INTO tb_cms_news
				(NewsDate, UserName, IsActive, CategoryId, MainImageFilePath)
				OUTPUT INSERTED.NewsId
				VALUES
				(@NewsDate, @UserName, @IsActive, @CategoryId, @MainImageFilePath)

				DECLARE @NewNewsId int;
				SET @NewNewsId = SCOPE_IDENTITY();

				INSERT INTO tb_cms_news_languages
				(NewsId, LanguageCode, NewsTitle, NewsContent)
				VALUES
				(@NewNewsId, @LanguageCode, @NewsTitle, @NewsContent)

				SET @ret_code = 0; --Success
			END
		ELSE
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_news WHERE NewsId = @NewsId

				IF @isRecordExisting = 0
					BEGIN
						SET @ret_code = 2; -- @NewsId does not exist
					END
				ELSE
					BEGIN
						SELECT
							@isRecordExisting = COUNT(*)
						FROM tb_cms_news_languages WHERE NewsId = @NewsId AND LanguageCode = @LanguageCode

						IF @isRecordExisting = 0
							BEGIN
								INSERT INTO tb_cms_news_languages
								(NewsId, LanguageCode, NewsTitle, NewsContent)
								VALUES
								(@NewsId, @LanguageCode, @NewsTitle, @NewsContent)

								SET @ret_code = 0; --Success
							END
						ELSE
							BEGIN
								UPDATE tb_cms_news
								SET
									NewsDate = @NewsDate,
									UserName = @UserName,
									IsActive = @IsActive,
									CategoryId = @CategoryId,
									MainImageFilePath = @MainImageFilePath
								WHERE NewsId = @NewsId

								UPDATE tb_cms_news_languages
								SET
									NewsTitle = @NewsTitle,
									NewsContent = @NewsContent
								WHERE NewsId = @NewsId
								AND LanguageCode = @LanguageCode

								SET @ret_code = 0; --Success
							END
					END
			END
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END



GO
/****** Object:  StoredProcedure [dbo].[sp_cms_news_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_cms_news_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT n.NewsId,
	       nl.LanguageCode,
		   n.NewsDate,
		   n.UserName,
		   n.IsActive,
		   n.CategoryId,
		   ncl.CategoryName,
		   n.MainImageFilePath,
		   nl.NewsTitle,
		   nl.NewsContent,
		   nc.IsActive AS IsCategoryActive
	FROM tb_cms_news_categories_languages AS ncl INNER JOIN
        tb_cms_news_categories AS nc ON ncl.CategoryId = nc.CategoryId INNER JOIN
        tb_cms_news_languages AS nl INNER JOIN
        tb_cms_news AS n ON nl.NewsId = n.NewsId ON ncl.LanguageCode = nl.LanguageCode AND ncl.CategoryId = n.CategoryId


	ORDER BY nl.NewsTitle

	RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[sp_cms_page_templates_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_cms_page_templates_delete]
	@PageTemplateId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_page_templates WHERE PageTemplateId = @PageTemplateId
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_page_templates WHERE PageTemplateId = @PageTemplateId
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- PageTemplateId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
		
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Template used by one or more pages
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_page_templates_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_cms_page_templates_insert]
	@Title nvarchar(255),
	@HtmlCode nvarchar(MAX),
	@IsActive bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_page_templates WHERE Title = @Title
    
		IF @isRecordExisting = 0
			BEGIN
				INSERT INTO tb_cms_page_templates
				(Title, HtmlCode, IsActive)
				OUTPUT INSERTED.PageTemplateId
				VALUES
				(@Title, @HtmlCode, @IsActive)

				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Title already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_page_templates_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_cms_page_templates_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT t.PageTemplateId,
		   t.Title,
		   t.HtmlCode,
		   t.IsActive
	FROM tb_cms_page_templates t
	ORDER BY t.Title

	RETURN 0
END










GO
/****** Object:  StoredProcedure [dbo].[sp_cms_page_templates_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_cms_page_templates_update]
	@PageTemplateId int,
	@Title nvarchar(255),
	@HtmlCode nvarchar(MAX),
	@IsActive bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_page_templates WHERE PageTemplateId = @PageTemplateId
    
		IF @isRecordExisting > 0
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_page_templates
				WHERE PageTemplateId <> @PageTemplateId AND Title = @Title

				IF @isRecordExisting = 0
					BEGIN
						UPDATE tb_cms_page_templates
						SET
							Title = @Title,
							HtmlCode = @HtmlCode,
							IsActive = @IsActive
						OUTPUT INSERTED.PageTemplateId
						WHERE PageTemplateId = @PageTemplateId
					
						RETURN 0; -- Success
					END
				ELSE
					RETURN 3; -- Title already exists
			END
		ELSE
			RETURN 2; -- Title does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[sp_cms_pages_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_cms_pages_delete]
	@PageId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_pages WHERE PageId = @PageId
    
		IF @isRecordExisting > 0
			BEGIN
				DECLARE @HasSubPages int;
				SELECT
					@HasSubPages = COUNT(*)
				FROM tb_cms_pages WHERE PageParentId = @PageId

				IF @HasSubPages = 0
					BEGIN

						DECLARE @PageParentIdCurrent int;
						DECLARE @OrderingCurrent int;
						SELECT
							@PageParentIdCurrent = PageParentId,
							@OrderingCurrent = Ordering
						FROM tb_cms_pages WHERE PageId = @PageId

						DELETE FROM tb_cms_pages WHERE PageId = @PageId
					
						UPDATE tb_cms_pages
						SET Ordering = Ordering - 1
						WHERE PageParentId = @PageParentIdCurrent AND Ordering > @OrderingCurrent

						SET @ret_code = 0; --Success
					END
				ELSE
					SET @ret_code = 3; -- @PageId has subpages
			END
		ELSE
			SET @ret_code = 2; -- @PageId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_pages_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[sp_cms_pages_insert]
	@PageParentId int,
	@Segment nvarchar(255),
	@PageName nvarchar(255),
	@Target nvarchar(255),
	@PageTemplateId int,
	@Url nvarchar(255),
	@ShowInMainMenu bit,
	@ShowInBottomMenu bit,
	@ShowInSitemap bit,
	@IsActive bit,
	@IsAccessRestricted bit,
	@IsHomePage bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_pages WHERE PageParentId = @PageParentId AND Segment = @Segment
    
		IF @isRecordExisting = 0
			BEGIN
				DECLARE @Ordering int;

				SELECT @Ordering = ISNULL(MAX(Ordering) + 1, 1)
				FROM tb_cms_pages
				WHERE PageParentId = @PageParentId

				IF @IsHomePage = 1
					BEGIN
						UPDATE tb_cms_pages SET IsHomePage = 0
					END

				INSERT INTO tb_cms_pages
					(PageParentId, Segment, PageName, [Target], PageTemplateId, Url, ShowInMainMenu, ShowInBottomMenu, ShowInSitemap, IsActive, IsAccessRestricted, IsHomePage, Ordering)
				VALUES
					(@PageParentId, @Segment, @PageName, @Target, @PageTemplateId, @Url, @ShowInMainMenu, @ShowInBottomMenu, @ShowInSitemap, @IsActive, @IsAccessRestricted, @IsHomePage, @Ordering)
					
				SET @ret_code = 0; --Success
			END
		ELSE
			SET @ret_code = 2; -- @Segment already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END










GO
/****** Object:  StoredProcedure [dbo].[sp_cms_pages_languages_insert_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_cms_pages_languages_insert_update]
	@PageId int,
	@LanguageCode char(2),
	@MenuName nvarchar(255),
	@MetaTagTitle nvarchar(255),
	@MetaTagKeywords nvarchar(500),
	@MetaTagDescription nvarchar(1000),
	@Robots nvarchar(255),
	@HtmlCode nvarchar(MAX)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_pages_languages WHERE PageId = @PageId AND LanguageCode = @LanguageCode
    
		IF @isRecordExisting = 0
			BEGIN
				INSERT INTO tb_cms_pages_languages
				(PageId, LanguageCode, MenuName, MetaTagTitle, MetaTagKeywords, MetaTagDescription, Robots, HtmlCode)
				VALUES
				(@PageId, @LanguageCode, @MenuName, @MetaTagTitle, @MetaTagKeywords, @MetaTagDescription, @Robots, @HtmlCode)
					
				RETURN 0; -- Success
			END
		ELSE
			BEGIN
				UPDATE tb_cms_pages_languages
				SET 
				    MenuName = @MenuName,
					MetaTagTitle = @MetaTagTitle,
					MetaTagKeywords = @MetaTagKeywords,
					MetaTagDescription = @MetaTagDescription,
					Robots = @Robots,
					HtmlCode = @HtmlCode
				WHERE PageId = @PageId AND LanguageCode = @LanguageCode

				RETURN 0; -- Success
			END
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_pages_languages_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_cms_pages_languages_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT pl.PageId,
	       pl.LanguageCode,
		   pl.MenuName,
		   pl.MetaTagTitle,
		   pl.MetaTagKeywords,
		   pl.MetaTagDescription,
		   pl.Robots,
		   pl.HtmlCode
	FROM tb_cms_pages_languages pl
	ORDER BY PageId, LanguageCode

	RETURN 0
END









GO
/****** Object:  StoredProcedure [dbo].[sp_cms_pages_move_down]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_cms_pages_move_down]
	@PageId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_pages WHERE PageId = @PageId
    
		IF @isRecordExisting > 0
			BEGIN
				DECLARE @PageParentIdCurrent int;
				DECLARE @OrderingCurrent int;
				DECLARE @PageIdNext int;

				SELECT
					@PageParentIdCurrent = PageParentId,
					@OrderingCurrent = Ordering
				FROM tb_cms_pages WHERE PageId = @PageId;

				SELECT
					@PageIdNext = PageId
				FROM tb_cms_pages WHERE PageParentId = @PageParentIdCurrent AND Ordering = @OrderingCurrent + 1;

				IF @PageIdNext IS NOT NULL
					BEGIN
						UPDATE tb_cms_pages
						SET Ordering = Ordering + 1
						WHERE PageId = @PageId;
						
						UPDATE tb_cms_pages
						SET Ordering = Ordering - 1
						WHERE PageId = @PageIdNext;
						
						SET @ret_code = 0; --Success
					END
				ELSE
					SET @ret_code = 3; --Can't move down because it's the last item
			END
		ELSE
			SET @ret_code = 2; -- @PageId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END













GO
/****** Object:  StoredProcedure [dbo].[sp_cms_pages_move_up]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_cms_pages_move_up]
	@PageId int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_pages WHERE PageId = @PageId
    
		IF @isRecordExisting > 0
			BEGIN
				DECLARE @PageParentIdCurrent int;
				DECLARE @OrderingCurrent int;
				DECLARE @PageIdPrevious int;

				SELECT
					@PageParentIdCurrent = PageParentId,
					@OrderingCurrent = Ordering
				FROM tb_cms_pages WHERE PageId = @PageId;

				IF @OrderingCurrent > 1
					BEGIN
						SELECT
							@PageIdPrevious = PageId
						FROM tb_cms_pages WHERE PageParentId = @PageParentIdCurrent AND Ordering = @OrderingCurrent - 1;
					
						UPDATE tb_cms_pages
						SET Ordering = Ordering - 1
						WHERE PageId = @PageId;
						
						UPDATE tb_cms_pages
						SET Ordering = Ordering + 1
						WHERE PageId = @PageIdPrevious;
						
						SET @ret_code = 0; --Success
					END
				ELSE
					SET @ret_code = 3; --Can't move up because it's the first item
			END
		ELSE
			SET @ret_code = 2; -- @PageId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END












GO
/****** Object:  StoredProcedure [dbo].[sp_cms_pages_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_cms_pages_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT p.PageId,
           p.PageParentId,
		   p.Segment,
		   p.PageName,
		   p.[Target],
		   p.Url,
		   p.Ordering,
		   p.ShowInMainMenu,
		   p.ShowInBottomMenu,
		   p.ShowInSitemap,
		   p.IsActive,
		   p.PageTemplateId,
		   p.IsAccessRestricted,
		   p.IsHomePage,
		   t.IsActive AS IsTemplateActive,
		   fs.FullSegment
	FROM   dbo.tb_cms_pages AS p
	LEFT OUTER JOIN dbo.tb_cms_page_templates t ON p.PageTemplateId = t.PageTemplateId
	CROSS APPLY dbo.fn_full_segment(p.PageId) fs
    ORDER BY p.PageParentId, p.Ordering

	RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[sp_cms_pages_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[sp_cms_pages_update]
	@PageId int,
	@PageParentId int,
	@Segment nvarchar(255),
	@PageName nvarchar(255),
	@Target nvarchar(255),
	@PageTemplateId int,
	@Url nvarchar(255),
	@ShowInMainMenu bit,
	@ShowInBottomMenu bit,
	@ShowInSitemap bit,
	@IsActive bit,
	@IsAccessRestricted bit,
	@IsHomePage bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT @isRecordExisting = COUNT(*)
		FROM  tb_cms_pages
		WHERE PageId <> @PageId
		  AND PageParentId = @PageParentId
		  AND Segment = @Segment
    
		IF @isRecordExisting = 0
			BEGIN
				DECLARE @Ordering int;
				DECLARE @PageParentIdCurrent int;
				DECLARE @OrderingCurrent int;
				
				SELECT
					@PageParentIdCurrent = PageParentId,
					@OrderingCurrent = Ordering
				FROM tb_cms_pages WHERE PageId = @PageId;

				IF @PageParentIdCurrent <> @PageParentId
					BEGIN
						SELECT @Ordering = ISNULL(MAX(Ordering) + 1, 1)
						FROM tb_cms_pages
						WHERE PageParentId = @PageParentId
					END
				ELSE
					SET @Ordering = @OrderingCurrent

				IF @IsHomePage = 1
					BEGIN
						UPDATE tb_cms_pages SET IsHomePage = 0
					END

				UPDATE tb_cms_pages
				SET
					PageParentId = @PageParentId,
					Segment = @Segment,
					PageName = @PageName,
					[Target] = @Target,
					PageTemplateId = @PageTemplateId,
					Url = @Url,
					ShowInMainMenu = @ShowInMainMenu,
					ShowInBottomMenu = @ShowInBottomMenu,
					ShowInSitemap = @ShowInSitemap,
					IsActive = @IsActive,
					IsAccessRestricted = @IsAccessRestricted,
					IsHomePage = @IsHomePage,
					Ordering = @Ordering
				WHERE PageId = @PageId;
				
				IF @PageParentIdCurrent <> @PageParentId
					BEGIN
						--compress the current branch
						UPDATE tb_cms_pages
						SET Ordering = Ordering - 1
						WHERE PageParentId = @PageParentIdCurrent AND Ordering > @OrderingCurrent;
					END
					
				SET @ret_code = 0; --Success
			END
		ELSE
			SET @ret_code = 2; -- @Segment already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_shared_content_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_cms_shared_content_delete]
	@SharedContentCode nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_shared_content WHERE SharedContentCode = @SharedContentCode
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_shared_content WHERE SharedContentCode = @SharedContentCode
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- SharedContentCode does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
		
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Record used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END













GO
/****** Object:  StoredProcedure [dbo].[sp_cms_shared_content_insert_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_cms_shared_content_insert_update]
	@SharedContentCode nvarchar(255),
	@NewSharedContentCode nvarchar(255),
	@LanguageCode char(2),
	@IsActive bit,
	@HtmlCode nvarchar(MAX)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRANSACTION;

	DECLARE @ret_code int;

	BEGIN TRY
		DECLARE @isRecordExisting int;

		IF @SharedContentCode IS NULL
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_shared_content_languages
				WHERE SharedContentCode = @NewSharedContentCode AND LanguageCode = @LanguageCode

				IF @isRecordExisting = 0
					BEGIN
						SELECT
							@isRecordExisting = COUNT(*)
						FROM tb_cms_shared_content WHERE SharedContentCode = @NewSharedContentCode

						IF @isRecordExisting = 0
							BEGIN
								INSERT INTO tb_cms_shared_content
								(SharedContentCode, IsActive)
								VALUES
								(@NewSharedContentCode, @IsActive)
							END
						ELSE
							BEGIN
								UPDATE tb_cms_shared_content
								SET
									IsActive = @IsActive
								WHERE SharedContentCode = @NewSharedContentCode
							END

						INSERT INTO tb_cms_shared_content_languages
						(SharedContentCode, LanguageCode, HtmlCode)
						VALUES
						(@NewSharedContentCode, @LanguageCode, @HtmlCode)

						SET @ret_code = 0; --Success
					END
				ELSE
					BEGIN
						SET @ret_code = 3; -- @NewSharedContentCode already exists
					END
			END
		ELSE
			BEGIN
				SELECT
					@isRecordExisting = COUNT(*)
				FROM tb_cms_shared_content WHERE SharedContentCode = @SharedContentCode

				IF @isRecordExisting = 0
					BEGIN
						SET @ret_code = 2; -- @SharedContentCode does not exist
					END
				ELSE
					BEGIN
						IF @SharedContentCode = @NewSharedContentCode
							BEGIN
								UPDATE tb_cms_shared_content
								SET
									IsActive = @IsActive
								WHERE SharedContentCode = @NewSharedContentCode

								UPDATE tb_cms_shared_content_languages
								SET
									HtmlCode = @HtmlCode
								WHERE SharedContentCode = @NewSharedContentCode
								AND LanguageCode = @LanguageCode

								SET @ret_code = 0; --Success
							END
						ELSE
							BEGIN
								SELECT
									@isRecordExisting = COUNT(*)
								FROM tb_cms_shared_content WHERE SharedContentCode <> @SharedContentCode AND SharedContentCode = @NewSharedContentCode

								IF @isRecordExisting = 0
									BEGIN
										UPDATE tb_cms_shared_content
										SET
											SharedContentCode = @NewSharedContentCode,
											IsActive = @IsActive
										WHERE SharedContentCode = @SharedContentCode

										UPDATE tb_cms_shared_content_languages
										SET
											HtmlCode = @HtmlCode
										WHERE SharedContentCode = @NewSharedContentCode
										AND LanguageCode = @LanguageCode

										SET @ret_code = 0; --Success
									END
								ELSE
									BEGIN
										SET @ret_code = 3; -- @NewSharedContentCode already exists
									END
							END
					END
			END
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		IF @@TRANCOUNT > 0
			BEGIN
				ROLLBACK TRANSACTION;
				RETURN 1 -- error in transaction
			END
	END CATCH

	IF @@TRANCOUNT > 0
		BEGIN
			COMMIT TRANSACTION;
			RETURN @ret_code;
		END
END













GO
/****** Object:  StoredProcedure [dbo].[sp_cms_shared_content_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_cms_shared_content_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT sc.SharedContentCode,
		   scl.LanguageCode,
		   sc.IsActive,
		   scl.HtmlCode
	FROM tb_cms_shared_content AS sc
		 LEFT OUTER JOIN tb_cms_shared_content_languages AS scl
		 ON sc.SharedContentCode = scl.SharedContentCode
    ORDER BY sc.SharedContentCode, scl.LanguageCode

	RETURN 0
END












GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscription_statuses_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_cms_subscription_statuses_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT ss.SubscriptionStatusId,
		   ss.SubscriptionStatusName
	FROM tb_cms_subscription_statuses ss
	ORDER BY ss.SubscriptionStatusName

	RETURN 0
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_activation]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[sp_cms_subscriptions_activation]
	@ActivationKey nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @subscriptionStatusId int;
		SELECT
			@subscriptionStatusId = SubscriptionStatusId
		FROM tb_cms_subscriptions WHERE ActivationKey = @ActivationKey
    
		IF @subscriptionStatusId IS NULL OR @subscriptionStatusId >= 3
			RETURN 2; -- Invalid ActivationKey
		ELSE
			BEGIN
				IF @subscriptionStatusId = 1
					BEGIN
						UPDATE tb_cms_subscriptions
						SET
							SubscriptionStatusId = 2
						WHERE ActivationKey = @ActivationKey
					
						RETURN 0; -- Success
					END
				ELSE
					RETURN 3; -- Subscription already active
			END
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END















GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_change_password]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_cms_subscriptions_change_password]
	@Email nvarchar(255),
	@CurrentPassword nvarchar(255),
	@NewPassword nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_subscriptions WHERE Email = @Email AND [Password] = @CurrentPassword
    
		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_cms_subscriptions
				SET [Password] = @NewPassword
				WHERE Email = @Email
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Current password not valid
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END









GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_config_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cms_subscriptions_config_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT Id
	      ,IsSubscriptionActive
		  ,RegisterPageId
		  ,SignInPageId
		  ,ForgotPasswordPageId
		  ,ChangePasswordPageId
		  ,ProfilePageId
	FROM tb_cms_subscriptions_config

	RETURN 0
END












GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_config_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cms_subscriptions_config_update]
	@IsSubscriptionActive	bit,
	@RegisterPageId	int,
	@SignInPageId	int,
	@ForgotPasswordPageId	int,
	@ChangePasswordPageId	int,
	@ProfilePageId	int
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_subscriptions_config

		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_cms_subscriptions_config
				SET
					IsSubscriptionActive = @IsSubscriptionActive
					,RegisterPageId = @RegisterPageId
					,SignInPageId = @SignInPageId
					,ForgotPasswordPageId = @ForgotPasswordPageId
					,ChangePasswordPageId = @ChangePasswordPageId
					,ProfilePageId = @ProfilePageId
				WHERE Id = 1

				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Item does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;

		RETURN 1; -- DB Error
	END CATCH
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_delete]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_cms_subscriptions_delete]
	@Email nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_subscriptions WHERE Email = @Email
    
		IF @isRecordExisting > 0
			BEGIN
				DELETE FROM tb_cms_subscriptions WHERE Email = @Email
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- SubscriptionId does not exist
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
		
		IF ERROR_NUMBER() = 547
			BEGIN
				RETURN 3; -- Subscription used in some other places
			END
		ELSE
				RETURN 1; -- DB Error
	END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_insert]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_cms_subscriptions_insert]
	@Email nvarchar(255),
	@Password nvarchar(255),
	@Salt nvarchar(255),
	@FirstName nvarchar(255),
	@LastName nvarchar(255),
	@BirthDate datetime,
	@PhoneNumber nvarchar(255),
	@Address nvarchar(255),
	@City nvarchar(255),
	@PostCode nvarchar(255),
	@CountryCode char(2),
	@SubscriptionStatusId int,
	@WantsNewsletter bit,
	@JoinDate datetime,
	@IpAddress nvarchar(255),
	@ActivationKey nvarchar(255),
	@Notes nvarchar(1000)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_subscriptions WHERE Email = @Email
    
		IF @isRecordExisting = 0
			BEGIN
				INSERT INTO tb_cms_subscriptions
					   (Email
					   ,[Password]
					   ,Salt
					   ,FirstName
					   ,LastName
					   ,BirthDate
					   ,PhoneNumber
					   ,[Address]
					   ,City
					   ,PostCode
					   ,CountryCode
					   ,SubscriptionStatusId
					   ,WantsNewsletter
					   ,JoinDate
					   ,IpAddress
					   ,ActivationKey
					   ,Notes)
				 VALUES
					   (@Email
					   ,@Password
					   ,@Salt
					   ,@FirstName
					   ,@LastName
					   ,@BirthDate
					   ,@PhoneNumber
					   ,@Address
					   ,@City
					   ,@PostCode
					   ,@CountryCode
					   ,@SubscriptionStatusId
					   ,@WantsNewsletter
					   ,@JoinDate
					   ,@IpAddress
					   ,@ActivationKey
					   ,@Notes)

				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Email already exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END













GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_profile_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[sp_cms_subscriptions_profile_update]
	@Email nvarchar(255),
	@FirstName nvarchar(255),
	@LastName nvarchar(255),
	@BirthDate datetime,
	@PhoneNumber nvarchar(255),
	@Address nvarchar(255),
	@City nvarchar(255),
	@PostCode nvarchar(255),
	@CountryCode char(2),
	@WantsNewsletter bit
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_subscriptions WHERE Email = @Email
    
		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_cms_subscriptions
				SET
					 FirstName = @FirstName
					,LastName = @LastName
					,BirthDate = @BirthDate
					,PhoneNumber = @PhoneNumber
					,[Address] = @Address
					,City = @City
					,PostCode = @PostCode
					,CountryCode = @CountryCode
					,WantsNewsletter = @WantsNewsletter
				WHERE Email = @Email
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Subscription does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END















GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_pw_change_with_resetkey_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












CREATE PROCEDURE [dbo].[sp_cms_subscriptions_pw_change_with_resetkey_update]
	@PasswordResetKey nvarchar(255),	
	@NewPassword nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_subscriptions WHERE PasswordResetKey = @PasswordResetKey
    
		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_cms_subscriptions
				SET [Password] = @NewPassword,
				    PasswordResetKey = NULL
				WHERE PasswordResetKey = @PasswordResetKey
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- @PasswordResetKey not valid
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END
















GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_pw_resetkey_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[sp_cms_subscriptions_pw_resetkey_update]
	@Email nvarchar(255),
	@PasswordResetKey nvarchar(255)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_subscriptions WHERE Email = @Email
    
		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_cms_subscriptions
				SET PasswordResetKey = @PasswordResetKey
				WHERE Email = @Email
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Subscription does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END















GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_select]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[sp_cms_subscriptions_select]
AS 
BEGIN
	SET NOCOUNT ON ;

	SELECT s.Email,
		   s.[Password],
		   s.Salt,
		   s.FirstName,
		   s.LastName,
		   s.BirthDate,
		   s.PhoneNumber,
		   s.[Address],
		   s.City,
		   s.PostCode,
		   s.CountryCode,
		   c.CountryName,
		   s.SubscriptionStatusId,
		   ss.SubscriptionStatusName,
		   s.WantsNewsletter,
		   s.JoinDate,
		   s.IpAddress,
		   s.ActivationKey,
		   s.PasswordResetKey,
		   s.Notes
	FROM tb_cms_subscriptions s
	LEFT OUTER JOIN tb_cms_countries c ON s.CountryCode = c.CountryCode
	INNER JOIN tb_cms_subscription_statuses ss ON s.SubscriptionStatusId = ss.SubscriptionStatusId
	ORDER BY s.Email

	RETURN 0
END











GO
/****** Object:  StoredProcedure [dbo].[sp_cms_subscriptions_update]    Script Date: 08/24/2018 1:17:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[sp_cms_subscriptions_update]
	@Email nvarchar(255),
	@Password nvarchar(255) = NULL,
	@Salt nvarchar(255) = NULL,
	@FirstName nvarchar(255),
	@LastName nvarchar(255),
	@BirthDate datetime,
	@PhoneNumber nvarchar(255),
	@Address nvarchar(255),
	@City nvarchar(255),
	@PostCode nvarchar(255),
	@CountryCode char(2),
	@SubscriptionStatusId int,
	@WantsNewsletter bit,
	@Notes nvarchar(1000)
AS 
BEGIN
	SET NOCOUNT ON ;

	BEGIN TRY
		DECLARE @isRecordExisting int;
		SELECT
			@isRecordExisting = COUNT(*)
		FROM tb_cms_subscriptions WHERE Email = @Email
    
		IF @isRecordExisting > 0
			BEGIN
				UPDATE tb_cms_subscriptions
				SET
					[Password] = COALESCE(@Password, [Password])
					,Salt = COALESCE(@Salt, Salt)
					,FirstName = @FirstName
					,LastName = @LastName
					,BirthDate = @BirthDate
					,PhoneNumber = @PhoneNumber
					,[Address] = @Address
					,City = @City
					,PostCode = @PostCode
					,CountryCode = @CountryCode
					,SubscriptionStatusId = @SubscriptionStatusId
					,WantsNewsletter = @WantsNewsletter
					,Notes = @Notes
				WHERE Email = @Email
					
				RETURN 0; -- Success
			END
		ELSE
			RETURN 2; -- Subscription does not exists
	END TRY
	BEGIN CATCH
		SELECT
			ERROR_NUMBER() AS ErrorNumber
			,ERROR_SEVERITY() AS ErrorSeverity
			,ERROR_STATE() AS ErrorState
			,ERROR_PROCEDURE() AS ErrorProcedure
			,ERROR_LINE() AS ErrorLine
			,ERROR_MESSAGE() AS ErrorMessage;
	
		RETURN 1; -- DB Error
	END CATCH
END














GO
USE [master]
GO
ALTER DATABASE [MVCwCMS] SET  READ_WRITE 
GO

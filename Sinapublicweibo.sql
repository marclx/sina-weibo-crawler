USE [Sinapublicweibo]
GO
/****** Object:  Table [dbo].[users]    Script Date: 09/02/2013 11:26:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [bigint] NOT NULL,
	[screen_name] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[province] [varchar](4) NULL,
	[city] [varchar](4) NULL,
	[location] [varchar](200) NULL,
	[description] [varchar](200) NULL,
	[url] [varchar](100) NULL,
	[profile_image_url] [varchar](100) NULL,
	[domain] [varchar](50) NULL,
	[gender] [char](1) NULL,
	[followers_count] [int] NULL,
	[friends_count] [int] NULL,
	[statuses_count] [int] NULL,
	[favourites_count] [int] NULL,
	[created_at] [datetime] NULL,
	[following] [bit] NULL,
	[verified] [bit] NULL,
	[verified_type] [int] NULL,
	[allow_all_act_msg] [bit] NULL,
	[allow_all_comment] [bit] NULL,
	[follow_me] [bit] NULL,
	[avatar_large] [varchar](100) NULL,
	[online_status] [int] NULL,
	[bi_followers_count] [int] NULL,
	[remark] [varchar](50) NULL,
	[lang] [varchar](50) NULL,
	[verified_reason] [varchar](200) NULL,
	[weihao] [varchar](100) NULL,
	[geo_enabled] [bit] NULL,
	[statuses_frequency] [real] NULL,
	[visited] [int] NOT NULL,
	[iteration] [int] NOT NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_tag]    Script Date: 09/02/2013 11:26:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_tag](
	[user_id] [bigint] NOT NULL,
	[tag_id] [bigint] NOT NULL,
	[iteration] [int] NOT NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_user_tag] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_relation]    Script Date: 09/02/2013 11:26:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_relation](
	[source_user_id] [bigint] NOT NULL,
	[target_user_id] [bigint] NOT NULL,
	[relation_state] [int] NOT NULL,
	[iteration] [int] NOT NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_user_relation] PRIMARY KEY CLUSTERED 
(
	[source_user_id] ASC,
	[target_user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 09/02/2013 11:26:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tags](
	[tag_id] [bigint] NOT NULL,
	[tag] [varchar](50) NOT NULL,
	[weight] [int] NOT NULL,
	[iteration] [int] NOT NULL,
	[update_time] [datetime] NOT NULL,
 CONSTRAINT [PK_tags] PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[statuses]    Script Date: 09/02/2013 11:26:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[statuses](
	[status_id] [bigint] NOT NULL,
	[user_id] [bigint] NULL,
	[created_at] [datetime] NOT NULL,
	[mid] [bigint] NULL,
	[content] [varchar](500) NULL,
	[source_url] [varchar](200) NULL,
	[source_name] [varchar](100) NULL,
	[favorited] [bit] NULL,
	[truncated] [bit] NULL,
	[in_reply_to_status_id] [bigint] NULL,
	[in_reply_to_user_id] [bigint] NULL,
	[in_reply_to_screen_name] [varchar](50) NULL,
	[thumbnail_pic] [varchar](500) NULL,
	[bmiddle_pic] [varchar](500) NULL,
	[original_pic] [varchar](500) NULL,
	[retweeted_status_id] [bigint] NULL,
	[geo_type] [varchar](50) NULL,
	[geo_coordinates_x] [real] NULL,
	[geo_coordinates_y] [real] NULL,
	[reposts_count] [int] NULL,
	[comments_count] [int] NULL,
	[mlevel] [int] NULL,
	[iteration] [int] NOT NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_statuses] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comments]    Script Date: 09/02/2013 11:26:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comments](
	[comment_id] [bigint] NOT NULL,
	[mid] [bigint] NULL,
	[content] [varchar](500) NULL,
	[source_url] [varchar](200) NULL,
	[source_name] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[user_id] [bigint] NULL,
	[status_id] [bigint] NULL,
	[reply_comment_id] [bigint] NULL,
	[iteration] [int] NOT NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_comments] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_comments_iteration]    Script Date: 09/02/2013 11:26:41 ******/
ALTER TABLE [dbo].[comments] ADD  CONSTRAINT [DF_comments_iteration]  DEFAULT ((1)) FOR [iteration]
GO
/****** Object:  Default [DF_statuses_iteration]    Script Date: 09/02/2013 11:26:41 ******/
ALTER TABLE [dbo].[statuses] ADD  CONSTRAINT [DF_statuses_iteration]  DEFAULT ((1)) FOR [iteration]
GO
/****** Object:  Default [DF_tags_iteration]    Script Date: 09/02/2013 11:26:41 ******/
ALTER TABLE [dbo].[tags] ADD  CONSTRAINT [DF_tags_iteration]  DEFAULT ((1)) FOR [iteration]
GO
/****** Object:  Default [DF_user_relation_source_user_id]    Script Date: 09/02/2013 11:26:41 ******/
ALTER TABLE [dbo].[user_relation] ADD  CONSTRAINT [DF_user_relation_source_user_id]  DEFAULT ((1)) FOR [source_user_id]
GO
/****** Object:  Default [DF_user_tag_iteration]    Script Date: 09/02/2013 11:26:41 ******/
ALTER TABLE [dbo].[user_tag] ADD  CONSTRAINT [DF_user_tag_iteration]  DEFAULT ((1)) FOR [iteration]
GO
/****** Object:  Default [DF_users_visited]    Script Date: 09/02/2013 11:26:41 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_visited]  DEFAULT ((0)) FOR [visited]
GO
/****** Object:  Default [DF_users_iteration]    Script Date: 09/02/2013 11:26:41 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_iteration]  DEFAULT ((1)) FOR [iteration]
GO

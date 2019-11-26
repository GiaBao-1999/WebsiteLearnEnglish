USE [DB]
GO
/****** Object:  Table [dbo].[TAI_LIEU]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAI_LIEU](
	[IDTaiLieu] [int] NOT NULL,
	[TenTaiLieu] [nvarchar](300) NULL,
	[FilePath] [varchar](100) NULL,
 CONSTRAINT [PK_TAI_LIEU] PRIMARY KEY CLUSTERED 
(
	[IDTaiLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TAI_LIEU] ([IDTaiLieu], [TenTaiLieu], [FilePath]) VALUES (1, N'English Pronunciation', N'Document_1.pdf')
INSERT [dbo].[TAI_LIEU] ([IDTaiLieu], [TenTaiLieu], [FilePath]) VALUES (2, N'Marks - English Pronunciation in Use - Elementary', N'Document_2.pdf')
INSERT [dbo].[TAI_LIEU] ([IDTaiLieu], [TenTaiLieu], [FilePath]) VALUES (3, N'3.Marks - English Pronunciation in Use - Elementary', N'Document_3.pdf')
INSERT [dbo].[TAI_LIEU] ([IDTaiLieu], [TenTaiLieu], [FilePath]) VALUES (4, N'6.Cambridge - English Pronunciation In Use Intermediate', N'Document_4.pdf')
INSERT [dbo].[TAI_LIEU] ([IDTaiLieu], [TenTaiLieu], [FilePath]) VALUES (5, N'Advanced_English_Pronunciation_in_Use', N'Document_5.pdf')
/****** Object:  Table [dbo].[CAU_HOI]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAU_HOI](
	[MaCauHoi] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungCauHoi] [varchar](max) NULL,
	[SoCauTraLoi] [int] NULL,
	[LoaiCauHoi] [bit] NULL,
 CONSTRAINT [PK_CAUHOI] PRIMARY KEY CLUSTERED 
(
	[MaCauHoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CAU_HOI] ON
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (1, N'The light______out while we were having tea.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (2, N'John will go to the store before he______home.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (3, N'Mr.Jones______the principal of our school since last week.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (4, N'She told me her name after i______her twice.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (5, N'He has got a bulldog quality. He always insists______solving each problem completely.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (6, N'Better methods of refrigeration depend______engineers.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (7, N'Do you believe______God?', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (8, N'Neither the director nor his assistant______yet.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (9, N'The news, I am afraid, ______got much worse.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (10, N'Bacteria of the harmful kind______diseases.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (11, N'There______only a few people at the meeting last night.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (12, N'The police______for the criminal now.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (13, N'You can use my phone if yours______.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (14, N'Exercise______our body and your mind.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (15, N'She______her homework before 8 o''clock last night.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (16, N'The light______out while we were having tea.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (17, N'John will go to the store before he______home.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (18, N'_____ time _____ time I will examine you on the work you have done.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (19, N'This village is inhabited _____ tens of thieves.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (20, N'God has bestowed _____ me many graces.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (21, N'Make a comment _____ this sentence!', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (22, N'He’s a very wealthy man; a few hundred pounds is nothing _____ him.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (23, N'She does not show much affection _____ him.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (24, N'The clerk _____ that counter said those purses were _____ sale.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (25, N'Someone broke into the shop and made _____ with several TVs and videos.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (26, N'Old people like to descant _____ past memories.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (27, N'You should comply _____ the school rules.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (28, N'The people next door are furious _____ us _____ making so much noise last night.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (29, N'The Vietnamese participants always take part _____ sports events with great enthusiasm.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (30, N'He isn’t independent _____ any means. He depends _____ his father _____ everything.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (31, N'He may be quick _____ understanding but he isn’t capable _____ remembering anything.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (32, N'Mum is always busy _____ her work in the laboratory.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (33, N'Lan will stay there _____ the beginning in September _____ November.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (34, N'I would like to apply _____ the position of sales clerk that you advised in the Sunday newspaper.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (35, N'I have been looking _____ this book for months, and at last, I have found it.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (36, N'My sister is very fond _____ eating chocolate candy.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (37, N'Who’s going to look _____ the children while you’re away?', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (38, N'Your father is very kind_____ David.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (39, N'Hurry or you will be late ______ school.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (40, N'Were they present _______ the meeting?', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (41, N'She was confused ____the dates.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (42, N'His book is different _______ mine.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (43, N'Your plan is similar _______ his.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (44, N'The boy is afraid ________snakes.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (45, N'She is accustomed _____ getting up early.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (46, N'He was successful ______his job', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (47, N'That student is very quick ____mathematics.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (48, N'Iraq is rich ____ oil.', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (49, N'Are you aware _____ the time?', 4, 0)
INSERT [dbo].[CAU_HOI] ([MaCauHoi], [NoiDungCauHoi], [SoCauTraLoi], [LoaiCauHoi]) VALUES (50, N'Are you acquainted______this man?', 4, 0)
SET IDENTITY_INSERT [dbo].[CAU_HOI] OFF
/****** Object:  Table [dbo].[CAP_DO_CAU_HOI]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAP_DO_CAU_HOI](
	[IDLevel] [int] IDENTITY(1,1) NOT NULL,
	[TenCapDo] [nvarchar](50) NULL,
 CONSTRAINT [PK_CAP_DO_CAU_HOI] PRIMARY KEY CLUSTERED 
(
	[IDLevel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CAP_DO_CAU_HOI] ON
INSERT [dbo].[CAP_DO_CAU_HOI] ([IDLevel], [TenCapDo]) VALUES (1, N'Dễ')
INSERT [dbo].[CAP_DO_CAU_HOI] ([IDLevel], [TenCapDo]) VALUES (2, N'Trung bình')
INSERT [dbo].[CAP_DO_CAU_HOI] ([IDLevel], [TenCapDo]) VALUES (3, N'Khó')
INSERT [dbo].[CAP_DO_CAU_HOI] ([IDLevel], [TenCapDo]) VALUES (4, N'Nâng cao')
SET IDENTITY_INSERT [dbo].[CAP_DO_CAU_HOI] OFF
/****** Object:  Table [dbo].[CAP_DO]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAP_DO](
	[IDCapDo] [int] IDENTITY(1,1) NOT NULL,
	[TenCapDo] [nvarchar](200) NULL,
	[TenChungChi] [nvarchar](100) NULL,
	[ThangDiem] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CAP_DO] PRIMARY KEY CLUSTERED 
(
	[IDCapDo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CAP_DO] ON
INSERT [dbo].[CAP_DO] ([IDCapDo], [TenCapDo], [TenChungChi], [ThangDiem]) VALUES (1, N'ForWorker', N'TOEIC', CAST(650 AS Decimal(18, 0)))
INSERT [dbo].[CAP_DO] ([IDCapDo], [TenCapDo], [TenChungChi], [ThangDiem]) VALUES (2, N'B2', N'TOEIC', CAST(750 AS Decimal(18, 0)))
INSERT [dbo].[CAP_DO] ([IDCapDo], [TenCapDo], [TenChungChi], [ThangDiem]) VALUES (3, N'TOEIC', N'TOEIC', CAST(800 AS Decimal(18, 0)))
INSERT [dbo].[CAP_DO] ([IDCapDo], [TenCapDo], [TenChungChi], [ThangDiem]) VALUES (4, N'Grammar', N'IELTS', CAST(850 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[CAP_DO] OFF
/****** Object:  Table [dbo].[HOC_VIEN]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOC_VIEN](
	[IDHocVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](200) NULL,
	[Email] [varchar](200) NULL,
	[Username] [varchar](200) NULL,
	[Password] [varchar](max) NULL,
 CONSTRAINT [PK_HOCVIEN] PRIMARY KEY CLUSTERED 
(
	[IDHocVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HOC_VIEN] ON
INSERT [dbo].[HOC_VIEN] ([IDHocVien], [HoTen], [Email], [Username], [Password]) VALUES (1, N'Nguyễn Công Đăng', N'congdang151099@gmail.com', NULL, N'A906449D5769FA7361D7ECC6AA3F6D28')
INSERT [dbo].[HOC_VIEN] ([IDHocVien], [HoTen], [Email], [Username], [Password]) VALUES (3, N'Nguyễn Thúy An', N'thuyan@gmail.com', NULL, N'B45958D5FE6CBE2585B043CF2A3D4EDF')
INSERT [dbo].[HOC_VIEN] ([IDHocVien], [HoTen], [Email], [Username], [Password]) VALUES (4, N'Nguyễn Phúc Gia Bảo', N'n.p.giabao1009@gmail.com', NULL, N'202CB962AC59075B964B07152D234B70')
SET IDENTITY_INSERT [dbo].[HOC_VIEN] OFF
/****** Object:  Table [dbo].[ADMIN]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[QuyenQuanTri] [char](10) NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON
INSERT [dbo].[ADMIN] ([ID], [Username], [Password], [QuyenQuanTri]) VALUES (1, N'admin', N'A906449D5769FA7361D7ECC6AA3F6D28', N'1         ')
INSERT [dbo].[ADMIN] ([ID], [Username], [Password], [QuyenQuanTri]) VALUES (2, N'Manager1', N'76CE09FC04225228897E61087B1172A8', N'2         ')
INSERT [dbo].[ADMIN] ([ID], [Username], [Password], [QuyenQuanTri]) VALUES (3, N'Manager2', N'A906449D5769FA7361D7ECC6AA3F6D28', N'2         ')
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
/****** Object:  Table [dbo].[CAU_TRA_LOI]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAU_TRA_LOI](
	[IDCauTraLoi] [int] IDENTITY(1,1) NOT NULL,
	[MaCauHoi] [int] NULL,
	[NoiDungCauTraLoi] [varchar](200) NULL,
	[LaDapAn] [bit] NULL,
 CONSTRAINT [PK_CAUTRALOI] PRIMARY KEY CLUSTERED 
(
	[IDCauTraLoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CAU_TRA_LOI] ON
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (1, 1, N'was going', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (2, 1, N'went', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (3, 1, N'had gone', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (4, 1, N'has gone', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (5, 2, N'goes', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (6, 2, N'has gone', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (7, 2, N'was going', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (8, 2, N'will go', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (9, 3, N'is', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (10, 3, N'was', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (11, 3, N'would be', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (12, 3, N'has been', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (13, 4, N'asked', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (14, 4, N'have asked', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (15, 4, N'had asked', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (16, 4, N'would ask', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (17, 5, N'on', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (18, 5, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (19, 5, N'at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (20, 5, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (21, 6, N'on', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (22, 6, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (23, 6, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (24, 6, N'at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (25, 7, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (26, 7, N'at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (27, 7, N'in', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (28, 7, N'from', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (29, 8, N'has come', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (30, 8, N'hasn''t come', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (31, 8, N'have come', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (32, 8, N'haven''t come', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (36, 9, N'have been', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (37, 9, N'has been', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (38, 9, N'have', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (39, 9, N'has', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (40, 10, N'cause', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (41, 10, N'causes', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (42, 10, N'is caused', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (43, 10, N'was caused', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (44, 11, N'are', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (45, 11, N'is', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (46, 11, N'was', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (47, 11, N'were', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (48, 12, N'is looking', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (49, 12, N'was looking', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (50, 12, N'are looking', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (51, 12, N'were looking', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (52, 13, N'don''t work', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (53, 13, N'doesn''t work', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (54, 13, N'not to work', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (55, 13, N'not working', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (56, 14, N'improve', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (57, 14, N'improves', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (58, 14, N'is improved', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (59, 14, N'are improved', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (60, 15, N'finished', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (61, 15, N'has finished', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (62, 15, N'had finished', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (63, 15, N'was finished', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (64, 16, N'was going', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (65, 16, N'went', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (66, 16, N'had gone', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (67, 16, N'has gone', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (68, 17, N'goes', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (69, 17, N'has gone', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (70, 17, N'was going', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (71, 17, N'will go', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (72, 18, N'From / to  ', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (73, 18, N'At / to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (74, 18, N'In / to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (75, 18, N'With / to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (76, 19, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (77, 19, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (78, 19, N'by', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (79, 19, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (80, 20, N'on', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (81, 20, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (82, 20, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (83, 20, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (84, 21, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (85, 21, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (86, 21, N'on', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (87, 21, N'about', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (88, 22, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (89, 22, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (90, 22, N'to', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (91, 22, N'about', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (92, 23, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (93, 23, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (94, 23, N'for', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (95, 23, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (96, 24, N'in/ for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (97, 24, N'at/ on', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (98, 24, N'at/ in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (99, 24, N'on/ on', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (100, 25, N'of', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (101, 25, N'up', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (102, 25, N'out', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (103, 25, N'off', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (104, 26, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (105, 26, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (106, 26, N'on', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (107, 26, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (108, 27, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (109, 27, N'about', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (110, 27, N'with', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (111, 27, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (112, 28, N'at/ with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (113, 28, N'with/ for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (114, 28, N'for/ to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (115, 28, N'about/ in', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (116, 29, N'in', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (117, 29, N'on', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (118, 29, N'at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (119, 29, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (120, 30, N'by/ on/ in', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (121, 30, N'for/ on/ in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (122, 30, N'of/ in/ for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (123, 30, N'on/ in/ with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (124, 31, N'in/ of', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (125, 31, N'on/ at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (126, 31, N'at/ of', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (127, 31, N'of/ at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (128, 32, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (129, 32, N'at', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (130, 32, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (131, 32, N'of', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (132, 33, N'from/ to', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (133, 33, N'till/ to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (134, 33, N'from/ in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (135, 33, N'till/ of', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (136, 34, N'for', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (137, 34, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (138, 34, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (139, 34, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (140, 35, N'over', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (141, 35, N'up', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (142, 35, N'for', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (143, 35, N'at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (144, 36, N'of', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (145, 36, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (146, 36, N'about', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (147, 36, N'at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (148, 37, N'at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (149, 37, N'up', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (150, 37, N'after', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (151, 37, N'over', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (152, 38, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (153, 38, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (154, 38, N'to', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (155, 38, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (156, 39, N'for', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (157, 39, N'at', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (158, 39, N'on', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (159, 39, N'from', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (160, 40, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (161, 40, N'at', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (162, 40, N'on', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (163, 40, N'about', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (164, 41, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (165, 41, N'on', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (166, 41, N'about', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (167, 41, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (168, 42, N'about', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (169, 42, N'from', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (170, 42, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (171, 42, N'between', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (172, 43, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (173, 43, N'to', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (174, 43, N'of', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (175, 43, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (176, 44, N'of', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (177, 44, N'on', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (178, 44, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (179, 44, N'about', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (180, 45, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (181, 45, N'to', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (182, 45, N'on', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (183, 45, N'of', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (184, 46, N'in', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (185, 46, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (186, 46, N'of', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (187, 46, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (188, 47, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (189, 47, N'at', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (190, 47, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (191, 47, N'about', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (192, 48, N'on', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (193, 48, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (194, 48, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (195, 48, N'in', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (196, 49, N'with', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (197, 49, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (198, 49, N'of', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (199, 49, N'for', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (200, 50, N'to', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (201, 50, N'with', 1)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (202, 50, N'in', 0)
INSERT [dbo].[CAU_TRA_LOI] ([IDCauTraLoi], [MaCauHoi], [NoiDungCauTraLoi], [LaDapAn]) VALUES (203, 50, N'of', 0)
SET IDENTITY_INSERT [dbo].[CAU_TRA_LOI] OFF
GO
print 'Processed 200 total records'
/****** Object:  Table [dbo].[KHOA_HOC]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHOA_HOC](
	[IDKhoaHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoaHoc] [nvarchar](200) NULL,
	[MoTaKhoaHoc] [nvarchar](max) NULL,
	[NgayTao] [date] NULL,
	[HanDangKy] [date] NULL,
	[IDCapDo] [int] NULL,
	[img] [varchar](200) NULL,
 CONSTRAINT [PK_KHOAHOC] PRIMARY KEY CLUSTERED 
(
	[IDKhoaHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KHOA_HOC] ON
INSERT [dbo].[KHOA_HOC] ([IDKhoaHoc], [TenKhoaHoc], [MoTaKhoaHoc], [NgayTao], [HanDangKy], [IDCapDo], [img]) VALUES (1, N'Khóa học tiếng anh cho người đi làm', N'Sở dĩ, nói tiếng Anh giao tiếp thành thạo giúp người đi làm không chỉ tự tin mà còn mở rộng cơ hội nghề nghiệp là bởi vì nó là cầu nối giúp người với người ở những đất nước khác nhau có thể giao thông và cùng hợp tác phát triển sự nghiệp. Nhận thức được tầm quan trọng này, các chuyên gia Anh ngữ chia sẻ các mẫu câu tiếng Anh giao tiếp cho người đi làm nhằm giúp họ trang bị thật tốt và cảm thấy dễ dàng khi trò chuyện cùng đối tác hay các đồng nghiệp người nước ngoài.', CAST(0x4F400B00 AS Date), CAST(0x5D400B00 AS Date), 1, N'KKM_1.jpg')
INSERT [dbo].[KHOA_HOC] ([IDKhoaHoc], [TenKhoaHoc], [MoTaKhoaHoc], [NgayTao], [HanDangKy], [IDCapDo], [img]) VALUES (2, N'Khóa học B2', N'Nếu bạn đang tìm kiếm những cách thực hành và phát triển tiếng Anh thú vị, hãy chắc chắn bạn tham khảo qua phần Học Tiếng Anh có sẵn trên trang web toàn cầu của chúng tôi. Học tiếng Anh với đầy đủ các tài liệu học tập và trò chơi miễn phí.', CAST(0x53400B00 AS Date), CAST(0x72400B00 AS Date), 2, N'KKM_2.jpg')
INSERT [dbo].[KHOA_HOC] ([IDKhoaHoc], [TenKhoaHoc], [MoTaKhoaHoc], [NgayTao], [HanDangKy], [IDCapDo], [img]) VALUES (3, N'Khóa học TOEIC', N'TOEIC là kỳ thi tiếng Anh quốc tế (viết tắt của cụm từ Test of English for International Communication – Bài kiểm tra tiếng Anh giao tiếp quốc tế). Bài thi TOEIC kiểm tra trình độ tiếng Anh của một người (người không sử dụng tiếng Anh là ngôn ngữ mẹ đẻ), từ đó xác định được khả năng sử dụng tiếng Anh trong môi trường chuyên nghiệp của người kiểm tra.', CAST(0x7B400B00 AS Date), CAST(0x8B400B00 AS Date), 3, N'KKM_3.jpg')
INSERT [dbo].[KHOA_HOC] ([IDKhoaHoc], [TenKhoaHoc], [MoTaKhoaHoc], [NgayTao], [HanDangKy], [IDCapDo], [img]) VALUES (4, N'Khóa học Grammar', N'Bạn đã mất mười mấy năm để học ngữ pháp tiếng Anh nhưng mọi thứ vẫn cứ ì ạch. Gần đây lại thêm đầy rẫy thông tin trên các báo, website cho rằng không nên học ngữ pháp mà tập trung luôn vào giao tiếp', CAST(0x5D400B00 AS Date), CAST(0x70400B00 AS Date), 4, N'KKM_4.jpg')
SET IDENTITY_INSERT [dbo].[KHOA_HOC] OFF
/****** Object:  Table [dbo].[DANG_KY]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANG_KY](
	[IDHocVien] [int] NOT NULL,
	[IDKhoaHoc] [int] NOT NULL,
	[NgayDangKy] [date] NULL,
 CONSTRAINT [PK_HOCVIENTHAMGIA] PRIMARY KEY CLUSTERED 
(
	[IDHocVien] ASC,
	[IDKhoaHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANG_KY] ([IDHocVien], [IDKhoaHoc], [NgayDangKy]) VALUES (1, 1, NULL)
INSERT [dbo].[DANG_KY] ([IDHocVien], [IDKhoaHoc], [NgayDangKy]) VALUES (1, 2, CAST(0x57400B00 AS Date))
INSERT [dbo].[DANG_KY] ([IDHocVien], [IDKhoaHoc], [NgayDangKy]) VALUES (3, 2, NULL)
INSERT [dbo].[DANG_KY] ([IDHocVien], [IDKhoaHoc], [NgayDangKy]) VALUES (3, 4, CAST(0x5F400B00 AS Date))
INSERT [dbo].[DANG_KY] ([IDHocVien], [IDKhoaHoc], [NgayDangKy]) VALUES (4, 2, CAST(0x5E400B00 AS Date))
INSERT [dbo].[DANG_KY] ([IDHocVien], [IDKhoaHoc], [NgayDangKy]) VALUES (4, 3, CAST(0x5E400B00 AS Date))
INSERT [dbo].[DANG_KY] ([IDHocVien], [IDKhoaHoc], [NgayDangKy]) VALUES (4, 4, CAST(0x5E400B00 AS Date))
/****** Object:  Table [dbo].[BAI_HOC]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BAI_HOC](
	[IDBaiHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenBaiHoc] [nvarchar](200) NULL,
	[MoTaBaiHoc] [nvarchar](200) NULL,
	[IDKhoaHoc] [int] NULL,
	[NoiDungBaiHoc] [varchar](max) NULL,
 CONSTRAINT [PK_BAIHOC] PRIMARY KEY CLUSTERED 
(
	[IDBaiHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BAI_HOC] ON
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (1, N'Bài 1', N'Chuẩn bị cho các bạn những bước căn bản để học tiếng anh.', 1, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/2LOCCObH59M" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="img-fluid"></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (2, N'Bài 2', N'Những yếu tố cần thiết để tiếng anh của bạn tốt hơn. ', 1, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/wJvG0wBHGm0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (3, N'Bài 3', N'Trang bị từ vựng để giao tiếp.', 1, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/o4jIcvITwoU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (4, N'Bài 4', N'Các cấu trúc cần thiết khi sử dụng tiếng anh.', 1, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/u_7DuI8OVZU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (5, N'Bài 5', N'Ngữ điệu khi giao tiếp bằng tiếng anh.', 1, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/eFDOBy3RZK0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (6, N'Bài 1', N'Các bước giúp bạn học tiếng anh tốt hơn và hiệu quả hơn.', 2, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/rmThr3RK8b0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (7, N'Bài 2', N'Các cấu trúc cần thiết khi sử dụng tiếng anh.', 2, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/gxAAAI5_SG4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (8, N'Bài 3', N'Rèn luyện kỹ năng đọc, viết tiếng anh.', 2, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/TGK0rLbeSzA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (9, N'Bai 4', N'Tập luyện khả năng nói, thuyết trình bằng tiếng anh.', 2, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/9xTxKpw-Yrk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (10, N'Bài 5', N'Các bài kiểm tra trình độ về khả năng đọc, viết, nói tiếng anh.', 2, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/2dA4Ju0uV5s" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (11, N'Bài 1', N'Trang bị từ vựng, cấu trúc trong tiếng anh.', 3, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/1wMjQFBfEwA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (12, N'Bài 2', N'Luyện đọc, viết tiếng anh.', 3, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/SulpiHqSYYQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (13, N'Bài 3', N'Luyện khả năng giao tiếp.', 3, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/flciy6Z1yDk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (14, N'Bài 4', N'Luyện tập các bài tập nghe.', 3, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/xr84aZ2zhOs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (15, N'Bài 5', N'Thực hiện các bài kiểm tra Levels.', 3, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/BIOBm3DpKMw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (16, N'Bài 1', N'Làm quen các từ vựng tiếng anh.', 4, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/5-QUYV9LvhA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (17, N'Bài 2', N'Các cấu trúc cần thiết khi sử dụng tiếng anh.', 4, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/XAzVbvJrs7I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (18, N'Bài 3', N'Áp dụng từ vựng cùng với cấu trúc trong tiếng anh.', 4, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/5-QUYV9LvhA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (19, N'Bài 4', N'Tập luyện khả năng đọc, viết văn bản trong tiếng anh.', 4, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/KXuuQHMXtZo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
INSERT [dbo].[BAI_HOC] ([IDBaiHoc], [TenBaiHoc], [MoTaBaiHoc], [IDKhoaHoc], [NoiDungBaiHoc]) VALUES (20, N'Bài 5', N'Viết bài tập thuyết trình', 4, N'<iframe width="730" height="450" src="https://www.youtube.com/embed/v34SeuR4itY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>')
SET IDENTITY_INSERT [dbo].[BAI_HOC] OFF
/****** Object:  Table [dbo].[BINH_LUAN]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BINH_LUAN](
	[IDComment] [int] IDENTITY(1,1) NOT NULL,
	[IDHocVien] [int] NULL,
	[IDBaiHoc] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_BINHLUAN] PRIMARY KEY CLUSTERED 
(
	[IDComment] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BINH_LUAN] ON
INSERT [dbo].[BINH_LUAN] ([IDComment], [IDHocVien], [IDBaiHoc], [NoiDung]) VALUES (1, 1, 8, N'Bài học rất bổ ích')
INSERT [dbo].[BINH_LUAN] ([IDComment], [IDHocVien], [IDBaiHoc], [NoiDung]) VALUES (2, 1, 8, N'Bài học dễ hiểu')
INSERT [dbo].[BINH_LUAN] ([IDComment], [IDHocVien], [IDBaiHoc], [NoiDung]) VALUES (3, 3, 8, N'Bài học rất hay')
INSERT [dbo].[BINH_LUAN] ([IDComment], [IDHocVien], [IDBaiHoc], [NoiDung]) VALUES (4, 3, 8, N'Bài này chill phết')
INSERT [dbo].[BINH_LUAN] ([IDComment], [IDHocVien], [IDBaiHoc], [NoiDung]) VALUES (5, 1, 8, N'Dễ tiếp thu')
SET IDENTITY_INSERT [dbo].[BINH_LUAN] OFF
/****** Object:  Table [dbo].[BAI_TAP]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAI_TAP](
	[IDBaiTap] [int] IDENTITY(1,1) NOT NULL,
	[SoLuongCauHoi] [int] NULL,
	[IDLevel] [int] NULL,
	[IDBaiHoc] [int] NULL,
 CONSTRAINT [PK_BaiTap] PRIMARY KEY CLUSTERED 
(
	[IDBaiTap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAI_TAP] ON
INSERT [dbo].[BAI_TAP] ([IDBaiTap], [SoLuongCauHoi], [IDLevel], [IDBaiHoc]) VALUES (1, 5, 1, 6)
INSERT [dbo].[BAI_TAP] ([IDBaiTap], [SoLuongCauHoi], [IDLevel], [IDBaiHoc]) VALUES (2, 5, 2, 7)
INSERT [dbo].[BAI_TAP] ([IDBaiTap], [SoLuongCauHoi], [IDLevel], [IDBaiHoc]) VALUES (3, 5, 2, 8)
INSERT [dbo].[BAI_TAP] ([IDBaiTap], [SoLuongCauHoi], [IDLevel], [IDBaiHoc]) VALUES (4, 5, 1, 9)
INSERT [dbo].[BAI_TAP] ([IDBaiTap], [SoLuongCauHoi], [IDLevel], [IDBaiHoc]) VALUES (5, 5, 3, 10)
INSERT [dbo].[BAI_TAP] ([IDBaiTap], [SoLuongCauHoi], [IDLevel], [IDBaiHoc]) VALUES (6, NULL, 2, 16)
INSERT [dbo].[BAI_TAP] ([IDBaiTap], [SoLuongCauHoi], [IDLevel], [IDBaiHoc]) VALUES (7, NULL, 1, 2)
INSERT [dbo].[BAI_TAP] ([IDBaiTap], [SoLuongCauHoi], [IDLevel], [IDBaiHoc]) VALUES (8, NULL, 3, 18)
SET IDENTITY_INSERT [dbo].[BAI_TAP] OFF
/****** Object:  Table [dbo].[DE_BAI]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DE_BAI](
	[IDBaiTap] [int] NOT NULL,
	[MaCauHoi] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[IDBaiTap] ASC,
	[MaCauHoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (1, 1)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (1, 2)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (1, 3)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (1, 4)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (1, 5)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (2, 6)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (2, 7)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (2, 8)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (2, 9)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (2, 10)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (3, 11)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (3, 12)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (3, 13)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (3, 14)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (3, 15)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (4, 16)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (4, 17)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (4, 18)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (4, 19)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (4, 20)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (5, 21)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (5, 22)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (5, 23)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (5, 24)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (5, 25)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (6, 2)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (6, 6)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (6, 19)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (6, 27)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (6, 50)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (7, 3)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (7, 10)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (7, 19)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (7, 26)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (7, 36)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (8, 15)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (8, 32)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (8, 38)
INSERT [dbo].[DE_BAI] ([IDBaiTap], [MaCauHoi]) VALUES (8, 46)
/****** Object:  Table [dbo].[BAI_LAM]    Script Date: 11/14/2019 22:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAI_LAM](
	[IDBaiLam] [int] IDENTITY(1,1) NOT NULL,
	[IDHocVien] [int] NULL,
	[IDBaiTap] [int] NULL,
	[IDCauTraLoi] [int] NULL,
 CONSTRAINT [PK_BAI_LAM] PRIMARY KEY CLUSTERED 
(
	[IDBaiLam] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAI_LAM] ON
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (1, 1, 5, 85)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (2, 1, 5, 91)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (3, 1, 5, 93)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (4, 1, 5, 98)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (5, 1, 5, 100)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (6, 1, 3, 45)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (7, 1, 3, 48)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (8, 1, 3, 54)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (9, 1, 3, 56)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (10, 1, 3, 62)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (41, 3, 1, 2)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (42, 3, 1, 5)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (43, 3, 1, 12)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (44, 3, 1, 16)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (45, 3, 1, 17)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (46, 1, 1, 2)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (47, 1, 1, 6)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (48, 1, 1, 10)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (49, 1, 1, 13)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (50, 1, 1, 17)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (51, 1, 1, 2)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (52, 1, 1, 7)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (53, 1, 1, 11)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (54, 1, 1, 14)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (55, 1, 1, 18)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (59, 4, 1, 2)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (60, 4, 1, 6)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (61, 4, 1, 9)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (62, 4, 1, 13)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (63, 4, 1, 18)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (64, 4, 8, 60)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (65, 4, 8, 129)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (66, 4, 8, 154)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (67, 4, 8, 187)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (68, 3, 6, 8)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (69, 3, 6, 21)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (70, 3, 6, 76)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (71, 3, 6, 110)
INSERT [dbo].[BAI_LAM] ([IDBaiLam], [IDHocVien], [IDBaiTap], [IDCauTraLoi]) VALUES (72, 3, 6, 203)
SET IDENTITY_INSERT [dbo].[BAI_LAM] OFF
/****** Object:  ForeignKey [FK_BAIHOC_KHOAHOC]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[BAI_HOC]  WITH CHECK ADD  CONSTRAINT [FK_BAIHOC_KHOAHOC] FOREIGN KEY([IDKhoaHoc])
REFERENCES [dbo].[KHOA_HOC] ([IDKhoaHoc])
GO
ALTER TABLE [dbo].[BAI_HOC] CHECK CONSTRAINT [FK_BAIHOC_KHOAHOC]
GO
/****** Object:  ForeignKey [FK_BAI_LAM_BAI_TAP]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[BAI_LAM]  WITH CHECK ADD  CONSTRAINT [FK_BAI_LAM_BAI_TAP] FOREIGN KEY([IDBaiTap])
REFERENCES [dbo].[BAI_TAP] ([IDBaiTap])
GO
ALTER TABLE [dbo].[BAI_LAM] CHECK CONSTRAINT [FK_BAI_LAM_BAI_TAP]
GO
/****** Object:  ForeignKey [FK_BAI_LAM_HOC_VIEN]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[BAI_LAM]  WITH CHECK ADD  CONSTRAINT [FK_BAI_LAM_HOC_VIEN] FOREIGN KEY([IDHocVien])
REFERENCES [dbo].[HOC_VIEN] ([IDHocVien])
GO
ALTER TABLE [dbo].[BAI_LAM] CHECK CONSTRAINT [FK_BAI_LAM_HOC_VIEN]
GO
/****** Object:  ForeignKey [FK_BAI_TAP_BAI_HOC]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[BAI_TAP]  WITH CHECK ADD  CONSTRAINT [FK_BAI_TAP_BAI_HOC] FOREIGN KEY([IDBaiHoc])
REFERENCES [dbo].[BAI_HOC] ([IDBaiHoc])
GO
ALTER TABLE [dbo].[BAI_TAP] CHECK CONSTRAINT [FK_BAI_TAP_BAI_HOC]
GO
/****** Object:  ForeignKey [FK_BAI_TAP_CAP_DO_CAU_HOI]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[BAI_TAP]  WITH CHECK ADD  CONSTRAINT [FK_BAI_TAP_CAP_DO_CAU_HOI] FOREIGN KEY([IDLevel])
REFERENCES [dbo].[CAP_DO_CAU_HOI] ([IDLevel])
GO
ALTER TABLE [dbo].[BAI_TAP] CHECK CONSTRAINT [FK_BAI_TAP_CAP_DO_CAU_HOI]
GO
/****** Object:  ForeignKey [FK_BINHLUAN_BAIHOC]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[BINH_LUAN]  WITH CHECK ADD  CONSTRAINT [FK_BINHLUAN_BAIHOC] FOREIGN KEY([IDBaiHoc])
REFERENCES [dbo].[BAI_HOC] ([IDBaiHoc])
GO
ALTER TABLE [dbo].[BINH_LUAN] CHECK CONSTRAINT [FK_BINHLUAN_BAIHOC]
GO
/****** Object:  ForeignKey [FK_BINHLUAN_HOCVIEN]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[BINH_LUAN]  WITH CHECK ADD  CONSTRAINT [FK_BINHLUAN_HOCVIEN] FOREIGN KEY([IDHocVien])
REFERENCES [dbo].[HOC_VIEN] ([IDHocVien])
GO
ALTER TABLE [dbo].[BINH_LUAN] CHECK CONSTRAINT [FK_BINHLUAN_HOCVIEN]
GO
/****** Object:  ForeignKey [FK_CAUTRALOI_CAUHOI]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[CAU_TRA_LOI]  WITH CHECK ADD  CONSTRAINT [FK_CAUTRALOI_CAUHOI] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CAU_HOI] ([MaCauHoi])
GO
ALTER TABLE [dbo].[CAU_TRA_LOI] CHECK CONSTRAINT [FK_CAUTRALOI_CAUHOI]
GO
/****** Object:  ForeignKey [FK_HOCVIENTHAMGIA_HOCVIEN]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[DANG_KY]  WITH CHECK ADD  CONSTRAINT [FK_HOCVIENTHAMGIA_HOCVIEN] FOREIGN KEY([IDHocVien])
REFERENCES [dbo].[HOC_VIEN] ([IDHocVien])
GO
ALTER TABLE [dbo].[DANG_KY] CHECK CONSTRAINT [FK_HOCVIENTHAMGIA_HOCVIEN]
GO
/****** Object:  ForeignKey [FK_HOCVIENTHAMGIA_KHOAHOC]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[DANG_KY]  WITH CHECK ADD  CONSTRAINT [FK_HOCVIENTHAMGIA_KHOAHOC] FOREIGN KEY([IDKhoaHoc])
REFERENCES [dbo].[KHOA_HOC] ([IDKhoaHoc])
GO
ALTER TABLE [dbo].[DANG_KY] CHECK CONSTRAINT [FK_HOCVIENTHAMGIA_KHOAHOC]
GO
/****** Object:  ForeignKey [FK_DE_BAI_BAI_TAP]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[DE_BAI]  WITH CHECK ADD  CONSTRAINT [FK_DE_BAI_BAI_TAP] FOREIGN KEY([IDBaiTap])
REFERENCES [dbo].[BAI_TAP] ([IDBaiTap])
GO
ALTER TABLE [dbo].[DE_BAI] CHECK CONSTRAINT [FK_DE_BAI_BAI_TAP]
GO
/****** Object:  ForeignKey [FK_DE_BAI_CAU_HOI]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[DE_BAI]  WITH CHECK ADD  CONSTRAINT [FK_DE_BAI_CAU_HOI] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CAU_HOI] ([MaCauHoi])
GO
ALTER TABLE [dbo].[DE_BAI] CHECK CONSTRAINT [FK_DE_BAI_CAU_HOI]
GO
/****** Object:  ForeignKey [FK_KHOA_HOC_CAP_DO]    Script Date: 11/14/2019 22:28:42 ******/
ALTER TABLE [dbo].[KHOA_HOC]  WITH CHECK ADD  CONSTRAINT [FK_KHOA_HOC_CAP_DO] FOREIGN KEY([IDCapDo])
REFERENCES [dbo].[CAP_DO] ([IDCapDo])
GO
ALTER TABLE [dbo].[KHOA_HOC] CHECK CONSTRAINT [FK_KHOA_HOC_CAP_DO]
GO

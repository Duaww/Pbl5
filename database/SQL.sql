USE [DB2]
GO
/****** Object:  Table [dbo].[BaiBao]    Script Date: 7/6/2021 8:39:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiBao](
	[IDBaiBao] [nvarchar](50) NOT NULL,
	[IDDeTai] [nvarchar](50) NOT NULL,
	[NoiDung] [text] NOT NULL,
	[NgayDang] [date] NOT NULL,
 CONSTRAINT [PK_BaiBao] PRIMARY KEY CLUSTERED 
(
	[IDBaiBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenMon]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMon](
	[ID] [nvarchar](50) NOT NULL,
	[IDLinhVuc] [nvarchar](50) NOT NULL,
	[IDDeTai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuyenMon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeTai]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeTai](
	[IDDeTai] [nvarchar](50) NOT NULL,
	[TenDeTai] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](50) NOT NULL,
	[IDNguoihuongdan] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DeTai] PRIMARY KEY CLUSTERED 
(
	[IDDeTai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeTaiDangThucHien]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeTaiDangThucHien](
	[IDDeTai] [nvarchar](50) NOT NULL,
	[TienDo] [nvarchar](1000) NOT NULL,
	[ID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DeTaiDangThucHien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeTaiHoanThanh]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeTaiHoanThanh](
	[IDDeTai] [nvarchar](50) NOT NULL,
	[Diem] [nvarchar](50) NOT NULL,
	[NgayHoanThanh] [date] NOT NULL,
	[IDBaiBao] [nvarchar](50) NULL,
	[ID] [nchar](50) NOT NULL,
 CONSTRAINT [PK_DeTaiHoanThanh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoiDongCham]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiDongCham](
	[ID] [nvarchar](50) NOT NULL,
	[IDCanBo] [nvarchar](50) NOT NULL,
	[IDDeTai] [nvarchar](50) NOT NULL,
	[Diem] [nchar](10) NULL,
 CONSTRAINT [PK_HoiDongCham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinhVuc]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinhVuc](
	[IDLinhVuc] [nvarchar](50) NOT NULL,
	[TenLinhVuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LinhVuc] PRIMARY KEY CLUSTERED 
(
	[IDLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NghiepVu]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NghiepVu](
	[ID] [nvarchar](50) NOT NULL,
	[IDCanBo] [nvarchar](50) NOT NULL,
	[IDLinhVuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NghiepVu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiThucHien]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiThucHien](
	[ID] [nvarchar](50) NOT NULL,
	[IDDeTai] [nvarchar](50) NOT NULL,
	[IDNguoiThucHien] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NguoiThucHien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[ID] [nvarchar](50) NOT NULL,
	[LoaiTaiKhoan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/6/2021 8:39:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [nvarchar](50) NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](max) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[Gmail] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BaiBao] ([IDBaiBao], [IDDeTai], [NoiDung], [NgayDang]) VALUES (N'402881847a413885017a413a58b90001', N'detai2', N'test bai bao', CAST(N'2021-06-25' AS Date))
INSERT [dbo].[BaiBao] ([IDBaiBao], [IDDeTai], [NoiDung], [NgayDang]) VALUES (N'baibao1', N'detai3', N'Handwriting character recognition is one of the most common research topics. Many approaches have applied to English characters and achieve high accuracy. However, the complexities in the language of each country are not same. Vietnamese handwriting character recognition is facing many problems, most of them come from the accent. This paper focuses on accent recognition, especially when there is a connection between two accents a common problem which affects the identification result. Our approach starts with separating accent from character using the connected-component labeling method. The obtained accent then is checked if it is single or multiple (the combination of many accents). The recognition is performed using support vector machines with the single accent, or hidden Markov model if the accent is multiple. Proposed solution has been tested and obtained high accuracy. Keywords—Vietnamese handwriing character, accent, corner detector, branch separating, invariant moment, hidden Markov models (HMMs)', CAST(N'2021-06-25' AS Date))
INSERT [dbo].[BaiBao] ([IDBaiBao], [IDDeTai], [NoiDung], [NgayDang]) VALUES (N'baibao2', N'detai4', N'Page Header
AUTHOR DESK
Submission Schedule
Call for paper
Author Guideline
Manuscript Template
Copyright Form
Publication Fee
Indexing
Impact Factor
OUR ASSOCIATE JOURNAL
Journal of Global Research in Mathematical Archives
Journal of Global Research in Computer Science
OPEN JOURNAL SYSTEMS
JOURNAL HELP
USER
Username	
Password	
 Remember me
NOTIFICATIONS
View
Subscribe
JOURNAL CONTENT
Search
Search Scope

All

Browse
By Issue
By Author
By Title
FONT SIZE

ARTICLE TOOLS
 Print this article
 Indexing metadata
 How to cite item
 Email this article (Login required)
 Email the author (Login required)
HOME ABOUT LOGIN REGISTER SEARCH CURRENT ARCHIVES EDITORIAL BOARD CONTACT US
Home > Vol 4, No 11 (2013) > Nguyen
VIETNAMESE SIGN LANGUAGE RECOGNITION USING CROSS LINE DESCRIPTORS AND INVARIANT MOMENTS
Trong-Nguyen Nguyen, Huu-Hung Huynh, Jean Meunier

ABSTRACT

Sign language is the primary language used by the deaf community in order to convey information through gestures instead of words. Many researches about this language have been done, and they play an important role in life. Currently, most of the hard-of-hearings in Vietnam are facing many difficulties in community integration because of their limited ability. So we propose an approach which can recognize Vietnamese sign language, based on digital image processing combined with a machine learning method. After pre-processing, we use a combination of cross lines descriptors and invariant moments to extract the features, and then the gesture is recognized using support vector machines. This is one of the few studies on sign language applied to Vietnamese alphabet (the number of words is higher and more complex than international standards with several accented letters). The proposed approach has been tested with high accuracy and is promising.', CAST(N'2021-06-28' AS Date))
GO
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'1', N'ttnt', N'detai1')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'10', N'ttnt', N'detai10')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'2', N'cntt', N'detai2')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'3', N'cnpm', N'detai3')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'4', N'cnpm', N'detai4')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'4028818479d9fb460179d9ff11320001', N'cnpm', N'4028818479d9fb460179d9fedd060000')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'4028818479d9fb460179d9ff11380002', N'cntt', N'4028818479d9fb460179d9fedd060000')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'4028818479fa5a910179fa5c56530001', N'cnpm', N'4028818479fa5a910179fa5c27f80000')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'4028818479fa5a910179fa5c565b0002', N'cntt', N'4028818479fa5a910179fa5c27f80000')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'4028818479fa5a910179fa5c565e0003', N'mmt', N'4028818479fa5a910179fa5c27f80000')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'5', N'mmt', N'detai5')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'6', N'cnpm', N'detai6')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'7', N'ttnt', N'detai7')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'8', N'cnpm', N'detai8')
INSERT [dbo].[ChuyenMon] ([ID], [IDLinhVuc], [IDDeTai]) VALUES (N'9', N'cnpm', N'detai9')
GO
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'4028818479d9fb460179d9fedd060000', N'Quản lý sách', N'xây dựng hệ thống quản lý sách cho thư viện', N'user7', N'OK')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'4028818479fa5a910179fa5c27f80000', N'phần mềm quản lí quán net', N'quản lí quán net', NULL, N'dangxet')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai1', N'Hệ thống phát hiện chuyển động', N'Hệ thống trong khuôn viên ĐH Bách Khoa-ĐH Đà Nẵng', N'user8', N'OK')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai10', N'Tìm hiểu ngôn ngữ R', N'Hỗ trợ khai phá dữ liệu', N'user7', N'chuaxet')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai2', N'Website thương mại điện tử', N'tích hợp chatbot', N'user7', N'OK')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai3', N'Ứng dụng quản lý ', N'Quản lý phòng máy tính tại ĐHBK-ĐHDN', N'user6', N'OK')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai4', N'Xây dựng phần mềm', N'ôn luyện và thi trắc nghiệm trên Mobile', N'user6', N'OK')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai5', N'Nghiên cứu IOT', N'Ứng dụng nhà thông minh', N'user5', N'OK')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai6', N'Xây dựng ứng dụng ITC', N'CLB tin học trên nền tảng mobile', N'user7', N'OK')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai7', N'Nghiên cứu python', N'Ứng dụng kiểm tra trắc nghiệm', N'user8', N'OK')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai8', N'Xây dựng game', N'hỗ trợ môn lịch sử Unity engine', N'user5', N'dangxet')
INSERT [dbo].[DeTai] ([IDDeTai], [TenDeTai], [MoTa], [IDNguoihuongdan], [TrangThai]) VALUES (N'detai9', N'Xây ứng dụng vẽ đồ thị hàm số', N'hỗ trợ học tập THOT', N'user6', N'OK')
GO
INSERT [dbo].[DeTaiDangThucHien] ([IDDeTai], [TienDo], [ID]) VALUES (N'detai1', N'tien do 3', N'1')
INSERT [dbo].[DeTaiDangThucHien] ([IDDeTai], [TienDo], [ID]) VALUES (N'detai2', N'tien do 2', N'2')
INSERT [dbo].[DeTaiDangThucHien] ([IDDeTai], [TienDo], [ID]) VALUES (N'detai3', N'tien do 3', N'3')
INSERT [dbo].[DeTaiDangThucHien] ([IDDeTai], [TienDo], [ID]) VALUES (N'detai4', N'tien do 4', N'4')
INSERT [dbo].[DeTaiDangThucHien] ([IDDeTai], [TienDo], [ID]) VALUES (N'detai7', N'tien do 7', N'402881847a40cc08017a40d44c970000')
GO
INSERT [dbo].[DeTaiHoanThanh] ([IDDeTai], [Diem], [NgayHoanThanh], [IDBaiBao], [ID]) VALUES (N'detai3', N'8.5', CAST(N'2021-06-24' AS Date), N'baibao1', N'402881847a3e7a75017a3e7aa4620000                  ')
INSERT [dbo].[DeTaiHoanThanh] ([IDDeTai], [Diem], [NgayHoanThanh], [IDBaiBao], [ID]) VALUES (N'detai2', N'7.0', CAST(N'2021-06-25' AS Date), N'402881847a413885017a413a58b90001', N'402881847a413885017a41391c2f0000                  ')
INSERT [dbo].[DeTaiHoanThanh] ([IDDeTai], [Diem], [NgayHoanThanh], [IDBaiBao], [ID]) VALUES (N'detai3', N'8', CAST(N'2021-05-04' AS Date), N'baibao1', N'hoanthanh1                                        ')
INSERT [dbo].[DeTaiHoanThanh] ([IDDeTai], [Diem], [NgayHoanThanh], [IDBaiBao], [ID]) VALUES (N'detai4', N'7', CAST(N'2021-09-24' AS Date), N'baibao2', N'hoanthanh2                                        ')
GO
INSERT [dbo].[HoiDongCham] ([ID], [IDCanBo], [IDDeTai], [Diem]) VALUES (N'402881847a33f571017a33f82d5a0004', N'user7', N'detai3', N'9         ')
INSERT [dbo].[HoiDongCham] ([ID], [IDCanBo], [IDDeTai], [Diem]) VALUES (N'402881847a33f571017a33f82d5d0005', N'user4', N'detai3', N'8         ')
INSERT [dbo].[HoiDongCham] ([ID], [IDCanBo], [IDDeTai], [Diem]) VALUES (N'402881847a40f5b9017a40f64b910000', N'user7', N'detai2', N'7         ')
INSERT [dbo].[HoiDongCham] ([ID], [IDCanBo], [IDDeTai], [Diem]) VALUES (N'402881847a43e650017a43e894950000', N'user7', N'detai1', N'8         ')
INSERT [dbo].[HoiDongCham] ([ID], [IDCanBo], [IDDeTai], [Diem]) VALUES (N'402881847a43e650017a43e894ad0001', N'user5', N'detai1', NULL)
INSERT [dbo].[HoiDongCham] ([ID], [IDCanBo], [IDDeTai], [Diem]) VALUES (N'402881867a6b1d5a017a6b6e78110004', N'user7', N'detai4', NULL)
INSERT [dbo].[HoiDongCham] ([ID], [IDCanBo], [IDDeTai], [Diem]) VALUES (N'402881867a6b1d5a017a6b6e78300005', N'user5', N'detai4', NULL)
GO
INSERT [dbo].[LinhVuc] ([IDLinhVuc], [TenLinhVuc]) VALUES (N'cnpm', N'Công nghệ phần mềm')
INSERT [dbo].[LinhVuc] ([IDLinhVuc], [TenLinhVuc]) VALUES (N'cntt', N'Công nghệ thông tin')
INSERT [dbo].[LinhVuc] ([IDLinhVuc], [TenLinhVuc]) VALUES (N'dtvt', N'Điện tử viễn thông')
INSERT [dbo].[LinhVuc] ([IDLinhVuc], [TenLinhVuc]) VALUES (N'mmt', N'Mạng máy tính')
INSERT [dbo].[LinhVuc] ([IDLinhVuc], [TenLinhVuc]) VALUES (N'tdh', N'Tự động hóa')
INSERT [dbo].[LinhVuc] ([IDLinhVuc], [TenLinhVuc]) VALUES (N'ttnt', N'Trí tuệ nhân tạo')
GO
INSERT [dbo].[NghiepVu] ([ID], [IDCanBo], [IDLinhVuc]) VALUES (N'1', N'user4', N'cntt')
INSERT [dbo].[NghiepVu] ([ID], [IDCanBo], [IDLinhVuc]) VALUES (N'2', N'user5', N'ttnt')
INSERT [dbo].[NghiepVu] ([ID], [IDCanBo], [IDLinhVuc]) VALUES (N'3', N'user6', N'cnpm')
INSERT [dbo].[NghiepVu] ([ID], [IDCanBo], [IDLinhVuc]) VALUES (N'4', N'user8', N'dtvt')
INSERT [dbo].[NghiepVu] ([ID], [IDCanBo], [IDLinhVuc]) VALUES (N'5', N'user7', N'ttnt')
GO
INSERT [dbo].[NguoiThucHien] ([ID], [IDDeTai], [IDNguoiThucHien]) VALUES (N'1', N'detai1', N'user1')
INSERT [dbo].[NguoiThucHien] ([ID], [IDDeTai], [IDNguoiThucHien]) VALUES (N'2', N'detai2', N'user5')
INSERT [dbo].[NguoiThucHien] ([ID], [IDDeTai], [IDNguoiThucHien]) VALUES (N'3', N'detai3', N'user9')
INSERT [dbo].[NguoiThucHien] ([ID], [IDDeTai], [IDNguoiThucHien]) VALUES (N'4', N'detai4', N'user7')
INSERT [dbo].[NguoiThucHien] ([ID], [IDDeTai], [IDNguoiThucHien]) VALUES (N'4028818479d9fb460179da06062b0003', N'4028818479d9fb460179d9fedd060000', N'user1')
INSERT [dbo].[NguoiThucHien] ([ID], [IDDeTai], [IDNguoiThucHien]) VALUES (N'4028818479fa5eea0179fa65491c0000', N'detai7', N'user1')
GO
INSERT [dbo].[PhanQuyen] ([ID], [LoaiTaiKhoan]) VALUES (N'1', N'Admin')
INSERT [dbo].[PhanQuyen] ([ID], [LoaiTaiKhoan]) VALUES (N'2', N'HoiDong')
INSERT [dbo].[PhanQuyen] ([ID], [LoaiTaiKhoan]) VALUES (N'3', N'CanBo')
INSERT [dbo].[PhanQuyen] ([ID], [LoaiTaiKhoan]) VALUES (N'4', N'NghienCuuSinh')
GO
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'4028818479ffaada0179ffab83d60000', N'testbamcute', N'$2a$10$CulQelU0IRFkjNKs9hesle9dy25boy8lTQW1qU6LqsWUnBctI495C', N'TestBam123', CAST(N'2021-06-07' AS Date), 1, N'123456ad7@hello.com', N'12345678', N'Quảng Nam', N'4', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'4028818579b773000179b773d04f0000', N'lvl1', N'$2a$10$92HWjXbbzGRUe9faXA4tJOMVXWW3e/LlsN2n5C2SWiJbXuncVS0ha', N'Lưu Văn Lợi', CAST(N'2000-02-16' AS Date), 1, N'lvl162@gmail.com', N'123456789', N'Quảng Nam', N'2', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'4028818579baedfb0179baefab990000', N'tinhcute', N'$2a$10$i4kaTqyFbShNtyPCl13GjuJTgkwIWpI2ErP58FuRqzuB1I1NYGfMi', N'Nguyễn Thanh Tính ', CAST(N'2000-12-03' AS Date), 1, N'nguyentinh031220@gmail.com', N'0812287774', N'Quảng Bình', N'2', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'user1', N'102180279', N'$2a$10$xosCN4fuvbPMZIA6HCv1COChPMJxZ1LzM77j9dAU8YthdtuOdqiNu', N'Lương Quang Tùng', CAST(N'2000-06-27' AS Date), 1, N'Tungluong2706@gmail.com', N'0947718319', N'Quảng Ngãi', N'4', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'user2', N'102180280', N'$2a$10$Vzie.Asz0wrYmdo1gQZQi.3ilIbMVgVtHb.62yYPri2dmaHsi8ccq', N'Nguyễn Thanh Tính', CAST(N'2000-11-02' AS Date), 1, N'nguyentinh031220@gmail.com', N'09999999999', N'Quảng Bình', N'1', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'user3', N'102180259', N'$2a$10$LYwtisHF1nZ4jROOYP./VeCqNuC1jW25pslbK0bsWI6LeKxGIPe4O', N'Phạm Trần Nhân Nghĩa', CAST(N'2000-02-05' AS Date), 1, N'Nghiaphma11@gmail.com', N'094837287', N'Đà Nẵng', N'2', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'user4', N'tungluong', N'$2a$10$B4eQlDswZN4D6dznJUsoveVoVcc0/5A68ODevNNhLYfNHz5lMuhiC', N'Lương Tùng', CAST(N'2000-06-06' AS Date), 1, N'tungluong@gmail.com', N'04958393282', N'Quảng Nam', N'3', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'user5', N'tankhoi', N'$2a$10$EM8pw/4EGod8c5c3nGGKsOBQBNHPTFGEQ4y5OECx5IyoKrEDgF9CW', N'Nguyễn Tấn Khôi', CAST(N'2000-01-02' AS Date), 1, N'ntkhoi@dut.udn.vn', N'02363638383', N'Huế', N'3', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'user6', N'hoaphuongpro', N'$2a$10$4dvO4JAMycUmy58uEN8S9Ou8CsvZ8U1/YMgVCSJHQ8LI6Pzb46J9G', N'Đăng Hoài Phương', CAST(N'1998-05-03' AS Date), 1, N'dhphuong@dut.udn.vn', N'0935578555', N'Đà nẵng', N'3', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'user7', N'Tuanpham', N'$2a$10$8.nLh3vSxVDDxkbP4/3WO.JDondroIKTk0AvY8oT9hqzE.pSkhLVq', N'Phạm Minh Tuấn', CAST(N'1987-04-24' AS Date), 0, N'pmtuan@dut.udn.vn', N'0913230910', N'Quảng Ngãi', N'3', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'user8', N'Huuhung', N'$2a$10$CSMdUGBDboOFKoLn3D6kEOxTqOqIO3qU7FjRxH/nzPSePvlmssQnq', N'Huỳnh Hữu Hưng', CAST(N'1983-05-26' AS Date), 1, N'hhhung@dut.ud.vn', N'0905 444 669', N'Đà Nẵng', N'3', N'mo')
INSERT [dbo].[User] ([ID], [TaiKhoan], [MatKhau], [Ten], [NgaySinh], [GioiTinh], [Gmail], [SDT], [DiaChi], [Role], [TrangThai]) VALUES (N'user9', N'Thanhtinh', N'$2a$10$wVgU8HYMcLMJIDswGtHpOugxWsc2uucV7GuO07T9NSvlacASw8l0m', N'Nguyễn tính', CAST(N'2000-04-13' AS Date), 1, N'Tinh@gmail.com', N'0988756433', N'Quảng Bình', N'4', N'mo')
GO
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD  CONSTRAINT [FK_BaiBao_DeTai] FOREIGN KEY([IDDeTai])
REFERENCES [dbo].[DeTai] ([IDDeTai])
GO
ALTER TABLE [dbo].[BaiBao] CHECK CONSTRAINT [FK_BaiBao_DeTai]
GO
ALTER TABLE [dbo].[ChuyenMon]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenMon_DeTai] FOREIGN KEY([IDDeTai])
REFERENCES [dbo].[DeTai] ([IDDeTai])
GO
ALTER TABLE [dbo].[ChuyenMon] CHECK CONSTRAINT [FK_ChuyenMon_DeTai]
GO
ALTER TABLE [dbo].[ChuyenMon]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenMon_LinhVuc] FOREIGN KEY([IDLinhVuc])
REFERENCES [dbo].[LinhVuc] ([IDLinhVuc])
GO
ALTER TABLE [dbo].[ChuyenMon] CHECK CONSTRAINT [FK_ChuyenMon_LinhVuc]
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD  CONSTRAINT [FK_DeTai_User] FOREIGN KEY([IDNguoihuongdan])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[DeTai] CHECK CONSTRAINT [FK_DeTai_User]
GO
ALTER TABLE [dbo].[DeTaiDangThucHien]  WITH CHECK ADD  CONSTRAINT [FK_DeTaiDangThucHien_DeTai] FOREIGN KEY([IDDeTai])
REFERENCES [dbo].[DeTai] ([IDDeTai])
GO
ALTER TABLE [dbo].[DeTaiDangThucHien] CHECK CONSTRAINT [FK_DeTaiDangThucHien_DeTai]
GO
ALTER TABLE [dbo].[DeTaiHoanThanh]  WITH CHECK ADD  CONSTRAINT [FK_DeTaiHoanThanh_BaiBao] FOREIGN KEY([IDBaiBao])
REFERENCES [dbo].[BaiBao] ([IDBaiBao])
GO
ALTER TABLE [dbo].[DeTaiHoanThanh] CHECK CONSTRAINT [FK_DeTaiHoanThanh_BaiBao]
GO
ALTER TABLE [dbo].[DeTaiHoanThanh]  WITH CHECK ADD  CONSTRAINT [FK_DeTaiHoanThanh_DeTai] FOREIGN KEY([IDDeTai])
REFERENCES [dbo].[DeTai] ([IDDeTai])
GO
ALTER TABLE [dbo].[DeTaiHoanThanh] CHECK CONSTRAINT [FK_DeTaiHoanThanh_DeTai]
GO
ALTER TABLE [dbo].[HoiDongCham]  WITH CHECK ADD  CONSTRAINT [FK_HoiDongCham_DeTai] FOREIGN KEY([IDDeTai])
REFERENCES [dbo].[DeTai] ([IDDeTai])
GO
ALTER TABLE [dbo].[HoiDongCham] CHECK CONSTRAINT [FK_HoiDongCham_DeTai]
GO
ALTER TABLE [dbo].[HoiDongCham]  WITH CHECK ADD  CONSTRAINT [FK_HoiDongCham_User] FOREIGN KEY([IDCanBo])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[HoiDongCham] CHECK CONSTRAINT [FK_HoiDongCham_User]
GO
ALTER TABLE [dbo].[NghiepVu]  WITH CHECK ADD  CONSTRAINT [FK_NghiepVu_LinhVuc] FOREIGN KEY([IDLinhVuc])
REFERENCES [dbo].[LinhVuc] ([IDLinhVuc])
GO
ALTER TABLE [dbo].[NghiepVu] CHECK CONSTRAINT [FK_NghiepVu_LinhVuc]
GO
ALTER TABLE [dbo].[NghiepVu]  WITH CHECK ADD  CONSTRAINT [FK_NghiepVu_User] FOREIGN KEY([IDCanBo])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[NghiepVu] CHECK CONSTRAINT [FK_NghiepVu_User]
GO
ALTER TABLE [dbo].[NguoiThucHien]  WITH CHECK ADD  CONSTRAINT [FK_NguoiThucHien_DeTai] FOREIGN KEY([IDDeTai])
REFERENCES [dbo].[DeTai] ([IDDeTai])
GO
ALTER TABLE [dbo].[NguoiThucHien] CHECK CONSTRAINT [FK_NguoiThucHien_DeTai]
GO
ALTER TABLE [dbo].[NguoiThucHien]  WITH CHECK ADD  CONSTRAINT [FK_NguoiThucHien_User] FOREIGN KEY([IDNguoiThucHien])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[NguoiThucHien] CHECK CONSTRAINT [FK_NguoiThucHien_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_PhanQuyen] FOREIGN KEY([Role])
REFERENCES [dbo].[PhanQuyen] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_PhanQuyen]
GO

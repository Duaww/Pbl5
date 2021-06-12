USE [DB2]
GO
/****** Object:  Table [dbo].[BaiBao]    Script Date: 6/12/2021 9:25:35 PM ******/
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
/****** Object:  Table [dbo].[ChuyenMon]    Script Date: 6/12/2021 9:25:35 PM ******/
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
/****** Object:  Table [dbo].[DeTai]    Script Date: 6/12/2021 9:25:35 PM ******/
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
/****** Object:  Table [dbo].[DeTaiDangThucHien]    Script Date: 6/12/2021 9:25:35 PM ******/
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
/****** Object:  Table [dbo].[DeTaiHoanThanh]    Script Date: 6/12/2021 9:25:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeTaiHoanThanh](
	[IDDeTai] [nvarchar](50) NOT NULL,
	[Diem] [nvarchar](50) NOT NULL,
	[NgayHoanThanh] [date] NOT NULL,
	[IDBaiBao] [nvarchar](50) NOT NULL,
	[ID] [nchar](50) NOT NULL,
 CONSTRAINT [PK_DeTaiHoanThanh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoiDongCham]    Script Date: 6/12/2021 9:25:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiDongCham](
	[ID] [nvarchar](50) NOT NULL,
	[IDCanBo] [nvarchar](50) NOT NULL,
	[IDDeTai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HoiDongCham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinhVuc]    Script Date: 6/12/2021 9:25:35 PM ******/
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
/****** Object:  Table [dbo].[NghiepVu]    Script Date: 6/12/2021 9:25:35 PM ******/
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
/****** Object:  Table [dbo].[NguoiThucHien]    Script Date: 6/12/2021 9:25:35 PM ******/
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
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 6/12/2021 9:25:35 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 6/12/2021 9:25:35 PM ******/
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

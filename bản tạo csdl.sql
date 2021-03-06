USE [QuanLyDiemSinhVien]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiangVien](
	[IDGV] [char](10) NOT NULL,
	[TenGV] [nvarchar](50) NULL,
	[IDKhoa] [char](10) NULL,
 CONSTRAINT [IDGV_pk] PRIMARY KEY CLUSTERED 
(
	[IDGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HeDT]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HeDT](
	[MaHeDT] [char](10) NOT NULL,
	[TenHeDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_HeDT] PRIMARY KEY CLUSTERED 
(
	[MaHeDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocKy]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocKy](
	[IDHocKy] [char](10) NOT NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
 CONSTRAINT [IDHocKy_pk] PRIMARY KEY CLUSTERED 
(
	[IDHocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocPhan]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocPhan](
	[IDHocPhan] [char](10) NOT NULL,
	[TenHocPhan] [nvarchar](100) NULL,
	[SoTiet] [float] NULL,
	[SoTC] [int] NULL,
	[HinhThucThi] [nvarchar](50) NULL,
 CONSTRAINT [IDMonHoc_pk] PRIMARY KEY CLUSTERED 
(
	[IDHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KetQuaHP]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KetQuaHP](
	[IDSinhVien] [char](10) NOT NULL,
	[IDHocPhan] [char](10) NOT NULL,
	[DiemCC] [float] NULL,
	[DiemTX] [float] NULL,
	[DiemThi] [float] NULL,
	[DiemHe10] [float] NULL,
	[DiemHe4] [float] NULL,
	[DiemChu] [char](10) NULL,
 CONSTRAINT [IDSinhVien_IDHocPhan_pk] PRIMARY KEY CLUSTERED 
(
	[IDHocPhan] ASC,
	[IDSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KetQuaLopHP]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KetQuaLopHP](
	[IDSinhVien] [char](10) NOT NULL,
	[IDLopHP] [char](10) NOT NULL,
	[DiemCC] [float] NULL,
	[DiemTX] [float] NULL,
	[DiemThi] [float] NULL,
	[DiemHe10] [float] NULL,
	[DiemHe4] [float] NULL,
	[DiemChu] [char](10) NULL,
 CONSTRAINT [IDSinhVien_IDLopHP_pk] PRIMARY KEY CLUSTERED 
(
	[IDLopHP] ASC,
	[IDSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Khoa](
	[IDKhoa] [char](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [IDKhoa_pk] PRIMARY KEY CLUSTERED 
(
	[IDKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lop](
	[IDLop] [char](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[SiSo] [int] NULL,
	[NienKhoa] [varchar](50) NULL,
	[IDKhoa] [char](10) NULL,
 CONSTRAINT [IDLop_pk] PRIMARY KEY CLUSTERED 
(
	[IDLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LopHP](
	[IDLopHP] [char](10) NOT NULL,
	[PhongHoc] [nvarchar](50) NULL,
	[NgayThi] [datetime] NULL,
	[TongSoSV] [int] NULL,
	[IDHocPhan] [char](10) NULL,
	[IDHocKy] [char](10) NULL,
	[MaHeDT] [char](10) NULL,
	[IDGV] [char](10) NULL,
 CONSTRAINT [IDLopHP_pk] PRIMARY KEY CLUSTERED 
(
	[IDLopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[IDSinhVien] [char](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[QueQuan] [nvarchar](200) NULL,
	[DiaChiHT] [nvarchar](200) NULL,
	[KhoaDKi] [char](10) NULL,
	[IDLop] [char](10) NULL,
 CONSTRAINT [IDSinhVien_pk] PRIMARY KEY CLUSTERED 
(
	[IDSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TongKetKy]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TongKetKy](
	[IDSinhVien] [char](10) NOT NULL,
	[IDHocKy] [char](10) NOT NULL,
	[DiemTBC] [float] NULL,
	[SoTCDKi] [int] NULL,
	[SoTCNo] [int] NULL,
	[XepLoai] [nvarchar](50) NULL,
 CONSTRAINT [IDSinhVien_IDHocKy_pk] PRIMARY KEY CLUSTERED 
(
	[IDHocKy] ASC,
	[IDSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 1/14/2020 7:14:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NOT NULL,
	[Property] [nvarchar](50) NULL,
	[under] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC,
	[PassWord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[GiangVien] ([IDGV], [TenGV], [IDKhoa]) VALUES (N'4GV01     ', N'Ngô Văn Tâm', N'4CNTT     ')
INSERT [dbo].[GiangVien] ([IDGV], [TenGV], [IDKhoa]) VALUES (N'4GV02     ', N'Trần Duy Thắng', N'4CDT      ')
INSERT [dbo].[GiangVien] ([IDGV], [TenGV], [IDKhoa]) VALUES (N'4GV03     ', N'Trần Mạnh Đình', N'4KHMT     ')
INSERT [dbo].[GiangVien] ([IDGV], [TenGV], [IDKhoa]) VALUES (N'4GV04     ', N'Nguyễn Thị Linh', N'4DKTDH    ')
INSERT [dbo].[GiangVien] ([IDGV], [TenGV], [IDKhoa]) VALUES (N'4GV05     ', N'Ngô Văn Tịnh', N'4DTVT     ')
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'41        ', CAST(N'2015-08-13 00:00:00.000' AS DateTime), CAST(N'2015-11-24 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'410       ', CAST(N'2019-08-15 00:00:00.000' AS DateTime), CAST(N'2019-11-24 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'411       ', CAST(N'2020-01-15 00:00:00.000' AS DateTime), CAST(N'2020-05-11 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'42        ', CAST(N'2016-01-15 00:00:00.000' AS DateTime), CAST(N'2016-05-11 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'43        ', CAST(N'2016-08-13 00:00:00.000' AS DateTime), CAST(N'2016-11-24 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'44        ', CAST(N'2017-01-15 00:00:00.000' AS DateTime), CAST(N'2017-05-11 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'45        ', CAST(N'2017-08-13 00:00:00.000' AS DateTime), CAST(N'2017-11-24 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'46        ', CAST(N'2018-01-15 00:00:00.000' AS DateTime), CAST(N'2018-05-11 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'47        ', CAST(N'2018-01-15 00:00:00.000' AS DateTime), CAST(N'2018-05-11 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'48        ', CAST(N'2018-08-15 00:00:00.000' AS DateTime), CAST(N'2018-11-24 00:00:00.000' AS DateTime))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'49        ', CAST(N'2019-01-15 00:00:00.000' AS DateTime), CAST(N'2019-05-11 00:00:00.000' AS DateTime))
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH01     ', N'Đường lối cách mạng của Đảng cộng sản Việt Nam', 70, 3, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH02     ', N'Đường lối quân sự của Đảng + Tham quan', 75, 3, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH03     ', N'Thực tập cơ sở dữ liệu', 80, 3, N'Vấn đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH04     ', N'Công nghệ web', 45, 2, N'Vấn đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH05     ', N'Điện tử số + BTL', 45, 2, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH06     ', N'Lý thuyết ngôn ngữ lập trình', 80, 3, N'Vấn đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH07     ', N'Kinh tế công nghiệp', 80, 2, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH08     ', N'Công nghệ phần mềm', 85, 3, N'Vấn đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH09     ', N'Trí tuệ nhân tạo', 80, 3, N'Vấn đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH10     ', N'Mạng máy tính', 80, 3, N'Vấn đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH11     ', N'Tiếng anh B11', 90, 3, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH12     ', N'Kinh tế xây dựng', 80, 3, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'4MH13     ', N'Máy điện 2', 80, 3, N'Vấn đáp')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4CDT      ', N'Kỹ thuật cơ điện tử')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4CK       ', N'CƠ khí')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4CNHH     ', N'Công Nghệ Hóa Học')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4CNTT     ', N'Công nghệ thông tin')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4DDT      ', N'Điện điện tử')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4DKTDH    ', N'Kỹ thuật điều khiển và tự động hóa')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4DTVT     ', N'Kỹ thuật điện tử - viễn thông')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4HTTT     ', N'Hệ thống thông tin')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4KHMT     ', N'Khoa học máy tính')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4KTPM     ', N'Kỹ thuật phần mềm')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'4KTXD     ', N'Kỹ thuật xây dựng')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'4CDT15    ', N'Cơ điện tử 15', NULL, N'2016-2021', N'4CDT      ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'4CNDL14   ', N'Công nghệ dữ liệu 14', NULL, N'2015-2020', N'4CNTT     ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'4CNTT14   ', N'Công nghệ thông tin 14', NULL, N'2015-2020', N'4CNTT     ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'4DTVT16   ', N'Điện tử viễn thông 16', NULL, N'2017-2022', N'4DTVT     ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'4KHMT14   ', N'Khoa học máy tính 14', NULL, N'2015-2020', N'4KHMT     ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'4KHMT15   ', N'Khoa học máy tính 15', NULL, N'2016-2021', N'4KHMT     ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [MaHeDT], [IDGV]) VALUES (N'4LMH01    ', N'H9401', CAST(N'2019-05-13 00:00:00.000' AS DateTime), NULL, N'4MH03     ', N'45        ', NULL, N'4GV01     ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [MaHeDT], [IDGV]) VALUES (N'4LMH02    ', N'H9301', CAST(N'2019-05-18 00:00:00.000' AS DateTime), NULL, N'4MH04     ', N'45        ', NULL, N'4GV03     ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [MaHeDT], [IDGV]) VALUES (N'4LMH03    ', N'H9302', CAST(N'2019-05-27 00:00:00.000' AS DateTime), NULL, N'4MH05     ', N'45        ', NULL, N'4GV05     ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [MaHeDT], [IDGV]) VALUES (N'4LMH04    ', N'H9403', CAST(N'2019-05-17 00:00:00.000' AS DateTime), NULL, N'4MH06     ', N'45        ', NULL, N'4GV03     ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [MaHeDT], [IDGV]) VALUES (N'4LMH05    ', N'H5412', CAST(N'2019-05-15 00:00:00.000' AS DateTime), NULL, N'4MH07     ', N'45        ', NULL, N'4GV04     ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV01     ', N'Lê Chí Minh Hoàng', CAST(N'1998-03-27 00:00:00.000' AS DateTime), N'Nam', N'Hòa Bình', N'Cổ Nhuế', NULL, N'4KHMT14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV02     ', N'Trần Thị Hoa', CAST(N'1998-01-12 00:00:00.000' AS DateTime), N'Nữ', N'Cao Bằng', N'Trần Cung', NULL, N'4KHMT14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV03     ', N'Nguyễn Văn Linh', CAST(N'1997-05-20 00:00:00.000' AS DateTime), N'NAM', N'HÀ NAM', N'Phú Diễn', NULL, N'4CNTT14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV04     ', N'Nguyễn Thị Lý', CAST(N'1997-08-24 00:00:00.000' AS DateTime), N'Nữ', N'Quảng Nam', N'Phúc Diễn', NULL, N'4KHMT14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV05     ', N'Trần Thị Lan', CAST(N'1997-01-04 00:00:00.000' AS DateTime), N'Nữ', N'Quảng Ninh', N'Cổ Nhuế', NULL, N'4CNDL14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV06     ', N'Nguyễn Thị Thanh Huyền', CAST(N'1998-04-24 00:00:00.000' AS DateTime), N'Nữ', N'Nghệ An', N'Hoàng Quốc Việt', NULL, N'4CNDL14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV07     ', N'Trần Thanh Duyên', CAST(N'1998-02-21 00:00:00.000' AS DateTime), N'Nữ', N'Hà Nội', N'Đê La Thành', NULL, N'4CNTT14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV08     ', N'Trần Minh Hiệp', CAST(N'1998-04-13 00:00:00.000' AS DateTime), N'Nam', N'Hà Nội', N'Long Biên', NULL, N'4CNDL14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV09     ', N'Phạm Vũ Hùng', CAST(N'1998-07-18 00:00:00.000' AS DateTime), N'Nam', N'Hà Nội', N'Mê LInh', NULL, N'4KHMT14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV10     ', N'Đỗ Thanh Tùng', CAST(N'1998-07-12 00:00:00.000' AS DateTime), N'Nam', N'Lạng Sơn', N'Mỹ Đình', NULL, N'4CNTT14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV11     ', N'Phạm Khắc Tư', CAST(N'1998-04-24 00:00:00.000' AS DateTime), N'Nam', N'Thanh Hóa', N'Trần Duy Hưng', NULL, N'4DTVT16   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV12     ', N'Phạm Hoàng Anh', CAST(N'1998-06-15 00:00:00.000' AS DateTime), N'Nam', N'Hà Nội', N'Nguyễn Phong Sắc', NULL, N'4DTVT16   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV13     ', N'Lê Văn Huy', CAST(N'1999-03-18 00:00:00.000' AS DateTime), N'Nam', N'Hà Tĩnh', N'Phạm Văn Đồng', NULL, N'4CNTT14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV14     ', N'Vũ An Phú', CAST(N'1998-09-19 00:00:00.000' AS DateTime), N'Nam', N'Hà Nội', N'Hàng Cháo', NULL, N'4KHMT14   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV15     ', N'Hoàng Thị Mỹ', CAST(N'1998-02-22 00:00:00.000' AS DateTime), N'Nữ', N'Quảng Bình', N'Cầu Giấy', NULL, N'4CDT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV16     ', N'Đặng Văn Nam', CAST(N'1999-03-11 00:00:00.000' AS DateTime), N'Nam', N'Bắc Ninh', N'Cổ Nhuế', NULL, N'4DTVT16   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV17     ', N'Trần Quang Phú', CAST(N'1998-12-11 00:00:00.000' AS DateTime), N'Nam', N'Hải Dương', N'Mỹ Đình', NULL, N'4CDT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV18     ', N'Trần Quang Khải', CAST(N'1998-02-11 00:00:00.000' AS DateTime), N'Nam', N'Hòa Bình', N'Trần Cung', NULL, N'4KHMT15   ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [IDLop]) VALUES (N'4SV19     ', N'Trần Văn Trung', CAST(N'1998-11-11 00:00:00.000' AS DateTime), N'Nam', N'Hòa Bình', N'Trần Cung', NULL, N'4KHMT15   ')
INSERT [dbo].[UserLogin] ([UserName], [PassWord], [Property], [under]) VALUES (N'admin', N'123456789', N'admin', N'admng')
INSERT [dbo].[UserLogin] ([UserName], [PassWord], [Property], [under]) VALUES (N'adminStudent', N'123456789', N'adminStudent', N'admin')
INSERT [dbo].[UserLogin] ([UserName], [PassWord], [Property], [under]) VALUES (N'adminTeacher', N'123456789', N'adminTeacher', N'admin')
INSERT [dbo].[UserLogin] ([UserName], [PassWord], [Property], [under]) VALUES (N'gv1', N'123456789', N'teacher', N'adminTeacher')
INSERT [dbo].[UserLogin] ([UserName], [PassWord], [Property], [under]) VALUES (N'gv2', N'123456789', N'teacher', N'adminTeacher')
INSERT [dbo].[UserLogin] ([UserName], [PassWord], [Property], [under]) VALUES (N'sv1', N'123456789', N'student', N'adminStudent')
INSERT [dbo].[UserLogin] ([UserName], [PassWord], [Property], [under]) VALUES (N'sv2', N'12345689', N'student', N'adminstudent')
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [fk_IDKhoa_GV] FOREIGN KEY([IDKhoa])
REFERENCES [dbo].[Khoa] ([IDKhoa])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [fk_IDKhoa_GV]
GO
ALTER TABLE [dbo].[KetQuaHP]  WITH CHECK ADD  CONSTRAINT [fk_IDHocPhan_KQHP] FOREIGN KEY([IDHocPhan])
REFERENCES [dbo].[HocPhan] ([IDHocPhan])
GO
ALTER TABLE [dbo].[KetQuaHP] CHECK CONSTRAINT [fk_IDHocPhan_KQHP]
GO
ALTER TABLE [dbo].[KetQuaHP]  WITH CHECK ADD  CONSTRAINT [fk_IDSinhVien_KQHP] FOREIGN KEY([IDSinhVien])
REFERENCES [dbo].[SinhVien] ([IDSinhVien])
GO
ALTER TABLE [dbo].[KetQuaHP] CHECK CONSTRAINT [fk_IDSinhVien_KQHP]
GO
ALTER TABLE [dbo].[KetQuaLopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDLopHP_KQLHP] FOREIGN KEY([IDLopHP])
REFERENCES [dbo].[LopHP] ([IDLopHP])
GO
ALTER TABLE [dbo].[KetQuaLopHP] CHECK CONSTRAINT [fk_IDLopHP_KQLHP]
GO
ALTER TABLE [dbo].[KetQuaLopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDSinhVien_KQLHP] FOREIGN KEY([IDSinhVien])
REFERENCES [dbo].[SinhVien] ([IDSinhVien])
GO
ALTER TABLE [dbo].[KetQuaLopHP] CHECK CONSTRAINT [fk_IDSinhVien_KQLHP]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [fk_IDKhoa_Lop] FOREIGN KEY([IDKhoa])
REFERENCES [dbo].[Khoa] ([IDKhoa])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [fk_IDKhoa_Lop]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDGV_LHP] FOREIGN KEY([IDGV])
REFERENCES [dbo].[GiangVien] ([IDGV])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [fk_IDGV_LHP]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDHocKy_LHP] FOREIGN KEY([IDHocKy])
REFERENCES [dbo].[HocKy] ([IDHocKy])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [fk_IDHocKy_LHP]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDHocPhan_LHP] FOREIGN KEY([IDHocPhan])
REFERENCES [dbo].[HocPhan] ([IDHocPhan])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [fk_IDHocPhan_LHP]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_HeDT] FOREIGN KEY([MaHeDT])
REFERENCES [dbo].[HeDT] ([MaHeDT])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_HeDT]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop] FOREIGN KEY([IDLop])
REFERENCES [dbo].[Lop] ([IDLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop]
GO
ALTER TABLE [dbo].[TongKetKy]  WITH CHECK ADD  CONSTRAINT [fk_IDHocKy_TKK] FOREIGN KEY([IDHocKy])
REFERENCES [dbo].[HocKy] ([IDHocKy])
GO
ALTER TABLE [dbo].[TongKetKy] CHECK CONSTRAINT [fk_IDHocKy_TKK]
GO
ALTER TABLE [dbo].[TongKetKy]  WITH CHECK ADD  CONSTRAINT [fk_IDSinhVien_TKK] FOREIGN KEY([IDSinhVien])
REFERENCES [dbo].[SinhVien] ([IDSinhVien])
GO
ALTER TABLE [dbo].[TongKetKy] CHECK CONSTRAINT [fk_IDSinhVien_TKK]
GO

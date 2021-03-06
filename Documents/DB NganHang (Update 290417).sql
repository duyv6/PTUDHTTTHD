USE [master]
GO
/****** Object:  Database [NganHang]    Script Date: 29/4/2017 12:12:49 PM ******/
CREATE DATABASE [NganHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NganHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\NganHang.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NganHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\NganHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NganHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NganHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NganHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NganHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NganHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NganHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NganHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [NganHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NganHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NganHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NganHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NganHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NganHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NganHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NganHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NganHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NganHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NganHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NganHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NganHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NganHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NganHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NganHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NganHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NganHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NganHang] SET  MULTI_USER 
GO
ALTER DATABASE [NganHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NganHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NganHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NganHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NganHang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [NganHang]
GO
/****** Object:  Table [dbo].[ChiNhanhNganHang]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanhNganHang](
	[MaChiNhanhNganHang] [nchar](10) NOT NULL,
	[TenChiNhanh] [nchar](25) NULL,
	[DiaChi] [nchar](20) NULL,
	[SDT] [nchar](10) NULL,
	[TruSoNganHang] [nchar](10) NULL,
 CONSTRAINT [PK_ChiNhanhNganHang] PRIMARY KEY CLUSTERED 
(
	[MaChiNhanhNganHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[MaThe] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NULL,
	[MatKhau] [nchar](10) NULL,
	[MaxTienTinDung] [int] NULL,
	[NgayHetHan] [date] NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard_history]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard_history](
	[MaGiaoDich_CreditCard] [nchar](10) NOT NULL,
	[MaTheCreditCard] [nchar](10) NULL,
	[SoTien] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_CreditCard_history] PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich_CreditCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DebitCard]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebitCard](
	[MaThe] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NULL,
	[MatKhau] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_DebitCard] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DebitCard_history]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebitCard_history](
	[MaGiaoDich_DebitCard] [nchar](10) NOT NULL,
	[MaTheDebitCard] [nchar](10) NULL,
	[SoTien] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_DebitCard_history] PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich_DebitCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[HoTen] [nchar](20) NULL,
	[SDT] [nchar](10) NULL,
	[Email] [nchar](10) NULL,
	[DiaChi] [nchar](20) NULL,
	[NgaySinh] [date] NULL,
	[CMND] [int] NULL,
	[GioiTinh] [nchar](10) NULL,
	[SoDu] [int] NULL,
	[ChiNhanhMoTaiKhoan] [nchar](10) NULL,
	[TaiKhoanDangNhap] [nchar](16) NULL,
	[MatKhau] [nchar](16) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichSuGiaoDich]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuGiaoDich](
	[ID] [nchar](10) NOT NULL,
	[MaGiaoDich] [nchar](10) NULL,
	[LoaiGiaoDich] [nchar](10) NULL,
	[ThoiGian] [datetime] NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_LichSuGiaoDich] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiGiaoDich]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGiaoDich](
	[MaLoaiGiaoDich] [nchar](10) NOT NULL,
	[TenLoaiGiaoDich] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiGiaoDich] PRIMARY KEY CLUSTERED 
(
	[MaLoaiGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLoai] [nchar](10) NOT NULL,
	[TenLoai] [nchar](25) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSoTietKiem]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSoTietKiem](
	[MaLoaiSoTietKiem] [nchar](10) NOT NULL,
	[TenLoaiSoTietKiem] [nchar](20) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiSoTietKiem] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSoTietKiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nchar](10) NOT NULL,
	[HoTen] [nchar](20) NULL,
	[DiaChi] [nchar](25) NULL,
	[CMND] [int] NULL,
	[GioiTinh] [nchar](10) NULL,
	[SDT] [int] NULL,
	[ThuocChiNhanh] [nchar](10) NULL,
	[TaiKhoan] [nchar](16) NULL,
	[MatKhau] [nchar](16) NULL,
	[LoaiNhanVien] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuChuyenTien]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChuyenTien](
	[MaPhieuChuyenTien] [nchar](10) NOT NULL,
	[NguoiChuyen] [nchar](10) NULL,
	[NguoiNhan] [nchar](10) NULL,
	[NgayChuyen] [date] NULL,
	[SoTienChuyen] [int] NULL,
	[ChiNhanhChuyen] [nchar](10) NULL,
	[NhanVienThucHien] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_PhieuChuyenTien] PRIMARY KEY CLUSTERED 
(
	[MaPhieuChuyenTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuGuiTien]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGuiTien](
	[MaPhieuGuiTien] [nchar](10) NOT NULL,
	[NguoiGui] [nchar](10) NULL,
	[SoTien] [int] NULL,
	[NgayGui] [nchar](10) NULL,
	[HinhThucGui] [nchar](10) NULL,
	[NhanVienThucHien] [nchar](10) NULL,
	[ChiNhanhThucHien] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_PhieuGuiTien] PRIMARY KEY CLUSTERED 
(
	[MaPhieuGuiTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNopTienVaoSoTietKiem]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNopTienVaoSoTietKiem](
	[MaPhieuNopTien] [nchar](10) NOT NULL,
	[MaSoTietKiem] [nchar](10) NULL,
	[SoTien] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[NhanVienThucHien] [nchar](10) NULL,
	[ChiNhanhThucHienGiaoDich] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_PhieuNopTienVaoSoTietKiem] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNopTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuRutTien]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuRutTien](
	[MaPhieuRutTien] [nchar](10) NOT NULL,
	[SoTien] [nchar](10) NULL,
	[NguoiRut] [nchar](10) NULL,
	[NgayRut] [nchar](10) NULL,
	[ChiNhanhThucHien] [nchar](10) NULL,
	[NhanVienThucHien] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_PhieuRutTien] PRIMARY KEY CLUSTERED 
(
	[MaPhieuRutTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SoTietKiem]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoTietKiem](
	[MaSoTietKiem] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NULL,
	[NgayMoSo] [date] NULL,
	[NgayHetHan] [date] NULL,
	[SoDu] [int] NULL,
	[LoaiSo] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_SoTietKiem] PRIMARY KEY CLUSTERED 
(
	[MaSoTietKiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThamSo]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamSo](
	[GiaTri] [nchar](10) NULL,
	[Kieu] [nchar](10) NULL,
	[MaThamSo] [nchar](10) NOT NULL,
	[TenThamSo] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_ThamSo] PRIMARY KEY CLUSTERED 
(
	[MaThamSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TruSoNganHang]    Script Date: 29/4/2017 12:12:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruSoNganHang](
	[MaTruSo] [nchar](10) NOT NULL,
	[TenTruSo] [nchar](25) NULL,
	[DiaChi] [nchar](20) NULL,
	[SDT] [nchar](10) NULL,
 CONSTRAINT [PK_TruSoNganHang] PRIMARY KEY CLUSTERED 
(
	[MaTruSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiNhanhNganHang] ([MaChiNhanhNganHang], [TenChiNhanh], [DiaChi], [SDT], [TruSoNganHang]) VALUES (N'CNNH01    ', N'Chi nhánh TP Hồ Chí Minh ', N'2/8 Kinh Dương Vương', N'0707107377', N'TSNH01    ')
INSERT [dbo].[ChiNhanhNganHang] ([MaChiNhanhNganHang], [TenChiNhanh], [DiaChi], [SDT], [TruSoNganHang]) VALUES (N'CNNH02    ', N'Chi nhánh TP Tân An      ', N'Phường 2            ', N'0707108377', N'TSNH01    ')
INSERT [dbo].[ChiNhanhNganHang] ([MaChiNhanhNganHang], [TenChiNhanh], [DiaChi], [SDT], [TruSoNganHang]) VALUES (N'CNNH03    ', N'Chi nhánh TP Huế         ', N'Q1                  ', N'0707107378', N'TSNH02    ')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [SDT], [Email], [DiaChi], [NgaySinh], [CMND], [GioiTinh], [SoDu], [ChiNhanhMoTaiKhoan], [TaiKhoanDangNhap], [MatKhau], [Status]) VALUES (N'KH01      ', N'Linh                ', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'CNNH01    ', N'linh            ', N'123             ', N'1         ')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [SDT], [Email], [DiaChi], [NgaySinh], [CMND], [GioiTinh], [SoDu], [ChiNhanhMoTaiKhoan], [TaiKhoanDangNhap], [MatKhau], [Status]) VALUES (N'KH02      ', N'Tri                 ', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'CNNH01    ', N'tri             ', N'123             ', N'1         ')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [SDT], [Email], [DiaChi], [NgaySinh], [CMND], [GioiTinh], [SoDu], [ChiNhanhMoTaiKhoan], [TaiKhoanDangNhap], [MatKhau], [Status]) VALUES (N'KH03      ', N'Vĩnh                ', NULL, NULL, NULL, NULL, NULL, NULL, 0, N'CNNH01    ', N'vinh            ', N'123             ', N'1         ')
INSERT [dbo].[LoaiNhanVien] ([MaLoai], [TenLoai], [Status]) VALUES (N'LNV01     ', N'Nhân viên thường         ', N'1         ')
INSERT [dbo].[LoaiNhanVien] ([MaLoai], [TenLoai], [Status]) VALUES (N'LNV02     ', N'Admin                    ', N'1         ')
INSERT [dbo].[LoaiSoTietKiem] ([MaLoaiSoTietKiem], [TenLoaiSoTietKiem], [Status]) VALUES (N'LSTK01    ', N'Sổ có thời hạn      ', N'1         ')
INSERT [dbo].[LoaiSoTietKiem] ([MaLoaiSoTietKiem], [TenLoaiSoTietKiem], [Status]) VALUES (N'LSTK02    ', N'Sổ không thời hạn   ', N'1         ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [CMND], [GioiTinh], [SDT], [ThuocChiNhanh], [TaiKhoan], [MatKhau], [LoaiNhanVien], [Status]) VALUES (N'NV1       ', N'Nhơn Luật           ', N'Ấp 2                     ', 999999, N'Nam       ', 999999, N'CNNH01    ', N'nhonluat        ', N'123             ', N'LNV01     ', N'1         ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [CMND], [GioiTinh], [SDT], [ThuocChiNhanh], [TaiKhoan], [MatKhau], [LoaiNhanVien], [Status]) VALUES (N'NV2       ', N'Vũ Bảo Duy          ', N'Q12                      ', 888888, N'Nam       ', 888888, N'CNNH02    ', N'duy             ', N'123             ', N'LNV01     ', N'1         ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [CMND], [GioiTinh], [SDT], [ThuocChiNhanh], [TaiKhoan], [MatKhau], [LoaiNhanVien], [Status]) VALUES (N'NV3       ', N'Phương Trang        ', N'Lê Hồng Phong            ', 777777, N'Nữ        ', 777777, N'CNNH02    ', N'phuongtrang     ', N'123             ', N'LNV01     ', N'1         ')
INSERT [dbo].[SoTietKiem] ([MaSoTietKiem], [MaKH], [NgayMoSo], [NgayHetHan], [SoDu], [LoaiSo], [Status]) VALUES (N'STK1      ', N'KH02      ', CAST(N'2017-04-29' AS Date), CAST(N'2027-04-29' AS Date), 1000000, N'LSTK01    ', N'1         ')
INSERT [dbo].[TruSoNganHang] ([MaTruSo], [TenTruSo], [DiaChi], [SDT]) VALUES (N'TSNH01    ', N'Miền Nam                 ', N'Q1                  ', N'0909999999')
INSERT [dbo].[TruSoNganHang] ([MaTruSo], [TenTruSo], [DiaChi], [SDT]) VALUES (N'TSNH02    ', N'Miền Trung               ', N'Thành Phố Huế       ', N'0808888888')
INSERT [dbo].[TruSoNganHang] ([MaTruSo], [TenTruSo], [DiaChi], [SDT]) VALUES (N'TSNH03    ', N'Miền Bắc                 ', N'Thủ Đô Hà Nội       ', N'0707777777')
ALTER TABLE [dbo].[ChiNhanhNganHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiNhanhNganHang_TruSoNganHang] FOREIGN KEY([TruSoNganHang])
REFERENCES [dbo].[TruSoNganHang] ([MaTruSo])
GO
ALTER TABLE [dbo].[ChiNhanhNganHang] CHECK CONSTRAINT [FK_ChiNhanhNganHang_TruSoNganHang]
GO
ALTER TABLE [dbo].[CreditCard]  WITH CHECK ADD  CONSTRAINT [FK_CreditCard_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[CreditCard] CHECK CONSTRAINT [FK_CreditCard_KhachHang]
GO
ALTER TABLE [dbo].[CreditCard_history]  WITH CHECK ADD  CONSTRAINT [FK_CreditCard_history_CreditCard] FOREIGN KEY([MaTheCreditCard])
REFERENCES [dbo].[CreditCard] ([MaThe])
GO
ALTER TABLE [dbo].[CreditCard_history] CHECK CONSTRAINT [FK_CreditCard_history_CreditCard]
GO
ALTER TABLE [dbo].[DebitCard]  WITH CHECK ADD  CONSTRAINT [FK_DebitCard_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DebitCard] CHECK CONSTRAINT [FK_DebitCard_KhachHang]
GO
ALTER TABLE [dbo].[DebitCard_history]  WITH CHECK ADD  CONSTRAINT [FK_DebitCard_history_DebitCard] FOREIGN KEY([MaTheDebitCard])
REFERENCES [dbo].[DebitCard] ([MaThe])
GO
ALTER TABLE [dbo].[DebitCard_history] CHECK CONSTRAINT [FK_DebitCard_history_DebitCard]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ChiNhanhNganHang] FOREIGN KEY([ChiNhanhMoTaiKhoan])
REFERENCES [dbo].[ChiNhanhNganHang] ([MaChiNhanhNganHang])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ChiNhanhNganHang]
GO
ALTER TABLE [dbo].[LichSuGiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_LichSuGiaoDich_LoaiGiaoDich] FOREIGN KEY([LoaiGiaoDich])
REFERENCES [dbo].[LoaiGiaoDich] ([MaLoaiGiaoDich])
GO
ALTER TABLE [dbo].[LichSuGiaoDich] CHECK CONSTRAINT [FK_LichSuGiaoDich_LoaiGiaoDich]
GO
ALTER TABLE [dbo].[LichSuGiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_LichSuGiaoDich_PhieuChuyenTien] FOREIGN KEY([MaGiaoDich])
REFERENCES [dbo].[PhieuChuyenTien] ([MaPhieuChuyenTien])
GO
ALTER TABLE [dbo].[LichSuGiaoDich] CHECK CONSTRAINT [FK_LichSuGiaoDich_PhieuChuyenTien]
GO
ALTER TABLE [dbo].[LichSuGiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_LichSuGiaoDich_PhieuGuiTien] FOREIGN KEY([MaGiaoDich])
REFERENCES [dbo].[PhieuGuiTien] ([MaPhieuGuiTien])
GO
ALTER TABLE [dbo].[LichSuGiaoDich] CHECK CONSTRAINT [FK_LichSuGiaoDich_PhieuGuiTien]
GO
ALTER TABLE [dbo].[LichSuGiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_LichSuGiaoDich_PhieuNopTienVaoSoTietKiem] FOREIGN KEY([MaGiaoDich])
REFERENCES [dbo].[PhieuNopTienVaoSoTietKiem] ([MaPhieuNopTien])
GO
ALTER TABLE [dbo].[LichSuGiaoDich] CHECK CONSTRAINT [FK_LichSuGiaoDich_PhieuNopTienVaoSoTietKiem]
GO
ALTER TABLE [dbo].[LichSuGiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_LichSuGiaoDich_PhieuRutTien] FOREIGN KEY([MaGiaoDich])
REFERENCES [dbo].[PhieuRutTien] ([MaPhieuRutTien])
GO
ALTER TABLE [dbo].[LichSuGiaoDich] CHECK CONSTRAINT [FK_LichSuGiaoDich_PhieuRutTien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChiNhanhNganHang] FOREIGN KEY([ThuocChiNhanh])
REFERENCES [dbo].[ChiNhanhNganHang] ([MaChiNhanhNganHang])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChiNhanhNganHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NhanVien] FOREIGN KEY([LoaiNhanVien])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoai])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NhanVien]
GO
ALTER TABLE [dbo].[PhieuChuyenTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChuyenTien_KhachHang] FOREIGN KEY([NguoiChuyen])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuChuyenTien] CHECK CONSTRAINT [FK_PhieuChuyenTien_KhachHang]
GO
ALTER TABLE [dbo].[PhieuChuyenTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChuyenTien_KhachHang1] FOREIGN KEY([NguoiNhan])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuChuyenTien] CHECK CONSTRAINT [FK_PhieuChuyenTien_KhachHang1]
GO
ALTER TABLE [dbo].[PhieuChuyenTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChuyenTien_NhanVien] FOREIGN KEY([NhanVienThucHien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuChuyenTien] CHECK CONSTRAINT [FK_PhieuChuyenTien_NhanVien]
GO
ALTER TABLE [dbo].[PhieuGuiTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGuiTien_KhachHang] FOREIGN KEY([NguoiGui])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuGuiTien] CHECK CONSTRAINT [FK_PhieuGuiTien_KhachHang]
GO
ALTER TABLE [dbo].[PhieuGuiTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGuiTien_NhanVien] FOREIGN KEY([NhanVienThucHien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuGuiTien] CHECK CONSTRAINT [FK_PhieuGuiTien_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNopTienVaoSoTietKiem]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNopTienVaoSoTietKiem_NhanVien] FOREIGN KEY([NhanVienThucHien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNopTienVaoSoTietKiem] CHECK CONSTRAINT [FK_PhieuNopTienVaoSoTietKiem_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNopTienVaoSoTietKiem]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNopTienVaoSoTietKiem_SoTietKiem] FOREIGN KEY([MaSoTietKiem])
REFERENCES [dbo].[SoTietKiem] ([MaSoTietKiem])
GO
ALTER TABLE [dbo].[PhieuNopTienVaoSoTietKiem] CHECK CONSTRAINT [FK_PhieuNopTienVaoSoTietKiem_SoTietKiem]
GO
ALTER TABLE [dbo].[PhieuRutTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuRutTien_KhachHang] FOREIGN KEY([NguoiRut])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuRutTien] CHECK CONSTRAINT [FK_PhieuRutTien_KhachHang]
GO
ALTER TABLE [dbo].[PhieuRutTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuRutTien_NhanVien] FOREIGN KEY([NhanVienThucHien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuRutTien] CHECK CONSTRAINT [FK_PhieuRutTien_NhanVien]
GO
ALTER TABLE [dbo].[SoTietKiem]  WITH CHECK ADD  CONSTRAINT [FK_SoTietKiem_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[SoTietKiem] CHECK CONSTRAINT [FK_SoTietKiem_KhachHang]
GO
ALTER TABLE [dbo].[SoTietKiem]  WITH CHECK ADD  CONSTRAINT [FK_SoTietKiem_LoaiSoTietKiem] FOREIGN KEY([LoaiSo])
REFERENCES [dbo].[LoaiSoTietKiem] ([MaLoaiSoTietKiem])
GO
ALTER TABLE [dbo].[SoTietKiem] CHECK CONSTRAINT [FK_SoTietKiem_LoaiSoTietKiem]
GO
USE [master]
GO
ALTER DATABASE [NganHang] SET  READ_WRITE 
GO

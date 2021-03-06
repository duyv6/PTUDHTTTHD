USE [master]
GO
/****** Object:  Database [NganHang]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[ATM]    Script Date: 17/4/2017 9:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATM](
	[MaThe] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NOT NULL,
	[MatKhau] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_ATM_1] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ATMsystems]    Script Date: 17/4/2017 9:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATMsystems](
	[MaATMsystems] [nchar](10) NOT NULL,
	[DiaChi] [nchar](10) NULL,
	[ChiNhanhQuanLy] [nchar](10) NULL,
	[SoTienHienCo] [int] NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_ATMsystems] PRIMARY KEY CLUSTERED 
(
	[MaATMsystems] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiNhanhNganHang]    Script Date: 17/4/2017 9:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanhNganHang](
	[MaChiNhanhNganHang] [nchar](10) NOT NULL,
	[TenChiNhanh] [nchar](10) NULL,
	[DiaChi] [nchar](20) NULL,
	[SDT] [nchar](10) NULL,
	[TruSoNganHang] [nchar](10) NULL,
 CONSTRAINT [PK_ChiNhanhNganHang] PRIMARY KEY CLUSTERED 
(
	[MaChiNhanhNganHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[CreditCard_history]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[DebitCard]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[DebitCard_history]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[GiaoDich_ATM]    Script Date: 17/4/2017 9:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDich_ATM](
	[MaGiaoDich] [nchar](10) NOT NULL,
	[MaTheChuyen] [nchar](10) NULL,
	[MaTheNhan] [nchar](10) NULL,
	[SoTien] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[MaATMsystems] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_GiaoDich_ATM] PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 17/4/2017 9:49:57 PM ******/
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
	[SoDu] [int] NULL,
	[ChiNhanhMoTaiKhoan] [nchar](10) NULL,
	[TaiKhoanDangNhap] [nchar](16) NULL,
	[MatKhau] [nchar](20) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 17/4/2017 9:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLoai] [nchar](10) NOT NULL,
	[TenLoai] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSoTietKiem]    Script Date: 17/4/2017 9:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSoTietKiem](
	[MaLoaiSoTietKiem] [nchar](10) NOT NULL,
	[TenLoaiSoTietKiem] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiSoTietKiem] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSoTietKiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 17/4/2017 9:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nchar](10) NOT NULL,
	[HoTen] [nchar](20) NULL,
	[DiaChi] [nchar](10) NULL,
	[CMND] [int] NULL,
	[GioiTinh] [nchar](10) NULL,
	[SDT] [int] NULL,
	[ThuocChiNhanh] [nchar](10) NULL,
	[TaiKhoan] [nchar](10) NULL,
	[MatKhau] [nchar](10) NULL,
	[LoaiNhanVien] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuChuyenTien]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[PhieuGuiTien]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[PhieuNopTienVaoSoTietKiem]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[PhieuRutTien]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[SoTietKiem]    Script Date: 17/4/2017 9:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoTietKiem](
	[MaSoTietKiem] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NULL,
	[NgayMoSo] [date] NULL,
	[NgayHetHan] [nchar](10) NULL,
	[SoDu] [int] NULL,
	[LoaiSo] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_SoTietKiem] PRIMARY KEY CLUSTERED 
(
	[MaSoTietKiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThamSo]    Script Date: 17/4/2017 9:49:57 PM ******/
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
/****** Object:  Table [dbo].[TruSoNganHang]    Script Date: 17/4/2017 9:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruSoNganHang](
	[MaTruSo] [nchar](10) NOT NULL,
	[TenTruSo] [nchar](10) NULL,
	[DiaChi] [nchar](10) NULL,
	[SDT] [nchar](10) NULL,
 CONSTRAINT [PK_TruSoNganHang] PRIMARY KEY CLUSTERED 
(
	[MaTruSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ATM]  WITH CHECK ADD  CONSTRAINT [FK_ATM_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ATM] CHECK CONSTRAINT [FK_ATM_KhachHang]
GO
ALTER TABLE [dbo].[ATMsystems]  WITH CHECK ADD  CONSTRAINT [FK_ATMsystems_ChiNhanhNganHang] FOREIGN KEY([ChiNhanhQuanLy])
REFERENCES [dbo].[ChiNhanhNganHang] ([MaChiNhanhNganHang])
GO
ALTER TABLE [dbo].[ATMsystems] CHECK CONSTRAINT [FK_ATMsystems_ChiNhanhNganHang]
GO
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
ALTER TABLE [dbo].[GiaoDich_ATM]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_ATM_ATM] FOREIGN KEY([MaTheNhan])
REFERENCES [dbo].[ATM] ([MaThe])
GO
ALTER TABLE [dbo].[GiaoDich_ATM] CHECK CONSTRAINT [FK_GiaoDich_ATM_ATM]
GO
ALTER TABLE [dbo].[GiaoDich_ATM]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_ATM_ATMsystems] FOREIGN KEY([MaATMsystems])
REFERENCES [dbo].[ATMsystems] ([MaATMsystems])
GO
ALTER TABLE [dbo].[GiaoDich_ATM] CHECK CONSTRAINT [FK_GiaoDich_ATM_ATMsystems]
GO
ALTER TABLE [dbo].[GiaoDich_ATM]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_ATM_GiaoDich_ATM] FOREIGN KEY([MaTheChuyen])
REFERENCES [dbo].[ATM] ([MaThe])
GO
ALTER TABLE [dbo].[GiaoDich_ATM] CHECK CONSTRAINT [FK_GiaoDich_ATM_GiaoDich_ATM]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ChiNhanhNganHang] FOREIGN KEY([ChiNhanhMoTaiKhoan])
REFERENCES [dbo].[ChiNhanhNganHang] ([MaChiNhanhNganHang])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ChiNhanhNganHang]
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
ALTER TABLE [dbo].[PhieuChuyenTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChuyenTien_NhanVien] FOREIGN KEY([NguoiChuyen])
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
ALTER TABLE [dbo].[PhieuNopTienVaoSoTietKiem]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNopTienVaoSoTietKiem_SoTietKiem] FOREIGN KEY([NhanVienThucHien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNopTienVaoSoTietKiem] CHECK CONSTRAINT [FK_PhieuNopTienVaoSoTietKiem_SoTietKiem]
GO
ALTER TABLE [dbo].[PhieuNopTienVaoSoTietKiem]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNopTienVaoSoTietKiem_SoTietKiem1] FOREIGN KEY([MaSoTietKiem])
REFERENCES [dbo].[SoTietKiem] ([MaSoTietKiem])
GO
ALTER TABLE [dbo].[PhieuNopTienVaoSoTietKiem] CHECK CONSTRAINT [FK_PhieuNopTienVaoSoTietKiem_SoTietKiem1]
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

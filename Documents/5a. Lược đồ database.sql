USE [master]
GO

/****** Object:  Database [NganHang]    Script Date: 3/20/2017 3:33:31 PM ******/
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

ALTER DATABASE [NganHang] SET  READ_WRITE 
GO


USE [master]
GO
/****** Object:  Database [NganHang]    Script Date: 3/20/2017 3:32:50 PM ******/
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
/****** Object:  Table [dbo].[ChiNhanhNganHang]    Script Date: 3/20/2017 3:32:50 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/20/2017 3:32:50 PM ******/
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
/****** Object:  Table [dbo].[LoaiSoTietKiem]    Script Date: 3/20/2017 3:32:50 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/20/2017 3:32:50 PM ******/
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
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuChuyenTien]    Script Date: 3/20/2017 3:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChuyenTien](
	[MaPhieuChuyenTien] [nchar](10) NOT NULL,
	[NguoiChuyen] [nchar](10) NULL,
	[NguoiNhan] [nchar](10) NULL,
	[NgayChuyen] [date] NULL,
	[SoTienChuyen] [nchar](10) NULL,
	[ChiNhanhChuyen] [nchar](10) NULL,
	[NhanVienThucHien] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_PhieuChuyenTien] PRIMARY KEY CLUSTERED 
(
	[MaPhieuChuyenTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuGuiTien]    Script Date: 3/20/2017 3:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGuiTien](
	[MaPhieuGuiTien] [nchar](10) NOT NULL,
	[NguoiGui] [nchar](10) NULL,
	[SoTien] [nchar](10) NULL,
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
/****** Object:  Table [dbo].[PhieuRutTien]    Script Date: 3/20/2017 3:32:50 PM ******/
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
/****** Object:  Table [dbo].[SoTietKiem]    Script Date: 3/20/2017 3:32:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoTietKiem](
	[MaSoTietKiem] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NULL,
	[NgayMoSo] [date] NULL,
	[SoDu] [int] NULL,
	[LoaiSo] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_SoTietKiem] PRIMARY KEY CLUSTERED 
(
	[MaSoTietKiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TruSoNganHang]    Script Date: 3/20/2017 3:32:50 PM ******/
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
ALTER TABLE [dbo].[ChiNhanhNganHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiNhanhNganHang_TruSoNganHang] FOREIGN KEY([TruSoNganHang])
REFERENCES [dbo].[TruSoNganHang] ([MaTruSo])
GO
ALTER TABLE [dbo].[ChiNhanhNganHang] CHECK CONSTRAINT [FK_ChiNhanhNganHang_TruSoNganHang]
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
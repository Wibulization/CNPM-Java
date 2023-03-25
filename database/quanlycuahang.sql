-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2022 at 08:46 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlypizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `cthoadon`
--

DROP TABLE IF EXISTS `cthoadon`;
CREATE TABLE IF NOT EXISTS `cthoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  PRIMARY KEY (`MaHD`,`MaSP`),
  KEY `cthoadon_ibfk_1` (`MaHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ctphieunhap`
--

DROP TABLE IF EXISTS `ctphieunhap`;
CREATE TABLE IF NOT EXISTS `ctphieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  PRIMARY KEY (`MaPN`,`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `giamgia`
--

DROP TABLE IF EXISTS `giamgia`;
CREATE TABLE IF NOT EXISTS `giamgia` (
  `MaGiam` int(11) NOT NULL AUTO_INCREMENT,
  `TenGiamGia` text NOT NULL,
  `PhanTramGiam` int(11) NOT NULL,
  `DieuKien` int(11) NOT NULL,
  `NgayBD` date NOT NULL,
  `NgayKT` date NOT NULL,
  PRIMARY KEY (`MaGiam`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giamgia`
--

INSERT INTO `giamgia` (`MaGiam`, `TenGiamGia`, `PhanTramGiam`, `DieuKien`, `NgayBD`, `NgayKT`) VALUES
(1, 'Không giảm giá', 0, 0, '2020-01-01', '2042-12-31'),
(2, 'Giảm 20% đơn hàng từ 150.000đ', 20, 150000, '2021-04-22', '2021-05-13'),
(4, 'Giảm 10% đơn hàng từ 80.000đ', 10, 80000, '2021-03-26', '2021-05-31'),
(6, '30/04-01/05 giảm 30% đơn hàng từ 300.000đ', 30, 300000, '2021-04-20', '2021-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `MaHD` int(11) NOT NULL AUTO_INCREMENT,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int(11) NOT NULL,
  `GhiChu` text NOT NULL,
  PRIMARY KEY (`MaHD`),
  KEY `hoadon_ibfk_1` (`MaNV`),
  KEY `hoadon_ibfk_2` (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKH` int(11) NOT NULL AUTO_INCREMENT,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `TongChiTieu` int(11) NOT NULL DEFAULT '0',
  `TinhTrang` int(11) NOT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `Ho`, `Ten`, `GioiTinh`, `TongChiTieu`, `TinhTrang`) VALUES
(1, 'Nguyễn Văn', 'An', 'Nam', 1486400, 1),
(2, 'Trần Ngọc', 'Bình', 'Nữ', 1497300, 1),
(3, 'Lê Thị', 'Giải', 'Nữ', 1468800, 1),
(4, 'Hà Thanh', 'Thoát', 'Nam', 1013600, 1),
(7, 'Trịnh Thị', 'Yên', 'Nữ', 3219700, 1),
(8, 'Trương Đình', 'Vui', 'Nam', 1877000, 1),
(9, 'Lại Thị Ngọc', 'Miền', 'Nữ', 5743500, 1),
(10, 'Trần Quang', 'Cực', 'Nam', 3136800, 1),
(11, 'Nguyễn Ngọc', 'Lạc', 'Nam', 2260300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `MaLoai` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoai` text NOT NULL,
  PRIMARY KEY (`MaLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`) VALUES
(1, 'Vivo'),
(2, 'Samsung'),
(3, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `MaNCC` int(11) NOT NULL AUTO_INCREMENT,
  `TenNCC` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `DienThoai` text NOT NULL,
  PRIMARY KEY (`MaNCC`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `DienThoai`) VALUES
(1, 'Công Ty TNHH SAMSUNG', '273 An Dương Vương, phường 3, quận 5, TP.HCM', '0396527908'),
(2, 'Apple Inc.', '12/49/2 Võ Văn Kiệt, P. Cô Giang, Q1', '0902669733'),
(5, 'Công Ty TNHH Vivo Smartphone', '492 Xô Viết Nghệ Tĩnh, P.25, Q. Bình Thạnh', '0397682193');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `MaNV` int(11) NOT NULL AUTO_INCREMENT,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `ChucVu` varchar(255) NOT NULL,
  PRIMARY KEY (`MaNV`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `Ho`, `Ten`, `GioiTinh`, `ChucVu`) VALUES
(0, 'Admin', '', '', 'Admin'),
(1, 'Nguyễn Quang Phước', 'Phát', 'Nam', 'Quản Lý'),
(2, 'Trần Quang', 'Vinh', 'Nam', 'Quản Lý'),
(3, 'Mai Công', 'Đại', 'Nam', 'Quản Lý'),
(4, 'Nhữ Quốc Anh', 'Tài', 'Nam', 'Nhân Viên'),
(12, 'Trịnh Thu', 'Huyền', 'Nữ', 'Nhân Viên'),
(13, 'Nguyễn Ngọc Mai', 'Linh', 'Nữ', 'Nhân Viên'),
(14, 'Hà Văn', 'Hùng', 'Nam', 'Nhân Viên'),
(15, 'Lê Thị Thuý', 'Diễm', 'Nữ', 'Quản Lý');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
CREATE TABLE IF NOT EXISTS `phanquyen` (
  `Quyen` varchar(255) NOT NULL,
  `NhapHang` int(1) NOT NULL,
  `QLSanPham` int(1) NOT NULL,
  `QLNhanVien` int(1) NOT NULL,
  `QLKhachHang` int(1) NOT NULL,
  `ThongKe` int(1) NOT NULL,
  PRIMARY KEY (`Quyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`Quyen`, `NhapHang`, `QLSanPham`, `QLNhanVien`, `QLKhachHang`, `ThongKe`) VALUES
('Default', 0, 0, 0, 0, 0),
('Nhân viên', 0, 0, 0, 1, 0),
('Quản lý', 1, 0, 1, 1, 1),
('Quản trị', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
CREATE TABLE IF NOT EXISTS `phieunhap` (
  `MaPN` int(11) NOT NULL AUTO_INCREMENT,
  `MaNCC` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int(11) NOT NULL,
  PRIMARY KEY (`MaPN`),
  KEY `phieunhap_ibfk_1` (`MaNCC`),
  KEY `phieunhap_ibfk_2` (`MaNV`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `MaSP` int(11) NOT NULL AUTO_INCREMENT,
  `TenSP` varchar(255) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonViTinh` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `DonGia` int(11) NOT NULL,
  PRIMARY KEY (`MaSP`),
  KEY `sanpham_ibfk_1` (`MaLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COMMENT='Bang San Pham';

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaLoai`, `SoLuong`, `DonViTinh`, `HinhAnh`, `DonGia`) VALUES
(111, 'Pizza Hải Sản Pesto Xanh', 1, 31, 'Cái', 'pizza0.png', 169000),
(112, 'Pizza Hải Sản Nhiệt Đới', 1, 39, 'Cái', 'pizza1.png', 129000),
(113, 'Pizza Hải Sản Cocktail', 1, 34, 'Cái', 'pizza2.png', 119000),
(114, 'Pizza Tôm Cocktail', 1, 36, 'Cái', 'pizza3.png', 159000),
(115, 'Pizza Aloha', 1, 38, 'Cái', 'pizza4.png', 119000),
(116, 'Pizza Thịt Xông Khói', 1, 39, 'Cái', 'pizza5.png', 130000),
(117, 'Pizza Thịt Nguội', 1, 34, 'Cái', 'pizza6.png', 149000),
(118, 'Pizza Gà Nướng 3 Vị', 1, 35, 'Cái', 'pizza7.png', 129000),
(119, 'Pizza hải sản Pesto gấp đôi nhân', 1, 13, 'Cái', 'pizza8.jpg', 239000),
(120, 'Pizza gấp đôi nhân phủ cơn lốc hải sản', 1, 37, 'Cái', 'pizza9.jpg', 239000),
(121, 'Pizza gấp đôi nhân phủ hải sản xốt tiêu đen', 1, 41, 'Cái', 'pizza10.jpg', 229000),
(122, 'Pizza bò nướng tiêu đen', 1, 43, 'Cái', 'pizza11.jpg', 249000),
(123, 'Pizza cá ngừ thanh cua', 1, 33, 'Cái', 'pizza12.jpg', 269000),
(124, 'Pepsi lon 330ml', 2, 150, 'Lon', 'douong0.jpeg', 19000),
(125, 'Pepsi chai 1.5l', 2, 250, 'Chai', 'douong1.jpeg', 29000),
(126, '7Up lon 330ml', 2, 150, 'Lon', 'douong2.jpeg', 19000),
(127, '7Up chai 1.5l', 2, 110, 'Chai', 'douong3.jpeg', 29000),
(128, 'Pepsi no calories 330ml', 2, 180, 'Lon', 'douong4.jpg', 19000),
(129, 'Mirinda cam 330ml', 2, 100, 'Lon', 'douong5.jpg', 19000),
(130, 'Mirinda kem soda 330ml', 2, 80, 'Lon', 'douong6.jpg', 19000),
(131, 'Nước suối Aquafina', 2, 52, 'Chai', 'douong7.jpg', 10000),
(132, 'Trà sữa trà đen', 2, 6, 'Ly', 'douong8.jpg', 25000),
(135, 'Bột mì Meizan 500g', 3, 100, 'Gói', 'default.png', 10000),
(136, 'Men nở Mauripan 50g*5', 3, 200, 'Hộp', 'default.png', 23000),
(137, 'Dầu olive Olivoilà 250ml', 3, 80, 'Chai', 'default.png', 84500);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE IF NOT EXISTS `taikhoan` (
  `MaNV` int(11) NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `Quyen` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  PRIMARY KEY (`MaNV`),
  KEY `taikhoan_ibfk_2` (`Quyen`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaNV`, `TenDangNhap`, `MatKhau`, `Quyen`, `TrangThai`) VALUES
(0, 'admin', 'admin', 'Quản trị', 1),
(1, 'ql01', 'ql01', 'Quản lý', 1),
(2, 'ql02', 'ql02', 'Quản lý', 1),
(3, 'ql03', 'ql03', 'Quản lý', 1),
(4, 'nv01', 'nv01', 'Nhân viên', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD CONSTRAINT `cthoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD CONSTRAINT `ctphieunhap_ibfk_2` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loai` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taikhoan_ibfk_2` FOREIGN KEY (`Quyen`) REFERENCES `phanquyen` (`Quyen`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

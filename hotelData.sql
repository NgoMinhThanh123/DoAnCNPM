-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hoteldata
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chitiet_dskh_phieuthue`
--

DROP TABLE IF EXISTS `chitiet_dskh_phieuthue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiet_dskh_phieuthue` (
  `chiTiet_DSKH_PhieuThue_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CCCD` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loaiKhach_id` int NOT NULL,
  `maPhieuThuePhong` int NOT NULL,
  PRIMARY KEY (`chiTiet_DSKH_PhieuThue_ID`),
  KEY `loaiKhach_id` (`loaiKhach_id`),
  KEY `maPhieuThuePhong` (`maPhieuThuePhong`),
  CONSTRAINT `chitiet_dskh_phieuthue_ibfk_1` FOREIGN KEY (`loaiKhach_id`) REFERENCES `loaikhach` (`loaiKhachId`),
  CONSTRAINT `chitiet_dskh_phieuthue_ibfk_2` FOREIGN KEY (`maPhieuThuePhong`) REFERENCES `phieuthuephong` (`maPhieuThuePhong`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiet_dskh_phieuthue`
--

LOCK TABLES `chitiet_dskh_phieuthue` WRITE;
/*!40000 ALTER TABLE `chitiet_dskh_phieuthue` DISABLE KEYS */;
INSERT INTO `chitiet_dskh_phieuthue` VALUES (1,'Đoàn Gia Huy','666 Bình Tân A','072202002108',2,4),(2,'Ngô Minh Thành','666 Bình Tân A','072202002108',1,5),(3,'Đoàn Gia Huy','666 Bình Tân A','4136546165',1,6),(4,'Lê Quang Tới','666 Bình Tân A','072202002109',2,7);
/*!40000 ALTER TABLE `chitiet_dskh_phieuthue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiet_dskhachhang`
--

DROP TABLE IF EXISTS `chitiet_dskhachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiet_dskhachhang` (
  `machiTietDSKhachHang` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CCCD` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loaiKhach_id` int NOT NULL,
  `maPhieuDatPhong` int NOT NULL,
  PRIMARY KEY (`machiTietDSKhachHang`),
  KEY `loaiKhach_id` (`loaiKhach_id`),
  KEY `maPhieuDatPhong` (`maPhieuDatPhong`),
  CONSTRAINT `chitiet_dskhachhang_ibfk_1` FOREIGN KEY (`loaiKhach_id`) REFERENCES `loaikhach` (`loaiKhachId`),
  CONSTRAINT `chitiet_dskhachhang_ibfk_2` FOREIGN KEY (`maPhieuDatPhong`) REFERENCES `phieudatphong` (`maPhieuDatPhong`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiet_dskhachhang`
--

LOCK TABLES `chitiet_dskhachhang` WRITE;
/*!40000 ALTER TABLE `chitiet_dskhachhang` DISABLE KEYS */;
INSERT INTO `chitiet_dskhachhang` VALUES (1,'Báo Hiếu','Tân Bình','87545624',1,1),(2,'Thành','Nguyễn Kiệm','202556155',1,2),(3,'Huy','Bình Tân','777777',2,3),(4,'Đoàn Gia Huy','666 Bình Tân A','072202002108',2,4),(5,'Ngô Minh Thành','666 Bình Tân A','072202002108',1,5),(6,'Đoàn Gia Huy','666 Bình Tân A','4136546165',1,6),(7,'Lê Quang Tới','666 Bình Tân A','072202002109',2,7),(8,'Đoàn Gia Huy','Bình Tân','072202002108',1,8);
/*!40000 ALTER TABLE `chitiet_dskhachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinhanhphong`
--

DROP TABLE IF EXISTS `hinhanhphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinhanhphong` (
  `hinhAnhID` int NOT NULL AUTO_INCREMENT,
  `hinhAnh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaiPhong_id` int NOT NULL,
  PRIMARY KEY (`hinhAnhID`),
  KEY `loaiPhong_id` (`loaiPhong_id`),
  CONSTRAINT `hinhanhphong_ibfk_1` FOREIGN KEY (`loaiPhong_id`) REFERENCES `loaiphong` (`loaiPhongId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinhanhphong`
--

LOCK TABLES `hinhanhphong` WRITE;
/*!40000 ALTER TABLE `hinhanhphong` DISABLE KEYS */;
INSERT INTO `hinhanhphong` VALUES (1,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669642480/room-1_skeg8g.jpg',1),(2,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669642479/room-2_ieduxp.jpg',2),(3,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669642490/room-3_k5e12i.jpg',3),(4,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669645332/room1.1_esrtbt.jpg',1),(5,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669645333/room1.2_rmi0sj.jpg',1),(6,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669645332/room2.1_vdcvvm.jpg',2),(7,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669645330/room2.2_va9a7t.jpg',2),(8,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669645331/room3.1_dfqz2y.jpg',3),(9,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669645330/room3.3_itb040.jpg',3);
/*!40000 ALTER TABLE `hinhanhphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `maHoaDon` int NOT NULL AUTO_INCREMENT,
  `TongTien` float NOT NULL,
  `maPhieuThuePhong` int NOT NULL,
  PRIMARY KEY (`maHoaDon`),
  UNIQUE KEY `maPhieuThuePhong` (`maPhieuThuePhong`),
  CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`maPhieuThuePhong`) REFERENCES `phieuthuephong` (`maPhieuThuePhong`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (1,2500000,1),(2,2500000,2),(3,2500000,3),(4,52000000,6),(5,4500000,7);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon_thongtinphong`
--

DROP TABLE IF EXISTS `hoadon_thongtinphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon_thongtinphong` (
  `hoaDon_ThongTinPhong_id` int NOT NULL AUTO_INCREMENT,
  `maHoaDon` int NOT NULL,
  `maPhong` int NOT NULL,
  PRIMARY KEY (`hoaDon_ThongTinPhong_id`),
  KEY `maHoaDon` (`maHoaDon`),
  KEY `maPhong` (`maPhong`),
  CONSTRAINT `hoadon_thongtinphong_ibfk_1` FOREIGN KEY (`maHoaDon`) REFERENCES `hoadon` (`maHoaDon`),
  CONSTRAINT `hoadon_thongtinphong_ibfk_2` FOREIGN KEY (`maPhong`) REFERENCES `thongtinphong` (`maPhong`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon_thongtinphong`
--

LOCK TABLES `hoadon_thongtinphong` WRITE;
/*!40000 ALTER TABLE `hoadon_thongtinphong` DISABLE KEYS */;
INSERT INTO `hoadon_thongtinphong` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `hoadon_thongtinphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MaKhachHang` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CCCD` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Minh Thành','371 Nguyễn Kiệm','01234536','1456789'),(2,'Kim Tài','483 Nguyễn Kiệm','01233456','14567895653'),(3,'Đức Hiếu','456 Nguyễn Kiệm','01232456','14567898132'),(4,'Quang Tới','459 Nguyễn Kiệm','01523456','1456789568'),(5,'Đoàn Gia Huy','666 Bình Tân A','0349452398','4136546165'),(6,'Đoàn Gia Huy','666 Bình Tân A','0349452398','072202002108'),(7,'Đoàn Gia Huy','666 Bình Tân A','0349452398','072202002108');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaikhach`
--

DROP TABLE IF EXISTS `loaikhach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaikhach` (
  `loaiKhachId` int NOT NULL AUTO_INCREMENT,
  `loaiKhach` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`loaiKhachId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaikhach`
--

LOCK TABLES `loaikhach` WRITE;
/*!40000 ALTER TABLE `loaikhach` DISABLE KEYS */;
INSERT INTO `loaikhach` VALUES (1,'Nội địa'),(2,'Nước ngoài');
/*!40000 ALTER TABLE `loaikhach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaiphong`
--

DROP TABLE IF EXISTS `loaiphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaiphong` (
  `loaiPhongId` int NOT NULL AUTO_INCREMENT,
  `loaiPhong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moTa` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kichThuoc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soGiuong` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donGia` float NOT NULL,
  `hinhAnhChinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`loaiPhongId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaiphong`
--

LOCK TABLES `loaiphong` WRITE;
/*!40000 ALTER TABLE `loaiphong` DISABLE KEYS */;
INSERT INTO `loaiphong` VALUES (1,'Standard Single','Phòng tiêu chuẩn, đơn giản với mức giá trung bình','30','2 giường đơn',3.5,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669642480/room-1_skeg8g.jpg'),(2,'Standard Double','Phòng tiêu chuẩn, đơn giản với mức giá trung bình','35','1 giường đơn, 1 giường đôi',4,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669642479/room-2_ieduxp.jpg'),(3,'Prenium','Phòng ở cao cấp với đầy đủ các tiện nghi, nội thất sang trọng','45','2 giường đôi',5,'https://res.cloudinary.com/dgkrvmsli/image/upload/v1669642490/room-3_k5e12i.jpg');
/*!40000 ALTER TABLE `loaiphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `maNhanVien` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CCCD` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namSinh` date NOT NULL,
  `ngayVaoLam` date NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taiKhoan` int NOT NULL,
  PRIMARY KEY (`maNhanVien`),
  UNIQUE KEY `taiKhoan` (`taiKhoan`),
  CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`taiKhoan`) REFERENCES `taikhoan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'Kim Tài','123 Nguyễn Kiệm','01649552','072202123','2002-03-01','2020-10-10','kt@gmail.com',2),(2,'Nguyên Thụy','124 Nguyễn Kiệm','01674952','07220256123','2002-04-01','2021-10-20','nt@gmail.com',3),(3,'Đức Hiếu','125 Nguyễn Kiệm','01645952','07220212123','2002-05-01','2022-10-20','dt@gmail.com',4);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudatphong`
--

DROP TABLE IF EXISTS `phieudatphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudatphong` (
  `maPhieuDatPhong` int NOT NULL AUTO_INCREMENT,
  `ngayNhanPhong` date NOT NULL,
  `ngayTraPhong` date NOT NULL,
  `thanhTien` float NOT NULL,
  `loaiPhong_id` int NOT NULL,
  `maKhachHang` int NOT NULL,
  PRIMARY KEY (`maPhieuDatPhong`),
  KEY `loaiPhong_id` (`loaiPhong_id`),
  KEY `maKhachHang` (`maKhachHang`),
  CONSTRAINT `phieudatphong_ibfk_1` FOREIGN KEY (`loaiPhong_id`) REFERENCES `loaiphong` (`loaiPhongId`),
  CONSTRAINT `phieudatphong_ibfk_2` FOREIGN KEY (`maKhachHang`) REFERENCES `khachhang` (`MaKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatphong`
--

LOCK TABLES `phieudatphong` WRITE;
/*!40000 ALTER TABLE `phieudatphong` DISABLE KEYS */;
INSERT INTO `phieudatphong` VALUES (1,'2022-12-03','2022-12-05',3500000,1,1),(2,'2022-12-04','2022-12-06',4000000,2,2),(3,'2022-12-05','2022-12-07',5000000,3,3),(4,'2022-12-15','2022-12-16',4500000,1,1),(5,'2022-12-30','2022-12-31',4000000,2,1),(6,'2022-12-16','2022-12-29',52000000,2,5),(7,'2022-12-15','2022-12-16',4500000,1,6),(8,'2022-12-15','2022-12-16',3500000,1,1);
/*!40000 ALTER TABLE `phieudatphong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieuthuephong`
--

DROP TABLE IF EXISTS `phieuthuephong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieuthuephong` (
  `maPhieuThuePhong` int NOT NULL AUTO_INCREMENT,
  `ngayNhanPhong` datetime NOT NULL,
  `ngayTraPhong` datetime NOT NULL,
  `thanhTien` float NOT NULL,
  `loaiPhong_id` int NOT NULL,
  `maKhachHang` int NOT NULL,
  PRIMARY KEY (`maPhieuThuePhong`),
  KEY `loaiPhong_id` (`loaiPhong_id`),
  KEY `maKhachHang` (`maKhachHang`),
  CONSTRAINT `phieuthuephong_ibfk_1` FOREIGN KEY (`loaiPhong_id`) REFERENCES `loaiphong` (`loaiPhongId`),
  CONSTRAINT `phieuthuephong_ibfk_2` FOREIGN KEY (`maKhachHang`) REFERENCES `khachhang` (`MaKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieuthuephong`
--

LOCK TABLES `phieuthuephong` WRITE;
/*!40000 ALTER TABLE `phieuthuephong` DISABLE KEYS */;
INSERT INTO `phieuthuephong` VALUES (1,'2022-12-03 00:00:00','2022-12-05 00:00:00',3500000,1,1),(2,'2022-12-04 00:00:00','2022-12-06 00:00:00',3500000,1,1),(3,'2022-12-05 00:00:00','2022-12-07 00:00:00',3500000,1,1),(4,'2022-12-15 00:00:00','2022-12-16 00:00:00',4500000,1,2),(5,'2022-12-30 00:00:00','2022-12-31 00:00:00',4000000,2,1),(6,'2022-12-16 00:00:00','2022-12-29 00:00:00',52000000,2,5),(7,'2022-12-15 00:00:00','2022-12-16 00:00:00',4500000,1,6);
/*!40000 ALTER TABLE `phieuthuephong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `user_role` enum('USER','ADMIN','EMPLOYEE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (1,'Đoàn Gia Huy','huy','e10adc3949ba59abbe56e057f20f883e','0123456789','https://res.cloudinary.com/dxxwcby8l/image/upload/v1646729569/fi9v6vdljyfmiltegh7k.jpg',1,'ADMIN'),(2,'Nguyên Thụy','thuy','e10adc3949ba59abbe56e057f20f883e','0123456789','https://res.cloudinary.com/dxxwcby8l/image/upload/v1646729569/fi9v6vdljyfmiltegh7k.jpg',1,'EMPLOYEE'),(3,'Đức Hiếu','hieu','e10adc3949ba59abbe56e057f20f883e','0123456789','https://res.cloudinary.com/dxxwcby8l/image/upload/v1646729569/fi9v6vdljyfmiltegh7k.jpg',1,'EMPLOYEE'),(4,'Minh Thành','thanh','e10adc3949ba59abbe56e057f20f883e','0123456789','https://res.cloudinary.com/dxxwcby8l/image/upload/v1646729569/fi9v6vdljyfmiltegh7k.jpg',1,'USER'),(5,'Kim Tài','tai','e10adc3949ba59abbe56e057f20f883e','0123456789','https://res.cloudinary.com/dxxwcby8l/image/upload/v1646729569/fi9v6vdljyfmiltegh7k.jpg',1,'USER'),(6,'Trần Đức Hiếu','hieu1','e10adc3949ba59abbe56e057f20f883e','0123456789','https://res.cloudinary.com/dxxwcby8l/image/upload/v1646729569/fi9v6vdljyfmiltegh7k.jpg',1,'USER'),(7,'Quang Tới','toi','e10adc3949ba59abbe56e057f20f883e','0123456789','https://res.cloudinary.com/dxxwcby8l/image/upload/v1646729569/fi9v6vdljyfmiltegh7k.jpg',1,'USER'),(8,'Đoàn Gia Huy','huy03','202cb962ac59075b964b07152d234b70','0349452398','https://res.cloudinary.com/dxxwcby8l/image/upload/v1670996509/oxicrqpidj3ye3vy1huj.png',1,'USER'),(9,'Đoàn Gia Huy','giahuy','202cb962ac59075b964b07152d234b70','0349452398','https://res.cloudinary.com/dxxwcby8l/image/upload/v1671021347/egwmdnvxdyublcivchkj.png',1,'USER');
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan_khachhang`
--

DROP TABLE IF EXISTS `taikhoan_khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan_khachhang` (
  `TKKH_id` int NOT NULL AUTO_INCREMENT,
  `KhachHang_id` int NOT NULL,
  `taiKhoan_id` int NOT NULL,
  PRIMARY KEY (`TKKH_id`),
  KEY `KhachHang_id` (`KhachHang_id`),
  KEY `taiKhoan_id` (`taiKhoan_id`),
  CONSTRAINT `taikhoan_khachhang_ibfk_1` FOREIGN KEY (`KhachHang_id`) REFERENCES `khachhang` (`MaKhachHang`),
  CONSTRAINT `taikhoan_khachhang_ibfk_2` FOREIGN KEY (`taiKhoan_id`) REFERENCES `taikhoan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan_khachhang`
--

LOCK TABLES `taikhoan_khachhang` WRITE;
/*!40000 ALTER TABLE `taikhoan_khachhang` DISABLE KEYS */;
INSERT INTO `taikhoan_khachhang` VALUES (1,1,4),(2,2,5),(3,3,6),(4,4,7),(5,6,8),(6,7,9);
/*!40000 ALTER TABLE `taikhoan_khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtinphong`
--

DROP TABLE IF EXISTS `thongtinphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongtinphong` (
  `maPhong` int NOT NULL AUTO_INCREMENT,
  `soPhong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhTrang` tinyint(1) NOT NULL,
  `loaiPhong_id` int NOT NULL,
  PRIMARY KEY (`maPhong`),
  KEY `loaiPhong_id` (`loaiPhong_id`),
  CONSTRAINT `thongtinphong_ibfk_1` FOREIGN KEY (`loaiPhong_id`) REFERENCES `loaiphong` (`loaiPhongId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtinphong`
--

LOCK TABLES `thongtinphong` WRITE;
/*!40000 ALTER TABLE `thongtinphong` DISABLE KEYS */;
INSERT INTO `thongtinphong` VALUES (1,'001',1,1),(2,'002',1,1),(3,'003',1,1),(4,'101',1,2),(5,'102',1,2),(6,'103',1,2),(7,'201',1,3),(8,'202',1,3),(9,'203',1,3);
/*!40000 ALTER TABLE `thongtinphong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-22 22:16:11

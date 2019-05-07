-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 07, 2019 lúc 08:54 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hetrogiup`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemchuan`
--

CREATE TABLE `diemchuan` (
  `id_nganh` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `chi_tieu` int(11) NOT NULL,
  `diem` float NOT NULL,
  `khoi` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `diemchuan`
--

INSERT INTO `diemchuan` (`id_nganh`, `nam`, `chi_tieu`, `diem`, `khoi`) VALUES
(1, 2016, 350, 23.79, 'A00,B00,D07'),
(1, 2017, 350, 25.1, 'A00,B00,D07'),
(1, 2018, 320, 21.1, 'A00,B00,D07'),
(2, 2016, 380, 23.79, 'A00,B00,D07'),
(2, 2017, 380, 25, 'A00,B00,D07'),
(2, 2018, 400, 21.7, 'A00,B00,D07'),
(3, 2016, 380, 23.79, 'A00,B00,D07'),
(3, 2017, 380, 25, 'A00,B00,D07'),
(3, 2018, 400, 20, 'A00,B00,D07'),
(4, 2016, 380, 23.79, 'A00,B00,D07'),
(4, 2017, 380, 25, 'A00,B00,D07'),
(4, 2018, 400, 20, 'A00,B00,D07'),
(5, 2016, 380, 23.25, 'A00,B00,D07'),
(5, 2017, 380, 21.25, 'A00,B00,D07'),
(5, 2018, 400, 20, 'A00,B00,D07'),
(6, 2016, 400, 25.29, 'A00,A01'),
(6, 2017, 400, 27.25, 'A00,A01'),
(6, 2018, 400, 21, 'A00,A01'),
(7, 2016, 400, 25.29, 'A00,A01'),
(7, 2017, 400, 27.25, 'A00,A01'),
(7, 2018, 400, 23.9, 'A00,A01'),
(8, 2016, 420, 25.29, 'A00,A01'),
(8, 2017, 420, 26.25, 'A00,A01'),
(8, 2018, 400, 23, 'A00,A01'),
(9, 2016, 420, 22.41, 'A00,A01,D01'),
(9, 2017, 420, 23, 'A00,A01,D01'),
(9, 2018, 400, 20, 'A00,A01,D01'),
(10, 2016, 380, 22.41, 'A00,A01,D01'),
(10, 2017, 380, 23, 'A00,A01,D01'),
(10, 2018, 400, 20, 'A00,A01,D01'),
(11, 2016, 420, 23.19, 'A00,A01,D01'),
(11, 2017, 420, 24.25, 'A00,A01,D01'),
(11, 2018, 400, 20.7, 'A00,A01,D01'),
(12, 2016, 420, 23.19, 'A00,A01,D01'),
(12, 2017, 420, 23.75, 'A00,A01,D01'),
(12, 2018, 400, 20.5, 'A00,A01,D01'),
(13, 2016, 380, 26.46, 'A00,A01'),
(13, 2017, 380, 28.25, 'A00,A01'),
(13, 2018, 400, 25, 'A00,A01'),
(14, 2016, 380, 26.46, 'A00,A01'),
(14, 2017, 380, 28.25, 'A00,A01'),
(14, 2018, 400, 23.5, 'A00,A01'),
(15, 2016, 300, 22.59, 'A00,A01'),
(15, 2017, 300, 26.75, 'A00,A01'),
(15, 2018, 400, 23.1, 'A00,A01'),
(16, 2016, 300, 22.59, 'A00,A01'),
(16, 2017, 300, 26.75, 'A00,A01'),
(16, 2018, 400, 24, 'A00,A01'),
(17, 2016, 200, 24.1, 'A00,A01'),
(17, 2017, 200, 25.75, 'A00,A01'),
(17, 2018, 400, 22.3, 'A00,A01'),
(18, 2016, 320, 25.26, 'A00,A01'),
(18, 2017, 320, 27, 'A00,A01'),
(18, 2018, 320, 23.25, 'A00,A01'),
(19, 2016, 900, 24, 'A00,A01'),
(19, 2017, 900, 25.75, 'A00,A01'),
(19, 2018, 300, 22.22, 'A00,A01'),
(20, 2016, 200, 23, 'A00,A01'),
(20, 2017, 200, 24.75, 'A00,A01'),
(20, 2018, 200, 20, 'A00,A01'),
(21, 2016, 200, 23, 'A00,A01'),
(21, 2017, 200, 23.75, 'A00,A01'),
(21, 2018, 200, 20, 'A00,A01'),
(22, 2016, 500, 25, 'A00,A01'),
(22, 2017, 500, 26.25, 'A00,A01'),
(22, 2018, 500, 22, 'A00,A01'),
(23, 2016, 500, 26.5, 'A00,A01'),
(23, 2017, 500, 28.25, 'A00,A01'),
(23, 2018, 200, 24, 'A00,A01'),
(29, 2016, 180, 23.19, 'A00,A01'),
(29, 2017, 180, 24.5, 'A00,A01'),
(29, 2018, 730, 20, 'A00,A01'),
(30, 2016, 50, 23.25, 'A00,A01'),
(30, 2017, 50, 22.5, 'A00,A01'),
(30, 2018, 80, 20, 'A00,B00'),
(31, 2016, 160, 23.16, 'A00,A01'),
(31, 2017, 160, 23.25, 'A00,A01'),
(31, 2018, 350, 20, 'A00,B00'),
(33, 2016, 200, 22, 'A01,D00'),
(33, 2017, 200, 24.5, 'A01,D00'),
(33, 2018, 50, 21, 'A00,A01,D01'),
(52, 2016, 570, 25, 'A00,A01'),
(52, 2017, 240, 27.5, 'A00,A01'),
(52, 2018, 240, 24.26, 'A00,A01'),
(53, 2016, 410, 24, 'A00,A01'),
(53, 2017, 570, 26, 'A00,A01'),
(53, 2018, 570, 23, 'A00,A01'),
(54, 2016, 70, 23.5, 'A00,A01'),
(54, 2017, 410, 25, 'A00,A01'),
(54, 2018, 410, 22, 'A00,A01'),
(55, 2016, 70, 22.5, 'A00,A01'),
(55, 2017, 70, 25, 'A00,A01'),
(55, 2018, 70, 22, 'A00,A01'),
(56, 2016, 365, 24, 'A00,A01'),
(56, 2017, 365, 27, 'A00,A01'),
(56, 2018, 365, 24, 'A00,A01'),
(57, 2016, 450, 25.5, 'A00,A01'),
(57, 2017, 450, 28, 'A00,A01'),
(57, 2018, 450, 25.5, 'A00,A01'),
(58, 2016, 405, 22, 'A00,A01'),
(58, 2017, 405, 26, 'A00,A01'),
(58, 2018, 105, 23, 'A00,A01'),
(59, 2016, 400, 23.5, 'A00,A01'),
(59, 2017, 400, 27.5, 'A00,A01'),
(59, 2018, 115, 24.6, 'A00,A01'),
(60, 2016, 80, 22.8, 'A00,B00'),
(60, 2017, 80, 25.8, 'A00,B00'),
(60, 2018, 80, 22.8, 'A00,B00'),
(61, 2016, 200, 21, 'A00,B00'),
(61, 2017, 200, 25, 'A00,B00'),
(61, 2018, 200, 22.5, 'A00,B00'),
(62, 2016, 50, 23, 'A00,A01'),
(62, 2017, 50, 26, 'A00,A01'),
(62, 2018, 50, 23.2, 'A00,A01'),
(63, 2016, 160, 23, 'A00,A01'),
(63, 2017, 160, 25, 'A00,A01'),
(63, 2018, 160, 22.2, 'A00,A01'),
(64, 2016, 70, 22, 'A00,A01'),
(64, 2017, 70, 25, 'A00,A01'),
(64, 2018, 70, 22.25, 'A00,A01'),
(65, 2016, 160, 20, 'A00,A01'),
(65, 2017, 160, 26, 'A00,A01'),
(65, 2018, 160, 22.16, 'A00,A01'),
(66, 2016, 300, 20.65, 'A00,D00,A01'),
(66, 2017, 300, 24, 'A00,D00,A01'),
(66, 2018, 300, 21.5, 'A00,D00,A01'),
(67, 2016, 180, 20, 'A00,D00,A01'),
(67, 2017, 180, 24, 'A00,D00'),
(67, 2018, 180, 21, 'A00,D00,A01'),
(68, 2016, 60, 19.5, 'A01,D00'),
(68, 2017, 60, 22, 'A01,D00'),
(68, 2018, 60, 18.5, 'A01,D00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoangcach`
--

CREATE TABLE `khoangcach` (
  `diachi1` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `diachi2` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `khoangcach` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khoangcach`
--

INSERT INTO `khoangcach` (`diachi1`, `diachi2`, `khoangcach`) VALUES
('Bắc Giang', 'Hà Nội', 51),
('Bắc Giang', 'Hồ Chí Minh', 1819),
('Bắc Ninh', 'Hà Nội', 31),
('Bắc Ninh', 'Hồ Chí Minh', 1756),
('Nam Định', 'Hà Nội', 110),
('Nam Định', 'Hồ Chí Minh', 1660),
('Nghệ An', 'Hà Nội', 280),
('Nghệ An', 'Hồ Chí Minh', 1428),
('Ninh Bình', 'Hà Nội', 93),
('Ninh Bình', 'Hồ Chí Minh', 1626),
('Thái Bình', 'Hà Nội', 109),
('Thái Bình', 'Hồ Chí Minh', 1690),
('Thanh Hóa', 'Hà Nội', 153),
('Thanh Hóa', 'Hồ Chí Minh', 1566);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `id_nganh` int(11) NOT NULL,
  `id_truong` int(11) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(300) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `hedaotao` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `hocphi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nganh`
--

INSERT INTO `nganh` (`id_nganh`, `id_truong`, `ten`, `mota`, `hedaotao`, `hocphi`) VALUES
(1, 1, 'Kỹ thuật Sinh học', 'Công nghệ', 'Đại học', 8000000),
(2, 1, 'Kỹ thuật Thực Phẩm', 'Công nghệ', 'Đại học', 8000000),
(3, 1, 'Kỹ thuật Hóa Học', 'Công nghệ', 'Đại học', 8000000),
(4, 1, 'Hóa Học', 'Công nghệ', 'Đại học', 8000000),
(5, 1, 'Kỹ thuật in', 'Công nghệ', 'Đại học', 8000000),
(6, 1, 'Kỹ thuật Điện', 'Công nghệ', 'Đại học', 8000000),
(7, 1, 'Kỹ thuật Điều khiển-Tự động hóa', 'Công nghệ', 'Đại học', 8000000),
(8, 1, 'Chương trình tiên tiến điều khiển- Tự động hóa và Hệ thống điện', 'Công nghệ', 'Đại học', 8000000),
(9, 1, 'Kinh tế công nghiệp', 'Kinh tế', 'Cử nhân', 8000000),
(10, 1, 'Quản lý công nghiệp', 'Kinh tế', 'Đại học', 8000000),
(11, 1, 'Quản trị kinh doanh', 'Kinh tế', 'Đại học', 8000000),
(12, 1, 'Kế toán', 'Kinh tế', 'Đại học', 8000000),
(13, 1, 'Khoa học máy tính', 'Công nghệ', 'Đại học', 9000000),
(14, 1, 'Kỹ thuật máy tính', 'Công nghệ', 'Đại học', 9000000),
(15, 1, 'Công nghệ thông tin- Việt Nhật', 'Công nghệ', 'Đại học', 8000000),
(16, 1, 'Công nghệ thông tin ICT', 'Công nghệ', 'Đại học', 8000000),
(17, 1, 'Toán-Tin', 'Công nghệ', 'Đại học', 8000000),
(18, 1, 'Cơ điện tử', 'Cơ khí', 'Đại học', 8000000),
(19, 1, 'Cơ khí-Động lực', 'Cơ khí', 'Đại học', 8000000),
(20, 1, 'Nhiệt lạnh ', 'Cơ khí', 'Đại học', 8000000),
(21, 1, 'Vật liệu', 'Cơ khí', 'Đại học', 8000000),
(22, 1, 'Điện tử-viễn thông', 'Công nghệ', 'Đại học', 8000000),
(23, 1, 'cộng nghệ thông tin', 'Công nghệ', 'Đại học', 8000000),
(29, 1, 'Dệt-may', 'Công nghệ', 'Đại học', 7000000),
(30, 1, 'Sư phạm kĩ thuật', 'Công nghệ', 'Đại học', 8000000),
(31, 1, 'Vật lý kĩ thuật-kỹ thuật hạnh nhân', 'Công nghệ', 'Đại học', 8000000),
(33, 1, 'Ngôn ngữ Anh', 'Ngoại ngữ', 'Đại học', 8000000),
(52, 2, 'Cơ điện tử', 'Cơ khí', 'Đại học', 8000000),
(53, 2, 'Cơ khí-Động lực', 'Cơ khí', 'Đại học', 8000000),
(54, 2, 'Nhiệt lạnh ', 'Cơ khí', 'Đại học', 8000000),
(55, 2, 'Vật liệu', 'Cơ khí', 'Đại học', 8000000),
(56, 2, 'Điện tử-viễn thông', 'Công nghệ', 'Đại học', 8000000),
(57, 2, 'cộng nghệ thông tin', 'Công nghệ', 'Đại học', 8000000),
(58, 2, 'toán tin', 'Công nghệ', 'Đại học', 8000000),
(59, 2, 'Điện-Điều khiển tự động hóa', 'Công nghệ', 'Đại học', 8000000),
(60, 2, 'kỹ thuật sinh học', 'Công nghệ', 'Đại học', 8000000),
(61, 2, 'hóa-sinh-thực phẩm-môi trường', 'Công nghệ', 'Đại học', 8000000),
(62, 2, 'Kỹ thuật in', 'Công nghệ', 'Đại học', 8000000),
(63, 2, 'Dệt-may', 'Công nghệ', 'Đại học', 8000000),
(64, 2, 'Sư phạm kĩ thuật', 'Công nghệ', 'Đại học', 8000000),
(65, 2, 'Vật lý kĩ thuậ-kỹ thuật hạnh nhân', 'Công nghệ', 'Đại học', 8000000),
(66, 2, 'Kinh tế- quản lý', 'Kinh tế', 'Đại học', 8000000),
(67, 2, 'Ngôn ngữ Anh', 'Ngoại ngữ', 'Đại học', 8000000),
(68, 2, 'Quản lý hệ thống công nghiệp', 'Kinh tế', 'Đại học', 8000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh_sothich`
--

CREATE TABLE `nganh_sothich` (
  `id_nganh` int(11) NOT NULL,
  `id_sothich` int(11) NOT NULL,
  `diem` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nganh_sothich`
--

INSERT INTO `nganh_sothich` (`id_nganh`, `id_sothich`, `diem`) VALUES
(1, 1, 10),
(1, 2, 6),
(1, 6, 4),
(2, 1, 10),
(2, 2, 6),
(2, 6, 4),
(3, 1, 10),
(3, 2, 6),
(3, 6, 4),
(4, 1, 10),
(4, 2, 4),
(4, 6, 4),
(5, 1, 10),
(5, 2, 6),
(5, 6, 5),
(6, 1, 10),
(6, 2, 6),
(6, 6, 10),
(7, 1, 10),
(7, 2, 6),
(7, 6, 10),
(8, 1, 10),
(8, 2, 5),
(8, 6, 10),
(9, 1, 4),
(9, 2, 10),
(9, 6, 3),
(10, 1, 4),
(10, 2, 10),
(10, 6, 3),
(11, 1, 4),
(11, 2, 10),
(11, 6, 3),
(12, 1, 4),
(12, 2, 10),
(12, 6, 3),
(13, 1, 10),
(13, 2, 5),
(13, 6, 8),
(14, 1, 10),
(14, 2, 5),
(14, 6, 8),
(15, 1, 10),
(15, 2, 4),
(15, 6, 8),
(16, 1, 10),
(16, 2, 4),
(16, 6, 8),
(17, 1, 10),
(17, 2, 4),
(17, 6, 8),
(18, 1, 10),
(18, 2, 3),
(18, 6, 10),
(19, 1, 8),
(19, 2, 3),
(19, 6, 10),
(20, 1, 8),
(20, 2, 3),
(20, 6, 10),
(21, 1, 8),
(21, 2, 3),
(21, 6, 10),
(23, 1, 10),
(23, 2, 3),
(23, 6, 10),
(29, 6, 3),
(30, 6, 3),
(31, 6, 10),
(33, 6, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `so_thich`
--

CREATE TABLE `so_thich` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `so_thich`
--

INSERT INTO `so_thich` (`id`, `name`) VALUES
(1, 'Công nghệ'),
(2, 'Kinh tế'),
(3, 'Xã hội'),
(4, 'Âm nhạc'),
(5, 'Ngoại ngữ'),
(6, 'Cơ khí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trongsodt`
--

CREATE TABLE `trongsodt` (
  `hedt1` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `hedt2` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `diem` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `trongsodt`
--

INSERT INTO `trongsodt` (`hedt1`, `hedt2`, `diem`) VALUES
('Cử nhân', 'Cử nhân', 10),
('Cử nhân', 'Đai học', 6),
('Cử nhân', 'Nghề', 3),
('Đại học', 'Cử nhân', 6),
('Đại học', 'Đại học', 10),
('Đại học', 'Nghề', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truong`
--

CREATE TABLE `truong` (
  `id_truong` int(11) NOT NULL,
  `ten` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `mota` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `truong`
--

INSERT INTO `truong` (`id_truong`, `ten`, `mota`, `diachi`) VALUES
(1, 'ĐẠI HỌC BÁCH KHOA HÀ NỘI', 'Công nghệ, Kinh tế, Ngoại Ngữ', 'Hà Nội'),
(2, 'ĐẠI HỌC BÁCH KHOA THÀNH PHỐ HỒ CHÍ MINH', 'Công nghệ,Kinh Tế, Ngoại Ngữ', 'Hồ Chí Minh'),
(3, 'ĐẠI HỌC CÔNG NGHỆ', 'Công nghệ', 'Hà Nội'),
(4, 'HỌC VIỆN CÔNG NGHỆ BƯU CHÍNH VIỄN THÔNG', 'Công nghệ,Kinh Tế, Ngoại Ngữ', 'Hà Nội');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `diemchuan`
--
ALTER TABLE `diemchuan`
  ADD PRIMARY KEY (`id_nganh`,`nam`);

--
-- Chỉ mục cho bảng `khoangcach`
--
ALTER TABLE `khoangcach`
  ADD PRIMARY KEY (`diachi1`,`diachi2`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`id_nganh`),
  ADD KEY `id_truong` (`id_truong`);

--
-- Chỉ mục cho bảng `nganh_sothich`
--
ALTER TABLE `nganh_sothich`
  ADD PRIMARY KEY (`id_nganh`,`id_sothich`),
  ADD KEY `id_sothich` (`id_sothich`);

--
-- Chỉ mục cho bảng `so_thich`
--
ALTER TABLE `so_thich`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trongsodt`
--
ALTER TABLE `trongsodt`
  ADD PRIMARY KEY (`hedt1`,`hedt2`);

--
-- Chỉ mục cho bảng `truong`
--
ALTER TABLE `truong`
  ADD PRIMARY KEY (`id_truong`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nganh`
--
ALTER TABLE `nganh`
  MODIFY `id_nganh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `so_thich`
--
ALTER TABLE `so_thich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `truong`
--
ALTER TABLE `truong`
  MODIFY `id_truong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diemchuan`
--
ALTER TABLE `diemchuan`
  ADD CONSTRAINT `diemchuan_ibfk_1` FOREIGN KEY (`id_nganh`) REFERENCES `nganh` (`id_nganh`);

--
-- Các ràng buộc cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD CONSTRAINT `nganh_ibfk_1` FOREIGN KEY (`id_truong`) REFERENCES `truong` (`id_truong`);

--
-- Các ràng buộc cho bảng `nganh_sothich`
--
ALTER TABLE `nganh_sothich`
  ADD CONSTRAINT `nganh_sothich_ibfk_1` FOREIGN KEY (`id_nganh`) REFERENCES `nganh` (`id_nganh`),
  ADD CONSTRAINT `nganh_sothich_ibfk_2` FOREIGN KEY (`id_sothich`) REFERENCES `so_thich` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

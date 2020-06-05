-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2020 lúc 12:10 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `comment` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_hd` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_hd`, `id_sp`, `soluong`) VALUES
(21, 16, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `diachi` text NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `ten`, `password`, `diachi`, `user_phone`, `user_email`, `updated_at`, `created_at`) VALUES
(14, 'Tuyeens Nguyen', '123456', 'Phu Yen', 982731, 'goodboyhay', '2020-05-21 07:59:12', '2020-05-21 07:59:12'),
(15, 'Tuyen', '123456', '1', 9234, 'tuyen@gmail.com', '2020-05-21 08:52:04', '2020-05-21 08:52:04'),
(16, '12', '123456', '3', 3, 'goodboyhay@gmail.com', '2020-05-21 08:52:29', '2020-05-21 08:52:29'),
(17, '1', '123456', '1', 1, 'goodboyhay@gmail.com', '2020-05-21 08:53:47', '2020-05-21 08:53:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang`
--

CREATE TABLE `hang` (
  `id` int(11) NOT NULL,
  `ma_hang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hang`
--

INSERT INTO `hang` (`id`, `ma_hang`) VALUES
(1, 'APPLE'),
(2, 'SAMSUNG'),
(3, 'OPPO'),
(4, 'XIAOMI'),
(5, 'BlackBerry');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `hd_user` int(11) NOT NULL,
  `hd_status` int(11) NOT NULL,
  `ship` int(11) NOT NULL,
  `hd_creatat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `hd_user`, `hd_status`, `ship`, `hd_creatat`) VALUES
(21, 14, 0, 0, '2020-05-21 08:02:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `id_quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `user_name`, `password`, `user_phone`, `user_email`, `diachi`, `id_quyen`) VALUES
(1, 'admin', '1', '123456', 'teo@gmail.com', 'TPHCM', 1),
(2, 'nhanvien', '1', '123456', 'teo@gmail.com', 'TPHCM', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pro_name` varchar(30) NOT NULL,
  `pro_mota` text NOT NULL,
  `anh` varchar(30) NOT NULL,
  `pro_hang` int(11) NOT NULL,
  `pro_gia` int(11) NOT NULL,
  `pro_coupo` int(11) NOT NULL,
  `soluongnhap` int(11) NOT NULL,
  `damua` int(11) NOT NULL,
  `manhinh` varchar(10) NOT NULL,
  `ram` varchar(10) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `camera` varchar(30) NOT NULL,
  `view` int(11) NOT NULL,
  `new` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `pro_name`, `pro_mota`, `anh`, `pro_hang`, `pro_gia`, `pro_coupo`, `soluongnhap`, `damua`, `manhinh`, `ram`, `pin`, `camera`, `view`, `new`, `updated_at`, `created_at`) VALUES
(7, 'Iphone', 'abc', 'iphone11.png', 1, 20000000, 19000000, 10, 4, '', '2', '', '', 59, 1, '2020-05-21 09:53:04', NULL),
(8, 'Iphone 11 Pro Max', '11 Pro Max', 'iphone11promax.png', 1, 15000000, 13000000, 20, 20, '', '', '', '', 34, 0, '2020-05-21 09:53:18', NULL),
(9, 'Iphone 8 Plus', 'Đây là Iphone 8 ', 'iphone8plus.png', 1, 10000000, 90000000, 10, 0, '', '', '', '', 0, 0, '2020-05-21 09:53:32', NULL),
(10, 'Iphone XS Max', '11 Pro Max', 'iphonexsmax.png', 1, 10000000, 1000, 20, 2, '', '', '', '', 0, 0, '2020-05-21 09:53:48', NULL),
(11, 'Xiaomi Mi9 SE', 'Đây là Mi ', 'mi9se.png', 4, 10000, 9000, 10, 3, '', '', '', '', 2, 1, '2020-05-20 22:08:52', NULL),
(12, 'Xiaomi Note 7', 'Mì xào note 7', 'minote7.png', 4, 9000, 1000, 20, 2, '', '', '', '', 0, 0, '2020-05-20 21:20:25', NULL),
(13, 'Xiaomi Note 8', 'Mi note 8', 'minote8.png', 4, 9000, 1000, 20, 2, '', '', '', '', 5, 0, '2020-05-20 21:20:25', NULL),
(14, 'Xiaomi Note 10', '11 Pro Max', 'minote10.png', 4, 9000, 1000, 20, 2, '', '', '', '', 0, 1, '2020-05-20 21:20:25', NULL),
(15, 'Oppo A1K', 'Đây là oppo ', 'oppoa1k.png', 3, 10000, 9000, 10, 0, '', '', '', '', 4, 0, '2020-05-20 21:20:25', NULL),
(16, 'Oppo A5S', 'Mì xào note 7', 'oppoa5s.png', 3, 9000, 1000, 20, 6, '', '', '', '', 0, 1, '2020-05-21 08:02:15', NULL),
(17, 'Oppo A91', 'Mi note 8', 'oppoa91.png', 3, 9000, 1000, 20, 2, '', '', '', '', 0, 0, '2020-05-20 21:20:25', NULL),
(18, 'Oppo FindX2', '11 Pro Max', 'oppofindx2.png', 3, 9000, 1000, 20, 2, '', '', '', '', 0, 0, '2020-05-20 21:20:25', NULL),
(19, 'Samsung A51', 'Đây là oppo ', 'samsunga51.png', 2, 10000, 9000, 10, 8, '', '', '', '', 100, 0, '2020-05-20 21:20:25', NULL),
(20, 'Samsung FOLD', 'Mì xào note 7', 'samsungfold.png', 2, 9000, 1000, 20, 3, '', '', '', '', 0, 1, '2020-05-20 22:08:52', NULL),
(21, 'Samsung S10 Lite', 'Mi note 8', 'samsungs10lite.png', 2, 9000, 1000, 20, 2, '', '', '', '', 20, 0, '2020-05-20 21:20:25', NULL),
(22, 'Samsung ZLIP', '11 Pro Max', 'samsungzlip.png', 2, 9000, 1000, 20, 2, '', '', '', '', 0, 0, '2020-05-20 21:20:25', NULL),
(23, 'Tuyến', 'Đây là Tuyến', 'giao 3.PNG', 1, 100000, 10000, 100, 0, '10', '4', '100', '3', 0, 1, '2020-05-20 21:21:07', '2020-05-20 21:21:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` int(11) NOT NULL,
  `tenquyen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `tenquyen`) VALUES
(1, 'admin'),
(2, 'nhanvien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `diachi` varchar(30) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp_2` (`id_sp`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `id_hd` (`id_hd`,`id_sp`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hang`
--
ALTER TABLE `hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hd_user` (`hd_user`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_nhanvien_chucvu` (`id_quyen`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_hang` (`pro_hang`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `hang`
--
ALTER TABLE `hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `quyen`
--
ALTER TABLE `quyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `customer` (`id`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`id_hd`) REFERENCES `hoadon` (`id`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

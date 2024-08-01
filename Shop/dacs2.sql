-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2021 lúc 02:03 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dacs2`
--

-- --------------------------------------------------------

--


--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `iddonhang` int(100) NOT NULL,
  `idsp` int(100) NOT NULL,
  `soluong` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `idsp`, `soluong`) VALUES
(4, 8, 4, 1),
(5, 9, 4, 1),
(6, 10, 4, 1),
(7, 11, 4, 1),
(8, 12, 4, 1),
(21, 22, 4, 1),
(22, 22, 3, 1),
(23, 23, 2, 1),
(24, 24, 16, 5),
(25, 25, 4, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Áo thun'),
(2, 'Áo sơ mi'),
(3, 'Áo khoác'),
(4, 'Váy'),
(5, 'Quần jeans');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(100) NOT NULL,
  `tongtien` int(100) NOT NULL,
  `trangthai` varchar(100) NOT NULL,
  `ngaymua` date NOT NULL,
  `diachi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `tongtien`, `trangthai`, `ngaymua`, `diachi`) VALUES
(5, 1, 580, 'Đã thanh toán', '2021-10-28', 'Quảng Trị'),
(6, 1, 580, 'Đã thanh toán', '2021-10-28', 'Hà Nội'),
(7, 1, 2040, 'Đã thanh toán', '2021-10-28', 'Đà Nẵng'),
(8, 1, 680, 'Đã thanh toán', '2021-11-01', 'Hồ Chí Minh'),
(9, 1, 680, 'Đã thanh toán', '2021-11-01', 'Huế'),
(10, 1, 680, 'Đã thanh toán', '2021-11-01', 'Cần Thơ'),
(11, 1, 680, 'Đã thanh toán', '2021-11-01', 'Nha Trang'),
(19, 2, 580, 'Đã thanh toán', '2021-11-02', 'Vinh'),
(20, 1, 1020, 'Chưa thanh toán', '2021-12-02', 'Hải Phòng'),
(21, 1, 680, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(22, 1, 1260, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(23, 1, 600, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(24, 1, 5750, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(25, 1, 2040, 'Đã thanh toán', '2021-12-02', 'Việt Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `giasp` int(100) NOT NULL,
  `mota` varchar(1000) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `soluong` int(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `mau` varchar(100) NOT NULL,
  `iddanhmuc` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensp`, `giasp`, `mota`, `hinhanh`, `soluong`, `size`, `mau`, `iddanhmuc`) VALUES
(18, 'Áo sơ mi Oxford Xanh', 380, '', 'img/ao-somi-3.jpg', 50, 'M', 'Xanh', 2),
(19, 'Áo thun Đen', 230, '', 'img/ao-thun-3.jpg', 100, 'L', 'Đen', 1),
(20, 'Váy Đầm Maxi Đỏ', 750, '', 'img/vay-3.jpg', 40, 'M', 'Đỏ', 4),
(21, 'Quần jeans Skinny', 520, '', 'img/quan-jeans-3.jpg', 60, 'S', 'Xanh', 5),
(22, 'Áo khoác Hoodie Xám', 650, '', 'img/ao-khoac-3.jpg', 30, 'L', 'Xám', 3),
(23, 'Váy Công Chúa Hồng', 800, '', 'img/vay-4.jpg', 35, 'S', 'Hồng', 4),
(24, 'Quần jeans Baggy', 450, '', 'img/quan-jeans-4.jpg', 55, 'M', 'Xanh nhạt', 5),
(25, 'Áo thun Polo', 250, '', 'img/ao-thun-4.jpg', 90, 'M', 'Xanh', 1),
(26, 'Áo sơ mi Cộc Tay', 390, '', 'img/ao-somi-4.jpg', 60, 'L', 'Trắng', 2),
(27, 'Áo khoác Dạ Đen', 700, '', 'img/ao-khoac-4.jpg', 20, 'XL', 'Đen', 3),
(28, 'Váy Công Sở Đen', 850, '', 'img/vay-5.jpg', 30, 'M', 'Đen', 4),
(29, 'Quần jeans Đen', 500, '', 'img/quan-jeans-5.jpg', 50, 'L', 'Đen', 5),
(30, 'Áo thun Croptop', 220, '', 'img/ao-thun-5.jpg', 80, 'S', 'Hồng', 1),
(31, 'Áo sơ mi Đen', 400, '', 'img/ao-somi-5.jpg', 45, 'M', 'Đen', 2),
(32, 'Áo khoác Dù', 680, '', 'img/ao-khoac-5.jpg', 25, 'L', 'Xanh', 3);


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sdt` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `hoten`, `username`, `password`, `diachi`, `sdt`) VALUES
(1, 'Admin', 'admin', 'admin', 'Việt Nam', 123),
(2, 'Lê Bá Anh Tài', 'tai', 'tai123', 'Triệu Phước - Triệu Phong - Quảng Trị', 13),
(4, 'Nguyễn hoa', 'hoa', '123', 'Hà Nội', 123),
(5, 'Nguyễn han', 'han', '123', 'Đà Nẵng', 133),
(6, 'Nguyễn nam', 'nam', 'nam123', 'Lưỡng kim- Quảng Trị', 123),
(10, 'hue', 'hue', '123', 'Lưỡng kim- Quảng Trị', 12345);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongke`
--

CREATE TABLE `thongke` (
  `id` int(11) NOT NULL,
  `tongtien` varchar(1000) NOT NULL,
  `thang` int(11) NOT NULL,
  `soluongsp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Đang đổ dữ liệu cho bảng `thongke`
--

INSERT INTO `thongke` (`tongtien`, `thang`, `soluongsp`) VALUES
('1000', 1, 14),
('1200', 2, 24),
('1400', 3, 13),
('1600', 4, 25),
('1800', 5, 32),
('2000', 6, 13),
('2200', 7, 24),
('2400', 8, 12),
('2600', 9, 25),
('2800', 10, 23),
('3000', 11, 34),
('3200', 12, 33);


--
-- Chỉ mục cho các bảng đã đổ
--

--


--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongke`
--
ALTER TABLE `thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--


--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `thongke`
--
ALTER TABLE `thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

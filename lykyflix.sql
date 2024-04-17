-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 13, 2024 lúc 03:15 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lykyflix`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billingdetails`
--

CREATE TABLE `billingdetails` (
  `id` int(11) NOT NULL,
  `agreementId` varchar(200) NOT NULL,
  `nextBillingDate` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `billingdetails`
--

INSERT INTO `billingdetails` (`id`, `agreementId`, `nextBillingDate`, `token`, `username`) VALUES
(2, 'I-XJMPMHMGPX66', '2024-05-07T10:00:00Z', 'EC-01C62375P7453092H', 'LyKy'),
(3, 'I-P1BWE3APXY9F', '2024-05-07T10:00:00Z', 'EC-9R706441D0467410K', 'Lkey'),
(4, 'I-L32AK13K31SL', '2024-05-07T10:00:00Z', 'EC-6X239114AR841532H', 'Lkey'),
(5, 'I-GU6SG9SA8967', '2024-05-08T10:00:00Z', 'EC-1S947817SR713211Y', 'LyKy'),
(6, 'I-7CGG6TP9DSL4', '2024-05-11T10:00:00Z', 'EC-37171234CH425844E', 'Danh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Anime'),
(2, 'Khoa Hoc Vien Tuong'),
(3, 'Kinh Di'),
(4, 'Vo Thuat'),
(5, 'Tam Ly');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `preview` varchar(250) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `entities`
--

INSERT INTO `entities` (`id`, `name`, `thumbnail`, `preview`, `categoryId`) VALUES
(1, 'One Piece', 'entities/thumbnails/HoatHinh/OnePice/onepice.jpg', 'entities/previews/HoatHinh/OnePice/Trailer.mp4', 1),
(2, 'Kong Dao Dau Lau', 'entities/thumbnails/KhoaHocVienTuong/KongDaoDauLau/kong.jpg', 'entities/previews/KhoaHocVienTuong/KongDaoDauLau/Trailer.mp4', 2),
(3, 'Bua Hinh Nhan', 'entities/thumbnails/KinhDi/BuaHinhNhan/hinhnhan.jpg', 'entities/previews/KinhDi/BuaHinhNhan/Trailer.mp4', 3),
(4, 'Long Ma', 'entities/thumbnails/VoThuat/LongMa/longma.jpg', 'entities/previews/VoThuat/LongMa/Trailer.mp4', 4),
(5, 'Nghich Ly', 'entities/thumbnails/TamLy/NghichLy/nghichly.jpg', 'entities/previews/TamLy/NghichLy/Trailer.mp4', 5),
(6, 'Nguyet Dao Di Gioi', 'entities/thumbnails/HoatHinh/NguyetDaoDiGioi/nguyetdao.jpg', 'entities/previews/HoatHinh/NguyetDaoDiGioi/Trailer.mp4', 1),
(7, 'Truong Phep Thuat', 'entities/thumbnails/HoatHinh/TruongPhepThuat/phepthuat.jpg', 'entities/previews/HoatHinh/TruongPhepThuat/Trailer.mp4', 1),
(8, 'Pacirim', 'entities/thumbnails/KhoaHocVienTuong/PaciRim/pacific.jpg', 'entities/previews/KhoaHocVienTuong/PaciRim/Trailer.mp4', 2),
(9, 'Ca Map', 'entities/thumbnails/KinhDi/CaMap/camap.jpg', 'entities/previews/KinhDi/CaMap/Trailer.mp4', 3),
(10, 'Tham Tham', 'entities/thumbnails/VoThuat/ThanTham/thantham.jpg', 'entities/previews/VoThuat/ThanTham/Trailer.mp4', 4),
(11, 'Vay Ham', 'entities/thumbnails/TamLy/VayHam/vayham.jpg', 'entities/previews/TamLy/VayHam/Trailer.mp4', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `isSubscribed` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `isSubscribed`) VALUES
(1, 'Ky', 'Lieu ly', 'LyKy', 'kybk9a6@gmail.com', '263fec58861449aacc1c328a4aff64aff4c62df4a2d50b3f207fa89b6e242c9aa778e7a8baeffef85b6ca6d2e7dc16ff0a760d59c13c238f6bcdc32f8ce9cc62', '2024-04-04 23:02:06', 1),
(2, 'Ky', 'Lyly', 'Lkey', 'lieulyky12@gmail.com', '263fec58861449aacc1c328a4aff64aff4c62df4a2d50b3f207fa89b6e242c9aa778e7a8baeffef85b6ca6d2e7dc16ff0a760d59c13c238f6bcdc32f8ce9cc62', '2024-04-07 23:50:59', 1),
(3, 'Danh', 'Ly', 'Danh', 'DAnh12@gmail.com', '263fec58861449aacc1c328a4aff64aff4c62df4a2d50b3f207fa89b6e242c9aa778e7a8baeffef85b6ca6d2e7dc16ff0a760d59c13c238f6bcdc32f8ce9cc62', '2024-04-08 00:13:55', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videoprogress`
--

CREATE TABLE `videoprogress` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `finished` tinyint(4) NOT NULL DEFAULT 0,
  `dateModified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `videoprogress`
--

INSERT INTO `videoprogress` (`id`, `username`, `videoId`, `progress`, `finished`, `dateModified`) VALUES
(1, 'Lkey', 1, 3, 1, '2024-04-05 23:46:41'),
(2, 'Lkey', 2, 0, 1, '2024-04-05 23:46:35'),
(3, 'LyKy', 3, 0, 1, '2024-04-12 00:05:34'),
(4, 'LyKy', 8, 0, 1, '2024-04-06 16:20:28'),
(5, 'LyKy', 11, 0, 1, '2024-04-07 22:57:39'),
(6, 'LyKy', 35, 0, 1, '2024-04-06 18:01:22'),
(7, 'LyKy', 40, 6, 0, '2024-04-06 18:07:09'),
(8, 'LyKy', 27, 0, 1, '2024-04-06 18:01:49'),
(9, 'LyKy', 33, 0, 1, '2024-04-06 18:24:07'),
(10, 'LyKy', 38, 0, 0, '2024-04-06 18:06:55'),
(11, 'LyKy', 1, 3, 1, '2024-04-07 23:07:26'),
(12, 'LyKy', 7, 0, 1, '2024-04-06 18:11:38'),
(13, 'LyKy', 25, 0, 1, '2024-04-06 18:13:52'),
(14, 'LyKy', 26, 0, 1, '2024-04-07 23:06:21'),
(15, 'LyKy', 36, 0, 1, '2024-04-06 18:16:53'),
(16, 'LyKy', 37, 0, 1, '2024-04-06 18:17:24'),
(17, 'LyKy', 34, 21, 0, '2024-04-06 18:24:33'),
(18, 'LyKy', 46, 0, 0, '2024-04-06 21:25:26'),
(19, 'LyKy', 63, 0, 1, '2024-04-06 23:26:04'),
(20, 'LyKy', 64, 0, 1, '2024-04-06 23:26:11'),
(21, 'LyKy', 65, 0, 0, '2024-04-06 23:26:15'),
(22, 'LyKy', 9, 6, 0, '2024-04-06 23:26:34'),
(23, 'LyKy', 12, 0, 0, '2024-04-07 22:57:42'),
(24, 'LyKy', 17, 0, 0, '2024-04-07 23:00:40'),
(25, 'LyKy', 16, 0, 0, '2024-04-07 23:00:48'),
(26, 'LyKy', 18, 0, 0, '2024-04-07 23:00:57'),
(27, 'LyKy', 15, 0, 0, '2024-04-07 23:01:05'),
(28, 'LyKy', 19, 0, 1, '2024-04-07 23:03:57'),
(29, 'LyKy', 20, 0, 1, '2024-04-07 23:04:22'),
(30, 'LyKy', 21, 0, 1, '2024-04-07 23:04:44'),
(31, 'LyKy', 22, 0, 1, '2024-04-07 23:05:33'),
(32, 'LyKy', 23, 0, 1, '2024-04-07 23:05:25'),
(33, 'LyKy', 24, 0, 1, '2024-04-07 23:05:57'),
(34, 'LyKy', 2, 9, 0, '2024-04-07 23:07:22'),
(35, 'LyKy', 55, 0, 0, '2024-04-07 23:07:49'),
(36, 'LyKy', 67, 0, 1, '2024-04-07 23:09:04'),
(37, 'LyKy', 68, 0, 1, '2024-04-07 23:09:29'),
(38, 'LyKy', 69, 0, 1, '2024-04-07 23:09:59'),
(39, 'LyKy', 70, 0, 1, '2024-04-07 23:10:25'),
(40, 'LyKy', 51, 0, 1, '2024-04-08 00:07:59'),
(41, 'Danh', 3, 0, 0, '2024-04-08 00:14:02'),
(42, 'Danh', 51, 0, 0, '2024-04-08 00:15:31'),
(43, 'Lkey', 19, 0, 0, '2024-04-08 00:16:20'),
(44, 'Lkey', 11, 0, 0, '2024-04-08 00:31:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `isMovie` tinyint(1) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `releaseDate` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(10) NOT NULL,
  `season` int(11) DEFAULT 0,
  `episode` int(11) DEFAULT 0,
  `entityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(1, 'Tap 1 - ONE PIECE RA KHOI', 'Anh lu khoi hanh\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 1.mp4', 1, '2024-04-05 22:50:36', '0000-00-00', 16, '', 1, 1, 1),
(2, 'Tap 2 - ONE PIECE HAP DAN', 'Anh lu khoi hanh\r\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 2.mp4', 1, '2024-04-05 23:45:01', '0000-00-00', 4, '', 1, 2, 1),
(3, 'Tap 3 - ONE PIECE RA KHOI', 'Anh Sanji khoi hanh\r\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 3.mp4', 0, '2024-04-05 23:47:58', '0000-00-00', 6, '', 1, 3, 1),
(4, 'Tap 4 - ONE PIECE RA KHOI NAO', 'Anh luffuy khoi hanh\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 4, 1),
(5, 'Tap 5 - ONE PIECE RA KHOI NAO', 'Anh Zoro khoi hanh\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 5.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 5, 1),
(6, 'Tap 6 - ONE PIECE RA KHOI NAO', 'Anh Chopper khoi hanh\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 6.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 6, 1),
(7, 'Tap 7 - ONE PIECE RA KHOI NAO', 'Anh Nami khoi hanh\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 7.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 7, 1),
(8, 'Tap 1 - ONE PIECE RA KHOI NAO', 'Anh Nami khoi hanh\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 8.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 3, '', 2, 1, 1),
(9, 'Tap 2 - ONE PIECE RA KHOI NAO', 'Anh Nami khoi hanh\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 9.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 1, '', 2, 2, 1),
(10, 'Tap 3 - ONE PIECE RA KHOI NAO', 'Anh Nami khoi hanh\nRa bien cung lu', 'entities/videos/HoatHinh/OnePice/Tap 10.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 2, 3, 1),
(11, 'Tap 1 - KONG DAO DAU LAU', 'Kong Dai Chien 1', 'entities/videos/KhoaHocVienTuong/KongDaoDauLau/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 7, '', 1, 1, 2),
(12, 'Tap 2 - KONG DAO DAU LAU', 'Kong Dai Chien 2', 'entities/videos/KhoaHocVienTuong/KongDaoDauLau/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 2, 2),
(13, 'Tap 3 - KONG DAO DAU LAU', 'Kong Dai Chien 3', 'entities/videos/KhoaHocVienTuong/KongDaoDauLau/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 3, 2),
(14, 'Tap 4 - KONG DAO DAU LAU', 'Kong Dai Chien 4', 'entities/videos/KhoaHocVienTuong/KongDaoDauLau/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 4, 2),
(15, 'Tap 5 - KONG DAO DAU LAU', 'Kong Dai Chien 5', 'entities/videos/KhoaHocVienTuong/KongDaoDauLau/Tap 5.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 2, 1, 2),
(16, 'Tap 6 - KONG DAO DAU LAU', 'Kong Dai Chien 6', 'entities/videos/KhoaHocVienTuong/KongDaoDauLau/Tap 6.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 4, '', 2, 2, 2),
(17, 'Tap 7 - KONG DAO DAU LAU', 'Kong Dai Chien 7', 'entities/videos/KhoaHocVienTuong/KongDaoDauLau/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 3, '', 2, 3, 2),
(18, 'Tap 8 - KONG DAO DAU LAU', 'Kong Dai Chien 8', 'entities/videos/KhoaHocVienTuong/KongDaoDauLau/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 3, '', 2, 4, 2),
(19, 'Tap 1 - BUA HINH NHAN', 'The loai kinh di', 'entities/videos/KinhDi/BuaHinhNhan/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 4, '', 1, 1, 3),
(20, 'Tap 2 - BUA HINH NHAN', 'The loai kinh di', 'entities/videos/KinhDi/BuaHinhNhan/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 2, 3),
(21, 'Tap 3 - BUA HINH NHAN', 'The loai kinh di', 'entities/videos/KinhDi/BuaHinhNhan/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 3, 3),
(22, 'Tap 4 - BUA HINH NHAN', 'The loai kinh di', 'entities/videos/KinhDi/BuaHinhNhan/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 3, '', 1, 4, 3),
(23, 'Tap 5 - BUA HINH NHAN', 'The loai kinh di', 'entities/videos/KinhDi/BuaHinhNhan/Tap 5.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 3, '', 1, 5, 3),
(24, 'Tap 6 - BUA HINH NHAN', 'The loai kinh di', 'entities/videos/KinhDi/BuaHinhNhan/Tap 6.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 6, 3),
(25, 'Tap 7 - BUA HINH NHAN', 'The loai kinh di', 'entities/videos/KinhDi/BuaHinhNhan/Tap 7.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 3, '', 2, 1, 3),
(26, 'Tap 8 - BUA HINH NHAN', 'The loai kinh di', 'entities/videos/KinhDi/BuaHinhNhan/Tap 8.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 3, '', 2, 2, 3),
(27, 'Tap 1 - NGHICH LY', 'The loai Tam Ly', 'entities/videos/TamLy/NghichLy/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 3, '', 1, 1, 5),
(28, 'Tap 2 - NGHICH LY', 'The loai Tam Ly', 'entities/videos/TamLy/NghichLy/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 2, 5),
(29, 'Tap 3 - NGHICH LY', 'The loai Tam Ly', 'entities/videos/TamLy/NghichLy/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 3, 5),
(30, 'Tap 4 - NGHICH LY', 'The loai Tam Ly', 'entities/videos/TamLy/NghichLy/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 4, 5),
(31, 'Tap 5 - NGHICH LY', 'The loai Tam Ly', 'entities/videos/TamLy/NghichLy/Tap 5.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 5, 5),
(32, 'Tap 6 - NGHICH LY', 'The loai Tam Ly', 'entities/videos/TamLy/NghichLy/Tap 6.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 6, 5),
(33, 'Tap 7 - NGHICH LY', 'The loai Tam Ly', 'entities/videos/TamLy/NghichLy/Tap 7.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 3, '', 2, 1, 5),
(34, 'Tap 8 - NGHICH LY', 'The loai Tam Ly', 'entities/videos/TamLy/NghichLy/Tap 8.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 1, '', 2, 2, 5),
(35, 'Tap 1 - LONG MA', 'The loai Vo Thuat', 'entities/videos/VoThuat/LongMa/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 7, '', 1, 1, 4),
(36, 'Tap 2 - LONG MA', 'The loai Vo Thuat', 'entities/videos/VoThuat/LongMa/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 2, 4),
(37, 'Tap 3 - LONG MA', 'The loai Vo Thuat', 'entities/videos/VoThuat/LongMa/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 3, 4),
(38, 'Tap 4 - LONG MA', 'The loai Vo Thuat', 'entities/videos/VoThuat/LongMa/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 1, '', 1, 4, 4),
(39, 'Tap 5 - LONG MA', 'The loai Vo Thuat', 'entities/videos/VoThuat/LongMa/Tap 5.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 5, 4),
(40, 'Tap 6 - LONG MA', 'The loai Vo Thuat', 'entities/videos/VoThuat/LongMa/Tap 6.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 2, 1, 4),
(41, 'Tap 7 - LONG MA', 'The loai Vo Thuat', 'entities/videos/VoThuat/LongMa/Tap 7.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 2, 2, 4),
(42, 'Tap 8 - LONG MA', 'The loai Vo Thuat', 'entities/videos/VoThuat/LongMa/Tap 8.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 2, 3, 4),
(43, 'Tap 1 - Nguyet Dao Di Gioi', 'Nguyet Dao Di Gioi Xuat Ban', 'entities/videos/HoatHinh/NguyetDaoDiGioi/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 5, '', 1, 1, 6),
(44, 'Tap 2 - Nguyet Dao Di Gioi', 'Nguyet Dao Di Gioi Xuat Ban', 'entities/videos/HoatHinh/NguyetDaoDiGioi/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 5, '', 1, 2, 6),
(45, 'Tap 3 - Nguyet Dao Di Gioi', 'Nguyet Dao Di Gioi Xuat Ban', 'entities/videos/HoatHinh/NguyetDaoDiGioi/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 5, '', 1, 3, 6),
(46, 'Tap 4 - Nguyet Dao Di Gioi', 'Nguyet Dao Di Gioi Xuat Ban', 'entities/videos/HoatHinh/NguyetDaoDiGioi/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 6, '', 1, 4, 6),
(47, 'Tap 5 - Nguyet Dao Di Gioi', 'Nguyet Dao Di Gioi Xuat Ban', 'entities/videos/HoatHinh/NguyetDaoDiGioi/Tap 5.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 5, '', 1, 5, 6),
(48, 'Tap 6 - Nguyet Dao Di Gioi', 'Nguyet Dao Di Gioi Xuat Ban', 'entities/videos/HoatHinh/NguyetDaoDiGioi/Tap 6.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 5, '', 2, 6, 6),
(49, 'Tap 7 - Nguyet Dao Di Gioi', 'Nguyet Dao Di Gioi Xuat Ban', 'entities/videos/HoatHinh/NguyetDaoDiGioi/Tap 7.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 5, '', 2, 7, 6),
(50, 'Tap 8 - Nguyet Dao Di Gioi', 'Nguyet Dao Di Gioi Xuat Ban', 'entities/videos/HoatHinh/NguyetDaoDiGioi/Tap 8.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 5, '', 2, 8, 6),
(51, 'Tap 1 - Truong Phep Thuat', 'Truong Phep Thuat Xuat Ban', 'entities/videos/HoatHinh/TruongPhepThuat/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 1, 7),
(52, 'Tap 2 - Truong Phep Thuat', 'Truong Phep Thuat Xuat Ban', 'entities/videos/HoatHinh/TruongPhepThuat/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 2, 7),
(53, 'Tap 3 - Truong Phep Thuat', 'Truong Phep Thuat Xuat Ban', 'entities/videos/HoatHinh/TruongPhepThuat/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 3, 7),
(54, 'Tap 4 - Truong Phep Thuat', 'Truong Phep Thuat Xuat Ban', 'entities/videos/HoatHinh/TruongPhepThuat/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 4, 7),
(55, 'Tap 1 - PaciRim', 'PaciRim Xuat Ban', 'entities/videos/KhoaHocVienTuong/PaciRim/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 1, '', 1, 1, 8),
(56, 'Tap 2 - PaciRim', 'PaciRim Ban', 'entities/videos/KhoaHocVienTuong/PaciRim/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 2, 8),
(57, 'Tap 3 - PaciRim', 'TPaciRim Ban', 'entities/videos/KhoaHocVienTuong/PaciRim/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 3, 8),
(58, 'Tap 4 - PaciRim', 'PaciRim Ban', 'entities/videos/KhoaHocVienTuong/PaciRim/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 4, 8),
(59, 'Tap 1 - Ca Map', 'CaMap Xaut Hien', 'entities/videos/KinhDi/CaMap/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 1, 9),
(60, 'Tap 2 - Ca Map', 'CaMap Xaut Hien', 'entities/videos/KinhDi/CaMap/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 2, 9),
(61, 'Tap 3 - Ca Map', 'CaMap Xaut Hien', 'entities/videos/KinhDi/CaMap/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 3, 9),
(62, 'Tap 4 - Ca Map', 'CaMap Xaut Hien', 'entities/videos/KinhDi/CaMap/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 4, 9),
(63, 'Tap 1 - Than Tham', 'ThanTham Xaut Hien', 'entities/videos/VoThuat/ThanTham/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 1, 10),
(64, 'Tap 2 - Than Tham', 'ThanTham Xaut Hien', 'entities/videos/VoThuat/ThanTham/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 2, 10),
(65, 'Tap 3 - Than Tham', 'ThanTham Xaut Hien', 'entities/videos/VoThuat/ThanTham/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 1, '', 1, 3, 10),
(66, 'Tap 4 - Than Tham', 'ThanTham Xaut Hien', 'entities/videos/VoThuat/ThanTham/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 0, '', 1, 4, 10),
(67, 'Tap 1 - Vay Ham', 'VayHam Xaut Hien', 'entities/videos/TamLy/VayHam/Tap 1.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 1, 11),
(68, 'Tap 2 - Vay Ham', 'VayHam Xaut Hien', 'entities/videos/TamLy/VayHam/Tap 2.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 2, 11),
(69, 'Tap 3 - Vay Ham', 'VayHam Xaut Hien', 'entities/videos/TamLy/VayHam/Tap 3.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 3, 11),
(70, 'Tap 4 - Vay Ham', 'VayHam Xaut Hien', 'entities/videos/TamLy/VayHam/Tap 4.mp4', 0, '2024-04-05 22:50:36', '0000-00-00', 2, '', 1, 4, 11);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `billingdetails`
--
ALTER TABLE `billingdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `videoprogress`
--
ALTER TABLE `videoprogress`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityId` (`entityId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `billingdetails`
--
ALTER TABLE `billingdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `videoprogress`
--
ALTER TABLE `videoprogress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `entities`
--
ALTER TABLE `entities`
  ADD CONSTRAINT `entities_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`entityId`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

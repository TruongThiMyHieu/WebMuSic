-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2018 at 05:45 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `baihat`
--

CREATE TABLE `baihat` (
  `id` varchar(250) NOT NULL,
  `TenBaiHat` text NOT NULL,
  `TenCaSi` text NOT NULL,
  `TacGia` text NOT NULL,
  `TheLoai` text NOT NULL,
  `DuongDan` text NOT NULL,
  `Loi` text NOT NULL,
  `LuotNghe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `baihat`
--

INSERT INTO `baihat` (`id`, `TenBaiHat`, `TenCaSi`, `TacGia`, `TheLoai`, `DuongDan`, `Loi`, `LuotNghe`) VALUES
('bh01', 'Người Ta Nói Đúng', 'Lương Bích Hữu', 'Nguyễn Văn Chung', 'Việt Nam', 'music/Nguoi Ta Noi Dung.mp3', '', 1),
('bh02', 'Nếu Có Buông Tay', 'Mỹ Tâm', '', 'Việt Nam', 'music/Neu Co Buong Tay.mp3', '', 2),
('bh03', 'Ta Còn Yêu Nhau', 'Đức Phúc', '', 'Việt Nam', 'music/Ta Con Yeu Nhau.mp3', '', 4),
('bh04', 'Thương Anh', 'Thiều Bảo Trâm', '', 'Việt Nam', 'music/Thuong Anh.mp3', '', 111),
('bh05', 'Look What You Made Me Do', 'Taylor Swift', '', 'Âu Mỹ', 'music/Look What You Made Me Do.mp3', '', 88),
('bh06', 'ừ Là Khoảng Cách', 'Kaisoul', '', 'Rap', 'music/U La Khoang Cach.mp3', '', 12),
('bh07', 'Tiếng Đàn Ta Lư', 'Anh Thơ', '', 'Nhạc Cách Mạng', 'music/Tieng Dan Ta Lu.mp3', '', 30);

-- --------------------------------------------------------

--
-- Table structure for table `casi`
--

CREATE TABLE `casi` (
  `id` varchar(250) NOT NULL,
  `TenCaSi` text NOT NULL,
  `NgaySinh` date NOT NULL,
  `QueQuan` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `casi`
--

INSERT INTO `casi` (`id`, `TenCaSi`, `NgaySinh`, `QueQuan`, `img`) VALUES
('cs01', 'Khánh Phương', '1990-07-01', 'Hà Nội', 'KhanhPhuong.jpg'),
('cs02', 'Only C', '1990-02-05', 'Thành Phố Hồ Chí Minh', 'OnlyC.jpg'),
('cs03', 'Lương Bích Hữu', '1991-02-04', 'Ninh Bình', 'LuongBichHuu.jpg'),
('cs04', 'Mỹ Tâm', '1983-01-08', 'Quảng Nam', 'MyTam.jpg'),
('cs05', 'Đức Phúc', '1989-02-20', 'Bình Thuận', 'DucPhuc.jpg'),
('cs06', 'Anh Thơ', '1967-02-06', 'Hà Nội', 'AnhTho.jpg'),
('cs07', 'Thiều Bảo Trâm', '1988-02-04', 'Huế', 'ThieuBaoTram.jpg'),
('cs08', 'Taylor Swift', '1985-02-07', 'Hoa Kỳ', 'TaylorSwift.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `casi_baihat`
--

CREATE TABLE `casi_baihat` (
  `id` varchar(250) NOT NULL,
  `CaSiId` varchar(11) NOT NULL,
  `BaiHatId` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chude`
--

CREATE TABLE `chude` (
  `id` varchar(250) NOT NULL,
  `TenChuDe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chude`
--

INSERT INTO `chude` (`id`, `TenChuDe`) VALUES
('1', 'Nhạc Sàn'),
('2', 'Nhạc Vàng'),
('3', 'Nhạc Phim'),
('4', 'Wedding'),
('5', 'Cover & Mashup'),
('6', 'Coffee Time'),
('7', 'Nhạc Không Lời'),
('8', 'Sad Songs'),
('9', 'Xuân Mậu Tuất');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(250) NOT NULL,
  `TenPlayList` text NOT NULL,
  `TenBaiHat` text NOT NULL,
  `LuotNghe` text NOT NULL,
  `img` text NOT NULL,
  `NguoiTao` text NOT NULL,
  `DuongDan` text NOT NULL,
  `TheLoai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `TenPlayList`, `TenBaiHat`, `LuotNghe`, `img`, `NguoiTao`, `DuongDan`, `TheLoai`) VALUES
('1', 'Xuân Sum Vầy', 'Chào Xuân Mới', '22', 'XuanSumVay..jpg', 'Nguyễn Văn An', 'music/Chao Xuan Moi.mp3', 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` varchar(250) NOT NULL,
  `TenTheLoai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `TenTheLoai`) VALUES
('1', 'Việt Nam'),
('2', 'Âu Mỹ'),
('3', 'Châu Á'),
('4', 'Hòa Tấu'),
('5', 'Nhạc Dance'),
('6', 'Nhạc Thiếu Nhi'),
('7', 'Nhạc Cách Mạng'),
('8', 'Rock'),
('9', 'Rap/Hip Hop');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(250) NOT NULL,
  `UserName` text NOT NULL,
  `Password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `UserName`, `Password`, `email`) VALUES
('1', 'MyHieu', '', 'truongthimyhieu@ggmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` varchar(250) NOT NULL,
  `TenVideo` text NOT NULL,
  `CaSi` text NOT NULL,
  `TheLoai` text NOT NULL,
  `DuongDan` text NOT NULL,
  `LuotXem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `TenVideo`, `CaSi`, `TheLoai`, `DuongDan`, `LuotXem`) VALUES
('1', 'Ta Còn Yêu Nhau', 'Đức Phúc', 'Việt Nam', 'video/Ta Con Yeu Nhau.mp4', 13),
('2', 'Tiếng Đàn Ta Lư', 'Anh Thơ', 'Nhạc Cách Mạng', 'video/Tieng Dan Ta Lu.mp4', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casi`
--
ALTER TABLE `casi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casi_baihat`
--
ALTER TABLE `casi_baihat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

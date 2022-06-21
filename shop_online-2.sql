-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 04:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `slide_1` text NOT NULL,
  `slide_2` text NOT NULL,
  `slide_3` text NOT NULL,
  `slide_4` text NOT NULL,
  `offer_day` int(11) NOT NULL,
  `app_logo` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `phuong` varchar(100) NOT NULL,
  `quan` varchar(100) NOT NULL,
  `thanhpho` varchar(100) NOT NULL,
  `quocgia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `slide_1`, `slide_2`, `slide_3`, `slide_4`, `offer_day`, `app_logo`, `phone`, `email`, `dia_chi`, `phuong`, `quan`, `thanhpho`, `quocgia`) VALUES
(1, 'https://myphamhana.vn/wp-content/uploads/2020/02/1-1400x682.jpg', 'https://hoaanhdao.vn/2019_img/files/san-pham/640x340-mobile%20(1).png', 'https://metomin.com/wp-content/uploads/2018/11/shopee-sale-my-pham.jpg', 'https://www.chili.vn/blogs/wp-content/uploads/2018/01/29-tuyet-chieu-khuyen-mai-bung-no-doanh-so-03-1200x682.jpg', 50, 'https://play-lh.googleusercontent.com/lMrBvD9Xr3Lyh6bs1OVDCanvhoZQEu4sWICjbM5amCrMSgHKFjnjfJ4_1iZpGME0L7Y', '0123456789', 'test@gmail.com', '56 Nguyễn Lương Bằng', 'Hòa Khánh Bắc', 'Liên Chiểu', 'Đà Nẵng', 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add auth group', 7, 'add_authgroup'),
(26, 'Can change auth group', 7, 'change_authgroup'),
(27, 'Can delete auth group', 7, 'delete_authgroup'),
(28, 'Can view auth group', 7, 'view_authgroup'),
(29, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
(30, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
(31, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
(32, 'Can view auth group permissions', 8, 'view_authgrouppermissions'),
(33, 'Can add auth permission', 9, 'add_authpermission'),
(34, 'Can change auth permission', 9, 'change_authpermission'),
(35, 'Can delete auth permission', 9, 'delete_authpermission'),
(36, 'Can view auth permission', 9, 'view_authpermission'),
(37, 'Can add auth user', 10, 'add_authuser'),
(38, 'Can change auth user', 10, 'change_authuser'),
(39, 'Can delete auth user', 10, 'delete_authuser'),
(40, 'Can view auth user', 10, 'view_authuser'),
(41, 'Can add auth user groups', 11, 'add_authusergroups'),
(42, 'Can change auth user groups', 11, 'change_authusergroups'),
(43, 'Can delete auth user groups', 11, 'delete_authusergroups'),
(44, 'Can view auth user groups', 11, 'view_authusergroups'),
(45, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
(46, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
(47, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
(48, 'Can view auth user user permissions', 12, 'view_authuseruserpermissions'),
(49, 'Can add chitietdonhang', 13, 'add_chitietdonhang'),
(50, 'Can change chitietdonhang', 13, 'change_chitietdonhang'),
(51, 'Can delete chitietdonhang', 13, 'delete_chitietdonhang'),
(52, 'Can view chitietdonhang', 13, 'view_chitietdonhang'),
(53, 'Can add django admin log', 14, 'add_djangoadminlog'),
(54, 'Can change django admin log', 14, 'change_djangoadminlog'),
(55, 'Can delete django admin log', 14, 'delete_djangoadminlog'),
(56, 'Can view django admin log', 14, 'view_djangoadminlog'),
(57, 'Can add django content type', 15, 'add_djangocontenttype'),
(58, 'Can change django content type', 15, 'change_djangocontenttype'),
(59, 'Can delete django content type', 15, 'delete_djangocontenttype'),
(60, 'Can view django content type', 15, 'view_djangocontenttype'),
(61, 'Can add django migrations', 16, 'add_djangomigrations'),
(62, 'Can change django migrations', 16, 'change_djangomigrations'),
(63, 'Can delete django migrations', 16, 'delete_djangomigrations'),
(64, 'Can view django migrations', 16, 'view_djangomigrations'),
(65, 'Can add django session', 17, 'add_djangosession'),
(66, 'Can change django session', 17, 'change_djangosession'),
(67, 'Can delete django session', 17, 'delete_djangosession'),
(68, 'Can view django session', 17, 'view_djangosession'),
(69, 'Can add donhang', 18, 'add_donhang'),
(70, 'Can change donhang', 18, 'change_donhang'),
(71, 'Can delete donhang', 18, 'delete_donhang'),
(72, 'Can view donhang', 18, 'view_donhang'),
(73, 'Can add loaisanpham', 19, 'add_loaisanpham'),
(74, 'Can change loaisanpham', 19, 'change_loaisanpham'),
(75, 'Can delete loaisanpham', 19, 'delete_loaisanpham'),
(76, 'Can view loaisanpham', 19, 'view_loaisanpham'),
(77, 'Can add sanpham', 20, 'add_sanpham'),
(78, 'Can change sanpham', 20, 'change_sanpham'),
(79, 'Can delete sanpham', 20, 'delete_sanpham'),
(80, 'Can view sanpham', 20, 'view_sanpham'),
(81, 'Can add app', 21, 'add_app'),
(82, 'Can change app', 21, 'change_app'),
(83, 'Can delete app', 21, 'delete_app'),
(84, 'Can view app', 21, 'view_app'),
(85, 'Can add contact', 22, 'add_contact'),
(86, 'Can change contact', 22, 'change_contact'),
(87, 'Can delete contact', 22, 'delete_contact'),
(88, 'Can view contact', 22, 'view_contact'),
(89, 'Can add faq', 23, 'add_faq'),
(90, 'Can change faq', 23, 'change_faq'),
(91, 'Can delete faq', 23, 'delete_faq'),
(92, 'Can view faq', 23, 'view_faq');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$4Yp7gLZAZZa8c4y1HU7CVu$hDawTrXMLwWfSshVzksrNjrE7Pjp5NrHjUoE/jjD95c=', '2022-06-18 15:08:57.109712', 1, 'tuyen@gmail.com', 'Thanh Tuyên', 'Đặng', 'tuyen@gmail.com', 1, 1, '2022-05-19 04:07:26.004293'),
(3, 'pbkdf2_sha256$320000$BvkDD7tNLC1O5C0Htli75D$3wMrp5kvmFoU2AT0kgTr3hxzsKVUAf8RW04GelPqikQ=', '2022-05-31 10:06:42.893870', 0, 'tuyen2@gmail.com', 'Tên', 'Đặng', 'tuyen2@gmail.com', 0, 1, '2022-05-31 07:12:01.224328'),
(12, 'pbkdf2_sha256$320000$jwjQTyKsIYzp8bUZtLwVGi$9B1VYnQJLdXX37EFHVnNXO++YJ2qcys8dvXZvs57fD8=', '2022-06-12 17:30:58.629003', 0, 'them@gmail.com', 'Một', 'Them', 'them@gmail.com', 0, 1, '2022-06-12 17:30:28.459864'),
(15, 'pbkdf2_sha256$320000$GptWEwizzyFNCbmFCr414O$H7XLC3DFX7yeGifsw4kUbfmzcmt8FQ/Cs9knTje5CQI=', '2022-06-14 13:54:06.092168', 0, 'test1@gmail.com', 'Hai', 'Tên', 'test1@gmail.com', 0, 1, '2022-06-14 13:54:05.526846'),
(16, 'pbkdf2_sha256$320000$2Cev7VcvrUc062erQIR6sF$yoZ04RovfHg3AWInncLcy6+6SAxEHGmEkNxYEn2sUnQ=', '2022-06-14 13:54:39.722182', 0, 'hai@gmail.com', 'Mới', 'Tên', 'hai@gmail.com', 0, 1, '2022-06-14 13:54:39.215890'),
(17, 'pbkdf2_sha256$320000$t70qQB8YZR7R9rBFs7KdrD$0REsYfkYdfO7aRv9RLYFMLH9182piwQytXVNgGGezZ8=', '2022-06-16 17:11:29.951118', 0, 'tuyenn@gmail.com', 'Lần N', 'Thêm', 'tuyenn@gmail.com', 0, 1, '2022-06-16 17:11:29.544217'),
(18, 'pbkdf2_sha256$320000$e3QqfOvYuSyqb5dWdxYaD5$2JwvaW2cmSywVZ/idQpT74F6XQOtqem6xcVuNVeUp9U=', '2022-06-18 04:02:13.412438', 0, 'quang@gmail.com', 'Mỳ quảng', 'Test', 'quang@gmail.com', 0, 1, '2022-06-18 04:02:12.993560');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `iddonhang` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `idsanpham`, `soluong`, `gia`) VALUES
(6, 9, 5, 1, 400),
(7, 9, 16, 2, 180),
(8, 11, 14, 1, 150),
(9, 11, 8, 1, 160),
(10, 11, 16, 1, 90),
(37, 10, 10, 1, 350),
(38, 10, 17, 1, 700),
(46, 10, 15, 2, 210),
(47, 10, 16, 1, 63),
(48, 24, 15, 2, 210),
(49, 24, 5, 1, 280),
(50, 24, 6, 1, 650),
(51, 24, 9, 2, 720),
(52, 23, 16, 2, 126),
(53, 23, 5, 2, 560),
(55, 26, 19, 1, 190);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `lastname`, `email`, `subject`, `message`) VALUES
(1, 'Tuyên', 'Đặng', 'tuyen@gmail.com', 'lag', 'xài web lag :v'),
(4, 'Tuyên', 'Đặng', 'matthaus079@gmail.com', 'Giật lag', 'Xài web giật lag'),
(5, 'Tuyên', 'Đặng', 'tuyen@gmail.com', 'Đồ đắt', 'đồ ở shopee rẻ hơn');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-31 08:50:44.500232', '21', 'Thêm 1- Giá: 50', 1, '[{\"added\": {}}]', 20, 1),
(2, '2022-05-31 10:08:02.370733', '3', 'ma: Report', 3, '', 22, 1),
(3, '2022-05-31 10:08:48.338210', '2', 'tuyen@gmail.com: lag', 3, '', 22, 1),
(4, '2022-06-05 16:14:09.363407', '1', 'Offer day: 30', 2, '[{\"changed\": {\"fields\": [\"Offer day\"]}}]', 21, 1),
(5, '2022-06-05 16:21:36.587118', '1', 'Cau Hoi: Phải làm gì nếu tôi vẫn chưa nhận được đơn đặt hàng?', 1, '[{\"added\": {}}]', 23, 1),
(6, '2022-06-05 16:22:38.193880', '2', 'Cau Hoi: Giá vận chuyển là bao nhiêu?', 1, '[{\"added\": {}}]', 23, 1),
(7, '2022-06-12 04:33:24.039908', '9', 'IDKH: AuthUser object (1) Tong: 500.0', 1, '[{\"added\": {}}]', 18, 1),
(8, '2022-06-12 04:52:23.770918', '10', 'IDKH: AuthUser object (1) Tong: 0.0', 1, '[{\"added\": {}}]', 18, 1),
(9, '2022-06-12 04:55:06.627078', '11', 'IDKH: AuthUser object (1) Tong: 400.0', 1, '[{\"added\": {}}]', 18, 1),
(10, '2022-06-12 04:55:24.738450', '12', 'IDKH: AuthUser object (1) Tong: 120.0', 1, '[{\"added\": {}}]', 18, 1),
(11, '2022-06-12 05:24:05.809379', '13', 'IDKH: AuthUser object (3) Tong: 0.0', 1, '[{\"added\": {}}]', 18, 1),
(12, '2022-06-12 05:24:28.130059', '10', 'IDKH: AuthUser object (1) Tong: 0.0', 2, '[{\"changed\": {\"fields\": [\"Diachi\", \"Date\"]}}]', 18, 1),
(13, '2022-06-12 05:36:51.477938', '6', 'Đơn hàng:IDKH: AuthUser object (1) Tong: 500.0- sản phẩm:Son MAC- Giá: 400-1', 1, '[{\"added\": {}}]', 13, 1),
(14, '2022-06-12 05:37:08.351447', '7', 'Đơn hàng:IDKH: AuthUser object (1) Tong: 500.0- sản phẩm:SON DƯỠNG CAUDALIE LIP CONDITIONER- Giá: 90-2', 1, '[{\"added\": {}}]', 13, 1),
(15, '2022-06-12 05:37:42.051533', '9', 'IDKH: AuthUser object (1) Tong: 580.0', 2, '[{\"changed\": {\"fields\": [\"Tong\"]}}]', 18, 1),
(16, '2022-06-12 05:40:23.304603', '8', 'Đơn hàng:IDKH: AuthUser object (1) Tong: 400.0- sản phẩm:KEM MẮT AHC YOUTH LASTING REAL EYE CREAM FOR FACE- Giá: 150-1', 1, '[{\"added\": {}}]', 13, 1),
(17, '2022-06-12 05:42:56.100936', '9', 'Đơn hàng:IDKH: AuthUser object (1) Tong: 400.0- sản phẩm:SON KEM MERZY DREAMY LATE NIGHT MELLOW TINT- Giá: 160-1', 1, '[{\"added\": {}}]', 13, 1),
(18, '2022-06-12 05:44:20.037321', '10', 'Đơn hàng:IDKH: AuthUser object (1) Tong: 400.0- sản phẩm:SON DƯỠNG CAUDALIE LIP CONDITIONER- Giá: 90-1', 1, '[{\"added\": {}}]', 13, 1),
(19, '2022-06-12 17:13:42.885100', '5', 'hai@gmail.com', 3, '', 4, 1),
(20, '2022-06-12 17:13:42.932061', '4', 'them2@gmail.com', 3, '', 4, 1),
(21, '2022-06-12 17:13:42.974015', '6', 'them@gmail.com', 3, '', 4, 1),
(22, '2022-06-12 17:36:11.279377', '14', 'KH: Một-Tong: 0.0', 1, '[{\"added\": {}}]', 18, 1),
(23, '2022-06-14 16:11:42.258713', '11', 'Đơn hàng:KH: Thanh Tuyên-Tong: 0.0- sản phẩm:Son MAC- Giá: 400-1', 1, '[{\"added\": {}}]', 13, 1),
(24, '2022-06-14 17:01:21.376655', '12', 'Đơn hàng:KH: Thanh Tuyên-Tong: 0.0- sản phẩm:Son MAC- Giá: 400-1', 1, '[{\"added\": {}}]', 13, 1),
(25, '2022-06-14 17:11:23.359090', '13', 'Đơn hàng:KH: Thanh Tuyên-Tong: 1200.0- sản phẩm:SON DƯỠNG CAUDALIE LIP CONDITIONER- Giá: 90-1', 1, '[{\"added\": {}}]', 13, 1),
(26, '2022-06-14 17:14:35.318040', '14', 'Đơn hàng:KH: Thanh Tuyên-Tong: 490.0- sản phẩm:KEM LÓT MAYBELLINE BABY SKIN INSTANT PORE ERASER 20ML- Giá: 150-2', 1, '[{\"added\": {}}]', 13, 1),
(27, '2022-06-14 17:15:02.173972', '15', 'Đơn hàng:KH: Thanh Tuyên-Tong: 1100.0- sản phẩm:SON KEM MERZY DREAMY LATE NIGHT MELLOW TINT- Giá: 160-1', 1, '[{\"added\": {}}]', 13, 1),
(28, '2022-06-14 17:16:10.278601', '16', 'Đơn hàng:KH: Thanh Tuyên-Tong: 320.0- sản phẩm:KEM DƯỠNG SOME BY MI AHA-BHA-PHA 30 DAYS MIRACLE CREAM 60G- Giá: 255-1', 1, '[{\"added\": {}}]', 13, 1),
(29, '2022-06-14 17:16:29.972387', '17', 'Đơn hàng:KH: Thanh Tuyên-Tong: 510.0- sản phẩm:SON KEM MERZY DREAMY LATE NIGHT MELLOW TINT- Giá: 160-1', 1, '[{\"added\": {}}]', 13, 1),
(30, '2022-06-14 17:16:46.801223', '18', 'Đơn hàng:KH: Thanh Tuyên-Tong: 510.0- sản phẩm:\r\nMẶT NẠ NGỦ MÔI LANEIGE LIP SLEEPING MASK- Giá: 200-1', 1, '[{\"added\": {}}]', 13, 1),
(31, '2022-06-14 17:17:13.419433', '19', 'Đơn hàng:KH: Thanh Tuyên-Tong: 510.0- sản phẩm:SỮA RỬA MẶT CHO DA DẦU MỤN SVR SEBIACLEAR GEL MOUSSANT- Giá: 350-1', 1, '[{\"added\": {}}]', 13, 1),
(32, '2022-06-16 14:42:36.575161', '40', 'Đơn hàng:KH: Thanh Tuyên-Tong: 1450.0- sản phẩm:KEM DƯỠNG SOME BY MI AHA-BHA-PHA 30 DAYS MIRACLE CREAM 60G- Giá: 255-1', 1, '[{\"added\": {}}]', 13, 1),
(33, '2022-06-16 17:13:07.788020', '11', 'KH: Thanh Tuyên-Tong: 400.0', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 18, 1),
(34, '2022-06-16 17:13:36.523153', '21', 'KH: Thanh Tuyên-Tong: 0.0', 3, '', 18, 1),
(35, '2022-06-16 17:13:46.991644', '19', 'KH: Thanh Tuyên-Tong: 0.0', 3, '', 18, 1),
(36, '2022-06-16 17:14:06.581699', '22', 'KH: Thanh Tuyên-Tong: 0.0', 3, '', 18, 1),
(37, '2022-06-16 17:14:15.803772', '11', 'KH: Thanh Tuyên-Tong: 400.0', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 18, 1),
(38, '2022-06-16 17:14:30.688508', '11', 'KH: Thanh Tuyên-Tong: 400.0', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 18, 1),
(39, '2022-06-18 03:56:25.834164', '10', 'KH: Thanh Tuyên-Tong: 1338.0', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 18, 1),
(40, '2022-06-18 15:11:21.223357', '1', 'Offer day: 50', 2, '[{\"changed\": {\"fields\": [\"Offer day\"]}}]', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(21, 'home', 'app'),
(7, 'home', 'authgroup'),
(8, 'home', 'authgrouppermissions'),
(9, 'home', 'authpermission'),
(10, 'home', 'authuser'),
(11, 'home', 'authusergroups'),
(12, 'home', 'authuseruserpermissions'),
(13, 'home', 'chitietdonhang'),
(22, 'home', 'contact'),
(14, 'home', 'djangoadminlog'),
(15, 'home', 'djangocontenttype'),
(16, 'home', 'djangomigrations'),
(17, 'home', 'djangosession'),
(18, 'home', 'donhang'),
(23, 'home', 'faq'),
(19, 'home', 'loaisanpham'),
(20, 'home', 'sanpham'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-28 12:59:56.983093'),
(2, 'auth', '0001_initial', '2022-05-28 13:00:04.474791'),
(3, 'admin', '0001_initial', '2022-05-28 13:00:06.601898'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-28 13:00:06.650955'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-28 13:00:06.703426'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-28 13:00:07.466743'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-28 13:00:08.158024'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-28 13:00:08.275221'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-28 13:00:08.307135'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-28 13:00:08.836719'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-28 13:00:08.884591'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-28 13:00:08.955401'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-28 13:00:09.304744'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-28 13:00:09.393135'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-28 13:00:09.485112'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-28 13:00:09.517670'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-28 13:00:09.601625'),
(18, 'sessions', '0001_initial', '2022-05-28 13:00:09.975936'),
(19, 'home', '0001_initial', '2022-05-28 13:29:24.288760'),
(20, 'home', '0002_app', '2022-05-28 13:34:27.028507'),
(21, 'home', '0003_contact', '2022-05-31 08:01:35.761493'),
(22, 'home', '0004_faq', '2022-05-31 09:17:00.068500');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7mh6f6jhdl1sqs07lt03op1xjuv2yvyw', '.eJxVjEEOwiAQAP_C2ZAtUCgevfcNZBcWqZqSlPZk_Lsh6UGvM5N5i4DHXsLReAtLElcxiMsvI4xPXrtID1zvVca67ttCsifytE3ONfHrdrZ_g4Kt9K3XTjlDBkhlE3EcEcAzgUMHk6eUNXt2yNolxElZNfgpW7RgESha8fkC1H43yQ:1nvynp:OqADmqSGlJ25R4zsdOtix4B_qxT_se6vmsI9kYzDNEI', '2022-06-14 10:08:41.208041'),
('an6l9kp2l09k10qd2v6cbbothv75kk2e', '.eJxVjDkOwjAUBe_iGlkx3inpOYP1FxsHkCPFSYW4O7KUAto3M-8tEuxbTXvPa5pZXIQSp98NgZ65DcAPaPdF0tK2dUY5FHnQLm8L59f1cP8OKvQ66mInr4ijY-Ms-oiBkRiDy6oEOE_Gxqyp6GAjWR0UgHFKc0T2QKzE5wv3rDhw:1nyZNe:HRymYLaPDWi1XLC5MVIIpLx0EUL1kIQNakqpiGyCUH8', '2022-06-21 13:36:22.122125'),
('i04pjsu4e5b6c1v9guoreo2hcrt4dqfo', '.eJxVjMsOwiAQRf-FtSEzQHm4dO83EBhAqgaS0q6M_65NutDtPefcF_NhW6vfRl78nNiZITv9bjHQI7cdpHtot86pt3WZI98VftDBrz3l5-Vw_w5qGPVbB0SyQkYoriBYMFZnMDRNwRgqWjhlCAU6J6RJ1kqLoBKRINAgpErs_QG4hDZ9:1o2a4H:zNSCNxsAB9YcQLdXpqefcfdHEyqVxqgh6wJK8yO_SVI', '2022-07-02 15:08:57.351490'),
('mlmelboi40t1l3yrn1qexq8mzuxbybq8', 'e30:1o0R92:mT9pFvMLhAC_ZdLrYVAB_9JuTIOhDvdqhrmYGG61Txg', '2022-06-26 17:13:00.163081'),
('pndwl719uzz508zgxfp6ocgj5izzr4nx', '.eJxVjMsOwiAQRf-FtSEzQHm4dO83EBhAqgaS0q6M_65NutDtPefcF_NhW6vfRl78nNiZITv9bjHQI7cdpHtot86pt3WZI98VftDBrz3l5-Vw_w5qGPVbB0SyQkYoriBYMFZnMDRNwRgqWjhlCAU6J6RJ1kqLoBKRINAgpErs_QG4hDZ9:1o2PfF:4hjudxKqVfLt01X1zCLOnG4wO002S9sLlrCZOGCYgbU', '2022-07-02 04:02:25.264067'),
('qaitx807s4ldg0qljy1k1ow61hf4d3tr', 'e30:1o0Rao:5ottpGQBbslolACJotXzFC4kYuRhdIGLOUJCcmHkzuY', '2022-06-26 17:41:42.942632'),
('tekun0f9sfketi0d3u1qtlw5vz1hvto1', 'e30:1o0Rbk:DTR8YcXtCyFcpNYNtdtQKNDkB-EnNHnthz50xI8sMog', '2022-06-26 17:42:40.997477'),
('uex7nfkipwig8aeky4b15wg6f1zqg5kk', '.eJxVjMsOwiAQRf-FtSEzQHm4dO83EBhAqgaS0q6M_65NutDtPefcF_NhW6vfRl78nNiZITv9bjHQI7cdpHtot86pt3WZI98VftDBrz3l5-Vw_w5qGPVbB0SyQkYoriBYMFZnMDRNwRgqWjhlCAU6J6RJ1kqLoBKRINAgpErs_QG4hDZ9:1o2PgV:EGFjcUlc71M2ky66ylslP7Ha_Ei5IJnwDPgWMmO3LOM', '2022-07-02 04:03:43.616561'),
('usdesmftlh4j1wispk8rnsx9pmpq2c0i', 'e30:1o0RPw:jDfW1ePSYZKVqsRSWijiMFfiyj5xDBInUv5ofRBZviE', '2022-06-26 17:30:28.793757');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `idkhachhang` int(11) NOT NULL,
  `ship` float NOT NULL,
  `tong` float NOT NULL,
  `pay_method` int(1) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `idkhachhang`, `ship`, `tong`, `pay_method`, `diachi`, `phone`, `date`, `status`) VALUES
(9, 1, 0, 580, 0, 'Việt Nam', '0', '25-12-2022', 2),
(10, 1, 15, 1338, 3, '56 Nguyễn Lương Bằng,Thanh Khê,Đà Nẵng', '0775705210', '18-06-2022', 1),
(11, 1, 0, 400, 0, 'Da Nang', '0', '2-12-2022', 2),
(12, 1, 0, 120, 0, 'Đà Nẵng Việt Nam', '0', '12-2-2022', 3),
(13, 3, 0, 0, 0, '0', '0', '0', 0),
(14, 12, 0, 0, 0, '0', '0', '0', 0),
(16, 15, 0, 0, 0, '0', '0', '0', 0),
(17, 16, 0, 0, 0, '0', '0', '0', 0),
(20, 17, 0, 0, 0, '0', '0', '0', 0),
(23, 1, 25, 711, 3, '15 Duong 1,Cẩm Lệ,Đà Nẵng', '0112354567', '18-06-2022', 1),
(24, 18, 10, 1870, 2, '5 Lỗ Giáng 1,Cẩm Lệ,Đà Nẵng', '0123456789', '18-06-2022', 2),
(25, 18, 0, 0, 0, '0', '0', '0', 0),
(26, 1, 0, 190, 0, '0', '0', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `cauhoi` text NOT NULL,
  `rep` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `cauhoi`, `rep`) VALUES
(1, 'Phải làm gì nếu tôi vẫn chưa nhận được đơn đặt hàng?', 'Contact us.'),
(2, 'Giá vận chuyển là bao nhiêu?', 'Tùy theo khu vực của bạn.');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `phanloai` int(1) NOT NULL,
  `mota` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhsanpham`, `phanloai`, `mota`) VALUES
(3, 'Phấn Mắt', 'https://w7.pngwing.com/pngs/135/821/png-transparent-makeup-brush-cartoon-cosmetics-brush-miscellaneous-painting-brush-thumbnail.png', 1, 'Bao gồm các sản phẩm: Mascara, kẻ mắt, phấn mắt,... Mang đến cho các bạn một đôi mắt hoàn hảo nhất.'),
(4, 'Son', 'https://w7.pngwing.com/pngs/901/30/png-transparent-makeup-lipstick-makeup-lipstick-big-red.png', 1, 'Hãy để chúng tôi giúp các bạn thêm tự tin, kiêu hãnh bằng các thỏi son đầy màu sắc.'),
(5, 'Sữa rửa mặt', 'https://img.lovepik.com/original_origin_pic/18/09/07/a14fc1f0c99031352a0e4cc7e4929cb7.png_wh860.png', 2, 'Sữa rửa mặt là một sản phẩm có công dụng làm sạch da mặt được sử dụng để loại bỏ lớp trang điểm, tế bào da chết, các bụi bẩn, và các loại hợp chất ô nhiễm khác. Sữa rửa mặt giúp rửa sạch lỗ chân lông và ngăn ngừa các tình trạng của da như mụn trứng cá.'),
(6, 'Hỗ trợ làm trắng da', 'https://img.lovepik.com/original_origin_pic/18/09/01/4547fcb20a94a6a3466e978e08858f74.png_wh860.png', 3, 'Thực phẩm chức năng là thực phẩm dùng để hỗ trợ chức năng của các bộ phận trong cơ thể người, có tác dụng dinh dưỡng, tạo cho cơ thể tình trạng thoải mái, tăng sức đề kháng và giảm bớt nguy cơ gây bệnh.'),
(7, 'Che khuyết điểm', 'https://hellonhatban.com/wp-content/uploads/2022/02/Dang-but.png', 1, 'Che khuyết điểm trên da mặt như mụn, thâm nám, sẹo, tàn nhang hoặc tình trạng da không đều màu'),
(8, 'Kem dưỡng', 'https://cdn.chanhtuoi.com/uploads/2021/05/w400/kem-duong-am.jpg', 2, 'Kem dưỡng ẩm là một hỗn hợp các hoạt chất hóa học, được điều chế nhằm làm mềm da, dưỡng da và giữ độ ẩm tự nhiên cho da. Bên cạnh tác dụng chính kể trên, kem dưỡng ẩm có thể cải thiện tông màu và cấu trúc da, giúp nuôi dưỡng làn da với các hoạt chất chống oxy hóa, chống nắng và chống lão hóa.'),
(9, 'Kem mắt', 'https://ciraclevietnam.com/luu-y-khi-duong-mat.jpg', 2, 'Mắt là bộ phận thể hiện sức hút nhất trên gương mặt. Tuy nhiên, mắt cũng là nơi mỏng manh và dễ tổn thương nhất. Nếu không được sóc cẩn thận, đây sẽ là nơi “tố cáo” tuổi thật và tình trạng sức khoẻ của bạn. Một giải pháp ra đời với mục đích chăm sóc cho bộ phận “khó chiều” này: kem dưỡng mắt. '),
(10, 'Kem lót', 'https://bizweb.dktcdn.net/100/345/186/files/2m8a6696-1.jpg?v=1580814478184', 1, 'Kem lót là chất xúc tác không thể thiếu để giữ lớp trang điểm bền màu và mịn màng hơn. Hơn thế nữa, kem lót còn giúp bảo vệ da khỏi tác hại của những sản phẩm trang điểm.'),
(11, 'Mascara', 'https://facosi.vn/content/uploads/cd9e266b-8ace-401c-8af9-aba000870446/05583e70-bd58-4a8f-be4e-ac8700a3580d_doi-mat-la-cua-so-tam-hon-1.webp?width=690&upscale=false', 1, 'Mascara là một trong những dụng cụ làm đẹp cho đôi mắt được nhiều bạn nữ sử dụng. Mascara làm dày và cong đôi mi tạm thời, tạo sự cuốn hút và long lanh cho đôi mắt. Ngoài ra, mascara còn có chức năng định hình lông mi, khắc phục tình trạng thưa thớt, mảnh và dễ gãy rụng. '),
(12, 'Son dưỡng ', 'https://cdn.chiaki.vn/unsafe/0x800/left/top/smart/filters:quality(75)/https://chiaki.vn/upload/product/2017/08/son-duong-dior-co-mau-addict-lip-glow-cho-moi-cang-mong-59955c4f2e3c5-17082017160519.jpg', 2, 'Son dưỡng môi sẽ là sản phẩm không thể thiếu của các nàng để giúp đôi môi không bị khô, tróc vảy và nuôi dưỡng môi luôn hồng hào quyến rũ.'),
(13, 'Kẻ mắt', 'https://zeldabeauty.com/wp-content/uploads/0251255215502.png', 1, 'Đôi mắt là cửa sổ tâm hồn vậy nên những cô nàng khi make up thường sẽ phải đắn đo suy nghĩ làm sao để trang điểm kẻ mắt đẹp, thật tự nhiên, thu hút người đối diện.'),
(14, 'Hỗ trợ giảm cân', 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2022/02/DHC-Forskohui-Soft-Capsule-60-Vien-768x768.jpg', 3, 'Thực phẩm chức năng giảm cân là những loại thực phẩm có tác dụng bổ sung chất dinh dưỡng cần thiết cho cơ thể, chứa ít năng lượng. Tuy nhiên nó lại chứa đầy đủ và cân đối các loại dinh dưỡng được tổng hợp từ các sản phẩm tự nhiên mà thông qua ăn uống hàng ngày bạn không thể cung cấp đủ cho cơ thể. Thực phẩm chức năng giảm cân nhanh còn có tác dụng giúp cơ thể giải độc và chống lại các gốc tự do, hạn chế việc dư thừa năng lượng gây tích tụ mỡ.');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idloaisanpham` int(3) NOT NULL,
  `sale` tinyint(1) NOT NULL,
  `moi` tinyint(1) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idloaisanpham`, `sale`, `moi`, `type`) VALUES
(5, 'Son MAC', 400, 'https://nuty.vn/wp-content/uploads/2017/09/son-mac-646-1.jpg', 'MAC là thương hiệu mỹ phẩm uy tín nổi tiếng trên khắp thế giới. Bất kỳ thỏi son huyền thoại nào của MAC cũng khiến chị em “đứng ngồi không yên”. Trong đó không thể không kể đến dòng Son thỏi lì M.A.C Lipstick.', 4, 1, 0, 1),
(6, 'Son YSL', 650, 'https://lisa.vn/wp-content/uploads/2020/08/ysl-le-rouge-01-do-tuoi-1-247x296.jpg?v=1597218794', 'Những “siêu phẩm” son môi đến từ thương hiệu đẳng cấp YSL chưa từng làm giới điệu mộ và cây son đỏ tươi YSL Slim 23 Mystery Red cũng không phải là ngoại lệ. Sự cao cấp đến từ thiết kế, chất son đến sắc son hoàn hảo, Slim 23 xứng đáng là “đẳng cấp son high-end” mà bất cứ cô nàng nào cũng muốn sở hữu.', 4, 0, 0, 1),
(7, 'SON KEM BBIA LAST VELVET LIP TINT', 160, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2020/09/Son-Kem-Bbia-Last-Velvet-Lip-Tint-768x768.jpg', 'Với thiết kế đơn giản nhưng vẫn mang nét sang trọng và tinh tế với thân son bằng nhựa cứng và hơi nhám với chất liệu trong mờ giúp bạn có thể nhìn thấy màu son bên trong, cầm khá chắc tay với thân son thuôn dài.\r\nCọ son thiết kế thon dài, vát chéo giúp các bạn có thể tô viền môi dễ dàng, rõ nét.\r\nChất son nhẹ mướt mềm môi nhưng vẫn lỳ trên môi không gây khô môi.\r\nChất son kem lỳ mịn như nhung và lên màu cực kì chuẩn chỉ với một lần quẹt cọ.\r\nĐộ bám son cực kì lâu nếu không ăn quá nhiều đồ dầu mỡ và không gây nặng môi.\r\nKhi trôi vẫn còn lớp base màu trên môi chứ không trôi đi hoàn toàn hay trôi loang lỗ.', 4, 0, 0, 1),
(8, 'SON KEM MERZY DREAMY LATE NIGHT MELLOW TINT', 160, 'https://skin365.vn/wp-content/uploads/2021/06/Son-Kem-Merzy-Dreamy-Late-Night-Mellow-Tint.jpg', 'https://skin365.vn/wp-content/uploads/2021/06/Son-Kem-Merzy-Dreamy-Late-Night-Mellow-Tint.jpg', 4, 0, 0, 1),
(9, 'BẢNG PHẤN MẮT COLOURPOP PRESSED POWDER PALETTE', 360, 'https://skin365.vn/wp-content/uploads/2021/04/Colourpop-Pressed-Powder-Palette.jpg', 'Chất phấn mềm mịn như kem, không bết dính, bám màu cực tốt.\r\nBảng màu mắt đa dạng, sắc thái phong phú và lên chuẩn.\r\nMàu phấn trong hộp và khi tán lên da đều đồng nhất, sắc độ đậm nhạt tùy lớp phấn dày mỏng.\r\nThành phần lành tính không gây ảnh hưởng đến làn da nhạy cảm.', 3, 0, 0, 1),
(10, 'SỮA RỬA MẶT CHO DA DẦU MỤN SVR SEBIACLEAR GEL MOUSSANT', 350, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2018/11/Son-Duong-Dau-Dua-Ben-Tre-Cocoon-Ben-Tre-Coconut-Lip-Balm-5g-600x600.jpg', 'Gluconolactone: AHA thế hệ mới, có tác dụng kháng viêm, tiêu sưng, tăng sinh collagen, tẩy tế bào chết và làm mờ thâm sẹo.\r\nNiacinamide: giảm dầu thừa, kháng viêm, cải thiện nếp nhăn.\r\nPEG-7 Glyceryl Cococate, Glycerin: cấp ẩm, làm mềm da.\r\nAcid Lactic: tẩy tế bào chết nhẹ, giữ ẩm, giảm sưng, tăng sinh collagen, tái tạo tế bào da.\r\nLàm sạch sâu, thông thoáng lỗ chân lông, kháng viêm, giảm sưng, làm mờ thâm sẹo.\r\nGiảm tiết bã nhờn trên da, giúp da cân bằng pH.\r\nDưỡng ẩm cho da, làm mềm da, tẩy tế bào chết nhẹ cho da.\r\nTăng sinh collagen, thúc đẩy quá trình tái tạo tế bào, nhờ đó tăng độ đàn hồi cho da.', 5, 0, 0, 2),
(11, 'SỮA RỬA MẶT KIEHL’S CALENDULA DEEP CLEANSING FOAMING FACE WASH', 650, 'https://skin365.vn/wp-content/uploads/2018/10/Kiehls-Calendula-Deep-Cleansing-Foaming-Face-Wash-230ml.jpg', 'Hoa cúc: Chiết xuất từ tinh dầu hoa cúc marigold, nhẹ dịu thích hợp cho da dầu, kể cả da nhạy cảm. Làm dịu làn da, đặc biệt thích hợp cho làn da mỏng.\r\nGlycerin: Cung cấp độ ẩm cho da.Review sữa rửa mặt Kiehls Calendula Deep Cleansing Foaming Face Wash - BlogAnChoi. Với những cô nàng sở hữu làn da dầu và nhạy cảm thì sữa rửa mặt Kiehls Calendula Deep Cleansing Foaming Face Wash hoàn toàn là lựa chọn thích hợp giúp là. Hoa cúc: Chiết xuất từ tinh dầu hoa cúc marigold, nhẹ dịu thích hợp cho da dầu, kể cả da nhạy cảm. Làm dịu làn da, đặc biệt thích hợp cho làn da mỏng.Glycerin: cung cấp độ ẩm cho da.Sodium Cocoyl Glycinate: Giúp tạo bọt nhẹ nhàng cho sản phẩm.Coco – betaine: có nguồn gốc từ dầu dừa nên rất lành tính, có tác dụng làm sạch bề mặt da, kháng sinh. https://bloganchoi.com/review-sua-rua-mat-kiehls-calendula-deep-cleansing-foaming-face-wash/This article is referenced content from https://bloganchoi.com - Review sữa rửa mặt Kiehls Calendula Deep Cleansing Foaming Face Wash - BlogAnChoi. Với những cô nàng sở hữu làn da dầu và nhạy cảm thì sữa rửa mặt Kiehls Calendula Deep Cleansing Foaming Face Wash hoàn toàn là lựa chọn thích hợp giúp là. Hoa cúc: Chiết xuất từ tinh dầu hoa cúc marigold, nhẹ dịu thích hợp cho da dầu, kể cả da nhạy cảm. Làm dịu làn da, đặc biệt thích hợp cho làn da mỏng.Glycerin: cung cấp độ ẩm cho da.Sodium Cocoyl Glycinate: Giúp tạo bọt nhẹ nhàng cho sản phẩm.Coco – betaine: có nguồn gốc từ dầu dừa nên rất lành tính, có tác dụng làm sạch bề mặt da, kháng sinh. https://bloganchoi.com/review-sua-rua-mat-kiehls-calendula-deep-cleansing-foaming-face-wash/\r\nSodium Cocoyl Glycinate: Giúp tạo bọt nhẹ nhàng cho sản phẩm.\r\nCoco – betaine: Có nguồn gốc từ dầu dừa nên rất lành tính, có tác dụng làm sạch bề mặt da, kháng sinh.', 5, 1, 0, 2),
(12, 'CHE KHUYẾT ĐIỂM THE SAEM COVER PERFECTION TIP CONCEALER', 80, 'https://skin365.vn/wp-content/uploads/2021/05/The-Saem-Cover-Perfection-Tip-Concealer.jpg', 'Không gây ra tình trạng da bị mốc (cakey), khả năng kiểm soát bã nhờn cao\r\nChe phủ hiệu quả các vết thâm dưới mắt giúp mắt sáng hơn.\r\nKhả năng chống nắng và tia tử ngoại lên đến SPF28/PA++\r\nSoft Focusing Effect: chất kem siêu mềm mịn, tập chung thấm vào từng ngõ ngách trên da giúp che phủ hoàn hảo.\r\nLong Lasting Network Polymer: Kết cấu dạng mạng lưới giúp giữ lớp che phủ Bền Lâu Suốt 16 giờ (số liệu đã đc Kiểm Chứng).\r\n', 7, 1, 0, 1),
(13, 'KEM DƯỠNG AVENE CICALFATE+ REPAIRING PROTECTIVE CREAM', 400, 'https://skin365.vn/wp-content/uploads/2021/07/Avene-Cicalfate-Repairing-Protective-Cream-40ml.jpg', 'Làm lành vết thương đã khô rỉ dịch trên bề mặt da\r\nSilicate tự nhiên điều tiết rỉ dịch trên da.\r\nSucralfate vi thể hóa tái tạo bề mặt da, mang lại sự thoải mái cho da.\r\nHợp chất đồng sulfate và kẽm sulfate hạn chế khả năng tăng sinh vi khuẩn\r\nGiàu nước khoáng Avène giúp làm dịu da yếu, kích ứng, tổn thương.\r\nSản phẩm phù hợp nhất với các làn da bị tổn thương hoặc kích ứng sau các can thiệp thẩm mỹ (chiếu laser, phẫu thuật thẩm mỹ, tẩy lông…), da bị viêm, chàm, nứt nẻ, hăm tã, tróc vẩy hoặc tổn thương làm trầy xước da.', 8, 1, 0, 2),
(14, 'KEM MẮT AHC YOUTH LASTING REAL EYE CREAM FOR FACE', 150, 'https://skin365.vn/wp-content/uploads/2021/04/AHC-Youth-Lasting-Real-Eye-Cream-For-Face-30ml.jpg', 'Chứa hơn 10 loại peptite giúp ngăn ngừa, chống lão hóa da.\r\nNiacinamide, Bifida, Glutathione có khả năng làm sáng vùng da dưới mắt.\r\nCollagen, Shea Butter, Ceramide… giúp tăng độ đàn hồi, căng bóng da.\r\nAntitoxin, Sodium Hyaluronate… chống mất nước và dưỡng ẩm cho da cực hiệu quả suốt nhiều giờ đồng hồ.\r\nThành phần trà xanh, rau má, protein sữa, dầu dừa và hơn 20 loại nấm, rễ cây quý giúp làn da khỏe mạnh, săn chắc và căng mịn.', 9, 1, 0, 2),
(15, 'KEM LÓT MAYBELLINE BABY SKIN INSTANT PORE ERASER 20ML', 150, 'https://skin365.vn/wp-content/uploads/2016/12/Maybelline-Baby-Skin-Instant-Pore-Eraser-20mL.jpg', 'Che phủ các vấn đề lỗ chân lông to, rãnh nhăn…\r\nTạo hàng rào bảo vệ da, giữ ẩm cho da mịn màng.\r\nKiểm soát lượng dầu thừa trong nhiều giờ liền.\r\nGiữ lớp trang điểm bền màu và đẹp hơn.\r\nKhông chứa hương liệu, chất kích ứng da.\r\nSử dụng được cho cả làn da nhạy cảm.', 10, 1, 1, 1),
(16, 'SON DƯỠNG CAUDALIE LIP CONDITIONER', 90, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2017/12/Caudalie-Lip-Conditioner-768x768.jpg', 'Son Dưỡng Môi Caudalie Lip Conditioner là dòng son dưỡng nổi tiếng của Caudalie với công nghệ chống oxy hóa và dưỡng chiết xuất từ nho đến từ hãng.', 12, 1, 1, 2),
(17, 'VIÊN UỐNG TRẮNG DA TRANSINO WHITE C CLEAR 120 VIÊN', 700, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2019/03/Transino-White-C-Clear-120-Vien-768x768.jpg', 'Viên Uống Trắng Da Transino White C Clear 120 Viên bổ sung Vitamin C, L-cysteine, Vitamin E, Vitamin B2, B6, B3 giúp bạn sở hữu làn da trắng sáng, mịn màng, mờ vết thâm nám, tàn nhang một cách đáng kể.', 6, 0, 1, 3),
(18, 'MẶT NẠ NGỦ MÔI LANEIGE LIP SLEEPING MASK', 200, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2021/11/Mat-Na-Ngu-Moi-LANEIGE-Lip-Sleeping-Mask-1-768x768.jpg', 'Giúp làm sạch tế bào da chết cho đôi môi trở nên mềm mại và đàn hồi hơn trong lúc ngủ.\r\nNgăn ngừa oxy hóa, hạn chế tính trạng môi khô, bong tróc.\r\nDưỡng ẩm cho môi.\r\nMùi hương dễ chịu và ngọt ngào từ các loại quả mọng.', 12, 0, 1, 2),
(19, 'GEL BÍ ĐAO RỬA MẶT COCOON WINTER MELON CLEANSER 140ML', 190, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2020/08/Gel-Bi-Dao-Rua-Mat-Cocoon-Winter-Melon-Cleanser-140mL-1-768x768.jpg', 'Bí đao: Theo sách y học cổ truyền, bí đao có đặc tính làm mát, làm giảm nhiệt, kháng viêm và diệt khuẩn giúp điều trị mụn trứng cá, mụn viêm.\r\nRau má: Các hợp chất sinh học như axit asiatic, asiaticoside, axit madecassic và madecassoside có trong rau má là những chất chính giúp tăng sinh collagen cho làn da, kháng viêm, làm dịu các vết đỏ và chống kích ứng.\r\nTinh dầu tràm trà: Loại tinh dầu có mùi thơm ấm áp, cay nồng giúp trị mụn trứng cá, vết thương, côn trùng cắn và nhiễm trùng nấm men.\r\nVitamin B3 (Niacinamide): Giúp hỗ trợ trị mụn hiệu quả, kiểm soát lượng dầu thừa và làm giảm sự xuất hiện của lỗ chân lông to.\r\nVitamin B5 (D-panthenol): Ngoài những công dụng tốt cho tóc, Vitamin B5 là một chất điều hòa da để cung cấp độ ẩm thẩm thấu sâu cho da, chữa lành vết thương và tác dụng chống viêm.\r\nBetaine: Là một sản phẩm tự nhiên tách ra như từ mật rỉ củ cải đường giúp dưỡng ầm cho da, bảo vệ da  bằng cách bảo vệ các tế bào khỏi mất nước và ngăn chặn protein của da khỏi bị biến tính.', 5, 0, 1, 2),
(20, 'KEM DƯỠNG SOME BY MI AHA-BHA-PHA 30 DAYS MIRACLE CREAM 60G', 155, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2018/10/Some-By-Mi-AHA-BHA-PHA-30-Days-Miracle-Cream-50ml-2-768x768.jpg', 'AHA – Alpha Hydroxy Acids: Nhóm acid ưa nước nên phá vỡ liên kết nước tế bào làm bong phần da chết, chất bẩn và chất sừng, tái tạo da giúp ngăn dấu hiệu tuổi tác trên da đồng thời thu nhỏ lỗ chân lông làm săn chắc tầng biểu bì.\r\nBHA – Beta Hydroxy Acids: Có khả năng tan trong dầu hỗ trợ tác động sâu, loại bỏ bụi bẩn và tế bào chết cứng đầu bên trong lỗ chân lông, làm thông thoáng các lỗ chân lông từ đó làm giảm nguy cơ gây mụn.\r\nPHA – Polyhydroxy Acids: Nhóm acid lành tính nên có khả năng làm dịu, kháng viêm mà không gây kích ứng ở một số loại da. PHA có trong kem cải thiện mụn AHA BHA PHA 30 Days Miracle Cream còn ngăn chặn oxy hóa, kích thích tái tạo tế bào da, làm giảm nếp nhăn giúp da mặt thêm săn chắc và khỏe mạnh.', 8, 1, 1, 2),
(22, 'GEL KẺ MẮT TONY MOLY BACKSTAGE GEL EYELINER', 125, 'https://skin365.vn/wp-content/uploads/2020/11/260975222_1062084791247424_5565509485743001258_n.jpg', 'Gel Kẻ Mắt Tony Moly Backstage Gel Eyeliner là một trong những sản phẩm best seller của hãng Tony Moly, có kết cấu dạng gel mềm kèm theo cây vọ vẽ chuyên dụng phía trên phần nắp của sản phẩm, giúp bạn dễ dàng viền mắt,  tạo ra một eyeliner sắc nét, ấn tượng.', 13, 0, 1, 1),
(23, 'CHÌ KẺ MẮT BBIA LAST AUTO GEL EYELINER SLIM', 140, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2022/03/Bbia-Last-Auto-Gel-Eyeliner-Slim-768x768.jpg', 'Chì kẻ mắt Bbia Last Auto Gel Eyeliner Slim cho đường kẻ chuẩn xác nhờ đầu kích thước siêu nhỏ chỉ 2mm. Công thức gel mềm mượt cho đường kẻ êm ái, không đứt gãy hay vón cục, dịu nhẹ với cả đôi mắt nhạy cảm. Khả năng kháng nước và chống lem trôi tuyệt vời giúp đường kẻ bền màu suốt ngày dài.', 13, 0, 0, 1),
(24, 'PHẤN MẮT 3CE MINI MULTI EYE COLOR PALETTE 3.2G', 320, 'https://skin365.vn/wp-content/uploads/2022/01/3CE-Mini-Multi-Eye-Color-Palette-3.2g.jpg', '- Kết cấu phấn siêu mịn, không vón cục, không gây bết dính, không tạo cảm giác nặng nề trên mắt.\r\n- Khả năng lên màu cực chuẩn và bám màu lâu trôi, nàng có thể yên tâm tỏa sáng với đôi mắt đẹp quyến rũ cả ngày dài.\r\n- Với thiết kế thông minh cùng khả năng mix màu linh hoạt, cả 4 gam màu đều có thể kết hợp với nhau hài hòa mà không phải lãng phí một màu nào.\r\n- Bên cạnh những ô màu matte, sản phẩm có những ô màu chứa hạt nhũ kích thước siêu nhỏ, dễ dàng bám chặt vào phần bầu mắt đem lại cho nàng 1 đôi mắt lấp lánh đầy quyến rũ và thu hút.', 3, 1, 1, 1),
(25, 'BẢNG MẮT COLOURPOP SWEET TALK PRESSED POWDER PALETTE\r\n', 500, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2021/04/Colourpop-Sweet-Talk-Pressed-Powder-Palette-768x768.jpg', 'Bảng Mắt Colourpop Sweet Talk Pressed Powder Palette là bảng phấn mắt 12 ô màu xinh xắn, nhẹ nhàng như “1 câu chuyện ngọt ngào” dành riêng cho mùa hè. Với chất phấn và màu sắc nổi bật, sản phẩm liên tục cháy hàng và gây sốt biết bao nàng phải tìm mua cho bằng được. ', 3, 0, 0, 0),
(26, 'BẢNG PHẤN MẮT MISSHA COLOR FILTER SHADOW PALETTE LINE FRIENDS – 05 BROWN', 310, 'https://skin365.vn/wp-content/uploads/2020/10/Missha-Color-Filter-Shadow-Palette-Line-Friends-%E2%80%93-05-Brown.jpg', 'Bảng Phấn Mắt Missha Line Friends Color Filter Palette là bảng phấn mắt nằm trong bộ sưu tập mới nhất của hãng kết hợp với Line Friends với các sản phẩm cực kì đa dạng và có bao bì cực kì dễ thương và bắt mắt, thu hút ngay từ cái nhìn đầu tiên.', 3, 1, 0, 1),
(27, 'PHẤN MẮT DẠNG THỎI BLACK ROUGE POWER PROOF STICK SHADOW', 140, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2021/04/0V_Soksg-768x768.jpeg', 'Phấn Mắt Black Rouge Power Proof Stick Shadow nằm trong bộ sưu tập hè với chủ đề Pool Party với dạng thỏi vô cùng dễ sử dụng kể cả những nàng mới tập tành make up.', 3, 0, 0, 0),
(28, 'NHŨ MẮT UNLEASHIA GET LOOSE GLITTER GEL', 160, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2022/06/DnXIIiTE-768x768.jpeg', 'Nhũ Mắt Unleashia Get Loose Glitter Gel là phấn nhũ mắt đến từ thương hiệu Unleashia với kết cấu dạng gel dễ tán, độ bám màu cao cùng màu sắc đa dạng cùng khả năng bắt sáng gương mặt hoàn hảo cho bạn đôi mắt xinh lung linh, tỏa sáng thu hút mọi ánh nhìn', 3, 0, 1, 0),
(29, 'KEM CHE KHUYẾT ĐIỂM MAYBELLINE FIT ME CONCEALER 6.8ML', 135, 'https://skin365.vn/wp-content/uploads/2021/07/Maybelline-Fit-Me-Concealer-6.8mL.jpg', 'Kem Che Khuyết Điểm Maybelline Fit Me Concealer 6.8mL với kết cấu lỏng mịn, tự nhiên dễ dàng che đi những khuyết điểm như mụn, nám hay tàn nhang với nhiều tông màu đa dạng cho bạn dễ dàng lựa chọn, giúp bạn có nột lớp nền tự nhiên hoàn hảo, không tì vết.', 7, 0, 0, 0),
(30, 'CHE KHUYẾT ĐIỂM CATRICE TRUE SKIN HIGH COVER CONCEALER 4.5ML', 135, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2021/05/Catrice-True-Skin-High-Cover-Concealer-4.5mL-768x768.jpg', 'Che Khuyết Điểm Catrice True Skin High Cover Concealer 4.5mL có độ che phủ cao, dễ dàng “xóa” đi các khuyết điểm trên da chỉ trong tích tắc. Bên cạnh đó sản phẩm còn có khả năng dưỡng ẩm giúp da không bị khô, gây mốc nền trong thời gian dài .', 7, 0, 0, 0),
(31, 'CHE KHUYẾT ĐIỂM MẮT MAYBELLINE INSTANT AGE REWIND ERASER DARK CIRCLE TREATMENT CONCEALER', 180, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2020/09/Maybelline-Instant-Age-Rewind-Eraser-Dark-Circle-Treatment-Concealer-1-768x768.jpg', 'Che Khuyết Điểm Mắt Maybelline Instant Age Rewind Eraser Dark Circle Treatment Concealer sẽ giúp che phủ đi từng khuyết điểm từ lớn đến nhỏ, giúp cho vùng da trở nên đều màu và trở nên tươi tắn hơn.', 7, 1, 1, 1),
(32, 'KEM LÓT 3CE PORE SILKY BALM 25G', 230, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2022/01/3CE-Pore-Silky-Balm-25g-768x768.jpg', 'Kem Lót 3CE Pore Silky Balm 25g được thiết kế nhỏ gọn với tông chủ đạo quen thuộc của hãng là màu đen huyền bí. Kèm theo 1 dụng cụ chuyên dụng để lấy sáp bên trong vừa sạch sẽ tiện lợi mà mọi cô nàng đều có thể mang theo bên mình.', 10, 1, 0, 0),
(33, 'KEM LÓT MẮT CATRICE EYE FOUNDATION WATERPROOF EYESHADOW PRIMER MATT', 135, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2018/11/Catrice-Eye-Foundation-Waterproof-Eyeshadow-Primer-Matt-768x768.jpg', 'Kem Lót Mắt Catrice Eye Foundation Waterproof Eyeshadow Primer Matt hiệu quả giúp cho lớp màu mắt bền màu hơn, lên màu mịn đẹp hơn và bám lâu hơn trên mắt. Sản phẩm sẽ là một lựa chọn tuyệt vời cho đôi mắt của bạn.', 10, 0, 0, 0),
(34, 'KEM LÓT MẮT CATRICE PRIME AND FINE EYESHADOW BASE 010', 130, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2018/11/241287745_221216930050844_466534955923232129_n-768x768.jpg', 'Kem Lót Mắt Catrice Prime And Fine Eyeshadow Base sẽ là một lựa chọn tuyệt vời cho đôi mắt của bạn vì sẽ giúp bảo vệ mắt trước các sản phẩm trang điểm, đồng thời cũng giúp cho phấn mắt lên chuẩn màu và lâu trôi hơn.', 10, 0, 0, 1),
(35, 'CHUỐT MI MAYBELLINE NEW YORK THE HYPER CURL WATERPROOF', 140, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2021/08/Maybelline-New-York-The-Hyper-Curl-Waterproof-768x768.jpg', 'Chuốt Mi Maybelline New York The Hyper Curl Waterproof của nhà Maybelline New York giúp làm dài mi và giúp hàng mi của bạn cong vút 100° bền đẹp suốt 18 giờ.', 11, 0, 0, 1),
(36, 'MASCARA LÀM DÀI VÀ CONG MI HEROINE MAKE LONG AND CURL SUPER WATERPROOF MASCARA', 240, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2020/11/Heroine-Make-Long-And-Curl-Super-Waterproof-Mascara-768x768.jpg', 'Một đôi mắt đẹp và thu hút thì không thể nào thiếu đi hàng mi cong và đen nhánh, hàng lông mi cong vút chính là điểm nhấn giúp cho đôi mắt của bạn có thêm chiều sâu, thu hút hơn. Mascara Kiss Me Heroine Make Long And Curl Super Waterproof Mascara  phù hợp với những bạn có  lông mi ngắ nhờ sản phẩm có chứa các sợi Polymer có khả năng kéo dài lông mi đến 120% so với lông mi vốn có, mang lại cho bạn hàng lông mi dài cong quyến rũ.', 11, 1, 0, 1),
(37, 'MASCARA LÀM DÀY VÀ DÀI MI MAYBELLINE NEW YORK THE MAGNUM BIG SHOT WATERPROOF', 160, 'https://skin365.vn/wp-content/uploads/2020/11/Maybelline-New-York-The-Magnum-Big-Shot-Waterproof.jpg', 'Mascara Làm Dày Và Dài Mi Maybelline New York The Magnum Big Shot Waterproof là một trong những dòng mascara được các nàng yêu thích nhất hiện nay. Bởi thiết kế nổi bật, nhỏ gọn, dễ dàng mang theo trong túi xách.', 11, 1, 0, 1),
(38, 'NƯỚC UỐNG TRẮNG DA SHISEIDO PURE WHITE 10 HỘP', 500, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2018/10/nuoc-uong-lam-trang-da-pure-white-shiseido-hop-10-lo-50ml-6.jpg', 'Công dụng: Làm mờ các vết thâm nám, tàn nhang… từ đó nuôi dưỡng da trắng sáng, đều màu. Phục hồi và bảo vệ da trước những tác hại của ánh nắng mặt trời, ức chế sự hình thành sắc tố Melanin. Dưỡng da căng mịn, thu nhỏ lỗ chân lông và để da trắng sáng tự nhiên.', 6, 0, 1, 3),
(39, 'VIÊN UỐNG TRẮNG DA DHC ADLAY EXTRACT 30 VIÊN', 190, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2018/10/Vien-Uong-Trang-Da-DHC-Adlay-Extract-30-Vien-768x768.jpg', 'Viên uống sáng da DHC Adlay Extract có thành phần chính là bột ý dĩ nổi tiếng với khả năng dưỡng ẩm và dưỡng trắng cho làn da. Sản phẩm xua tan các vết thâm sạm trên da, nuôi dưỡng làn da sáng mịn kết hợp tăng cường sức đề kháng và bảo vệ làn da của bạn.', 6, 1, 0, 3),
(40, 'VIÊN UỐNG DHC VITAMIN C HARD CAPSULE', 200, 'https://skin365.vn/wp-content/uploads/2021/10/ca34a1409d684affab567e7732146666.jpeg', 'Viên Uống DHC Vitamin C Hard Capsule giúp bảo vệ làn da của bạn khỏi các tác động của gốc tự do gây nếp nhăn và lão hóa da, hỗ trợ giúp da săn chắc mịn màng, giảm sắc tố da, ngăn ngừa nguy cơ ung thư da, kích thích sản sinh collagen cho bạn làm da trắng khỏe.', 6, 0, 0, 3),
(41, 'VIÊN UỐNG GIẢM CÂN DHC FORSKOHUI SOFT CAPSULE 60 VIÊN', 430, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2022/02/86735b23dc874bc01251652bd43f8ebd.jpg', 'Viên Uống Hỗ Trợ Giảm Cân DHC Forskohlii Soft Capsule là viên uống giúp hỗ trợ giảm cân, chăm sóc vóc dáng cho mọi người thuộc thương hiệu DHC đến từ Nhật Bản.', 14, 0, 1, 3),
(42, 'GIẤM ĐEN GIẢM CÂN ORIHIRO NHẬT BẢN', 200, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2018/10/vien-uong-dam-den-giam-can-orihiro-8552-1.jpg', 'Viên uống  giấm đen giảm cân Orihiro Nhật Bản được chiết xuất từ loại giấm đen tên là Kurozu, đây là loại giấm làm từ gạo lức đỏ lên men ủ theo phương pháp cổ truyền kết hợp với dầu hạt cải và đậu nành rất tốt cho sức khỏe. Viên giấm đen là thực phẩm giúp bạn giảm cân an toàn và khoa học, đặc biệt hỗ trợ giảm cân các phần tích nhiều mỡ như bụng, đùi dựa trên cơ chế tăng cường trao đổi chất và chuyển hóa chất béo, giảm lượng mỡ tích tụ trong cơ thể, từ đó đem lại và duy trì một vóc dáng thon gọn. Ngoài ra, sản phẩm còn giúp giảm lượng cholesterol trong máu, có khả năng kiểm soát huyết áp và bổ sung vitamin cho cơ thể, tuy giảm cân nhưng không gây ảnh hưởng đến sức khỏe, không tích nước, gây mệt người như các sản phẩm giảm cân cấp tốc trên thị trường.', 14, 0, 0, 3),
(43, 'VIÊN UỐNG GIẢM MỠ ĐÙI DHC 40 VIÊN', 170, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2018/10/Vien-Uong-Giam-Mo-Dui-DHC-40-Vien-1-768x768.jpg', 'Viên uống giảm mỡ đùi DHC được chiết xuất từ những thành phần thảo dược thiên nhiên mà vì thế được xem như là một loại thuốc dân gian giúp hỗ trợ giảm cân hiệu quả và phù hợp với nhiều đối tượng sử dụng khác nhau. Bên cạnh đó viên uống giảm mỡ đùi DHC không có chứa những chất hóa học nên giảm cân rất an toàn, có hiệu quả lâu dài, sử dụng lâu dài không gây ra những tác dụng phụ cho người sử dụng.', 14, 0, 0, 3),
(44, 'TRÀ GIẢM CÂN ORIHIRO NIGHT DIET TEA BEAUTY NHẬT BẢN', 220, 'https://skin365.cdn.vccloud.vn/wp-content/uploads/2019/08/Tra-Giam-Can-Orihiro-Night-Diet-Tea-Beauty-Nhat-Ban-768x768.jpg', 'Trà Giảm Cân Đẹp Da Orihiro Night Diet Tea Beauty Nhật Bản vừa giúp giảm mỡ bụng, ngăn ngừa tích tụ chất béo, đốt cháy mỡ thừa giúp dáng thon gọn hơn mà còn bổ sung collagen giúp tăng độ đàn hồi cho da, giúp giảm nếp nhăn, chống lão hóa.', 14, 1, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddonhang` (`iddonhang`),
  ADD KEY `idsanpham` (`idsanpham`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idkhachhang` (`idkhachhang`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_ibfk_1` (`idloaisanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`iddonhang`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idkhachhang`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idloaisanpham`) REFERENCES `loaisanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

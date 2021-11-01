-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2021 lúc 08:54 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `websitebansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` text DEFAULT NULL,
  `id_publishing_company` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `sell` float NOT NULL,
  `id_category` text NOT NULL,
  `description_detail` text NOT NULL,
  `date_publishing` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_address_shipping`
--

CREATE TABLE `tbl_address_shipping` (
  `id_address` text NOT NULL,
  `id_user` text NOT NULL,
  `diachi` text NOT NULL,
  `phuong` text NOT NULL,
  `quan` text NOT NULL,
  `tinh` text NOT NULL,
  `is_defaul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_category` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `id_parten_category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` text NOT NULL,
  `id_user` text NOT NULL,
  `id_address` text NOT NULL,
  `amount` int(11) NOT NULL,
  `status` text NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id_order_detail` text NOT NULL,
  `id_product` text NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_publishing_company`
--

CREATE TABLE `tbl_publishing_company` (
  `id_publishing_company` text COLLATE utf8_vietnamese_ci NOT NULL,
  `name` text COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` text COLLATE utf8_vietnamese_ci NOT NULL,
  `address` text COLLATE utf8_vietnamese_ci NOT NULL,
  `email` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id_role` text DEFAULT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` text NOT NULL,
  `id_role` text NOT NULL,
  `name` text NOT NULL,
  `sex` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `birthday` date NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_use_vouncher`
--

CREATE TABLE `tbl_use_vouncher` (
  `id` text COLLATE utf8_vietnamese_ci NOT NULL,
  `id_vouncher` text COLLATE utf8_vietnamese_ci NOT NULL,
  `id_user` text COLLATE utf8_vietnamese_ci NOT NULL,
  `date_user` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vouncher`
--

CREATE TABLE `tbl_vouncher` (
  `id_vouncher` text COLLATE utf8_vietnamese_ci NOT NULL,
  `name` text COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8_vietnamese_ci NOT NULL,
  `code` text COLLATE utf8_vietnamese_ci NOT NULL,
  `sell` text COLLATE utf8_vietnamese_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

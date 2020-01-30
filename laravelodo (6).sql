-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 08:49 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelodo`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) NOT NULL,
  `sistem` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bagian` varchar(255) NOT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `kodeunik` varchar(10) NOT NULL,
  `tanggapan` text,
  `tag` varchar(10) NOT NULL DEFAULT 'Diterima',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `sistem`, `nama`, `bagian`, `telp`, `email`, `title`, `description`, `file`, `kodeunik`, `tanggapan`, `tag`, `created_at`, `updated_at`, `deleted_at`) VALUES
(57, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'odo@gmail.com', 'userrr', ',l,l,llllllllllllllllll', NULL, '2WFxml9A1T', NULL, 'diproses', '2020-01-17 01:56:28', '2020-01-21 00:49:16', NULL),
(58, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'formrmrm', 'okkkkkkkkkkkkkkkkk', NULL, '1AOGP5JKpD', NULL, 'Diterima', '2020-01-17 02:27:39', '2020-01-17 02:27:39', NULL),
(59, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'mantap2', 'cccccccccccccccccccc', NULL, '81JZpor3OH', 'aman bos', 'diproses', '2020-01-17 03:06:58', '2020-01-20 23:30:07', NULL),
(60, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'admin user fix broooj', 'cccccccccccccccccccccccc', NULL, 'wqB3UEgtSN', NULL, 'Diterima', '2020-01-17 03:08:07', '2020-01-17 03:08:07', NULL),
(61, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'halo halo bandung bro', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvv', NULL, 'uDLvFJ4MnA', NULL, 'Diterima', '2020-01-17 03:10:11', '2020-01-17 03:10:11', NULL),
(62, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'halo halo bandung bro', 'cccccccccccccccccccccccc', NULL, 'Vv0BGUdQIS', NULL, 'Diterima', '2020-01-17 03:16:47', '2020-01-17 03:16:47', NULL),
(63, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'odo@gmail.com', 'halo halo bandung bro', 'ccccccccccccccccccccc', 'prt1.PNG', 'Xck6HQE2ip', NULL, 'Diterima', '2020-01-17 03:21:10', '2020-01-17 03:21:10', NULL),
(64, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'cccccccccccccccccccccc', '1579256866_', 'zifJKV0amh', NULL, 'Diterima', '2020-01-17 03:27:46', '2020-01-17 03:27:46', NULL),
(65, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'halo halo bandung bro', 'vvvvvvvvvvvvvvvvvvvvv', '1579256982_prt7.PNG', 'mhpxcN4OdJ', NULL, 'Diterima', '2020-01-17 03:29:42', '2020-01-17 03:29:42', NULL),
(66, '', 'Muhammad Rifqi', 'Chemical Plant', '77777', 'admin@handesk.io', 'halo halo bandung bro', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvv', NULL, 'm14VKzt6S8', NULL, 'Diterima', '2020-01-17 04:07:10', '2020-01-17 04:07:10', NULL),
(67, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'ccccccccccccccccccccccccccc', NULL, 'ztdK1mnfpJ', NULL, 'Diterima', '2020-01-17 05:41:26', '2020-01-17 05:41:26', NULL),
(68, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'ko gituuuuuuu', 'cccccccccccccccccccccccc', NULL, 'S0YDsgkmM3', NULL, 'Diterima', '2020-01-17 05:42:37', '2020-01-17 05:42:37', NULL),
(69, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'admin user fix broooj', 'vvvvvvvvvvvvvvvvvvvvvvvvv', NULL, 'YLrkBb7R2Q', NULL, 'Diterima', '2020-01-17 05:45:58', '2020-01-17 05:45:58', NULL),
(70, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'admin user fix broooj', 'vvvvvvvvvvvvvvvvvvvvvvvvv', NULL, 'UZVWC6wd0u', NULL, 'Diterima', '2020-01-17 05:49:14', '2020-01-17 05:49:14', NULL),
(71, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'admin user fix broooj', 'vvvvvvvvvvvvvvvvvvvvvvvvv', NULL, 'fu5MsF7w1P', NULL, 'Diterima', '2020-01-17 05:50:01', '2020-01-17 05:50:01', NULL),
(72, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'halo halo bandung bro', 'ccccccccccccccccccccccccccccc', NULL, '5CbIFcEvS3', NULL, 'Diterima', '2020-01-17 06:04:22', '2020-01-17 06:04:22', NULL),
(73, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'goooooooooooooo', 'llllllllllllllllllllllll', NULL, 'hzu9K8qCrb', NULL, 'Diterima', '2020-01-17 06:06:06', '2020-01-17 06:06:06', NULL),
(74, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'goooooooooooooo', 'llllllllllllllllllllllll', NULL, 'RtXgcUnMKw', NULL, 'Diterima', '2020-01-17 06:07:05', '2020-01-17 06:07:05', NULL),
(75, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', NULL, 'XDFvlM62jH', NULL, 'Diterima', '2020-01-17 06:08:34', '2020-01-17 06:08:34', NULL),
(76, '', 'Muhammad Rifqi', 'Chemical Plant', '101010', 'admin@handesk.io', 'mantap2', 'cccccccccccccccccccc', NULL, 'vNg28QaBxU', NULL, 'Diterima', '2020-01-17 06:11:30', '2020-01-17 06:11:30', NULL),
(77, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'ini setelah di prefix', 'ccccccccccccccccccccccccccc', NULL, 'P78jTGesrJ', NULL, 'Diterima', '2020-01-17 06:17:18', '2020-01-17 06:17:18', NULL),
(78, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'wait a mintue', 'vvvvvvvvvvvvvvvvvvvvvvvv', NULL, '5K9xZLIhPn', NULL, 'Diterima', '2020-01-17 06:20:01', '2020-01-17 06:20:01', NULL),
(79, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'wait a mintue', 'vvvvvvvvvvvvvvvvvvvvvvvv', NULL, 'xIk81n9sDO', NULL, 'Diterima', '2020-01-17 06:21:32', '2020-01-17 06:21:32', NULL),
(80, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'wait a mintue', 'vvvvvvvvvvvvvvvvvvvxxxxxxxxxxvvvvv', NULL, 'YLK9DHqQjc', NULL, 'Diterima', '2020-01-17 06:22:14', '2020-01-17 06:22:14', NULL),
(81, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'wait a mintue', 'vvvvvvvvcccccccccvvvvvvvvvvvxxxxxxxxxxvvvvv', NULL, '1yhC3sKceF', NULL, 'Diterima', '2020-01-17 06:26:18', '2020-01-17 06:26:18', NULL),
(82, '', 'Muhammad Rifqi', 'dept ti', '010101', 'admin@handesk.io', 'mantap2', 'ccccccccccccccccccccc', '1579273314_prt7.PNG', '10bjNJYSaK', NULL, 'Diterima', '2020-01-17 08:01:54', '2020-01-17 08:01:54', NULL),
(83, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'cccccccccccccccc', '20200117150257_prt7.PNG', 'SDg8bdwRM2', NULL, 'Diterima', '2020-01-17 08:02:57', '2020-01-17 08:02:57', NULL),
(84, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'halo halo bandung bro', 'vvvvvvvvvvvvvvvvvvvvvvvv', NULL, '7TqahESkLz', NULL, 'Diterima', '2020-01-17 08:54:15', '2020-01-17 08:54:15', NULL),
(85, '', 'odo', 'Chemical Plant', '77777', 'admin@handesk.io', 'mantap2', 'vvvvvvvvvvvvvvvvvvvv', '20200117161031_PNG', 'xpdZUiuKQY', NULL, 'Diterima', '2020-01-17 09:10:31', '2020-01-17 09:10:31', NULL),
(86, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'wuhuuuuuuuu', 'nnnnnnnnnnnnnnnnn', '20200117161121_prt9b.PNG', '26nKSsDhTA', NULL, 'Diterima', '2020-01-17 09:11:21', '2020-01-17 09:11:21', NULL),
(87, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'mantap2', 'ooooooooooooooooo', 'data_file\\20200117161626_prt5.PNG', 'tu7Gsbnc84', NULL, 'Diterima', '2020-01-17 09:16:26', '2020-01-17 09:16:26', NULL),
(88, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'appppppppppppppp', 'cccccccccccccccccccccccc', 'data_file\\20200117161823_prt6.PNG', 'N5UbAoV0xw', NULL, 'Diterima', '2020-01-17 09:18:23', '2020-01-17 09:18:23', NULL),
(89, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'halo halo bandung bro', 'vvvvvvvvvvvvvvvvvvv', 'data_file\\20200117162249_prt5.PNG', 'fHbYvJu6SR', NULL, 'Diterima', '2020-01-17 09:22:49', '2020-01-17 09:22:49', NULL),
(90, '', 'Muhammad Rifqi', 'Chemical Plant', '77777', 'odo@gmail.com', 'saatnya tidur', 'ccccccccccccccccccccccc', 'data_file\\20200117171851_IMG_0100.JPG', 'Ejo9Z1S4ab', NULL, 'Diterima', '2020-01-17 10:18:51', '2020-01-17 10:18:51', NULL),
(91, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'ccccccccccccccccccc', NULL, '2gYPe094pd', NULL, 'Diterima', '2020-01-17 10:23:06', '2020-01-17 10:23:06', NULL),
(92, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'oke sleep', 'dddddddddddddd', 'data_file\\20200117172405_111111.PNG', 'fqRpgnM1vy', NULL, 'Diterima', '2020-01-17 10:24:05', '2020-01-17 10:24:05', NULL),
(93, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'cccccccccccccccccccccc', NULL, 'PvGRDTCtha', NULL, 'Diterima', '2020-01-18 04:33:39', '2020-01-18 04:33:39', NULL),
(94, '', 'user ganteng', 'Chemical Plant', '010101', 'admin@handesk.io', 'halo halo bandung bro', 'vvvvvvvvvvvvvvvvvvvv', NULL, 'uDn1UiArJQ', NULL, 'Diterima', '2020-01-18 04:43:32', '2020-01-18 04:43:32', NULL),
(95, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'vvvvvvvvvvmmmmmmm', NULL, 'j3W7i0tlBF', NULL, 'Diterima', '2020-01-18 04:45:51', '2020-01-18 04:45:51', NULL),
(96, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'masuk dia', 'cccccccccccccccccccc', NULL, '08uqF2MnHr', NULL, 'Diterima', '2020-01-19 08:03:39', '2020-01-19 08:03:39', NULL),
(97, '', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'wrapped', 'vvvvvvvvvvvvvvv', 'data_file\\20200120043636_IMG_20190310_121201.jpg', 'uCKrm1dRGi', NULL, 'Diterima', '2020-01-19 21:36:36', '2020-01-19 21:36:36', NULL),
(98, '2', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'ccccccccccccccccccccc', NULL, 'opelYbQaJs', NULL, 'Diterima', '2020-01-20 18:51:05', '2020-01-20 18:51:05', NULL),
(99, '3', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvv', NULL, 'i581GDprTS', NULL, 'Diterima', '2020-01-20 18:55:44', '2020-01-20 18:55:44', NULL),
(100, '2', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'ccccccccccccccccccccccc', NULL, 'nyAqTmErBP', NULL, 'Diterima', '2020-01-20 18:58:45', '2020-01-20 18:58:45', NULL),
(101, 'SISTEM INFORMASI B', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'ccccccccccccccccccccccccccc', NULL, 'sTn0ziOW2M', NULL, 'Diterima', '2020-01-20 19:00:00', '2020-01-20 19:00:00', NULL),
(102, 'SISTEM INFORMASI C', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'halo halo bandung bro', 'cccccccccccccccccccccccccccccc', NULL, 'bRCVQtmhF7', NULL, 'Diterima', '2020-01-20 19:01:22', '2020-01-20 19:01:22', NULL),
(103, '0', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'vvvvvvvvvvvvvvvvvvvvv', NULL, 'uKFImSdWaJ', NULL, 'Diterima', '2020-01-20 19:57:57', '2020-01-20 19:57:57', NULL),
(104, 'SISTEM INFORMASI A', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'ccccccccccccccccccccc', NULL, '2VHLrQMTeI', NULL, 'Diterima', '2020-01-20 20:05:38', '2020-01-20 20:05:38', NULL),
(105, 'SISTEM INFORMASI B', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'cccccccccccccccccccccccccccccc', 'data_file\\20200121042432_prt5.PNG', 'n9pZXjAfbR', 'oke pak siap eh bentar', 'diproses', '2020-01-20 21:24:32', '2020-01-20 21:30:05', NULL),
(106, 'SISTEM INFORMASI A', 'Muhammad Rifqi', 'keamanan', '77777', 'ronaldo@yahoo.com', 'mantap2', 'cccccccccccccccccccccccccccccc', 'data_file\\20200121063556_prt9b.PNG', 'xPl2vQK4n8', NULL, 'Diterima', '2020-01-20 23:35:56', '2020-01-20 23:35:56', NULL),
(107, 'SISTEM INFORMASI A', 'Muhammad Rifqi', 'keamanan', '77777', 'ronaldo@yahoo.com', 'mantap2', 'cccccccccccccccccccccccccccccc', 'data_file\\20200121063825_prt9b.PNG', '7GpOjB3J0s', 'laporan diproses', 'diproses', '2020-01-20 23:38:25', '2020-01-20 23:39:14', NULL),
(108, 'SISTEM INFORMASI B', 'Muhammad Rifqi', 'Chemical Plant', '010101', 'admin@handesk.io', 'judul keluhan', 'vvvvvvvvvvvvvvvvvvv', 'data_file\\20200121074402_prt1.PNG', '9BaDnpYmRV', NULL, 'Diterima', '2020-01-21 00:44:02', '2020-01-21 00:44:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_01_07_070445_create_forums_table', 1),
(2, '2020_01_07_072023_create_users_table', 1),
(3, '2020_01_07_072125_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sistems`
--

CREATE TABLE `sistems` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sistems`
--

INSERT INTO `sistems` (`id`, `nama`) VALUES
(1, 'SISTEM INFORMASI A'),
(2, 'SISTEM INFORMASI B'),
(3, 'SISTEM INFORMASI C');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '1',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'odorifqi', 'odo@gmail.com', 2, '$2y$10$0FXZVpF6T7psWYfgVAUQCeqswcqvaFpLQDcX.wHBxu6Wb2jy2bk0y', 'b72rPHBqjeiYBHBDvugPZI2bouJVcWdwKp3D980NeIpOMYRn57HrmcyLE30q', '2020-01-12 20:30:06', '2020-01-12 20:30:06'),
(2, 'ododoo', 'admin@handesk.io', 1, '$2y$10$wkMy6f9GmOJTenEWNYxAIOSJJyb08SXzNiiNck721OuvHHiwnYApu', NULL, '2020-01-12 20:36:26', '2020-01-12 20:36:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kodeunik` (`kodeunik`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sistems`
--
ALTER TABLE `sistems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sistems`
--
ALTER TABLE `sistems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

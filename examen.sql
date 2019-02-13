-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 13, 2019 at 10:16 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examen`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `idRegistro` int(10) UNSIGNED NOT NULL,
  `fechaNac` date NOT NULL,
  `IngresoAnual` decimal(10,2) NOT NULL,
  `fk_idUsuario` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`idRegistro`, `fechaNac`, `IngresoAnual`, `fk_idUsuario`, `created_at`, `updated_at`) VALUES
(1, '2019-02-01', '5555.00', 1, '2019-02-13 14:47:21', '2019-02-13 14:47:21'),
(2, '2019-02-09', '6.00', 1, '2019-02-13 14:49:49', '2019-02-13 14:49:49'),
(3, '2019-02-12', '8888.00', 1, '2019-02-13 14:52:21', '2019-02-13 14:52:21'),
(4, '2019-02-16', '434.00', 1, '2019-02-13 14:53:08', '2019-02-13 14:53:08'),
(5, '2019-02-21', '12.00', 1, '2019-02-13 14:56:10', '2019-02-13 14:56:10'),
(6, '2019-02-28', '2121.00', 1, '2019-02-13 14:57:34', '2019-02-13 14:57:34'),
(7, '2019-02-15', '6666.00', 1, '2019-02-13 14:58:27', '2019-02-13 14:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_02_13_032332_create_user_register_table', 1),
(26, '2019_02_13_032500_create_data_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aPaterno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aMaterno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`idUsuario`, `nombre`, `aPaterno`, `aMaterno`, `created_at`, `updated_at`) VALUES
(1, '2', '3', '4', '2019-02-13 14:47:21', '2019-02-13 14:47:21'),
(2, 'ee', 't', 'yy', '2019-02-13 14:49:49', '2019-02-13 14:49:49'),
(3, '12', 'xxxx', 'xxxx', '2019-02-13 14:52:21', '2019-02-13 14:52:21'),
(4, 'fd', 'gdf', 'dfg', '2019-02-13 14:53:08', '2019-02-13 14:53:08'),
(5, '123', '123', '123', '2019-02-13 14:55:17', '2019-02-13 14:55:17'),
(6, '123', '123', '123', '2019-02-13 14:55:46', '2019-02-13 14:55:46'),
(7, '123', '123', '123', '2019-02-13 14:55:50', '2019-02-13 14:55:50'),
(8, '123', '123', '123', '2019-02-13 14:56:10', '2019-02-13 14:56:10'),
(9, 'abc', 'cde', 'hij', '2019-02-13 14:57:11', '2019-02-13 14:57:11'),
(10, 'abc', 'cde', 'hij', '2019-02-13 14:57:22', '2019-02-13 14:57:22'),
(11, 'abc', 'cde', 'hij', '2019-02-13 14:57:34', '2019-02-13 14:57:34'),
(12, 'rft', 'tttuuuuu', 'ttt', '2019-02-13 14:58:27', '2019-02-13 14:58:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`idRegistro`),
  ADD KEY `data_user_fk_idusuario_foreign` (`fk_idUsuario`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `idRegistro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_user`
--
ALTER TABLE `data_user`
  ADD CONSTRAINT `data_user_fk_idusuario_foreign` FOREIGN KEY (`fk_idUsuario`) REFERENCES `user_register` (`idUsuario`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2024 at 05:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lasttask`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `role`) VALUES
(1, 'sri', 'sri@gmail.com', 'hr'),
(2, 'ravi', 'ravi@gmail.com', 'manager'),
(3, 'arun', 'arun@gmail.com', 'ceo'),
(4, 'sekar', 'sekar@gmail.com', 'gm'),
(5, 'malik', 'malik@gmail.com', 'ceo'),
(6, 'abnu', 'anbu@gmail.com', 'analyst'),
(7, 'ram', 'ram@gmail.com', 'leader');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LoginDetail`
--

CREATE TABLE `LoginDetail` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lastlogindate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `LoginDetail`
--

INSERT INTO `LoginDetail` (`id`, `email`, `lastlogindate`) VALUES
(7, 'ana@gmail.com', '2024-10-14'),
(8, 'muthu@gmail.com', '2024-10-14'),
(9, 'binu@gmail.com', '2024-10-14'),
(10, 'ana@gmail.com', '2024-10-14'),
(11, 'ana@gmail.com', '2024-10-14'),
(12, 'ana@gmail.com', '2024-10-14'),
(13, 'siva@gmail.com', '2024-07-11'),
(14, 'ana@gmail.com', '2024-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_11_114817_password_resets', 2),
(5, '2024_10_13_045741_create_login_details_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('o2KXod87xZaiBB2P0Z3HL6yKiYlXYVjoxz7tVPQz', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoibFJTYmdTMXdVa3Q0eXhKSVptSGdCcmsySnV1NU12aVg0MThlOXlDaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9sb2dpbiI7fX0=', 1728916513),
('Pk8qSO841DHAYSDPk8g5JJWYPPCKoOsVrGQQV3JS', 3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicDQ2V3czZExoNWdvRHhXTkZhYVZERlNadlNLaHZ6Y21uVXJEVWRRcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9lbXBsb3llZXMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1728961345);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` varchar(50) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sri', 'manivannan725@gmail.com', NULL, '$2y$12$HdNnNP/p7.F.WKoLfV7woukDgEajl5bX5CZQUOrIpDz6WAQcxvxIG', 'user', NULL, '2024-10-11 06:51:21', '2024-10-11 06:56:18'),
(2, 'kalyan', 'kalyan@gmail.com', NULL, '$2y$12$0U1iyQGFfiIn8HlDH6.1..h4g32DpNEEBFv5BdGrqGp5QUhXM/OTa', 'user', NULL, '2024-10-12 01:19:19', '2024-10-12 01:19:19'),
(3, 'ana', 'ana@gmail.com', NULL, '$2y$12$cnbE2g5NMKyGlXlUjtJ5i.CwsqL1F6lX7PtI8t9ELSMhPEjO2LJke', 'Admin', NULL, '2024-10-12 21:30:39', '2024-10-13 19:23:35'),
(4, 'binu', 'binu@gmail.com', NULL, '$2y$12$6FB0bS65tMTqZgRBNthkCey0I0B5DpK07L70JOS1VsZV438zd0FZK', 'user', NULL, '2024-10-13 20:48:40', '2024-10-13 20:48:40'),
(5, 'abi', 'abi@gmail.com', NULL, '$2y$12$./f6jMcqvvg7XyCp8WvkxuluLPLWaoOZejaZDxJGOGF/tE8va2U0y', 'Admin', NULL, '2024-10-13 21:50:16', '2024-10-13 21:50:16'),
(6, 'raj', 'raj@gmail.com', NULL, '$2y$12$PwWDI5/o31SjTGHaYIRr0umtw4.Fl.2I7XhgAr7SXmcEQQZUQ62Oa', 'user', NULL, '2024-10-13 23:04:44', '2024-10-13 23:04:44'),
(7, 'mari', 'mari@gmail.com', NULL, '$2y$12$cRKNOwxZWYCRXnWbgq5vyexw2hCoevqAyrRoJA3I9oyapz3WqvMzK', 'user', NULL, '2024-10-13 23:08:05', '2024-10-13 23:08:05'),
(8, 'ia', 'ia@gmail.com', NULL, '$2y$12$s4iNIZV4PHx/Y3xJeFv/7.Dj2NeGYJ/zZ.SBX7oaeVkY3WaDjpJjK', 'user', NULL, '2024-10-13 23:08:51', '2024-10-13 23:08:51'),
(9, 'giri', 'giri@gmail.com', NULL, '$2y$12$93dXBJtmIPdZnkc4c4INZuKlPt7/w9e4FT2/RRVuZXU1/VGu866V2', 'user', NULL, '2024-10-13 23:13:48', '2024-10-13 23:13:48'),
(10, 'sandy', 'sandy@gmail.com', NULL, '$2y$12$scm9i9RxAFCFNIoMDFCTjungYD3WtmX5ixDIxw9ER30a5WhQ9kwIW', 'user', NULL, '2024-10-14 00:20:56', '2024-10-14 00:20:56'),
(11, 'kalya', 'kalya@gmail.com', NULL, '$2y$12$0NpSgAtDifNDDQd8G5u38O4VUoTyLWLnQf7sha8Gfp.9AzEA2Yeva', 'user', NULL, '2024-10-14 00:24:46', '2024-10-14 00:24:46'),
(12, 'srk', 'srk@gmail.com', NULL, '$2y$12$GCYLCxJ.P8ooObFskm6MIulQeGGvZsfJym8ikbXGL2qET3tvT.6Je', 'user', NULL, '2024-10-14 00:27:38', '2024-10-14 00:27:38'),
(13, 'sk', 'sk@gail.com', NULL, '$2y$12$33sMtmxw4Q4tzcQ9gJpWzu4qaeRHnb2.dWW3xoiGiTA/KlaDBGQam', 'user', NULL, '2024-10-14 00:28:33', '2024-10-14 00:28:33'),
(14, 'prem', 'prem@gamil.com', NULL, '$2y$12$W18KgJ1W4XQc7W3UiAkBMeq0GDO1/8tgQQOkyQt4OFSFBsOIv7XOW', 'user', NULL, '2024-10-14 00:32:37', '2024-10-14 00:32:37'),
(15, 'sid', 'sid@gmail.com', NULL, '$2y$12$e5sN/XqONRJDOpx5JkFtt.hhpqKruwhx2PIOkSPQIAFeWA2f925i2', 'user', NULL, '2024-10-14 00:33:55', '2024-10-14 00:33:55'),
(16, 'venba', 'venba@gamil.com', NULL, '$2y$12$UWdGxw4bmjXQ2qQycT94K.yEUpzzIPkoyxrVp7enplXi.o8DmGBey', 'user', NULL, '2024-10-14 00:39:03', '2024-10-14 00:39:03'),
(17, 'malik', 'malik@gmail.com', NULL, '$2y$12$yTVFIjhzJMUpcVsVwGU9DOR.GN/1oqoLMiANq9eOeCSAzMATdB.42', 'user', NULL, '2024-10-14 01:29:18', '2024-10-14 01:29:18'),
(18, 'madhu', 'madhu@gmail.com', NULL, '$2y$12$jANewq7HwrlUUf7QH..fzexebr.3befEkyWcSuY/gdES/Fk7TZ5YS', 'user', NULL, '2024-10-14 02:57:26', '2024-10-14 02:57:26'),
(19, 'mass', 'mass@gmail.com', NULL, '$2y$12$dxfKOYxeetYy2CIgridICeS.72zCSQM./D7uMgnq2d/AJdeZFM6fa', 'user', NULL, '2024-10-14 03:18:52', '2024-10-14 03:18:52'),
(20, 'karupi', 'karupi@gmail.com', NULL, '$2y$12$y/iriIw7tgVqgm/kj7gr8eZBknyvayu9YGM.8Bhjs4XB1VjwPsXr6', 'user', NULL, '2024-10-14 03:28:05', '2024-10-14 03:28:05'),
(21, 'san', 'san@gamil.com', NULL, '$2y$12$3JDQ9SvgHvJgY09zkYstF.vPQI.KdiVPQS1m/.i1BP5.RMZBs64Km', 'user', NULL, '2024-10-14 03:30:34', '2024-10-14 03:30:34'),
(22, 'muthu', 'muthu@gmail.com', NULL, '$2y$12$XfTs3rpH3YW4kVWl9ajT4Ogi/lbVhyhM68i.P3F8HIcBi2Lp7pQ2.', 'user', NULL, '2024-10-14 03:49:13', '2024-10-14 03:49:29'),
(23, 'user', 'user@gmail.com', NULL, '$2y$12$QigvHWK4GG5dsodaqs20C.uSBP5dkEzrcUSoiEqOoIWosYO0BRPuu', 'Admin', NULL, '2024-10-14 07:59:26', '2024-10-14 08:01:28'),
(24, 'vj', 'vj@gmail.com', NULL, '$2y$12$UMR.4pQI5/QulYVffCLuseabcYTmQrQfbbJqY5d6kIvh.ayszygcm', 'Admin', NULL, '2024-10-14 08:46:28', '2024-10-14 09:04:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LoginDetail`
--
ALTER TABLE `LoginDetail`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LoginDetail`
--
ALTER TABLE `LoginDetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

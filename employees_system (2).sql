-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 10:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, '2023-01-02 19:15:32', '2023-01-02 19:15:32'),
(2, NULL, '2023-01-02 19:15:32', '2023-01-02 19:15:32'),
(3, 1, '2023-01-02 19:15:32', '2023-01-02 19:15:32'),
(4, 1, '2023-01-02 19:15:32', '2023-01-02 19:15:32'),
(5, 2, '2023-01-02 19:15:32', '2023-01-02 19:15:32'),
(6, 3, '2023-01-02 19:15:32', '2023-01-02 19:15:32'),
(7, 3, '2023-01-02 19:15:32', '2023-01-02 19:15:32'),
(8, 3, '2023-01-02 19:15:32', '2023-01-02 19:15:32'),
(11, 1, '2023-01-08 17:53:36', '2023-01-08 18:17:37'),
(12, NULL, '2023-01-08 18:11:52', '2023-01-08 18:11:52'),
(13, 11, '2023-01-08 18:12:01', '2023-01-08 18:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `department_data`
--

CREATE TABLE `department_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `department_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_data`
--

INSERT INTO `department_data` (`id`, `department_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'IT', 'IT', '2023-01-02 19:16:46', '2023-01-02 19:16:46'),
(2, 2, 'finance', 'finance', '2023-01-02 19:16:46', '2023-01-02 19:16:46'),
(3, 3, 'programming', 'programming', '2023-01-02 19:16:46', '2023-01-02 19:16:46'),
(4, 4, 'Network', 'Network', '2023-01-02 19:16:46', '2023-01-02 19:16:46'),
(5, 5, 'accountants', 'accountants', '2023-01-02 19:16:46', '2023-01-02 19:16:46'),
(6, 6, 'UI', 'UI', '2023-01-02 19:16:46', '2023-01-02 19:16:46'),
(7, 7, 'Developers', 'Developers', '2023-01-02 19:16:46', '2023-01-02 19:16:46'),
(8, 8, 'UX', 'UX', '2023-01-02 19:16:46', '2023-01-02 19:16:46'),
(12, 11, 'test', 'test', '2023-01-08 17:53:36', '2023-01-08 17:53:36'),
(13, 12, 'test1', 'test23123123', '2023-01-08 18:11:52', '2023-01-08 18:11:52'),
(14, 13, 'test1', 'test23123123', '2023-01-08 18:12:01', '2023-01-08 18:12:01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employees_departments`
-- (See below for the actual view)
--
CREATE TABLE `employees_departments` (
`name` varchar(255)
,`title` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `department_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-01-02 19:22:24', '2023-01-02 19:22:24'),
(2, 2, '2023-01-02 19:22:24', '2023-01-02 19:22:24'),
(3, 3, '2023-01-02 19:22:24', '2023-01-02 19:22:24'),
(4, 4, '2023-01-02 19:22:24', '2023-01-02 19:22:24'),
(5, 5, '2023-01-02 19:22:24', '2023-01-02 19:22:24'),
(6, 6, '2023-01-02 19:22:24', '2023-01-02 19:22:24'),
(7, 7, '2023-01-02 19:22:24', '2023-01-02 19:22:24'),
(8, 8, '2023-01-02 19:22:24', '2023-01-02 19:22:24'),
(9, 7, '2023-01-02 19:22:24', '2023-01-02 19:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_data`
--

CREATE TABLE `jobs_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs_data`
--

INSERT INTO `jobs_data` (`id`, `job_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'IT ', 'IT', '2023-01-02 19:25:30', '2023-01-02 19:25:30'),
(2, 2, 'finance', 'finance', '2023-01-02 19:25:30', '2023-01-02 19:25:30'),
(3, 3, 'programmer', 'programmer', '2023-01-02 19:25:30', '2023-01-02 19:25:30'),
(4, 4, 'network engineer', 'network engineer', '2023-01-02 19:25:30', '2023-01-02 19:25:30'),
(5, 5, 'accountant', 'accountant', '2023-01-02 19:25:30', '2023-01-02 19:25:30'),
(6, 6, 'UI engineer', 'UI engineer', '2023-01-02 19:25:30', '2023-01-02 19:25:30'),
(7, 7, 'backend developer', 'backend developer', '2023-01-02 19:25:30', '2023-01-02 19:25:30'),
(8, 9, 'frontend developer', 'frontend developer', '2023-01-02 19:25:30', '2023-01-02 19:25:30'),
(9, 8, 'ux engineer', 'ux engineer', '2023-01-02 19:25:30', '2023-01-02 19:25:30');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `department_id` int(11) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `email`, `email_verified_at`, `password`, `job_id`, `department_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tomasa Jerde', 'dist/img/avatar5.png', 'jcorwin@example.org', '2023-01-02 17:35:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'EC4Vl7YOnX', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(2, 'Jonathon Lockman', 'dist/img/avatar5.png', 'pmaggio@example.org', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 2, 'RY8GDwPuAV', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(3, 'Toni Effertz', 'dist/img/avatar5.png', 'littel.shaina@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'DWrFG73f68', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(4, 'Mr. Tatum Cassin IV', 'dist/img/avatar5.png', 'princess51@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 7, 'shEPNmX6Dy', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(5, 'Everett Huels', 'dist/img/avatar5.png', 'ebergnaum@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 3, 'i0vecPk8ha', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(6, 'Prof. Randy Schiller', 'dist/img/avatar5.png', 'kailyn.mraz@example.net', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'Z4f7x1vScY', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(7, 'Donavon Zemlak', 'dist/img/avatar5.png', 'jana.mckenzie@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'KC8lkpxX3r', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(8, 'Elisa Towne', 'dist/img/avatar5.png', 'gschoen@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 8, 'mPWPEnyoX2', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(9, 'Dr. Nikko Orn DDS', 'dist/img/avatar5.png', 'jude73@example.org', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 7, 'GJJyIITcha', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(10, 'Eunice Sanford', 'dist/img/avatar5.png', 'chanel94@example.net', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'urIqKSfRmb', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(11, 'Dr. Tristin Botsford V', 'dist/img/avatar5.png', 'teffertz@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'rYuuf0TTgR', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(12, 'Ms. Madie Welch', 'dist/img/avatar5.png', 'schuppe.leonie@example.net', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 6, '1GY5nx5BHv', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(13, 'Dr. Thelma Welch', 'dist/img/avatar5.png', 'vquigley@example.net', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 9, 7, 'eX2S89wFDq', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(14, 'Margarita Ritchie', 'dist/img/avatar5.png', 'kayley.ritchie@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 7, 7, '3PCnGZYfrE', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(15, 'Rubye Kerluke Jr.', 'dist/img/avatar5.png', 'tyreek.turner@example.org', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 5, 5, 'vTwQQHPLrZ', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(16, 'Brenden Davis', 'dist/img/avatar5.png', 'magnolia40@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 4, 'oEEZlgJNPR', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(17, 'Prof. Coby Dickens', 'dist/img/avatar5.png', 'predovic.hester@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 6, 6, 'TeL78YFqSi', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(18, 'Louie Runolfsson I', 'dist/img/avatar5.png', 'feil.syble@example.org', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 6, 6, '2PH2oPqOCM', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(19, 'Prof. Ferne Trantow', 'dist/img/avatar5.png', 'emcclure@example.org', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 8, 8, '6cpLyDs7qC', '2023-01-02 17:35:53', '2023-01-02 17:35:53'),
(20, 'Dulce Jaskolski', 'dist/img/avatar5.png', 'lois.renner@example.com', '2023-01-02 17:35:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 8, 8, 'dDcEqr8Hjl', '2023-01-02 17:35:53', '2023-01-02 17:35:53');

-- --------------------------------------------------------

--
-- Structure for view `employees_departments`
--
DROP TABLE IF EXISTS `employees_departments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employees_departments`  AS SELECT `users`.`name` AS `name`, `department_data`.`title` AS `title` FROM (`users` join `department_data` on(`department_data`.`department_id` = `users`.`department_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `department_data`
--
ALTER TABLE `department_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_data_ibfk_1` (`department_id`);

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
  ADD KEY `jobs_ibfk_1` (`department_id`);

--
-- Indexes for table `jobs_data`
--
ALTER TABLE `jobs_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_data_ibfk_1` (`job_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department_data`
--
ALTER TABLE `department_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs_data`
--
ALTER TABLE `jobs_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `department_data`
--
ALTER TABLE `department_data`
  ADD CONSTRAINT `department_data_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs_data`
--
ALTER TABLE `jobs_data`
  ADD CONSTRAINT `jobs_data_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

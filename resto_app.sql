-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2023 at 06:06 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Drinks', 'Best Summer Drinks', 'public/categories/PthszeeDM8I4O7VSMVZDYd7YmZSgAJ4Z54kF1VZ0.jpg', '2023-08-06 07:36:02', '2023-08-09 06:37:44'),
(3, 'main course', 'Prosciutto-Wrapped Chicken Cutlets With Haricots Verts', 'public/categories/NCMpDJyBJVRv2pxLdQaK4pfwq8CZPNiGqmPxKUbS.jpg', '2023-08-06 07:48:09', '2023-08-09 06:35:54'),
(4, 'Dessert', 'Delicious Dessert Recipes', 'public/categories/Ghf4ybF1EUnEaJtFR6fZEhJReynn8sJWZmc0CWgU.jpg', '2023-08-06 08:02:27', '2023-08-09 06:33:04'),
(6, 'Appetizer', 'Smoked Salmon Bites', 'public/categories/9bajE3ltfp52NR64Q1cR3qjUIUjwK2jAUtwSVGqn.jpg', '2023-08-09 06:29:40', '2023-08-09 06:29:40'),
(7, 'alcohol', 'Drinking from a smaller glass reduces alcohol consumption', 'public/categories/28vFuthI1TVGNpCegXLHfrLYpZFT3yjghkY0LTxI.jpg', '2023-08-09 06:40:43', '2023-08-09 06:40:43'),
(9, 'Specials', 'Every Day We have Special Foods', 'public/categories/0AfAUHNyl31mCVje0tXNC5xjcLgSRFk9sNAhhTWj.jpg', '2023-08-12 09:10:43', '2023-08-12 09:10:43'),
(10, 'spagetti', 'Best food', 'public/categories/xHHO9kOfqGCyQR7NqVKWOWD2eDDI70WfAcQNTiei.jpg', '2023-08-13 08:16:20', '2023-08-13 08:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `category_menu`
--

CREATE TABLE `category_menu` (
  `category_id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_menu`
--

INSERT INTO `category_menu` (`category_id`, `menu_id`) VALUES
(3, 5),
(3, 2),
(4, 2),
(4, 1),
(4, 4),
(3, 6),
(7, 7),
(2, 8),
(6, 9),
(3, 10),
(9, 11),
(9, 12),
(9, 13),
(9, 14);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'cake', 'select best', 'public/menu/eFTb6HUpGvUmNsuQOw054vzf7xs16GNtxGCOvhwl.jpg', '179.98', '2023-08-07 03:23:05', '2023-08-09 07:40:47'),
(4, 'shake', 'Milk Shake', 'public/menus/oDiAuO46zrnqqCMMGJGXwAXXzW4QYYMLkoQQhYlF.png', '120.00', '2023-08-07 04:01:13', '2023-08-09 07:42:28'),
(6, 'salmon', 'Restaurant-Style Pan-Seared Salmon', 'public/menus/pSs1P7ptW51AZY31pI8HIX8h4iXemVfqU2EoVnDq.jpg', '1000.00', '2023-08-09 07:43:35', '2023-08-09 07:43:35'),
(7, 'Beer', 'Who Invented Beer?', 'public/menus/oABvpugNhPw8eqziBsdvzUZCNZSgQPzAC64Hxy5r.jpg', '50.00', '2023-08-09 07:45:33', '2023-08-09 07:47:46'),
(8, 'Soda drink', 'Coca Cola Classic', 'public/menus/D1SMExxi39OBgiXoU2WoKjeP07rRM9Ga9MCTUNsN.jpg', '10.00', '2023-08-10 08:09:03', '2023-08-10 08:09:03'),
(9, 'Soup', 'Beef Broth Vegetable Soup', 'public/menus/U5D0hienp9WC23VLaSDshYKU8zWRDJ5Q8GpbW8D6.jpg', '20.00', '2023-08-10 08:11:10', '2023-08-10 08:11:10'),
(10, 'Stake', 'The Difference between Stake and Steak', 'public/menus/m1N7RSx9jpRjOJuFkJ56ilyckbMb4xmN9N96zE7l.jpg', '300.00', '2023-08-10 08:13:15', '2023-08-10 08:13:15'),
(11, 'Spanish cuisine', 'Spanish cuisine is diffrents', 'public/menus/TvlIDbARKeizjMStZtTTH2pGi2jOKojghQJyCvCC.jpg', '500.00', '2023-08-12 09:13:59', '2023-08-12 09:13:59'),
(12, 'Bacalao', 'Curl up with a warm bowl of this bacalao a la vizcaina, a traditional Puerto Rican stewed cod with', 'public/menus/Xc15RM9Ip4GTecWFwx89YLZsMROw09QAf70E1ely.jpg', '100.00', '2023-08-12 09:19:47', '2023-08-12 09:19:47'),
(13, 'Spaghetti', 'Want to know where Order Best italian Foods', 'public/menus/IxXOlfmgpEGzn3EPAVTEaJfJtjFZ9JslsBNJ57Kh.jpg', '65.00', '2023-08-12 09:22:42', '2023-08-12 09:22:42'),
(14, 'Lasagna', 'What to Serve with Lasagna: 10 Italian Sides', 'public/menus/oTo64heiZvJgnvq1fN0k7xAhIQeLbsyHTX9pQReF.png', '500.00', '2023-08-13 08:01:51', '2023-08-13 08:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_03_072632_create_categories_table', 2),
(6, '2023_08_03_072714_create_menus_table', 2),
(7, '2023_08_03_073219_create_tables_table', 2),
(8, '2023_08_03_073319_create_reservations_table', 2),
(9, '2023_08_06_171600_create-category-menu-table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `res_date` datetime NOT NULL,
  `table_id` bigint UNSIGNED NOT NULL,
  `guest_number` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `first_name`, `last_name`, `email`, `tel_number`, `res_date`, `table_id`, `guest_number`, `created_at`, `updated_at`) VALUES
(1, 'shirin', 'nilo', 'shirin@yahoo.com', '0936000000', '2023-08-08 11:01:00', 3, 12, '2023-08-08 14:12:18', '2023-08-08 14:12:18'),
(2, 'maria', 'miri', 'mari@gmail.com', '09330220220', '2023-08-12 23:55:00', 3, 1, '2023-08-09 07:50:56', '2023-08-09 07:50:56'),
(4, 'sahar', 'alavi', 'sahar.a@yahoo.com', '0910000000', '2023-08-10 20:04:00', 7, 3, '2023-08-09 16:34:38', '2023-08-09 16:34:38'),
(5, 'qazal', 'anil', 'anil@gmail.com', '09726353543', '2023-08-14 22:21:00', 4, 5, '2023-08-10 05:50:57', '2023-08-10 05:50:57'),
(6, 'test', 'johni', 'test@gmail.com', '0911233555', '2023-08-12 22:27:00', 8, 1, '2023-08-10 06:55:26', '2023-08-12 06:48:40'),
(7, 'karen', 'karan', 'karen@gmail.com', '2555488555', '2023-08-16 19:30:00', 4, 2, '2023-08-13 06:59:58', '2023-08-13 06:59:58'),
(8, 'karen', 'karan', 'karen@gmail.com', '2555488555', '2023-08-16 19:30:00', 8, 2, '2023-08-13 07:46:47', '2023-08-13 07:46:47'),
(10, 'sadaf', 'minaei', 'sadaf@yahoo.com', '23345466', '2023-08-19 21:19:00', 3, 2, '2023-08-13 07:50:00', '2023-08-13 07:50:00'),
(11, 'test', 'test test', 'test@gmail.com', '09222222222', '2023-08-14 20:50:00', 4, 3, '2023-08-13 08:14:36', '2023-08-13 08:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guest_number` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avaliable',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `guest_number`, `status`, `location`, `created_at`, `updated_at`) VALUES
(3, 'Table 2', 2, 'available', 'inside', '2023-08-08 07:44:40', '2023-08-09 07:48:36'),
(4, 'Table1', 12, 'available', 'front', '2023-08-09 07:48:20', '2023-08-09 07:48:20'),
(6, 'Table3', 15, 'unavaliable', 'outside', '2023-08-09 07:49:20', '2023-08-09 07:49:20'),
(7, 'Table4', 3, 'pending', 'inside', '2023-08-09 07:49:39', '2023-08-09 07:49:39'),
(8, 'Table 5', 5, 'available', 'inside', '2023-08-10 05:41:01', '2023-08-10 05:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2023-08-02 13:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'MWWZAlBNHfc0lFzKdiqxRiNyH511lyMiMS3A3Bs5olBnFIE8JVTSjID9fbGc', '2023-08-02 13:06:47', '2023-08-02 13:06:47'),
(2, 'sadaf', 'sadaf_m96@yahoo.com', NULL, '$2y$10$4GjCPKkAREH9OjLvRW6KmuL1Ez1j5fRjE0u7QuzaeI/ZB/XSRKrD6', 1, NULL, '2023-08-02 14:08:16', '2023-08-02 14:08:16'),
(3, 'sara', 'sara@yahoo.com', NULL, '$2y$10$afFxxgX7WjcSH0CLGrKTCOUwGubfiTrpIK9cr7p4wGH4kgxBmv42e', 0, NULL, '2023-08-02 15:38:18', '2023-08-02 15:38:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

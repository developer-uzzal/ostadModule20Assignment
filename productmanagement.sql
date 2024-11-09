-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 04:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productmanagement`
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
(1, '2024_11_06_081954_create_products', 1),
(8, '2024_11_06_155547_create_products', 2),
(9, '2024_11_07_161814_create_cache_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(15, 'p001', 'OnePlus Nord N30 SE 5G', 'The latest price of OnePlus Nord N30 SE 5G in Bangladesh is BDT 15999. You can buy the OnePlus Nord N30 SE 5G at best price from our website or visit any of our store .', 120.00, 10, 'images/1731076417.jpeg', '2024-11-08 08:33:38', '2024-11-08 08:33:38'),
(16, 'p002', 'Redmi Note 11S', 'The latest price of Redmi Note 11S in Bangladesh is BDT 27999. You can buy the Redmi Note 11S at best price from our website or visit any of our store .', 80.00, 20, 'images/1731076488.png', '2024-11-08 08:34:48', '2024-11-08 08:34:48'),
(17, 'p003', 'Tecno Camon 30S (8/256GB)', 'The Tecno Camon 30S offers a remarkable combination of performance, display quality, and camera features, making it an excellent choice for those looking for a powerful and affordable smartphone. With its sleek design, stunning display, and robust hardware, this phone is crafted to deliver a seamless user experience.', 120.00, 5, 'images/1731076582.jpeg', '2024-11-08 08:36:22', '2024-11-08 08:36:22'),
(18, 'p004', 'TECNO Spark Go 1', 'TECNO Spark Go 1 is a perfect blend of style, performance, and affordability, offering standout features such as a 120Hz display, a powerful 5000mAh battery, and an IP54 rating for dust and splash resistance. Available at Gadget & Gear, the TECNO Spark Go 1 is an ideal option for those seeking a reliable smartphone with enhanced durability.', 644.00, 23, 'images/1731076646.jpeg', '2024-11-08 08:37:27', '2024-11-08 08:37:27'),
(19, 'p005', 'HONOR X6b', 'The HONOR X6B is a feature-packed smartphone designed for users who demand style, performance, and reliability. This unlocked Android device combines a sleek design with powerful specifications, ensuring a seamless and enjoyable mobile experience.', 777.00, 67, 'images/1731076705.jpeg', '2024-11-08 08:38:25', '2024-11-08 08:38:25'),
(20, 'p006', 'OPPO A3x', 'The latest price of OPPO A3x in Bangladesh is BDT 14990. You can buy the OPPO A3x at best price from our website or visit any of our store .', 454.00, 34, 'images/1731076748.jpeg', '2024-11-08 08:39:08', '2024-11-08 08:39:08'),
(21, 'p007', 'Galaxy A15 5G', 'Samsung Galaxy A15 5G brings the future of smartphones to your hands with cutting-edge technology and affordability. Available now at Gadget & Gear, this device is perfect for users looking to experience high-speed 5G connectivity, a stunning display, and powerful performance.', 89.00, 31, 'images/1731076788.jpeg', '2024-11-08 08:39:48', '2024-11-08 08:39:48'),
(22, 'p008', 'Vivo Y28', 'Vivo Y28 is designed to blend performance with an elegant aesthetic, delivering a seamless experience for those who prioritize functionality and style. Available in Gleaming Orange and Agate Green, the Vivo Y28 combines sleek design with cutting-edge features for an unmatched mobile experience.', 668.00, 76, 'images/1731076849.jpeg', '2024-11-08 08:40:49', '2024-11-08 08:40:49'),
(23, 'p009', 'realme C65', 'The latest price of realme C65 in Bangladesh is BDT 19999. You can buy the realme C65 at best price from our website or visit any of our store .', 588.00, 67, 'images/1731076943.jpeg', '2024-11-08 08:42:23', '2024-11-08 08:42:23');

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
('l5dkyEubqAT2XvOfajOUgpGUsc33IecQECTHzmxM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVpVQ21QalFmQmdJS2xNV05qVGNSVEtkck9lYWMxdU01dmlIUGFROCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731078905);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 02, 2020 at 04:31 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `sa_categories`
--

CREATE TABLE `sa_categories` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sa_categories`
--

INSERT INTO `sa_categories` (`id`, `name`, `description`) VALUES
(1, 'Security', NULL),
(2, 'Design', NULL),
(3, 'Web development', NULL),
(4, 'Mobile applications', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sa_images`
--

CREATE TABLE `sa_images` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sa_images`
--

INSERT INTO `sa_images` (`id`, `name`, `product_id`) VALUES
(1, 'image-2.png', 2),
(3, 'image-3.png', 2),
(4, 'image-4.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sa_orders`
--

CREATE TABLE `sa_orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sa_orders`
--

INSERT INTO `sa_orders` (`id`, `user_id`, `session_id`, `state`) VALUES
(1, NULL, 'd68e0f368da513d8c2132b1a782b7cf9', 'pending'),
(2, NULL, 'd68e0f368da513d8c2132b1a782b7cf9', 'canceled'),
(3, NULL, 'd68e0f368da513d8c2132b1a782b7cf9', 'pending'),
(4, NULL, 'd68e0f368da513d8c2132b1a782b7cf9', 'new'),
(5, NULL, 'bbb40774fc28f150c2d00fbae3e25f34', 'new'),
(6, NULL, 'b8e7825685ee5912229e24239b19cef4', 'new'),
(7, NULL, 'de337ed16190e7ac806b599d460fe984', 'new'),
(8, NULL, '03c8085a4dba50f48e53527020bbc8b8', 'new'),
(9, 5, '0cc2803bbae085925afd49c0cecc74af', 'new'),
(10, 5, '19c172025923d1d677894691eaab78bc', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sa_order_items`
--

CREATE TABLE `sa_order_items` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sa_order_items`
--

INSERT INTO `sa_order_items` (`id`, `product_id`, `order_id`, `quantity`) VALUES
(1, 2, 1, 10),
(5, 4, 1, 1),
(7, 5, 2, 3),
(8, 2, 3, 5),
(9, 4, 4, 1),
(10, 5, 5, 3),
(19, 2, 6, 1),
(22, 2, 7, 1),
(23, 16, 7, 1),
(24, 3, 8, 1),
(25, 8, 8, 1),
(26, 5, 9, 1),
(28, 2, 9, 3),
(29, 2, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sa_products`
--

CREATE TABLE `sa_products` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `base_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sa_products`
--

INSERT INTO `sa_products` (`id`, `name`, `short_description`, `description`, `price`, `code`, `base_image`, `created_at`) VALUES
(2, 'Starter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris. Pellentesque vel leo posuere, faucibus mi eget, fringilla tortor. Mauris nisl erat, venenatis id enim et, sagittis mollis quam. Donec vel ante et nulla vestibulum dignissim vitae eu leo. Donec consequat ultricies lobortis. Aliquam quis felis odio. Vestibulum ac rutrum quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quis mauris sodales, efficitur lectus vitae, laoreet neque. Aenean euismod eros nunc, pretium porttitor lectus gravida a.', 599, '1001', '/img/product/original/image-1.png', '2020-02-18 00:00:00'),
(3, 'Basic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris. Pellentesque vel leo posuere, faucibus mi eget, fringilla tortor. Mauris nisl erat, venenatis id enim et, sagittis mollis quam. Donec vel ante et nulla vestibulum dignissim vitae eu leo. Donec consequat ultricies lobortis. Aliquam quis felis odio. Vestibulum ac rutrum quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quis mauris sodales, efficitur lectus vitae, laoreet neque. Aenean euismod eros nunc, pretium porttitor lectus gravida a.', 1000, '1002', '/img/product/original/image-1.png', '2020-02-21 00:00:00'),
(4, 'Standard', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris. Pellentesque vel leo posuere, faucibus mi eget, fringilla tortor. Mauris nisl erat, venenatis id enim et, sagittis mollis quam. Donec vel ante et nulla vestibulum dignissim vitae eu leo. Donec consequat ultricies lobortis. Aliquam quis felis odio. Vestibulum ac rutrum quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quis mauris sodales, efficitur lectus vitae, laoreet neque. Aenean euismod eros nunc, pretium porttitor lectus gravida a.', 2990, '1003', '/img/product/original/image-1.png', '2020-02-09 01:52:18'),
(5, 'Premium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris. Pellentesque vel leo posuere, faucibus mi eget, fringilla tortor. Mauris nisl erat, venenatis id enim et, sagittis mollis quam. Donec vel ante et nulla vestibulum dignissim vitae eu leo. Donec consequat ultricies lobortis. Aliquam quis felis odio. Vestibulum ac rutrum quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quis mauris sodales, efficitur lectus vitae, laoreet neque. Aenean euismod eros nunc, pretium porttitor lectus gravida a.', 2590, '1004', '/img/product/original/image-1.png', '2020-02-09 01:52:57'),
(8, 'Professional', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris. Pellentesque vel leo posuere, faucibus mi eget, fringilla tortor. Mauris nisl erat, venenatis id enim et, sagittis mollis quam. Donec vel ante et nulla vestibulum dignissim vitae eu leo. Donec consequat ultricies lobortis. Aliquam quis felis odio. Vestibulum ac rutrum quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quis mauris sodales, efficitur lectus vitae, laoreet neque. Aenean euismod eros nunc, pretium porttitor lectus gravida a.', 223, '1005', '/img/product/original/image-1.png', '2020-02-21 21:32:51'),
(16, 'Extra Service', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nisl tortor, iaculis non diam a, facilisis pulvinar mauris. Pellentesque vel leo posuere, faucibus mi eget, fringilla tortor. Mauris nisl erat, venenatis id enim et, sagittis mollis quam. Donec vel ante et nulla vestibulum dignissim vitae eu leo. Donec consequat ultricies lobortis. Aliquam quis felis odio. Vestibulum ac rutrum quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quis mauris sodales, efficitur lectus vitae, laoreet neque. Aenean euismod eros nunc, pretium porttitor lectus gravida a.', 259, '1006', '/img/product/original/image-1.png', '2020-02-21 21:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `sa_product_category`
--

CREATE TABLE `sa_product_category` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sa_product_category`
--

INSERT INTO `sa_product_category` (`product_id`, `category_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sa_users`
--

CREATE TABLE `sa_users` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `resettable` tinyint(1) NOT NULL DEFAULT '1',
  `registered` int NOT NULL,
  `last_login` int DEFAULT NULL,
  `roles_mask` int NOT NULL DEFAULT '0',
  `force_logout` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sa_users`
--

INSERT INTO `sa_users` (`id`, `username`, `email`, `password`, `status`, `verified`, `resettable`, `registered`, `last_login`, `roles_mask`, `force_logout`) VALUES
(1, 'powiqojezy', 'sujop@mailinator.net', '$2y$10$VPE84vaR6moPDzf9IPE3gu62OgjbSjrix.NAu1eBtuVPvha3yOv26', 0, 0, 1, 1581983147, NULL, 0, 0),
(2, 'quvypozuv', 'lyhyxy@mailinator.net', '$2y$10$eU16W95IlLWJiMkd0cn.7e6mKwhHg59VKfSLuXx.nfNUqnDL0Ok32', 0, 0, 1, 1581983215, NULL, 0, 0),
(3, 'vutuvizat', 'kageg@mailinator.com', '$2y$10$hBU8G39z4vsjpRHSHYigquNlvzO.BQTttWLK/7.UatuMLGDZi9WFW', 0, 0, 1, 1581983350, NULL, 0, 0),
(4, 'migod', 'gaxeqoj@mailinator.com', '$2y$10$.E1jYvV21Zc1CMNYIYtlCujDQYoM.M/ZudljiN0n3Xcup2hu.NGVm', 0, 1, 1, 1581983532, 1582153249, 0, 0),
(5, 'admin', 'admin@shopapp.com', '$2y$10$sbrLZu8j5HDdBDKHzlCKkOc9Jk24rXVWkInakfxG9e1gSsankMQp2', 0, 1, 1, 1582153040, 1585422554, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sa_users_confirmations`
--

CREATE TABLE `sa_users_confirmations` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `email` varchar(249) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selector` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sa_users_confirmations`
--

INSERT INTO `sa_users_confirmations` (`id`, `user_id`, `email`, `selector`, `token`, `expires`) VALUES
(1, 1, 'sujop@mailinator.net', 'b9KZ47Yr0Vlq-34b', '$2y$10$BrYMjithebYo8GONl8Z0gOtgVcCpkXic8xuVESdOwiCJjldW7619q', 1582069547),
(2, 2, 'lyhyxy@mailinator.net', 'YGOJLnduVPEJKFAM', '$2y$10$QBu5zySz.0ZJFU2Fq6H6EehPdYCKn83L3xdUFMUpo7PgMCQpVPm7S', 1582069615),
(3, 3, 'kageg@mailinator.com', 'xjHhBlIM1QSmgEcb', '$2y$10$QOHhuXe3QubteyvcEiqvyOa689sF2QGx9j2qubHesR6HJF8NTOD/2', 1582069750);

-- --------------------------------------------------------

--
-- Table structure for table `sa_users_remembered`
--

CREATE TABLE `sa_users_remembered` (
  `id` bigint UNSIGNED NOT NULL,
  `user` int UNSIGNED NOT NULL,
  `selector` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sa_users_resets`
--

CREATE TABLE `sa_users_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `user` int UNSIGNED NOT NULL,
  `selector` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sa_users_throttling`
--

CREATE TABLE `sa_users_throttling` (
  `bucket` varchar(44) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `tokens` float UNSIGNED NOT NULL,
  `replenished_at` int UNSIGNED NOT NULL,
  `expires_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sa_categories`
--
ALTER TABLE `sa_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_898271535E237E06` (`name`);

--
-- Indexes for table `sa_images`
--
ALTER TABLE `sa_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B726CD0C4584665A` (`product_id`);

--
-- Indexes for table `sa_orders`
--
ALTER TABLE `sa_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B2168E88A76ED395` (`user_id`);

--
-- Indexes for table `sa_order_items`
--
ALTER TABLE `sa_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D33805A34584665A` (`product_id`),
  ADD KEY `IDX_D33805A38D9F6D38` (`order_id`);

--
-- Indexes for table `sa_products`
--
ALTER TABLE `sa_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4911E1C477153098` (`code`);

--
-- Indexes for table `sa_product_category`
--
ALTER TABLE `sa_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `IDX_A4DB671E4584665A` (`product_id`),
  ADD KEY `IDX_A4DB671E12469DE2` (`category_id`);

--
-- Indexes for table `sa_users`
--
ALTER TABLE `sa_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4545E69DF85E0677` (`username`);

--
-- Indexes for table `sa_users_confirmations`
--
ALTER TABLE `sa_users_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `email_expires` (`email`,`expires`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sa_users_remembered`
--
ALTER TABLE `sa_users_remembered`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `sa_users_resets`
--
ALTER TABLE `sa_users_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user_expires` (`user`,`expires`);

--
-- Indexes for table `sa_users_throttling`
--
ALTER TABLE `sa_users_throttling`
  ADD PRIMARY KEY (`bucket`),
  ADD KEY `expires_at` (`expires_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sa_categories`
--
ALTER TABLE `sa_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sa_images`
--
ALTER TABLE `sa_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sa_orders`
--
ALTER TABLE `sa_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sa_order_items`
--
ALTER TABLE `sa_order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sa_products`
--
ALTER TABLE `sa_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sa_users`
--
ALTER TABLE `sa_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sa_users_confirmations`
--
ALTER TABLE `sa_users_confirmations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sa_users_remembered`
--
ALTER TABLE `sa_users_remembered`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sa_users_resets`
--
ALTER TABLE `sa_users_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sa_images`
--
ALTER TABLE `sa_images`
  ADD CONSTRAINT `FK_B726CD0C4584665A` FOREIGN KEY (`product_id`) REFERENCES `sa_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sa_orders`
--
ALTER TABLE `sa_orders`
  ADD CONSTRAINT `FK_B2168E88A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sa_users` (`id`);

--
-- Constraints for table `sa_order_items`
--
ALTER TABLE `sa_order_items`
  ADD CONSTRAINT `FK_D33805A34584665A` FOREIGN KEY (`product_id`) REFERENCES `sa_products` (`id`),
  ADD CONSTRAINT `FK_D33805A38D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sa_orders` (`id`);

--
-- Constraints for table `sa_product_category`
--
ALTER TABLE `sa_product_category`
  ADD CONSTRAINT `FK_A4DB671E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sa_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A4DB671E4584665A` FOREIGN KEY (`product_id`) REFERENCES `sa_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

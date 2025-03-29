-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2025 at 10:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `colors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`colors`)),
  `quantity` int(11) NOT NULL,
  `images` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image_slider` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `name`, `description`, `category`, `price`, `colors`, `quantity`, `images`, `created_at`, `image_slider`) VALUES
(61, 'jitnews', 'jkl', '2', 543.00, '[\"#000000\"]', 33, '1742920006955.png', '2025-03-26 05:43:19', NULL),
(64, 'tr4', 'hgf', '2', 54.00, '[\"#000000\"]', 43, '1742977023512_1M Viewers.png', '2025-03-26 08:17:03', NULL),
(65, 'jitnews', 'hgf', '6', 432.00, '[\"#000000\",\"#ff0000\"]', 22, '1743052480074_1M Viewers (1).png', '2025-03-27 05:14:40', NULL),
(66, 'Rishika', 'rew', '8', 32.00, '[\"#000000\",\"#ff2e2e\"]', 32, '1743052480074_1M Viewers (1).png', '2025-03-27 05:15:07', NULL),
(67, 'jitnews', 'hjkl', '8', 435.00, '[\"#ff0000\"]', 55, '1743056947493_19th November 2024 -  (2).jpg,1743056947499_1M Viewers (1).png', '2025-03-27 06:29:07', NULL),
(68, '33', '33', '2', 22.00, '[\"#000000\"]', 432, '1743061293384_1M Viewers.png', '2025-03-27 07:41:33', NULL),
(69, 'Rishika', 'v bmn', '2', 456.00, '[\"#000000\"]', 55, '1743061602604_1M Viewers.png,1743061602608_4 PE4.png', '2025-03-27 07:46:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accessories_products`
--

CREATE TABLE `accessories_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accessories_products`
--

INSERT INTO `accessories_products` (`id`, `name`, `description`, `category`, `price`, `quantity`, `created_at`) VALUES
(3, 'jitnews', 'ggg', '2', 5678.00, 655666, '2025-03-28 09:59:58'),
(4, 'Sample Accessory', 'A custom accessory', 'Fashion', 29.99, 10, '2025-03-28 10:31:47'),
(5, 'Sample Accessory', 'A custom accessory', 'Fashion', 29.99, 10, '2025-03-28 10:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `accessories_products_variants`
--

CREATE TABLE `accessories_products_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accessories_products_variants`
--

INSERT INTO `accessories_products_variants` (`id`, `product_id`, `color`, `image`, `created_at`) VALUES
(5, 3, 'Red', '1743155998252-1M Viewers.png', '2025-03-28 09:59:58'),
(6, 3, 'Blue', '1743155998258-4 PE4.png', '2025-03-28 09:59:58'),
(7, 4, 'Red', '1743157907886-1M Viewers.png', '2025-03-28 10:31:47'),
(8, 4, 'Blue', '1743157907889-4 PE4.png', '2025-03-28 10:31:47'),
(9, 5, 'Red', '1743157908959-1M Viewers.png', '2025-03-28 10:31:48'),
(10, 5, 'Blue', '1743157908962-4 PE4.png', '2025-03-28 10:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `Accessory`
--

CREATE TABLE `Accessory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Accessory`
--

INSERT INTO `Accessory` (`id`, `name`, `description`, `category`, `images`, `price`, `color`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 'jitnews', 'fghj', '6', '1742896412003-1M Viewers.png', 567.00, '#000000', 6, '2025-03-25 09:53:32', '2025-03-25 09:53:32'),
(3, 'gdhji', 'cggvh', '6', '1742906171944-1M Viewers (1).png,1742906171945-1M Viewers.png', 678.00, 'red', 6, '2025-03-25 12:36:11', '2025-03-25 12:36:11'),
(4, 'gdhji', 'cggvh', '6', '1742906250078-1M Viewers (1).png,1742906250080-1M Viewers.png', 678.00, 'red', 6, '2025-03-25 12:37:30', '2025-03-25 12:37:30'),
(5, 'gdhji', 'cggvh', '6', '1742906251219-1M Viewers (1).png,1742906251223-1M Viewers.png', 678.00, 'red', 6, '2025-03-25 12:37:31', '2025-03-25 12:37:31'),
(6, 'gdhji', 'cggvh', '6', '1742906252088-1M Viewers (1).png,1742906252090-1M Viewers.png', 678.00, 'red', 6, '2025-03-25 12:37:32', '2025-03-25 12:37:32'),
(7, 'gdhji', 'cggvh', '6', '1742906253094-1M Viewers (1).png,1742906253095-1M Viewers.png', 678.00, 'red', 6, '2025-03-25 12:37:33', '2025-03-25 12:37:33'),
(8, 'gdhji', 'cggvh', '6', '1742906254025-1M Viewers (1).png,1742906254029-1M Viewers.png', 678.00, 'red', 6, '2025-03-25 12:37:34', '2025-03-25 12:37:34'),
(9, 'gdhji', 'cggvh', '6', '1742906254847-1M Viewers (1).png,1742906254849-1M Viewers.png', 678.00, 'red', 6, '2025-03-25 12:37:34', '2025-03-25 12:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Mug', 'This is mug ', '1742882361447.png', '2025-03-25 05:59:21', '2025-03-25 05:59:21'),
(4, 'Hoodie', 'This is Hoodie', '1742882411220.png', '2025-03-25 06:00:11', '2025-03-25 06:00:11'),
(5, 'T-shirt', 'This is T-shirt', '1742882442823.jpg', '2025-03-25 06:00:42', '2025-03-25 06:00:42'),
(6, 'Phone Cases ', 'This is Phone Case', '1742882560903.png', '2025-03-25 06:02:40', '2025-03-25 06:02:40'),
(8, 'Cap', 'Hey Cap', '1742882606726.jpg', '2025-03-25 06:03:26', '2025-03-25 12:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `customize_accessories`
--

CREATE TABLE `customize_accessories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `color` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customize_accessories`
--

INSERT INTO `customize_accessories` (`id`, `name`, `description`, `category`, `price`, `color`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Custom Hat', 'Stylish and elegant', 'Hats', 49.99, 'blue', 10, '1743148688218-4 PE4.png', '2025-03-28 07:58:08', '2025-03-28 07:58:08'),
(3, 'Custom Hat', 'Stylish and elegant', 'Hats', 49.99, 'green', 10, '1743148688221-4 PE4.png', '2025-03-28 07:58:08', '2025-03-28 07:58:08'),
(4, 'Custom Hat', 'Stylish and elegant', 'Hats', 49.99, 'red', 10, '1743149343414-1M Viewers.png', '2025-03-28 08:09:03', '2025-03-28 08:09:03'),
(5, 'Custom Hat', 'Stylish and elegant', 'Hats', 49.99, 'blue', 10, '1743149343421-1M Viewers (1).png', '2025-03-28 08:09:03', '2025-03-28 08:09:03'),
(6, 'Custom Hat', 'Stylish and elegant', 'Hats', 49.99, 'green', 10, '1743149343425-1M Viewers (1).png', '2025-03-28 08:09:03', '2025-03-28 08:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `merchandise_products`
--

CREATE TABLE `merchandise_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchandise_products`
--

INSERT INTO `merchandise_products` (`id`, `name`, `description`, `category`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(22, 'Sample Product', 'This is a sample product', 'Clothing', 49.99, 100, '2025-03-28 05:34:20', '2025-03-28 05:34:20'),
(23, 'Sample Product', 'This is a sample product', 'Clothing', 49.99, 100, '2025-03-28 05:34:43', '2025-03-28 05:34:43'),
(24, 'Sample Product', 'This is a sample product', 'Clothing', 49.99, 100, '2025-03-28 05:34:44', '2025-03-28 05:34:44'),
(25, 'hjk', 'vhjk', '4', 22555.00, 67, '2025-03-28 05:40:14', '2025-03-28 05:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `merchandise_products_variants`
--

CREATE TABLE `merchandise_products_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `sizes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`sizes`)),
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchandise_products_variants`
--

INSERT INTO `merchandise_products_variants` (`id`, `product_id`, `color`, `sizes`, `image`, `created_at`, `updated_at`) VALUES
(42, 22, 'Red', '[\"S\",\"M\"]', '78c4b525a395efe6abd023368a8a5a82', '2025-03-28 05:34:20', '2025-03-28 05:34:20'),
(43, 22, 'Blue', '[\"L\",\"XL\"]', 'a1e36a62c3914cc66a3711f8c92c24a0', '2025-03-28 05:34:20', '2025-03-28 05:34:20'),
(44, 23, 'Red', '[\"S\",\"M\"]', 'a8b5104f8a4e4ce9c4a6f91c1cfb0b46', '2025-03-28 05:34:43', '2025-03-28 05:34:43'),
(45, 23, 'Blue', '[\"L\",\"XL\"]', 'dcc20c381a5da5d86744ecff7630321b', '2025-03-28 05:34:43', '2025-03-28 05:34:43'),
(46, 24, 'Red', '[\"S\",\"M\"]', '460d2005bee7b60144f922d4147c6610', '2025-03-28 05:34:44', '2025-03-28 05:34:44'),
(47, 24, 'Blue', '[\"L\",\"XL\"]', 'f0f029ecdeeb63231b6494446e400797', '2025-03-28 05:34:44', '2025-03-28 05:34:44'),
(48, 25, '#000000', '[\"S\"]', '9a569104d8d09cbe35db9091612f329e', '2025-03-28 05:40:14', '2025-03-28 05:40:14'),
(49, 25, '#f50000', '[\"S\"]', '84786b92f566c8d8c922b485ab491b4e', '2025-03-28 05:40:14', '2025-03-28 05:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `image_slider` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `description`, `category`, `images`, `image_slider`, `price`, `quantity`) VALUES
(18, 'ghjk', '4', '1742920006955.png', NULL, 22.00, 262),
(19, 'mnl/', '5', '1742965640012.png', NULL, 65.00, 55),
(20, 'gh', '5', '1742975329716.png', NULL, 22555.00, 678),
(21, 'This is T Shirt', '5', '1742979456830.png', NULL, 22555.00, 543),
(22, 'Sample product description', 'Rishika Sharma', '1743058557953.png', NULL, 22.00, 33),
(23, 'fghu', '5', '1743056267612.png', NULL, 22555.00, 678),
(24, 'hjk', '4', '1743058557953.png', NULL, 54.00, 33),
(25, 'hbjkl', '4', '1743058557953.png', NULL, 3.00, 543),
(26, 'ftrd', '5', '1743059256162.png ,1743059256162.png', NULL, 5643.00, 33),
(27, 'bn', '4', '1743060263852.png,1743060263859.jpg', '1743060263852.png,1743060263859.jpg', 3.00, 3),
(28, 'Hey', '4', '1743063301945.png,1743063301955.jpg', '', 22555.00, 23),
(29, 'fdghj', '4', '1743091650140.png', '', 22555.00, 33),
(31, 'Hey This is chuky tshirt', '5', '1743181693148.png,1743181693152.jpg', '', 22555.00, 23);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `sizes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sizes`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `color`, `sizes`) VALUES
(36, 18, '#000000', '[\"S\",\"M\"]'),
(37, 19, '#000000', '[\"S\"]'),
(38, 20, '#000000', '[\"S\"]'),
(39, 21, '#000000', '[\"S\",\"M\",\"L\"]'),
(40, 21, '#ff0000', '[\"S\"]'),
(41, 22, 'Red', '[\"S\",\"M\"]'),
(42, 22, 'Blue', '[\"M\"]'),
(43, 23, '#000000', '[\"S\",\"A\",\"B\",\"C\",\"S\",\"A\",\"B\",\"C\"]'),
(44, 23, '#ff0000', '[\"S\"]'),
(45, 23, '#6b6b6b', '[\"S\",\"M\"]'),
(46, 24, '#000000', '[\"S\"]'),
(47, 25, '#000000', '[\"S\"]'),
(48, 26, '#000000', '[\"S\"]'),
(49, 27, '#ff0000', '[\"S\"]'),
(50, 28, '#ff0000', '[\"S\",\"M\",\"L\"]'),
(51, 28, '#636363', '[\"S\"]'),
(52, 29, '#000000', '[\"S\"]'),
(55, 31, '#eb0000', '[\"S\",\"M\",\"Xl\"]'),
(56, 31, '#000000', '[\"S\"]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `status`, `created_at`) VALUES
(1, 'Rishika', 'rishika@jewarinternational.com', '$2b$10$4ALEuynBRPt6bSIjFXoL1.9IoYGFNm0d8PDblRcQclRN.o0mZoDjK', 'active', '2025-03-24 07:08:21'),
(2, 'Rishika', 'rishik12a@jewarinternational.com', '$2b$10$Lw/k7iInvVoRoFpHW0optuiRR/wt9KtF2x5H0.lwqw6mS3SymFB06', 'active', '2025-03-28 17:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accessories_products`
--
ALTER TABLE `accessories_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accessories_products_variants`
--
ALTER TABLE `accessories_products_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `Accessory`
--
ALTER TABLE `Accessory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customize_accessories`
--
ALTER TABLE `customize_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchandise_products`
--
ALTER TABLE `merchandise_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchandise_products_variants`
--
ALTER TABLE `merchandise_products_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `accessories_products`
--
ALTER TABLE `accessories_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accessories_products_variants`
--
ALTER TABLE `accessories_products_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Accessory`
--
ALTER TABLE `Accessory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customize_accessories`
--
ALTER TABLE `customize_accessories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `merchandise_products`
--
ALTER TABLE `merchandise_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `merchandise_products_variants`
--
ALTER TABLE `merchandise_products_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessories_products_variants`
--
ALTER TABLE `accessories_products_variants`
  ADD CONSTRAINT `accessories_products_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `accessories_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `merchandise_products_variants`
--
ALTER TABLE `merchandise_products_variants`
  ADD CONSTRAINT `merchandise_products_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `merchandise_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

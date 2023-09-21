-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 09:30 AM
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
-- Database: `demo_migration`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brandName` varchar(50) NOT NULL,
  `brandImg` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brandName`, `brandImg`, `created_at`, `updated_at`) VALUES
(1, 'Brand 1', 'brand1.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43'),
(2, 'Brand 2', 'brand2.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43'),
(3, 'Brand 3', 'brand3.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43'),
(4, 'Brand 4', 'brand4.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43'),
(5, 'Brand 5', 'brand5.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43'),
(6, 'Brand 6', 'brand6.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43'),
(7, 'Brand 7', 'brand7.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43'),
(8, 'Brand 8', 'brand8.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43'),
(9, 'Brand 9', 'brand9.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43'),
(10, 'Brand 10', 'brand10.jpg', '2023-09-17 07:04:43', '2023-09-17 07:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categoryImg` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryImg`, `created_at`, `updated_at`) VALUES
(1, 'Category 1', 'image1.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15'),
(2, 'Category 2', 'image2.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15'),
(3, 'Category 3', 'image3.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15'),
(4, 'Category 4', 'image4.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15'),
(5, 'Category 5', 'image5.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15'),
(6, 'Category 6', 'image6.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15'),
(7, 'Category 7', 'image7.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15'),
(8, 'Category 8', 'image8.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15'),
(9, 'Category 9', 'image9.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15'),
(10, 'Category 10', 'image10.jpg', '2023-09-17 07:03:15', '2023-09-17 07:03:15');

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
(47, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(48, '2023_09_15_195954_create_users', 1),
(49, '2023_09_15_200028_create_profiles', 1),
(50, '2023_09_15_200036_create_categories', 1),
(51, '2023_09_15_200045_create_brands', 1),
(52, '2023_09_15_200051_create_products', 1),
(53, '2023_09_15_200101_create_product_details', 1),
(54, '2023_09_15_200108_create_product_sliders', 1),
(55, '2023_09_15_200115_create_product_reviews', 1),
(56, '2023_09_15_200122_create_product_wishes', 1),
(57, '2023_09_15_200128_create_product_carts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(50) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `star` double(8,2) NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `remark` enum('popular','new','top','special','trending','regular') NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_des`, `price`, `discount`, `discount_price`, `image`, `star`, `stock`, `remark`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 'Short description for Product 1', '49.99', 10, '44.99', 'product1.jpg', 4.50, 100, 'popular', 1, 1, '2023-09-17 07:10:51', '2023-09-17 07:10:51'),
(2, 'Product 2', 'Short description for Product 2', '29.99', 5, '24.99', 'product2.jpg', 4.20, 50, 'new', 2, 2, '2023-09-17 07:10:51', '2023-09-17 07:10:51'),
(3, 'Product 3', 'Short description for Product 3', '79.99', 0, '', 'product3.jpg', 4.80, 127, 'top', 3, 3, '2023-09-17 07:10:51', '2023-09-17 07:10:51'),
(4, 'Product 4', 'Short description for Product 4', '99.99', 15, '84.99', 'product4.jpg', 4.90, 127, 'special', 4, 4, '2023-09-17 07:10:51', '2023-09-17 07:10:51'),
(5, 'Product 5', 'Short description for Product 5', '19.99', 2, '17.99', 'product5.jpg', 4.00, 75, 'trending', 5, 5, '2023-09-17 07:10:51', '2023-09-17 07:10:51'),
(6, 'Product 6', 'Short description for Product 6', '69.99', 8, '61.99', 'product6.jpg', 4.70, 120, 'popular', 6, 6, '2023-09-17 07:10:51', '2023-09-17 07:10:51'),
(7, 'Product 7', 'Short description for Product 7', '39.99', 0, '', 'product7.jpg', 4.40, 90, 'new', 7, 7, '2023-09-17 07:10:51', '2023-09-17 07:10:51'),
(8, 'Product 8', 'Short description for Product 8', '59.99', 10, '53.99', 'product8.jpg', 4.60, 127, 'top', 8, 8, '2023-09-17 07:10:51', '2023-09-17 07:10:51'),
(9, 'Product 9', 'Short description for Product 9', '89.99', 12, '77.99', 'product9.jpg', 4.80, 60, 'special', 9, 9, '2023-09-17 07:10:51', '2023-09-17 07:10:51'),
(10, 'Product 10', 'Short description for Product 10', '34.99', 3, '31.99', 'product10.jpg', 4.30, 110, 'trending', 10, 10, '2023-09-17 07:10:51', '2023-09-17 07:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `email`, `product_id`, `color`, `size`, `created_at`, `updated_at`) VALUES
(1, 'user1@example.com', 1, 'Red', 'Large', '2023-09-17 07:16:38', '2023-09-17 07:16:38'),
(2, 'user2@example.com', 2, 'Blue', 'Medium', '2023-09-17 07:16:38', '2023-09-17 07:16:38'),
(3, 'user3@example.com', 3, 'Green', 'Small', '2023-09-17 07:16:38', '2023-09-17 07:16:38'),
(4, 'user4@example.com', 4, 'Black', 'XL', '2023-09-17 07:16:38', '2023-09-17 07:16:38'),
(5, 'user5@example.com', 5, 'White', 'XXL', '2023-09-17 07:16:38', '2023-09-17 07:16:38'),
(6, 'user6@example.com', 6, 'Yellow', 'Medium', '2023-09-17 07:16:38', '2023-09-17 07:16:38'),
(7, 'user7@example.com', 7, 'Orange', 'Large', '2023-09-17 07:16:38', '2023-09-17 07:16:38'),
(8, 'user8@example.com', 8, 'Purple', 'Small', '2023-09-17 07:16:38', '2023-09-17 07:16:38'),
(9, 'user9@example.com', 9, 'Pink', 'XL', '2023-09-17 07:16:38', '2023-09-17 07:16:38'),
(10, 'user10@example.com', 10, 'Gray', 'Medium', '2023-09-17 07:16:38', '2023-09-17 07:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `img4` varchar(200) NOT NULL,
  `des` longtext NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'product1_img1.jpg', 'product1_img2.jpg', 'product1_img3.jpg', 'product1_img4.jpg', 'Description for Product 1', 'Red', 'Large', 1, '2023-09-17 07:19:58', '2023-09-17 07:19:58'),
(2, 'product2_img1.jpg', 'product2_img2.jpg', 'product2_img3.jpg', 'product2_img4.jpg', 'Description for Product 2', 'Blue', 'Medium', 2, '2023-09-17 07:19:58', '2023-09-17 07:19:58'),
(3, 'product3_img1.jpg', 'product3_img2.jpg', 'product3_img3.jpg', 'product3_img4.jpg', 'Description for Product 3', 'Green', 'Small', 3, '2023-09-17 07:19:58', '2023-09-17 07:19:58'),
(4, 'product4_img1.jpg', 'product4_img2.jpg', 'product4_img3.jpg', 'product4_img4.jpg', 'Description for Product 4', 'Black', 'XL', 4, '2023-09-17 07:19:58', '2023-09-17 07:19:58'),
(5, 'product5_img1.jpg', 'product5_img2.jpg', 'product5_img3.jpg', 'product5_img4.jpg', 'Description for Product 5', 'White', 'XXL', 5, '2023-09-17 07:19:58', '2023-09-17 07:19:58'),
(6, 'product6_img1.jpg', 'product6_img2.jpg', 'product6_img3.jpg', 'product6_img4.jpg', 'Description for Product 6', 'Yellow', 'Medium', 6, '2023-09-17 07:19:58', '2023-09-17 07:19:58'),
(7, 'product7_img1.jpg', 'product7_img2.jpg', 'product7_img3.jpg', 'product7_img4.jpg', 'Description for Product 7', 'Orange', 'Large', 7, '2023-09-17 07:19:58', '2023-09-17 07:19:58'),
(8, 'product8_img1.jpg', 'product8_img2.jpg', 'product8_img3.jpg', 'product8_img4.jpg', 'Description for Product 8', 'Purple', 'Small', 8, '2023-09-17 07:19:58', '2023-09-17 07:19:58'),
(9, 'product9_img1.jpg', 'product9_img2.jpg', 'product9_img3.jpg', 'product9_img4.jpg', 'Description for Product 9', 'Pink', 'XL', 9, '2023-09-17 07:19:58', '2023-09-17 07:19:58'),
(10, 'product10_img1.jpg', 'product10_img2.jpg', 'product10_img3.jpg', 'product10_img4.jpg', 'Description for Product 10', 'Gray', 'Medium', 10, '2023-09-17 07:19:58', '2023-09-17 07:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(1000) NOT NULL,
  `email` varchar(50) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `description`, `email`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'This product is great!', 'user1@example.com', 1, '2023-09-17 07:23:19', '2023-09-17 07:23:19'),
(2, 'I love this item.', 'user2@example.com', 2, '2023-09-17 07:23:19', '2023-09-17 07:23:19'),
(3, 'Good quality and fast shipping.', 'user3@example.com', 3, '2023-09-17 07:23:19', '2023-09-17 07:23:19'),
(4, 'Not what I expected.', 'user4@example.com', 4, '2023-09-17 07:23:19', '2023-09-17 07:23:19'),
(5, 'Highly recommended!', 'user5@example.com', 5, '2023-09-17 07:23:19', '2023-09-17 07:23:19'),
(6, 'Terrible product, don\'t buy it.', 'user6@example.com', 6, '2023-09-17 07:23:19', '2023-09-17 07:23:19'),
(7, 'Average quality, but the price is right.', 'user7@example.com', 7, '2023-09-17 07:23:19', '2023-09-17 07:23:19'),
(8, 'Excellent customer service!', 'user8@example.com', 8, '2023-09-17 07:23:19', '2023-09-17 07:23:19'),
(9, 'The size is too small.', 'user9@example.com', 9, '2023-09-17 07:23:19', '2023-09-17 07:23:19'),
(10, 'Best purchase ever!', 'user10@example.com', 10, '2023-09-17 07:23:19', '2023-09-17 07:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_sliders`
--

CREATE TABLE `product_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sliders`
--

INSERT INTO `product_sliders` (`id`, `title`, `short_des`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Slider 1', 'Short description for Slider 1', 'slider1.jpg', 1, '2023-09-17 07:26:14', '2023-09-17 07:26:14'),
(2, 'Slider 2', 'Short description for Slider 2', 'slider2.jpg', 2, '2023-09-17 07:26:14', '2023-09-17 07:26:14'),
(3, 'Slider 3', 'Short description for Slider 3', 'slider3.jpg', 3, '2023-09-17 07:26:14', '2023-09-17 07:26:14'),
(4, 'Slider 4', 'Short description for Slider 4', 'slider4.jpg', 4, '2023-09-17 07:26:14', '2023-09-17 07:26:14'),
(5, 'Slider 5', 'Short description for Slider 5', 'slider5.jpg', 5, '2023-09-17 07:26:14', '2023-09-17 07:26:14'),
(6, 'Slider 6', 'Short description for Slider 6', 'slider6.jpg', 6, '2023-09-17 07:26:14', '2023-09-17 07:26:14'),
(7, 'Slider 7', 'Short description for Slider 7', 'slider7.jpg', 7, '2023-09-17 07:26:14', '2023-09-17 07:26:14'),
(8, 'Slider 8', 'Short description for Slider 8', 'slider8.jpg', 8, '2023-09-17 07:26:14', '2023-09-17 07:26:14'),
(9, 'Slider 9', 'Short description for Slider 9', 'slider9.jpg', 9, '2023-09-17 07:26:14', '2023-09-17 07:26:14'),
(10, 'Slider 10', 'Short description for Slider 10', 'slider10.jpg', 10, '2023-09-17 07:26:14', '2023-09-17 07:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_wishes`
--

CREATE TABLE `product_wishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_wishes`
--

INSERT INTO `product_wishes` (`id`, `email`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'user1@example.com', 1, '2023-09-17 07:29:10', '2023-09-17 07:29:10'),
(2, 'user2@example.com', 2, '2023-09-17 07:29:10', '2023-09-17 07:29:10'),
(3, 'user3@example.com', 3, '2023-09-17 07:29:10', '2023-09-17 07:29:10'),
(4, 'user4@example.com', 4, '2023-09-17 07:29:10', '2023-09-17 07:29:10'),
(5, 'user5@example.com', 5, '2023-09-17 07:29:10', '2023-09-17 07:29:10'),
(6, 'user6@example.com', 6, '2023-09-17 07:29:10', '2023-09-17 07:29:10'),
(7, 'user7@example.com', 7, '2023-09-17 07:29:10', '2023-09-17 07:29:10'),
(8, 'user8@example.com', 8, '2023-09-17 07:29:10', '2023-09-17 07:29:10'),
(9, 'user9@example.com', 9, '2023-09-17 07:29:10', '2023-09-17 07:29:10'),
(10, 'user10@example.com', 10, '2023-09-17 07:29:10', '2023-09-17 07:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `shippingAddress` varchar(1000) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `firstName`, `lastName`, `mobile`, `city`, `shippingAddress`, `email`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', '1234567890', 'New York', '123 Main St', 'user1@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27'),
(2, 'Alice', 'Smith', '9876543210', 'Los Angeles', '456 Elm St', 'user2@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27'),
(3, 'Bob', 'Johnson', '5555555555', 'Chicago', '789 Oak St', 'user3@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27'),
(4, 'Emily', 'Brown', '4443332222', 'San Francisco', '101 Pine St', 'user4@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27'),
(5, 'David', 'Lee', '1112223333', 'Houston', '555 Maple St', 'user5@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27'),
(6, 'Sophia', 'Davis', '9998887777', 'Miami', '888 Cedar St', 'user6@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27'),
(7, 'Oliver', 'Wilson', '7771112222', 'Dallas', '777 Birch St', 'user7@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27'),
(8, 'Emma', 'Anderson', '6664448888', 'Phoenix', '999 Redwood St', 'user8@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27'),
(9, 'Michael', 'Martinez', '3331115555', 'Denver', '333 Sequoia St', 'user9@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27'),
(10, 'Liam', 'Taylor', '2223334444', 'Seattle', '222 Spruce St', 'user10@example.com', '2023-09-17 06:59:27', '2023-09-17 06:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'user1@example.com', '123456', '2023-09-17 06:55:31', '2023-09-17 06:55:31'),
(2, 'user2@example.com', '789012', '2023-09-17 06:55:31', '2023-09-17 06:55:31'),
(3, 'user3@example.com', '345678', '2023-09-17 06:55:31', '2023-09-17 06:55:31'),
(4, 'user4@example.com', '901234', '2023-09-17 06:55:31', '2023-09-17 06:55:31'),
(5, 'user5@example.com', '567890', '2023-09-17 06:55:31', '2023-09-17 06:55:31'),
(6, 'user6@example.com', '234567', '2023-09-17 06:55:31', '2023-09-17 06:55:31'),
(7, 'user7@example.com', '890123', '2023-09-17 06:55:31', '2023-09-17 06:55:31'),
(8, 'user8@example.com', '456789', '2023-09-17 06:55:31', '2023-09-17 06:55:31'),
(9, 'user9@example.com', '012345', '2023-09-17 06:55:31', '2023-09-17 06:55:31'),
(10, 'user10@example.com', '678901', '2023-09-17 06:55:31', '2023-09-17 06:55:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_carts_email_foreign` (`email`),
  ADD KEY `product_carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_details_product_id_unique` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_email_foreign` (`email`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sliders_product_id_unique` (`product_id`);

--
-- Indexes for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_wishes_email_foreign` (`email`),
  ADD KEY `product_wishes_product_id_foreign` (`product_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_wishes`
--
ALTER TABLE `product_wishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD CONSTRAINT `product_carts_email_foreign` FOREIGN KEY (`email`) REFERENCES `profiles` (`email`),
  ADD CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_email_foreign` FOREIGN KEY (`email`) REFERENCES `profiles` (`email`),
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD CONSTRAINT `product_sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD CONSTRAINT `product_wishes_email_foreign` FOREIGN KEY (`email`) REFERENCES `profiles` (`email`),
  ADD CONSTRAINT `product_wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_email_foreign` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

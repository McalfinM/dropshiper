-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2024 at 10:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

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
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `address_type` varchar(191) NOT NULL,
  `parent_address_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'null if guest checkout',
  `cart_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for cart_addresses',
  `order_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for order_addresses',
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `postcode` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `vat_id` varchar(191) DEFAULT NULL,
  `default_address` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'only for customer_addresses',
  `use_for_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address_type`, `parent_address_id`, `customer_id`, `cart_id`, `order_id`, `first_name`, `last_name`, `gender`, `company_name`, `address`, `city`, `state`, `country`, `postcode`, `email`, `phone`, `vat_id`, `default_address`, `use_for_shipping`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'customer', NULL, 1, NULL, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 09:58:30', '2024-11-07 09:58:30'),
(2, 'cart_billing', 1, 1, 1, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 1, NULL, '2024-11-07 09:58:36', '2024-11-07 09:58:36'),
(3, 'cart_shipping', 1, 1, 1, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 09:58:36', '2024-11-07 09:58:36'),
(4, 'order_shipping', NULL, NULL, NULL, 1, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 09:58:55', '2024-11-07 09:58:55'),
(5, 'order_billing', NULL, NULL, NULL, 1, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 09:58:55', '2024-11-07 09:58:55'),
(6, 'cart_billing', 1, 1, 2, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 1, NULL, '2024-11-07 10:46:19', '2024-11-07 10:46:19'),
(7, 'cart_shipping', 1, 1, 2, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 10:46:19', '2024-11-07 10:46:19'),
(8, 'order_shipping', NULL, NULL, NULL, 2, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 10:46:31', '2024-11-07 10:46:31'),
(9, 'order_billing', NULL, NULL, NULL, 2, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 10:46:31', '2024-11-07 10:46:31'),
(10, 'cart_billing', 1, 1, 3, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 1, NULL, '2024-11-07 17:43:45', '2024-11-07 17:43:45'),
(11, 'cart_shipping', 1, 1, 3, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:43:45', '2024-11-07 17:43:45'),
(12, 'order_shipping', NULL, NULL, NULL, 3, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:44:02', '2024-11-07 17:44:02'),
(13, 'order_billing', NULL, NULL, NULL, 3, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:44:02', '2024-11-07 17:44:02'),
(14, 'cart_billing', 1, 1, 4, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 1, NULL, '2024-11-07 17:49:48', '2024-11-07 17:49:48'),
(15, 'cart_shipping', 1, 1, 4, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:49:48', '2024-11-07 17:49:48'),
(16, 'order_shipping', NULL, NULL, NULL, 4, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:50:19', '2024-11-07 17:50:19'),
(17, 'order_billing', NULL, NULL, NULL, 4, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:50:19', '2024-11-07 17:50:19'),
(18, 'cart_billing', 1, 1, 5, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 1, NULL, '2024-11-07 17:54:17', '2024-11-07 17:54:17'),
(19, 'cart_shipping', 1, 1, 5, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:54:17', '2024-11-07 17:54:17'),
(20, 'order_shipping', NULL, NULL, NULL, 5, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:54:24', '2024-11-07 17:54:24'),
(21, 'order_billing', NULL, NULL, NULL, 5, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:54:24', '2024-11-07 17:54:24'),
(22, 'cart_billing', 1, 1, 6, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 1, NULL, '2024-11-07 17:57:06', '2024-11-07 17:57:06'),
(23, 'cart_shipping', 1, 1, 6, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:57:06', '2024-11-07 17:57:06'),
(24, 'order_shipping', NULL, NULL, NULL, 6, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:57:14', '2024-11-07 17:57:14'),
(25, 'order_billing', NULL, NULL, NULL, 6, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 17:57:14', '2024-11-07 17:57:14'),
(26, 'cart_billing', 1, 1, 7, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 1, NULL, '2024-11-07 18:07:12', '2024-11-07 18:07:12'),
(27, 'cart_shipping', 1, 1, 7, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 18:07:12', '2024-11-07 18:07:12'),
(28, 'order_shipping', NULL, NULL, NULL, 7, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 18:51:37', '2024-11-07 18:51:37'),
(29, 'order_billing', NULL, NULL, NULL, 7, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 18:51:37', '2024-11-07 18:51:37'),
(30, 'cart_billing', 1, 1, 8, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 1, NULL, '2024-11-07 18:53:37', '2024-11-07 18:53:37'),
(31, 'cart_shipping', 1, 1, 8, NULL, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 18:53:37', '2024-11-07 18:53:37'),
(32, 'order_shipping', NULL, NULL, NULL, 8, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 18:53:41', '2024-11-07 18:53:41'),
(33, 'order_billing', NULL, NULL, NULL, 8, 'testing', 'testing', NULL, '', 'nama jalan', 'jakarta', 'id', 'ID', '15424', 'bellatrix808080@gmail.com', '08954574875845', NULL, 0, 0, NULL, '2024-11-07 18:53:41', '2024-11-07 18:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `api_token`, `status`, `role_id`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'calfin', 'admin@example.com', '$2y$10$hw2kYpOFAmq2pC4AuH0bfeBB4lE1s0wIHI4fe8QeXxE/G.lx9SqLy', 'zw1MLPIGYQHbGFGGB9AeVGd4W4vfkiUr7YuqfVQx2oHsVXbCNnyZ2RiGKhdeaGQ1BlNgadMznb3Rszwf', 1, 1, NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `admin_name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `swatch_type` varchar(191) DEFAULT NULL,
  `validation` varchar(191) DEFAULT NULL,
  `regex` varchar(191) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_comparable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_visible_on_front` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_locale` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_channel` tinyint(1) NOT NULL DEFAULT 0,
  `default_value` int(11) DEFAULT NULL,
  `enable_wysiwyg` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `admin_name`, `type`, `swatch_type`, `validation`, `regex`, `position`, `is_required`, `is_unique`, `is_filterable`, `is_comparable`, `is_configurable`, `is_user_defined`, `is_visible_on_front`, `value_per_locale`, `value_per_channel`, `default_value`, `enable_wysiwyg`, `created_at`, `updated_at`) VALUES
(1, 'sku', 'SKU', 'text', NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(2, 'name', 'Name', 'text', NULL, NULL, NULL, 3, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(3, 'url_key', 'URL Key', 'text', NULL, NULL, NULL, 4, 1, 1, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(4, 'tax_category_id', 'Tax Category', 'select', NULL, NULL, NULL, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(5, 'new', 'New', 'boolean', NULL, NULL, NULL, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(6, 'featured', 'Featured', 'boolean', NULL, NULL, NULL, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(7, 'visible_individually', 'Visible Individually', 'boolean', NULL, NULL, NULL, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(8, 'status', 'Status', 'boolean', NULL, NULL, NULL, 10, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(9, 'short_description', 'Short Description', 'textarea', NULL, NULL, NULL, 11, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(10, 'description', 'Description', 'textarea', NULL, NULL, NULL, 12, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 1, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(11, 'price', 'Price', 'price', NULL, 'decimal', NULL, 13, 1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(12, 'cost', 'Cost', 'price', NULL, 'decimal', NULL, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(13, 'special_price', 'Special Price', 'price', NULL, 'decimal', NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(14, 'special_price_from', 'Special Price From', 'date', NULL, NULL, NULL, 16, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(15, 'special_price_to', 'Special Price To', 'date', NULL, NULL, NULL, 17, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(16, 'meta_title', 'Meta Title', 'textarea', NULL, NULL, NULL, 18, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(17, 'meta_keywords', 'Meta Keywords', 'textarea', NULL, NULL, NULL, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(18, 'meta_description', 'Meta Description', 'textarea', NULL, NULL, NULL, 21, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(19, 'length', 'Length', 'text', NULL, 'decimal', NULL, 22, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(20, 'width', 'Width', 'text', NULL, 'decimal', NULL, 23, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(21, 'height', 'Height', 'text', NULL, 'decimal', NULL, 24, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(22, 'weight', 'Weight', 'text', NULL, 'decimal', NULL, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(23, 'color', 'Color', 'select', 'dropdown', NULL, NULL, 26, 0, 0, 1, 0, 1, 1, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 12:52:36'),
(24, 'size', 'Size', 'select', NULL, NULL, NULL, 27, 0, 0, 1, 0, 1, 1, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(25, 'brand', 'Brand', 'select', NULL, NULL, NULL, 28, 0, 0, 1, 0, 0, 1, 1, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(26, 'guest_checkout', 'Guest Checkout', 'boolean', NULL, NULL, NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(27, 'product_number', 'Product Number', 'text', NULL, NULL, NULL, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(28, 'manage_stock', 'Manage Stock', 'boolean', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '2024-11-07 08:25:21', '2024-11-07 08:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_families`
--

CREATE TABLE `attribute_families` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_families`
--

INSERT INTO `attribute_families` (`id`, `code`, `name`, `status`, `is_user_defined`) VALUES
(1, 'default', 'Default', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_groups`
--

CREATE TABLE `attribute_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `column` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_groups`
--

INSERT INTO `attribute_groups` (`id`, `code`, `attribute_family_id`, `name`, `column`, `position`, `is_user_defined`) VALUES
(1, 'general', 1, 'General', 1, 1, 0),
(2, 'description', 1, 'Description', 1, 2, 0),
(3, 'meta_description', 1, 'Meta Description', 1, 3, 0),
(4, 'price', 1, 'Price', 2, 1, 0),
(5, 'shipping', 1, 'Shipping', 2, 2, 0),
(6, 'settings', 1, 'Settings', 2, 3, 0),
(7, 'inventories', 1, 'Inventories', 2, 4, 0),
(8, 'multiple_colour', 1, 'Colour', 2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group_mappings`
--

CREATE TABLE `attribute_group_mappings` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_group_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_group_mappings`
--

INSERT INTO `attribute_group_mappings` (`attribute_id`, `attribute_group_id`, `position`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 6, 1),
(6, 6, 2),
(7, 6, 3),
(8, 6, 4),
(9, 2, 1),
(10, 2, 2),
(11, 4, 1),
(12, 4, 2),
(13, 4, 3),
(14, 4, 4),
(15, 4, 5),
(16, 3, 1),
(17, 3, 2),
(18, 3, 3),
(19, 5, 1),
(20, 5, 2),
(21, 5, 3),
(22, 5, 4),
(23, 1, 6),
(24, 1, 7),
(25, 1, 8),
(26, 6, 5),
(27, 1, 2),
(28, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `swatch_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `admin_name`, `sort_order`, `swatch_value`) VALUES
(1, 23, 'Red', 0, NULL),
(2, 23, 'Green', 1, NULL),
(3, 23, 'Yellow', 2, NULL),
(4, 23, 'Black', 3, NULL),
(5, 23, 'White', 4, NULL),
(6, 24, 'S', 1, NULL),
(7, 24, 'M', 2, NULL),
(8, 24, 'L', 3, NULL),
(9, 24, 'XL', 4, NULL),
(10, 23, 'Mocca', 5, NULL),
(11, 23, 'Ivory', 6, NULL),
(12, 23, 'Choco', 7, NULL),
(13, 23, 'Caramel', 8, NULL),
(14, 23, 'Brown', 9, NULL),
(15, 23, 'Teracota', 10, NULL),
(16, 23, 'Soft Blue', 11, NULL),
(17, 23, 'Sky Blue', 12, NULL),
(18, 23, 'Blue Grey', 13, NULL),
(19, 23, 'Dusty', 14, NULL),
(20, 23, 'Sage', 15, NULL),
(21, 23, 'Red Wine', 16, NULL),
(22, 23, 'Green Forest', 17, NULL),
(23, 23, 'Fuschia', 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_option_translations`
--

CREATE TABLE `attribute_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `label` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_option_translations`
--

INSERT INTO `attribute_option_translations` (`id`, `attribute_option_id`, `locale`, `label`) VALUES
(1, 1, 'en', 'Red'),
(2, 2, 'en', 'Green'),
(3, 3, 'en', 'Yellow'),
(4, 4, 'en', 'Black'),
(5, 5, 'en', 'White'),
(6, 6, 'en', 'S'),
(7, 7, 'en', 'M'),
(8, 8, 'en', 'L'),
(9, 9, 'en', 'XL'),
(10, 10, 'en', 'Mocca'),
(11, 11, 'en', 'Ivory'),
(12, 12, 'en', 'Choco'),
(13, 13, 'en', 'Caramel'),
(14, 14, 'en', 'Brown'),
(15, 15, 'en', 'Teracota'),
(16, 16, 'en', 'Soft Blue'),
(17, 17, 'en', 'Sky Blue'),
(18, 18, 'en', 'Blue Grey'),
(19, 19, 'en', 'Dusty'),
(20, 20, 'en', 'Sage'),
(21, 21, 'en', 'Red Wine'),
(22, 22, 'en', 'Green Forest'),
(23, 23, 'en', 'Fuschia');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'SKU'),
(2, 2, 'en', 'Name'),
(3, 3, 'en', 'URL Key'),
(4, 4, 'en', 'Tax Category'),
(5, 5, 'en', 'New'),
(6, 6, 'en', 'Featured'),
(7, 7, 'en', 'Visible Individually'),
(8, 8, 'en', 'Status'),
(9, 9, 'en', 'Short Description'),
(10, 10, 'en', 'Description'),
(11, 11, 'en', 'Price'),
(12, 12, 'en', 'Cost'),
(13, 13, 'en', 'Special Price'),
(14, 14, 'en', 'Special Price From'),
(15, 15, 'en', 'Special Price To'),
(16, 16, 'en', 'Meta Title'),
(17, 17, 'en', 'Meta Keywords'),
(18, 18, 'en', 'Meta Description'),
(19, 19, 'en', 'Length'),
(20, 20, 'en', 'Width'),
(21, 21, 'en', 'Height'),
(22, 22, 'en', 'Weight'),
(23, 23, 'en', 'Color'),
(24, 24, 'en', 'Size'),
(25, 25, 'en', 'Brand'),
(26, 26, 'en', 'Guest Checkout'),
(27, 27, 'en', 'Product Number'),
(28, 28, 'en', 'Manage Stock');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_first_name` varchar(191) DEFAULT NULL,
  `customer_last_name` varchar(191) DEFAULT NULL,
  `shipping_method` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `items_count` int(11) DEFAULT NULL,
  `items_qty` decimal(12,4) DEFAULT NULL,
  `exchange_rate` decimal(12,4) DEFAULT NULL,
  `global_currency_code` varchar(191) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `cart_currency_code` varchar(191) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `tax_total` decimal(12,4) DEFAULT 0.0000,
  `base_tax_total` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `checkout_method` varchar(191) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `applied_cart_rule_ids` varchar(191) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `coupon_code`, `is_gift`, `items_count`, `items_qty`, `exchange_rate`, `global_currency_code`, `base_currency_code`, `channel_currency_code`, `cart_currency_code`, `grand_total`, `base_grand_total`, `sub_total`, `base_sub_total`, `tax_total`, `base_tax_total`, `discount_amount`, `base_discount_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `checkout_method`, `is_guest`, `is_active`, `applied_cart_rule_ids`, `customer_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', NULL, 0, 1, '1.0000', NULL, 'IDR', 'IDR', 'IDR', 'IDR', '14.0000', '14.0000', '14.0000', '14.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '14.0000', '14.0000', NULL, 0, 0, NULL, 1, 1, '2024-11-07 09:56:32', '2024-11-07 09:58:58'),
(2, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', NULL, 0, 1, '1.0000', NULL, 'IDR', 'IDR', 'IDR', 'IDR', '470.0000', '470.0000', '470.0000', '470.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '470.0000', '470.0000', NULL, 0, 0, NULL, 1, 1, '2024-11-07 10:45:51', '2024-11-07 10:46:36'),
(3, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', NULL, 0, 1, '2.0000', NULL, 'IDR', 'IDR', 'IDR', 'IDR', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', NULL, 0, 0, NULL, 1, 1, '2024-11-07 17:42:55', '2024-11-07 17:44:08'),
(4, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', NULL, 0, 1, '2.0000', NULL, 'IDR', 'IDR', 'IDR', 'IDR', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', NULL, 0, 0, NULL, 1, 1, '2024-11-07 17:49:42', '2024-11-07 17:50:23'),
(5, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', NULL, 0, 1, '2.0000', NULL, 'IDR', 'IDR', 'IDR', 'IDR', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', NULL, 0, 0, NULL, 1, 1, '2024-11-07 17:54:11', '2024-11-07 17:54:30'),
(6, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', NULL, 0, 1, '2.0000', NULL, 'IDR', 'IDR', 'IDR', 'IDR', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', NULL, 0, 0, NULL, 1, 1, '2024-11-07 17:56:56', '2024-11-07 17:57:30'),
(7, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', NULL, 0, 1, '4.0000', NULL, 'IDR', 'IDR', 'IDR', 'IDR', '120000.0000', '120000.0000', '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '120000.0000', '120000.0000', NULL, 0, 0, NULL, 1, 1, '2024-11-07 18:07:03', '2024-11-07 18:51:43'),
(8, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', NULL, 0, 1, '4.0000', NULL, 'IDR', 'IDR', 'IDR', 'IDR', '120000.0000', '120000.0000', '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '120000.0000', '120000.0000', NULL, 0, 0, NULL, 1, 1, '2024-11-07 18:53:32', '2024-11-07 18:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sku` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price` decimal(12,4) NOT NULL DEFAULT 1.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `custom_price` decimal(12,4) DEFAULT NULL,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `applied_tax_rate` varchar(191) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `quantity`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `base_total_weight`, `price`, `base_price`, `custom_price`, `total`, `base_total`, `tax_percent`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `applied_tax_rate`, `parent_id`, `product_id`, `cart_id`, `tax_category_id`, `applied_cart_rule_ids`, `additional`, `created_at`, `updated_at`) VALUES
(3, 2, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '8.0000', '8.0000', '30000.0000', '30000.0000', NULL, '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', NULL, NULL, 93, 3, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":{\"23\":\"1\",\"24\":\"6\"},\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}}}', '2024-11-07 17:42:56', '2024-11-07 17:42:56'),
(4, 0, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 3, 94, 3, NULL, NULL, '{\"product_id\":94,\"parent_id\":93}', '2024-11-07 17:42:56', '2024-11-07 17:42:56'),
(5, 2, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '8.0000', '8.0000', '30000.0000', '30000.0000', NULL, '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', NULL, NULL, 93, 4, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 17:49:43', '2024-11-07 17:49:43'),
(6, 0, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 5, 94, 4, NULL, NULL, '{\"product_id\":94,\"parent_id\":93}', '2024-11-07 17:49:43', '2024-11-07 17:49:43'),
(7, 2, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '8.0000', '8.0000', '30000.0000', '30000.0000', NULL, '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', NULL, NULL, 93, 5, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 17:54:11', '2024-11-07 17:54:11'),
(8, 0, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 7, 94, 5, NULL, NULL, '{\"product_id\":94,\"parent_id\":93}', '2024-11-07 17:54:11', '2024-11-07 17:54:11'),
(9, 2, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '8.0000', '8.0000', '30000.0000', '30000.0000', NULL, '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', NULL, NULL, 93, 6, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 17:56:56', '2024-11-07 17:56:56'),
(10, 0, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 9, 94, 6, NULL, NULL, '{\"product_id\":94,\"parent_id\":93}', '2024-11-07 17:56:56', '2024-11-07 17:56:56'),
(11, 4, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '16.0000', '16.0000', '30000.0000', '30000.0000', NULL, '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '120000.0000', '120000.0000', NULL, NULL, 93, 7, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":4,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 18:07:03', '2024-11-07 18:07:03'),
(12, 0, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 11, 94, 7, NULL, NULL, '{\"product_id\":94,\"parent_id\":93}', '2024-11-07 18:07:03', '2024-11-07 18:07:03'),
(13, 4, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '16.0000', '16.0000', '30000.0000', '30000.0000', NULL, '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '120000.0000', '120000.0000', NULL, NULL, 93, 8, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":4,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 18:53:32', '2024-11-07 18:53:32'),
(14, 0, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', '0.0000', '1.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 13, 94, 8, NULL, NULL, '{\"product_id\":94,\"parent_id\":93}', '2024-11-07 18:53:32', '2024-11-07 18:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_inventories`
--

CREATE TABLE `cart_item_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_payment`
--

CREATE TABLE `cart_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(191) NOT NULL,
  `method_title` varchar(191) DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_payment`
--

INSERT INTO `cart_payment` (`id`, `method`, `method_title`, `cart_id`, `created_at`, `updated_at`) VALUES
(2, 'cashondelivery', 'Cash On Delivery', 1, '2024-11-07 09:58:54', '2024-11-07 09:58:54'),
(3, 'cashondelivery', 'Cash On Delivery', 2, '2024-11-07 10:46:23', '2024-11-07 10:46:23'),
(4, 'moneytransfer', 'Transfer ATM', 3, '2024-11-07 17:44:01', '2024-11-07 17:44:01'),
(8, 'moneytransfer', 'Transfer ATM', 4, '2024-11-07 17:50:13', '2024-11-07 17:50:13'),
(9, 'moneytransfer', 'Transfer ATM', 5, '2024-11-07 17:54:20', '2024-11-07 17:54:20'),
(11, 'cashondelivery', 'Bayar di tempat', 6, '2024-11-07 17:57:12', '2024-11-07 17:57:12'),
(31, 'moneytransfer', 'Transfer ATM', 7, '2024-11-07 18:51:27', '2024-11-07 18:51:27'),
(32, 'moneytransfer', 'Transfer ATM', 8, '2024-11-07 18:53:40', '2024-11-07 18:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `cart_rules`
--

CREATE TABLE `cart_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_type` int(11) NOT NULL DEFAULT 1,
  `use_auto_generation` tinyint(1) NOT NULL DEFAULT 0,
  `usage_per_customer` int(11) NOT NULL DEFAULT 0,
  `uses_per_coupon` int(11) NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `uses_attribute_conditions` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_quantity` int(11) NOT NULL DEFAULT 1,
  `discount_step` varchar(191) NOT NULL DEFAULT '1',
  `apply_to_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_channels`
--

CREATE TABLE `cart_rule_channels` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupons`
--

CREATE TABLE `cart_rule_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `usage_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usage_per_customer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `expired_at` date DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupon_usage`
--

CREATE TABLE `cart_rule_coupon_usage` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` int(11) NOT NULL DEFAULT 0,
  `cart_rule_coupon_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customers`
--

CREATE TABLE `cart_rule_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customer_groups`
--

CREATE TABLE `cart_rule_customer_groups` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_translations`
--

CREATE TABLE `cart_rule_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `label` text DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_shipping_rates`
--

CREATE TABLE `cart_shipping_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `carrier` varchar(191) NOT NULL,
  `carrier_title` varchar(191) NOT NULL,
  `method` varchar(191) NOT NULL,
  `method_title` varchar(191) NOT NULL,
  `method_description` varchar(191) DEFAULT NULL,
  `price` double DEFAULT 0,
  `base_price` double DEFAULT 0,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_percent` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `applied_tax_rate` varchar(191) DEFAULT NULL,
  `is_calculate_tax` tinyint(1) NOT NULL DEFAULT 1,
  `cart_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_shipping_rates`
--

INSERT INTO `cart_shipping_rates` (`id`, `carrier`, `carrier_title`, `method`, `method_title`, `method_description`, `price`, `base_price`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `price_incl_tax`, `base_price_incl_tax`, `applied_tax_rate`, `is_calculate_tax`, `cart_address_id`, `created_at`, `updated_at`, `cart_id`) VALUES
(3, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', NULL, 1, 3, '2024-11-07 09:58:40', '2024-11-07 09:58:40', 1),
(4, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 3, '2024-11-07 09:58:40', '2024-11-07 09:58:40', 1),
(7, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', NULL, 1, 7, '2024-11-07 10:46:20', '2024-11-07 10:46:20', 2),
(8, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 7, '2024-11-07 10:46:20', '2024-11-07 10:46:20', 2),
(11, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 20, 20, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '20.0000', '20.0000', NULL, 1, 11, '2024-11-07 17:43:57', '2024-11-07 17:43:57', 3),
(12, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 11, '2024-11-07 17:43:57', '2024-11-07 17:43:57', 3),
(19, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 20, 20, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '20.0000', '20.0000', NULL, 1, 15, '2024-11-07 17:50:11', '2024-11-07 17:50:11', 4),
(20, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 15, '2024-11-07 17:50:11', '2024-11-07 17:50:11', 4),
(23, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 20, 20, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '20.0000', '20.0000', NULL, 1, 19, '2024-11-07 17:54:19', '2024-11-07 17:54:19', 5),
(24, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 19, '2024-11-07 17:54:19', '2024-11-07 17:54:19', 5),
(27, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 20, 20, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '20.0000', '20.0000', NULL, 1, 23, '2024-11-07 17:57:07', '2024-11-07 17:57:07', 6),
(28, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 23, '2024-11-07 17:57:07', '2024-11-07 17:57:07', 6),
(87, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 40, 40, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '40.0000', '40.0000', NULL, 1, 27, '2024-11-07 18:51:25', '2024-11-07 18:51:25', 7),
(88, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 27, '2024-11-07 18:51:25', '2024-11-07 18:51:25', 7),
(91, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 40, 40, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '40.0000', '40.0000', NULL, 1, 31, '2024-11-07 18:53:39', '2024-11-07 18:53:39', 8),
(92, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 31, '2024-11-07 18:53:39', '2024-11-07 18:53:39', 8);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rules`
--

CREATE TABLE `catalog_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `starts_from` date DEFAULT NULL,
  `ends_till` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_channels`
--

CREATE TABLE `catalog_rule_channels` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_customer_groups`
--

CREATE TABLE `catalog_rule_customer_groups` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_products`
--

CREATE TABLE `catalog_rule_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_product_prices`
--

CREATE TABLE `catalog_rule_product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `rule_date` date NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `logo_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `display_mode` varchar(191) DEFAULT 'products_and_description',
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `banner_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `position`, `logo_path`, `status`, `display_mode`, `_lft`, `_rgt`, `parent_id`, `additional`, `banner_path`, `created_at`, `updated_at`) VALUES
(5, 1, 'category/5/KDxrJCYxAcdHkmq3cKg1AGJN6ZMDbdohFHiQAXUE.webp', 1, 'products_only', 14, 17, 6, NULL, NULL, '2024-11-07 11:53:16', '2024-11-07 12:23:38'),
(6, 1, NULL, 0, 'products_only', 13, 26, NULL, NULL, NULL, '2024-11-07 11:58:46', '2024-11-07 12:23:38'),
(7, 2, NULL, 1, 'products_only', 15, 16, 5, NULL, NULL, '2024-11-07 12:01:49', '2024-11-07 12:23:38'),
(8, 1, 'category/8/5YufcTzl7d7wT5KYa3deT0zfzi0Ok0jPKylvR6uO.webp', 1, 'products_and_description', 18, 19, 6, NULL, NULL, '2024-11-07 12:11:14', '2024-11-07 12:23:38'),
(9, 1, 'category/9/tIKPCvGt9NRg6pm8KKYqllQZb2pL54wYJToXkNHV.webp', 1, 'products_and_description', 20, 21, 6, NULL, NULL, '2024-11-07 12:19:15', '2024-11-07 12:23:38'),
(10, 1, 'category/10/f9L4ujtvqMaz9TK5bothzLhNEcdHkMufr7oG371A.webp', 1, 'products_and_description', 22, 23, 6, NULL, NULL, '2024-11-07 12:21:59', '2024-11-07 12:23:38'),
(11, 1, 'category/11/9IlSBsjzFsk3zUgBnLt7L4bb6iwuV8uwnfwVLNdw.webp', 1, 'products_and_description', 24, 25, 6, NULL, NULL, '2024-11-07 12:24:50', '2024-11-07 12:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `category_filterable_attributes`
--

CREATE TABLE `category_filterable_attributes` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_filterable_attributes`
--

INSERT INTO `category_filterable_attributes` (`category_id`, `attribute_id`) VALUES
(5, 11),
(5, 25),
(6, 11),
(6, 23),
(6, 24),
(6, 25),
(7, 11),
(8, 11),
(9, 11),
(10, 11),
(10, 25),
(11, 11),
(11, 25);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(191) NOT NULL,
  `url_path` varchar(2048) NOT NULL,
  `description` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `locale_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `slug`, `url_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `locale_id`, `locale`) VALUES
(5, 5, 'Elektronik', 'elektronik', '', '<p>Ini adalah kategori elektronik</p>', 'Elektronik Go-ber', 'Elektronik Go-ber', 'Elektronik Go-ber', 1, 'en'),
(6, 6, 'Root', 'root', '', '<p>This is root Category</p>', '', '', '', 1, 'en'),
(7, 7, 'Aksesories', 'aksesories', '', '', 'aksesories gober', 'aksesories gober', 'aksesoris elektronik gober', 1, 'en'),
(8, 8, 'Rumah & Dapur', 'rumah-dapur', '', '<p>Kebutuhan rumah dan dapur anda</p>', 'kebutuhan rumah dan dapur', 'rumah dan dapur', 'rumah dan dapur', 1, 'en'),
(9, 9, 'Hobbies', 'hobbies', '', '<p>Kebutuhan hobby dan koleksimu</p>', 'hobby dan koleksi', 'hobby dan koleksi', 'hobby dan koleksi', 1, 'en'),
(10, 10, 'Fashion', 'fashion', '', '<p>Fashion kami</p>', 'fashion gober', 'fashion gober', 'fashion gober', 1, 'en'),
(11, 11, 'Kecantikan', 'kecantikan', '', '<p>Kebutuhan perawatan tubuh dan wajah yang terbaik untuk anda</p>', 'kecantikan', 'kecantikan', 'kecantikan', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `timezone` varchar(191) DEFAULT NULL,
  `theme` varchar(191) DEFAULT NULL,
  `hostname` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `home_seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`home_seo`)),
  `is_maintenance_on` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_ips` text DEFAULT NULL,
  `root_category_id` int(10) UNSIGNED DEFAULT NULL,
  `default_locale_id` int(10) UNSIGNED NOT NULL,
  `base_currency_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `code`, `timezone`, `theme`, `hostname`, `logo`, `favicon`, `home_seo`, `is_maintenance_on`, `allowed_ips`, `root_category_id`, `default_locale_id`, `base_currency_id`, `created_at`, `updated_at`) VALUES
(1, 'default', NULL, 'default', 'http://localhost', NULL, NULL, NULL, 0, NULL, NULL, 1, 1, '2024-11-07 08:25:21', '2024-11-07 08:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `channel_currencies`
--

CREATE TABLE `channel_currencies` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_currencies`
--

INSERT INTO `channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_inventory_sources`
--

CREATE TABLE `channel_inventory_sources` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `inventory_source_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_inventory_sources`
--

INSERT INTO `channel_inventory_sources` (`channel_id`, `inventory_source_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_locales`
--

CREATE TABLE `channel_locales` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_locales`
--

INSERT INTO `channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_translations`
--

CREATE TABLE `channel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `maintenance_mode_text` text DEFAULT NULL,
  `home_seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`home_seo`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_translations`
--

INSERT INTO `channel_translations` (`id`, `channel_id`, `locale`, `name`, `description`, `maintenance_mode_text`, `home_seo`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Default', NULL, NULL, '{\"meta_title\":\"Demo store\",\"meta_description\":\"Demo store meta description\",\"meta_keywords\":\"Demo store meta keyword\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `layout` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `layout`, `created_at`, `updated_at`) VALUES
(1, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(2, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(3, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(4, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(5, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(6, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(7, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(8, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(9, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(10, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(11, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_channels`
--

CREATE TABLE `cms_page_channels` (
  `cms_page_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_translations`
--

CREATE TABLE `cms_page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_title` varchar(191) NOT NULL,
  `url_key` varchar(191) NOT NULL,
  `html_content` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `locale` varchar(191) NOT NULL,
  `cms_page_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_page_translations`
--

INSERT INTO `cms_page_translations` (`id`, `page_title`, `url_key`, `html_content`, `meta_title`, `meta_description`, `meta_keywords`, `locale`, `cms_page_id`) VALUES
(1, 'About Us', 'about-us', '<div class=\"static-container\"><div class=\"mb-5\">About Us Page Content</div></div>', 'about us', '', 'aboutus', 'en', 1),
(2, 'Return Policy', 'return-policy', '<div class=\"static-container\"><div class=\"mb-5\">Return Policy Page Content</div></div>', 'return policy', '', 'return, policy', 'en', 2),
(3, 'Refund Policy', 'refund-policy', '<div class=\"static-container\"><div class=\"mb-5\">Refund Policy Page Content</div></div>', 'Refund policy', '', 'refund, policy', 'en', 3),
(4, 'Terms & Conditions', 'terms-conditions', '<div class=\"static-container\"><div class=\"mb-5\">Terms & Conditions Page Content</div></div>', 'Terms & Conditions', '', 'term, conditions', 'en', 4),
(5, 'Terms of Use', 'terms-of-use', '<div class=\"static-container\"><div class=\"mb-5\">Terms of Use Page Content</div></div>', 'Terms of use', '', 'term, use', 'en', 5),
(6, 'Customer Service', 'customer-service', '<div class=\"static-container\"><div class=\"mb-5\">Customer Service Page Content</div></div>', 'Customer Service', '', 'customer, service', 'en', 7),
(7, 'What\'s New', 'whats-new', '<div class=\"static-container\"><div class=\"mb-5\">What\'s New page content</div></div>', 'What\'s New', '', 'new', 'en', 8),
(8, 'Payment Policy', 'payment-policy', '<div class=\"static-container\"><div class=\"mb-5\">Payment Policy Page Content</div></div>', 'Payment Policy', '', 'payment, policy', 'en', 9),
(9, 'Shipping Policy', 'shipping-policy', '<div class=\"static-container\"><div class=\"mb-5\">Shipping Policy Page Content</div></div>', 'Shipping Policy', '', 'shipping, policy', 'en', 10),
(10, 'Privacy Policy', 'privacy-policy', '<div class=\"static-container\"><div class=\"mb-5\">Privacy Policy Page Content</div></div>', 'Privacy Policy', '', 'privacy, policy', 'en', 11);

-- --------------------------------------------------------

--
-- Table structure for table `compare_items`
--

CREATE TABLE `compare_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `core_config`
--

CREATE TABLE `core_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `channel_code` varchar(191) DEFAULT NULL,
  `locale_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `core_config`
--

INSERT INTO `core_config` (`id`, `code`, `value`, `channel_code`, `locale_code`, `created_at`, `updated_at`) VALUES
(1, 'sales.checkout.shopping_cart.allow_guest_checkout', '0', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 17:52:35'),
(2, 'emails.general.notifications.emails.general.notifications.verification', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(3, 'emails.general.notifications.emails.general.notifications.registration', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(4, 'emails.general.notifications.emails.general.notifications.customer', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(5, 'emails.general.notifications.emails.general.notifications.new_order', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(6, 'emails.general.notifications.emails.general.notifications.new_admin', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(7, 'emails.general.notifications.emails.general.notifications.new_invoice', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(8, 'emails.general.notifications.emails.general.notifications.new_refund', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(9, 'emails.general.notifications.emails.general.notifications.new_shipment', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(10, 'emails.general.notifications.emails.general.notifications.new_inventory_source', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(11, 'emails.general.notifications.emails.general.notifications.cancel_order', '1', NULL, NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(12, 'customer.settings.social_login.enable_facebook', '1', 'default', NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(13, 'customer.settings.social_login.enable_twitter', '1', 'default', NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(14, 'customer.settings.social_login.enable_google', '1', 'default', NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(15, 'customer.settings.social_login.enable_linkedin', '1', 'default', NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(16, 'customer.settings.social_login.enable_github', '1', 'default', NULL, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(17, 'general.content.header_offer.title', 'Selamat Datang di Toko kami, Dapatkan Harga Menarik', NULL, NULL, '2024-11-07 10:08:25', '2024-11-07 10:08:25'),
(18, 'general.content.header_offer.redirection_title', 'SHOP NOW', NULL, NULL, '2024-11-07 10:08:25', '2024-11-07 10:08:25'),
(19, 'general.content.header_offer.redirection_link', '', NULL, NULL, '2024-11-07 10:08:25', '2024-11-07 10:08:25'),
(20, 'general.content.custom_scripts.custom_css', '', 'default', NULL, '2024-11-07 10:08:25', '2024-11-07 10:08:25'),
(21, 'general.content.custom_scripts.custom_javascript', '', 'default', NULL, '2024-11-07 10:08:25', '2024-11-07 10:08:25'),
(22, 'customer.address.requirements.country', '0', 'default', NULL, '2024-11-07 10:11:08', '2024-11-07 10:11:08'),
(23, 'customer.address.requirements.state', '0', 'default', NULL, '2024-11-07 10:11:08', '2024-11-07 10:11:08'),
(24, 'customer.address.requirements.postcode', '1', 'default', NULL, '2024-11-07 10:11:08', '2024-11-07 10:11:08'),
(25, 'customer.address.information.street_lines', '', 'default', NULL, '2024-11-07 10:11:08', '2024-11-07 10:11:08'),
(26, 'general.design.admin_logo.logo_image', 'configuration/O7jQfCOFP27k9KagcaTbCUwoCubaAdExWywgQkII.png', NULL, NULL, '2024-11-07 11:06:55', '2024-11-07 11:06:55'),
(27, 'general.design.admin_logo.favicon', 'configuration/lMMejtVR16oxy3ZF3E3zc4SnithUcTC4i5lrTgol.png', NULL, NULL, '2024-11-07 11:06:55', '2024-11-07 11:06:55'),
(28, 'sales.payment_methods.paypal_smart_button.description', 'PayPal', 'default', 'en', '2024-11-07 11:16:19', '2024-11-07 11:16:19'),
(29, 'sales.payment_methods.paypal_smart_button.active', '0', 'default', NULL, '2024-11-07 11:16:19', '2024-11-07 18:45:38'),
(30, 'sales.payment_methods.paypal_smart_button.sandbox', '1', 'default', NULL, '2024-11-07 11:16:19', '2024-11-07 11:16:19'),
(31, 'sales.payment_methods.cashondelivery.title', 'Bayar di tempat', 'default', 'en', '2024-11-07 11:16:19', '2024-11-07 11:16:19'),
(32, 'sales.payment_methods.cashondelivery.description', 'Metode pembayaran yang dilakukan ketika barang sudah tiba di tempat anda', 'default', 'en', '2024-11-07 11:16:19', '2024-11-07 11:16:19'),
(33, 'sales.payment_methods.cashondelivery.instructions', 'BCA - 010101010101\r\nMANDIRI - 010101010\r\nBRI - 0101010100', 'default', 'en', '2024-11-07 11:16:20', '2024-11-07 17:54:06'),
(34, 'sales.payment_methods.cashondelivery.generate_invoice', '0', 'default', NULL, '2024-11-07 11:16:20', '2024-11-07 11:16:20'),
(35, 'sales.payment_methods.cashondelivery.active', '1', 'default', NULL, '2024-11-07 11:16:20', '2024-11-07 11:16:20'),
(36, 'sales.payment_methods.cashondelivery.sort', '1', NULL, NULL, '2024-11-07 11:16:20', '2024-11-07 11:16:20'),
(37, 'sales.payment_methods.moneytransfer.title', 'Transfer ATM', 'default', 'en', '2024-11-07 11:16:20', '2024-11-07 11:16:20'),
(38, 'sales.payment_methods.moneytransfer.description', 'Lakukan pembayaran ke\r\nBCA - 010102301\r\nMandiri - 01001023\r\n\r\nWA admin kami jika kalian sudah membayar dan kirimkan bukti transfernya', 'default', 'en', '2024-11-07 11:16:20', '2024-11-07 18:51:06'),
(39, 'sales.payment_methods.moneytransfer.generate_invoice', '0', 'default', NULL, '2024-11-07 11:16:20', '2024-11-07 11:16:20'),
(40, 'sales.payment_methods.moneytransfer.mailing_address', 'Muhammad Calfin', 'default', 'en', '2024-11-07 11:16:20', '2024-11-07 17:46:16'),
(41, 'sales.payment_methods.moneytransfer.active', '1', 'default', NULL, '2024-11-07 11:16:20', '2024-11-07 11:16:20'),
(42, 'sales.payment_methods.moneytransfer.sort', '2', NULL, NULL, '2024-11-07 11:16:20', '2024-11-07 11:16:20'),
(43, 'sales.payment_methods.paypal_standard.description', 'PayPal Standard', 'default', 'en', '2024-11-07 11:16:20', '2024-11-07 11:16:20'),
(44, 'sales.payment_methods.paypal_standard.active', '0', 'default', NULL, '2024-11-07 11:16:20', '2024-11-07 18:51:06'),
(45, 'sales.payment_methods.paypal_standard.sandbox', '1', 'default', NULL, '2024-11-07 11:16:20', '2024-11-07 11:16:20'),
(46, 'sales.payment_methods.paypal_standard.sort', '4', NULL, NULL, '2024-11-07 11:16:20', '2024-11-07 18:45:39'),
(47, 'catalog.products.settings.compare_option', '1', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(48, 'catalog.products.settings.image_search', '1', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(49, 'catalog.products.search.engine', 'database', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(50, 'catalog.products.search.admin_mode', 'database', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(51, 'catalog.products.search.storefront_mode', 'database', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(52, 'catalog.products.search.min_query_length', '0', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(53, 'catalog.products.search.max_query_length', '1000', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(54, 'catalog.products.product_view_page.no_of_related_products', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(55, 'catalog.products.product_view_page.no_of_up_sells_products', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(56, 'catalog.products.cart_view_page.no_of_cross_sells_products', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(57, 'catalog.products.storefront.products_per_page', '', 'default', NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(58, 'catalog.products.storefront.buy_now_button_display', '0', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(59, 'catalog.products.cache_small_image.width', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(60, 'catalog.products.cache_small_image.height', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(61, 'catalog.products.cache_medium_image.width', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(62, 'catalog.products.cache_medium_image.height', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(63, 'catalog.products.cache_large_image.width', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(64, 'catalog.products.cache_large_image.height', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(65, 'catalog.products.review.guest_review', '0', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(66, 'catalog.products.review.customer_review', '1', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(67, 'catalog.products.review.summary', 'review_counts', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(68, 'catalog.products.attribute.image_attribute_upload_size', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(69, 'catalog.products.attribute.file_attribute_upload_size', '', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(70, 'catalog.products.social_share.enabled', '1', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(71, 'catalog.products.social_share.facebook', '0', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(72, 'catalog.products.social_share.twitter', '0', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(73, 'catalog.products.social_share.pinterest', '0', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(74, 'catalog.products.social_share.whatsapp', '0', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(75, 'catalog.products.social_share.linkedin', '0', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(76, 'catalog.products.social_share.email', '0', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(77, 'catalog.products.social_share.share_message', 'Go-Ber sama belanja murah di kami', NULL, NULL, '2024-11-07 12:45:59', '2024-11-07 12:45:59'),
(78, 'sales.invoice_settings.invoice_number.invoice_number_prefix', '', 'default', 'en', '2024-11-07 17:51:52', '2024-11-07 17:51:52'),
(79, 'sales.invoice_settings.invoice_number.invoice_number_length', '', 'default', 'en', '2024-11-07 17:51:52', '2024-11-07 17:51:52'),
(80, 'sales.invoice_settings.invoice_number.invoice_number_suffix', '', 'default', 'en', '2024-11-07 17:51:52', '2024-11-07 17:51:52'),
(81, 'sales.invoice_settings.invoice_number.invoice_number_generator_class', '', 'default', 'en', '2024-11-07 17:51:52', '2024-11-07 17:51:52'),
(82, 'sales.invoice_settings.payment_terms.due_duration', '', 'default', NULL, '2024-11-07 17:51:52', '2024-11-07 17:51:52'),
(83, 'sales.invoice_settings.pdf_print_outs.invoice_id', '1', NULL, NULL, '2024-11-07 17:51:52', '2024-11-07 17:51:52'),
(84, 'sales.invoice_settings.pdf_print_outs.order_id', '1', NULL, NULL, '2024-11-07 17:51:52', '2024-11-07 17:51:52'),
(85, 'sales.invoice_settings.pdf_print_outs.logo', 'configuration/VDL0xONTil3o1bHJiuTAyHr9dqto30gmvdOi6FvD.png', 'default', NULL, '2024-11-07 17:51:52', '2024-11-07 17:51:52'),
(86, 'sales.invoice_settings.invoice_reminders.reminders_limit', '', 'default', NULL, '2024-11-07 17:51:52', '2024-11-07 17:51:52'),
(87, 'sales.checkout.shopping_cart.cart_page', '1', NULL, NULL, '2024-11-07 17:52:35', '2024-11-07 17:52:35'),
(88, 'sales.checkout.shopping_cart.cross_sell', '1', NULL, NULL, '2024-11-07 17:52:35', '2024-11-07 17:52:35'),
(89, 'sales.checkout.shopping_cart.estimate_shipping', '0', NULL, NULL, '2024-11-07 17:52:35', '2024-11-07 17:52:35'),
(90, 'sales.checkout.my_cart.summary', 'display_number_of_items_in_cart', NULL, NULL, '2024-11-07 17:52:35', '2024-11-07 17:52:35'),
(91, 'sales.checkout.mini_cart.display_mini_cart', '0', NULL, NULL, '2024-11-07 17:52:36', '2024-11-07 17:52:36'),
(92, 'sales.checkout.mini_cart.offer_info', 'Get Up To 30% OFF on your 1st order', NULL, NULL, '2024-11-07 17:52:36', '2024-11-07 17:52:36'),
(93, 'sales.payment_methods.cashondelivery.order_status', 'pending_payment', 'default', NULL, '2024-11-07 17:54:06', '2024-11-07 17:54:06'),
(94, 'sales.payment_methods.moneytransfer.order_status', 'pending_payment', 'default', NULL, '2024-11-07 17:56:46', '2024-11-07 17:56:46'),
(95, 'sales.payment_methods.paypal_smart_button.title', 'PayPal Smart Button', 'default', 'en', '2024-11-07 18:06:35', '2024-11-07 18:06:35'),
(96, 'sales.payment_methods.paypal_smart_button.client_id', 'AcpKn6AXuhPtkkCzONaVJve_NTbpGV-piadHgN6SzehJTCCrrFCNK7ZyGKj_kJP0KI_zomNfr_oSQKfa', 'default', NULL, '2024-11-07 18:06:35', '2024-11-07 18:09:31'),
(97, 'sales.payment_methods.paypal_smart_button.client_secret', 'EEt_FFQCFgDIb-mcjidQgvgvRr4dh2KzJEIpNQIY0ZnQlGtv-SixcS6pXQAWeg_1jCpSylRx__PVoEpY', 'default', NULL, '2024-11-07 18:06:35', '2024-11-07 18:06:35'),
(98, 'sales.payment_methods.paypal_smart_button.accepted_currencies', 'USD', 'default', NULL, '2024-11-07 18:06:35', '2024-11-07 18:38:56'),
(99, 'sales.payment_methods.paypal_smart_button.sort', '3', NULL, NULL, '2024-11-07 18:06:35', '2024-11-07 18:06:35'),
(100, 'sales.payment_methods.paypal_standard.title', 'PayPal Standard', 'default', 'en', '2024-11-07 18:45:39', '2024-11-07 18:45:39'),
(101, 'sales.payment_methods.paypal_standard.business_account', 'sb-xnlua29089897@business.example.com', 'default', NULL, '2024-11-07 18:45:39', '2024-11-07 18:45:39'),
(102, 'sales.order_settings.order_number.order_number_prefix', 'GO', 'default', NULL, '2024-11-07 18:53:27', '2024-11-07 18:53:27'),
(103, 'sales.order_settings.order_number.order_number_length', '5', 'default', NULL, '2024-11-07 18:53:27', '2024-11-07 18:53:27'),
(104, 'sales.order_settings.order_number.order_number_suffix', '', 'default', NULL, '2024-11-07 18:53:27', '2024-11-07 18:53:27'),
(105, 'sales.order_settings.order_number.order_number_generator', '', 'default', NULL, '2024-11-07 18:53:27', '2024-11-07 18:53:27'),
(106, 'sales.order_settings.minimum_order.enable', '0', NULL, NULL, '2024-11-07 18:53:27', '2024-11-07 18:53:27'),
(107, 'sales.order_settings.reorder.admin', '1', NULL, NULL, '2024-11-07 18:53:27', '2024-11-07 18:53:27'),
(108, 'sales.order_settings.reorder.shop', '1', NULL, NULL, '2024-11-07 18:53:27', '2024-11-07 18:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Åland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua & Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AC', 'Ascension Island'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia & Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'VG', 'British Virgin Islands'),
(34, 'BN', 'Brunei'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'IC', 'Canary Islands'),
(42, 'CV', 'Cape Verde'),
(43, 'BQ', 'Caribbean Netherlands'),
(44, 'KY', 'Cayman Islands'),
(45, 'CF', 'Central African Republic'),
(46, 'EA', 'Ceuta & Melilla'),
(47, 'TD', 'Chad'),
(48, 'CL', 'Chile'),
(49, 'CN', 'China'),
(50, 'CX', 'Christmas Island'),
(51, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoros'),
(54, 'CG', 'Congo - Brazzaville'),
(55, 'CD', 'Congo - Kinshasa'),
(56, 'CK', 'Cook Islands'),
(57, 'CR', 'Costa Rica'),
(58, 'CI', 'Côte d’Ivoire'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czechia'),
(64, 'DK', 'Denmark'),
(65, 'DG', 'Diego Garcia'),
(66, 'DJ', 'Djibouti'),
(67, 'DM', 'Dominica'),
(68, 'DO', 'Dominican Republic'),
(69, 'EC', 'Ecuador'),
(70, 'EG', 'Egypt'),
(71, 'SV', 'El Salvador'),
(72, 'GQ', 'Equatorial Guinea'),
(73, 'ER', 'Eritrea'),
(74, 'EE', 'Estonia'),
(75, 'ET', 'Ethiopia'),
(76, 'EZ', 'Eurozone'),
(77, 'FK', 'Falkland Islands'),
(78, 'FO', 'Faroe Islands'),
(79, 'FJ', 'Fiji'),
(80, 'FI', 'Finland'),
(81, 'FR', 'France'),
(82, 'GF', 'French Guiana'),
(83, 'PF', 'French Polynesia'),
(84, 'TF', 'French Southern Territories'),
(85, 'GA', 'Gabon'),
(86, 'GM', 'Gambia'),
(87, 'GE', 'Georgia'),
(88, 'DE', 'Germany'),
(89, 'GH', 'Ghana'),
(90, 'GI', 'Gibraltar'),
(91, 'GR', 'Greece'),
(92, 'GL', 'Greenland'),
(93, 'GD', 'Grenada'),
(94, 'GP', 'Guadeloupe'),
(95, 'GU', 'Guam'),
(96, 'GT', 'Guatemala'),
(97, 'GG', 'Guernsey'),
(98, 'GN', 'Guinea'),
(99, 'GW', 'Guinea-Bissau'),
(100, 'GY', 'Guyana'),
(101, 'HT', 'Haiti'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong SAR China'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'XK', 'Kosovo'),
(122, 'KW', 'Kuwait'),
(123, 'KG', 'Kyrgyzstan'),
(124, 'LA', 'Laos'),
(125, 'LV', 'Latvia'),
(126, 'LB', 'Lebanon'),
(127, 'LS', 'Lesotho'),
(128, 'LR', 'Liberia'),
(129, 'LY', 'Libya'),
(130, 'LI', 'Liechtenstein'),
(131, 'LT', 'Lithuania'),
(132, 'LU', 'Luxembourg'),
(133, 'MO', 'Macau SAR China'),
(134, 'MK', 'Macedonia'),
(135, 'MG', 'Madagascar'),
(136, 'MW', 'Malawi'),
(137, 'MY', 'Malaysia'),
(138, 'MV', 'Maldives'),
(139, 'ML', 'Mali'),
(140, 'MT', 'Malta'),
(141, 'MH', 'Marshall Islands'),
(142, 'MQ', 'Martinique'),
(143, 'MR', 'Mauritania'),
(144, 'MU', 'Mauritius'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'Mexico'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldova'),
(149, 'MC', 'Monaco'),
(150, 'MN', 'Mongolia'),
(151, 'ME', 'Montenegro'),
(152, 'MS', 'Montserrat'),
(153, 'MA', 'Morocco'),
(154, 'MZ', 'Mozambique'),
(155, 'MM', 'Myanmar (Burma)'),
(156, 'NA', 'Namibia'),
(157, 'NR', 'Nauru'),
(158, 'NP', 'Nepal'),
(159, 'NL', 'Netherlands'),
(160, 'NC', 'New Caledonia'),
(161, 'NZ', 'New Zealand'),
(162, 'NI', 'Nicaragua'),
(163, 'NE', 'Niger'),
(164, 'NG', 'Nigeria'),
(165, 'NU', 'Niue'),
(166, 'NF', 'Norfolk Island'),
(167, 'KP', 'North Korea'),
(168, 'MP', 'Northern Mariana Islands'),
(169, 'NO', 'Norway'),
(170, 'OM', 'Oman'),
(171, 'PK', 'Pakistan'),
(172, 'PW', 'Palau'),
(173, 'PS', 'Palestinian Territories'),
(174, 'PA', 'Panama'),
(175, 'PG', 'Papua New Guinea'),
(176, 'PY', 'Paraguay'),
(177, 'PE', 'Peru'),
(178, 'PH', 'Philippines'),
(179, 'PN', 'Pitcairn Islands'),
(180, 'PL', 'Poland'),
(181, 'PT', 'Portugal'),
(182, 'PR', 'Puerto Rico'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Réunion'),
(185, 'RO', 'Romania'),
(186, 'RU', 'Russia'),
(187, 'RW', 'Rwanda'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'São Tomé & Príncipe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SX', 'Sint Maarten'),
(198, 'SK', 'Slovakia'),
(199, 'SI', 'Slovenia'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia & South Sandwich Islands'),
(204, 'KR', 'South Korea'),
(205, 'SS', 'South Sudan'),
(206, 'ES', 'Spain'),
(207, 'LK', 'Sri Lanka'),
(208, 'BL', 'St. Barthélemy'),
(209, 'SH', 'St. Helena'),
(210, 'KN', 'St. Kitts & Nevis'),
(211, 'LC', 'St. Lucia'),
(212, 'MF', 'St. Martin'),
(213, 'PM', 'St. Pierre & Miquelon'),
(214, 'VC', 'St. Vincent & Grenadines'),
(215, 'SD', 'Sudan'),
(216, 'SR', 'Suriname'),
(217, 'SJ', 'Svalbard & Jan Mayen'),
(218, 'SZ', 'Swaziland'),
(219, 'SE', 'Sweden'),
(220, 'CH', 'Switzerland'),
(221, 'SY', 'Syria'),
(222, 'TW', 'Taiwan'),
(223, 'TJ', 'Tajikistan'),
(224, 'TZ', 'Tanzania'),
(225, 'TH', 'Thailand'),
(226, 'TL', 'Timor-Leste'),
(227, 'TG', 'Togo'),
(228, 'TK', 'Tokelau'),
(229, 'TO', 'Tonga'),
(230, 'TT', 'Trinidad & Tobago'),
(231, 'TA', 'Tristan da Cunha'),
(232, 'TN', 'Tunisia'),
(233, 'TR', 'Turkey'),
(234, 'TM', 'Turkmenistan'),
(235, 'TC', 'Turks & Caicos Islands'),
(236, 'TV', 'Tuvalu'),
(237, 'UM', 'U.S. Outlying Islands'),
(238, 'VI', 'U.S. Virgin Islands'),
(239, 'UG', 'Uganda'),
(240, 'UA', 'Ukraine'),
(241, 'AE', 'United Arab Emirates'),
(242, 'GB', 'United Kingdom'),
(243, 'UN', 'United Nations'),
(244, 'US', 'United States'),
(245, 'UY', 'Uruguay'),
(246, 'UZ', 'Uzbekistan'),
(247, 'VU', 'Vanuatu'),
(248, 'VA', 'Vatican City'),
(249, 'VE', 'Venezuela'),
(250, 'VN', 'Vietnam'),
(251, 'WF', 'Wallis & Futuna'),
(252, 'EH', 'Western Sahara'),
(253, 'YE', 'Yemen'),
(254, 'ZM', 'Zambia'),
(255, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `default_name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `country_code`, `code`, `default_name`) VALUES
(1, 244, 'US', 'AL', 'Alabama'),
(2, 244, 'US', 'AK', 'Alaska'),
(3, 244, 'US', 'AS', 'American Samoa'),
(4, 244, 'US', 'AZ', 'Arizona'),
(5, 244, 'US', 'AR', 'Arkansas'),
(6, 244, 'US', 'AE', 'Armed Forces Africa'),
(7, 244, 'US', 'AA', 'Armed Forces Americas'),
(8, 244, 'US', 'AE', 'Armed Forces Canada'),
(9, 244, 'US', 'AE', 'Armed Forces Europe'),
(10, 244, 'US', 'AE', 'Armed Forces Middle East'),
(11, 244, 'US', 'AP', 'Armed Forces Pacific'),
(12, 244, 'US', 'CA', 'California'),
(13, 244, 'US', 'CO', 'Colorado'),
(14, 244, 'US', 'CT', 'Connecticut'),
(15, 244, 'US', 'DE', 'Delaware'),
(16, 244, 'US', 'DC', 'District of Columbia'),
(17, 244, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 244, 'US', 'FL', 'Florida'),
(19, 244, 'US', 'GA', 'Georgia'),
(20, 244, 'US', 'GU', 'Guam'),
(21, 244, 'US', 'HI', 'Hawaii'),
(22, 244, 'US', 'ID', 'Idaho'),
(23, 244, 'US', 'IL', 'Illinois'),
(24, 244, 'US', 'IN', 'Indiana'),
(25, 244, 'US', 'IA', 'Iowa'),
(26, 244, 'US', 'KS', 'Kansas'),
(27, 244, 'US', 'KY', 'Kentucky'),
(28, 244, 'US', 'LA', 'Louisiana'),
(29, 244, 'US', 'ME', 'Maine'),
(30, 244, 'US', 'MH', 'Marshall Islands'),
(31, 244, 'US', 'MD', 'Maryland'),
(32, 244, 'US', 'MA', 'Massachusetts'),
(33, 244, 'US', 'MI', 'Michigan'),
(34, 244, 'US', 'MN', 'Minnesota'),
(35, 244, 'US', 'MS', 'Mississippi'),
(36, 244, 'US', 'MO', 'Missouri'),
(37, 244, 'US', 'MT', 'Montana'),
(38, 244, 'US', 'NE', 'Nebraska'),
(39, 244, 'US', 'NV', 'Nevada'),
(40, 244, 'US', 'NH', 'New Hampshire'),
(41, 244, 'US', 'NJ', 'New Jersey'),
(42, 244, 'US', 'NM', 'New Mexico'),
(43, 244, 'US', 'NY', 'New York'),
(44, 244, 'US', 'NC', 'North Carolina'),
(45, 244, 'US', 'ND', 'North Dakota'),
(46, 244, 'US', 'MP', 'Northern Mariana Islands'),
(47, 244, 'US', 'OH', 'Ohio'),
(48, 244, 'US', 'OK', 'Oklahoma'),
(49, 244, 'US', 'OR', 'Oregon'),
(50, 244, 'US', 'PW', 'Palau'),
(51, 244, 'US', 'PA', 'Pennsylvania'),
(52, 244, 'US', 'PR', 'Puerto Rico'),
(53, 244, 'US', 'RI', 'Rhode Island'),
(54, 244, 'US', 'SC', 'South Carolina'),
(55, 244, 'US', 'SD', 'South Dakota'),
(56, 244, 'US', 'TN', 'Tennessee'),
(57, 244, 'US', 'TX', 'Texas'),
(58, 244, 'US', 'UT', 'Utah'),
(59, 244, 'US', 'VT', 'Vermont'),
(60, 244, 'US', 'VI', 'Virgin Islands'),
(61, 244, 'US', 'VA', 'Virginia'),
(62, 244, 'US', 'WA', 'Washington'),
(63, 244, 'US', 'WV', 'West Virginia'),
(64, 244, 'US', 'WI', 'Wisconsin'),
(65, 244, 'US', 'WY', 'Wyoming'),
(66, 40, 'CA', 'AB', 'Alberta'),
(67, 40, 'CA', 'BC', 'British Columbia'),
(68, 40, 'CA', 'MB', 'Manitoba'),
(69, 40, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 40, 'CA', 'NB', 'New Brunswick'),
(71, 40, 'CA', 'NS', 'Nova Scotia'),
(72, 40, 'CA', 'NT', 'Northwest Territories'),
(73, 40, 'CA', 'NU', 'Nunavut'),
(74, 40, 'CA', 'ON', 'Ontario'),
(75, 40, 'CA', 'PE', 'Prince Edward Island'),
(76, 40, 'CA', 'QC', 'Quebec'),
(77, 40, 'CA', 'SK', 'Saskatchewan'),
(78, 40, 'CA', 'YT', 'Yukon Territory'),
(79, 88, 'DE', 'NDS', 'Niedersachsen'),
(80, 88, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 88, 'DE', 'BAY', 'Bayern'),
(82, 88, 'DE', 'BER', 'Berlin'),
(83, 88, 'DE', 'BRG', 'Brandenburg'),
(84, 88, 'DE', 'BRE', 'Bremen'),
(85, 88, 'DE', 'HAM', 'Hamburg'),
(86, 88, 'DE', 'HES', 'Hessen'),
(87, 88, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 88, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 88, 'DE', 'SAR', 'Saarland'),
(91, 88, 'DE', 'SAS', 'Sachsen'),
(92, 88, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 88, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 88, 'DE', 'THE', 'Thüringen'),
(95, 16, 'AT', 'WI', 'Wien'),
(96, 16, 'AT', 'NO', 'Niederösterreich'),
(97, 16, 'AT', 'OO', 'Oberösterreich'),
(98, 16, 'AT', 'SB', 'Salzburg'),
(99, 16, 'AT', 'KN', 'Kärnten'),
(100, 16, 'AT', 'ST', 'Steiermark'),
(101, 16, 'AT', 'TI', 'Tirol'),
(102, 16, 'AT', 'BL', 'Burgenland'),
(103, 16, 'AT', 'VB', 'Vorarlberg'),
(104, 220, 'CH', 'AG', 'Aargau'),
(105, 220, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 220, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 220, 'CH', 'BE', 'Bern'),
(108, 220, 'CH', 'BL', 'Basel-Landschaft'),
(109, 220, 'CH', 'BS', 'Basel-Stadt'),
(110, 220, 'CH', 'FR', 'Freiburg'),
(111, 220, 'CH', 'GE', 'Genf'),
(112, 220, 'CH', 'GL', 'Glarus'),
(113, 220, 'CH', 'GR', 'Graubünden'),
(114, 220, 'CH', 'JU', 'Jura'),
(115, 220, 'CH', 'LU', 'Luzern'),
(116, 220, 'CH', 'NE', 'Neuenburg'),
(117, 220, 'CH', 'NW', 'Nidwalden'),
(118, 220, 'CH', 'OW', 'Obwalden'),
(119, 220, 'CH', 'SG', 'St. Gallen'),
(120, 220, 'CH', 'SH', 'Schaffhausen'),
(121, 220, 'CH', 'SO', 'Solothurn'),
(122, 220, 'CH', 'SZ', 'Schwyz'),
(123, 220, 'CH', 'TG', 'Thurgau'),
(124, 220, 'CH', 'TI', 'Tessin'),
(125, 220, 'CH', 'UR', 'Uri'),
(126, 220, 'CH', 'VD', 'Waadt'),
(127, 220, 'CH', 'VS', 'Wallis'),
(128, 220, 'CH', 'ZG', 'Zug'),
(129, 220, 'CH', 'ZH', 'Zürich'),
(130, 206, 'ES', 'A Coruсa', 'A Coruña'),
(131, 206, 'ES', 'Alava', 'Alava'),
(132, 206, 'ES', 'Albacete', 'Albacete'),
(133, 206, 'ES', 'Alicante', 'Alicante'),
(134, 206, 'ES', 'Almeria', 'Almeria'),
(135, 206, 'ES', 'Asturias', 'Asturias'),
(136, 206, 'ES', 'Avila', 'Avila'),
(137, 206, 'ES', 'Badajoz', 'Badajoz'),
(138, 206, 'ES', 'Baleares', 'Baleares'),
(139, 206, 'ES', 'Barcelona', 'Barcelona'),
(140, 206, 'ES', 'Burgos', 'Burgos'),
(141, 206, 'ES', 'Caceres', 'Caceres'),
(142, 206, 'ES', 'Cadiz', 'Cadiz'),
(143, 206, 'ES', 'Cantabria', 'Cantabria'),
(144, 206, 'ES', 'Castellon', 'Castellon'),
(145, 206, 'ES', 'Ceuta', 'Ceuta'),
(146, 206, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 206, 'ES', 'Cordoba', 'Cordoba'),
(148, 206, 'ES', 'Cuenca', 'Cuenca'),
(149, 206, 'ES', 'Girona', 'Girona'),
(150, 206, 'ES', 'Granada', 'Granada'),
(151, 206, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 206, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 206, 'ES', 'Huelva', 'Huelva'),
(154, 206, 'ES', 'Huesca', 'Huesca'),
(155, 206, 'ES', 'Jaen', 'Jaen'),
(156, 206, 'ES', 'La Rioja', 'La Rioja'),
(157, 206, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 206, 'ES', 'Leon', 'Leon'),
(159, 206, 'ES', 'Lleida', 'Lleida'),
(160, 206, 'ES', 'Lugo', 'Lugo'),
(161, 206, 'ES', 'Madrid', 'Madrid'),
(162, 206, 'ES', 'Malaga', 'Malaga'),
(163, 206, 'ES', 'Melilla', 'Melilla'),
(164, 206, 'ES', 'Murcia', 'Murcia'),
(165, 206, 'ES', 'Navarra', 'Navarra'),
(166, 206, 'ES', 'Ourense', 'Ourense'),
(167, 206, 'ES', 'Palencia', 'Palencia'),
(168, 206, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 206, 'ES', 'Salamanca', 'Salamanca'),
(170, 206, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 206, 'ES', 'Segovia', 'Segovia'),
(172, 206, 'ES', 'Sevilla', 'Sevilla'),
(173, 206, 'ES', 'Soria', 'Soria'),
(174, 206, 'ES', 'Tarragona', 'Tarragona'),
(175, 206, 'ES', 'Teruel', 'Teruel'),
(176, 206, 'ES', 'Toledo', 'Toledo'),
(177, 206, 'ES', 'Valencia', 'Valencia'),
(178, 206, 'ES', 'Valladolid', 'Valladolid'),
(179, 206, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 206, 'ES', 'Zamora', 'Zamora'),
(181, 206, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 81, 'FR', '1', 'Ain'),
(183, 81, 'FR', '2', 'Aisne'),
(184, 81, 'FR', '3', 'Allier'),
(185, 81, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 81, 'FR', '5', 'Hautes-Alpes'),
(187, 81, 'FR', '6', 'Alpes-Maritimes'),
(188, 81, 'FR', '7', 'Ardèche'),
(189, 81, 'FR', '8', 'Ardennes'),
(190, 81, 'FR', '9', 'Ariège'),
(191, 81, 'FR', '10', 'Aube'),
(192, 81, 'FR', '11', 'Aude'),
(193, 81, 'FR', '12', 'Aveyron'),
(194, 81, 'FR', '13', 'Bouches-du-Rhône'),
(195, 81, 'FR', '14', 'Calvados'),
(196, 81, 'FR', '15', 'Cantal'),
(197, 81, 'FR', '16', 'Charente'),
(198, 81, 'FR', '17', 'Charente-Maritime'),
(199, 81, 'FR', '18', 'Cher'),
(200, 81, 'FR', '19', 'Corrèze'),
(201, 81, 'FR', '2A', 'Corse-du-Sud'),
(202, 81, 'FR', '2B', 'Haute-Corse'),
(203, 81, 'FR', '21', 'Côte-d\'Or'),
(204, 81, 'FR', '22', 'Côtes-d\'Armor'),
(205, 81, 'FR', '23', 'Creuse'),
(206, 81, 'FR', '24', 'Dordogne'),
(207, 81, 'FR', '25', 'Doubs'),
(208, 81, 'FR', '26', 'Drôme'),
(209, 81, 'FR', '27', 'Eure'),
(210, 81, 'FR', '28', 'Eure-et-Loir'),
(211, 81, 'FR', '29', 'Finistère'),
(212, 81, 'FR', '30', 'Gard'),
(213, 81, 'FR', '31', 'Haute-Garonne'),
(214, 81, 'FR', '32', 'Gers'),
(215, 81, 'FR', '33', 'Gironde'),
(216, 81, 'FR', '34', 'Hérault'),
(217, 81, 'FR', '35', 'Ille-et-Vilaine'),
(218, 81, 'FR', '36', 'Indre'),
(219, 81, 'FR', '37', 'Indre-et-Loire'),
(220, 81, 'FR', '38', 'Isère'),
(221, 81, 'FR', '39', 'Jura'),
(222, 81, 'FR', '40', 'Landes'),
(223, 81, 'FR', '41', 'Loir-et-Cher'),
(224, 81, 'FR', '42', 'Loire'),
(225, 81, 'FR', '43', 'Haute-Loire'),
(226, 81, 'FR', '44', 'Loire-Atlantique'),
(227, 81, 'FR', '45', 'Loiret'),
(228, 81, 'FR', '46', 'Lot'),
(229, 81, 'FR', '47', 'Lot-et-Garonne'),
(230, 81, 'FR', '48', 'Lozère'),
(231, 81, 'FR', '49', 'Maine-et-Loire'),
(232, 81, 'FR', '50', 'Manche'),
(233, 81, 'FR', '51', 'Marne'),
(234, 81, 'FR', '52', 'Haute-Marne'),
(235, 81, 'FR', '53', 'Mayenne'),
(236, 81, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 81, 'FR', '55', 'Meuse'),
(238, 81, 'FR', '56', 'Morbihan'),
(239, 81, 'FR', '57', 'Moselle'),
(240, 81, 'FR', '58', 'Nièvre'),
(241, 81, 'FR', '59', 'Nord'),
(242, 81, 'FR', '60', 'Oise'),
(243, 81, 'FR', '61', 'Orne'),
(244, 81, 'FR', '62', 'Pas-de-Calais'),
(245, 81, 'FR', '63', 'Puy-de-Dôme'),
(246, 81, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 81, 'FR', '65', 'Hautes-Pyrénées'),
(248, 81, 'FR', '66', 'Pyrénées-Orientales'),
(249, 81, 'FR', '67', 'Bas-Rhin'),
(250, 81, 'FR', '68', 'Haut-Rhin'),
(251, 81, 'FR', '69', 'Rhône'),
(252, 81, 'FR', '70', 'Haute-Saône'),
(253, 81, 'FR', '71', 'Saône-et-Loire'),
(254, 81, 'FR', '72', 'Sarthe'),
(255, 81, 'FR', '73', 'Savoie'),
(256, 81, 'FR', '74', 'Haute-Savoie'),
(257, 81, 'FR', '75', 'Paris'),
(258, 81, 'FR', '76', 'Seine-Maritime'),
(259, 81, 'FR', '77', 'Seine-et-Marne'),
(260, 81, 'FR', '78', 'Yvelines'),
(261, 81, 'FR', '79', 'Deux-Sèvres'),
(262, 81, 'FR', '80', 'Somme'),
(263, 81, 'FR', '81', 'Tarn'),
(264, 81, 'FR', '82', 'Tarn-et-Garonne'),
(265, 81, 'FR', '83', 'Var'),
(266, 81, 'FR', '84', 'Vaucluse'),
(267, 81, 'FR', '85', 'Vendée'),
(268, 81, 'FR', '86', 'Vienne'),
(269, 81, 'FR', '87', 'Haute-Vienne'),
(270, 81, 'FR', '88', 'Vosges'),
(271, 81, 'FR', '89', 'Yonne'),
(272, 81, 'FR', '90', 'Territoire-de-Belfort'),
(273, 81, 'FR', '91', 'Essonne'),
(274, 81, 'FR', '92', 'Hauts-de-Seine'),
(275, 81, 'FR', '93', 'Seine-Saint-Denis'),
(276, 81, 'FR', '94', 'Val-de-Marne'),
(277, 81, 'FR', '95', 'Val-d\'Oise'),
(278, 185, 'RO', 'AB', 'Alba'),
(279, 185, 'RO', 'AR', 'Arad'),
(280, 185, 'RO', 'AG', 'Argeş'),
(281, 185, 'RO', 'BC', 'Bacău'),
(282, 185, 'RO', 'BH', 'Bihor'),
(283, 185, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 185, 'RO', 'BT', 'Botoşani'),
(285, 185, 'RO', 'BV', 'Braşov'),
(286, 185, 'RO', 'BR', 'Brăila'),
(287, 185, 'RO', 'B', 'Bucureşti'),
(288, 185, 'RO', 'BZ', 'Buzău'),
(289, 185, 'RO', 'CS', 'Caraş-Severin'),
(290, 185, 'RO', 'CL', 'Călăraşi'),
(291, 185, 'RO', 'CJ', 'Cluj'),
(292, 185, 'RO', 'CT', 'Constanţa'),
(293, 185, 'RO', 'CV', 'Covasna'),
(294, 185, 'RO', 'DB', 'Dâmboviţa'),
(295, 185, 'RO', 'DJ', 'Dolj'),
(296, 185, 'RO', 'GL', 'Galaţi'),
(297, 185, 'RO', 'GR', 'Giurgiu'),
(298, 185, 'RO', 'GJ', 'Gorj'),
(299, 185, 'RO', 'HR', 'Harghita'),
(300, 185, 'RO', 'HD', 'Hunedoara'),
(301, 185, 'RO', 'IL', 'Ialomiţa'),
(302, 185, 'RO', 'IS', 'Iaşi'),
(303, 185, 'RO', 'IF', 'Ilfov'),
(304, 185, 'RO', 'MM', 'Maramureş'),
(305, 185, 'RO', 'MH', 'Mehedinţi'),
(306, 185, 'RO', 'MS', 'Mureş'),
(307, 185, 'RO', 'NT', 'Neamţ'),
(308, 185, 'RO', 'OT', 'Olt'),
(309, 185, 'RO', 'PH', 'Prahova'),
(310, 185, 'RO', 'SM', 'Satu-Mare'),
(311, 185, 'RO', 'SJ', 'Sălaj'),
(312, 185, 'RO', 'SB', 'Sibiu'),
(313, 185, 'RO', 'SV', 'Suceava'),
(314, 185, 'RO', 'TR', 'Teleorman'),
(315, 185, 'RO', 'TM', 'Timiş'),
(316, 185, 'RO', 'TL', 'Tulcea'),
(317, 185, 'RO', 'VS', 'Vaslui'),
(318, 185, 'RO', 'VL', 'Vâlcea'),
(319, 185, 'RO', 'VN', 'Vrancea'),
(320, 80, 'FI', 'Lappi', 'Lappi'),
(321, 80, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 80, 'FI', 'Kainuu', 'Kainuu'),
(323, 80, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 80, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 80, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 80, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 80, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 80, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 80, 'FI', 'Satakunta', 'Satakunta'),
(330, 80, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 80, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 80, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 80, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 80, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 80, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 80, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 80, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 80, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 80, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 74, 'EE', 'EE-37', 'Harjumaa'),
(341, 74, 'EE', 'EE-39', 'Hiiumaa'),
(342, 74, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 74, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 74, 'EE', 'EE-51', 'Järvamaa'),
(345, 74, 'EE', 'EE-57', 'Läänemaa'),
(346, 74, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 74, 'EE', 'EE-65', 'Põlvamaa'),
(348, 74, 'EE', 'EE-67', 'Pärnumaa'),
(349, 74, 'EE', 'EE-70', 'Raplamaa'),
(350, 74, 'EE', 'EE-74', 'Saaremaa'),
(351, 74, 'EE', 'EE-78', 'Tartumaa'),
(352, 74, 'EE', 'EE-82', 'Valgamaa'),
(353, 74, 'EE', 'EE-84', 'Viljandimaa'),
(354, 74, 'EE', 'EE-86', 'Võrumaa'),
(355, 125, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 125, 'LV', 'LV-JEL', 'Jelgava'),
(357, 125, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 125, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 125, 'LV', 'LV-LPX', 'Liepāja'),
(360, 125, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 125, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 125, 'LV', 'LV-RIX', 'Rīga'),
(363, 125, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 125, 'LV', 'Valmiera', 'Valmiera'),
(365, 125, 'LV', 'LV-VEN', 'Ventspils'),
(366, 125, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 125, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 125, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 125, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 125, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 125, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 125, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 125, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 125, 'LV', 'Apes novads', 'Apes novads'),
(375, 125, 'LV', 'Auces novads', 'Auces novads'),
(376, 125, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 125, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 125, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 125, 'LV', 'LV-BL', 'Balvu novads'),
(380, 125, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 125, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 125, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 125, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 125, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 125, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 125, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 125, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 125, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 125, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 125, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 125, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 125, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 125, 'LV', 'Engures novads', 'Engures novads'),
(394, 125, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 125, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 125, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 125, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 125, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 125, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 125, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 125, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 125, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 125, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 125, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 125, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 125, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 125, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 125, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 125, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 125, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 125, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 125, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 125, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 125, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 125, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 125, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 125, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 125, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 125, 'LV', 'LV-MA', 'Madonas novads'),
(420, 125, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 125, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 125, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 125, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 125, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 125, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 125, 'LV', 'LV-OG', 'Ogres novads'),
(427, 125, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 125, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 125, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 125, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 125, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 125, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 125, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 125, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 125, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 125, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 125, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 125, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 125, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 125, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 125, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 125, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 125, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 125, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 125, 'LV', 'Salas novads', 'Salas novads'),
(446, 125, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 125, 'LV', 'LV-SA', 'Saldus novads'),
(448, 125, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 125, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 125, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 125, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 125, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 125, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 125, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 125, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 125, 'LV', 'LV-TA', 'Talsu novads'),
(457, 125, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 125, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 125, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 125, 'LV', 'LV-VK', 'Valkas novads'),
(461, 125, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 125, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 125, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 125, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 125, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 125, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 125, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 125, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 125, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 125, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 125, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 125, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 125, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 125, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 131, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 131, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 131, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 131, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 131, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 131, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 131, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 131, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 131, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 131, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 31, 'BR', 'AC', 'Acre'),
(486, 31, 'BR', 'AL', 'Alagoas'),
(487, 31, 'BR', 'AP', 'Amapá'),
(488, 31, 'BR', 'AM', 'Amazonas'),
(489, 31, 'BR', 'BA', 'Bahia'),
(490, 31, 'BR', 'CE', 'Ceará'),
(491, 31, 'BR', 'ES', 'Espírito Santo'),
(492, 31, 'BR', 'GO', 'Goiás'),
(493, 31, 'BR', 'MA', 'Maranhão'),
(494, 31, 'BR', 'MT', 'Mato Grosso'),
(495, 31, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 31, 'BR', 'MG', 'Minas Gerais'),
(497, 31, 'BR', 'PA', 'Pará'),
(498, 31, 'BR', 'PB', 'Paraíba'),
(499, 31, 'BR', 'PR', 'Paraná'),
(500, 31, 'BR', 'PE', 'Pernambuco'),
(501, 31, 'BR', 'PI', 'Piauí'),
(502, 31, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 31, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 31, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 31, 'BR', 'RO', 'Rondônia'),
(506, 31, 'BR', 'RR', 'Roraima'),
(507, 31, 'BR', 'SC', 'Santa Catarina'),
(508, 31, 'BR', 'SP', 'São Paulo'),
(509, 31, 'BR', 'SE', 'Sergipe'),
(510, 31, 'BR', 'TO', 'Tocantins'),
(511, 31, 'BR', 'DF', 'Distrito Federal'),
(512, 59, 'HR', 'HR-01', 'Zagrebačka županija'),
(513, 59, 'HR', 'HR-02', 'Krapinsko-zagorska županija'),
(514, 59, 'HR', 'HR-03', 'Sisačko-moslavačka županija'),
(515, 59, 'HR', 'HR-04', 'Karlovačka županija'),
(516, 59, 'HR', 'HR-05', 'Varaždinska županija'),
(517, 59, 'HR', 'HR-06', 'Koprivničko-križevačka županija'),
(518, 59, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija'),
(519, 59, 'HR', 'HR-08', 'Primorsko-goranska županija'),
(520, 59, 'HR', 'HR-09', 'Ličko-senjska županija'),
(521, 59, 'HR', 'HR-10', 'Virovitičko-podravska županija'),
(522, 59, 'HR', 'HR-11', 'Požeško-slavonska županija'),
(523, 59, 'HR', 'HR-12', 'Brodsko-posavska županija'),
(524, 59, 'HR', 'HR-13', 'Zadarska županija'),
(525, 59, 'HR', 'HR-14', 'Osječko-baranjska županija'),
(526, 59, 'HR', 'HR-15', 'Šibensko-kninska županija'),
(527, 59, 'HR', 'HR-16', 'Vukovarsko-srijemska županija'),
(528, 59, 'HR', 'HR-17', 'Splitsko-dalmatinska županija'),
(529, 59, 'HR', 'HR-18', 'Istarska županija'),
(530, 59, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija'),
(531, 59, 'HR', 'HR-20', 'Međimurska županija'),
(532, 59, 'HR', 'HR-21', 'Grad Zagreb'),
(533, 106, 'IN', 'AN', 'Andaman and Nicobar Islands'),
(534, 106, 'IN', 'AP', 'Andhra Pradesh'),
(535, 106, 'IN', 'AR', 'Arunachal Pradesh'),
(536, 106, 'IN', 'AS', 'Assam'),
(537, 106, 'IN', 'BR', 'Bihar'),
(538, 106, 'IN', 'CH', 'Chandigarh'),
(539, 106, 'IN', 'CT', 'Chhattisgarh'),
(540, 106, 'IN', 'DN', 'Dadra and Nagar Haveli'),
(541, 106, 'IN', 'DD', 'Daman and Diu'),
(542, 106, 'IN', 'DL', 'Delhi'),
(543, 106, 'IN', 'GA', 'Goa'),
(544, 106, 'IN', 'GJ', 'Gujarat'),
(545, 106, 'IN', 'HR', 'Haryana'),
(546, 106, 'IN', 'HP', 'Himachal Pradesh'),
(547, 106, 'IN', 'JK', 'Jammu and Kashmir'),
(548, 106, 'IN', 'JH', 'Jharkhand'),
(549, 106, 'IN', 'KA', 'Karnataka'),
(550, 106, 'IN', 'KL', 'Kerala'),
(551, 106, 'IN', 'LD', 'Lakshadweep'),
(552, 106, 'IN', 'MP', 'Madhya Pradesh'),
(553, 106, 'IN', 'MH', 'Maharashtra'),
(554, 106, 'IN', 'MN', 'Manipur'),
(555, 106, 'IN', 'ML', 'Meghalaya'),
(556, 106, 'IN', 'MZ', 'Mizoram'),
(557, 106, 'IN', 'NL', 'Nagaland'),
(558, 106, 'IN', 'OR', 'Odisha'),
(559, 106, 'IN', 'PY', 'Puducherry'),
(560, 106, 'IN', 'PB', 'Punjab'),
(561, 106, 'IN', 'RJ', 'Rajasthan'),
(562, 106, 'IN', 'SK', 'Sikkim'),
(563, 106, 'IN', 'TN', 'Tamil Nadu'),
(564, 106, 'IN', 'TG', 'Telangana'),
(565, 106, 'IN', 'TR', 'Tripura'),
(566, 106, 'IN', 'UP', 'Uttar Pradesh'),
(567, 106, 'IN', 'UT', 'Uttarakhand'),
(568, 106, 'IN', 'WB', 'West Bengal'),
(569, 176, 'PY', 'PY-16', 'Alto Paraguay'),
(570, 176, 'PY', 'PY-10', 'Alto Paraná'),
(571, 176, 'PY', 'PY-13', 'Amambay'),
(572, 176, 'PY', 'PY-ASU', 'Asunción'),
(573, 176, 'PY', 'PY-19', 'Boquerón'),
(574, 176, 'PY', 'PY-5', 'Caaguazú'),
(575, 176, 'PY', 'PY-6', 'Caazapá'),
(576, 176, 'PY', 'PY-14', 'Canindeyú'),
(577, 176, 'PY', 'PY-11', 'Central'),
(578, 176, 'PY', 'PY-1', 'Concepción'),
(579, 176, 'PY', 'PY-3', 'Cordillera'),
(580, 176, 'PY', 'PY-4', 'Guairá'),
(581, 176, 'PY', 'PY-7', 'Itapúa'),
(582, 176, 'PY', 'PY-8', 'Misiones'),
(583, 176, 'PY', 'PY-9', 'Paraguarí'),
(584, 176, 'PY', 'PY-15', 'Presidente Hayes'),
(585, 176, 'PY', 'PY-2', 'San Pedro'),
(586, 176, 'PY', 'PY-12', 'Ñeembucú');

-- --------------------------------------------------------

--
-- Table structure for table `country_state_translations`
--

CREATE TABLE `country_state_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_state_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `default_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `symbol` varchar(191) DEFAULT NULL,
  `decimal` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `group_separator` varchar(191) NOT NULL DEFAULT ',',
  `decimal_separator` varchar(191) NOT NULL DEFAULT '.',
  `currency_position` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `decimal`, `group_separator`, `decimal_separator`, `currency_position`, `created_at`, `updated_at`) VALUES
(1, 'IDR', 'Indonesian Rupiah', 'Rp', 0, '.', '', 'left_with_space', NULL, '2024-11-07 10:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchange_rates`
--

CREATE TABLE `currency_exchange_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate` decimal(24,12) NOT NULL,
  `target_currency` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(191) DEFAULT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribed_to_news_letter` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `token` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `email`, `phone`, `image`, `status`, `password`, `api_token`, `customer_group_id`, `channel_id`, `subscribed_to_news_letter`, `is_verified`, `is_suspended`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'testing', 'testing', NULL, NULL, 'bellatrix808080@gmail.com', NULL, NULL, 1, '$2y$10$.KMauW62GYJkiEiBug/leOyWXW7eTKlTXYgWwhFhhKvVVXTqEtP9e', 'FbAd6vXDdcnjPpZ0J9K9EikQcqgNVYilNlV1a87d2ksl0HGLKlDKajbBFqV0MzLb9pXWgUaCYKXDDsXm', 1, 1, 0, 1, 0, '6910be5611960f5757b899fa99c7031d', NULL, '2024-11-07 09:57:16', '2024-11-07 09:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `code`, `name`, `is_user_defined`, `created_at`, `updated_at`) VALUES
(1, 'guest', 'Guest', 0, NULL, NULL),
(2, 'general', 'General', 0, NULL, NULL),
(3, 'wholesale', 'Wholesale', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_notes`
--

CREATE TABLE `customer_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `note` text NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_resets`
--

CREATE TABLE `customer_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customer_social_accounts`
--

CREATE TABLE `customer_social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `provider_name` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `datagrid_saved_filters`
--

CREATE TABLE `datagrid_saved_filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `src` varchar(191) NOT NULL,
  `applied` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`applied`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `download_bought` int(11) NOT NULL DEFAULT 0,
  `download_used` int(11) NOT NULL DEFAULT 0,
  `status` varchar(191) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `download_canceled` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(191) NOT NULL DEFAULT 'pending',
  `process_in_queue` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(191) NOT NULL,
  `action` varchar(191) NOT NULL,
  `validation_strategy` varchar(191) NOT NULL,
  `allowed_errors` int(11) NOT NULL DEFAULT 0,
  `processed_rows_count` int(11) NOT NULL DEFAULT 0,
  `invalid_rows_count` int(11) NOT NULL DEFAULT 0,
  `errors_count` int(11) NOT NULL DEFAULT 0,
  `errors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`errors`)),
  `field_separator` varchar(191) NOT NULL,
  `file_path` varchar(191) NOT NULL,
  `images_directory_path` varchar(191) DEFAULT NULL,
  `error_file_path` varchar(191) DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `import_batches`
--

CREATE TABLE `import_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(191) NOT NULL DEFAULT 'pending',
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `import_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_sources`
--

CREATE TABLE `inventory_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `contact_name` varchar(191) NOT NULL,
  `contact_email` varchar(191) NOT NULL,
  `contact_number` varchar(191) NOT NULL,
  `contact_fax` varchar(191) DEFAULT NULL,
  `country` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `street` varchar(191) NOT NULL,
  `postcode` varchar(191) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `inventory_sources`
--

INSERT INTO `inventory_sources` (`id`, `code`, `name`, `description`, `contact_name`, `contact_email`, `contact_number`, `contact_fax`, `country`, `state`, `city`, `street`, `postcode`, `priority`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Default', NULL, 'Default', 'warehouse@example.com', '1234567899', NULL, 'US', 'MI', 'Detroit', '12th Street', '48127', 0, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `order_currency_code` varchar(191) DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `reminders` int(11) NOT NULL DEFAULT 0,
  `next_reminder_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `increment_id`, `state`, `email_sent`, `total_qty`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `sub_total`, `base_sub_total`, `grand_total`, `base_grand_total`, `shipping_amount`, `base_shipping_amount`, `tax_amount`, `base_tax_amount`, `discount_amount`, `base_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `order_id`, `transaction_id`, `reminders`, `next_reminder_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'paid', 1, 1, 'IDR', 'IDR', 'IDR', '14.0000', '14.0000', '14.0000', '14.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '14.0000', '14.0000', '0.0000', '0.0000', 1, NULL, 0, NULL, '2024-11-07 10:05:13', '2024-11-07 17:47:33'),
(2, '2', 'paid', 1, 2, 'IDR', 'IDR', 'IDR', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', 3, NULL, 0, NULL, '2024-11-07 17:47:29', '2024-11-07 17:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `parent_id`, `name`, `description`, `sku`, `qty`, `price`, `base_price`, `total`, `base_total`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_item_id`, `invoice_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Arctic Cozy Knit Unisex Beanie', NULL, 'SP-001', 1, '14.0000', '14.0000', '14.0000', '14.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '14.0000', '14.0000', '14.0000', '14.0000', 1, 'Webkul\\Product\\Models\\Product', 1, 1, '{\"product_id\":\"1\",\"is_buy_now\":\"0\",\"quantity\":1,\"locale\":\"en\"}', '2024-11-07 10:05:13', '2024-11-07 10:05:13'),
(2, NULL, 'Kaos Oblong Pria - ALL', NULL, 'KAOSRED-variant-config', 2, '30000.0000', '30000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', 93, 'Webkul\\Product\\Models\\Product', 3, 2, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 17:47:29', '2024-11-07 17:47:29'),
(3, 2, 'Variant 1 6', NULL, 'KAOSRED-variant-config-variant-1-6', 2, '1.0000', '0.0000', '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 94, 'Webkul\\Product\\Models\\Product', 4, 2, '{\"product_id\":94,\"parent_id\":93,\"locale\":\"en\"}', '2024-11-07 17:47:29', '2024-11-07 17:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` text NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

CREATE TABLE `locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `direction` enum('ltr','rtl') NOT NULL DEFAULT 'ltr',
  `logo_path` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`id`, `code`, `name`, `direction`, `logo_path`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'ltr', 'locales/dxOOOuFjSfUyj9KZ2HqPT7CXLFDoEsPo1kyHgeB2.png', NULL, NULL),
(2, 'id', 'Indonesia', 'ltr', 'locales/id.png', '2024-11-07 18:47:50', '2024-11-07 18:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(191) NOT NULL,
  `mail_to` varchar(191) NOT NULL,
  `spooling` varchar(191) DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `marketing_template_id` int(10) UNSIGNED DEFAULT NULL,
  `marketing_event_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_events`
--

CREATE TABLE `marketing_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `marketing_events`
--

INSERT INTO `marketing_events` (`id`, `name`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Birthday', 'Birthday', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_templates`
--

CREATE TABLE `marketing_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_admin_password_resets_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_06_12_111907_create_admins_table', 1),
(5, '2018_06_13_055341_create_roles_table', 1),
(6, '2018_07_05_130148_create_attributes_table', 1),
(7, '2018_07_05_132854_create_attribute_translations_table', 1),
(8, '2018_07_05_135150_create_attribute_families_table', 1),
(9, '2018_07_05_135152_create_attribute_groups_table', 1),
(10, '2018_07_05_140832_create_attribute_options_table', 1),
(11, '2018_07_05_140856_create_attribute_option_translations_table', 1),
(12, '2018_07_05_142820_create_categories_table', 1),
(13, '2018_07_10_055143_create_locales_table', 1),
(14, '2018_07_20_054426_create_countries_table', 1),
(15, '2018_07_20_054502_create_currencies_table', 1),
(16, '2018_07_20_054542_create_currency_exchange_rates_table', 1),
(17, '2018_07_20_064849_create_channels_table', 1),
(18, '2018_07_21_142836_create_category_translations_table', 1),
(19, '2018_07_23_110040_create_inventory_sources_table', 1),
(20, '2018_07_24_082635_create_customer_groups_table', 1),
(21, '2018_07_24_082930_create_customers_table', 1),
(22, '2018_07_27_065727_create_products_table', 1),
(23, '2018_07_27_070011_create_product_attribute_values_table', 1),
(24, '2018_07_27_092623_create_product_reviews_table', 1),
(25, '2018_07_27_113941_create_product_images_table', 1),
(26, '2018_07_27_113956_create_product_inventories_table', 1),
(27, '2018_08_30_064755_create_tax_categories_table', 1),
(28, '2018_08_30_065042_create_tax_rates_table', 1),
(29, '2018_08_30_065840_create_tax_mappings_table', 1),
(30, '2018_09_05_150444_create_cart_table', 1),
(31, '2018_09_05_150915_create_cart_items_table', 1),
(32, '2018_09_11_064045_customer_password_resets', 1),
(33, '2018_09_19_093453_create_cart_payment', 1),
(34, '2018_09_19_093508_create_cart_shipping_rates_table', 1),
(35, '2018_09_20_060658_create_core_config_table', 1),
(36, '2018_09_27_113154_create_orders_table', 1),
(37, '2018_09_27_113207_create_order_items_table', 1),
(38, '2018_09_27_115022_create_shipments_table', 1),
(39, '2018_09_27_115029_create_shipment_items_table', 1),
(40, '2018_09_27_115135_create_invoices_table', 1),
(41, '2018_09_27_115144_create_invoice_items_table', 1),
(42, '2018_10_01_095504_create_order_payment_table', 1),
(43, '2018_10_03_025230_create_wishlist_table', 1),
(44, '2018_10_12_101803_create_country_translations_table', 1),
(45, '2018_10_12_101913_create_country_states_table', 1),
(46, '2018_10_12_101923_create_country_state_translations_table', 1),
(47, '2018_11_16_173504_create_subscribers_list_table', 1),
(48, '2018_11_21_144411_create_cart_item_inventories_table', 1),
(49, '2018_12_06_185202_create_product_flat_table', 1),
(50, '2018_12_24_123812_create_channel_inventory_sources_table', 1),
(51, '2018_12_26_165327_create_product_ordered_inventories_table', 1),
(52, '2019_05_13_024321_create_cart_rules_table', 1),
(53, '2019_05_13_024322_create_cart_rule_channels_table', 1),
(54, '2019_05_13_024323_create_cart_rule_customer_groups_table', 1),
(55, '2019_05_13_024324_create_cart_rule_translations_table', 1),
(56, '2019_05_13_024325_create_cart_rule_customers_table', 1),
(57, '2019_05_13_024326_create_cart_rule_coupons_table', 1),
(58, '2019_05_13_024327_create_cart_rule_coupon_usage_table', 1),
(59, '2019_06_17_180258_create_product_downloadable_samples_table', 1),
(60, '2019_06_17_180314_create_product_downloadable_sample_translations_table', 1),
(61, '2019_06_17_180325_create_product_downloadable_links_table', 1),
(62, '2019_06_17_180346_create_product_downloadable_link_translations_table', 1),
(63, '2019_06_21_202249_create_downloadable_link_purchased_table', 1),
(64, '2019_07_30_153530_create_cms_pages_table', 1),
(65, '2019_07_31_143339_create_category_filterable_attributes_table', 1),
(66, '2019_08_02_105320_create_product_grouped_products_table', 1),
(67, '2019_08_20_170510_create_product_bundle_options_table', 1),
(68, '2019_08_20_170520_create_product_bundle_option_translations_table', 1),
(69, '2019_08_20_170528_create_product_bundle_option_products_table', 1),
(70, '2019_09_11_184511_create_refunds_table', 1),
(71, '2019_09_11_184519_create_refund_items_table', 1),
(72, '2019_12_03_184613_create_catalog_rules_table', 1),
(73, '2019_12_03_184651_create_catalog_rule_channels_table', 1),
(74, '2019_12_03_184732_create_catalog_rule_customer_groups_table', 1),
(75, '2019_12_06_101110_create_catalog_rule_products_table', 1),
(76, '2019_12_06_110507_create_catalog_rule_product_prices_table', 1),
(77, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(78, '2020_01_14_191854_create_cms_page_translations_table', 1),
(79, '2020_01_15_130209_create_cms_page_channels_table', 1),
(80, '2020_04_16_185147_add_table_addresses', 1),
(81, '2020_05_06_171638_create_order_comments_table', 1),
(82, '2020_05_21_171500_create_product_customer_group_prices_table', 1),
(83, '2020_06_25_162154_create_customer_social_accounts_table', 1),
(84, '2020_11_19_112228_create_product_videos_table', 1),
(85, '2020_11_26_141455_create_marketing_templates_table', 1),
(86, '2020_11_26_150534_create_marketing_events_table', 1),
(87, '2020_11_26_150644_create_marketing_campaigns_table', 1),
(88, '2020_12_21_000200_create_channel_translations_table', 1),
(89, '2020_12_27_121950_create_jobs_table', 1),
(90, '2021_03_11_212124_create_order_transactions_table', 1),
(91, '2021_04_07_132010_create_product_review_images_table', 1),
(92, '2021_12_15_104544_notifications', 1),
(93, '2022_03_15_160510_create_failed_jobs_table', 1),
(94, '2022_04_01_094622_create_sitemaps_table', 1),
(95, '2022_10_03_144232_create_product_price_indices_table', 1),
(96, '2022_10_04_144444_create_job_batches_table', 1),
(97, '2022_10_08_134150_create_product_inventory_indices_table', 1),
(98, '2023_05_26_213105_create_wishlist_items_table', 1),
(99, '2023_05_26_213120_create_compare_items_table', 1),
(100, '2023_06_27_163529_rename_product_review_images_to_product_review_attachments', 1),
(101, '2023_07_06_140013_add_logo_path_column_to_locales', 1),
(102, '2023_07_10_184256_create_theme_customizations_table', 1),
(103, '2023_07_12_181722_remove_home_page_and_footer_content_column_from_channel_translations_table', 1),
(104, '2023_07_20_185324_add_column_column_in_attribute_groups_table', 1),
(105, '2023_07_25_145943_add_regex_column_in_attributes_table', 1),
(106, '2023_07_25_165945_drop_notes_column_from_customers_table', 1),
(107, '2023_07_25_171058_create_customer_notes_table', 1),
(108, '2023_07_31_125232_rename_image_and_category_banner_columns_from_categories_table', 1),
(109, '2023_09_15_170053_create_theme_customization_translations_table', 1),
(110, '2023_09_20_102031_add_default_value_column_in_attributes_table', 1),
(111, '2023_09_20_102635_add_inventories_group_in_attribute_groups_table', 1),
(112, '2023_09_26_155709_add_columns_to_currencies', 1),
(113, '2023_10_05_163612_create_visits_table', 1),
(114, '2023_10_12_090446_add_tax_category_id_column_in_order_items_table', 1),
(115, '2023_11_08_054614_add_code_column_in_attribute_groups_table', 1),
(116, '2023_11_08_140116_create_search_terms_table', 1),
(117, '2023_11_09_162805_create_url_rewrites_table', 1),
(118, '2023_11_17_150401_create_search_synonyms_table', 1),
(119, '2023_12_11_054614_add_channel_id_column_in_product_price_indices_table', 1),
(120, '2024_01_11_154640_create_imports_table', 1),
(121, '2024_01_11_154741_create_import_batches_table', 1),
(122, '2024_01_19_170350_add_unique_id_column_in_product_attribute_values_table', 1),
(123, '2024_01_19_170350_add_unique_id_column_in_product_customer_group_prices_table', 1),
(124, '2024_01_22_170814_add_unique_index_in_mapping_tables', 1),
(125, '2024_02_26_153000_add_columns_to_addresses_table', 1),
(126, '2024_03_07_193421_rename_address1_column_in_addresses_table', 1),
(127, '2024_04_16_144400_add_cart_id_column_in_cart_shipping_rates_table', 1),
(128, '2024_04_19_102939_add_incl_tax_columns_in_orders_table', 1),
(129, '2024_04_19_135405_add_incl_tax_columns_in_cart_items_table', 1),
(130, '2024_04_19_144641_add_incl_tax_columns_in_order_items_table', 1),
(131, '2024_04_23_133154_add_incl_tax_columns_in_cart_table', 1),
(132, '2024_04_23_150945_add_incl_tax_columns_in_cart_shipping_rates_table', 1),
(133, '2024_04_24_102939_add_incl_tax_columns_in_invoices_table', 1),
(134, '2024_04_24_102939_add_incl_tax_columns_in_refunds_table', 1),
(135, '2024_04_24_144641_add_incl_tax_columns_in_invoice_items_table', 1),
(136, '2024_04_24_144641_add_incl_tax_columns_in_refund_items_table', 1),
(137, '2024_04_24_144641_add_incl_tax_columns_in_shipment_items_table', 1),
(138, '2024_05_10_152848_create_saved_filters_table', 1),
(139, '2024_06_03_174128_create_product_channels_table', 1),
(140, '2024_06_04_130527_add_channel_id_column_in_customers_table', 1),
(141, '2024_06_04_134403_add_channel_id_column_in_visits_table', 1),
(142, '2024_06_13_184426_add_theme_column_into_theme_customizations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `read`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'order', 0, 1, '2024-11-07 09:58:58', '2024-11-07 09:58:58'),
(2, 'order', 1, 2, '2024-11-07 10:46:35', '2024-11-07 15:22:38'),
(3, 'order', 1, 3, '2024-11-07 17:44:07', '2024-11-07 17:44:28'),
(4, 'order', 0, 4, '2024-11-07 17:50:23', '2024-11-07 17:50:23'),
(5, 'order', 0, 5, '2024-11-07 17:54:29', '2024-11-07 17:54:29'),
(6, 'order', 0, 6, '2024-11-07 17:57:29', '2024-11-07 17:57:29'),
(7, 'order', 1, 7, '2024-11-07 18:51:42', '2024-11-07 18:52:18'),
(8, 'order', 0, 8, '2024-11-07 18:53:44', '2024-11-07 18:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `channel_name` varchar(191) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_first_name` varchar(191) DEFAULT NULL,
  `customer_last_name` varchar(191) DEFAULT NULL,
  `shipping_method` varchar(191) DEFAULT NULL,
  `shipping_title` varchar(191) DEFAULT NULL,
  `shipping_description` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `total_item_count` int(11) DEFAULT NULL,
  `total_qty_ordered` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `order_currency_code` varchar(191) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `shipping_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_type` varchar(191) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `increment_id`, `status`, `channel_name`, `is_guest`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `shipping_title`, `shipping_description`, `coupon_code`, `is_gift`, `total_item_count`, `total_qty_ordered`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `grand_total`, `base_grand_total`, `grand_total_invoiced`, `base_grand_total_invoiced`, `grand_total_refunded`, `base_grand_total_refunded`, `sub_total`, `base_sub_total`, `sub_total_invoiced`, `base_sub_total_invoiced`, `sub_total_refunded`, `base_sub_total_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `shipping_amount`, `base_shipping_amount`, `shipping_invoiced`, `base_shipping_invoiced`, `shipping_refunded`, `base_shipping_refunded`, `shipping_discount_amount`, `base_shipping_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `shipping_tax_refunded`, `base_shipping_tax_refunded`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `customer_id`, `customer_type`, `channel_id`, `channel_type`, `cart_id`, `applied_cart_rule_ids`, `created_at`, `updated_at`) VALUES
(1, '1', 'processing', 'Default', 0, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'IDR', 'IDR', 'IDR', '14.0000', '14.0000', '14.0000', '14.0000', '0.0000', '0.0000', '14.0000', '14.0000', '14.0000', '14.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '14.0000', '14.0000', '0.0000', '0.0000', 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 1, NULL, '2024-11-07 09:58:55', '2024-11-07 10:05:13'),
(2, '2', 'pending', 'Default', 0, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'IDR', 'IDR', 'IDR', '470.0000', '470.0000', '0.0000', '0.0000', '0.0000', '0.0000', '470.0000', '470.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '470.0000', '470.0000', '0.0000', '0.0000', 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 2, NULL, '2024-11-07 10:46:31', '2024-11-07 10:46:31'),
(3, '3', 'closed', 'Default', 0, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 2, 'IDR', 'IDR', 'IDR', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 3, NULL, '2024-11-07 17:44:02', '2024-11-07 18:22:35'),
(4, '4', 'canceled', 'Default', 0, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 2, 'IDR', 'IDR', 'IDR', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 4, NULL, '2024-11-07 17:50:19', '2024-11-07 17:54:57'),
(5, '5', 'processing', 'Default', 0, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 2, 'IDR', 'IDR', 'IDR', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 5, NULL, '2024-11-07 17:54:24', '2024-11-07 18:21:09'),
(6, '6', 'canceled', 'Default', 0, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 2, 'IDR', 'IDR', 'IDR', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 6, NULL, '2024-11-07 17:57:14', '2024-11-07 18:06:48'),
(7, '7', 'pending', 'Default', 0, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 4, 'IDR', 'IDR', 'IDR', '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '120000.0000', '120000.0000', '0.0000', '0.0000', 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 7, NULL, '2024-11-07 18:51:37', '2024-11-07 18:51:37'),
(8, 'GO00008', 'pending', 'Default', 0, 'bellatrix808080@gmail.com', 'testing', 'testing', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 4, 'IDR', 'IDR', 'IDR', '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '120000.0000', '120000.0000', '0.0000', '0.0000', 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 8, NULL, '2024-11-07 18:53:41', '2024-11-07 18:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_comments`
--

CREATE TABLE `order_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_comments`
--

INSERT INTO `order_comments` (`id`, `order_id`, `comment`, `customer_notified`, `created_at`, `updated_at`) VALUES
(1, 3, 'Hai selesaikan pembayaran ya ka', 1, '2024-11-07 17:47:18', '2024-11-07 17:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT 0.0000,
  `total_weight` decimal(12,4) DEFAULT 0.0000,
  `qty_ordered` int(11) DEFAULT 0,
  `qty_shipped` int(11) DEFAULT 0,
  `qty_invoiced` int(11) DEFAULT 0,
  `qty_canceled` int(11) DEFAULT 0,
  `qty_refunded` int(11) DEFAULT 0,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `qty_ordered`, `qty_shipped`, `qty_invoiced`, `qty_canceled`, `qty_refunded`, `price`, `base_price`, `total`, `base_total`, `total_invoiced`, `base_total_invoiced`, `amount_refunded`, `base_amount_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_id`, `tax_category_id`, `parent_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'SP-001', 'simple', 'Arctic Cozy Knit Unisex Beanie', NULL, '1.2300', '1.2300', 1, 0, 1, 0, 0, '14.0000', '14.0000', '14.0000', '14.0000', '14.0000', '14.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '14.0000', '14.0000', '14.0000', '14.0000', 1, 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, '{\"product_id\":\"1\",\"is_buy_now\":\"0\",\"quantity\":1,\"locale\":\"en\"}', '2024-11-07 09:58:55', '2024-11-07 10:05:13'),
(2, 'SH-001', 'simple', 'Pouch Organizer - Case Penyimpanan - ARMARO Bags - Veranstalter Series - Ver.535 - Misc.', NULL, '0.5000', '0.5000', 1, 0, 0, 0, 0, '470.0000', '470.0000', '470.0000', '470.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '470.0000', '470.0000', '470.0000', '470.0000', 12, 'Webkul\\Product\\Models\\Product', 2, NULL, NULL, '{\"product_id\":\"12\",\"is_buy_now\":\"0\",\"quantity\":1,\"locale\":\"en\"}', '2024-11-07 10:46:31', '2024-11-07 10:46:31'),
(3, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '8.0000', 2, 0, 2, 0, 2, '30000.0000', '30000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', 93, 'Webkul\\Product\\Models\\Product', 3, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 17:44:02', '2024-11-07 18:22:35'),
(4, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', 0, 0, 2, 0, 2, '1.0000', '0.0000', '0.0000', '0.0000', '2.0000', '0.0000', '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 94, 'Webkul\\Product\\Models\\Product', 3, NULL, 3, '{\"product_id\":94,\"parent_id\":93,\"locale\":\"en\"}', '2024-11-07 17:44:02', '2024-11-07 18:22:35'),
(5, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '8.0000', 2, 0, 0, 2, 0, '30000.0000', '30000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', 93, 'Webkul\\Product\\Models\\Product', 4, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 17:50:19', '2024-11-07 17:54:57'),
(6, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', 0, 0, 0, 0, 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 94, 'Webkul\\Product\\Models\\Product', 4, NULL, 5, '{\"product_id\":94,\"parent_id\":93,\"locale\":\"en\"}', '2024-11-07 17:50:19', '2024-11-07 17:50:19'),
(7, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '8.0000', 2, 2, 0, 0, 0, '30000.0000', '30000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', 93, 'Webkul\\Product\\Models\\Product', 5, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 17:54:24', '2024-11-07 18:21:09'),
(8, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', 0, 2, 0, 0, 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 94, 'Webkul\\Product\\Models\\Product', 5, NULL, 7, '{\"product_id\":94,\"parent_id\":93,\"locale\":\"en\"}', '2024-11-07 17:54:24', '2024-11-07 18:21:09'),
(9, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '8.0000', 2, 0, 0, 2, 0, '30000.0000', '30000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', 93, 'Webkul\\Product\\Models\\Product', 6, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 17:57:14', '2024-11-07 18:06:48'),
(10, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', 0, 0, 0, 0, 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 94, 'Webkul\\Product\\Models\\Product', 6, NULL, 9, '{\"product_id\":94,\"parent_id\":93,\"locale\":\"en\"}', '2024-11-07 17:57:14', '2024-11-07 17:57:14'),
(11, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '16.0000', 4, 0, 0, 0, 0, '30000.0000', '30000.0000', '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '120000.0000', '120000.0000', 93, 'Webkul\\Product\\Models\\Product', 7, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":4,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 18:51:37', '2024-11-07 18:51:37'),
(12, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', 0, 0, 0, 0, 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 94, 'Webkul\\Product\\Models\\Product', 7, NULL, 11, '{\"product_id\":94,\"parent_id\":93,\"locale\":\"en\"}', '2024-11-07 18:51:37', '2024-11-07 18:51:37'),
(13, 'KAOSRED-variant-config', 'configurable', 'Kaos Oblong Pria - ALL', NULL, '4.0000', '16.0000', 4, 0, 0, 0, 0, '30000.0000', '30000.0000', '120000.0000', '120000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '120000.0000', '120000.0000', 93, 'Webkul\\Product\\Models\\Product', 8, NULL, NULL, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":4,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 18:53:41', '2024-11-07 18:53:41'),
(14, 'KAOSRED-variant-config-variant-1-6', 'simple', 'Variant 1 6', NULL, '0.0000', '0.0000', 0, 0, 0, 0, 0, '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 94, 'Webkul\\Product\\Models\\Product', 8, NULL, 13, '{\"product_id\":94,\"parent_id\":93,\"locale\":\"en\"}', '2024-11-07 18:53:41', '2024-11-07 18:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE `order_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `method` varchar(191) NOT NULL,
  `method_title` varchar(191) DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`id`, `order_id`, `method`, `method_title`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, 'cashondelivery', 'Cash On Delivery', NULL, '2024-11-07 09:58:55', '2024-11-07 09:58:55'),
(2, 2, 'cashondelivery', 'Cash On Delivery', NULL, '2024-11-07 10:46:31', '2024-11-07 10:46:31'),
(3, 3, 'moneytransfer', 'Transfer ATM', NULL, '2024-11-07 17:44:02', '2024-11-07 17:44:02'),
(4, 4, 'moneytransfer', 'Transfer ATM', NULL, '2024-11-07 17:50:19', '2024-11-07 17:50:19'),
(5, 5, 'moneytransfer', 'Transfer ATM', NULL, '2024-11-07 17:54:24', '2024-11-07 17:54:24'),
(6, 6, 'cashondelivery', 'Bayar di tempat', NULL, '2024-11-07 17:57:14', '2024-11-07 17:57:14'),
(7, 7, 'moneytransfer', 'Transfer ATM', NULL, '2024-11-07 18:51:37', '2024-11-07 18:51:37'),
(8, 8, 'moneytransfer', 'Transfer ATM', NULL, '2024-11-07 18:53:41', '2024-11-07 18:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT 0.0000,
  `payment_method` varchar(191) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_transactions`
--

INSERT INTO `order_transactions` (`id`, `transaction_id`, `status`, `type`, `amount`, `payment_method`, `data`, `invoice_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'f074fe47154a19cb45593aefb243af8e', 'paid', 'cashondelivery', '14.0000', 'cashondelivery', NULL, 1, 1, '2024-11-07 10:05:15', '2024-11-07 10:05:15'),
(2, '61a3a399a6779daf28c9632600c34644', 'paid', 'moneytransfer', '60000.0000', 'moneytransfer', NULL, 2, 3, '2024-11-07 17:47:33', '2024-11-07 17:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `type`, `parent_id`, `attribute_family_id`, `additional`, `created_at`, `updated_at`) VALUES
(13, 'FW-001', 'simple', NULL, 1, NULL, '2024-11-07 12:31:30', '2024-11-07 12:31:30'),
(14, 'KAOSRED-variant-1', 'simple', NULL, 1, NULL, '2024-11-07 17:06:53', '2024-11-07 17:23:24'),
(15, 'KAOSRED-variant-2', 'simple', NULL, 1, NULL, '2024-11-07 17:23:52', '2024-11-07 17:23:52'),
(93, 'KAOSRED-variant-config', 'configurable', NULL, 1, NULL, '2024-11-07 17:34:31', '2024-11-07 17:34:31'),
(94, 'KAOSRED-variant-config-variant-1-6', 'simple', 93, 1, NULL, '2024-11-07 17:34:31', '2024-11-07 17:34:31'),
(95, 'KAOSRED-variant-config-variant-4-6', 'simple', 93, 1, NULL, '2024-11-07 17:34:31', '2024-11-07 17:34:31'),
(96, 'KAOSRED-variant-config-variant-1-7', 'simple', 93, 1, NULL, '2024-11-07 17:34:31', '2024-11-07 17:34:31'),
(97, 'KAOSRED-variant-config-variant-1-8', 'simple', 93, 1, NULL, '2024-11-07 17:34:31', '2024-11-07 17:34:31'),
(98, 'KAOSRED-variant-config-variant-4-7', 'simple', 93, 1, NULL, '2024-11-07 17:34:31', '2024-11-07 17:34:31'),
(99, 'KAOSRED-variant-config-variant-4-8', 'simple', 93, 1, NULL, '2024-11-07 17:34:31', '2024-11-07 17:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) DEFAULT NULL,
  `channel` varchar(191) DEFAULT NULL,
  `text_value` text DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(12,4) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_value`)),
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(232, 'en', NULL, '<p>ini kaos oblong</p>', NULL, NULL, NULL, NULL, NULL, NULL, 14, 9, 'en|14|9'),
(233, 'en', NULL, '<p>kaos oblong</p>', NULL, NULL, NULL, NULL, NULL, NULL, 14, 10, 'en|14|10'),
(234, NULL, NULL, 'KAOSRED-variant-1', NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, '14|1'),
(235, 'en', NULL, 'Kaos Oblong Pria - PACK R', NULL, NULL, NULL, NULL, NULL, NULL, 14, 2, 'en|14|2'),
(236, 'en', NULL, 'kaos-oblong-pria-pack-r', NULL, NULL, NULL, NULL, NULL, NULL, 14, 3, 'en|14|3'),
(237, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 14, 23, '14|23'),
(238, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 14, 24, '14|24'),
(239, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 27, '14|27'),
(240, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 28, 'default|14|28'),
(241, 'en', NULL, 'kaos oblong', NULL, NULL, NULL, NULL, NULL, NULL, 14, 16, 'en|14|16'),
(242, 'en', NULL, 'kaos oblong', NULL, NULL, NULL, NULL, NULL, NULL, 14, 17, 'en|14|17'),
(243, 'en', NULL, 'kaos oblong', NULL, NULL, NULL, NULL, NULL, NULL, 14, 18, 'en|14|18'),
(244, NULL, NULL, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, 14, 11, '14|11'),
(245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 12, '14|12'),
(246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 13, '14|13'),
(247, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 14, 'default|14|14'),
(248, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 15, 'default|14|15'),
(249, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 14, 5, '14|5'),
(250, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 14, 6, '14|6'),
(251, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 14, 7, '14|7'),
(252, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 8, 'default|14|8'),
(253, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 14, 26, '14|26'),
(254, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 19, '14|19'),
(255, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 20, '14|20'),
(256, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 21, '14|21'),
(257, NULL, NULL, '04', NULL, NULL, NULL, NULL, NULL, NULL, 14, 22, '14|22'),
(258, 'en', NULL, '<p>kaos oblong item</p>', NULL, NULL, NULL, NULL, NULL, NULL, 15, 9, 'en|15|9'),
(259, 'en', NULL, '<p>kaos oblong item</p>', NULL, NULL, NULL, NULL, NULL, NULL, 15, 10, 'en|15|10'),
(260, NULL, NULL, 'KAOSRED-variant-2', NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, '15|1'),
(261, 'en', NULL, 'Kaos Oblong Pria - PACK B', NULL, NULL, NULL, NULL, NULL, NULL, 15, 2, 'en|15|2'),
(262, 'en', NULL, 'kaos-oblong-pria-pack-b', NULL, NULL, NULL, NULL, NULL, NULL, 15, 3, 'en|15|3'),
(263, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 15, 23, '15|23'),
(264, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 15, 24, '15|24'),
(265, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 27, '15|27'),
(266, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 28, 'default|15|28'),
(267, 'en', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 16, 'en|15|16'),
(268, 'en', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 17, 'en|15|17'),
(269, 'en', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 18, 'en|15|18'),
(270, NULL, NULL, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, 15, 11, '15|11'),
(271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 12, '15|12'),
(272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 13, '15|13'),
(273, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 14, 'default|15|14'),
(274, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 15, 'default|15|15'),
(275, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 15, 5, '15|5'),
(276, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 15, 6, '15|6'),
(277, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 15, 7, '15|7'),
(278, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 8, 'default|15|8'),
(279, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 15, 26, '15|26'),
(280, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 19, '15|19'),
(281, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 20, '15|20'),
(282, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 21, '15|21'),
(283, NULL, NULL, '04', NULL, NULL, NULL, NULL, NULL, NULL, 15, 22, '15|22'),
(1120, NULL, NULL, 'KAOSRED-variant-config-variant-1-6', NULL, NULL, NULL, NULL, NULL, NULL, 94, 1, '94|1'),
(1121, 'en', NULL, 'Variant 1 6', NULL, NULL, NULL, NULL, NULL, NULL, 94, 2, 'en|94|2'),
(1122, 'en', NULL, 'KAOSRED-variant-config-variant-1-6', NULL, NULL, NULL, NULL, NULL, NULL, 94, 3, 'en|94|3'),
(1123, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 94, 4, 'default|94|4'),
(1124, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 94, 8, 'default|94|8'),
(1125, 'en', NULL, 'KAOSRED-variant-config-variant-1-6', NULL, NULL, NULL, NULL, NULL, NULL, 94, 9, 'en|94|9'),
(1126, 'en', NULL, 'KAOSRED-variant-config-variant-1-6', NULL, NULL, NULL, NULL, NULL, NULL, 94, 10, 'en|94|10'),
(1127, NULL, NULL, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, 94, 11, '94|11'),
(1128, NULL, NULL, '04', NULL, NULL, NULL, NULL, NULL, NULL, 94, 22, '94|22'),
(1129, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 94, 23, '94|23'),
(1130, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 94, 24, '94|24'),
(1131, NULL, NULL, 'KAOSRED-variant-config-variant-4-6', NULL, NULL, NULL, NULL, NULL, NULL, 95, 1, '95|1'),
(1132, 'en', NULL, 'Variant 4 6', NULL, NULL, NULL, NULL, NULL, NULL, 95, 2, 'en|95|2'),
(1133, 'en', NULL, 'KAOSRED-variant-config-variant-4-6', NULL, NULL, NULL, NULL, NULL, NULL, 95, 3, 'en|95|3'),
(1134, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 95, 4, 'default|95|4'),
(1135, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 95, 8, 'default|95|8'),
(1136, 'en', NULL, 'KAOSRED-variant-config-variant-4-6', NULL, NULL, NULL, NULL, NULL, NULL, 95, 9, 'en|95|9'),
(1137, 'en', NULL, 'KAOSRED-variant-config-variant-4-6', NULL, NULL, NULL, NULL, NULL, NULL, 95, 10, 'en|95|10'),
(1138, NULL, NULL, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, 95, 11, '95|11'),
(1139, NULL, NULL, '04', NULL, NULL, NULL, NULL, NULL, NULL, 95, 22, '95|22'),
(1140, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 95, 23, '95|23'),
(1141, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 95, 24, '95|24'),
(1142, NULL, NULL, 'KAOSRED-variant-config-variant-1-7', NULL, NULL, NULL, NULL, NULL, NULL, 96, 1, '96|1'),
(1143, 'en', NULL, 'Variant 1 7', NULL, NULL, NULL, NULL, NULL, NULL, 96, 2, 'en|96|2'),
(1144, 'en', NULL, 'KAOSRED-variant-config-variant-1-7', NULL, NULL, NULL, NULL, NULL, NULL, 96, 3, 'en|96|3'),
(1145, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 96, 4, 'default|96|4'),
(1146, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 96, 8, 'default|96|8'),
(1147, 'en', NULL, 'KAOSRED-variant-config-variant-1-7', NULL, NULL, NULL, NULL, NULL, NULL, 96, 9, 'en|96|9'),
(1148, 'en', NULL, 'KAOSRED-variant-config-variant-1-7', NULL, NULL, NULL, NULL, NULL, NULL, 96, 10, 'en|96|10'),
(1149, NULL, NULL, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, 96, 11, '96|11'),
(1150, NULL, NULL, '04', NULL, NULL, NULL, NULL, NULL, NULL, 96, 22, '96|22'),
(1151, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 96, 23, '96|23'),
(1152, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 96, 24, '96|24'),
(1153, NULL, NULL, 'KAOSRED-variant-config-variant-1-8', NULL, NULL, NULL, NULL, NULL, NULL, 97, 1, '97|1'),
(1154, 'en', NULL, 'Variant 1 8', NULL, NULL, NULL, NULL, NULL, NULL, 97, 2, 'en|97|2'),
(1155, 'en', NULL, 'KAOSRED-variant-config-variant-1-8', NULL, NULL, NULL, NULL, NULL, NULL, 97, 3, 'en|97|3'),
(1156, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 97, 4, 'default|97|4'),
(1157, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 97, 8, 'default|97|8'),
(1158, 'en', NULL, 'KAOSRED-variant-config-variant-1-8', NULL, NULL, NULL, NULL, NULL, NULL, 97, 9, 'en|97|9'),
(1159, 'en', NULL, 'KAOSRED-variant-config-variant-1-8', NULL, NULL, NULL, NULL, NULL, NULL, 97, 10, 'en|97|10'),
(1160, NULL, NULL, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, 97, 11, '97|11'),
(1161, NULL, NULL, '04', NULL, NULL, NULL, NULL, NULL, NULL, 97, 22, '97|22'),
(1162, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 97, 23, '97|23'),
(1163, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 97, 24, '97|24'),
(1164, NULL, NULL, 'KAOSRED-variant-config-variant-4-7', NULL, NULL, NULL, NULL, NULL, NULL, 98, 1, '98|1'),
(1165, 'en', NULL, 'Variant 4 7', NULL, NULL, NULL, NULL, NULL, NULL, 98, 2, 'en|98|2'),
(1166, 'en', NULL, 'KAOSRED-variant-config-variant-4-7', NULL, NULL, NULL, NULL, NULL, NULL, 98, 3, 'en|98|3'),
(1167, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 98, 4, 'default|98|4'),
(1168, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 98, 8, 'default|98|8'),
(1169, 'en', NULL, 'KAOSRED-variant-config-variant-4-7', NULL, NULL, NULL, NULL, NULL, NULL, 98, 9, 'en|98|9'),
(1170, 'en', NULL, 'KAOSRED-variant-config-variant-4-7', NULL, NULL, NULL, NULL, NULL, NULL, 98, 10, 'en|98|10'),
(1171, NULL, NULL, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, 98, 11, '98|11'),
(1172, NULL, NULL, '04', NULL, NULL, NULL, NULL, NULL, NULL, 98, 22, '98|22'),
(1173, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 98, 23, '98|23'),
(1174, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 98, 24, '98|24'),
(1175, NULL, NULL, 'KAOSRED-variant-config-variant-4-8', NULL, NULL, NULL, NULL, NULL, NULL, 99, 1, '99|1'),
(1176, 'en', NULL, 'Variant 4 8', NULL, NULL, NULL, NULL, NULL, NULL, 99, 2, 'en|99|2'),
(1177, 'en', NULL, 'KAOSRED-variant-config-variant-4-8', NULL, NULL, NULL, NULL, NULL, NULL, 99, 3, 'en|99|3'),
(1178, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 99, 4, 'default|99|4'),
(1179, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 99, 8, 'default|99|8'),
(1180, 'en', NULL, 'KAOSRED-variant-config-variant-4-8', NULL, NULL, NULL, NULL, NULL, NULL, 99, 9, 'en|99|9'),
(1181, 'en', NULL, 'KAOSRED-variant-config-variant-4-8', NULL, NULL, NULL, NULL, NULL, NULL, 99, 10, 'en|99|10'),
(1182, NULL, NULL, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, 99, 11, '99|11'),
(1183, NULL, NULL, '04', NULL, NULL, NULL, NULL, NULL, NULL, 99, 22, '99|22'),
(1184, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 99, 23, '99|23'),
(1185, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 99, 24, '99|24'),
(1186, 'en', NULL, '<p>kaos</p>', NULL, NULL, NULL, NULL, NULL, NULL, 93, 9, 'en|93|9'),
(1187, 'en', NULL, '<p>kaos</p>', NULL, NULL, NULL, NULL, NULL, NULL, 93, 10, 'en|93|10'),
(1188, NULL, NULL, 'KAOSRED-variant-config', NULL, NULL, NULL, NULL, NULL, NULL, 93, 1, '93|1'),
(1189, 'en', NULL, 'Kaos Oblong Pria - ALL', NULL, NULL, NULL, NULL, NULL, NULL, 93, 2, 'en|93|2'),
(1190, 'en', NULL, 'kaos-oblong-pria-all', NULL, NULL, NULL, NULL, NULL, NULL, 93, 3, 'en|93|3'),
(1191, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 93, 27, '93|27'),
(1192, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 93, 28, 'default|93|28'),
(1193, 'en', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 93, 16, 'en|93|16'),
(1194, 'en', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 93, 17, 'en|93|17'),
(1195, 'en', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 93, 18, 'en|93|18'),
(1196, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 93, 5, '93|5'),
(1197, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 93, 6, '93|6'),
(1198, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 93, 7, '93|7'),
(1199, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 93, 8, 'default|93|8'),
(1200, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 93, 26, '93|26');

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_options`
--

CREATE TABLE `product_bundle_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_products`
--

CREATE TABLE `product_bundle_option_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_translations`
--

CREATE TABLE `product_bundle_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(14, 10),
(15, 10),
(93, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_channels`
--

CREATE TABLE `product_channels` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_channels`
--

INSERT INTO `product_channels` (`product_id`, `channel_id`) VALUES
(13, 1),
(14, 1),
(15, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cross_sells`
--

CREATE TABLE `product_cross_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_customer_group_prices`
--

CREATE TABLE `product_customer_group_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `value_type` varchar(191) NOT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unique_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_links`
--

CREATE TABLE `product_downloadable_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sample_url` varchar(191) DEFAULT NULL,
  `sample_file` varchar(191) DEFAULT NULL,
  `sample_file_name` varchar(191) DEFAULT NULL,
  `sample_type` varchar(191) DEFAULT NULL,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_link_translations`
--

CREATE TABLE `product_downloadable_link_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_downloadable_link_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_samples`
--

CREATE TABLE `product_downloadable_samples` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_sample_translations`
--

CREATE TABLE `product_downloadable_sample_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_downloadable_sample_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_flat`
--

CREATE TABLE `product_flat` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `product_number` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url_key` varchar(191) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` date DEFAULT NULL,
  `special_price_to` date DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(191) DEFAULT NULL,
  `channel` varchar(191) DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `visible_individually` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_flat`
--

INSERT INTO `product_flat` (`id`, `sku`, `type`, `product_number`, `name`, `short_description`, `description`, `url_key`, `new`, `featured`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `price`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `created_at`, `locale`, `channel`, `attribute_family_id`, `product_id`, `updated_at`, `parent_id`, `visible_individually`) VALUES
(13, 'FW-001', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-07 19:31:30', 'en', 'default', 1, 13, '2024-11-07 19:31:30', NULL, NULL),
(14, 'KAOSRED-variant-1', 'simple', '', 'Kaos Oblong Pria - PACK R', '<p>ini kaos oblong</p>', '<p>kaos oblong</p>', 'kaos-oblong-pria-pack-r', 0, 0, 1, 'kaos oblong', 'kaos oblong', 'kaos oblong', '30000.0000', NULL, NULL, NULL, '4.0000', '2024-11-08 00:06:53', 'en', 'default', 1, 14, '2024-11-08 00:27:19', NULL, 0),
(15, 'KAOSRED-variant-2', 'simple', '', 'Kaos Oblong Pria - PACK B', '<p>kaos oblong item</p>', '<p>kaos oblong item</p>', 'kaos-oblong-pria-pack-b', 0, 0, 1, '', '', '', '30000.0000', NULL, NULL, NULL, '4.0000', '2024-11-08 00:23:52', 'en', 'default', 1, 15, '2024-11-08 00:38:50', NULL, 0),
(93, 'KAOSRED-variant-config', 'configurable', '', 'Kaos Oblong Pria - ALL', '<p>kaos</p>', '<p>kaos</p>', 'kaos-oblong-pria-all', 0, 0, 1, '', '', '', NULL, NULL, NULL, NULL, NULL, '2024-11-08 00:34:31', 'en', 'default', 1, 93, '2024-11-08 00:39:21', NULL, 1),
(94, 'KAOSRED-variant-config-variant-1-6', 'simple', NULL, 'Variant 1 6', 'KAOSRED-variant-config-variant-1-6', 'KAOSRED-variant-config-variant-1-6', 'KAOSRED-variant-config-variant-1-6', NULL, NULL, 1, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, '4.0000', '2024-11-08 00:34:31', 'en', 'default', 1, 94, '2024-11-08 01:21:09', NULL, NULL),
(95, 'KAOSRED-variant-config-variant-4-6', 'simple', NULL, 'Variant 4 6', 'KAOSRED-variant-config-variant-4-6', 'KAOSRED-variant-config-variant-4-6', 'KAOSRED-variant-config-variant-4-6', NULL, NULL, 1, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, '4.0000', '2024-11-08 00:34:31', 'en', 'default', 1, 95, '2024-11-08 00:42:40', NULL, NULL),
(96, 'KAOSRED-variant-config-variant-1-7', 'simple', NULL, 'Variant 1 7', 'KAOSRED-variant-config-variant-1-7', 'KAOSRED-variant-config-variant-1-7', 'KAOSRED-variant-config-variant-1-7', NULL, NULL, 1, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, '4.0000', '2024-11-08 00:34:31', 'en', 'default', 1, 96, '2024-11-08 00:42:40', NULL, NULL),
(97, 'KAOSRED-variant-config-variant-1-8', 'simple', NULL, 'Variant 1 8', 'KAOSRED-variant-config-variant-1-8', 'KAOSRED-variant-config-variant-1-8', 'KAOSRED-variant-config-variant-1-8', NULL, NULL, 1, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, '4.0000', '2024-11-08 00:34:32', 'en', 'default', 1, 97, '2024-11-08 00:42:40', NULL, NULL),
(98, 'KAOSRED-variant-config-variant-4-7', 'simple', NULL, 'Variant 4 7', 'KAOSRED-variant-config-variant-4-7', 'KAOSRED-variant-config-variant-4-7', 'KAOSRED-variant-config-variant-4-7', NULL, NULL, 1, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, '4.0000', '2024-11-08 00:34:32', 'en', 'default', 1, 98, '2024-11-08 00:42:40', NULL, NULL),
(99, 'KAOSRED-variant-config-variant-4-8', 'simple', NULL, 'Variant 4 8', 'KAOSRED-variant-config-variant-4-8', 'KAOSRED-variant-config-variant-4-8', 'KAOSRED-variant-config-variant-4-8', NULL, NULL, 1, NULL, NULL, NULL, '30000.0000', NULL, NULL, NULL, '4.0000', '2024-11-08 00:34:32', 'en', 'default', 1, 99, '2024-11-08 00:42:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_grouped_products`
--

CREATE TABLE `product_grouped_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `associated_product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `path` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `type`, `path`, `product_id`, `position`) VALUES
(19, 'images', 'product/14/dRqvR1AoNRe0LimnSSb8Ai3qGfZ76OtOpEdGYEcH.webp', 14, 1),
(20, 'images', 'product/15/wclcbSkBv9QfOT8O3E8nzrnhGNzLwKJbnf6dB2Kw.webp', 15, 1),
(21, 'images', 'product/93/hL6zQIlCcKR5v9zyLn4JEIeWS7xAKPbzNOnmkdRi.webp', 93, 1),
(22, 'images', 'product/93/vyTM7v2PQe3PQWiF9QYAvscQNe5H9OhUZMGmqvO2.webp', 93, 2),
(29, 'images', 'product/94/zvIbLHsEwAl2oY3WOA3zlFVPTrrImnidXa0nrT31.webp', 94, 1),
(30, 'images', 'product/95/eRUncuDNyFfehqQwLOJRfdA23jiAFQmdovEXtDHd.webp', 95, 1),
(31, 'images', 'product/96/SLBjANuMZ3WnGHJFFrxRvT3Rf8QKHWwhoogYdCVY.webp', 96, 1),
(32, 'images', 'product/97/VZHCp5ahPsZedSjuYEI926somZptM38Q8Vs0IGej.webp', 97, 1),
(33, 'images', 'product/98/4WfNvYOxr87bMyImlTE5nagXNvh4KRjDU2F9u7wP.webp', 98, 1),
(34, 'images', 'product/99/oKySToY5tLq2WYuYK3YGjd3ySfPbiUWVQmpVC7ht.webp', 99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `inventory_source_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `qty`, `product_id`, `vendor_id`, `inventory_source_id`) VALUES
(10, 10, 14, 0, 1),
(11, 100, 15, 0, 1),
(12, 98, 94, 0, 1),
(13, 100, 95, 0, 1),
(14, 100, 96, 0, 1),
(15, 100, 97, 0, 1),
(16, 100, 98, 0, 1),
(17, 100, 99, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory_indices`
--

CREATE TABLE `product_inventory_indices` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_inventory_indices`
--

INSERT INTO `product_inventory_indices` (`id`, `qty`, `product_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(11, 10, 14, 1, NULL, '2024-11-07 17:26:00'),
(12, 100, 15, 1, NULL, NULL),
(13, 98, 94, 1, NULL, '2024-11-07 18:21:09'),
(14, 100, 95, 1, NULL, '2024-11-07 17:41:09'),
(15, 100, 96, 1, NULL, '2024-11-07 17:41:09'),
(16, 100, 97, 1, NULL, '2024-11-07 17:41:09'),
(17, 100, 98, 1, NULL, '2024-11-07 17:41:09'),
(18, 100, 99, 1, NULL, '2024-11-07 17:41:09'),
(19, 0, 93, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_ordered_inventories`
--

CREATE TABLE `product_ordered_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_ordered_inventories`
--

INSERT INTO `product_ordered_inventories` (`id`, `qty`, `product_id`, `channel_id`) VALUES
(3, 0, 94, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_price_indices`
--

CREATE TABLE `product_price_indices` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `min_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `regular_min_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `max_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `regular_max_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_price_indices`
--

INSERT INTO `product_price_indices` (`id`, `product_id`, `customer_group_id`, `channel_id`, `min_price`, `regular_min_price`, `max_price`, `regular_max_price`, `created_at`, `updated_at`) VALUES
(37, 14, 1, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(38, 14, 2, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(39, 14, 3, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(40, 15, 1, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(41, 15, 2, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(42, 15, 3, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(43, 94, 1, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(44, 94, 2, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(45, 94, 3, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(46, 95, 1, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(47, 95, 2, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(48, 95, 3, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(49, 96, 1, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(50, 96, 2, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(51, 96, 3, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(52, 97, 1, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(53, 97, 2, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(54, 97, 3, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(55, 98, 1, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(56, 98, 2, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(57, 98, 3, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(58, 99, 1, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(59, 99, 2, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(60, 99, 3, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, NULL),
(61, 93, 1, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, '2024-11-07 17:41:10'),
(62, 93, 2, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, '2024-11-07 17:41:10'),
(63, 93, 3, 1, '30000.0000', '30000.0000', '30000.0000', '30000.0000', NULL, '2024-11-07 17:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_relations`
--

CREATE TABLE `product_relations` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `title` varchar(191) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_review_attachments`
--

CREATE TABLE `product_review_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT 'image',
  `mime_type` varchar(191) DEFAULT NULL,
  `path` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_super_attributes`
--

CREATE TABLE `product_super_attributes` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_super_attributes`
--

INSERT INTO `product_super_attributes` (`product_id`, `attribute_id`) VALUES
(93, 23),
(93, 24);

-- --------------------------------------------------------

--
-- Table structure for table `product_up_sells`
--

CREATE TABLE `product_up_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_videos`
--

CREATE TABLE `product_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `path` varchar(191) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `order_currency_code` varchar(191) DEFAULT NULL,
  `adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `refunds`
--

INSERT INTO `refunds` (`id`, `increment_id`, `state`, `email_sent`, `total_qty`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `adjustment_refund`, `base_adjustment_refund`, `adjustment_fee`, `base_adjustment_fee`, `sub_total`, `base_sub_total`, `grand_total`, `base_grand_total`, `shipping_amount`, `base_shipping_amount`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `order_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'refunded', 1, 2, 'IDR', 'IDR', 'IDR', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', 3, '2024-11-07 18:22:35', '2024-11-07 18:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `refund_items`
--

CREATE TABLE `refund_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `refund_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `refund_items`
--

INSERT INTO `refund_items` (`id`, `parent_id`, `name`, `description`, `sku`, `qty`, `price`, `base_price`, `total`, `base_total`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_item_id`, `refund_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Kaos Oblong Pria - ALL', NULL, 'KAOSRED-variant-config', 2, '30000.0000', '30000.0000', '60000.0000', '60000.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30000.0000', '30000.0000', '60000.0000', '60000.0000', 93, 'Webkul\\Product\\Models\\Product', 3, 1, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 18:22:35', '2024-11-07 18:22:35'),
(2, 1, 'Variant 1 6', NULL, 'KAOSRED-variant-config-variant-1-6', 2, '1.0000', '0.0000', '2.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 94, 'Webkul\\Product\\Models\\Product', 4, 1, '{\"product_id\":94,\"parent_id\":93,\"locale\":\"en\"}', '2024-11-07 18:22:35', '2024-11-07 18:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `permission_type` varchar(191) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'This role users will have all the access', 'all', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `search_synonyms`
--

CREATE TABLE `search_synonyms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `terms` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) NOT NULL,
  `results` int(11) NOT NULL DEFAULT 0,
  `uses` int(11) NOT NULL DEFAULT 0,
  `redirect_url` varchar(191) DEFAULT NULL,
  `display_in_suggested_terms` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `carrier_code` varchar(191) DEFAULT NULL,
  `carrier_title` varchar(191) DEFAULT NULL,
  `track_number` text DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_address_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_source_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `status`, `total_qty`, `total_weight`, `carrier_code`, `carrier_title`, `track_number`, `email_sent`, `customer_id`, `customer_type`, `order_id`, `order_address_id`, `inventory_source_id`, `inventory_source_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 8, NULL, 'JNE', '00909898989', 1, 1, 'Webkul\\Customer\\Models\\Customer', 5, 20, 1, 'Default', '2024-11-07 18:21:08', '2024-11-07 18:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

CREATE TABLE `shipment_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT 0.0000,
  `base_price` decimal(12,4) DEFAULT 0.0000,
  `total` decimal(12,4) DEFAULT 0.0000,
  `base_total` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shipment_items`
--

INSERT INTO `shipment_items` (`id`, `name`, `description`, `sku`, `qty`, `weight`, `price`, `base_price`, `total`, `base_total`, `price_incl_tax`, `base_price_incl_tax`, `product_id`, `product_type`, `order_item_id`, `shipment_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'Kaos Oblong Pria - ALL', NULL, 'KAOSRED-variant-config-variant-1-6', 2, 8, '30000.0000', '30000.0000', '60000.0000', '60000.0000', '30000.0000', '30000.0000', 93, 'Webkul\\Product\\Models\\Product', 7, 1, '{\"product_id\":\"93\",\"is_buy_now\":\"0\",\"selected_configurable_option\":\"94\",\"super_attribute\":[\"1\",\"6\"],\"quantity\":2,\"attributes\":{\"color\":{\"attribute_name\":\"Color\",\"option_id\":1,\"option_label\":\"Red\"},\"size\":{\"attribute_name\":\"Size\",\"option_id\":6,\"option_label\":\"S\"}},\"locale\":\"en\"}', '2024-11-07 18:21:08', '2024-11-07 18:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `path` varchar(191) NOT NULL,
  `generated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_list`
--

CREATE TABLE `subscribers_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories`
--

CREATE TABLE `tax_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories_tax_rates`
--

CREATE TABLE `tax_categories_tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `is_zip` tinyint(1) NOT NULL DEFAULT 0,
  `zip_code` varchar(191) DEFAULT NULL,
  `zip_from` varchar(191) DEFAULT NULL,
  `zip_to` varchar(191) DEFAULT NULL,
  `state` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `tax_rate` decimal(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `theme_customizations`
--

CREATE TABLE `theme_customizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_code` varchar(191) DEFAULT 'default',
  `type` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `theme_customizations`
--

INSERT INTO `theme_customizations` (`id`, `theme_code`, `type`, `name`, `sort_order`, `status`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'default', 'image_carousel', 'Image Carousel', 1, 1, 1, '2024-11-07 08:25:21', '2024-11-07 11:42:36'),
(2, 'default', 'static_content', 'Offer Information', 2, 1, 1, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(3, 'default', 'category_carousel', 'Categories Collections', 3, 1, 1, '2024-11-07 08:25:21', '2024-11-07 16:02:57'),
(4, 'default', 'product_carousel', 'New Products', 4, 1, 1, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(5, 'default', 'static_content', 'Top Collections', 6, 1, 1, '2024-11-07 08:25:21', '2024-11-07 18:55:16'),
(6, 'default', 'static_content', 'Bold Collections', 9, 1, 1, '2024-11-07 08:25:21', '2024-11-07 18:55:25'),
(7, 'default', 'product_carousel', 'Featured Collections', 7, 1, 1, '2024-11-07 08:25:21', '2024-11-07 10:15:28'),
(8, 'default', 'static_content', 'Game Container', 8, 1, 1, '2024-11-07 08:25:21', '2024-11-07 13:07:19'),
(9, 'default', 'product_carousel', 'All Products', 5, 1, 1, '2024-11-07 08:25:21', '2024-11-07 18:54:59'),
(10, 'default', 'static_content', 'Bold Collections', 10, 1, 1, '2024-11-07 08:25:21', '2024-11-07 16:05:37'),
(11, 'default', 'footer_links', 'Footer Links', 11, 1, 1, '2024-11-07 08:25:21', '2024-11-07 08:25:21'),
(12, 'default', 'services_content', 'Services Content', 12, 1, 1, '2024-11-07 08:25:21', '2024-11-07 17:00:02'),
(13, 'default', 'footer_links', 'whatsapp_button', 13, 0, 1, '2024-11-07 18:56:38', '2024-11-07 18:56:38'),
(14, 'default', 'static_content', 'button_whatsapp', 13, 1, 1, '2024-11-07 18:57:41', '2024-11-07 18:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `theme_customization_translations`
--

CREATE TABLE `theme_customization_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_customization_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `theme_customization_translations`
--

INSERT INTO `theme_customization_translations` (`id`, `theme_customization_id`, `locale`, `options`) VALUES
(1, 1, 'en', '{\"images\":[{\"title\":\"Welcome message\",\"link\":\"\",\"image\":\"storage\\/theme\\/1\\/F5CGm4aJv1AxneS7fUxqVN4eLpZ5soGv5GVaLGL4.webp\"},{\"image\":\"storage\\/theme\\/1\\/PnQnednib3eIZYqp5zilSkHOd51C4TRUFXnlSfUY.webp\",\"link\":\"\",\"title\":\"Grand Opening\"}]}'),
(2, 2, 'en', '{\"html\":\"<div class=\\\"home-offer\\\"><h1>Get UPTO 40% OFF on your 1st order SHOP NOW<\\/h1><\\/div>\",\"css\":\".home-offer h1 {display: block;font-weight: 500;text-align: center;font-size: 22px;font-family: DM Serif Display;background-color: #E8EDFE;padding-top: 20px;padding-bottom: 20px;}@media (max-width:768px){.home-offer h1 {font-size:18px;padding-top: 10px;padding-bottom: 10px;}@media (max-width:525px) {.home-offer h1 {font-size:14px;padding-top: 6px;padding-bottom: 6px;}}\"}'),
(3, 3, 'en', '{\"filters\":{\"sort\":\"asc\",\"limit\":\"10\",\"parent_id\":\"1\"}}'),
(4, 4, 'en', '{\"title\":\"New Products\",\"filters\":{\"new\":1,\"sort\":\"asc\",\"limit\":10}}'),
(5, 5, 'en', '{\"html\":\"<div class=\\\"section-gap bold-collections container\\\">\\r\\n    <div class=\\\"order-flow-wrapper\\\">\\r\\n         <h2 class=\\\"order-flow-title\\\">Alur Pemesanan<\\/h2>\\r\\n\\r\\n    <\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"steps-container\\\">\\r\\n    <!-- Step 1: Cari Produk -->\\r\\n    <div class=\\\"step-item\\\">\\r\\n        <img src=\\\"https:\\/\\/www.iconpacks.net\\/icons\\/2\\/free-search-icon-2911-thumb.png\\\" alt=\\\"Cari Produk\\\" class=\\\"step-img\\\">\\r\\n         <h2>Cari Produk<\\/h2>\\r\\n\\r\\n        <p>Telusuri koleksi produk terbaik kami dan temukan item yang Anda butuhkan.<\\/p>\\r\\n    <\\/div>\\r\\n    <div class=\\\"arrow\\\">\\u2192<\\/div>\\r\\n    <!-- Panah ke langkah berikutnya -->\\r\\n    <!-- Step 2: Tambahkan ke Cart -->\\r\\n    <div class=\\\"step-item\\\">\\r\\n        <img src=\\\"https:\\/\\/cdn-icons-png.flaticon.com\\/512\\/1942\\/1942770.png\\\" alt=\\\"Tambahkan ke Cart\\\" class=\\\"step-img\\\">\\r\\n         <h2>Tambahkan ke Cart<\\/h2>\\r\\n\\r\\n        <p>Tambahkan produk yang Anda pilih ke keranjang belanja dengan mudah.<\\/p>\\r\\n    <\\/div>\\r\\n    <div class=\\\"arrow\\\">\\u2192<\\/div>\\r\\n    <!-- Panah ke langkah berikutnya -->\\r\\n    <!-- Step 3: Checkout -->\\r\\n    <div class=\\\"step-item\\\">\\r\\n        <img src=\\\"https:\\/\\/cdn-icons-png.flaticon.com\\/512\\/6494\\/6494468.png\\\" alt=\\\"Checkout\\\" class=\\\"step-img\\\">\\r\\n         <h2>Checkout<\\/h2>\\r\\n\\r\\n        <p>Lengkapi detail pemesanan Anda dan lakukan pembayaran dengan aman.<\\/p>\\r\\n    <\\/div>\\r\\n    <div class=\\\"arrow\\\">\\u2192<\\/div>\\r\\n    <!-- Panah ke langkah berikutnya -->\\r\\n    <!-- Step 4: Selesai, Barang Sampai -->\\r\\n    <div class=\\\"step-item\\\">\\r\\n        <img src=\\\"https:\\/\\/cdn-icons-png.flaticon.com\\/512\\/3985\\/3985186.png\\\" alt=\\\"Selesai Barang Sampai\\\" class=\\\"step-img\\\">\\r\\n         <h2>Selesai, Barang Sampai<\\/h2>\\r\\n\\r\\n        <p>Produk Anda akan segera dikirim dan sampai di alamat tujuan.<\\/p>\\r\\n    <\\/div>\\r\\n<\\/div>\",\"css\":\"\\/* Container untuk seluruh langkah *\\/\\r\\n .steps-container {\\r\\n    display: flex;\\r\\n    justify-content: center;\\r\\n    align-items: center;\\r\\n    gap: 20px;\\r\\n    flex-wrap: nowrap;\\r\\n    flex-direction: row;\\r\\n}\\r\\n\\/* Style untuk tiap langkah *\\/\\r\\n .step-item {\\r\\n    text-align: center;\\r\\n    max-width: 150px;\\r\\n}\\r\\n\\/* Gambar langkah *\\/\\r\\n .step-img {\\r\\n    width: 80px;\\r\\n    height: auto;\\r\\n    margin-bottom: 10px;\\r\\n}\\r\\n\\/* Garis panah antar langkah *\\/\\r\\n .arrow {\\r\\n    font-size: 24px;\\r\\n    color: #333;\\r\\n}\\r\\n\\/* Responsif untuk perangkat seluler *\\/\\r\\n @media (max-width: 768px) {\\r\\n    .steps-container {\\r\\n        flex-direction: column;\\r\\n        \\/* Ubah jadi kolom di perangkat seluler *\\/\\r\\n        align-items: center;\\r\\n    }\\r\\n    .arrow {\\r\\n        display: none;\\r\\n        \\/* Sembunyikan panah di perangkat seluler *\\/\\r\\n    }\\r\\n    .step-img {\\r\\n        width: 60px;\\r\\n        \\/* Ukuran gambar lebih kecil di seluler *\\/\\r\\n    }\\r\\n}\\r\\n\\r\\n\\/* Gaya untuk container utama *\\/\\r\\n .order-flow-wrapper {\\r\\n    background-color: #f9f9f9;\\r\\n    \\/* Latar belakang lembut *\\/\\r\\n    padding: 20px 40px;\\r\\n    border-radius: 10px;\\r\\n    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\\r\\n    \\/* Efek bayangan halus *\\/\\r\\n    text-align: center;\\r\\n    margin: 20px auto;\\r\\n    max-width: 600px;\\r\\n}\\r\\n\\/* Gaya untuk judul *\\/\\r\\n .order-flow-title {\\r\\n    font-size: 28px;\\r\\n    color: #333;\\r\\n    font-weight: bold;\\r\\n    text-transform: uppercase;\\r\\n    letter-spacing: 1.5px;\\r\\n    margin: 0;\\r\\n    position: relative;\\r\\n}\\r\\n.order-flow-title::after {\\r\\n    content:\'\';\\r\\n    display: block;\\r\\n    width: 80px;\\r\\n    height: 3px;\\r\\n    background-color: #007bff;\\r\\n    \\/* Warna aksen, misalnya biru *\\/\\r\\n    margin: 10px auto 0;\\r\\n    border-radius: 2px;\\r\\n}\"}'),
(6, 6, 'en', '{\"html\":\"<div class=\\\"section-gap bold-collections container\\\">\\r\\n    <div class=\\\"inline-col-wrapper direction-rtl\\\">\\r\\n        <div class=\\\"inline-col-image-wrapper\\\">\\r\\n            <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/6\\/qQskFVsm3EmcQ8gvF1lfHsodcO1PfddzC0nIZ4W9.png\\\" class=\\\"lazy\\\" width=\\\"632\\\" height=\\\"510\\\" alt=\\\"Get Ready for our new Bold Collections!\\\">\\r\\n        <\\/div>\\r\\n        <div class=\\\"inline-col-content-wrapper direction-ltr\\\">\\r\\n             <h2>Bangun Kepercayaan dengan Kami!<\\/h2> \\r\\n            <p class=\\\"inline-col-description\\\">Kami hadir untuk memberikan pelayanan terbaik bagi Anda! Kami berkomitmen untuk selalu jujur dan transparan dalam setiap transaksi. Percayakan kebutuhan Anda kepada kami, karena kepuasan dan kepercayaan Anda adalah prioritas utama kami. Kami bukan hanya sekadar mitra, kami adalah teman yang siap mendukung Anda dengan integritas tinggi!<\\/p>\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n<\\/div>\",\"css\":\".section-gap{margin-top:80px}.direction-ltr{direction:ltr}.direction-rtl{direction:rtl}.inline-col-wrapper{display:grid;grid-template-columns:auto 1fr;grid-gap:60px;align-items:center}.inline-col-wrapper .inline-col-image-wrapper{overflow:hidden}.inline-col-wrapper .inline-col-image-wrapper img{max-width:100%;height:auto;border-radius:16px;text-indent:-9999px}.inline-col-wrapper .inline-col-content-wrapper{display:flex;flex-wrap:wrap;gap:20px;max-width:464px}.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{max-width:442px;font-size:60px;font-weight:400;color:#060c3b;line-height:70px;font-family:DM Serif Display;margin:0}.inline-col-wrapper .inline-col-content-wrapper .inline-col-description{margin:0;font-size:18px;color:#6e6e6e;font-family:Poppins}@media (max-width:991px){.inline-col-wrapper{grid-template-columns:1fr;grid-gap:16px}.inline-col-wrapper .inline-col-content-wrapper{gap:10px}} @media (max-width:768px){.inline-col-wrapper .inline-col-image-wrapper img {width:100%;} .inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:28px !important;line-height:normal !important}} @media (max-width:525px){.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:20px !important;} .inline-col-description{font-size:16px} .inline-col-wrapper{grid-gap:10px}}\"}'),
(7, 7, 'en', '{\"title\":\"Featured Products\",\"filters\":{\"featured\":\"1\",\"price\":\"5000000\"}}'),
(8, 8, 'en', '{\"html\":\"<div class=\\\"section-game\\\">\\r\\n    <div class=\\\"section-title\\\">\\r\\n         <h2>Apa yang ingin anda cari?<\\/h2> \\r\\n    <\\/div>\\r\\n    <div class=\\\"section-gap container\\\">\\r\\n        <div class=\\\"collection-card-wrapper\\\">\\r\\n            <div class=\\\"single-collection-card\\\"> <a href=\\\"\\/fashion\\\">\\r\\n                <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/8\\/IW0CXCyXEvwoZJxbmMGYnWD9oRV3pX1XYaIGgFtI.webp\\\" class=\\\"lazy\\\" width=\\\"615\\\" height=\\\"600\\\" alt=\\\"Produk Kami\\\">\\r\\n                <h3 class=\\\"overlay-text\\\">Produk Kami<\\/h3> \\r\\n              <\\/a>\\r\\n\\r\\n            <\\/div>\\r\\n            <div class=\\\"single-collection-card\\\"> <a href=\\\"https:\\/\\/wa.me\\/6285779913257?text=Halo! Saya ingin melakukan request barang yang tidak ada di katalog.\\\" target=\\\"_blank\\\">\\r\\n                    <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/8\\/request.jpeg\\\" class=\\\"lazy\\\" width=\\\"615\\\" height=\\\"600\\\" alt=\\\"Request Barang\\\">\\r\\n                    <h3 class=\\\"overlay-text\\\">Request Barang<\\/h3> \\r\\n                <\\/a>\\r\\n\\r\\n            <\\/div>\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n<\\/div>\",\"css\":\".section-game {overflow: hidden;}.section-title,.section-title h2{font-weight:400;font-family:DM Serif Display}.section-title{margin-top:80px;padding-left:15px;padding-right:15px;text-align:center;line-height:90px}.section-title h2{font-size:70px;color:#060c3b;max-width:595px;margin:auto}.collection-card-wrapper{display:flex;flex-wrap:wrap;justify-content:center;gap:30px}.collection-card-wrapper .single-collection-card{position:relative}.collection-card-wrapper .single-collection-card img{border-radius:16px;background-color:#f5f5f5;max-width:100%;height:auto;text-indent:-9999px}.collection-card-wrapper .single-collection-card .overlay-text{font-size:50px;font-weight:400;max-width:234px;font-style:italic;color:#060c3b;font-family:DM Serif Display;position:absolute;bottom:30px;left:30px;margin:0}@media (max-width:1024px){.section-title{padding:0 30px}}@media (max-width:991px){.collection-card-wrapper{flex-wrap:wrap}}@media (max-width:768px) {.collection-card-wrapper .single-collection-card .overlay-text{font-size:32px; bottom:20px}.section-title{margin-top:32px}.section-title h2{font-size:28px;line-height:normal}} @media (max-width:525px){.collection-card-wrapper .single-collection-card .overlay-text{font-size:18px; bottom:10px} .section-title{margin-top:28px}.section-title h2{font-size:20px;} .collection-card-wrapper{gap:10px; 15px; row-gap:15px; column-gap:0px;justify-content: space-between;margin-top: 15px;} .collection-card-wrapper .single-collection-card {width:48%;}}\"}'),
(9, 9, 'en', '{\"title\":\"All Products\"}'),
(10, 10, 'en', '{\"html\":\"<div class=\\\"top-collection-container\\\">\\r\\n    <div class=\\\"top-collection-header\\\">\\r\\n        <h2>The game with our new additions!<\\/h2>\\r\\n    <\\/div>\\r\\n    <div class=\\\"top-collection-grid container\\\">\\r\\n        <div class=\\\"top-collection-card\\\">\\r\\n            <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/02kpYraWcwG2S6I5sO8nOKuNjFWZVu0PXTyKRC0u.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\">\\r\\n            <h3>Our Collections<\\/h3>\\r\\n        <\\/div>\\r\\n        <div class=\\\"top-collection-card\\\">\\r\\n            <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/Y6A28ginZOvkQJumR8OSWc1AXMYvC6kqEy1NZqNx.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\">\\r\\n            <h3>Our Collections<\\/h3>\\r\\n        <\\/div>\\r\\n        <div class=\\\"top-collection-card\\\">\\r\\n            <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/pc5D8JvqUYRe0hqPhNgNgFIFpOr8AzW73WNGN0Zn.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\">\\r\\n            <h3>Our Collections<\\/h3>\\r\\n        <\\/div>\\r\\n        <div class=\\\"top-collection-card\\\">\\r\\n            <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/aawH7bYTexNjDVHrbNhlVtleLcML6umhcsU9QhVZ.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\">\\r\\n            <h3>Our Collections<\\/h3>\\r\\n        <\\/div>\\r\\n        <div class=\\\"top-collection-card\\\">\\r\\n            <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/NebguAeCpuzSvH9fmxyS4OZSK6epukaxDQB4Lntx.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\">\\r\\n            <h3>Our Collections<\\/h3>\\r\\n        <\\/div>\\r\\n        <div class=\\\"top-collection-card\\\">\\r\\n            <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/yRPoC3mkNUOOk1tRSBMQW0xUD3AAl4BQTgfoy33L.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\">\\r\\n            <h3>Our Collections<\\/h3>\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n<\\/div>\",\"css\":\".top-collection-container {\\r\\n    overflow: hidden;\\r\\n}\\r\\n.top-collection-header {\\r\\n    padding-left: 15px;\\r\\n    padding-right: 15px;\\r\\n    text-align: center;\\r\\n    font-size: 70px;\\r\\n    line-height: 90px;\\r\\n    color: #060C3B;\\r\\n    margin-top: 80px;\\r\\n}\\r\\n.top-collection-header h2 {\\r\\n    max-width: 595px;\\r\\n    margin-left: auto;\\r\\n    margin-right: auto;\\r\\n    font-family: DM Serif Display;\\r\\n}\\r\\n.top-collection-grid {\\r\\n    display: flex;\\r\\n    flex-wrap: wrap;\\r\\n    gap: 32px;\\r\\n    justify-content: center;\\r\\n    margin-top: 60px;\\r\\n    width: 100%;\\r\\n    margin-right: auto;\\r\\n    margin-left: auto;\\r\\n    padding-right: 90px;\\r\\n    padding-left: 90px;\\r\\n}\\r\\n.top-collection-card {\\r\\n    position: relative;\\r\\n    background: #f9fafb;\\r\\n    overflow:hidden;\\r\\n    border-radius:20px;\\r\\n}\\r\\n.top-collection-card img {\\r\\n    border-radius: 16px;\\r\\n    max-width: 100%;\\r\\n    text-indent:-9999px;\\r\\n    transition: transform 300ms ease;\\r\\n    transform: scale(1);\\r\\n}\\r\\n.top-collection-card:hover img {\\r\\n    transform: scale(1.05);\\r\\n    transition: all 300ms ease;\\r\\n}\\r\\n.top-collection-card h3 {\\r\\n    color: #060C3B;\\r\\n    font-size: 30px;\\r\\n    font-family: DM Serif Display;\\r\\n    transform: translateX(-50%);\\r\\n    width: max-content;\\r\\n    left: 50%;\\r\\n    bottom: 30px;\\r\\n    position: absolute;\\r\\n    margin: 0;\\r\\n    font-weight: inherit;\\r\\n}\\r\\n@media not all and (min-width: 525px) {\\r\\n    .top-collection-header {\\r\\n        margin-top: 28px;\\r\\n        font-size: 20px;\\r\\n        line-height: 1.5;\\r\\n    }\\r\\n    .top-collection-grid {\\r\\n        gap: 10px\\r\\n    }\\r\\n}\\r\\n@media not all and (min-width: 768px) {\\r\\n    .top-collection-header {\\r\\n        margin-top: 30px;\\r\\n        font-size: 28px;\\r\\n        line-height: 3;\\r\\n    }\\r\\n    .top-collection-header h2 {\\r\\n        line-height:2;\\r\\n        margin-bottom:20px;\\r\\n    }\\r\\n    .top-collection-grid {\\r\\n        gap: 14px\\r\\n    }\\r\\n}\\r\\n@media not all and (min-width: 1024px) {\\r\\n    .top-collection-grid {\\r\\n        padding-left: 30px;\\r\\n        padding-right: 30px;\\r\\n    }\\r\\n}\\r\\n@media (max-width: 768px) {\\r\\n    .top-collection-grid {\\r\\n        row-gap:15px;\\r\\n        column-gap:0px;\\r\\n        justify-content: space-between;\\r\\n        margin-top: 0px;\\r\\n    }\\r\\n    .top-collection-card {\\r\\n        width:48%\\r\\n    }\\r\\n    .top-collection-card img {\\r\\n        width:100%;\\r\\n    }\\r\\n    .top-collection-card h3 {\\r\\n        font-size:24px;\\r\\n        bottom: 16px;\\r\\n    }\\r\\n}\\r\\n@media (max-width:520px) {\\r\\n    .top-collection-grid {\\r\\n        padding-left: 15px;\\r\\n        padding-right: 15px;\\r\\n    }\\r\\n    .top-collection-card h3 {\\r\\n        font-size:18px;\\r\\n        bottom: 10px;\\r\\n    }\\r\\n}\"}'),
(11, 11, 'en', '{\"column_1\":[{\"url\":\"http:\\/\\/localhost\\/page\\/about-us\",\"title\":\"About Us\",\"sort_order\":1},{\"url\":\"http:\\/\\/localhost\\/contact-us\",\"title\":\"Contact Us\",\"sort_order\":2},{\"url\":\"http:\\/\\/localhost\\/page\\/customer-service\",\"title\":\"Customer Service\",\"sort_order\":3},{\"url\":\"http:\\/\\/localhost\\/page\\/whats-new\",\"title\":\"What\'s New\",\"sort_order\":4},{\"url\":\"http:\\/\\/localhost\\/page\\/terms-of-use\",\"title\":\"Terms of Use\",\"sort_order\":5},{\"url\":\"http:\\/\\/localhost\\/page\\/terms-conditions\",\"title\":\"Terms & Conditions\",\"sort_order\":6}],\"column_2\":[{\"url\":\"http:\\/\\/localhost\\/page\\/privacy-policy\",\"title\":\"Privacy Policy\",\"sort_order\":1},{\"url\":\"http:\\/\\/localhost\\/page\\/payment-policy\",\"title\":\"Payment Policy\",\"sort_order\":2},{\"url\":\"http:\\/\\/localhost\\/page\\/shipping-policy\",\"title\":\"Shipping Policy\",\"sort_order\":3},{\"url\":\"http:\\/\\/localhost\\/page\\/refund-policy\",\"title\":\"Refund Policy\",\"sort_order\":4},{\"url\":\"http:\\/\\/localhost\\/page\\/return-policy\",\"title\":\"Return Policy\",\"sort_order\":5}]}'),
(12, 12, 'en', '{\"services\":[{\"service_icon\":\"icon-truck\",\"description\":\"Nikmati Gratis ongkir Untuk Pengiriman Kemanapun\",\"title\":\"Gratis Ongkir\"},{\"service_icon\":\"icon-product\",\"description\":\"Selalu untuk membuat bukti berupa rekaman ketika barang sampai ke tempat anda\",\"title\":\"Garansi Barang\"},{\"service_icon\":\"icon-support\",\"description\":\"Kami berusaha untuk online 24\\/7 dalam melayani anda\",\"title\":\"24\\/7 Support\"}]}'),
(13, 14, 'en', '{\"html\":\"<!-- HTML untuk tombol WhatsApp -->\\r\\n<a href=\\\"https:\\/\\/wa.me\\/6285779913257\\\" class=\\\"whatsapp-button\\\" target=\\\"_blank\\\">\\r\\n    <img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/6\\/6b\\/WhatsApp.svg\\\" alt=\\\"WhatsApp\\\" class=\\\"whatsapp-icon\\\">\\r\\n<\\/a>\",\"css\":\"\\/* CSS untuk tombol WhatsApp *\\/\\r\\n.whatsapp-button {\\r\\n    position: fixed;\\r\\n    bottom: 30px; \\/* Margin dari bawah *\\/\\r\\n    right: 30px;  \\/* Margin dari kanan *\\/\\r\\n    background-color: #25D366;\\r\\n    border-radius: 50%;\\r\\n    width: 50px;\\r\\n    height: 50px;\\r\\n    display: flex;\\r\\n    align-items: center;\\r\\n    justify-content: center;\\r\\n    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);\\r\\n    z-index: 1000;\\r\\n    transition: transform 0.3s;\\r\\n}\\r\\n\\r\\n.whatsapp-button:hover {\\r\\n    transform: scale(1.1); \\/* Zoom in saat di-hover *\\/\\r\\n}\\r\\n\\r\\n.whatsapp-icon {\\r\\n    width: 30px;\\r\\n    height: 30px;\\r\\n    color: white;\\r\\n}\\r\\n\\r\\n\\/* Responsif untuk perangkat seluler *\\/\\r\\n@media (max-width: 768px) {\\r\\n    .whatsapp-button {\\r\\n        bottom: 20px; \\/* Margin lebih kecil di perangkat seluler *\\/\\r\\n        right: 20px;\\r\\n        width: 40px;\\r\\n        height: 40px;\\r\\n    }\\r\\n\\r\\n    .whatsapp-icon {\\r\\n        width: 25px;\\r\\n        height: 25px;\\r\\n    }\\r\\n}\"}');

-- --------------------------------------------------------

--
-- Table structure for table `url_rewrites`
--

CREATE TABLE `url_rewrites` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `request_path` varchar(191) NOT NULL,
  `target_path` varchar(191) NOT NULL,
  `redirect_type` varchar(191) DEFAULT NULL,
  `locale` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(191) DEFAULT NULL,
  `request` mediumtext DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `referer` mediumtext DEFAULT NULL,
  `languages` text DEFAULT NULL,
  `useragent` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `platform` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `visitable_type` varchar(191) DEFAULT NULL,
  `visitable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(191) DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'GET', '[]', 'http://localhost:8000', NULL, '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-11-07 09:56:21', '2024-11-07 09:56:21'),
(2, 'GET', '[]', 'http://localhost:8000/arctic-cozy-knit-unisex-beanie', 'http://localhost:8000/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6InFoanhuVXVtZUN5ajJvWW12bGpmVGc9PSIsInZhbHVlIjoibjJqdStvTU9pbDgrdy81RUc1eHFPQzZSUjNJUGFVN0NHRndiVFFDZGwwTEJtNjZnaU80bnp2RnRKYkM4bGNOcktkbzliTVdXWmRLWVNkTmYrcGdhOEpXUE45YWlPR000QTJSd1NoRTI1amxHdzRkcFRPdjRCSTB6bVRFd1hPbVEiLCJtYWMiOiI4MTkyOTQyMjI3NTRhMzUxZGRhY2NiNmMwMzkyM2U3NzUxNTMxYTAzMGYxNTlkYmI1ZWFjOTYwMWNmZTI0MTUyIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6InhjbEJsSWwvbHE4KzJ6eTlhNWxjSmc9PSIsInZhbHVlIjoiYnhNRitTdEdKankvLzRlKzhQUE9sTnZRV2YyUElsdWJYaU1USm9UQzZNZ1F6dkJWVDhPWUMxSFJ1dUU4cXJhZU1PdE9idnNyYUN2TCs3blB4OWVhM3JZeFl3Wkh1eWh2aExabWZMeGRIR0dhOHR4M2RDZ1VaOVZLZ284N0Z2cXIiLCJtYWMiOiIwM2M1YzQwZGVlYzI1MjBhNTllODQ0MjgzOTcxY2E1YjQ0NTIxNmYxYjY1YjI0OGM4MTVhYzE4YzA5MjdhYWJkIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, 1, '2024-11-07 09:56:30', '2024-11-07 09:56:30'),
(3, 'GET', '[]', 'http://localhost:8000', 'http://localhost:8000/customer/login', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"referer\":[\"http:\\/\\/localhost:8000\\/customer\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6ImV4bkFzUDl0Vm53YWp1QVBaQ0lmZlE9PSIsInZhbHVlIjoieGR2TE5ZQTVJaUZMeHk4aUtUeURiTXltQ29SMW9wclozVkhwSUN1UnNIbkdUQVBrTDhMU0pKdmo4eVpPSnBFT0t4cUJ2WGNWZ1lBdkZWR3RmR1pEZnQ1RUowbk1GLzk0TEVodFNIRnNZM1VHZTVMV0gzSmdNc0c5SU5YTlg4NXgiLCJtYWMiOiJjN2E5NTdlMTVmNWY1MTE5MzdkZGIzM2VhMjUzMDEzNDk0Mjc1NDdjZTczZGUwNDI2ZDA5MGIyZGIwMWYxNWFhIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IktkWW95d2xXNmlkZjNxdVVxeFJtL3c9PSIsInZhbHVlIjoiS1QxQWwwUldOZ2lnaWxLcUlrc0diRXRNdkprM1laR1J6Q0tiNXBJN05CRWxLbEplQ3IvSHIzbDJEQjVZZTE0M1FyT2xMTXdPSk9nRXlpeFM4d0Ywd1dqZ0IxRVptT3RqVGg5dmxNNDlTdEd4Nkg1K1pmbWVFWVg1R3ltWWpDOTIiLCJtYWMiOiIxMDg0MDYyYzc4N2MwODIwMjM3ZDAwZWI5YTUyMzMwODU4NjA5NmQxZGI2ZDU5MTNjMGQ5YjY2MjJlMjJlNDI4IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 09:57:24', '2024-11-07 09:57:24'),
(4, 'GET', '[]', 'http://localhost:8000/winter-wear', 'http://localhost:8000/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6ImJPTlNlRVl6TUUwOVU4SUNXT3dJMVE9PSIsInZhbHVlIjoic0llbFMxWEd2VjZGL2hqelp6eCtyN21Jc3J6Qm5kRkY3ZjViR3UzSWpVczhLVVdCUGg1amZjZmRCNCtWbjYzaFZWNXdBOFJEVXdMUVh1YUhIMzhuR2t2bkkrNEFaUEdxRnFUZm1LM0Q4Sm11TUJkaUwzcWZlY1FpYTl2RisrWkoiLCJtYWMiOiIyMWFlZjE2NDc0NGZjOWNiN2IxZDNmNmM3ZDg5N2M5ZjBkNGFlZjhjOGVjMTdhYjgxMTYwYTNkMmE0MDJhOTdkIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6Ik55OXlBdEpLaFd5M05jaUZzdVhvTkE9PSIsInZhbHVlIjoiSzAzeTFLYjYxQWpFeVAyKzRLQ29ONUFOTUMyM1Z6YjlQc25HNHQvU1U3RlI2N0ZzaEs0cFo1V2plUmJhTWZRK0Q2M2kwQnFUL09OeWJMaGhsNk5qMnhRY2NzZnVmYjZWUHFsYWtCTGVSc0MvbFJFTUNPODdBK096N2t2c2huVkQiLCJtYWMiOiJhYjhmYWFlMjQ5YTliYzZiNTgyYzNiOTAzNDkwOTdiN2U2ODg2ODI1ODFhNWVkODI0N2ExYWQzNzY0MmQzMGNiIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 3, NULL, NULL, 1, '2024-11-07 10:15:36', '2024-11-07 10:15:36'),
(5, 'GET', '[]', 'http://localhost:8000/men', 'http://localhost:8000/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IjhLR1ZZZVVMd24rY2V1TzRRMTQ4Umc9PSIsInZhbHVlIjoiY0paUDhxVU1sMXVmd3I0NlU2ZEVoV3gwekZNTWYwSGVQNDlvNHVscGRDcXBCMUJnTWx2MGZ1QTJOdy9MWEM5TjN3WWIzcnlvNGVSTm50QkVKd3F0dlBQeGN5dVZSem0wc1ZvditBTTh5ajNhMFBPNEd3aHoybHQ4TWdJUjg4OUsiLCJtYWMiOiJiZTBkM2M1NzFhYTcyNzkwMzY0MjUxOTE4ZmY4NDY2ZWI2ZTFmNTUyNjY3Yzc4NmNiZTg0ZDgyZjIxMzQ4MDVlIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IldZMndLR0hJWXBURGZVSlcvckpoaHc9PSIsInZhbHVlIjoiNU1YZk95WGoyV01IM3NrK0twVnVpVythSWwwRURhOXlTbEZQQ3dBMXQ0NkxQbkxxV3JhSEIwOE0zczI3T0VjdjZ2cG1oNTdxVjltaEdCNXErdGZvNkFkckNza3FtNW8rcm1GWFdOWmVhRmFkcnFHN0hhQTJ3YVNyT1ZBZFpsUCsiLCJtYWMiOiI3NGFmNmQ4ZTUzYzBmMWUyODZiNjZlYzVmNmM4NmEzZjdjYjRlY2EwMWUzYTIwZDFmYWZlOGFkNGZhZDU4N2FkIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, NULL, NULL, 1, '2024-11-07 10:25:40', '2024-11-07 10:25:40'),
(6, 'GET', '[]', 'http://localhost:8000/pouch-organizer-case-penyimpanan-armaro-bags-veranstalter-series-ver535-misc', 'http://localhost:8000/men', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/men\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6ImVOdHJaazUwU1lIM2ZJR0t4eW9RZlE9PSIsInZhbHVlIjoidFYxdU1YQjFBRE10Rm92RTVuYVVwS1RSRGRJa2pQODl4QWNsY1J5Q0JnYTUvWUFEUmFCQ3YyV3JtRVN0N255dFZCN0IrTEwxV0ZHbFJ1NWk0WmpPWGUwbWlyQmlrVXVxUk81aHF1eERJbFVoR2E2TjJpbDZFbzJxb1dCcFFaRjEiLCJtYWMiOiJlZjU4MWRjZjZjMDEzYWM1NmMyNThkZTU1MWY3OTU0ODJhN2YyNDc1YjZiNjllYjUyOTY1NWZhZWRjNzg2N2ZmIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImVUYlBTRitJWXMvTGRiSDBZL2ZSQVE9PSIsInZhbHVlIjoiRHFjVmV6bUMzYm8wNHU5c2ovcmJrTmlybmRZdkxVMzEvcHl1YzdvSFQvT2l2NVh6NFlnbHo4emdvT2taZWx1YVdiQ0F5WC9SOVNKUmh0Q0p1VzRyNDlGZS84R2RsRDRSM1ByR0YzczU3cUZQang0TTlPNmFNaWlPbHR2L3NwZGsiLCJtYWMiOiI2MGNmMTVkYmQ0MTg3ZTdlZjVhNTE4ODg5MzhjYWU3ODY4Yzk1ODYwZjYzYTIwYmQ3ZGQ2OGI1NTAwOTUwNGFmIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 12, NULL, NULL, 1, '2024-11-07 10:45:47', '2024-11-07 10:45:47'),
(7, 'GET', '[]', 'http://localhost:8000/men', 'http://localhost:8000/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6ImllbG5adTd3ZkVtWkc2V1hqQS9TOVE9PSIsInZhbHVlIjoiS2lBZXlaVlRKSXRSeHFjYnZ4VEVTcjdxRjA4b2JSVDdqc3o0a3AvcS9Na2k0N2dHYTcvZ3hScURrUHpRaVI1ZDl0cTBXcTF5NnM5eWZPU0hxK3lCWGVrTUNKaWR3NFlJVGJrMFZoL3lFS29KaDE3T004Y1RPejYwL1djWTdiN0YiLCJtYWMiOiIwZGVjMmNmMjhiOGE5YjRhZjA3YmUwMTcyMmQyODU0MjhiMTk3NjA4ZTkyNGY0ZGQ1NjE4N2I0ZTkyZTA1YjVjIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6Ilh3MTh2cXBBNjdzNGk5MnBkejVrY3c9PSIsInZhbHVlIjoibTJ5VFU3SXRGNDBUcmFFZGltUEFPZTZjUU9meFNKNDl2eUxNTEUrcDl1Ym5JOVdGak4wZGhVZFBGSkY5eUlOdUxBZFh2U0dJM2c1QU50cytuT1lmK1BocW00cUZsWW1mYXJJN01WWEJHVXl1aWZuZEJ6d2V1THQveVBEZmU1anYiLCJtYWMiOiJmYWQxYjMwZjQxNWY5YWZhZGQxNWJiZTRhNTVlYjg3OWQyMmQzMjk1ODU0M2VlNDI3Y2ExNTI3NDJlMDc3NDdiIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 10:48:48', '2024-11-07 10:48:48'),
(8, 'GET', '[]', 'http://localhost:8000/winter-wear', 'http://localhost:8000/men', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/men\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6ImtZNUloUEVidmxJWGl3UVMzRi9hRmc9PSIsInZhbHVlIjoiclh3KzNMbldGdzhHcjZRYnBoUGEwaHYvYll5aTNYbWM1ZG9XU2JzcWVJQUF6QThPM1NmZ0l3YmxMNzkwMFJhT2xTeGM4RDZmd1lXMEIrT3lLOTlnZHJxNG04dk4zTFgwWEd2SlRTcDFIdlU5L21uYzlCV1NVRVVNT3FNRkNPbDAiLCJtYWMiOiJlMDAwOThmYzkwYWIyYzI0OTM3MDk2ZjkwZTRkMjI5MzMzN2IxZmY4OTA0ZmY1MmM4MTY3OWY1MDBhMzZmMDEyIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IkVtTG9PR25DY29YWVU4dERTdlVmUkE9PSIsInZhbHVlIjoiZkN1WThUTXlGWVZNbEdGVWxJckl4NUZOeitLK1FCYm5WK3Yxc3IvUUhpWXgwZHBoWnBzSldmd1BQWnloV3M1YzBOQUJ1ZERySEUwZy9RTjM5Rko5Q1ZZa0hDaC84R0lCWW9KZUhxT0RqM212d0l3azZEWDVYSFQ3cnZTRi9zeFciLCJtYWMiOiIzZWI4NGYyMjllYzE3ZDE4Nzc3ZjdjYzEwMWI0NzdjY2ZjYjgzODAwMDQ4OWZhZGNiOGM5NzNhMmE5NDRkMGFkIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 3, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 10:49:55', '2024-11-07 10:49:55'),
(9, 'GET', '[]', 'http://192.168.144.97:8000', NULL, '[\"id\",\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"id,en-US;q=0.9,en;q=0.8\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.156', NULL, NULL, NULL, NULL, 1, '2024-11-07 11:47:48', '2024-11-07 11:47:48'),
(10, 'GET', '[]', 'http://192.168.144.97:8000', NULL, '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', NULL, NULL, NULL, NULL, 1, '2024-11-07 11:49:03', '2024-11-07 11:49:03'),
(11, 'GET', '[]', 'http://192.168.144.97:8000/elektronik', 'http://192.168.144.97:8000/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6InIwQitjQ1ZBSjd0VmlhaWVmZ0Y3aUE9PSIsInZhbHVlIjoidEUzaVNWMDFxeFFQSDlHdTlJTTdhRktpeDdDYjJkZ1pMTFdaUGpUa0dGZW5hNmRlelJ4UW93TnhaV2wvSXRuZjVOelJ5U1hMQlBrMHplWTloT3RES1gveFU2a05QYnhiOStraXl0WGxmeHp2bGp6VkYxUUJYUC9kZ0VzK2xyc1giLCJtYWMiOiI5YWY3YmJhNjc1Yzk4YjBhNmUyMWIzOThmZDYxZWRlZDAzMDFmNGJkMjUyZjg4OTE2NWRhMDg0MDQyNDdhOTk4IiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IlZ3MzF3RjhXajMrS2NCbmRNN0hDc2c9PSIsInZhbHVlIjoieXZWZFBnSUtCZnpyNGtyelRsY0JwUWlKa2JBbzZteTZ4SW40STN6MkltMTdaNVZGdjB5cUtvU2wzNUVYYXJqYldTdGFOU1k1ZkZXSHd1d0pHaFVEUk5GeWg2azlWNzFNb3h0ZGsySFRBOCtrbkZWNUgxMWZGY2ZpM1FYYUhQVkwiLCJtYWMiOiIyMGEwOWE3NGIxMTVlMTNkYjJkNDM0NDUzZjUwMTYwZmU1ZGM5MmUxMzQ5NTFkMGMxNDA3MTJmMmNkNmU1YTY4IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', 'Webkul\\Category\\Models\\Category', 5, NULL, NULL, 1, '2024-11-07 11:56:00', '2024-11-07 11:56:00'),
(12, 'GET', '[]', 'http://192.168.144.97:8000/rumah-dapur', 'http://192.168.144.97:8000/elektronik', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/elektronik\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ind0UWdVOGh2TFJXWXJFU3FwczFoM2c9PSIsInZhbHVlIjoidytqVlp3M3pzQjdpalBOQ0IweCtzalZvSUk0Y3ZWVXdSb0IrMWhiUEYvNVREUDlBMGtxaFdUWDZQODRaWVUrYTJwT3JBTkUrcHIwc3dGZ05iWXlyQk05dEpiYjRiTUgvM09ibmpoVk5wd1ROQm1FOUNjaFBhb0ZTK3FuOFRSWk8iLCJtYWMiOiIxMjZiZjU1NWY5NmUwMWQ5NTc3OTk5MjBlMjBmZWMxYWQxYzkzYzI0NzhhMWI0YmU3MGNhZWRiNzBjZGM5YTM4IiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6Ikp2RWVTK0c5ZVBTdGw3aWQrRnJKOGc9PSIsInZhbHVlIjoiZWRoRlMzdU0ybkZZbTBNV090dGZQRTJxcnNxaHhkWlNLSnc3eU4xRVdRbU4xQlFBLzh0QTRJamI3U2NWbzVaVzJ3UjFwcld2ZGNzcjFTdk9kQjdvMUZocEpMb2hMVGc4R2Q1dGdMeUFaOTVLeEtvYjM3VjNxcVUrZUtySERLMXIiLCJtYWMiOiJhZjI3ZGRmYWY3Mjc4ZThlZWJkMjAxYmM4ZTFkMTg5ZTkwZmZhMmFiN2UwYzBmN2U3MDQxYTY2OGE2OGY3NmU2IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', 'Webkul\\Category\\Models\\Category', 8, NULL, NULL, 1, '2024-11-07 12:11:27', '2024-11-07 12:11:27'),
(13, 'GET', '[]', 'http://192.168.144.97:8000/rumah-dapur', 'http://192.168.144.97:8000/', '[\"id\",\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"id,en-US;q=0.9,en;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkRtNEduZVUzbDd6a2xxQit0dEZSc1E9PSIsInZhbHVlIjoiZVJLMjhFSnN5b3V1c3lSWWxpVFB1czdUUEZjU1FTTnJ5Qit5b2xwMXJzMUoxQmFUNmd1TFVJTXlkVTcyOGljODljNDl1NWd3dy9OWEFsUXg3VGI2cXVSUDk1cm9MSnJ4YVBzWDNNY3hNblltUFZ6M2dNMVdnUkZnR0lwQTh4YmsiLCJtYWMiOiIxYTkyYTQ5ZWQwN2FjYzA1MzEyNTcyZmMzMjAwZjFhN2JmNWRhNjY2ZTFjNDdjMGU0NzM4ZjYxM2E3MmVmZTI3IiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6InJENkMyZy9OSnNBZ2oxVDc0L3ZKenc9PSIsInZhbHVlIjoiQ0k2alp3Sytic3ExdG9RSmlhWkhjY25US0RtRU9EVk0yZEt5Q0dBUnZiTDk4ZzhuWGhhSEwxVTRaZkdsUGJ0WDRYV1hOMDRCaFY0QjJiTitVczQ3VFlvTGNyYzlzUmJaejZmK3c1dVppSW5sQldQb05neUdISUVmWG1CYTVPdUIiLCJtYWMiOiJlMzQ3ZWNmODllNjk1MWY2YzNhMDdjYzFmMTQ3MjRkNWI1N2Q3NDE5MWY3MTg2YjY3MmNhMmU0MDkwNjg4NDA1IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.156', 'Webkul\\Category\\Models\\Category', 8, NULL, NULL, 1, '2024-11-07 12:12:08', '2024-11-07 12:12:08'),
(14, 'GET', '[]', 'http://192.168.144.97:8000/hobbies', 'http://192.168.144.97:8000/', '[\"id\",\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"id,en-US;q=0.9,en;q=0.8\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImVnTUVTbkp1S1FvdWl6M2lrUXZsUXc9PSIsInZhbHVlIjoiUXgxbmx1d3Q1YllNaTJFbXIxaGtFQkRsREFLVjFNWVF4T0JJQ0gxVHVqaDl4eVJud1h1OUJWVzB5WmQ3TTRmeWtCSG4vTlpaNmd2bDEyN2xvQmtzY3ZlQnorZldNOU9udjIycjNNOG9QSGVNZ21DNjc2anpVQm82T1VJZ0lTaTciLCJtYWMiOiJkOGM3Y2NjYTUzZjllZDY0NTljMTRkZjNkZmRlNWFiZjE2Zjc4NDliY2JlOTc3YzQ4MTZlNTc2MTlkYjgwMzhiIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImVHMmhqMGlMTkNFenFUUTFvanNCbFE9PSIsInZhbHVlIjoiN3EyUFFUVjQwajEwRzFMRUYxRXpHSXFpY1FMeVUwQ1FsSktKWlc4M3RCcXA3ZFBSbTRuWXN4TTRibHorUkhETmFhVUgzZkJEME1ScjFvSmh4Z3pIUkRLRVJETWo1NXBBcHc5K09RQjZvYWZWS2dQUDArNTZPRlQzR040ZUJ1b3AiLCJtYWMiOiJhY2ZhNzkxMDBmYWY3YTI2MWZkN2EyNTZjMDMzZjdmODhkODRmODNjYzNkNjViOTY0YmM5MmFkYjRlYzJhMmZlIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.156', 'Webkul\\Category\\Models\\Category', 9, NULL, NULL, 1, '2024-11-07 12:19:31', '2024-11-07 12:19:31'),
(15, 'GET', '[]', 'http://192.168.144.97:8000/storage/theme/8/placeholder.webp', 'http://192.168.144.97:8000/admin/settings/themes/edit/8', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/admin\\/settings\\/themes\\/edit\\/8\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ik4wZEFpajM0UGxQRWlNdVBUUUZBcWc9PSIsInZhbHVlIjoibTBkQUpRRkhYb2M0enB1K2R6VXZMOVZpQ2ZLZy8vd3M4N3dSRHdUaVFYdlVMUmlPVXMxazZ4YTdDbWxXcHhwc3IyRVBOU0JYL1lCR2I2MHYzaGs3MzlkL1NpOExmN1lROUIrajJrN3lYUEV0UmF4aC85R1dnOEFiUWpRMmg4UXgiLCJtYWMiOiJmMzQ2NzUwNWZmYzVkZTZiNTliNzBhODhjYjE3NzNhOTEzMzMyYWU5ZTA3MmM1OTA2ZjY2OTE3MjRkZmI1ZDBkIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6Ik5NODJMYUdnSDVHdmdwWUhyNFEwbXc9PSIsInZhbHVlIjoiMElHOXE2ZHkybXpyMDkzcnZpT2h2ZFBXYzBUM0pPRExYUmlkblowY2VXMTZTdHRVOVpyamhmUVVURzdHd0JSRXVjOGVXODlYWWM1cXFJaHVLdHZPdytlbmh3Y1pram1RL0ltdDZYYk1yL1ZxT2pUZ2JCUmFUY2tDbi9SR0M5Tk8iLCJtYWMiOiJkZjY4YzVhZDE2ODUzMzdkNzcxMDZhOWUyNzVmNDI1Y2Y2Mjk5MmEyYTY1NTQ1NGUyNmY4OWIwN2UzZjBlZDM1IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', NULL, NULL, NULL, NULL, 1, '2024-11-07 12:54:43', '2024-11-07 12:54:43'),
(16, 'GET', '[]', 'http://192.168.144.97:8000/storage/theme/8/request.', 'http://192.168.144.97:8000/admin/settings/themes/edit/8', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/admin\\/settings\\/themes\\/edit\\/8\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjBtdGt2UHR3Nlo5Q3dKaWpwdU1kd2c9PSIsInZhbHVlIjoiS216SWtMV21IMzNtV05xZlRZTzVkOWU1czZwSmxkenkxbzY3TWdSZlNOUDhPdnRPMHhjNkNJT1dHMVZCUTJtYTM3YlpOL3pNRGpjMVNyRTFXQm13dVEwa3lHOWZVbXhueEgxR2o0cStLYmFHMEI3aVNaMC90TmVMMDk4bzcyVUoiLCJtYWMiOiJjMTZjNmUzZjRkNTQ3Nzc1MDE5MDNkNWVhZjkwOWQ0NTUwOGJlMDQzYzA0ZGYwNDY2NWZlY2ZiYjUxYTZlZDFjIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IjJDaWl5VzQ1bC9GZ0kwOFh0SjJmSlE9PSIsInZhbHVlIjoiUzQwYVltcHEzTmtXRU1EbGZPN1Z4b0x6Rmw3RjBJMXhFQ3BkWTJubkY0Y3BxVnIya3hLU0Njby9hSGdORjF6Sy9uSFZmK0Vya2Z0SER1S2ZoVm1MZG9RbDl4bnFYc0VCSk93Qnk5MTJCdkhLRm5HdzFjWllJSmNQWmhaV0hVTVIiLCJtYWMiOiI0MjNlN2ZmMWNmNjg4M2QxZWExYjVlMmQ1YjhlM2QyOTA0OGYzZmQyMzVkZDQ1NjE0NTQ0YTI2ZDA2MTY1NjVmIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', NULL, NULL, NULL, NULL, 1, '2024-11-07 13:00:59', '2024-11-07 13:00:59'),
(17, 'GET', '[]', 'http://192.168.144.97:8000/storage/theme/8/request.j', 'http://192.168.144.97:8000/admin/settings/themes/edit/8', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/admin\\/settings\\/themes\\/edit\\/8\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IndYQ0s3alh6a3RoY0traUUxUHBlY1E9PSIsInZhbHVlIjoieXBkWlhKeTFnaDlQVEd4a2FVNDh1TVZDY1hHdUFuZ0NHb2t5SDZ6cWtWRTlDZGtsUUY3UmJQaVNmdEhIZzJoaStXRVF0TW1pVHpYZ1Z0N2pFSnIyS0g4Qk0ycHpZdEJGbE8rTlowSUh2d1JRRnpZVUVld25LbWZkM0VFUjFkNGgiLCJtYWMiOiI1Njc5ZDI3MDkxYjViMGQ2ODVhMmE5OTdkYjkzZmE4NTY4MDFhNjRlNTQxMGRhYmRkMjE3ZGIzNWQwZTRhNjdiIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImFVaUhaY3VYandjaVAzV2NKOERIN1E9PSIsInZhbHVlIjoiU0tGclgvUklSMXI4M3NQNVJ4azNkaEtuL1Rha2hXN3lNVVUyN0RZYW5jVU9DaXlwVENiOEJuQ2d1NUFpbmxINGFTWTJOaDdmcWtvelZSNTY2YitqblJFQytzdzVTc0d0Q2h2RUlFQXBkK3J0cXUveDNIRUc4U1lUa1ZMWVFnaHkiLCJtYWMiOiIxMWM4Y2JkNjNkNmFjZWM2NzdlYjU0YmU5NWQyNjkwOTJkMjI0YzUyM2NiODVlNmNlM2U3ZTA0YmZjZjA3YWYzIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', NULL, NULL, NULL, NULL, 1, '2024-11-07 13:00:59', '2024-11-07 13:00:59'),
(18, 'GET', '[]', 'http://192.168.144.97:8000/storage/theme/8/request.jp', 'http://192.168.144.97:8000/admin/settings/themes/edit/8', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/admin\\/settings\\/themes\\/edit\\/8\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IndYQ0s3alh6a3RoY0traUUxUHBlY1E9PSIsInZhbHVlIjoieXBkWlhKeTFnaDlQVEd4a2FVNDh1TVZDY1hHdUFuZ0NHb2t5SDZ6cWtWRTlDZGtsUUY3UmJQaVNmdEhIZzJoaStXRVF0TW1pVHpYZ1Z0N2pFSnIyS0g4Qk0ycHpZdEJGbE8rTlowSUh2d1JRRnpZVUVld25LbWZkM0VFUjFkNGgiLCJtYWMiOiI1Njc5ZDI3MDkxYjViMGQ2ODVhMmE5OTdkYjkzZmE4NTY4MDFhNjRlNTQxMGRhYmRkMjE3ZGIzNWQwZTRhNjdiIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImFVaUhaY3VYandjaVAzV2NKOERIN1E9PSIsInZhbHVlIjoiU0tGclgvUklSMXI4M3NQNVJ4azNkaEtuL1Rha2hXN3lNVVUyN0RZYW5jVU9DaXlwVENiOEJuQ2d1NUFpbmxINGFTWTJOaDdmcWtvelZSNTY2YitqblJFQytzdzVTc0d0Q2h2RUlFQXBkK3J0cXUveDNIRUc4U1lUa1ZMWVFnaHkiLCJtYWMiOiIxMWM4Y2JkNjNkNmFjZWM2NzdlYjU0YmU5NWQyNjkwOTJkMjI0YzUyM2NiODVlNmNlM2U3ZTA0YmZjZjA3YWYzIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', NULL, NULL, NULL, NULL, 1, '2024-11-07 13:01:00', '2024-11-07 13:01:00'),
(19, 'GET', '[]', 'http://192.168.144.97:8000/storage/theme/8/request.jpg', 'http://192.168.144.97:8000/admin/settings/themes/edit/8', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/admin\\/settings\\/themes\\/edit\\/8\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IndYQ0s3alh6a3RoY0traUUxUHBlY1E9PSIsInZhbHVlIjoieXBkWlhKeTFnaDlQVEd4a2FVNDh1TVZDY1hHdUFuZ0NHb2t5SDZ6cWtWRTlDZGtsUUY3UmJQaVNmdEhIZzJoaStXRVF0TW1pVHpYZ1Z0N2pFSnIyS0g4Qk0ycHpZdEJGbE8rTlowSUh2d1JRRnpZVUVld25LbWZkM0VFUjFkNGgiLCJtYWMiOiI1Njc5ZDI3MDkxYjViMGQ2ODVhMmE5OTdkYjkzZmE4NTY4MDFhNjRlNTQxMGRhYmRkMjE3ZGIzNWQwZTRhNjdiIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImFVaUhaY3VYandjaVAzV2NKOERIN1E9PSIsInZhbHVlIjoiU0tGclgvUklSMXI4M3NQNVJ4azNkaEtuL1Rha2hXN3lNVVUyN0RZYW5jVU9DaXlwVENiOEJuQ2d1NUFpbmxINGFTWTJOaDdmcWtvelZSNTY2YitqblJFQytzdzVTc0d0Q2h2RUlFQXBkK3J0cXUveDNIRUc4U1lUa1ZMWVFnaHkiLCJtYWMiOiIxMWM4Y2JkNjNkNmFjZWM2NzdlYjU0YmU5NWQyNjkwOTJkMjI0YzUyM2NiODVlNmNlM2U3ZTA0YmZjZjA3YWYzIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', NULL, NULL, NULL, NULL, 1, '2024-11-07 13:01:00', '2024-11-07 13:01:00'),
(20, 'GET', '[]', 'http://192.168.144.97:8000/storage/theme/8/request.webp', 'http://192.168.144.97:8000/admin/settings/themes/edit/8', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/admin\\/settings\\/themes\\/edit\\/8\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkdjQzc5Zm4wRmlqVlAyQ1IxTlVNMXc9PSIsInZhbHVlIjoiSFlPeDFFVHc2V2Y2b0QwUUhWV0dxSUlKT2t0dThIbGpIS3ZIL3FPNk5nZENzd2NjT3RjdXhITmFwdXg0VHRXVE5CQWNmSlpzV0tzcmJGM3dkSEg4dXNaWFp0bGxRZ1Z6b2MrbGFSVlk3M3BPaTlqTDJERHd5ZG9uT0E0MmU3M0UiLCJtYWMiOiIyYzY4OTZjZWE5ZDdlYTRkOGJlYjEyZjc1M2Y0NjkzOWMwYTBhZjAyNWQ5NzU4NDUzNTU2ZGI0ZjA2ODZlN2QzIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImtBQlhtUDZkOGR0cndOemVSZnZ1MEE9PSIsInZhbHVlIjoiY2lCVlQ0aEcvVzgwWXBXMHd6OUpxWXFwMWRqRTZvU01wcWZHZG9wNUR6MU5Oby9YRDRoblU1MGRFWEdiT2pHa0tNbVNueG9jUm9hNGQzY0lVSHZhUVc0OXdVS21ZMzU4WGdyTFlmV3BmYlo2b2RUdUlla0JNQ3BhWnFGaXl6L1kiLCJtYWMiOiJiNzVkNzEwNGMwMWYzODk2MWFhZDQ3NjU2MzlkNjI2NDk3MGMyOGZkMTk4NTgxZWE5MDcxZTYyMWY2YWMzYWFhIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', NULL, NULL, NULL, NULL, 1, '2024-11-07 13:01:37', '2024-11-07 13:01:37'),
(21, 'GET', '[]', 'http://192.168.144.97:8000/storage/theme/8/request.jpe', 'http://192.168.144.97:8000/admin/settings/themes/edit/8', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/admin\\/settings\\/themes\\/edit\\/8\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Im1xV0dWUUhkK1cxNWd0ejJVN05CblE9PSIsInZhbHVlIjoiOGRMRTlBNGtYakh6OVh2bWpocnpjVEFrSVV5eDFrellGVHJ1dW5WQitBMjUxemU3aHNhNmRzOEtwVlFPcmI2TlZQd0d4VEhmVENBZnlPRjc1d2pvdUh4UXhIR0dZWllRWEtVWUMzSUlUVVJXM1Nkd1lXdnUzTlpGNjQrUUp3T20iLCJtYWMiOiJiNDA4OWI1NjJjNGVmMDlkZjI0N2IyOWY4NWY3NDZkNzhlY2U2OWZhM2Y1NWQ1ZjUyNDEyOGEwODFhNzFmMDdkIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6Inp5ZlZSUDFUbDlUTTBmZjJ2SU5JZmc9PSIsInZhbHVlIjoiMXN5STRkR0prbndzd1dWVy8yRmUyWGJmMmN6RWYwZm1GWWVTeXJpTWdmY2RFUjIxQ08xOUN6bVlvM2lsMWhId3dyWjdkWm9WNFZaSW5UM0hZRzNMOHVnVFlMTURxeUpYa3ZNUDMyd0c1WEdmRmorektrZlRlZkpuWERKQkdSSEsiLCJtYWMiOiJmODllODhmMWY2NmUwYjE5OGVmOTQ3NDY5MmFkMjJjMGE1MWQxMDQ2Zjc5Y2FjOTk3ODg4NGZhNWU2NDM0NDM5IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', NULL, NULL, NULL, NULL, 1, '2024-11-07 13:01:45', '2024-11-07 13:01:45'),
(22, 'GET', '[]', 'http://192.168.144.97:8000/fashion', 'http://192.168.144.97:8000/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"192.168.144.97:8000\"],\"connection\":[\"keep-alive\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"referer\":[\"http:\\/\\/192.168.144.97:8000\\/\"],\"accept-encoding\":[\"gzip, deflate\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlFFc2pneE84MHlSbWxDVVZkQTd5bXc9PSIsInZhbHVlIjoiWHQrRGZNK0hOczlGemZMaXZ1d2Q1clJ1OEoxcHJyc25aUVcvUGp0SnJmV1hib3R1djI3MjdUWFJNYTA1U3ArUm1nSW9xL3ZEYnJiZ3JpbEF4VE5xWUg1MWhKTmdIaldsUGhHcDFiclFuVWRaeUZkcm1aNktPT05BdG9TRHBOUUoiLCJtYWMiOiJkNTRlZWI2ZWVjYTAwZWQ0MGUzNjc0OGFlMGViZWNkMjdmOWVmYjhkNjQyY2NhNTA3YzJhNjI5ZTA0NmU2ZmZiIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6InZaV2JDYjB1KzdPREdUQS9FazdIZ0E9PSIsInZhbHVlIjoicU9WYWRVUTdDaGpjbUV5M0NVeStobTdjR3dHZ2NjOEd4WmJPM2JpN0RSMlB5andaNWx5YzdHbE96L3l1ejZCczQ5V0xBTTFzaFR3T3J4VjNycmJMR0swV1p5Wkl2RmhPME9saUlxa1c0ZWJTdkdxaWw3ZkgrbjRmNy9XSzV1Q0ciLCJtYWMiOiI4ODk0MGEzMDFmOTIyMWJjMWU4ZGY4MDQ5M2Q0M2VlZTYxNzkxMjE4YzI0OTc4MTQ1Nzk5Zjk3NDYzMDM0NGExIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '192.168.144.97', 'Webkul\\Category\\Models\\Category', 10, NULL, NULL, 1, '2024-11-07 13:04:14', '2024-11-07 13:04:14'),
(23, 'GET', '[]', 'http://localhost:8000/storage/theme/10/qQskFVsm3EmcQ8gvF1lfHsodcO1PfddzC0nIZ4W9.png', 'http://localhost:8000/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/localhost:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IjZqSEpsS1dMazlBMkVFT0x4UC84Qnc9PSIsInZhbHVlIjoiMmY5STcvUTNxUlhnNlRDckp6WVhjTWZpVysyRFZON0FBbDNXaXQ0VC9xSElaY0hwRmxkVmw4NERvbDEwU084c3lqbSttdUF1NElyMzBpY0YvVGJvMmpwSit4SlVqUW5GaU51ZnJYaUJKSUJhZFdoOGpiOUx5ZUdENk83ZzlxME0iLCJtYWMiOiJkYzc5ODhhMGQ1M2JjNzY2NDUwMmU1ODBhNGFmNDJjNTA2YjMxMjQ2ZjJiYjgzN2FlYjU4OGU5NjQ1NTE0Mjc5IiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IlNNR2xFbUx3YTFXbUZROE0zR0dtVWc9PSIsInZhbHVlIjoidGhNUGpWcEFhQ3g2WFVZNnI3Qysya1ZvRk1sTG1WcXZXdUkxa25OZUoyMUJqNzkvT1FESTE2TmhRUVFpWmlIeGZpR2NqRGtiY0lYSUMvdTdabnZ2bVFqbG9CZHN3Z092dzFQV0EvMFpoYTVFRkE3eDFvY2lLdjIzRSthcTBvbnYiLCJtYWMiOiI2YTBkMzZhZGZlNWM1Mzc0NjNhODc3ZjBjN2I3NzgyYzNiNDZlM2ViZWE4OThlMTQ3YTU3YTMxODk4YjA4ZjBlIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-11-07 15:39:02', '2024-11-07 15:39:02'),
(24, 'GET', '[]', 'http://localhost:8000/storage/theme/10/product-cart.webp', 'http://localhost:8000/admin/settings/themes/edit/10', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/localhost:8000\\/admin\\/settings\\/themes\\/edit\\/10\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IlR1anl1R0lZYXRucXJnVUhpUjlUQnc9PSIsInZhbHVlIjoiV0JiQXMxeFFmU3p0aGNBRitkRGlnU2JYRVJDbjRPeTdNTmY5NWIzSmE3Z2J2MURudE1ObXpXd21DNFNxQTdvUDlPajY1YWFNZEdISy9qN3dOVk10M1pDWjZXaGNmUXl2WFFTelczcXdLNXpzMzRJMW95cjlYVWZ4eUJrbXBvS20iLCJtYWMiOiJjNGRhYjc5NTk4YTQ5ZDBlZmY5NTVlNWYxMTQwNGM3ZWY1MjFjY2YxYjRlNTczYzAxOTg3MWRmNjVjYTk5NzhjIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImY2cE9FTGpOWTJwWlllMWJkY21GZ1E9PSIsInZhbHVlIjoiRGdMZzVJZUg5NWtoTXNaUWRBYWVacWQ4d1dDZUxlZ1JXNTMyMEpwdlBNMjFiWXM1YXBuc2dnYjAxVHUxc0pnbTdWMFBlaEdMRHVTUEszaVhTdUZaU2FzWkEraWMwbEZEWHUzWFpiTjRHdjB1S1JSYW5sMGR3TEQ1NWU3Q1lzejQiLCJtYWMiOiIzODllNDhkNTY2NWJmNmVkMWUyYzEyN2Q0MDU5NGY4YjA1MjYzY2RhMWNiZTBhODk3YjYwYTUzNWRhMzU1NTU0IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-11-07 15:45:29', '2024-11-07 15:45:29');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(25, 'GET', '[]', 'http://localhost:8000/storage/theme/10/checkout-process.webp', 'http://localhost:8000/admin/settings/themes/edit/10', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/localhost:8000\\/admin\\/settings\\/themes\\/edit\\/10\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IlR1anl1R0lZYXRucXJnVUhpUjlUQnc9PSIsInZhbHVlIjoiV0JiQXMxeFFmU3p0aGNBRitkRGlnU2JYRVJDbjRPeTdNTmY5NWIzSmE3Z2J2MURudE1ObXpXd21DNFNxQTdvUDlPajY1YWFNZEdISy9qN3dOVk10M1pDWjZXaGNmUXl2WFFTelczcXdLNXpzMzRJMW95cjlYVWZ4eUJrbXBvS20iLCJtYWMiOiJjNGRhYjc5NTk4YTQ5ZDBlZmY5NTVlNWYxMTQwNGM3ZWY1MjFjY2YxYjRlNTczYzAxOTg3MWRmNjVjYTk5NzhjIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImY2cE9FTGpOWTJwWlllMWJkY21GZ1E9PSIsInZhbHVlIjoiRGdMZzVJZUg5NWtoTXNaUWRBYWVacWQ4d1dDZUxlZ1JXNTMyMEpwdlBNMjFiWXM1YXBuc2dnYjAxVHUxc0pnbTdWMFBlaEdMRHVTUEszaVhTdUZaU2FzWkEraWMwbEZEWHUzWFpiTjRHdjB1S1JSYW5sMGR3TEQ1NWU3Q1lzejQiLCJtYWMiOiIzODllNDhkNTY2NWJmNmVkMWUyYzEyN2Q0MDU5NGY4YjA1MjYzY2RhMWNiZTBhODk3YjYwYTUzNWRhMzU1NTU0IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-11-07 15:45:29', '2024-11-07 15:45:29'),
(26, 'GET', '[]', 'http://localhost:8000/storage/theme/10/delivery.webp', 'http://localhost:8000/admin/settings/themes/edit/10', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/localhost:8000\\/admin\\/settings\\/themes\\/edit\\/10\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IlR1anl1R0lZYXRucXJnVUhpUjlUQnc9PSIsInZhbHVlIjoiV0JiQXMxeFFmU3p0aGNBRitkRGlnU2JYRVJDbjRPeTdNTmY5NWIzSmE3Z2J2MURudE1ObXpXd21DNFNxQTdvUDlPajY1YWFNZEdISy9qN3dOVk10M1pDWjZXaGNmUXl2WFFTelczcXdLNXpzMzRJMW95cjlYVWZ4eUJrbXBvS20iLCJtYWMiOiJjNGRhYjc5NTk4YTQ5ZDBlZmY5NTVlNWYxMTQwNGM3ZWY1MjFjY2YxYjRlNTczYzAxOTg3MWRmNjVjYTk5NzhjIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImY2cE9FTGpOWTJwWlllMWJkY21GZ1E9PSIsInZhbHVlIjoiRGdMZzVJZUg5NWtoTXNaUWRBYWVacWQ4d1dDZUxlZ1JXNTMyMEpwdlBNMjFiWXM1YXBuc2dnYjAxVHUxc0pnbTdWMFBlaEdMRHVTUEszaVhTdUZaU2FzWkEraWMwbEZEWHUzWFpiTjRHdjB1S1JSYW5sMGR3TEQ1NWU3Q1lzejQiLCJtYWMiOiIzODllNDhkNTY2NWJmNmVkMWUyYzEyN2Q0MDU5NGY4YjA1MjYzY2RhMWNiZTBhODk3YjYwYTUzNWRhMzU1NTU0IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-11-07 15:45:29', '2024-11-07 15:45:29'),
(27, 'GET', '[]', 'http://localhost:8000', NULL, '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6InpvK0x2QmVLWlNvcmdETlpNU0dDZXc9PSIsInZhbHVlIjoick5pWWpFWUdRcDF0ZHBFVGg4blFGUmVnSmpBOGlnOTRpMjQwV2NrZFRnRVhTUytwbk1KQjVQL2E2OVNkdHJERklrVmxKbnB0b1h0cTg2c1lPYWpDTVZjYzdjdFpqQlVZRWNvNXJLb0dER29GYlVTdU84VFhMMEN3RW5MdzJJbjUiLCJtYWMiOiJjMmI4ODk4ZjhjNWU4OGFlMmUyYjU4YjkwZDk1OGJmNmYzOWYwODg4NTJmYWEwMGM4MzhmNDYxMmMxOTM3MTM5IiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IjI1RjVYVFg0K0Z5M1phYWJxaTRaWXc9PSIsInZhbHVlIjoiTUlFWGlKWmsyRXBvSGRYSkpGQy9FQlVSZXRwa0dWMlVPVzB0U2Iwdk11YTF6R0MvWFVOYW8vYWpzUG1UNFdldUcyOXZLbjhYSi9WT1BxaFc0TlhkNmV5Z2lDMXhXOHEySHBGS3hJbDFKaEM5U29yZExBNjJRdGUyOVNnVG1BUFYiLCJtYWMiOiJjM2MyOTRlOTlkNzA1OGZlOTFmNDg2NTdhZDBjOWU1OGE5MmU3YWFlZWMyM2EwNDE1N2MzMmFiZTViYTI5MTNkIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-11-07 17:00:05', '2024-11-07 17:00:05'),
(28, 'GET', '[]', 'http://localhost:8000/fashion', 'http://localhost:8000/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6ImlvdE0yR3l1NnVDOTZZU0JxUFVqeFE9PSIsInZhbHVlIjoiSnh3b3hRZTkvZlVvTXJIVlNVSlRkaFFxQkh4SDNzRzVUSzFLVS82MGQ1QStRZFFDOStMbTBVQ0h4Q0lMaHpuOCs2T2RCVHNpcmc4S0ZuaDdhVEptTHRYcC9GcXV3c0hQV29oeUNFTlJXV3ozYkVWRmVlL3VWTGpUK0FYVXQ2NkMiLCJtYWMiOiI4ZTNmYzFiYzIwZjBjNjQ4MDRkN2QwM2M4NWQ2NDk3MGFjYTEyZTYwMjU4NzExMzY1NTEwNTgwZjVhOWI0MWU0IiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImpLV0Y0MzU1UHNCNy9VSUo4dkVSUWc9PSIsInZhbHVlIjoiUi9DQy9mVVdPVTZWSzc4MGJZQkNTTElNWHZpRnhEeWgyblZydjYzOFNENHVnV1NNdzFVVjVRb000Uzc0QjNFN1ZrcHh3TjEwNElnOEl0SmFjcUowaGJQSk5ucHBKd0tlZXJPMk1VSGpzeWkwbnNBbDltUEdjbms0OXpwY0J6a3MiLCJtYWMiOiIxMTllYmM1MDA0YjEyMTlkNjMzZTQ0ZTcyNzA5Zjk3NjE2ZGRmMGE3NGQxNWQ5ODU5ZmVlZGZlODhhMDRkNzg5IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 10, NULL, NULL, 1, '2024-11-07 17:25:14', '2024-11-07 17:25:14'),
(29, 'GET', '[]', 'http://localhost:8000/kaos-oblong-pria-pack-r', 'http://localhost:8000/fashion', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/fashion\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6Ikt1T3ZKc2RSMVEyMWNRZlUzVTNJWlE9PSIsInZhbHVlIjoib0c2bzRzT0xYZDViNXhWdjJBc1NDU0pnRnBsa3JHUW44c0NyQW52bVplbTh4OER2VFpPdzAzV1I2M2hRWmZjRDdrUXcyNjczL2MwSDBhZWlsRTRsNWVqNkhNZkNEYm1XQTdKWThQT3RITzdUSTZ0b2VzZkJXSnMzYTBwaVIzR2MiLCJtYWMiOiIwMzJmYmRkMzFlNGY1YTUyNGY5MTEzNjkxYWE3MGVmMGExZmE0NDBkYTliOTFlMWUxYWRjMjJhNGI0NmU5MjEwIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IklNRlVkeDRJWlM0SkFrZkxObzZSZGc9PSIsInZhbHVlIjoiendwb2VUU3ZmR0RQZjA3STBhMFZyU0xwUGNQdzRzN3FTTUhzaUp6ZHd2bzV1Q29wVWhQazlFWUk4U3Z1SGxJUkhIRnBIWDFEN3lMT3ZFdkZRUG43SUR3bDBGVTRuWnE4NFNacWpnSkp5T3lJSXJ2b1laalNVaGU2K3l2bGxJNHQiLCJtYWMiOiIwMDJkZGE1MDQyYjY4OGExYjE0ZDk3ZTg4Njc5YTYxZmJhNWM5M2ZkYTFhMzUyZWYzNDk3NDg0MmEwMjQ2ZjMwIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 14, NULL, NULL, 1, '2024-11-07 17:26:16', '2024-11-07 17:26:16'),
(30, 'GET', '[]', 'http://localhost:8000/kaos-oblong-pria-pack-b', 'http://localhost:8000/fashion', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/fashion\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IkxPY3V2cW1peUdjZGh4bmQ5MEkveHc9PSIsInZhbHVlIjoiWk5DV2RjekRZeE04cC91aHVHbFVCOUpXVVIrQzFjMk1adjJRYVdEZHo5N1NjRUp2VHZoZUNnK1BLTmR6UkhyUVY1RW1CanFzdTIwZ05qbDdyVnF0VkdiREIzNXIzMDFscXExVUcwSTVvcWtpbDVKN3g2ZDliRm03WUJjazRzQi8iLCJtYWMiOiJhMzA5ZjM5ZDE0NTFhNjAyMGM3YmEzMzc2ZWVlZWVkMTAzZGI3ZmNiZGRkMDFkYjFmOWQ1OTg2MTI4Njg0OTJlIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6Iis2L1pGeDFTQStyaldPL0VJQkpCUVE9PSIsInZhbHVlIjoicWFQK0RyQnJMVjY2b2szNzVJMGZDUnZmM3FIVTd4ZmxlWHIxK0JOVlBWTUZpWkxQbUc4N0c4cWR3QUVrR3Y5MzlSL2FtMkFyaEFNMXBnbkVqZ3pzbHpnc29hV2JBZmdOUGNTZWtScko3QjdZQm9aV1ZSTWR3Y3RBUEowL3prWXciLCJtYWMiOiIwOTM1MDMxMzk1MmMzZWJjMWU4Mjg1NzgwOTA1ODMwNTBlYWZjYjdmNWZjMzBhNmM4NTYwOGE2NTMzMGMyZjVmIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 15, NULL, NULL, 1, '2024-11-07 17:27:00', '2024-11-07 17:27:00'),
(31, 'GET', '[]', 'http://localhost:8000/kaos-oblong-pria-all', 'http://localhost:8000/fashion', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/fashion\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IjRhR3hBUFdCZDFMQnlyWDg5Y1JhTXc9PSIsInZhbHVlIjoiZDdPQ0ZoL2VucXF3cUNvQXRWTjAxdXlHbUh0K0Z1RStuSEhXVFB4UHl6SmtXN016YlJOQVhMelAydDJySnhneDdnajM2THZoTm9rdkpsRlEyQTJwWU5RU0plK1pwMlEvUFFIM3RPbENoSUlIRnRKNUZTYkJOTkZpTnRHQWhNeGIiLCJtYWMiOiIwYmJhODdiODhkNzBiZTFmNmM5NDRmMmY2MDQ5MzZkNGJmNGQ3ZDY2NTU3MTM3Y2Y5YjkyODhhYTkxZjY5Y2I0IiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IlhWbVJ4VXZ4dTN5Njg2RU1TL2dGYlE9PSIsInZhbHVlIjoiZzl4a0RwaXZWckJLY1c4U05Ianhkc1c0N0RTZDN5RHlqaXpWYmRmZk9SdXR0SUtkeWxUZG0vR254em80TVRmL1psSFdmVDFVcHpHWXhCM3pDRW5WenJNVFJGRk5oZE1NNjFpSi9SNm9UVVNpRWlBYmI4Ykt5TnZHdkRvYUtuRysiLCJtYWMiOiJhNTUxMThmN2I4NTc4M2YwZTIyODU5N2U4NmMzYjhkMGJlY2U2NTcyZWE4Mzg3ZjNlYzI4YjQxNzhhOWRhMTQ1IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 93, NULL, NULL, 1, '2024-11-07 17:39:27', '2024-11-07 17:39:27'),
(32, 'GET', '[]', 'http://localhost:8000', 'http://localhost:8000/customer/login', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"referer\":[\"http:\\/\\/localhost:8000\\/customer\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IkxHSUxBZTZNcXhQWjZYVnVqazc5bGc9PSIsInZhbHVlIjoiZmtaMGN6QWRNU0Y1cnc4TmF2bUY4cmtsNENxM3UwRllCVzRjSWpTM1E3MENHY1pYaXBCSEF0OG5OTVZScG1sd0xjeXBqdHhGWHFTRFNXOFJ5T1AzVHdtemhtSElyS0JPTzY4YVpSRUZXd05aR2prTU5BY0ptYWJUM3crNnVYTFUiLCJtYWMiOiI2M2MxNmNlZWNlMDY0MzM4MTM4NTEzNDcxZTk5MTI3ZmU0YWY1YWVhNjc5ZWQ3N2M3MGIzYzg4MmY2MzZhYjBkIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6IlppUzk5b1F5NS83SEx0ajdxUU9lb0E9PSIsInZhbHVlIjoiTnE1TTUxdnpOVXhmdVBPK3dtbzRUNmIzQjU5WUpCdlNPcnZQN0wycmZOZFJDbGhSczJ2SHBsbkFWUW01R1lFWC9FSHJ6c1B3eWVYZVJDNFdxb0xnd2p5eDRpUTdwMmhDR1g2eWk5U2pscUQ2eVhoeDhiWlVubjJoekpHSWwyM2siLCJtYWMiOiIzZThlMjQ4MGNjNGUwYmZlYTU4NjMwNGVhOWUyNDkzZDdiN2EwN2Q4Y2JjZmQxZTM5NjQxZmExYzU5MWI0ZGY3IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 17:43:35', '2024-11-07 17:43:35'),
(33, 'GET', '[]', 'http://localhost:8000/kecantikan', 'http://localhost:8000/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IlZpSGswVHlaeHVzSVhjY2Vmd0FoaEE9PSIsInZhbHVlIjoiRkZzbHJMYm05RnZSNWk0MWJHUmNNWitHTElocThJQmhDdXN4c2xXWUQ1ekdETzk0N0w5dGdKWjladVpYYVprcndOakZ6aVlzSVE1d0FjMmhSV0g3R0lVc3JlRm9HOC93bTlIUzhRc0ZuU0lPdFFEQmgreTA0b2x4YVJlOG55cE0iLCJtYWMiOiJjYWYyNjI0ZGJjYmUzNzFjYzEwY2JjMjI0YjljODZlYmMxNDM3Y2ZlOWMxN2IzYzcyYjdiNzk4MTc2MTE5ZTg0IiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6InY0N1N1N0FudGNBeVd5bjZwSDlrTFE9PSIsInZhbHVlIjoicVJsT1dUWTFQYXAyZFFLVEZlaXBkQ2p1b1NyTjc0eGllTWlucTMwdjlXSEd1VTNjcVZZa25VVlBSbEdFWTdodWg3NkVsVVJ3ME1xMXFyWTZMQUhkZmtRRnA3Yi9PNUpWQ05iN1cvYkptTjlyMXcrV2s4T0ZTWVdaaGZrZnVIL1EiLCJtYWMiOiIwNTE4OGY1ODhmOTAxZmU5MjgyOTA5ZjJhM2U1ZjhkOGIzZmY2OGQzNWE5MmQ5OTA2OTBmZDJkMzdmZjc2NmNhIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 11, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 18:29:31', '2024-11-07 18:29:31'),
(34, 'GET', '[]', 'http://localhost:8000/rumah-dapur', 'http://localhost:8000/kecantikan', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/kecantikan\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6ImVhcWlBMlRHOUdLNkRVWnA5SHN2K0E9PSIsInZhbHVlIjoiNU1EY0ZJODd6OFdudkI0SXpBWHBuZzVsNGZwc3JoaHE3VXlsSWhuMDVoRlpXUERrbldaZkFHa0luNmJPSWFuaG9QYWRKalVNSlNlNXQwWFVjTHp6ZnpSY28zT0tYN0YxbHRGYVc1SDErY3RVSUxHTDJiNVh3b3N3R1ZVUXlwaEoiLCJtYWMiOiI4YzEyOTQxODZiOGJiMjVmYjM5YTJlNmM2ODAwMTlkZjEyM2UxNjUyZDI5OTRkZmE3MmJjZjgxZjU0MTAwMGMzIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImttVE5HWGdkdUpXalY1NGtLcGhDYUE9PSIsInZhbHVlIjoiSlNqcGUzSUlraW9aTHFaS241VEp0MmxSOHNrUm1wVmNuQnZkZnEyeEF0dk5rM09nYXJycXRJVEhicU1vRVlRVnUybGNPdjZLMStQYUU4NWhpa1l0eFBlUlFDcTY1R3BaUHpGYzZqSEp2bTFrVDNPQk5LbkVydDZtenIxSlBGVTgiLCJtYWMiOiIwYjVmMGI1ZDMxMmU0Y2RjZTUyOWFhYmJlMGY5Zjg1MzI5ZGU5ZGUzYzFhMjRjMjYzYWM5NTFiZDgyZjNiNzM0IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 8, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 18:29:34', '2024-11-07 18:29:34'),
(35, 'GET', '[]', 'http://localhost:8000/elektronik', 'http://localhost:8000/rumah-dapur', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/rumah-dapur\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6ImNVYWNaMmVIMlJIbVhyU3c4MUI3V3c9PSIsInZhbHVlIjoicHQzQ2diT21yY1NZRmtSZm5HdTllejhpTG5TaFhhTVltZXFRNThDR1ZzcnhoRlZEZjZIcEFsWStaZDZqc3pEQ0ZQUUY4QXR2Qm1vVll3SWozS3NTSG5wZVc5bVZtQlpvZ0dQQUZPdjNwUnM5bnUvMW9YM0Zkc3BLbytPeDdyM0QiLCJtYWMiOiJmOGJiMjBlMzc1MjIyOTg2N2E2ZTdlNzMwMDEwNzFlNzI1MmFiZGQ2NjNjYmIwZDlmNDVhNWI0MTVmNmE4YTY3IiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6Ii9LSzMzckpZc3JaaDlhUnN3TnVoUVE9PSIsInZhbHVlIjoiZmRNM0FGck5aNURYQ1IwVXk5L05TZGJrNzJFOHlmY3p0U1V0OXlvU2xhdmZNYXhmMXF6YVBHTExUK1JVZzVmb3ZQTFRVb3RPUjBaZ0pEaC9PM3FYRTNvWlJ1L1JuV0ZaVS9FWFVLWmRmNlBpZG9FWjFldlJ4Ri9tQmNjdEd1YmkiLCJtYWMiOiIwZTZlNGIzNDBiNmJjZTE1MmM4ZTY3MTg1OTQzMjQ2MzRhMTU2NzQ2YmY1NzZiMTBjOWEyNDAxNDExYjYxZDBlIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 5, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 18:29:36', '2024-11-07 18:29:36'),
(36, 'GET', '[]', 'http://localhost:8000/aksesories', 'http://localhost:8000/elektronik', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/elektronik\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IjBCWmwxWHJycmxGNHRKVmJ1U0FRU0E9PSIsInZhbHVlIjoiMThOL3Zoc1NPSVlTL0p5SllHKzZqRFlvaFczZHJHOWFQL01scFhSMExoMGZEUmVQcGFjYlZaMjhNOE1kc3pHNTg1VDk4VG11Yk82ZndvdE5iTzZSSk1ML0VBSHhSUkxZUzVmZ3JaM3Q0RkVBM1NIY1NyZGtnM3EwQzUrY1RtWW0iLCJtYWMiOiJhOTU5MDU3MWY0ZTYwMmMxOGYyNTgzMmExNWEyNDYwODFmMDhkMzVmNjI2ZWQ4ZmMwNTcyODBkMWIzZTFlNDJhIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6InJJbk9qQ0x2aUxZeVByby9tcDFSR1E9PSIsInZhbHVlIjoiU1VBWEs0eXFCdWtjSUFyOHdzczJmMlJUY3VMb1lVV0tqQUNPR0piNkNWSktMYWdTTlMxYldGQjBBSHF6T1BoVFcvbHUrUEZ4N1VQMStSc3luSHQ2OWpOOTArMXYxdk0xdVB6SnEzK05MV0hKYyswY254K0Rzd05ZUjVmVG95M3IiLCJtYWMiOiJjMDIyMThiYTAxNTJiZjQ4NWJkNGQ1OGFlYWFhM2I4MGIzMDBmMTE0MmFlNjY4ZmU1YjA5NmM1YzczNTU5MzBjIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 7, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 18:29:40', '2024-11-07 18:29:40'),
(37, 'GET', '[]', 'http://localhost:8000/fashion', 'http://localhost:8000/aksesories', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/aksesories\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IkY5T3ppVU9tdGx4ODBDVWswUjNydFE9PSIsInZhbHVlIjoiOGV2UWcybGZyV0Qya0ZIMGNVT3F3WUpiVitVSy96K21MTUFpTjBHdmljMlpLbVg0K2poMFRqZ1Y3Q1g0RW0ya0pWZWlESlNFL1kzVGZNMWNsbWRJYkVCWjI0djhwT1I1dm5DZWp4aTEzYVh0MjBqcjhZSGVYeHFLckRMbmljd3giLCJtYWMiOiIyOWIxM2QwNWNmYTcxY2NjZTY1OGYyMGJhMTQ2ZTJkNzFmYWJkY2VmYWQwNTEzNDQ5YzljNTQ2MzFiMzQ1MzRkIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6ImxCNUs0ZG4yQTJ1WlMwb1BwTVc2SXc9PSIsInZhbHVlIjoiay9zcFFHNGpXMTRFZjJmWnJyY3prMmp2cFBLTllTSHU3L3NLNkFYSUZaSFBVMlEvZlJ4TVhSUGdUeXplMHBiVmUzNlprV2E2Qkw4YXVYbkVFdE5Xb01IWEVIZFF3bWJnUEZ5NTI3WkVpYWUxN2dXeG9reXRVVDNnSEt1dXB4a3ciLCJtYWMiOiIzOGViMjcyYzE2YjkwNTNhMzAzZDdjOWVjM2I3ZTg5ZWEzZmY2MThmODM3NzhiZDY2YTAzYzM5ZDQyZWFjNWVkIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 10, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 18:29:42', '2024-11-07 18:29:42'),
(38, 'GET', '[]', 'http://localhost:8000/kaos-oblong-pria-all', 'http://localhost:8000/fashion', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"130\\\", \\\"Google Chrome\\\";v=\\\"130\\\", \\\"Not?A_Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/130.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/localhost:8000\\/fashion\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"_ga=GA1.1.1174895751.1725772194; user={%22uuid%22:%223f5b2873-e050-4e73-8f1e-4e54c26089f9%22%2C%22name%22:%22Admin%20Artikular%22%2C%22role%22:[%22Master_Admin%22%2C%22Receptionist%22]%2C%22token%22:%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22}; token=%22eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM2Y1YjI4NzMtZTA1MC00ZTczLThmMWUtNGU1NGMyNjA4OWY5IiwibmFtZSI6IkFkbWluIEFydGlrdWxhciIsImlhdCI6MTczMDYyNzQ1MiwiZXhwIjoxNzMzMjE5NDUyfQ.zq4HprANmmAmo2w-3lP4sX8RxeIeqgafNVUrTVhsSNM%22; _gid=GA1.1.1599280246.1730960719; XSRF-TOKEN=eyJpdiI6IkJQU2Y0YlZkMHJ1MVdaOFFqODZLR3c9PSIsInZhbHVlIjoic1lLRDQvSnZ0N3ArcjVKQW04L2hKK25WeVlyejNVaDNPbS9NNGlPMmFNdEdLMHlqVTVmSksrcUthTEx3T2ltWGY5NVBBM1BFRFJkVVRxVE9pNklPTGIyUWdZb1c3SlhjclV3dTlhdVdnekFPRThOQi8zVi80Z3pNUjJhVUdBYloiLCJtYWMiOiJiYjZmNjEwNTIyYmZhMTlmZmM2Y2EwMmE4MzVjN2U3ZjhjODlkZGEwOTU5YzBiMThhMTMzZWVkMmFmMmQxYmNhIiwidGFnIjoiIn0%3D; cshop_session=eyJpdiI6InB2b0QwVlZqWEtTNzN1cUNjWnJWc1E9PSIsInZhbHVlIjoicXNLSGpnN3NENVZuaVR3Y0NYUzB5ZGdKUUFRWDBaWE10eVV5NUgremRlQXE3bkhZQUw0Z3p4RXBLOVNIK1JjWlFOZFZhYy8zZUlkcVFvb1ZFZ0ZZSDlrUWlSaUZCSFZwdml0emh4dy9ObU81dmVrMWFtSmdCRWJFNW9hdUhXWHciLCJtYWMiOiIwOTQ0ODQwYTc1Njk3NDcxNzU4NmFmOWQ2YTc0NTdlNjY3MzhmMDIzN2RkYjBjMjA2NDVmNTYwZTc3ODY0M2FiIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 93, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2024-11-07 18:29:44', '2024-11-07 18:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `item_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_options`)),
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `time_of_moving` date DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wishlist_items`
--

INSERT INTO `wishlist_items` (`id`, `channel_id`, `product_id`, `customer_id`, `additional`, `moved_to_cart`, `shared`, `created_at`, `updated_at`) VALUES
(1, 1, 93, 1, NULL, NULL, NULL, '2024-11-07 18:30:09', '2024-11-07 18:30:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `addresses_cart_id_foreign` (`cart_id`),
  ADD KEY `addresses_order_id_foreign` (`order_id`),
  ADD KEY `addresses_parent_address_id_foreign` (`parent_address_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_api_token_unique` (`api_token`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_code_unique` (`code`);

--
-- Indexes for table `attribute_families`
--
ALTER TABLE `attribute_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_groups_attribute_family_id_name_unique` (`attribute_family_id`,`name`);

--
-- Indexes for table `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD PRIMARY KEY (`attribute_id`,`attribute_group_id`),
  ADD KEY `attribute_group_mappings_attribute_group_id_foreign` (`attribute_group_id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_option_translations_attribute_option_id_locale_unique` (`attribute_option_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_customer_id_foreign` (`customer_id`),
  ADD KEY `cart_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_parent_id_foreign` (`parent_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indexes for table `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_payment_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `cart_rules`
--
ALTER TABLE `cart_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD PRIMARY KEY (`cart_rule_id`,`channel_id`),
  ADD KEY `cart_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupons_cart_rule_id_foreign` (`cart_rule_id`);

--
-- Indexes for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` (`cart_rule_coupon_id`),
  ADD KEY `cart_rule_coupon_usage_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_customers_cart_rule_id_foreign` (`cart_rule_id`),
  ADD KEY `cart_rule_customers_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD PRIMARY KEY (`cart_rule_id`,`customer_group_id`),
  ADD KEY `cart_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_rule_translations_cart_rule_id_locale_unique` (`cart_rule_id`,`locale`);

--
-- Indexes for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_shipping_rates_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `catalog_rules`
--
ALTER TABLE `catalog_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD PRIMARY KEY (`catalog_rule_id`,`channel_id`),
  ADD KEY `catalog_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD PRIMARY KEY (`catalog_rule_id`,`customer_group_id`),
  ADD KEY `catalog_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_products_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_products_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_products_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_products_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_product_prices_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_product_prices_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_product_prices_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_product_prices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD KEY `category_filterable_attributes_category_id_foreign` (`category_id`),
  ADD KEY `category_filterable_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_slug_locale_unique` (`category_id`,`slug`,`locale`),
  ADD KEY `category_translations_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channels_root_category_id_foreign` (`root_category_id`),
  ADD KEY `channels_default_locale_id_foreign` (`default_locale_id`),
  ADD KEY `channels_base_currency_id_foreign` (`base_currency_id`);

--
-- Indexes for table `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD PRIMARY KEY (`channel_id`,`currency_id`),
  ADD KEY `channel_currencies_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD UNIQUE KEY `channel_inventory_sources_channel_id_inventory_source_id_unique` (`channel_id`,`inventory_source_id`),
  ADD KEY `channel_inventory_sources_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD PRIMARY KEY (`channel_id`,`locale_id`),
  ADD KEY `channel_locales_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_translations_channel_id_locale_unique` (`channel_id`,`locale`),
  ADD KEY `channel_translations_locale_index` (`locale`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD UNIQUE KEY `cms_page_channels_cms_page_id_channel_id_unique` (`cms_page_id`,`channel_id`),
  ADD KEY `cms_page_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_translations_cms_page_id_url_key_locale_unique` (`cms_page_id`,`url_key`,`locale`);

--
-- Indexes for table `compare_items`
--
ALTER TABLE `compare_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compare_items_product_id_foreign` (`product_id`),
  ADD KEY `compare_items_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `core_config`
--
ALTER TABLE `core_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_states_country_id_foreign` (`country_id`);

--
-- Indexes for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_state_translations_country_state_id_foreign` (`country_state_id`);

--
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_translations_country_id_foreign` (`country_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_exchange_rates_target_currency_unique` (`target_currency`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`),
  ADD KEY `customers_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `customers_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_groups_code_unique` (`code`);

--
-- Indexes for table `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_notes_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customer_password_resets`
--
ALTER TABLE `customer_password_resets`
  ADD KEY `customer_password_resets_email_index` (`email`);

--
-- Indexes for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_social_accounts_provider_id_unique` (`provider_id`),
  ADD KEY `customer_social_accounts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datagrid_saved_filters_user_id_name_src_unique` (`user_id`,`name`,`src`);

--
-- Indexes for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloadable_link_purchased_customer_id_foreign` (`customer_id`),
  ADD KEY `downloadable_link_purchased_order_id_foreign` (`order_id`),
  ADD KEY `downloadable_link_purchased_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_batches`
--
ALTER TABLE `import_batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_batches_import_id_foreign` (`import_id`);

--
-- Indexes for table `inventory_sources`
--
ALTER TABLE `inventory_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventory_sources_code_unique` (`code`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_order_id_foreign` (`order_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_parent_id_foreign` (`parent_id`);

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
-- Indexes for table `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locales_code_unique` (`code`);

--
-- Indexes for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketing_campaigns_channel_id_foreign` (`channel_id`),
  ADD KEY `marketing_campaigns_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `marketing_campaigns_marketing_template_id_foreign` (`marketing_template_id`),
  ADD KEY `marketing_campaigns_marketing_event_id_foreign` (`marketing_event_id`);

--
-- Indexes for table `marketing_events`
--
ALTER TABLE `marketing_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_templates`
--
ALTER TABLE `marketing_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_order_id_foreign` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_increment_id_unique` (`increment_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `order_comments`
--
ALTER TABLE `order_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_comments_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_parent_id_foreign` (`parent_id`),
  ADD KEY `order_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indexes for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payment_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chanel_locale_attribute_value_index_unique` (`channel`,`locale`,`attribute_id`,`product_id`),
  ADD UNIQUE KEY `product_attribute_values_unique_id_unique` (`unique_id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_bundle_options_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundle_option_products_product_id_bundle_option_id_unique` (`product_id`,`product_bundle_option_id`),
  ADD KEY `product_bundle_option_products_product_bundle_option_id_foreign` (`product_bundle_option_id`);

--
-- Indexes for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_bundle_option_translations_option_id_locale_unique` (`product_bundle_option_id`,`locale`),
  ADD UNIQUE KEY `bundle_option_translations_locale_label_bundle_option_id_unique` (`locale`,`label`,`product_bundle_option_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD UNIQUE KEY `product_categories_product_id_category_id_unique` (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_channels`
--
ALTER TABLE `product_channels`
  ADD UNIQUE KEY `product_channels_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD UNIQUE KEY `product_cross_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_cross_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_customer_group_prices_unique_id_unique` (`unique_id`),
  ADD KEY `product_customer_group_prices_product_id_foreign` (`product_id`),
  ADD KEY `product_customer_group_prices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_links_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_translations_link_id_foreign` (`product_downloadable_link_id`);

--
-- Indexes for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_samples_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sample_translations_sample_id_foreign` (`product_downloadable_sample_id`);

--
-- Indexes for table `product_flat`
--
ALTER TABLE `product_flat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_flat_unique_index` (`product_id`,`channel`,`locale`),
  ADD KEY `product_flat_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `product_flat_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_grouped_products_product_id_associated_product_id_unique` (`product_id`,`associated_product_id`),
  ADD KEY `product_grouped_products_associated_product_id_foreign` (`associated_product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_source_vendor_index_unique` (`product_id`,`inventory_source_id`,`vendor_id`),
  ADD KEY `product_inventories_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_inventory_indices_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_inventory_indices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_ordered_inventories_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_ordered_inventories_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price_indices_product_id_customer_group_id_channel_id_unique` (`product_id`,`customer_group_id`,`channel_id`),
  ADD KEY `product_price_indices_channel_id_foreign` (`channel_id`),
  ADD KEY `product_price_indices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `product_relations`
--
ALTER TABLE `product_relations`
  ADD UNIQUE KEY `product_relations_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_relations_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_review_images_review_id_foreign` (`review_id`);

--
-- Indexes for table `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD UNIQUE KEY `product_super_attributes_product_id_attribute_id_unique` (`product_id`,`attribute_id`),
  ADD KEY `product_super_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD UNIQUE KEY `product_up_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_up_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_videos_product_id_foreign` (`product_id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_order_id_foreign` (`order_id`);

--
-- Indexes for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_items_parent_id_foreign` (`parent_id`),
  ADD KEY `refund_items_order_item_id_foreign` (`order_item_id`),
  ADD KEY `refund_items_refund_id_foreign` (`refund_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_terms_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_items_shipment_id_foreign` (`shipment_id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribers_list_customer_id_foreign` (`customer_id`),
  ADD KEY `subscribers_list_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `tax_categories`
--
ALTER TABLE `tax_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_categories_code_unique` (`code`);

--
-- Indexes for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_map_index_unique` (`tax_category_id`,`tax_rate_id`),
  ADD KEY `tax_categories_tax_rates_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rates_identifier_unique` (`identifier`);

--
-- Indexes for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customizations_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customization_translations_theme_customization_id_foreign` (`theme_customization_id`);

--
-- Indexes for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  ADD KEY `visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`),
  ADD KEY `visits_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_items_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_items_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_items_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `attribute_families`
--
ALTER TABLE `attribute_families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_payment`
--
ALTER TABLE `cart_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cart_rules`
--
ALTER TABLE `cart_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `catalog_rules`
--
ALTER TABLE `catalog_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `channel_translations`
--
ALTER TABLE `channel_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `compare_items`
--
ALTER TABLE `compare_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_config`
--
ALTER TABLE `core_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_notes`
--
ALTER TABLE `customer_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_batches`
--
ALTER TABLE `import_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_sources`
--
ALTER TABLE `inventory_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locales`
--
ALTER TABLE `locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_events`
--
ALTER TABLE `marketing_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketing_templates`
--
ALTER TABLE `marketing_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_comments`
--
ALTER TABLE `order_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1201;

--
-- AUTO_INCREMENT for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_flat`
--
ALTER TABLE `product_flat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_videos`
--
ALTER TABLE `product_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refund_items`
--
ALTER TABLE `refund_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipment_items`
--
ALTER TABLE `shipment_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_categories`
--
ALTER TABLE `tax_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_parent_address_id_foreign` FOREIGN KEY (`parent_address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD CONSTRAINT `attribute_groups_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD CONSTRAINT `attribute_group_mappings_attribute_group_id_foreign` FOREIGN KEY (`attribute_group_id`) REFERENCES `attribute_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_group_mappings_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD CONSTRAINT `attribute_option_translations_attribute_option_id_foreign` FOREIGN KEY (`attribute_option_id`) REFERENCES `attribute_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Constraints for table `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD CONSTRAINT `cart_payment_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD CONSTRAINT `cart_rule_channels_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD CONSTRAINT `cart_rule_coupons_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD CONSTRAINT `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` FOREIGN KEY (`cart_rule_coupon_id`) REFERENCES `cart_rule_coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_coupon_usage_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD CONSTRAINT `cart_rule_customers_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD CONSTRAINT `cart_rule_customer_groups_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD CONSTRAINT `cart_rule_translations_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD CONSTRAINT `cart_shipping_rates_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD CONSTRAINT `catalog_rule_channels_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD CONSTRAINT `catalog_rule_customer_groups_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD CONSTRAINT `catalog_rule_products_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD CONSTRAINT `catalog_rule_product_prices_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD CONSTRAINT `category_filterable_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_filterable_attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_translations_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channels`
--
ALTER TABLE `channels`
  ADD CONSTRAINT `channels_base_currency_id_foreign` FOREIGN KEY (`base_currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `channels_default_locale_id_foreign` FOREIGN KEY (`default_locale_id`) REFERENCES `locales` (`id`),
  ADD CONSTRAINT `channels_root_category_id_foreign` FOREIGN KEY (`root_category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD CONSTRAINT `channel_currencies_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_currencies_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD CONSTRAINT `channel_inventory_sources_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_inventory_sources_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD CONSTRAINT `channel_locales_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_locales_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD CONSTRAINT `channel_translations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD CONSTRAINT `cms_page_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cms_page_channels_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD CONSTRAINT `cms_page_translations_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `compare_items`
--
ALTER TABLE `compare_items`
  ADD CONSTRAINT `compare_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compare_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `country_states`
--
ALTER TABLE `country_states`
  ADD CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD CONSTRAINT `country_state_translations_country_state_id_foreign` FOREIGN KEY (`country_state_id`) REFERENCES `country_states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD CONSTRAINT `currency_exchange_rates_target_currency_foreign` FOREIGN KEY (`target_currency`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `customers_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD CONSTRAINT `customer_notes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD CONSTRAINT `customer_social_accounts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `downloadable_link_purchased_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `import_batches`
--
ALTER TABLE `import_batches`
  ADD CONSTRAINT `import_batches_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD CONSTRAINT `marketing_campaigns_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_event_id_foreign` FOREIGN KEY (`marketing_event_id`) REFERENCES `marketing_events` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_template_id_foreign` FOREIGN KEY (`marketing_template_id`) REFERENCES `marketing_templates` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_comments`
--
ALTER TABLE `order_comments`
  ADD CONSTRAINT `order_comments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Constraints for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD CONSTRAINT `order_payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD CONSTRAINT `order_transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`),
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD CONSTRAINT `product_bundle_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD CONSTRAINT `product_bundle_option_products_product_bundle_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_bundle_option_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD CONSTRAINT `product_bundle_option_translations_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_channels`
--
ALTER TABLE `product_channels`
  ADD CONSTRAINT `product_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_channels_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD CONSTRAINT `product_cross_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_cross_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD CONSTRAINT `product_customer_group_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_customer_group_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD CONSTRAINT `product_downloadable_links_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD CONSTRAINT `link_translations_link_id_foreign` FOREIGN KEY (`product_downloadable_link_id`) REFERENCES `product_downloadable_links` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD CONSTRAINT `product_downloadable_samples_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD CONSTRAINT `sample_translations_sample_id_foreign` FOREIGN KEY (`product_downloadable_sample_id`) REFERENCES `product_downloadable_samples` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_flat`
--
ALTER TABLE `product_flat`
  ADD CONSTRAINT `product_flat_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`),
  ADD CONSTRAINT `product_flat_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_flat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_flat_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD CONSTRAINT `product_grouped_products_associated_product_id_foreign` FOREIGN KEY (`associated_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_grouped_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `product_inventories_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD CONSTRAINT `product_inventory_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventory_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD CONSTRAINT `product_ordered_inventories_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ordered_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD CONSTRAINT `product_price_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_relations`
--
ALTER TABLE `product_relations`
  ADD CONSTRAINT `product_relations_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_relations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD CONSTRAINT `product_review_images_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD CONSTRAINT `product_super_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_super_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD CONSTRAINT `product_up_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_up_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD CONSTRAINT `product_videos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD CONSTRAINT `refund_items_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `refund_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_refund_id_foreign` FOREIGN KEY (`refund_id`) REFERENCES `refunds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD CONSTRAINT `search_terms_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD CONSTRAINT `shipment_items_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD CONSTRAINT `subscribers_list_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribers_list_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD CONSTRAINT `tax_categories_tax_rates_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tax_categories_tax_rates_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD CONSTRAINT `theme_customizations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD CONSTRAINT `theme_customization_translations_theme_customization_id_foreign` FOREIGN KEY (`theme_customization_id`) REFERENCES `theme_customizations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

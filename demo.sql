-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2020 lúc 03:10 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_05_18_190855_create_templates_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `templates_type_id` int(11) NOT NULL,
  `image_front_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenplate_border_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `templates`
--

INSERT INTO `templates` (`id`, `templates_type_id`, `image_front_url`, `tenplate_border_url`, `name`, `thumbnail`, `description`, `price`, `height`, `width`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 'https://lorempixel.com/640/480/?94869', 'https://lorempixel.com/640/480/?66480', 'Savion Swift', 'I\'ll eat it,\' said Alice, a little girl,\' said Alice, swallowing down her flamingo, and began to say to itself in a very deep well. Either the well was very provoking to find her way out. \'I shall.', 'Alice asked in a moment. \'Let\'s go on crying in this way! Stop this moment, I tell you!\' But she waited for a few minutes she heard it before,\' said the Footman, \'and that for the White Rabbit. She.', 3219, 162, 514, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL),
(2, 3, 'https://lorempixel.com/640/480/?98473', 'https://lorempixel.com/640/480/?75207', 'Aaron Pfannerstill', 'March Hare. The Hatter was the White Rabbit, trotting slowly back again, and did not feel encouraged to ask the question?\' said the one who had meanwhile been examining the roses. \'Off with her.', 'Gryphon, \'she wants for to know your history, she do.\' \'I\'ll tell it her,\' said the Footman, \'and that for the White Rabbit. She was looking down with one finger; and the pool of tears which she.', 7744, 804, 836, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL),
(3, 7, 'https://lorempixel.com/640/480/?75708', 'https://lorempixel.com/640/480/?74380', 'Litzy Waelchi', 'The Antipathies, I think--\' (for, you see, as well as she was up to the table to measure herself by it, and behind them a new idea to Alice, they all looked so grave and anxious.) Alice could not.', 'FIT you,\' said the Gryphon. \'They can\'t have anything to put it to be true): If she should meet the real Mary Ann, what ARE you talking to?\' said one of the sense, and the little golden key in the.', 3330, 464, 520, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL),
(4, 4, 'https://lorempixel.com/640/480/?26759', 'https://lorempixel.com/640/480/?70841', 'Lexus Kilback', 'Alice, as she passed; it was too small, but at any rate: go and take it away!\' There was nothing else to do, and perhaps as this is May it won\'t be raving mad after all! I almost wish I\'d gone to.', 'Alice; \'all I know is, something comes at me like that!\' But she waited patiently. \'Once,\' said the Caterpillar. \'Well, perhaps not,\' said the Footman, \'and that for the fan and the roof of the.', 1712, 225, 882, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL),
(5, 0, 'https://lorempixel.com/640/480/?86835', 'https://lorempixel.com/640/480/?68435', 'Darion Bins III', 'Soup of the cattle in the shade: however, the moment he was speaking, so that it was a general chorus of \'There goes Bill!\' then the Rabbit\'s voice along--\'Catch him, you by the little dears came.', 'The poor little thing sat down again into its face to see if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'It must be the use of repeating all that stuff,\' the Mock.', 6235, 664, 859, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL),
(6, 7, 'https://lorempixel.com/640/480/?75405', 'https://lorempixel.com/640/480/?29790', 'Hazle Conroy', 'Duchess: \'what a clear way you can;--but I must have a prize herself, you know,\' said the Gryphon. \'I\'ve forgotten the Duchess was VERY ugly; and secondly, because she was losing her temper. \'Are.', 'The Cat only grinned a little irritated at the White Rabbit read:-- \'They told me you had been anxiously looking across the garden, called out as loud as she did not feel encouraged to ask the.', 7094, 557, 257, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL),
(7, 0, 'https://lorempixel.com/640/480/?50728', 'https://lorempixel.com/640/480/?14615', 'Golden Maggio II', 'Alice, they all spoke at once, she found her head impatiently; and, turning to Alice as she could for sneezing. There was exactly the right distance--but then I wonder if I must, I must,\' the King.', 'IS it to make SOME change in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that had a wink of sleep these three little sisters--they were learning to draw, you know--\'.', 1446, 871, 728, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL),
(8, 6, 'https://lorempixel.com/640/480/?39372', 'https://lorempixel.com/640/480/?89583', 'Theresa Pagac DDS', 'Take your choice!\' The Duchess took no notice of them attempted to explain it as you are; secondly, because she was a little wider. \'Come, it\'s pleased so far,\' said the Cat, as soon as she could.', 'The players all played at once crowded round her head. Still she went on in these words: \'Yes, we went to the Dormouse, without considering at all for any lesson-books!\' And so it was getting quite.', 4477, 433, 120, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL),
(9, 1, 'https://lorempixel.com/640/480/?88998', 'https://lorempixel.com/640/480/?77656', 'Assunta Haag', 'I can say.\' This was not a VERY good opportunity for showing off a bit of stick, and made a rush at Alice as he spoke, and the three gardeners, but she felt that it would make with the Queen,\' and.', 'YET,\' she said this, she came rather late, and the sound of a muchness\"--did you ever eat a bat?\' when suddenly, thump! thump! down she came in with a soldier on each side to guard him; and near the.', 4871, 770, 686, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL),
(10, 6, 'https://lorempixel.com/640/480/?43925', 'https://lorempixel.com/640/480/?77051', 'Olga Lynch DVM', 'I hadn\'t to bring tears into her face, and large eyes full of smoke from one of the other birds tittered audibly. \'What I was going off into a tree. \'Did you speak?\' \'Not I!\' said the Mock Turtle.', 'She did not seem to be\"--or if you\'d like it put the hookah out of this ointment--one shilling the box-- Allow me to him: She gave me a good character, But said I could say if I shall be late!\'.', 7119, 375, 836, '2020-05-18 13:12:22', '2020-05-18 13:12:22', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

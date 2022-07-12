-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2022 at 03:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LaraSume`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taglines` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `avatar`, `cover`, `email`, `phone`, `address`, `description`, `taglines`, `social_links`, `cv`, `created_at`, `updated_at`) VALUES
(1, 'Arsalan Arghavan', 'assets/common/img/avatar/o8Gnj047F1_1657627499.jpg', 'assets/common/img/cover/default.png', 'info@ArsalanArghavan.ir', '+98 998 108 1873', 'Tehran, Iran', 'I\'m Arsalan, I was born in 2000 in Iran, i\'m a Backend Web Developer and I\'m in Love with Technology! my uncle taught me how to Make a blog when i was 6 Y/O, Since then i made some blogs for my Friends an Classmates and that was a begin to my Web Developing Passion.\n  I know Laravel + Vue.JS (I Love this Complex!) and i love learning new Skills and languages, it feels like Power for me, So Learning about Computer is fun for me and i never get Tired From That!', '[\"I am a Web Developer\",\"I am a FullStack Developer\",\"I am a Software Engineer\"]', '[{\"title\":\"Mail\",\"iconClass\":\"far fa-envelope\",\"link\":\"mailto:info@arsalanarghavan.ir\"},{\"title\":\"LinkedIn\",\"link\":\"https:\\/\\/www.linkedin.com\\/in\\/arsalan-arghavan\\/\",\"iconClass\":\"fab fa-linkedin-in\"},{\"title\":\"Instagram\",\"link\":\"https:\\/\\/www.instagram.com\\/Arsalan._.Arghavan\",\"iconClass\":\"fab fa-instagram\"},{\"title\":\"Github\",\"link\":\"https:\\/\\/github.com\\/arsalanarghavan\",\"iconClass\":\"fab fa-github\"},{\"title\":\"Twitter\",\"link\":\"https:\\/\\/twitter.com\\/ArsalanArghavan\",\"iconClass\":\"fab fa-twitter\"},{\"title\":\"Telegram\",\"link\":\"https:\\/\\/t.me\\/Arsalan_Arghavan\",\"iconClass\":\"fab fa-telegram\"}]', 'assets/common/cv/default.pdf', '2022-07-12 07:11:12', '2022-07-12 07:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'info@arsalanarghavan.ir', '$2y$10$SFhIKNis0rWCqNI0.n0FLORrrf0ZPYVJWr52qMgRoAmAmUi9RkcqG', '2022-07-12 07:11:11', '2022-07-12 07:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cgpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thesis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `institution`, `period`, `degree`, `cgpa`, `department`, `thesis`, `created_at`, `updated_at`) VALUES
(1, 'Technical and Vocational University', '2021/Now', 'Bachelor\'s Degree', '--', 'Information Technology', '--', '2022-07-12 07:11:12', '2022-07-12 07:47:43'),
(2, 'Technical and Vocational University', '2019/2021', 'Associate Degree', '17,90 of 20', 'Software Engineering', 'Laravel Supermarket Project', '2022-07-12 07:11:12', '2022-07-12 07:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `company`, `period`, `position`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Webina Development Team', '2018-Present', 'Founder, Back-end Developer', 'At 2019 i tested so many new Technologies like Laravel, Django, Golang and more, since then i\'m a full time Laravel Backend Developer at Webina Team and MixitWeb Co.', '2022-07-12 07:11:13', '2022-07-12 07:49:34'),
(2, 'Freelancer', '2013-2020', 'Wordpress Developer', 'Since 2013 i was Working as a Wordpress Developer, i ran a Team website named Fandoq.dev from 2019 to 2020 and renamed it to Webina.dev from 2020 untill now.', '2022-07-12 07:11:13', '2022-07-12 07:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `replied` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'reply back status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `body`, `replied`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Lauriane O\'Hara', 'dave52@hotmail.com', 'Sunt et amet est ab omnis.', 'Voluptates error voluptas quia nisi incidunt sint. Quasi ut aut vel labore tempore odit. Assumenda explicabo sequi ut rerum ipsam inventore.', 1, '2022-07-09 00:23:20', '2022-07-12 07:11:13'),
(2, 'Reyes Kunze', 'chelsea.beier@ledner.org', 'Quam non sit ducimus architecto natus.', 'Voluptatem quae quas modi et facilis architecto. Velit quae quo libero commodi omnis libero. Ea quas excepturi dolor architecto vitae.', 1, '2022-06-16 09:15:33', '2022-07-12 07:11:13'),
(3, 'Mrs. Janice Kovacek PhD', 'leannon.ansley@zboncak.com', 'Similique eum eos laboriosam sit.', 'Facere nam placeat facere pariatur qui numquam. Deleniti ut eum dolor optio. Doloremque et ea illum.', 1, '2022-07-11 22:04:26', '2022-07-12 07:11:13'),
(4, 'Jacky Kuphal', 'kaia05@yahoo.com', 'In beatae labore animi eos nam eos.', 'Illo earum totam qui amet mollitia fugiat. Magni eos voluptatem accusamus. Quam est ut iusto esse omnis similique. Eos quia est corporis soluta maxime.', 0, '2022-07-01 12:51:14', '2022-07-12 07:11:13'),
(5, 'Tressa Hermann II', 'cathrine.emmerich@lemke.com', 'A qui incidunt optio ea sint quis similique.', 'Temporibus ratione velit eligendi sint ut. Voluptas corporis in est. Minima corporis delectus nobis voluptas. Consequatur doloribus quis nemo maxime quae.', 0, '2022-06-18 11:20:58', '2022-07-12 07:11:13'),
(6, 'Dr. Elvie Moore', 'mrodriguez@jaskolski.org', 'Voluptas illo quos optio quos pariatur consequatur numquam.', 'Sequi quasi aperiam quam non suscipit. Consequuntur consectetur non ab sed voluptatem. Consequatur facere sunt possimus ut pariatur eveniet quia. Sequi explicabo qui eius eum rerum tempore dolorem.', 1, '2022-06-28 02:37:16', '2022-07-12 07:11:13'),
(7, 'Tristin Littel', 'osporer@mann.info', 'Ea a debitis fuga architecto et repellat.', 'Quia consequuntur inventore adipisci omnis totam et nihil qui. Eligendi suscipit itaque ratione. Exercitationem rerum sunt ipsum perspiciatis dicta. Tempora facere eaque earum dolores.', 1, '2022-06-19 05:32:29', '2022-07-12 07:11:13'),
(8, 'Prof. Mozelle Koch', 'funk.cary@mcclure.com', 'Est veniam quibusdam quam.', 'Quia dolorem cum delectus molestias voluptatibus ipsa. Sit doloribus sit non qui qui dolor quidem.', 1, '2022-07-10 20:47:15', '2022-07-12 07:11:13'),
(9, 'Linda Rutherford', 'oroob@gmail.com', 'Omnis libero fugit inventore.', 'Magnam quasi et itaque expedita esse iusto accusamus quibusdam. Possimus nam molestiae maiores rerum commodi. Eaque sint animi exercitationem aut non.', 1, '2022-06-16 21:42:40', '2022-07-12 07:11:13'),
(10, 'Prof. Lenny Pagac', 'maybelle29@rutherford.com', 'Voluptas est ut molestiae sit tempore libero molestiae.', 'Iusto dolores deleniti suscipit. Dolorem debitis et optio cumque dignissimos sunt. Dolor aut sint repellendus aut quas et suscipit.', 1, '2022-07-04 03:20:01', '2022-07-12 07:11:13'),
(11, 'Nolan Kessler', 'catalina.crona@gmail.com', 'Soluta nisi fugit officia cum.', 'Amet numquam itaque expedita veritatis sed rerum. In et fuga est quisquam.', 1, '2022-07-05 14:26:40', '2022-07-12 07:11:13'),
(12, 'Verona Deckow', 'emerald19@greenholt.com', 'Corporis quo quia quibusdam repellat.', 'Quo maiores ea ab sequi eos. Quia voluptas et voluptate error minus. Quia impedit perferendis consequatur aliquam ea saepe.', 1, '2022-07-03 12:49:25', '2022-07-12 07:11:13'),
(13, 'Audra Orn', 'zreinger@wyman.net', 'Eos incidunt eligendi aut magni.', 'Beatae enim sapiente minima neque illo. Laboriosam consequatur error optio dolores. Omnis rem quo eligendi cumque. Debitis quia earum architecto velit. Perferendis itaque voluptas nulla.', 1, '2022-07-09 17:32:08', '2022-07-12 07:11:13'),
(14, 'Rocio Rippin', 'schulist.lon@dare.info', 'Exercitationem assumenda dicta nostrum.', 'Rem ut quasi omnis soluta rerum. Quaerat ut alias quidem. Vero et aut tenetur ad minima. Quia asperiores distinctio odio laudantium.', 1, '2022-06-26 19:31:11', '2022-07-12 07:11:13'),
(15, 'Ms. Pinkie Harvey', 'cassie.nicolas@oconner.org', 'Recusandae consequatur non modi autem nisi quaerat sapiente.', 'Soluta sunt et dolorum soluta dolorum consectetur modi tempora. Et consequuntur aut dolore est et ut minus. Recusandae voluptatum aut hic modi aut nemo non.', 0, '2022-07-11 22:40:04', '2022-07-12 07:11:13'),
(16, 'Jayson Eichmann', 'jazmyn.hodkiewicz@hills.info', 'Ut maiores quis exercitationem id ad.', 'Veritatis voluptate nulla facere beatae rem veritatis. Tempore repellendus doloribus nobis fuga aut quo similique. Corrupti ut modi eum modi unde veniam dolore.', 1, '2022-07-01 12:04:15', '2022-07-12 07:11:13'),
(17, 'Elvera Kassulke', 'oleta.bahringer@schmidt.com', 'Atque consequatur assumenda itaque deleniti perspiciatis doloremque et.', 'Repellendus consequatur tenetur distinctio assumenda quam est deserunt et. Doloribus et aut aliquid autem. Eligendi consequatur molestias quia et quia in voluptatem.', 1, '2022-06-20 07:54:24', '2022-07-12 07:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_16_170627_create_settings_table', 1),
(2, '2021_03_16_170856_create_admins_table', 1),
(3, '2021_03_16_172519_create_about_table', 1),
(4, '2021_03_17_064942_create_admin_password_resets_table', 1),
(5, '2021_04_06_071031_create_portfolio_configs_table', 1),
(6, '2021_04_11_160456_create_education_table', 1),
(7, '2021_04_12_120441_create_skills_table', 1),
(8, '2021_04_13_174019_create_experiences_table', 1),
(9, '2021_04_14_075437_create_projects_table', 1),
(10, '2021_04_14_113222_create_services_table', 1),
(11, '2021_04_15_213517_create_visitors_table', 1),
(12, '2021_04_16_104901_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_configs`
--

CREATE TABLE `portfolio_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` int(11) NOT NULL,
  `setting_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_configs`
--

INSERT INTO `portfolio_configs` (`id`, `setting_key`, `setting_value`, `default_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'procyon', 'procyon', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(2, 2, '#c51162', '#1890ff', '2022-07-12 07:11:12', '2022-07-12 07:19:35'),
(3, 3, '', '', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(4, 4, '0', '0', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(5, 5, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(6, 6, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(7, 7, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(8, 8, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(9, 9, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(10, 10, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(11, 11, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(12, 12, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(13, 19, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(14, 20, '1', '1', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(15, 13, '', '', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(16, 14, '', '', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(17, 15, 'Arsalan Arghavan Resume', '', '2022-07-12 07:11:12', '2022-07-12 08:02:42'),
(18, 16, '', '', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(19, 17, '', '', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(20, 18, '', '', '2022-07-12 07:11:12', '2022-07-12 07:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `categories`, `thumbnail`, `images`, `details`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Demo Project 1', '[\"personal\"]', 'assets/common/img/projects/demo_project_1_1.png', '[\"assets\\/common\\/img\\/projects\\/demo_project_1_1.png\",\"assets\\/common\\/img\\/projects\\/demo_project_1_2.png\"]', 'Quod porro adipisci neque libero velit. Iste qui maxime porro id quam consequatur qui nam. In et qui rerum qui autem quia. Accusamus consequuntur quidem non est est atque sunt.', 'https://www.youtube.com', '2022-07-12 07:11:13', '2022-07-12 07:11:13'),
(2, 'Demo Project 2', '[\"professional\"]', 'assets/common/img/projects/demo_project_2_1.png', '[\"assets\\/common\\/img\\/projects\\/demo_project_2_1.png\",\"assets\\/common\\/img\\/projects\\/demo_project_2_2.png\"]', 'Est at maiores corporis architecto corporis. Ut est quisquam aut cum atque. Omnis repellendus ut sapiente dolores exercitationem maiores. Mollitia hic voluptatibus temporibus vel perspiciatis velit.', 'https://www.facebook.com', '2022-07-12 07:11:13', '2022-07-12 07:11:13'),
(3, 'Demo Project 3', '[\"personal\"]', 'assets/common/img/projects/demo_project_3_1.png', '[\"assets\\/common\\/img\\/projects\\/demo_project_3_1.png\",\"assets\\/common\\/img\\/projects\\/demo_project_3_2.png\"]', 'Et rerum ratione est sed hic eaque. Ea voluptatem similique dolorum ipsam eos sapiente nihil quaerat. Mollitia dolorem officiis atque et autem. Quidem iste reprehenderit atque et hic.', 'https://www.linkedin.com', '2022-07-12 07:11:13', '2022-07-12 07:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'fas fa-code', 'Website programming using Laravel and Vue.js with the best quality and highest speed with high security.', '2022-07-12 07:11:13', '2022-07-12 07:57:58'),
(2, 'Wordpress Web Design', 'fab fa-wordpress', 'Website design using WordPress professionally and with easy management, along with training to work with the site.', '2022-07-12 07:11:13', '2022-07-12 07:58:49'),
(3, 'Consultation', 'fas fa-lightbulb', 'Professional advice to increase the sales of your team or business along with the necessary training.', '2022-07-12 07:11:13', '2022-07-12 08:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` int(11) NOT NULL,
  `setting_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `default_value`, `created_at`, `updated_at`) VALUES
(1, 2, '#673ab7', '#1890ff', '2022-07-12 07:11:12', '2022-07-12 07:19:06'),
(2, 3, '0', '0', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(3, 7, 'mix', 'mix', '2022-07-12 07:11:12', '2022-07-12 07:19:11'),
(4, 8, 'light', 'light', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(5, 9, 'light', 'light', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(6, 4, 'assets/common/img/logo/default.png', 'assets/common/img/logo/default.png', '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(7, 5, 'assets/common/img/favicon/default.png', 'assets/common/img/favicon/default.png', '2022-07-12 07:11:12', '2022-07-12 07:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proficiency` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `proficiency`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 100, '2022-07-12 07:11:12', '2022-07-12 07:11:12'),
(2, 'PHP', 100, '2022-07-12 07:11:13', '2022-07-12 07:11:13'),
(3, 'JavaScript', 70, '2022-07-12 07:11:13', '2022-07-12 07:51:08'),
(4, 'React.js', 30, '2022-07-12 07:11:13', '2022-07-12 07:51:32'),
(5, 'Vue.js', 70, '2022-07-12 07:11:13', '2022-07-12 07:51:25'),
(6, 'jQuery', 90, '2022-07-12 07:11:13', '2022-07-12 07:11:13'),
(7, 'MySQL', 90, '2022-07-12 07:11:13', '2022-07-12 07:11:13'),
(8, 'CSS', 90, '2022-07-12 07:11:13', '2022-07-12 07:11:13'),
(9, 'Node.js', 80, '2022-07-12 07:11:13', '2022-07-12 07:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT 1,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_desktop` tinyint(1) DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `tracking_id`, `is_new`, `ip`, `is_desktop`, `browser`, `platform`, `location`, `created_at`, `updated_at`) VALUES
(1, '4hHVRTgYGpnlYk6OoUvswzxhjjZt5H', 0, '204.31.72.134', 1, 'Chrome', 'iOS', 'Bangladesh', '2022-07-06 01:15:11', '2022-07-12 07:11:13'),
(2, '94xtem4sARFEsh4SluYebdDCoNYfHD', 1, '216.142.65.74', 0, 'Opera', 'Windows', 'United States Virgin Islands', '2022-07-08 17:11:48', '2022-07-12 07:11:13'),
(3, 'e3M5GSiZOZ0WUlNjaQtVOqO9GVq3dc', 0, '182.2.197.181', 1, 'Chrome', 'iOS', 'Slovakia (Slovak Republic)', '2022-07-02 21:38:15', '2022-07-12 07:11:13'),
(4, 'YSmfe8lzwEUV7TPEpEChhEKxZmVq1p', 1, '86.232.144.67', 1, 'Safari', 'iOS', 'Burundi', '2022-06-30 20:57:22', '2022-07-12 07:11:13'),
(5, 'OC82zFhMFdfSB58Id0FntLA7H3dZMg', 1, '110.247.61.161', 0, 'Safari', 'Windows', 'Cook Islands', '2022-06-16 00:24:43', '2022-07-12 07:11:13'),
(6, 'H8ZSwjIeur3P3UwEZeBVuaBc6NuZ9g', 0, '247.89.94.250', 1, 'Opera', 'Windows', 'Kiribati', '2022-06-21 17:51:51', '2022-07-12 07:11:13'),
(7, 'JemwwjrVk9fN2RflPHLBQRFb1Xm232', 1, '42.184.205.193', 1, 'Safari', 'AndroidOS', 'Guam', '2022-06-26 06:25:55', '2022-07-12 07:11:13'),
(8, 'cSnI9u2nAVUfGzAO4cVwqmNXtUcVjM', 1, '219.82.65.38', 1, 'Firefox', 'OS X', 'Guatemala', '2022-06-13 09:46:43', '2022-07-12 07:11:13'),
(9, 'k0BNcjfUSFl8NNySWJT48No7ALLX4V', 1, '63.144.149.41', 1, 'Opera', 'OS X', 'Ireland', '2022-06-21 11:31:51', '2022-07-12 07:11:13'),
(10, 'QzoM5hpITEevnw3HtiatqjZap1GME5', 0, '49.83.243.132', 1, 'Chrome', 'Windows', 'Holy See (Vatican City State)', '2022-07-05 22:34:59', '2022-07-12 07:11:13'),
(11, 'sncLaDwPOsRQaNys1BXaZ2Gvl2HVMy', 1, '225.123.53.241', 1, 'Chrome', 'iOS', 'Canada', '2022-06-29 00:47:04', '2022-07-12 07:11:13'),
(12, 'plWXbWfLgAmXmIXcQzlqAnSkeSdPan', 1, '60.230.64.104', 0, 'Edge', 'AndroidOS', 'Portugal', '2022-07-09 21:38:08', '2022-07-12 07:11:13'),
(13, 'B6NNKQHhjSoxI41ddHLNPpi6I7fLQJ', 1, '102.15.136.43', 1, 'Edge', 'OS X', 'Portugal', '2022-06-13 01:50:28', '2022-07-12 07:11:13'),
(14, 'LA0xb1Zw9IeQeN5JfsNkTWO2LxR5tI', 1, '82.189.197.247', 1, 'Opera', 'OS X', 'Burkina Faso', '2022-07-02 14:25:53', '2022-07-12 07:11:13'),
(15, '9YNa5q4bvuKd5fzp2m2zC6MubLZjnM', 0, '189.176.99.172', 0, 'Chrome', 'AndroidOS', 'Saint Pierre and Miquelon', '2022-06-24 13:53:47', '2022-07-12 07:11:13'),
(16, 'ZnT3GlAboIRNYddmb5dmIKmxUmx7e6', 1, '220.122.84.228', 0, 'Chrome', 'AndroidOS', 'Brazil', '2022-07-12 06:54:30', '2022-07-12 07:11:13'),
(17, 'MhfMh1nPQsqGtvBdd3WXZsyp2PcHCq', 1, '187.255.36.12', 1, 'Chrome', 'iOS', 'Antarctica (the territory South of 60 deg S)', '2022-06-16 06:12:33', '2022-07-12 07:11:13'),
(18, 'doGGH1J1eDGfj8Zxr3YqCQpPnRbhJS', 0, '168.11.5.245', 1, 'Firefox', 'AndroidOS', 'Philippines', '2022-06-12 08:31:20', '2022-07-12 07:11:13'),
(19, 'llWMsb2n2YusXHpviAimI7loDv4qP0', 1, '159.255.2.41', 0, 'Opera', 'OS X', 'Fiji', '2022-06-22 20:42:31', '2022-07-12 07:11:13'),
(20, 'q4wBRMeFyaetuOzFagjrRYEIAdj4Hz', 0, '215.50.251.215', 1, 'Safari', 'iOS', 'Paraguay', '2022-06-18 17:57:14', '2022-07-12 07:11:13'),
(21, 'ZExEVwZ8lVXl4ZaCJMIBBTeCypV0rE', 1, '3.113.105.14', 1, 'Opera', 'AndroidOS', 'Saint Martin', '2022-06-21 18:17:14', '2022-07-12 07:11:13'),
(22, 'wd6kKSfg0uif29QyHGbmF4TGSTFvU7', 1, '191.18.239.12', 0, 'Chrome', 'Windows', 'Luxembourg', '2022-06-13 15:18:13', '2022-07-12 07:11:13'),
(23, 'yDIKHnZQqWZV192WaXyx5WqBChCUvk', 1, '91.123.182.4', 1, 'Chrome', 'iOS', 'Equatorial Guinea', '2022-06-17 17:24:28', '2022-07-12 07:11:13'),
(24, 'WjISTyf37HTN7TwSlROZIeXFxvNcW4', 0, '240.106.203.89', 1, 'Opera', 'AndroidOS', 'Poland', '2022-06-20 18:45:12', '2022-07-12 07:11:13'),
(25, 'pmTAAZhwdCKyhucdYwA1fgcrosQE92', 1, '243.124.226.20', 0, 'Chrome', 'AndroidOS', 'Sudan', '2022-07-04 23:49:43', '2022-07-12 07:11:13'),
(26, 'AiDsH05G2vaIMFrUMFxQxJrI7XOCzg', 0, '117.76.87.16', 0, 'Firefox', 'iOS', 'Falkland Islands (Malvinas)', '2022-07-09 14:43:53', '2022-07-12 07:11:13'),
(27, 'drZOBkAc6JUkzT2dXPUArViSuHOkBT', 1, '205.219.3.63', 1, 'Safari', 'iOS', 'Guyana', '2022-07-03 06:28:29', '2022-07-12 07:11:13'),
(28, 'TJQ8xqBe7sWWS6dfZq7YWDDBtMt3Fs', 1, '125.203.148.186', 1, 'Safari', 'Windows', 'Macedonia', '2022-06-17 18:21:40', '2022-07-12 07:11:13'),
(29, 'DAbwtfm58QA4U1fjJXdZfo7ANzKDV9', 0, '37.45.137.82', 1, 'Edge', 'iOS', 'Aruba', '2022-06-16 16:07:38', '2022-07-12 07:11:13'),
(30, 'LMu2nkWnoqujsy1TTlLIEw6VTPVn6K', 1, '179.97.129.222', 1, 'Safari', 'OS X', 'Romania', '2022-07-11 20:06:21', '2022-07-12 07:11:13'),
(31, 'gIt0yOOItK9u6crTG7ghuuqbrLmml2', 1, '25.128.97.250', 1, 'Firefox', 'OS X', 'Gambia', '2022-07-09 05:02:43', '2022-07-12 07:11:13'),
(32, 'zPXA1TvA1C4BQoHTwur7V14VEQvEvf', 0, '250.25.37.13', 1, 'Opera', 'iOS', 'Luxembourg', '2022-07-03 14:54:34', '2022-07-12 07:11:13'),
(33, 'uhfhF6vdkvCByTHMVx1FZIGIoj81Jc', 0, '231.178.238.85', 1, 'Firefox', 'OS X', 'Bolivia', '2022-07-02 13:27:35', '2022-07-12 07:11:13'),
(34, 'oNzefrkxNU8h7mc6YT28lE1YYRsYDq', 1, '216.249.104.179', 1, 'Edge', 'iOS', 'Madagascar', '2022-06-29 16:30:25', '2022-07-12 07:11:13'),
(35, 'sQZKtXwzkAWTFueK82T3GcNOoyrc5C', 0, '211.132.82.209', 1, 'Firefox', 'AndroidOS', 'Holy See (Vatican City State)', '2022-06-24 05:49:59', '2022-07-12 07:11:13'),
(36, 'y3lWxttwu4i2c4JmaIRlD15HDv039s', 0, '67.145.89.231', 0, 'Safari', 'OS X', 'Eritrea', '2022-07-05 16:11:27', '2022-07-12 07:11:13'),
(37, 'X7bYWAd0LxdRNULuquzauCTJmqBGrN', 0, '213.126.116.49', 1, 'Edge', 'Windows', 'Saint Helena', '2022-07-08 07:02:44', '2022-07-12 07:11:13'),
(38, 'f4vleY5R5Jqou3nS881iXirG83nm3S', 1, '1.128.105.196', 0, 'Safari', 'AndroidOS', 'Wallis and Futuna', '2022-06-13 02:59:34', '2022-07-12 07:11:13'),
(39, 'b1CgVDJuYYJhUJMRK8NV2OPwNhKmxR', 1, '87.139.234.124', 1, 'Opera', 'iOS', 'Korea', '2022-07-08 03:56:38', '2022-07-12 07:11:13'),
(40, 'A06HadgO4y8oFrS8r6Zu8GhENx9K68', 1, '75.102.155.154', 1, 'Firefox', 'AndroidOS', 'Niue', '2022-06-29 09:25:12', '2022-07-12 07:11:13'),
(41, 'EUyf1rnQCu7O50iP3ukMIG4AQvhep7', 1, '107.168.49.118', 1, 'Opera', 'Windows', 'San Marino', '2022-06-22 18:04:43', '2022-07-12 07:11:13'),
(42, '9A00j75QhLYgD0bdl8llsuFiZ05dGn', 1, '142.159.22.4', 1, 'Safari', 'AndroidOS', 'Malaysia', '2022-07-12 05:20:04', '2022-07-12 07:11:13'),
(43, 'L7NS0d35rODm2vwrtmJimh7H2lmJ5G', 0, '162.7.154.213', 1, 'Chrome', 'iOS', 'Turkey', '2022-06-30 08:56:29', '2022-07-12 07:11:13'),
(44, 'YoEGw5Pj24OuAWZ6S9pvO8MCdFcXnM', 0, '239.116.126.130', 0, 'Opera', 'AndroidOS', 'Western Sahara', '2022-07-05 05:04:37', '2022-07-12 07:11:13'),
(45, 'Uv2mwOWeWnUi7Iy7QvkSEY4q4KVLxC', 1, '132.44.196.37', 0, 'Firefox', 'OS X', 'Saint Vincent and the Grenadines', '2022-06-26 07:31:38', '2022-07-12 07:11:13'),
(46, 'EQ8ohBVl3Jls9loIzJFfm3Hp7iQY3x', 1, '127.163.221.190', 1, 'Safari', 'AndroidOS', 'Ghana', '2022-07-05 14:47:41', '2022-07-12 07:11:13'),
(47, 'xM9YjU0Z1ULWUNCkoX5IRjecUD0pIR', 0, '77.164.218.132', 1, 'Safari', 'iOS', 'Estonia', '2022-06-13 03:32:45', '2022-07-12 07:11:13'),
(48, 'P5oc6FDUIaEHiS612CwyMB0DdAaGJK', 1, '202.107.186.161', 1, 'Opera', 'Windows', 'Guam', '2022-06-16 18:32:13', '2022-07-12 07:11:13'),
(49, 'vpMhOQlIdDyet8jg3IeodbFmatc2zI', 0, '8.7.70.37', 1, 'Firefox', 'OS X', 'Papua New Guinea', '2022-06-17 13:08:44', '2022-07-12 07:11:13'),
(50, 'rm1ybLGJ0pFlzcJdBLcRQj0SGQd25V', 1, '225.255.154.19', 0, 'Opera', 'AndroidOS', 'Trinidad and Tobago', '2022-06-17 16:19:38', '2022-07-12 07:11:13'),
(51, '6ynNuvcgCIECPxbHUxbkyK1byf7oB1', 0, '180.163.155.14', 1, 'Firefox', 'AndroidOS', 'Russian Federation', '2022-06-26 03:25:39', '2022-07-12 07:11:13'),
(52, 'EtWw38siTAKqs0QbEp1xHa9dl7dxzW', 0, '104.77.156.52', 1, 'Firefox', 'Windows', 'Andorra', '2022-07-03 18:21:43', '2022-07-12 07:11:13'),
(53, 'TjnBNt2VuADwx2ijfKliY4FzU3DRBg', 1, '245.140.2.13', 0, 'Chrome', 'Windows', 'Saudi Arabia', '2022-07-01 01:34:14', '2022-07-12 07:11:13'),
(54, 'eSuO9yk4UFfb0M25LPfQlSYpFyuZKD', 1, '216.229.245.194', 1, 'Firefox', 'AndroidOS', 'Netherlands', '2022-06-27 00:16:30', '2022-07-12 07:11:13'),
(55, 's2raEaJV6nqcm2yWhhQTmteVhAPw47', 1, '120.17.70.179', 0, 'Chrome', 'AndroidOS', 'Morocco', '2022-06-14 06:02:17', '2022-07-12 07:11:13'),
(56, 'xoAg2mmqmCbpQYL3Y2GsgMLlwKZwBS', 0, '2.182.142.40', 1, 'Opera', 'Windows', 'Indonesia', '2022-06-29 07:52:36', '2022-07-12 07:11:13'),
(57, 'AIViAPXfEPAmBIWgNM48ngX51c1rqa', 0, '141.142.55.14', 0, 'Firefox', 'AndroidOS', 'Austria', '2022-06-15 03:42:16', '2022-07-12 07:11:13'),
(58, 'MsXMzLOHOs3Tp1JAp2d8KPXLvM1FuE', 0, '182.156.182.211', 0, 'Firefox', 'OS X', 'Northern Mariana Islands', '2022-06-27 12:36:04', '2022-07-12 07:11:13'),
(59, 'FE87WlgYS5wH1zJSI3ZWT1yHl3bZnt', 1, '196.125.47.127', 0, 'Opera', 'AndroidOS', 'Benin', '2022-06-19 18:49:05', '2022-07-12 07:11:13'),
(60, 'adysQbnbEAqZAkD47sU8j3MFmYLWva', 1, '247.232.97.164', 0, 'Opera', 'OS X', 'Micronesia', '2022-06-16 19:44:45', '2022-07-12 07:11:13'),
(61, '4am7oSricEHldHAATqDr98es7lqPvG', 1, '93.163.152.180', 1, 'Opera', 'Windows', 'Ghana', '2022-07-05 04:09:29', '2022-07-12 07:11:13'),
(62, 'eyUKoIzrSeCjWFXICbDuKokDhUcUxl', 1, '222.190.72.55', 1, 'Edge', 'Windows', 'Kyrgyz Republic', '2022-06-19 07:09:37', '2022-07-12 07:11:13'),
(63, 'QD8MK90VyKQhDsXw5Cyu8XP8aMIN5G', 0, '89.73.106.216', 0, 'Opera', 'OS X', 'Liberia', '2022-06-21 03:25:18', '2022-07-12 07:11:13'),
(64, 'QeGHefhjSpyUBs08cPqAs6t5NbOduJ', 1, '216.212.95.233', 0, 'Safari', 'Windows', 'India', '2022-06-23 03:28:03', '2022-07-12 07:11:13'),
(65, 'Jtju6UvKUhp4VEm88dLhq264hynpPj', 1, '150.36.183.25', 1, 'Firefox', 'iOS', 'Kyrgyz Republic', '2022-06-13 08:05:41', '2022-07-12 07:11:13'),
(66, 'u0Df7PEzxqSbyLZRUHlKcOIeulwNgI', 0, '45.91.206.195', 0, 'Firefox', 'OS X', 'Saudi Arabia', '2022-07-10 18:30:26', '2022-07-12 07:11:13'),
(67, 'Z1FnEu8eY7KnGsi6k6fmJvy00yLX53', 0, '115.59.89.144', 1, 'Chrome', 'OS X', 'Saint Martin', '2022-06-26 11:04:58', '2022-07-12 07:11:13'),
(68, 'piGuXDnJUX67kUnfntEAvQOxOXFTqF', 0, '8.162.129.217', 0, 'Chrome', 'Windows', 'Holy See (Vatican City State)', '2022-06-14 19:24:25', '2022-07-12 07:11:13'),
(69, 'dXoxRCva0xGhuPd9U8WbZ5eMdkICv4', 0, '57.85.13.20', 1, 'Firefox', 'AndroidOS', 'Saint Helena', '2022-06-26 03:19:30', '2022-07-12 07:11:13'),
(70, 'sJJjRBitqgZEXMaHKKeh4ruCVZlXwd', 1, '94.127.46.123', 0, 'Edge', 'OS X', 'Guatemala', '2022-07-05 02:16:44', '2022-07-12 07:11:13'),
(71, 'RorxQu0hQAp5lnbgbI8Vll6ZLBLU78', 0, '139.149.90.125', 1, 'Safari', 'OS X', 'Czech Republic', '2022-06-27 08:09:01', '2022-07-12 07:11:13'),
(72, 'uIRo2BBjdI8mTd4AdzXr7mK3UWz22E', 0, '102.47.43.53', 1, 'Firefox', 'AndroidOS', 'Zimbabwe', '2022-06-13 06:02:01', '2022-07-12 07:11:13'),
(73, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 1, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:11:49', '2022-07-12 07:11:49'),
(74, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:20:51', '2022-07-12 07:20:51'),
(75, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:20:59', '2022-07-12 07:20:59'),
(76, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:34:16', '2022-07-12 07:34:16'),
(77, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:35:06', '2022-07-12 07:35:06'),
(78, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:39:43', '2022-07-12 07:39:43'),
(79, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:40:08', '2022-07-12 07:40:08'),
(80, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:42:04', '2022-07-12 07:42:04'),
(81, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:43:24', '2022-07-12 07:43:24'),
(82, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:47:50', '2022-07-12 07:47:50'),
(83, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 07:55:14', '2022-07-12 07:55:14'),
(84, 'HRjqnvNWMmwkIFzXX1z17yomJ4rhwO', 0, '127.0.0.1', 1, 'Chrome', 'Linux', 'Unknown', '2022-07-12 08:01:21', '2022-07-12 08:01:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_configs`
--
ALTER TABLE `portfolio_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `portfolio_configs`
--
ALTER TABLE `portfolio_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

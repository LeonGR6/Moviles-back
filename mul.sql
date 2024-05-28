-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2024 a las 22:31:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mul`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Protein', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(2, 'Creatine', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(3, 'PreWorkout', '2024-05-03 20:57:22', '2024-05-03 20:57:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_11_23_033651_create_categories_table', 1),
(11, '2023_11_23_172458_create_products_table', 1),
(12, '2024_01_22_191517_create_order_statuses_table', 1),
(13, '2024_02_20_154337_create_orders_table', 1),
(14, '2024_02_20_164619_create_order_products_table', 1),
(15, '2024_02_22_205628_add_admin_column_to_users_table', 1),
(16, '2024_03_06_010228_create_product_images_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('015daeef07b9e12d7e2b1db3c5e2fdbb5472fd373b6ade437e8c5144040b1c2ed1d1a32d9a4b44d2', 2, 1, 'appToken', '[]', 0, '2024-05-28 11:30:31', '2024-05-28 11:30:31', '2025-05-28 05:30:31'),
('12ac85d2f741cc0d0c1a7cafbb4c5dfa38a1ec0600b9a2cdd09c1790ab45861614b8759b5901e41e', 2, 1, 'authToken', '[]', 1, '2024-05-03 21:41:59', '2024-05-03 21:43:03', '2025-05-03 15:41:59'),
('1fa49dbbe6a250ba828a356af4f238d63dcd6396666f2331a626700886a93bd7f335995da4b391e5', 2, 1, 'appToken', '[]', 1, '2024-05-28 11:09:42', '2024-05-28 11:22:52', '2025-05-28 05:09:42'),
('2723096c57f36169543e75044632d5deaae3b2ad0289aff2ef75d5214382f10e306de6d141a507e6', 1, 1, 'appToken', '[]', 1, '2024-05-28 09:17:49', '2024-05-28 09:18:23', '2025-05-28 03:17:49'),
('40dd4fc3ea034256ddd75994d95c7ae859272d52e36a506277cd8c7158a587c621021821a251f070', 1, 1, 'appToken', '[]', 1, '2024-05-28 10:54:43', '2024-05-28 11:09:11', '2025-05-28 04:54:43'),
('49bfbb96da95a1a85ef84719ad1295f34e8dde1564182182e0decfd6cdeef07feade979de254a6b5', 2, 1, 'appToken', '[]', 1, '2024-05-03 22:30:55', '2024-05-03 22:31:57', '2025-05-03 16:30:55'),
('552c2095db287dfd56d935b03f9060cf45cb948a0d93c326f59051fa91eadab655fd3c391ef736cb', 2, 1, 'appToken', '[]', 1, '2024-05-28 09:18:45', '2024-05-28 09:38:05', '2025-05-28 03:18:45'),
('5fa93cdc828ff06d0aad84699a802371f5c2dcae6d0380f6c0e1ca71a8f9cbd7551e3cd9f66eb269', 1, 1, 'appToken', '[]', 0, '2024-05-29 02:06:49', '2024-05-29 02:06:49', '2025-05-28 20:06:49'),
('60c02cadf02ce53b9e5603205bce6f280f21e80f74462257f0fc7a7a54cc166c44545f429af52bfe', 1, 1, 'appToken', '[]', 0, '2024-05-03 21:33:29', '2024-05-03 21:33:29', '2025-05-03 15:33:29'),
('64a7e79d8aa7f64b38fa6e4cca7641ffb8be4333c8ee4d3542bc7218d5df28527d515d7b96f49b24', 1, 1, 'appToken', '[]', 0, '2024-05-03 21:34:19', '2024-05-03 21:34:19', '2025-05-03 15:34:19'),
('7e778c31a38779e0bb58eca812b0785df26698a197564e442859ae4a88a0f78e9bc503a2e528746a', 1, 1, 'appToken', '[]', 0, '2024-05-03 22:33:13', '2024-05-03 22:33:13', '2025-05-03 16:33:13'),
('9c87f020bd4f9738589599d189c832697a9048f5b063d6bdab87798c22ee16927ed38f5e6f13e7af', 1, 1, 'appToken', '[]', 0, '2024-05-28 09:38:21', '2024-05-28 09:38:21', '2025-05-28 03:38:21'),
('ce158e2b0051c3fa9afee62943dacd15f1859ddcb12ba41196743c681dc377f543fe54cea9f105cb', 2, 1, 'appToken', '[]', 0, '2024-05-03 21:43:48', '2024-05-03 21:43:48', '2025-05-03 15:43:48'),
('de329f4f181001503c6ce70ccdb3d87cc0f62e872bbf076208875f626f62a78b04411aa7495294aa', 1, 1, 'appToken', '[]', 1, '2024-05-28 11:23:07', '2024-05-28 11:30:10', '2025-05-28 05:23:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'WeJz1upjsliTFnmMivVFg33PVJtuOiXHB98G1HeA', NULL, 'http://localhost', 1, 0, 0, '2024-05-03 21:33:21', '2024-05-03 21:33:21'),
(2, NULL, 'Laravel Password Grant Client', 'uWwNWrqEbXmYKOPqUPNgJsvv1Pb5dL6f79KuJZrE', 'users', 'http://localhost', 0, 1, 0, '2024-05-03 21:33:21', '2024-05-03 21:33:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-05-03 21:33:21', '2024-05-03 21:33:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `order_statuses_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Process', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(2, 'Shipped', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(3, 'Completed', '2024-05-03 20:57:23', '2024-05-03 20:57:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` double NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 'Aut animi.', 'Possimus reiciendis et dolorem. Sint corporis laborum voluptates distinctio aut deserunt ipsam. Sapiente ut possimus qui animi voluptates inventore quaerat. Tempore non id quaerat dolor voluptatibus.', 575.83, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(2, 'Delectus.', 'Quo voluptatem voluptatem ea voluptatum blanditiis inventore atque. Quos qui repudiandae voluptatibus. Laudantium adipisci quisquam velit ea corrupti.', 184.22, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(3, 'Ut.', 'Vel unde ullam omnis ea pariatur. Quidem omnis illo voluptatem nihil quod iusto. Et ea vel enim cumque aut. Nostrum sit aliquam qui est id eum animi.', 209.02, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(4, 'Animi.', 'Fugiat non ducimus accusamus. Et animi praesentium nostrum omnis quasi quidem quis enim. Nisi repudiandae quasi aut perferendis quidem et id.', 898.69, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(5, 'Ab et qui.', 'Et quia magnam adipisci atque eum. Assumenda inventore voluptatum ipsum iure. Tempora ut voluptas rerum ut.', 150.76, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(6, 'Qui quia.', 'Qui voluptatem enim maxime nostrum. Neque unde sed iure ut accusamus. Atque velit modi suscipit ab animi et. Delectus voluptatum sed quia aut vitae molestiae ipsa nisi.', 579.31, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(7, 'Sed.', 'Nemo omnis aut autem consequatur velit nobis voluptatibus. Dolore eveniet sint minima et odit neque omnis. Consequatur tenetur praesentium illo voluptatibus error labore eligendi. Ullam rerum aut velit impedit voluptas eos.', 745.1, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(8, 'Impedit.', 'Nesciunt omnis animi illum laudantium nulla mollitia distinctio. Id voluptas officiis voluptates libero architecto tenetur vel. Cum et rerum rem aperiam.', 797.2, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(9, 'Adipisci.', 'Architecto animi atque reiciendis. Error ea libero illum quis. Expedita incidunt est nam sit provident est.', 209.84, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(10, 'Odio.', 'Et eligendi rerum explicabo ut. Et voluptatem rerum occaecati amet est. Qui magnam autem ut omnis. Eos esse in laudantium ut doloremque ullam qui corrupti.', 312.97, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(11, 'Animi.', 'Harum repudiandae possimus eos. Voluptas magni atque ea nesciunt vel et. Qui similique qui rem enim voluptate. Voluptas rerum ut quas illum sit quis.', 256.28, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(12, 'Omnis.', 'Omnis doloribus porro provident placeat libero. Velit ut reprehenderit sunt et rem perspiciatis sunt similique.', 337.55, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(13, 'Modi qui.', 'Quis earum sit non quasi magni. Dolore quo possimus voluptatum quibusdam odit animi. Nesciunt qui quia qui enim.', 595.87, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(14, 'Amet.', 'Esse explicabo corporis ut debitis tenetur sunt doloremque. Facere dolor veritatis voluptate et. Animi sit delectus et error.', 103.22, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(15, 'Debitis.', 'Et veritatis et eius facilis eveniet doloribus. Est sunt dolor et recusandae perferendis.', 985.84, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(16, 'Et sed.', 'Ab est incidunt voluptatem dignissimos quae sapiente fugiat itaque. Dignissimos rerum natus nihil eum consequatur. Aperiam reprehenderit molestiae non perferendis. Dolore ut molestiae est eligendi iure consequatur.', 789.12, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(17, 'Fugit.', 'Quia dolor quaerat saepe est ipsam. A debitis nostrum doloremque quas. Pariatur similique nisi dignissimos.', 542.92, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(18, 'Sit.', 'Consequuntur sed voluptas ut ratione nihil cumque. Non dolorem asperiores vel autem. Est reprehenderit totam cupiditate cumque. Quis possimus ut odio ullam fuga.', 430.1, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(19, 'Nisi quam.', 'Aspernatur corrupti placeat debitis libero fuga nesciunt enim. Rerum ut ad odio eum. Maxime vel rerum repudiandae consequatur illum.', 324.68, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(20, 'Aut enim.', 'Sint est ad qui autem deleniti enim praesentium veritatis. Eius et ut ut veritatis. Eligendi doloribus exercitationem eveniet at.', 332.9, 1, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(21, 'Enim quas.', 'Voluptas veniam illo amet eum. Ea qui deleniti est unde sit nihil incidunt iure. Voluptatibus voluptatem sed quaerat ad voluptatem quidem molestiae. Adipisci sint omnis corrupti quae provident sit voluptates autem.', 194.86, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(22, 'Libero.', 'Cupiditate nesciunt temporibus ipsam ipsum est voluptatem. Voluptates velit eum ducimus similique et numquam et doloribus. Fugiat nihil facilis et voluptas et dolorem adipisci. Eum aliquam delectus id eius porro sunt rerum.', 262, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(23, 'Ex vel.', 'Eum voluptatem aut sed autem nesciunt at rerum quo. Velit voluptatem sequi id et dolore et. Sint facilis hic distinctio aliquid aut quis similique magnam.', 608.19, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(24, 'Illo ex.', 'Et odit ipsam voluptas et deserunt quidem modi accusamus. Molestiae esse eaque sit atque qui. Est earum fuga nulla voluptas expedita dolore sed. Quis qui qui ea consequatur aut veniam.', 123.28, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(25, 'Autem.', 'Ea voluptas quidem similique non fugiat. Praesentium nulla at veritatis velit.', 338.37, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(26, 'Eligendi.', 'Veniam consequatur quia ratione ab est. Rerum omnis aspernatur consequatur quis. Quia tempore velit id non error tenetur.', 165.66, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(27, 'Et.', 'Veritatis minus qui eos et possimus eaque iure dolor. Harum et a quia. Aliquid qui cumque error a ab earum. Maiores placeat repudiandae velit nobis. Ipsa ipsa consequuntur in ut eos praesentium et.', 522.33, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(28, 'A et qui.', 'Iusto nam nulla doloribus perspiciatis ad beatae. Autem eaque sed consectetur. Modi unde doloremque voluptatem dicta sit. Est consequuntur et adipisci ad occaecati iure fugit.', 597.29, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(29, 'At.', 'Distinctio architecto nesciunt sit dolor veniam. Nesciunt nisi itaque consequuntur. Beatae iure vel atque occaecati mollitia reprehenderit ab. Sunt dolor quos quia aut at temporibus.', 808.02, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(30, 'Et fuga.', 'Unde recusandae et enim dolore alias sunt voluptatibus. Ad distinctio officiis velit. Eum et architecto fugiat qui. Architecto perspiciatis odit minima et tempore.', 613.46, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(31, 'Magnam.', 'Tempore molestiae quia possimus enim. Quas et commodi in. Dignissimos soluta harum ut debitis. Quaerat cupiditate optio esse rerum vel.', 974.86, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(32, 'Nostrum.', 'Aut distinctio voluptatibus enim quis laboriosam eum. Fugiat commodi cumque quia exercitationem officiis aut modi nobis. Officia officia enim reiciendis.', 308.6, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(33, 'Magni.', 'Vel sit ut tenetur tempore aperiam illum. Molestiae provident nobis quo ratione officiis. Optio voluptatem quia dolores iusto aut voluptatem.', 349.35, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(34, 'Aliquid.', 'In quos rerum et ex exercitationem repellat. Aut dignissimos in quis expedita minima aut. Distinctio aliquam est tenetur accusantium nam rerum. Rem nulla odit optio est quidem. Facere quia ipsam iusto nemo sapiente voluptatibus incidunt.', 663.62, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(35, 'Veniam.', 'Odit voluptas repellendus aliquam ut in odit. Quisquam temporibus tempore perferendis nemo dolores. Exercitationem quis rerum incidunt sed voluptas. Ex et voluptas ratione laborum.', 268.75, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(36, 'Ullam.', 'Quis fugiat expedita vel iure. Eligendi recusandae tenetur aut et. Quia corrupti praesentium non voluptates quia.', 742.33, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(37, 'Laborum.', 'Ullam dolorem quia cumque soluta consequatur. Perferendis enim quis voluptate sequi facilis.', 964.02, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(38, 'Maiores.', 'Maiores consectetur iste in qui autem. Labore omnis eius quaerat perspiciatis quidem est. Eos vero beatae fugiat et animi facere. Voluptatem omnis sapiente beatae.', 561.14, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(39, 'Molestiae.', 'Qui distinctio voluptatem consequatur et. Numquam quaerat vel optio voluptates. Deserunt voluptate qui odit consequatur optio. Aperiam adipisci quis perspiciatis sequi aut et et.', 862.34, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(40, 'Omnis.', 'Voluptatem ut rerum aliquid quae alias ut. Sint sit itaque et assumenda. Sapiente magnam delectus sunt rerum aut. At debitis dolorem odit minus.', 208.81, 2, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(41, 'Inventore.', 'Reiciendis voluptates a modi non dolorum excepturi odit. Occaecati ut eos veniam voluptas. Qui voluptas voluptate excepturi sapiente. Laboriosam ea expedita excepturi.', 253.74, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(42, 'Est quia.', 'Est ullam necessitatibus perferendis corporis atque. Autem in aut ipsa qui assumenda dolores. Deserunt quia ea aut.', 397.67, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(43, 'Et.', 'Quae rem voluptatem quo atque aut aliquid earum. Exercitationem laborum in rerum ut.', 838.92, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(44, 'Est est.', 'Laboriosam dolores et mollitia accusamus. Quas quam est perferendis harum error. Eos sit aut qui necessitatibus quo.', 792.65, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(45, 'Aut at.', 'Enim voluptatem rerum dicta et exercitationem. Voluptatem recusandae molestias et veniam cum neque molestiae. Quae quibusdam voluptates reiciendis non.', 829.91, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(46, 'Illum.', 'Enim est error et nam. Atque qui aut quo. Nemo et voluptatibus quia enim quod quibusdam omnis culpa. Similique accusantium sed eveniet quae voluptatem dolor.', 796.57, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(47, 'Culpa.', 'Consequatur ut nemo rerum doloribus exercitationem nesciunt. Vitae enim rerum consequatur ut voluptate. Exercitationem rerum et nam ut sed ut illum. Tenetur sit est ipsam qui.', 976.69, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(48, 'Eligendi.', 'Qui reprehenderit nulla voluptatum molestiae. At ut qui unde repudiandae et.', 961.22, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(49, 'Sunt.', 'Et iusto quibusdam vel eligendi nulla et maxime. Consequatur omnis iusto voluptates consequatur voluptatibus quaerat modi. At est rerum rem reprehenderit in ducimus.', 730.93, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(50, 'Aliquam.', 'Odit veniam deleniti laborum eum. Rerum perspiciatis assumenda et quam aut repellendus et. Voluptas explicabo dolores voluptatem placeat ea quidem animi. Est expedita quam quae id eum ullam at dolorem. Dolorem error nulla est illum dolorum.', 684.04, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(51, 'Eos nihil.', 'Necessitatibus alias voluptatem cumque asperiores est similique. Voluptatem rerum asperiores consequuntur id rerum facere. Et doloremque vitae sint ipsum et odit. Voluptatem maxime ducimus beatae.', 882.59, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(52, 'Minima.', 'Velit pariatur magni rerum. Quia sit eaque voluptatibus qui labore magni necessitatibus. Reiciendis aut et neque. Ut vero aut pariatur voluptate ipsum recusandae praesentium.', 953.98, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(53, 'Quia quia.', 'Voluptate esse quibusdam quae. A repudiandae voluptatum qui cupiditate possimus et. Molestiae tempora asperiores incidunt commodi. Et modi sequi sed qui.', 826.92, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(54, 'Numquam.', 'Sunt distinctio ex vero rem. Vero ea veniam quibusdam. Inventore maxime nisi corrupti voluptas. Quibusdam natus nobis possimus et est incidunt voluptates.', 234.54, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(55, 'Nam.', 'Sed nihil ullam ullam ut ab molestiae. Cumque quo inventore dolorem magnam est aliquam. Vitae voluptatem omnis perferendis aliquam rerum debitis. Recusandae sunt atque inventore nemo ut.', 698.17, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(56, 'Aut.', 'Libero modi optio possimus sunt id cupiditate placeat. Eos illum minima fuga aliquid autem sunt. Aut reprehenderit omnis animi nisi et vel. Laborum aut vero voluptatem.', 854.19, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(57, 'Rerum.', 'Nesciunt rerum voluptatum excepturi voluptatem et repudiandae non. Voluptatibus et laudantium beatae quo rem. Nulla dolores provident et et voluptas quo. Debitis atque iste nisi est.', 598.66, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(58, 'Sit neque.', 'Est omnis corrupti qui nihil quis. Nihil qui minus impedit neque. Architecto est assumenda ut. Voluptas nisi voluptatum accusamus.', 667.19, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(59, 'Explicabo.', 'Ut vero quod rerum. Dicta et voluptas consequatur quo aut quidem. Porro sint aut ullam ab quia rerum.', 246.74, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(60, 'Fugit.', 'Inventore rerum et aperiam officia pariatur et maxime. Et vel corrupti illo ipsam quos.', 763.96, 3, '2024-05-03 20:57:22', '2024-05-03 20:57:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://via.placeholder.com/640x480.png/002299?text=esse', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(2, 1, 'https://via.placeholder.com/640x480.png/0077bb?text=dolores', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(3, 2, 'https://via.placeholder.com/640x480.png/00eecc?text=ut', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(4, 2, 'https://via.placeholder.com/640x480.png/00bbaa?text=ut', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(5, 3, 'https://via.placeholder.com/640x480.png/003377?text=delectus', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(6, 3, 'https://via.placeholder.com/640x480.png/00aaee?text=aut', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(7, 4, 'https://via.placeholder.com/640x480.png/00bb44?text=ut', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(8, 4, 'https://via.placeholder.com/640x480.png/00bb99?text=explicabo', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(9, 5, 'https://via.placeholder.com/640x480.png/00ff55?text=laborum', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(10, 5, 'https://via.placeholder.com/640x480.png/006688?text=eos', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(11, 6, 'https://via.placeholder.com/640x480.png/00ee22?text=aperiam', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(12, 6, 'https://via.placeholder.com/640x480.png/0000ee?text=totam', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(13, 7, 'https://via.placeholder.com/640x480.png/0033bb?text=id', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(14, 7, 'https://via.placeholder.com/640x480.png/00dd77?text=officiis', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(15, 8, 'https://via.placeholder.com/640x480.png/00dddd?text=harum', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(16, 8, 'https://via.placeholder.com/640x480.png/00eeff?text=est', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(17, 9, 'https://via.placeholder.com/640x480.png/00ffbb?text=officia', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(18, 9, 'https://via.placeholder.com/640x480.png/0033bb?text=velit', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(19, 10, 'https://via.placeholder.com/640x480.png/00bb66?text=pariatur', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(20, 10, 'https://via.placeholder.com/640x480.png/008855?text=fugiat', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(21, 11, 'https://via.placeholder.com/640x480.png/00bb22?text=quasi', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(22, 11, 'https://via.placeholder.com/640x480.png/009933?text=voluptatem', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(23, 12, 'https://via.placeholder.com/640x480.png/0055ff?text=similique', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(24, 12, 'https://via.placeholder.com/640x480.png/002266?text=qui', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(25, 13, 'https://via.placeholder.com/640x480.png/003311?text=fuga', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(26, 13, 'https://via.placeholder.com/640x480.png/001111?text=ullam', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(27, 14, 'https://via.placeholder.com/640x480.png/00ff00?text=voluptatibus', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(28, 14, 'https://via.placeholder.com/640x480.png/00ee00?text=aut', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(29, 15, 'https://via.placeholder.com/640x480.png/00ffff?text=et', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(30, 15, 'https://via.placeholder.com/640x480.png/002233?text=et', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(31, 16, 'https://via.placeholder.com/640x480.png/003377?text=molestiae', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(32, 16, 'https://via.placeholder.com/640x480.png/003355?text=possimus', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(33, 17, 'https://via.placeholder.com/640x480.png/00ff77?text=corporis', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(34, 17, 'https://via.placeholder.com/640x480.png/00aaff?text=facilis', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(35, 18, 'https://via.placeholder.com/640x480.png/0022dd?text=ratione', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(36, 18, 'https://via.placeholder.com/640x480.png/00ff99?text=voluptas', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(37, 19, 'https://via.placeholder.com/640x480.png/001144?text=vero', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(38, 19, 'https://via.placeholder.com/640x480.png/00cc55?text=magnam', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(39, 20, 'https://via.placeholder.com/640x480.png/004499?text=doloremque', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(40, 20, 'https://via.placeholder.com/640x480.png/008877?text=vel', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(41, 21, 'https://via.placeholder.com/640x480.png/00bb44?text=aut', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(42, 21, 'https://via.placeholder.com/640x480.png/0022ff?text=ipsum', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(43, 22, 'https://via.placeholder.com/640x480.png/001111?text=et', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(44, 22, 'https://via.placeholder.com/640x480.png/00ff22?text=rem', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(45, 23, 'https://via.placeholder.com/640x480.png/0022ff?text=mollitia', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(46, 23, 'https://via.placeholder.com/640x480.png/00ee66?text=voluptate', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(47, 24, 'https://via.placeholder.com/640x480.png/0044aa?text=earum', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(48, 24, 'https://via.placeholder.com/640x480.png/00aaaa?text=optio', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(49, 25, 'https://via.placeholder.com/640x480.png/00ffcc?text=nihil', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(50, 25, 'https://via.placeholder.com/640x480.png/006655?text=est', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(51, 26, 'https://via.placeholder.com/640x480.png/00aacc?text=et', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(52, 26, 'https://via.placeholder.com/640x480.png/0055aa?text=facilis', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(53, 27, 'https://via.placeholder.com/640x480.png/0000cc?text=nemo', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(54, 27, 'https://via.placeholder.com/640x480.png/001188?text=et', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(55, 28, 'https://via.placeholder.com/640x480.png/008855?text=cupiditate', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(56, 28, 'https://via.placeholder.com/640x480.png/009933?text=eius', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(57, 29, 'https://via.placeholder.com/640x480.png/0011dd?text=non', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(58, 29, 'https://via.placeholder.com/640x480.png/00bbff?text=sed', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(59, 30, 'https://via.placeholder.com/640x480.png/005577?text=aut', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(60, 30, 'https://via.placeholder.com/640x480.png/004455?text=ex', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(61, 31, 'https://via.placeholder.com/640x480.png/0055dd?text=itaque', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(62, 31, 'https://via.placeholder.com/640x480.png/004433?text=excepturi', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(63, 32, 'https://via.placeholder.com/640x480.png/00cc77?text=atque', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(64, 32, 'https://via.placeholder.com/640x480.png/002222?text=sed', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(65, 33, 'https://via.placeholder.com/640x480.png/00ff77?text=autem', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(66, 33, 'https://via.placeholder.com/640x480.png/004411?text=mollitia', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(67, 34, 'https://via.placeholder.com/640x480.png/0099cc?text=culpa', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(68, 34, 'https://via.placeholder.com/640x480.png/000066?text=veritatis', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(69, 35, 'https://via.placeholder.com/640x480.png/001122?text=illo', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(70, 35, 'https://via.placeholder.com/640x480.png/0088ff?text=et', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(71, 36, 'https://via.placeholder.com/640x480.png/0033aa?text=vel', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(72, 36, 'https://via.placeholder.com/640x480.png/00ff55?text=enim', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(73, 37, 'https://via.placeholder.com/640x480.png/0033ff?text=officiis', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(74, 37, 'https://via.placeholder.com/640x480.png/003399?text=assumenda', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(75, 38, 'https://via.placeholder.com/640x480.png/00cc77?text=recusandae', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(76, 38, 'https://via.placeholder.com/640x480.png/0044aa?text=vel', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(77, 39, 'https://via.placeholder.com/640x480.png/0055dd?text=et', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(78, 39, 'https://via.placeholder.com/640x480.png/00bb00?text=exercitationem', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(79, 40, 'https://via.placeholder.com/640x480.png/00aa77?text=delectus', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(80, 40, 'https://via.placeholder.com/640x480.png/00ddbb?text=voluptatem', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(81, 41, 'https://via.placeholder.com/640x480.png/00aa11?text=architecto', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(82, 41, 'https://via.placeholder.com/640x480.png/00aa00?text=voluptatem', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(83, 42, 'https://via.placeholder.com/640x480.png/005566?text=et', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(84, 42, 'https://via.placeholder.com/640x480.png/0044bb?text=nesciunt', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(85, 43, 'https://via.placeholder.com/640x480.png/008844?text=qui', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(86, 43, 'https://via.placeholder.com/640x480.png/00ee77?text=dolore', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(87, 44, 'https://via.placeholder.com/640x480.png/007799?text=eligendi', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(88, 44, 'https://via.placeholder.com/640x480.png/009900?text=facere', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(89, 45, 'https://via.placeholder.com/640x480.png/006644?text=asperiores', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(90, 45, 'https://via.placeholder.com/640x480.png/000077?text=dolorem', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(91, 46, 'https://via.placeholder.com/640x480.png/002222?text=est', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(92, 46, 'https://via.placeholder.com/640x480.png/005588?text=saepe', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(93, 47, 'https://via.placeholder.com/640x480.png/007755?text=voluptates', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(94, 47, 'https://via.placeholder.com/640x480.png/00aacc?text=molestiae', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(95, 48, 'https://via.placeholder.com/640x480.png/0044ee?text=aut', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(96, 48, 'https://via.placeholder.com/640x480.png/00cc22?text=veritatis', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(97, 49, 'https://via.placeholder.com/640x480.png/009955?text=consequatur', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(98, 49, 'https://via.placeholder.com/640x480.png/0088aa?text=harum', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(99, 50, 'https://via.placeholder.com/640x480.png/004444?text=deserunt', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(100, 50, 'https://via.placeholder.com/640x480.png/000088?text=commodi', '2024-05-03 20:57:22', '2024-05-03 20:57:22'),
(101, 51, 'https://via.placeholder.com/640x480.png/004444?text=nostrum', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(102, 51, 'https://via.placeholder.com/640x480.png/005500?text=velit', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(103, 52, 'https://via.placeholder.com/640x480.png/00bbcc?text=fugiat', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(104, 52, 'https://via.placeholder.com/640x480.png/005544?text=minus', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(105, 53, 'https://via.placeholder.com/640x480.png/0033ff?text=labore', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(106, 53, 'https://via.placeholder.com/640x480.png/0011aa?text=aliquam', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(107, 54, 'https://via.placeholder.com/640x480.png/000000?text=ut', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(108, 54, 'https://via.placeholder.com/640x480.png/0044dd?text=facilis', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(109, 55, 'https://via.placeholder.com/640x480.png/0088bb?text=dignissimos', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(110, 55, 'https://via.placeholder.com/640x480.png/00cc99?text=quasi', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(111, 56, 'https://via.placeholder.com/640x480.png/000000?text=natus', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(112, 56, 'https://via.placeholder.com/640x480.png/009977?text=non', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(113, 57, 'https://via.placeholder.com/640x480.png/007744?text=libero', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(114, 57, 'https://via.placeholder.com/640x480.png/007777?text=accusamus', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(115, 58, 'https://via.placeholder.com/640x480.png/001111?text=vitae', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(116, 58, 'https://via.placeholder.com/640x480.png/000011?text=amet', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(117, 59, 'https://via.placeholder.com/640x480.png/00bbee?text=aperiam', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(118, 59, 'https://via.placeholder.com/640x480.png/0077ee?text=optio', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(119, 60, 'https://via.placeholder.com/640x480.png/00ee66?text=autem', '2024-05-03 20:57:23', '2024-05-03 20:57:23'),
(120, 60, 'https://via.placeholder.com/640x480.png/007755?text=fuga', '2024-05-03 20:57:23', '2024-05-03 20:57:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'Leon Andrey Muñoz Rangel', 'leon@gmail.com', NULL, '$2y$12$5B0zwOuoDrNOMa3mUzZrWu4KjvN5cA5ZpjnKDMzn.Q9.bP0ph.kJq', NULL, '2024-05-03 21:08:11', '2024-05-03 21:08:11', 0),
(2, 'Leon Andrey Muñoz Rangel', 'andrey@gmail.com', NULL, '$2y$12$WveL.h6PAVrb6yvFG6UzNOyd2rPKo2YzgUGmFcYNiYtOihdYGzVYq', NULL, '2024-05-03 21:41:59', '2024-05-03 21:41:59', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_statuses_id_foreign` (`order_statuses_id`);

--
-- Indices de la tabla `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categories_id_foreign` (`categories_id`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_order_statuses_id_foreign` FOREIGN KEY (`order_statuses_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

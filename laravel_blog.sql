-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 04:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', 'web-design', '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(2, 'Web Programming', 'web-programming', '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(3, 'Personal', 'personal', '2023-07-27 04:47:59', '2023-07-27 04:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(27, '2014_10_12_000000_create_users_table', 1),
(28, '2014_10_12_100000_create_password_resets_table', 1),
(29, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(30, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(31, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(32, '2016_06_01_000004_create_oauth_clients_table', 1),
(33, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(36, '2022_10_25_154643_create_posts_table', 1),
(37, '2022_10_26_132038_create_categories_table', 1),
(38, '2022_10_29_080528_add_is_admin_to_users_table', 1),
(39, '2022_10_29_130446_create_programs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
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

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
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
-- Table structure for table `oauth_clients`
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

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `judul`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Sed ut.', 'necessitatibus-eum-magni-consectetur-sed-dolor-porro-non', NULL, 'Suscipit id aut incidunt laudantium amet nemo omnis sit. Aperiam rerum eos voluptatem ullam. Quae nulla impedit est numquam id.', '<p>Assumenda nobis qui ea aut deserunt adipisci molestiae. Nostrum at ea laboriosam numquam architecto. Natus provident voluptas placeat quia illum. Ad fugit provident culpa.</p><p>Sint laudantium qui voluptas ullam ad minima. Quia ullam voluptatem omnis voluptates veniam.</p><p>Totam eaque tempore sunt sequi quis exercitationem. Eius molestiae et hic eveniet et est ut. Debitis non modi commodi distinctio reprehenderit alias ut voluptates. Molestiae et aut omnis alias id repudiandae eum harum.</p><p>Iure est in alias sed officiis libero quia. Autem repudiandae qui non voluptatem qui tempora. At voluptatem laboriosam qui ea. Excepturi perspiciatis voluptatem sit iste autem quaerat.</p><p>Maiores et vitae esse totam velit expedita. Voluptatem ratione cumque nostrum voluptate deserunt ea. Quisquam autem similique tempora ut eos. Quos sunt voluptas sit expedita.</p><p>Quidem nostrum possimus accusamus et dolores ipsa ut asperiores. Vero quam reiciendis iure animi voluptas voluptas error vel. Aut dolore ipsum libero aspernatur vitae debitis quis. Consectetur qui labore ut sapiente. Dolor in exercitationem facilis laboriosam.</p><p>Occaecati mollitia sequi et voluptates corrupti sit. Sed dolorum quibusdam dignissimos illo explicabo numquam aut odit. Atque quia nobis vel aliquid et dicta voluptas. Alias et et enim nostrum.</p><p>Veritatis molestiae sed sed earum est adipisci. Rerum quam repudiandae debitis doloribus laborum ut dicta est. Dignissimos sed in voluptatem voluptas. Assumenda quisquam ab tempore totam numquam necessitatibus. Repudiandae aut tempore ut atque.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(2, 2, 3, 'Molestiae eos exercitationem ut sint dicta temporibus quibusdam numquam.', 'distinctio-ea-nostrum-voluptatem', NULL, 'Ad praesentium quae neque aut recusandae iusto. Ea saepe et voluptas et in. Qui quidem veniam eos aut molestias voluptatum reiciendis. Commodi iste nisi minima.', '<p>Qui maxime neque eligendi adipisci quia dolor. Omnis ratione assumenda sed qui. Dolorem quidem laudantium suscipit id eum cumque temporibus. Natus autem autem nobis dolor fuga.</p><p>Reiciendis nisi aspernatur facere ipsum illo aspernatur cum ad. Qui vitae voluptas ducimus earum et officiis. Magnam vel molestiae hic eos qui.</p><p>Sunt vero est a. Saepe explicabo ut est et temporibus perspiciatis qui error. Vitae omnis dolore eligendi quidem. Voluptatem molestiae nesciunt quia sit.</p><p>Rerum nihil impedit eveniet voluptas quidem. Blanditiis sit distinctio autem repudiandae ab eaque. Ut nostrum ratione nesciunt totam nobis adipisci assumenda. Ut enim pariatur iure quis inventore cupiditate nobis. Enim dolore est a earum occaecati doloremque architecto.</p><p>Omnis culpa cumque quis eum asperiores ut sed. Consequuntur eligendi sed temporibus. Eligendi explicabo excepturi sit corrupti quo.</p><p>Fugit eius totam vitae autem id aperiam distinctio ipsam. Quo mollitia adipisci asperiores sit quis nesciunt esse. Et debitis assumenda aut ut recusandae mollitia.</p><p>Saepe nemo et laboriosam alias et. Quos accusamus aut nam odio inventore et fugiat. Debitis ut voluptate odio aperiam sed.</p><p>Ab fugit laudantium soluta sint et. Ab consequatur doloribus nemo culpa et et ducimus. Consequatur aliquam qui vel officia dicta consequuntur. Saepe sed qui necessitatibus minus est.</p><p>Accusantium beatae ipsa voluptatem non et rerum. Est qui sit voluptate maiores autem. Sed atque aliquid in eligendi inventore fugit quae. Dolores adipisci excepturi voluptate alias in assumenda eum.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(3, 2, 1, 'Molestiae nobis in dolore corporis quisquam aut aliquid voluptatibus ullam.', 'quia-blanditiis-eum-consequatur-ipsa-perspiciatis-quia', NULL, 'Quia blanditiis nostrum qui rerum ut voluptatem. A consectetur blanditiis voluptatem. Est et voluptatum qui cumque odit possimus ut.', '<p>Impedit numquam minima qui dignissimos est quibusdam illo. Nisi adipisci et fugiat quis aperiam. Quae eligendi eos veritatis est quam.</p><p>Iure ut natus quo amet. Molestiae temporibus impedit aliquam quas corporis nisi. Fugit quam et commodi aperiam excepturi laudantium. Voluptas sunt sed aspernatur laboriosam.</p><p>Aut atque vitae sequi aut doloribus quae doloremque. Earum omnis similique ratione enim. Laudantium ea pariatur voluptates velit ipsam maxime. Omnis qui error repellat quisquam sit.</p><p>Necessitatibus veritatis recusandae et aut laudantium. Nam nam laboriosam sed quasi temporibus et. Numquam quis qui autem accusamus quidem. Error dolores voluptatum et nisi exercitationem minima. Non ea aut voluptas harum minima rem itaque nam.</p><p>Est perspiciatis placeat beatae rerum alias enim ab qui. Magni laudantium impedit impedit a praesentium adipisci. Voluptatem cum illum libero. Impedit velit consequatur rerum neque dolor ut.</p><p>Qui sed facere earum quia quos illum est. Libero consectetur debitis quis aut. Minima quisquam repellendus temporibus minima quia nihil.</p><p>Voluptatum enim repellat modi. Earum beatae ut porro est impedit iusto. Fugiat aspernatur dolorem quos quibusdam. Aut quidem delectus ut non culpa sit iure molestiae.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(4, 2, 2, 'Eius debitis.', 'maxime-debitis-perspiciatis-tenetur', NULL, 'Voluptatem maiores perspiciatis accusamus numquam nihil optio. Cupiditate id ipsum ab saepe quibusdam. Quia quia animi libero sint eius voluptates fuga.', '<p>Et eligendi at nesciunt. Libero magni sed dolores velit facilis debitis harum. Earum at in consequatur ea expedita non sequi.</p><p>Vitae consequatur ullam fugiat corrupti excepturi. Harum eaque laudantium ea ea non mollitia architecto laudantium. Est tempora eos expedita tempora. Est qui corrupti voluptate quibusdam pariatur quaerat.</p><p>Qui rerum incidunt exercitationem sequi et. Ut ipsum iure dolore vero blanditiis. Aliquid alias ut quam accusamus quidem aut. Accusantium quaerat repellendus amet aliquid quibusdam deserunt in. Est deleniti aut sequi asperiores illum.</p><p>Rerum necessitatibus veritatis ad consequatur. Ut rerum est ducimus nihil dolor qui veritatis. Ea qui numquam cumque et. Suscipit consequuntur facere et nulla voluptatibus temporibus. Sed rerum enim autem vitae et consequatur et.</p><p>Sint quia natus consequuntur ad quidem porro ut in. Ipsum omnis accusantium quidem mollitia consectetur omnis. Qui aut rem quos.</p><p>Accusamus aut et qui. Est odit dolorem et eos. Quo consequatur fugiat odit quis. Numquam corrupti porro et non molestiae.</p><p>Aliquam nihil nam sed et unde. Aut ut sit asperiores odio. Sed qui rerum nihil animi qui nemo in.</p><p>Iure velit ratione maxime et et. Omnis consequatur ut at repellat rerum. Magni enim molestiae voluptatem repellat iure neque.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(5, 2, 3, 'Sint inventore nobis.', 'eos-accusamus-et-aut-qui-eos-repudiandae', NULL, 'Error quisquam quos dolores nam sed sit ipsum. Harum veniam iste distinctio dolor et. Qui voluptatum maiores qui consequatur beatae nihil. Est et quae mollitia rerum aut eligendi velit.', '<p>Ipsa illo omnis sit mollitia. Aperiam dolores sint repellat veniam ut doloribus excepturi ex. Aut modi sint cupiditate iusto.</p><p>Dolor in amet porro ipsum. Nam iure eveniet debitis aut. Similique sed est perspiciatis excepturi asperiores sed.</p><p>Sit vitae et quis laboriosam consequatur. Assumenda natus nam quis aut et laborum. Assumenda libero assumenda repellendus. Provident tempora quis sed eos.</p><p>Amet mollitia voluptatem sequi perferendis expedita voluptas. At ut odio qui. Odio facilis soluta possimus omnis.</p><p>Beatae aperiam quae quibusdam dolorem perferendis et et. Aperiam ratione consectetur molestias soluta sunt.</p><p>Odit suscipit reprehenderit rerum deserunt. Odio exercitationem amet temporibus fugiat. Facere cupiditate asperiores sunt saepe recusandae earum. Harum provident voluptates quidem reprehenderit qui.</p><p>Libero mollitia quia quam. Quod quae consequatur aut consectetur sequi. Fugiat iusto provident rerum non quam est laboriosam.</p><p>Sit dolorem facilis inventore sint voluptatem. Aut ipsam necessitatibus et eius optio. Fuga esse nobis sit impedit iusto incidunt enim molestias.</p><p>Eos atque possimus illo enim dignissimos ex. Laborum quis in quas et quaerat eum sit molestias. Esse praesentium culpa omnis et ut voluptatem. Aliquam placeat nihil ipsa harum.</p><p>Molestias nam quis ipsa consequatur. Et id nesciunt id laudantium et. Consequuntur molestiae qui soluta sapiente.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(6, 1, 3, 'Ea similique eligendi omnis adipisci optio quia repellat temporibus voluptatem.', 'expedita-quia-excepturi-ducimus-iusto-ratione', NULL, 'Modi qui error officia doloribus. Et vitae alias repellat. Quis ipsa molestiae tempora est et.', '<p>Sit molestiae voluptatum et non est sed. Rerum qui rerum praesentium alias accusantium corrupti. Maxime molestias laudantium et id fugiat et.</p><p>Repellendus vel voluptas quis eum voluptas cum. Esse ea recusandae ullam saepe dolorem.</p><p>Est nam et impedit illum aut sint. Aspernatur voluptas asperiores omnis velit repellat nesciunt fugit. Autem labore voluptas voluptas omnis aut recusandae earum facere.</p><p>Quia similique voluptas quas blanditiis ipsa quod quasi ea. Impedit aut error maxime quod repellat. Sit nesciunt enim et praesentium est ad dolore.</p><p>Quisquam quaerat ducimus mollitia id assumenda. Eveniet consequatur nihil sequi nulla. Ullam accusantium qui non distinctio debitis facere alias. Veritatis qui atque et ullam. Molestiae amet est est maxime facilis sit sint sit.</p><p>Et totam consequatur doloribus rem id voluptatem minima id. Qui asperiores sint et molestiae eligendi. Tempora laudantium eveniet et reprehenderit animi.</p><p>Quae animi placeat rerum ut. Ex iste neque similique ut ipsam dolores. Voluptatem sed labore quis facilis neque ut pariatur.</p><p>Hic sequi exercitationem alias qui. Quos rerum omnis neque expedita voluptatem aut et. Hic at voluptate repudiandae mollitia dicta. Praesentium praesentium nihil ipsum quos quae.</p><p>Sed qui quod illo quia ex quaerat est. Sed dignissimos dolorem est ex veritatis voluptas.</p><p>Dolorum rerum similique similique nostrum quaerat. Mollitia aut voluptas autem hic. Rerum qui totam dolorem ea illum.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(7, 2, 2, 'Ducimus adipisci.', 'reiciendis-quaerat-iusto-in-eligendi-ut', NULL, 'Aut in quis ad maiores voluptatem nostrum velit. Autem incidunt consequuntur nisi animi iusto perferendis. Aut id qui cum qui velit vel reiciendis.', '<p>Ipsa sunt aliquid ut sit quisquam. Alias et laborum doloremque quidem ut. Sed dolore reprehenderit modi.</p><p>Dicta natus nobis est quo inventore commodi in. Voluptatem cupiditate est totam nihil consectetur consectetur sit. Architecto molestiae maxime assumenda nesciunt vel delectus quis.</p><p>Repudiandae ut accusamus ratione. Consequatur et et aperiam facere quia ut et magnam. Et autem repudiandae voluptatem sed natus.</p><p>Quod veritatis et autem veritatis. Praesentium ab laudantium dolore. Voluptatem architecto quia et. Voluptas est qui quia non iusto animi est.</p><p>Debitis atque et molestias hic at. Ullam nemo nostrum et aut non et at. Harum nemo rerum beatae quidem doloremque dignissimos.</p><p>Facere sint molestias sed iure molestiae. Sit nemo minus officia. Aut sapiente illo veniam optio. Totam aut enim rerum quos dolores.</p><p>Dolor voluptatibus nesciunt incidunt velit omnis quam nam. Nobis consequuntur est pariatur sequi aut quis. Sed quibusdam rerum recusandae. Numquam quia repudiandae quisquam voluptatem. Sapiente consequatur a repellendus autem sit.</p><p>Dolore aliquid provident quae similique. Eveniet est velit ipsa accusamus voluptate. Sed repellendus labore voluptatum ut repudiandae dolores eveniet occaecati. Recusandae et vel in reprehenderit provident commodi.</p><p>Enim maiores est voluptatem consequatur vel. Hic hic doloremque nihil cumque quas in et eos. Amet distinctio id maiores vitae voluptas et temporibus. Asperiores quos sit qui expedita odio nostrum.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(8, 2, 3, 'Est labore occaecati voluptas saepe quam aspernatur ea.', 'nihil-unde-placeat-aut-facilis-voluptates-eveniet', NULL, 'Molestiae nihil et et est. Quis beatae in et sed ut itaque beatae. Iure temporibus ut ullam totam veniam explicabo iste. Ut est qui delectus. Quod magni doloremque non quia sequi.', '<p>Et labore aut quos itaque est nihil. Repudiandae est perspiciatis quia aut necessitatibus perspiciatis qui vero. Autem itaque fugiat dicta ad consequatur unde.</p><p>Laudantium ut expedita eum quod soluta quia. Corporis quia doloremque officiis mollitia. Amet debitis autem maiores quia qui doloremque.</p><p>Totam minus provident autem sint. Voluptatum eum repudiandae et voluptatibus. Doloremque harum et at sequi quis.</p><p>Est doloribus porro autem ipsam. Quis perferendis iusto sit ut dolor cupiditate. Mollitia ullam rerum quisquam nisi.</p><p>Maxime consequatur officia qui tenetur. Eveniet dolorem officia sint veniam. Iure saepe in occaecati quam.</p><p>Et perspiciatis distinctio neque et quia cum. Atque nostrum voluptatem voluptatem consectetur est sint ut. Inventore est et ut dolores. Quod rerum sunt sint porro eum.</p><p>Tenetur dolorem quod distinctio ea. Dicta et iste quo qui tempora ut reprehenderit.</p><p>Facilis perferendis culpa ea mollitia assumenda et. Dolores ut blanditiis repellendus atque ut et explicabo. Tempora quis vel voluptas nihil nobis magni. Enim reiciendis molestiae rem quam sint.</p><p>Est non qui consectetur eos rerum aut. Neque rem quisquam explicabo pariatur assumenda quis at. Et nisi totam error praesentium voluptas.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(9, 2, 1, 'Et reprehenderit beatae.', 'veritatis-voluptates-veritatis-ea-perspiciatis', NULL, 'Qui est magni aut nostrum eius quo iusto. Est quia dolores accusantium repellat velit repellat iure consequatur. Debitis eligendi magnam non dolorem totam eum velit et.', '<p>Ducimus voluptas et optio totam harum. Molestias nihil non totam ut. Incidunt labore enim et quaerat provident aliquam.</p><p>Rerum sit nihil architecto quo accusamus ut. Ut deleniti occaecati quia deserunt dolorem.</p><p>Illo deleniti corrupti in nam dolores placeat aspernatur. Similique ullam id distinctio sapiente. Aut molestiae laboriosam nesciunt aut temporibus omnis aut et. Temporibus ipsa soluta consequuntur numquam ea soluta quis.</p><p>Consequatur ab earum nostrum optio eius deleniti laudantium. Veritatis quaerat voluptatum sit quas optio odit. Quos totam consequuntur ipsa laudantium perferendis iusto.</p><p>Rem cumque illo architecto aliquid accusamus vitae totam ut. Recusandae ipsam ratione iste qui blanditiis sint ipsum. Minus aut dolor aut quia aut.</p><p>Natus consequatur inventore beatae numquam ad qui sit. Voluptatum blanditiis quas est aut ut animi fugiat. Laudantium tempora quae nisi qui suscipit.</p><p>Ut dolor eius odio sunt est est. Nesciunt veniam et quo ut. Corrupti ipsam dicta cumque aliquam voluptatum amet asperiores.</p><p>Eos consectetur eum labore in molestias. Voluptas ex est voluptas. Alias nulla officiis porro error quia quod ipsam quis. Et omnis accusantium soluta quis qui.</p><p>Id in unde ullam quibusdam iste hic velit. Optio qui facilis eligendi repellendus quae enim aut voluptate. Qui autem excepturi ad ipsa nobis facere. Soluta quam modi ipsam quam quidem dolorem. Culpa commodi distinctio facere rerum velit.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(10, 2, 1, 'Non aut impedit laboriosam eos accusamus suscipit.', 'repudiandae-laboriosam-quae-consequuntur-velit', NULL, 'Molestiae et fuga non enim voluptatem culpa nulla. Consequatur exercitationem aut consequatur velit ullam deleniti fuga. Corporis ea deleniti voluptas laudantium voluptatem.', '<p>Voluptas et quibusdam sit quam. Fugit error beatae odit aperiam ut harum voluptatem. Dolorum iure maxime quidem aspernatur eligendi quia. Amet vel excepturi alias ab consequatur.</p><p>Dolores atque doloremque natus voluptate qui hic repudiandae. Vero voluptates autem dolores omnis tenetur repellendus sapiente. Illo iste rem iusto consequuntur similique explicabo.</p><p>Omnis deserunt explicabo veniam et voluptatibus nostrum mollitia deserunt. Molestiae nihil dolor eaque occaecati aut possimus. Maxime et ipsum qui quia esse necessitatibus.</p><p>Et provident qui a facilis. Tempore quasi ex quam. Nostrum accusamus deleniti quo ut praesentium maxime. Qui provident qui ea cumque quia occaecati.</p><p>Ipsum veritatis iusto sed dignissimos est et. Eius excepturi omnis neque enim pariatur qui architecto. Fuga in ea harum iure aliquam eius occaecati et.</p><p>Nulla distinctio consectetur rerum voluptatibus et sed voluptatibus. Quod dolorem dolores repudiandae nulla quod. Esse sed quis consequatur aut.</p><p>Sint eos suscipit earum ut officiis in harum. Exercitationem ab et molestiae quidem sunt. A dolorem vel sed earum tempore ea rem. Quia nesciunt voluptate dolorem distinctio ea et dolorem beatae. Ipsum dolores et rerum recusandae.</p><p>Cupiditate hic sit ut cumque. Odit et porro asperiores. Sed aut explicabo voluptates cum cum itaque aliquam ut.</p><p>Animi reprehenderit quibusdam ducimus ratione et officiis. Labore non odio at dolore numquam sit. Illo vero ipsam aspernatur libero. Consectetur non hic quia veritatis vel asperiores ut.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(11, 1, 1, 'Velit iste sapiente a veniam.', 'sapiente-quo-nulla-et-blanditiis-atque-porro-quidem', NULL, 'Beatae qui sit adipisci voluptate. Provident voluptatem eligendi tenetur inventore omnis officia modi. Deleniti porro voluptatem et doloremque.', '<p>Occaecati atque fugiat temporibus ut omnis perferendis optio. Sequi officia eos et aspernatur quibusdam. Est quibusdam occaecati dicta placeat.</p><p>Et deleniti reiciendis est quis commodi modi laboriosam. Aut pariatur deserunt et dignissimos.</p><p>Ut distinctio reprehenderit et sit ex. Ex similique aut itaque qui. Ut id quo delectus dignissimos voluptates libero est.</p><p>Illum minima sint officiis ipsum. Est voluptates corrupti cumque occaecati. Nam cumque dolor dolor impedit necessitatibus.</p><p>Deserunt sit eligendi soluta nemo. Doloremque quidem magni cupiditate esse. Numquam earum recusandae qui in reprehenderit consectetur. Accusamus optio accusantium et debitis nisi excepturi.</p><p>Numquam sed et maxime et. Facere animi earum odio ab odit. Itaque debitis deleniti at culpa.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(12, 1, 1, 'Aperiam consequatur quia excepturi molestiae at.', 'voluptatibus-non-labore-optio-autem-quia-quam-sit', NULL, 'Dolor eveniet possimus dolorem accusantium aut. Illo sit voluptatem qui distinctio ut eum. Possimus voluptas placeat et occaecati quos amet maxime harum.', '<p>Nostrum et nobis libero officiis voluptatum minus quis accusamus. Quasi quam ab rerum et aspernatur fugit nihil.</p><p>Autem magni eum est ipsa quaerat dolorem eveniet. Excepturi qui quod nemo sit sed qui est. Sunt asperiores quo laborum ut soluta quod. A dolorem animi cumque velit.</p><p>Optio ea aut temporibus consequatur qui a. Quam cupiditate rerum sed quidem. Et ut eum nam est.</p><p>Dignissimos enim ea consectetur. Natus tempora assumenda rerum quibusdam ab voluptatem ab.</p><p>Sed fugiat dolor nihil temporibus. Sint et delectus sapiente fuga et optio fugiat. Illo aut sunt rem dolore numquam pariatur beatae illo. Porro similique ea voluptas velit.</p><p>Voluptatem fugiat corporis itaque molestiae aliquid sunt cupiditate. Saepe quis voluptatibus necessitatibus ea nam.</p><p>Vel sint cupiditate eveniet consectetur. A ut doloribus et. Nulla natus rerum nulla ipsa quia modi amet.</p><p>Sint culpa facere tempora rerum cumque. Qui qui earum dolorem eos voluptatem qui. Totam natus harum ut sit quia est non. Iusto tempore quos voluptates delectus vero commodi.</p><p>Impedit aliquam ullam laborum optio sapiente. Voluptatem quo quia eius. Expedita accusamus fuga earum.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(13, 2, 1, 'Neque quasi possimus ipsam praesentium possimus consequuntur culpa.', 'mollitia-sit-deleniti-eveniet', NULL, 'Doloribus eius aperiam aliquid ex nostrum atque. Ex id at possimus sequi perspiciatis velit officiis illum. Repellendus sint quos inventore id debitis excepturi saepe fuga. Alias molestiae tempora possimus libero.', '<p>At ut tempore sequi pariatur voluptatum quod deleniti. Accusantium deserunt ratione aut ea ducimus. Earum ut molestiae quod illum aperiam. Doloribus autem laboriosam repellat.</p><p>Accusamus sit reiciendis amet rerum ut quia. Delectus assumenda sint est sit. Officiis quo eum eligendi voluptatem.</p><p>Et ex facere est. Voluptatibus id officia distinctio nam. Reprehenderit et ipsa voluptas quas. Ut soluta ut aut omnis.</p><p>Laudantium totam at non eum. Autem dolor quod debitis at iste qui.</p><p>Et quia et facere quis quisquam non ipsa. Vero sit doloremque aut quo quae velit fugiat. Reprehenderit saepe magnam et totam sunt magni quaerat in. Alias sit dolorum distinctio ipsum ipsum esse. Commodi aperiam quae aspernatur et eos amet doloribus qui.</p><p>Odit dolores aut excepturi nostrum nostrum quia qui. Et modi qui est culpa laboriosam earum odit. Placeat et placeat est quo magnam fugiat velit.</p><p>Soluta quia qui libero cum amet dolores architecto praesentium. Sit quam sunt aut temporibus. Repellat et nihil optio illum omnis.</p><p>Consequatur aut quo ipsam tenetur sit. Et qui molestiae autem repellat. Nesciunt eaque ea sunt ea nihil non eligendi.</p><p>Harum id similique et laudantium. Autem sed repellendus veritatis praesentium. Officiis illum et alias ut.</p><p>Porro reiciendis in error. Enim aliquam expedita aperiam dicta ea placeat incidunt. Consequatur modi praesentium doloremque ut necessitatibus. Architecto provident ratione accusamus quia unde ut.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(14, 2, 3, 'Id corporis deleniti voluptatibus veritatis voluptatem culpa id repellendus.', 'et-qui-totam-repellat', NULL, 'Excepturi veniam omnis minima est. Dicta debitis est ipsam corporis ut et. Ab sit nisi dolores quia quaerat. Dolor qui eius amet dicta id dolores eos. Sit minima odio doloribus at in eos.', '<p>Tempore eveniet aperiam temporibus pariatur occaecati perspiciatis. Et fugiat ipsum nihil est facere autem. Veritatis soluta nemo voluptatem sint aut debitis.</p><p>Recusandae et et vel recusandae. Vel reprehenderit saepe iste. Rerum dolore aut reprehenderit rerum voluptatem accusantium. Ullam doloremque sed quam fugit.</p><p>Facere velit temporibus veritatis consequatur cumque culpa voluptatum. Velit enim quasi ea. Repellendus harum rem laborum ex est voluptatum et sed.</p><p>Vitae quae laborum aut saepe ut. Beatae accusantium vitae tempore harum consequatur maiores.</p><p>Labore sint eos ratione optio et. Aut magnam dolorum modi dolores vitae doloremque maiores. Labore nihil omnis nobis ut et. Neque sunt asperiores quisquam et in quod molestiae.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(15, 1, 1, 'Sed ut reiciendis deserunt recusandae similique.', 'illum-labore-quo-aliquid', NULL, 'Deleniti voluptate voluptas facilis est omnis laudantium ut. Blanditiis eum adipisci possimus est quia aut. Velit quis itaque et nihil optio provident. Ipsum error repudiandae pariatur velit alias necessitatibus.', '<p>Voluptates eum repellendus autem delectus vel reprehenderit beatae. Officiis omnis consequatur laborum consectetur. Qui voluptate corrupti ut aliquid dolorem non. Qui dolorem autem sit ut qui sit praesentium.</p><p>Ut deleniti dolores veniam porro quae. Asperiores architecto voluptates debitis eveniet aut. Non magnam quo eveniet placeat sapiente. Qui ut inventore fugiat vel recusandae.</p><p>Et sed provident voluptatem dolores nisi similique consequatur. Doloremque facilis eius id optio qui voluptatem exercitationem. Est quos beatae earum error libero assumenda nemo rerum. Quia a est itaque voluptatibus sunt praesentium.</p><p>Possimus molestias cumque doloremque. Blanditiis placeat occaecati provident rerum fuga provident illo. Sapiente nihil deserunt enim id. Est quia illo asperiores at placeat nam ut. Quisquam est nostrum ut quo neque consequuntur.</p><p>Qui quia et in impedit. Eum officia aspernatur ipsam hic modi repudiandae. Autem non natus similique aut. Vero sed adipisci ut voluptate omnis officiis.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(16, 2, 2, 'Nemo et ut minima laboriosam soluta aperiam sit aut minus magni.', 'corrupti-reiciendis-quis-et', NULL, 'Commodi numquam repellendus sunt. Incidunt itaque ex delectus enim aut. Sint est dolorem eligendi optio porro asperiores occaecati reiciendis.', '<p>Dolores tenetur accusantium excepturi est id incidunt voluptas. Facere ut blanditiis qui consequatur. Laudantium repellat facilis exercitationem aut sed iste culpa sed. Autem quam quod amet placeat vel magnam ut totam.</p><p>Eligendi voluptatem dolore saepe aut. Harum nisi recusandae velit enim sed consectetur. Voluptatem fugit natus recusandae ut voluptas quis. Corporis consequuntur ut ut est harum provident vel dolores.</p><p>Neque natus quia aut molestiae dolores. Repellendus voluptatem delectus autem quos sint. Numquam a maiores harum a consectetur.</p><p>Rerum quis quos aut dolor ullam sunt. Quia similique quisquam porro iure nostrum ducimus. Cupiditate quia non ex ea voluptas est consequatur velit. In non magnam molestiae necessitatibus ipsam nobis voluptas earum. Quis in nemo et quasi eligendi sint voluptatem.</p><p>Ullam eos fugiat omnis nostrum quod dolores deserunt. Qui aspernatur quo illum tenetur. Dolor modi repudiandae reiciendis corrupti facere veritatis ut. Aspernatur aspernatur iusto tempore reprehenderit.</p><p>Nihil eum perferendis modi quo earum minima et. Consequatur quibusdam aliquid sunt voluptates. Ad quas nihil error et et libero magni.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(17, 1, 2, 'Praesentium qui.', 'voluptate-corrupti-sequi-quia-excepturi-voluptas-aliquam-nesciunt', NULL, 'Et est perferendis consequatur beatae ea qui. Velit consectetur libero deserunt reprehenderit voluptate laborum repellendus quis. Sit inventore nihil adipisci est quasi.', '<p>Est sunt placeat iure ducimus et et veritatis. Consequuntur aut non porro.</p><p>Consequatur voluptatibus eligendi iure qui. Non aut quas aut dolor reprehenderit voluptas. Qui temporibus accusamus iusto explicabo. Ipsa a tenetur error sed velit minus est.</p><p>Et aut vel dolor quas exercitationem culpa. Minus inventore amet sit. Quia tempora est ratione natus.</p><p>Nemo et error ex quasi. Omnis enim ducimus velit eos eos deserunt voluptatem. Autem quam qui ipsa. Ex quam saepe officia laborum.</p><p>Illo dolorum omnis eius tempore asperiores et. Quia recusandae molestias et qui unde aliquam sit. Consequatur id quia eos fuga quasi eum natus. Libero voluptatem et et ipsa.</p><p>Nemo dolorum rerum qui aut. In hic ratione dolores quod. Mollitia sed suscipit necessitatibus ut adipisci. Incidunt exercitationem assumenda velit optio eos.</p><p>Odit laboriosam minus quia. Debitis dolor natus illum corrupti. Eos illo aspernatur soluta quasi ut officiis. Deleniti aut laborum id atque dolorem at.</p><p>Omnis possimus impedit quia itaque non provident. Nobis tenetur quisquam eligendi nobis ipsum. Neque qui nobis aut id.</p><p>Sunt nam dolore voluptas iure. Tempora quam maxime perspiciatis voluptates amet asperiores saepe. Id perferendis deserunt eius perspiciatis. Nostrum illo eos aliquid at non distinctio.</p><p>Autem non suscipit id amet sit temporibus. Eaque quae ab repudiandae. Ipsam quos in qui et qui et. Qui delectus delectus suscipit fugiat possimus.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(18, 1, 2, 'Quia repellendus voluptatem quia reiciendis rerum at ullam sequi.', 'ea-fuga-tempora-ratione-illum-porro-nisi-voluptatem', NULL, 'Ratione ut optio aut vitae. Et aliquam quibusdam aut. Et nobis nisi aperiam doloremque. Qui minima et quibusdam qui.', '<p>Sapiente reiciendis consequuntur non voluptas voluptatem quis. Optio maxime aut eius voluptatem. At non rem repudiandae ut aperiam ut ut. Dolor qui ea fugiat rem ratione reiciendis. Et autem a ut laudantium dolorem sequi aspernatur.</p><p>Magni fugiat sed alias nemo reiciendis odio iure. Sint vel fugit quisquam aut sequi. Voluptas quos consequatur dolor tempore. Sequi labore repudiandae quia nemo quis sed incidunt.</p><p>Consequatur velit optio occaecati saepe. Possimus voluptas nulla assumenda et cupiditate asperiores culpa saepe. Quia assumenda fuga cupiditate nisi.</p><p>Aperiam blanditiis velit ipsum dolor. Id quo culpa aspernatur sit. Non quia facilis veniam minus aut. Aut consequatur aliquid earum.</p><p>Sunt quis sunt eius repudiandae est a inventore. Est quis esse libero. Et vero ducimus tempora. Vitae cum molestiae rem quos eos rerum est. Aut nihil similique tempora optio sed quis fugit.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(19, 1, 3, 'Iste recusandae qui inventore facilis ea perspiciatis occaecati.', 'totam-autem-consequatur-omnis-rerum-eius-eos', NULL, 'Illum doloremque deleniti repudiandae eos occaecati et saepe. Ut sit voluptatem minima. Nihil eos aut vero dolores sit est dolor. Velit alias amet quo consequatur.', '<p>Harum aut tempore rerum occaecati cumque. Recusandae ut illum cumque dolor atque nulla. In porro nesciunt incidunt laudantium laudantium. Facilis illo enim consectetur quo cumque aut et. Et sunt quas est dolorem aut.</p><p>Rerum non dicta est totam. Dolorem qui vero dolorum est. Voluptatem sunt harum aut ut eos aliquid. Hic iure assumenda voluptas non esse dolore.</p><p>Iusto dolorem omnis omnis. Repudiandae voluptatem fugit sint aspernatur.</p><p>Ducimus perspiciatis suscipit quis nostrum nam. Aut qui corrupti blanditiis et iste officia qui. Consequatur similique est aut dolor. Natus aut a repellat cumque ut perferendis praesentium.</p><p>Minus officia porro numquam voluptatibus. Et molestiae non eius sit atque voluptate. Mollitia et atque architecto illum in ipsa unde. Vel vero aliquam animi at magnam voluptas consequatur non.</p><p>Exercitationem minus et ut earum qui. Facere hic itaque enim et veritatis. Beatae porro illum iusto aut laudantium.</p><p>Aspernatur quis harum explicabo est atque saepe ducimus aut. Officiis et blanditiis vel. Adipisci sequi sunt quas debitis aut. Qui omnis enim et reiciendis ducimus quo.</p><p>Rerum a aut qui alias quasi consectetur consequatur qui. Id illum nemo excepturi tempore eligendi id. Tempora rerum quo rerum vel adipisci.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(20, 2, 1, 'Quasi neque.', 'quia-eaque-animi-quia-accusamus', NULL, 'Officia eum rem id velit ut voluptatem. Sed eaque sed magnam et dicta omnis quis. Corrupti et qui vitae asperiores ut qui. Voluptates possimus occaecati doloribus veniam.', '<p>Earum inventore sint et quidem libero dolor voluptates. Sint et pariatur impedit iste. Non velit sit vitae.</p><p>Enim ut et et. Non ratione neque sint maiores. Magni laborum doloremque explicabo iste quasi libero minus. Consequatur quibusdam dolorum rem animi quia dolorem.</p><p>Qui perferendis quia ad dignissimos ut. Error voluptas error rerum tempora. Dolore sit aut blanditiis qui quae molestiae. Qui vel qui voluptas minus laudantium et repellat.</p><p>Voluptatem magni nihil molestiae omnis. Enim molestiae minus voluptatum consequatur. Consequuntur expedita modi laborum error est mollitia.</p><p>Dolorem qui perspiciatis officia architecto dolorem. Ea unde quisquam vel velit. Et harum qui eum architecto dolorem.</p><p>Veniam dolore voluptatem consequatur autem molestiae sunt voluptas. Quas aliquid est laboriosam qui eligendi quis. Facere et doloremque non accusantium vel harum.</p><p>Sequi ad amet culpa voluptas. Iure excepturi dolorem nisi non qui. Ex minus fuga et dolores blanditiis odit et ipsa.</p><p>Repellat expedita ut hic voluptate qui sit unde earum. Aut ut repellendus laboriosam voluptatem id in. Nesciunt debitis non perspiciatis laudantium. Beatae id aut consequatur quidem.</p><p>Et autem magni eos qui in possimus. Distinctio minima accusamus doloremque porro odit nihil nostrum quas. Quo nulla rerum qui debitis sed. Doloribus temporibus minima ea et est facere.</p><p>Iusto similique aperiam molestiae dolores et inventore quaerat. Sit natus ducimus nesciunt quaerat eum ipsam.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(21, 2, 2, 'Voluptatem omnis.', 'illo-quam-similique-sapiente-nisi-magnam-autem-aperiam', NULL, 'Iure quos et nisi aut. Id aut doloremque alias vel occaecati sequi. Praesentium officia modi qui incidunt incidunt rerum unde. Fugiat hic sed totam suscipit iste sunt non ab.', '<p>Suscipit eaque quisquam sapiente qui. Quos dolorem ipsam molestias deserunt id velit nobis nulla. Voluptate tempore necessitatibus nihil in dicta eius ex. Fugit est adipisci qui non consequatur accusantium.</p><p>Saepe commodi quis sequi laborum sed. Hic unde quae voluptatibus. Asperiores et error laudantium qui ut. Magni quo optio excepturi rem voluptatem autem sequi. Dolor natus numquam eligendi consequatur libero quae numquam aspernatur.</p><p>Vel reiciendis voluptate dicta aut. Ea asperiores velit dolorum qui sint nemo sit. Deleniti labore quaerat et et.</p><p>Non necessitatibus aperiam ut aut quia cupiditate voluptatem. Eos enim quas eligendi excepturi tempore quia. Qui sed quod debitis sit culpa laboriosam. Amet et rerum rerum repellendus quia.</p><p>Suscipit sed molestias rem neque molestiae repellendus amet. Minima iste quo quia et magni. Facere vero deserunt suscipit amet.</p><p>Cumque mollitia distinctio et sunt porro cumque quas perferendis. Unde eligendi eum non qui et accusamus. Necessitatibus optio aliquam quidem quas rerum ea veritatis. In qui facere ut animi.</p><p>Natus ratione voluptates sunt aut animi. Nihil ipsum omnis exercitationem et. Molestiae voluptatem quaerat reprehenderit incidunt velit. Et qui dolores delectus.</p><p>Labore quia eligendi vel aperiam. Eos in repellendus rerum optio. Consequatur quas autem rerum est architecto qui sit quo. Cupiditate et eligendi vel aliquam impedit aut quam corrupti.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(22, 2, 1, 'Expedita assumenda eaque aspernatur hic omnis sint sit.', 'eum-explicabo-quidem-autem-aliquid-fugiat-voluptatem', NULL, 'Itaque odio laborum aut nam dolorum at. Ad id quisquam minima et quia quaerat temporibus expedita.', '<p>Expedita rerum dolor qui. Beatae cumque facere quis necessitatibus minima et. Est aut rerum exercitationem voluptatum quos. Et sed nisi ea totam.</p><p>Quia in doloribus dolore nesciunt fugit vitae voluptatem. Iure qui eos est eveniet quo. Eaque ea voluptas magni dolore. Quisquam consequuntur molestiae quo pariatur nisi voluptatibus consectetur recusandae.</p><p>Cum dicta officiis nemo ducimus. Sapiente voluptas iste sit tempore optio sit autem. Quo sit quia omnis voluptatem atque iure autem. Qui quia assumenda assumenda unde perspiciatis molestias aliquam reprehenderit.</p><p>Recusandae cum voluptatem nihil sed quaerat. Enim et perspiciatis esse vitae non impedit. Velit ad sit sequi consequatur nisi.</p><p>Aut molestiae sit natus officia aut voluptas. Asperiores eligendi eum voluptatum ad. Et impedit dolorem ullam ex dolore enim.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(23, 1, 2, 'Voluptatum autem laudantium.', 'at-non-minus-consequatur-quibusdam-error-qui-nisi', NULL, 'Illum aperiam ea doloremque quaerat iure. Expedita aliquid et et et. Et omnis praesentium numquam eaque quia accusamus suscipit. Similique deleniti necessitatibus voluptatem quo temporibus quisquam quod.', '<p>Ipsa a nisi veritatis optio. Laudantium dolore rem iusto ea et voluptates voluptatibus. Deserunt id quis voluptatibus exercitationem id consequatur. Laboriosam sunt distinctio aut quam architecto.</p><p>Nihil occaecati id saepe vitae. Error quo minus dolor delectus quasi. Quia officia dolor et iusto sit distinctio.</p><p>Pariatur animi nostrum autem dolor quia. Nulla non similique est consequatur eum adipisci. Iste voluptatem debitis repellendus quasi ut. Velit ut nesciunt amet quibusdam.</p><p>Consequatur iste iusto est assumenda dolores at eaque. Quidem eos corrupti incidunt. Animi odit inventore et reiciendis libero molestiae dolores. Aspernatur asperiores occaecati quis molestiae id.</p><p>Qui nam quo voluptate repellendus dolor reiciendis. Omnis facere explicabo ut porro. Odio illum animi cupiditate nihil est eum.</p><p>Iusto ex corporis beatae ea ipsum explicabo. Libero laborum cum dolores voluptatibus.</p><p>Ea deleniti distinctio soluta distinctio. Quia debitis consectetur esse ea minus molestias blanditiis. Perferendis nostrum qui voluptatem rerum. Eligendi quam occaecati qui hic distinctio.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(24, 2, 2, 'Ut voluptatem quia nemo animi.', 'porro-numquam-quaerat-sint-maxime-repellendus', NULL, 'Qui laborum quas in magnam. Sunt aut suscipit laborum eos tempore nisi numquam. Quae autem qui delectus nisi.', '<p>Dolore aut eaque et. Voluptatem placeat quam temporibus pariatur. Magnam perspiciatis iure totam voluptates et ea. Sit aut ex illo tenetur consequatur. Repudiandae natus sed esse in numquam quia voluptatem.</p><p>Culpa nesciunt reiciendis consequuntur. Dolorem omnis enim illo accusantium. Libero unde nostrum pariatur fugiat repudiandae harum aut. Blanditiis maxime corporis vitae et aliquam quis necessitatibus.</p><p>Quis quo fuga soluta aperiam. Molestias omnis quia saepe dolor corporis velit. Nobis non reiciendis velit dolore rem.</p><p>Autem quaerat reprehenderit voluptate omnis praesentium. Excepturi velit voluptas sit voluptatem. Dolores ad aut ea sit qui aut.</p><p>Facilis dolorum cupiditate ratione at. Voluptatem voluptas quaerat ratione dolorem. Et nihil odit accusantium laudantium. Aliquid molestias iste et sint omnis ut animi suscipit.</p><p>Est voluptates dolor iusto quis. Aspernatur nihil magni similique sed molestiae voluptate aspernatur quia. Ducimus debitis repudiandae tenetur ducimus vel.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(25, 2, 2, 'Ipsa placeat illum accusantium.', 'sunt-sed-sed-eos', NULL, 'Qui nemo tempore sed quo. Sint sunt aspernatur dignissimos fugit sint quod in. Commodi quod iusto fugit est aut error. Sed accusantium quis dolorem esse excepturi et.', '<p>Rem dolore mollitia quo dolorem aut ut non. Culpa dolor consequuntur dolorem corporis. Laboriosam voluptatibus ex minima earum culpa. Quaerat iste accusamus assumenda maxime rem.</p><p>Ipsam maxime vel aut atque veritatis earum vero. Reprehenderit eos numquam libero. Nostrum quas nesciunt quaerat est placeat. Odio aperiam dolores aliquid accusamus.</p><p>Non consequuntur omnis sit itaque adipisci ut corporis autem. A neque voluptate vel molestiae et ut cumque. Eius itaque qui tempora ipsum officiis autem placeat.</p><p>Vero deserunt natus hic molestias aut excepturi nam. Ut officia aut rerum tenetur laudantium qui. Provident in enim aut provident minus voluptates. Possimus deserunt et quos laborum doloremque ea accusantium. Aut expedita sint ad voluptatem consectetur ea.</p><p>Quibusdam ut ipsam aliquid beatae saepe adipisci quibusdam. Omnis ab rerum consequuntur quos ratione atque molestiae. Voluptas id adipisci soluta nobis. Beatae eius natus ullam qui repudiandae veritatis.</p><p>Non laudantium aut adipisci quis dignissimos architecto in. Culpa laudantium sequi est. Id ut est iure omnis et possimus nulla eveniet. Illo qui placeat voluptatem sint eaque.</p><p>Perspiciatis delectus est et nihil suscipit. Dolorem hic est debitis consequuntur numquam eos. Qui reprehenderit labore ea voluptates accusantium repellat optio. Sint libero voluptas suscipit atque similique.</p><p>Magni ut debitis distinctio ratione. Natus rerum rerum rerum. Ut omnis molestiae et. Doloribus in minima officiis.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(26, 2, 2, 'Aspernatur aliquam soluta magnam consequuntur assumenda.', 'iure-voluptatibus-sunt-aut-et-odio', NULL, 'Eum illo sapiente nulla voluptas est doloribus quas quo. Fugiat possimus soluta non expedita eveniet vel. Dolores voluptatem qui rerum. Harum velit voluptate libero repellendus.', '<p>Est consequatur atque enim reprehenderit beatae minus est. Explicabo maxime possimus vero sed animi optio ad. Ab sunt aliquid est dolor repellat dignissimos earum sed.</p><p>Libero sit recusandae animi non sit aut. Minus sunt libero quibusdam sit saepe magni. Eveniet molestias rem veniam magni.</p><p>Reprehenderit aut accusantium suscipit repellat exercitationem unde velit. Molestiae corporis asperiores dicta molestias iusto quo repellendus. Repellendus ut facere maiores ad iure placeat maxime corrupti. Illo aut quos ea iusto magnam quas.</p><p>Accusantium nam non pariatur quia ducimus repellendus incidunt eos. Soluta expedita optio molestias rerum quo. Soluta amet animi id suscipit quaerat aut voluptate. Ad totam in sed culpa corrupti ab.</p><p>Nesciunt illo assumenda mollitia magni harum eaque. Doloribus corporis mollitia nemo ad fugiat aperiam facere inventore. Molestiae reiciendis temporibus deleniti ab. Praesentium et dolorem quae velit est sunt labore. Necessitatibus et ex distinctio quia.</p><p>Esse beatae modi corporis neque eum. Rem saepe doloribus voluptatem numquam ad. Tenetur modi laboriosam et excepturi dolor consectetur sunt ab.</p><p>Reprehenderit et debitis quaerat et consectetur illo sunt nam. Dignissimos a laborum totam quos molestias tempore. Corporis expedita facere doloremque error quisquam sint repellat et.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(27, 1, 3, 'Animi quibusdam.', 'sunt-saepe-ratione-est-ut-quia-earum-maiores-officia', NULL, 'Corrupti qui dolorem commodi. Sunt soluta impedit excepturi sequi. Labore eaque nobis magni molestias.', '<p>Iure natus quis fuga aspernatur consequuntur soluta. Delectus eos fuga et eius hic. Debitis sed illum dicta illum quas qui est. Sunt explicabo ratione non ducimus.</p><p>Exercitationem consequatur velit ad qui dolorum modi. Accusamus delectus molestiae est quis quidem. Sunt occaecati asperiores sit.</p><p>Est consequatur odit aut consequatur architecto est. Est amet tempora ipsa non nemo ipsa. Cum et dolores fuga consequuntur.</p><p>Iure iste perspiciatis velit dicta qui officia ducimus sed. Quis quas quia voluptates animi quia. Neque asperiores quis quas sit.</p><p>Illo animi non rem rerum recusandae. Explicabo officiis voluptatem laboriosam laborum enim. Veniam ullam soluta aut ut sed.</p><p>Totam quibusdam quo velit possimus animi qui et. In quia totam aut necessitatibus aliquid aut. Qui est quisquam nisi sint eaque aliquid. Quia voluptas enim hic voluptatem voluptas autem.</p><p>Voluptatem voluptas et molestias sequi dolores. Expedita sed consequuntur voluptatem. Dolor molestiae rerum aspernatur quam laudantium. Harum est asperiores neque est sed cumque nihil aliquam. Omnis et unde dolore nisi.</p><p>Repellendus quod et error consectetur hic distinctio aut non. Reiciendis consequatur deserunt fugit reiciendis. In distinctio ipsum nihil esse animi. Adipisci architecto iusto excepturi aperiam mollitia.</p><p>Quia officia eius a in totam. Velit qui neque ut iusto mollitia quos magnam. Nihil corporis minus distinctio distinctio et voluptatem ut.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(28, 2, 2, 'Et odit placeat non soluta.', 'rerum-harum-ducimus-magnam-sint-numquam-quo-molestiae', NULL, 'Mollitia voluptatem aut itaque sed dolores molestias. Eos et quam expedita molestiae sed et iure. Rerum voluptatem ad occaecati explicabo commodi. Ad iure quae est consectetur iste fugiat. Consectetur reprehenderit sunt placeat voluptas.', '<p>Beatae odio eaque non laudantium nulla culpa tempore. Quae ab aut sint debitis et necessitatibus. Velit quas eos qui. Dolores debitis amet dolorum inventore.</p><p>Velit veritatis velit provident esse corporis. Tenetur perferendis nihil qui commodi deleniti. Qui aspernatur reprehenderit ratione sed dolorum doloribus voluptate. Tempore quia a maxime quod minus dolorem dolor repudiandae. Cum molestias nulla pariatur nihil voluptates.</p><p>Quo maiores eos labore voluptatem aut exercitationem iusto voluptas. Totam nulla velit fuga qui laudantium. Illo animi perferendis quae ipsum deserunt. Nam vel consequatur doloribus quae voluptas facilis quasi.</p><p>Dicta ducimus quam est labore voluptate quod. Facere reiciendis aut ratione in. Illo rerum magni fugit voluptatem consequatur. Dolorum recusandae quia modi ut.</p><p>Quaerat alias et odio cum aut sed voluptas. Nisi quo voluptates quia. Dolorem suscipit rem porro necessitatibus.</p><p>Aut iste eos aperiam reiciendis quisquam. Qui sint iusto qui temporibus voluptatem.</p><p>Qui vitae velit minus necessitatibus beatae ut. Voluptatibus voluptatem sit ut et quia. Repellat cupiditate eos et recusandae possimus dolores corporis et.</p><p>Numquam id ut sit rerum ut aliquam quos. Eveniet ab qui minima harum neque veritatis repudiandae magni. Qui reprehenderit neque non ex dolorem.</p><p>Dolores sed quo iste est eos ut. Adipisci optio itaque quaerat consectetur occaecati atque vel. Doloribus quas dolores tenetur voluptas. Aut ipsam eum enim perspiciatis qui non voluptatem molestiae.</p><p>Itaque error architecto architecto modi odio. Totam neque et facilis hic et rem aspernatur quo. A id eos commodi ducimus et assumenda quidem natus.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(29, 1, 1, 'Rerum voluptatem blanditiis.', 'quia-aut-accusantium-dolore-laudantium-et', NULL, 'Saepe sed quaerat dolor adipisci saepe beatae. Incidunt sint quidem ut qui voluptatum. Ducimus eum assumenda eius aspernatur.', '<p>Qui quas excepturi rerum delectus. Magni assumenda vero aliquam magnam qui vitae mollitia.</p><p>Assumenda tempora veritatis dolor tenetur quo qui quisquam. Et maiores inventore quisquam at illo rem. Praesentium laboriosam dolorem soluta et sint et.</p><p>Ab aperiam doloremque amet voluptatem molestiae distinctio. Iusto provident qui ab dolorem neque illo adipisci. Nihil earum qui qui quia. Vitae est eveniet numquam velit et.</p><p>Recusandae nisi excepturi omnis sapiente aut iure incidunt iste. Illum eos sit facilis repudiandae sed accusantium ratione. Eius esse ut vel accusantium.</p><p>Tempora id non ea qui recusandae et cumque cumque. Maxime perferendis officia magni. Architecto quia consequatur est dignissimos ut sapiente laboriosam. At recusandae autem quam quaerat tempora fugit.</p><p>Tenetur ullam sint qui animi. Quas ullam commodi voluptas omnis rem dolor voluptatem. Reprehenderit perspiciatis est cupiditate et nostrum. Ullam voluptatum fugit enim consectetur aut ut.</p><p>Voluptatibus voluptatem ipsum occaecati fuga. Quo illo aut tenetur commodi at qui. Odio occaecati in quia non quia ea nostrum. Sit iusto sit nisi sapiente ducimus.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(30, 1, 2, 'Qui doloremque quia consequatur minima.', 'voluptas-amet-officia-dolores-itaque-voluptas-perferendis-repellat', NULL, 'Aliquam eos dolores vitae ullam quod voluptatum eveniet. Nihil est dicta quia numquam commodi. Itaque harum accusantium ex eligendi labore sit voluptas.', '<p>Provident aut aut in aliquam atque consequatur in. Rem ut odit earum omnis vero ex. Doloribus doloribus eius sint esse. Illum assumenda officiis facilis excepturi sint molestiae.</p><p>Consequatur eos sapiente aut natus qui deserunt. Saepe animi suscipit enim qui architecto quis eum a. Alias dolore rerum sed culpa impedit possimus assumenda aut. Totam modi necessitatibus sed dolorum.</p><p>Laudantium voluptas eum est perspiciatis vero quo doloribus. Velit ut enim possimus perspiciatis. Omnis modi iste aut et beatae.</p><p>Odio rerum atque necessitatibus nesciunt repellendus. Distinctio illum quis eaque odit. Alias distinctio mollitia earum nesciunt dolor. Ut et aut iste illo recusandae. Est et tempora sunt pariatur laboriosam est.</p><p>Nemo id est sed. Sint earum esse consequatur iste sit nam consequatur. Quos dolorem iusto ex voluptas dolor odio ut molestiae. Itaque explicabo veniam est velit inventore qui facilis voluptatem.</p><p>Voluptate provident qui repellendus occaecati. Animi sed perspiciatis illum nisi non. Quaerat qui sapiente voluptas temporibus quaerat dolore.</p><p>Nulla molestiae culpa soluta officia sapiente. Eaque molestiae sunt iure saepe odio. Consectetur veniam omnis quia id voluptatum hic.</p><p>Quo maiores reprehenderit pariatur consequatur rerum laborum. Sunt in et et. Quis voluptates neque nulla dolores vitae vel. Dolorem alias qui ad vel perspiciatis iste dignissimos.</p><p>Consequatur unde sed neque est cumque. Incidunt in ut sit et et ea. Doloribus quo sit corporis reprehenderit praesentium perferendis. Ad voluptate eum consequuntur reprehenderit accusamus placeat.</p><p>Repellat quia illo neque esse. Minima pariatur est ipsum occaecati voluptas quae minus. Et facilis molestiae et maiores voluptas neque laborum nihil. Ipsum ut aspernatur repudiandae illum modi asperiores.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59');
INSERT INTO `posts` (`id`, `category_id`, `user_id`, `judul`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(31, 2, 1, 'Non placeat.', 'ut-itaque-distinctio-culpa-sed-illo', NULL, 'Voluptatibus nisi aspernatur quis nulla officia. Possimus occaecati sunt excepturi. Optio quae necessitatibus deleniti dolorem asperiores sit maiores.', '<p>Earum atque dolores quo minus voluptate. Porro corporis tenetur qui temporibus velit magni magnam. Ipsum quaerat quod qui quo occaecati sapiente.</p><p>Repudiandae impedit suscipit ut quis. Deserunt reiciendis itaque enim esse soluta.</p><p>Nemo et eum a dignissimos assumenda nesciunt enim. Similique incidunt sed corporis fuga aut aperiam iste. Autem esse rerum dolorem quisquam numquam nam velit. Est quis quis iste sit molestiae quod.</p><p>Quia ad qui nesciunt illum ut. Voluptatem optio quos culpa accusantium voluptatum. Quia voluptatum ipsa voluptatibus ullam natus.</p><p>Est qui rerum tempora deserunt quasi saepe. Qui molestiae est iusto libero eos necessitatibus deleniti. Vero odit mollitia suscipit quia molestiae molestiae consequatur id.</p><p>Soluta sit distinctio ut molestias ut ut praesentium vitae. Eum magnam et modi sint. Vel et aspernatur voluptates aliquid itaque delectus fugit reprehenderit.</p><p>Consequatur sequi voluptatem alias aut magni. Exercitationem odio iste vero aut accusantium recusandae eligendi. Ut iste ipsa exercitationem unde quae vel dolores deserunt.</p><p>Assumenda itaque unde doloremque omnis placeat. Id harum sunt consequatur harum porro. Officia similique pariatur et. Ratione dolores ut qui vel.</p><p>Quia voluptatum error ut adipisci omnis sit. Sed dolore vel placeat rem pariatur id aliquid. Qui nihil quia voluptatem. Dicta placeat ut et repellat.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(32, 2, 1, 'Unde harum sunt aut quod omnis nobis ducimus rem nihil.', 'laboriosam-sed-eius-amet-consequatur-voluptatem-ipsa-nemo', NULL, 'Delectus error odio nemo quis. Atque excepturi voluptatem in sed aperiam quasi. Aut et sint ipsam veniam facere. Id sequi earum ut repudiandae ullam in sed.', '<p>Voluptatum aspernatur quos eos asperiores vel eligendi. Fugiat facilis recusandae et non. Tempore facere voluptates velit quae assumenda dolore quos amet. Excepturi odio ut et laborum non consectetur.</p><p>Labore laboriosam temporibus voluptas. Omnis corrupti et adipisci maxime. Cupiditate est totam enim facere repudiandae.</p><p>Aut optio aut perferendis vel eum repudiandae. Expedita laborum quasi voluptas ut voluptatem quo sit reprehenderit. Dolores nobis qui impedit illum. Numquam perferendis aut et voluptatem voluptatem ut illo.</p><p>Nesciunt explicabo explicabo eligendi. Deleniti qui consequuntur error placeat nulla ipsa quas.</p><p>Aut error ipsum quibusdam qui rem tempora. Voluptatem enim facilis atque et blanditiis. Expedita culpa et velit inventore inventore. Ipsam excepturi consequatur dolore commodi.</p><p>Aut excepturi qui tenetur exercitationem. Excepturi qui dolorem sequi culpa dicta assumenda deserunt enim. Cumque laboriosam ut ea corporis.</p><p>Architecto quis sequi excepturi nam. Expedita aut corporis fugiat amet tempora a. Totam fuga dolorem blanditiis natus omnis. Qui molestiae omnis praesentium neque ut animi esse.</p><p>Eum et praesentium autem voluptatum. Nulla facilis quibusdam consectetur non enim. Voluptatum labore nam nulla. Tenetur necessitatibus fuga porro consequatur sit quia fugit.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(33, 2, 2, 'Reiciendis est aut accusantium nemo.', 'sunt-sed-dolor-nihil-beatae-illo-voluptatibus', NULL, 'Quos cumque aut reiciendis et corrupti quam autem. Nobis ut doloremque deleniti in aut ad. Iusto nesciunt sed non sequi debitis dignissimos minima velit. Ut veniam odit eaque et nihil laboriosam.', '<p>Quod est doloribus quia. Molestiae voluptates modi explicabo cum perferendis. Temporibus corporis eligendi et ut non.</p><p>Excepturi error est unde est ut. Dicta necessitatibus aut suscipit culpa aut. Eum quasi repudiandae deleniti explicabo nostrum rem.</p><p>Repellat et iusto mollitia laudantium laboriosam. Maxime eligendi repellendus molestiae quis.</p><p>Pariatur sunt id velit nulla provident possimus. Impedit sit perferendis ipsum quisquam at fugit officia. Dolores voluptas atque enim assumenda vero assumenda. Voluptatem dignissimos ut voluptas ratione ipsa tempore consequatur.</p><p>Consectetur quasi quo quis quos incidunt eos minima. Ad odio laudantium natus sint aliquam optio. Minus corrupti dolor dolorum illo eos id qui. Voluptatibus dolorum ut expedita aut vitae magnam.</p><p>Eos eum quia commodi aut. Voluptatibus eum eum voluptas sunt quas est eos. Vel molestiae at molestias aut dicta non. Laborum voluptatibus nemo explicabo non.</p><p>Enim dignissimos qui vel veritatis delectus et vitae. In quo numquam enim. Voluptatem eos sint qui et et qui. Labore cum molestiae illo error.</p><p>Enim optio enim et mollitia sint laboriosam dolores. Possimus et suscipit rem officia dolorem voluptatem. Explicabo quisquam ipsa aut quos et.</p><p>Ducimus dolore qui consectetur est nesciunt odit. Est aut sed dicta amet dolores explicabo sed et. Illum officiis veritatis deserunt. Quidem nulla non ipsa quod eveniet.</p><p>Dolores consequatur nisi labore voluptas voluptas voluptates illo. Quam enim voluptatem ad atque veritatis aliquid nisi non. Ipsum facilis et dolorem modi.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(34, 2, 2, 'Sint eveniet esse.', 'molestiae-nesciunt-et-similique-voluptatem-voluptatibus-rerum', NULL, 'Maiores officiis ducimus enim. Commodi adipisci sint et. Aut mollitia eveniet quam et veritatis nemo libero voluptas. Suscipit eligendi repellat sed.', '<p>Praesentium rerum esse maiores dolorem non dolorum harum. Est veniam accusantium praesentium at architecto. Vel est est ipsum quas voluptatibus unde. Ex ducimus ea adipisci consectetur quod.</p><p>Illo quia et distinctio aut. Velit saepe ratione aut occaecati et hic. Optio maxime tempore consequuntur explicabo qui quia.</p><p>Sit dolor voluptate illum. Temporibus molestias aliquam harum repellat iste quia. Facere est et rerum. Porro fugiat cumque sapiente placeat qui libero.</p><p>Quia nisi deleniti ex. Aut et qui sint soluta. Quibusdam sequi inventore quis.</p><p>Qui et eos nostrum quisquam est illo. Rem quo dolorem praesentium dolorem. Officia tenetur dolorem nisi aut. Velit sit iure dolorem et odit.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(35, 2, 1, 'Sapiente perferendis totam incidunt nisi deserunt sapiente magni reiciendis rem.', 'autem-qui-aut-nemo-exercitationem-aperiam-expedita-voluptatem', NULL, 'Nam fuga amet quia. Molestiae et omnis fuga dicta culpa architecto. Voluptatibus et sit ab perspiciatis cupiditate commodi repudiandae. Unde quam cumque voluptatibus.', '<p>Facere suscipit velit itaque odio inventore. Qui rerum nihil aut velit sunt corrupti dolorem. Veniam expedita cupiditate earum tenetur nam ad.</p><p>Dolor ad eius odit voluptas. Sapiente est ut qui error. Perspiciatis pariatur earum ut assumenda repudiandae natus inventore et. Vel est sit veritatis iste aliquid consequatur.</p><p>Iusto quam praesentium deserunt. Incidunt nihil magnam officia enim numquam odit omnis. Rerum explicabo quis explicabo est non recusandae non.</p><p>Molestiae deleniti dignissimos quos atque asperiores qui soluta. Pariatur voluptas magnam delectus esse odio dignissimos. Ut ex porro earum id repudiandae explicabo. Rerum nihil delectus sunt eum facilis et.</p><p>Doloremque quo et laboriosam animi culpa repudiandae. Voluptas veniam distinctio officia exercitationem et in. Sapiente ex sit velit culpa eius.</p><p>Nesciunt non dolorum aliquam vero. In commodi voluptatem nesciunt vitae veritatis quo. Perferendis quasi quis dolorem debitis voluptate.</p><p>Blanditiis mollitia ea aliquid aliquid molestiae. A eum laboriosam ullam provident aspernatur voluptas voluptate. Facilis molestiae fugit vero dolores. Vel dolorem temporibus suscipit consequatur commodi earum iusto.</p><p>Delectus quaerat enim aliquid inventore enim voluptas. Libero cum dolore voluptas earum eveniet. Expedita delectus rerum placeat quibusdam asperiores ad. Ea nulla et error nisi.</p><p>Inventore ullam nesciunt a. Qui deleniti impedit sint fugit dicta eius. Aliquid eos perspiciatis ad sit et vero.</p><p>Praesentium quia perferendis sunt sunt. Explicabo exercitationem molestias quas accusantium et aperiam. Repellendus similique nihil nostrum dolorem est vitae ipsam. Consectetur aspernatur qui eum dolores.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(36, 2, 3, 'Non est aliquid omnis exercitationem aut voluptates.', 'est-placeat-labore-rerum-dolores', NULL, 'Molestiae repellendus delectus et sint architecto. Dolorum pariatur quaerat nisi vero omnis et fuga. Aspernatur ipsa ut repudiandae ea et. Adipisci possimus ea labore. Dolor deserunt repellendus officia.', '<p>Dicta nostrum sint magnam illo. Iure qui et sed nemo ea at hic nulla. Ipsa non quia sed non distinctio.</p><p>Et eum rerum officia et iusto deleniti pariatur quis. Quia officiis rerum vitae aut omnis ipsum.</p><p>Sint temporibus nihil maiores quam sed eligendi. Et et non a. Eaque est sit ut.</p><p>Quo consequuntur alias veritatis. Aut et inventore voluptatem sit corrupti praesentium vel. Inventore error quia illum aut provident vel est.</p><p>Quibusdam id possimus tenetur deleniti aut ut. Quis totam odit et delectus id. Rerum sed enim voluptas maiores.</p><p>Porro id accusamus unde doloribus quia consectetur suscipit. Ut qui voluptatem ut labore non. Provident commodi sint voluptatem nihil enim facilis eum. Ut doloremque delectus culpa temporibus et. Ut corrupti recusandae repudiandae perferendis quisquam qui ut maiores.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(37, 1, 2, 'Sapiente et quo exercitationem qui quo non.', 'ut-culpa-quis-illo-debitis', NULL, 'Sint voluptatum ipsum nisi accusamus repellendus. Maiores sequi quos et fugit eius. Omnis alias officiis aut repudiandae.', '<p>Optio odit perferendis fugit distinctio blanditiis ratione similique. Sed praesentium et qui eaque soluta. Sed illo nihil vel aut.</p><p>Provident molestiae et sequi illo ut. Quo necessitatibus sit veritatis dolorem.</p><p>Aut quod facilis commodi labore quasi provident pariatur. Aliquid ipsa libero similique eaque quia blanditiis non. Eius nemo vitae minus ipsum vel. Dolore aut recusandae accusamus dignissimos expedita.</p><p>Quam dolores error explicabo animi ipsum similique. Sunt ducimus voluptatem sit similique ipsam iste. Culpa voluptatibus vero possimus laboriosam voluptas. Voluptatibus dolores aperiam possimus provident et.</p><p>Natus assumenda vel et dicta itaque. Nihil ut non quibusdam ut qui. Voluptatibus incidunt ab sed nesciunt ullam aliquam.</p><p>Non omnis eos qui et aut. Veniam ea dolorem voluptate odit eum quam sed. Cupiditate porro fugiat sit distinctio aliquid aliquid unde.</p><p>Maxime sint consectetur fuga alias iusto quibusdam odio. Qui et nostrum harum vel qui velit quia qui. Dignissimos vel dicta eos. Placeat quam perspiciatis voluptatum sint.</p><p>Dolorem laudantium ratione quia magni. Illo laboriosam saepe non et officiis omnis. Amet repellat vero porro aliquid qui impedit temporibus.</p><p>Et reiciendis consequatur aspernatur quo omnis. Totam consequatur ut eum voluptate. Odio enim blanditiis ad. Aut non sit aperiam inventore corrupti accusantium dolor.</p><p>Nostrum aliquam sequi facilis molestias sint. Vel aliquid consequatur vel molestiae cumque nihil et. Dolores delectus vitae porro ea eum.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(38, 1, 1, 'Ut quod aspernatur id illo molestias sed.', 'sed-beatae-voluptatibus-veniam-minima-possimus', NULL, 'Quidem numquam voluptatibus error omnis architecto minus cumque. Cum omnis aliquam voluptatibus provident asperiores. Quis facere modi sed.', '<p>Recusandae aut quasi non. Dolore sit ducimus autem quas accusamus ab. Fuga voluptas cum est amet voluptatibus. Est aut amet omnis.</p><p>Atque in velit pariatur tempore ut et quisquam. Est magnam consectetur aperiam at quidem dolor illo. Magni quo ratione et illum ipsam dicta aut dignissimos.</p><p>Temporibus excepturi quos provident esse. Veniam nihil voluptas ut ratione voluptatum ut ipsum. Molestiae repellendus hic animi enim.</p><p>Libero et iste et magni facilis rem sapiente voluptate. Ullam sint culpa eum maiores et velit laboriosam. Veniam ad aspernatur dolores reprehenderit et qui.</p><p>Labore sunt nam quas recusandae nesciunt. Totam ut dolorem necessitatibus voluptatem iste. Et dolor deleniti placeat voluptatum est qui ullam ad. Tempora fuga id vel fugit recusandae consequatur. Id consequatur doloremque quaerat reiciendis quo necessitatibus.</p><p>Nihil qui reprehenderit dolorum. Vitae quidem possimus eius. Ut ea error assumenda ea dolorem quaerat exercitationem. Deserunt qui cumque libero ut omnis voluptas sunt.</p><p>Pariatur fugit voluptas fugit accusantium voluptatem magnam qui sint. Cupiditate repellat quas eligendi sint autem. Tempore fugit distinctio assumenda enim.</p><p>Blanditiis iusto ab quos labore. Esse rerum voluptas pariatur beatae. Quibusdam dolore cupiditate iure molestiae.</p><p>Velit et non iusto a consectetur eveniet. Odit similique dolorem id nesciunt. Quo id officiis qui. Quod voluptates iusto qui. Quia magni voluptatem voluptatum fugiat autem doloremque aut deleniti.</p><p>Aut numquam voluptas iure ullam repellat et et. In quo sit sed et est. Beatae qui ducimus deleniti. Fugit quia cumque quidem dolor ut voluptate.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(39, 1, 1, 'Nesciunt hic voluptatem omnis itaque ullam consequatur voluptas occaecati.', 'doloribus-officiis-iure-adipisci-et-aut', NULL, 'Et nostrum magni quisquam deserunt sit ea sit quia. A sint magni vel. Aut voluptate minima voluptatibus laboriosam.', '<p>Omnis est et omnis voluptas. Eaque voluptate sunt placeat minus et excepturi tempore. Optio quia maiores tenetur quos commodi deserunt.</p><p>Alias minima veritatis ut voluptatem quos sunt qui. Quisquam voluptas sed esse autem. Sed veniam perferendis nesciunt non facilis et ea. Dolor totam qui tempora aliquam facilis.</p><p>Quia officia minus exercitationem quia consequuntur. At necessitatibus qui sequi quia quis non. Ipsam minus dolores veritatis sit.</p><p>Ut suscipit ut amet modi quia dolor. Inventore debitis unde eius non. Molestias qui explicabo in suscipit aut tempora est. Voluptatem est quis est veniam molestiae nesciunt nam.</p><p>Nulla et quidem autem accusamus voluptatum. Placeat sed eius totam numquam. Sequi nihil delectus cumque reprehenderit a. Doloremque omnis quia iure amet laborum.</p><p>Mollitia in officia totam porro repellat. Itaque explicabo quo voluptatem aperiam. Quisquam ut aliquid quasi delectus eum. Dolores et aliquid modi optio sunt. Aperiam id ea illum neque iste.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(40, 2, 2, 'Vero explicabo.', 'quis-ut-pariatur-enim-non-nobis', NULL, 'Atque atque cum neque modi repellendus reprehenderit dolor fuga. Quidem aspernatur id officia. Assumenda repudiandae impedit eos quod repudiandae.', '<p>Nihil occaecati reiciendis ea voluptatem qui ipsa facilis. Distinctio quia dolorem exercitationem ut aut eaque. Est quidem nesciunt voluptatem veritatis mollitia recusandae voluptatibus. Reprehenderit rem sunt quia eaque laboriosam quisquam et. Illo enim quibusdam deserunt perspiciatis quia et.</p><p>Corporis at impedit et ut qui sed perferendis et. Ipsa placeat quo numquam dolor id ea. Adipisci et rerum dolorem eum laboriosam veritatis.</p><p>Excepturi possimus molestias esse quaerat. Nisi quo et illo est quis aspernatur. Voluptas quos sunt nihil molestiae.</p><p>Consequatur molestias consequatur voluptates quia officia. Quia impedit quae tenetur ab non maiores. Velit quasi saepe et vitae et. Aut tenetur accusamus labore facere.</p><p>Modi reprehenderit inventore ducimus delectus. Deleniti fugit nobis tempore itaque et modi veniam eum. Ut suscipit et veritatis sed modi rem quaerat. Velit consectetur facere libero sit voluptatem. Explicabo perferendis totam optio amet saepe et.</p><p>Neque quasi nihil voluptatem ut velit adipisci. Sit sunt explicabo quis beatae et et. Incidunt voluptatem non et veritatis enim sed.</p><p>Nemo saepe quis ea consequatur molestiae et nesciunt. Rem nihil dolore ut non architecto. Itaque et reprehenderit quo est itaque ut et.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(41, 2, 3, 'Voluptatem nam rerum expedita non.', 'molestias-sit-voluptatem-itaque-non', NULL, 'Unde iusto ullam ex fugit mollitia. Ipsa quaerat recusandae quod ut dicta atque natus. Dolorem cumque neque voluptatem. Eveniet quaerat repellat et nihil eos repellat nesciunt.', '<p>Nemo qui a consequatur dolore id nihil sunt ut. Impedit labore voluptatibus sit laudantium harum fuga nemo. Rerum consectetur quis omnis voluptates.</p><p>Unde hic iusto culpa. Nobis voluptatem quis enim ipsam consequatur est. Reiciendis quos quos nesciunt dolor sed optio. Odio debitis cum ducimus.</p><p>Dolorem error suscipit quia voluptatem quisquam. Alias eos non illum debitis expedita. Maiores laborum tenetur dolor reiciendis.</p><p>Aut mollitia rerum quisquam aliquid et. Hic et sit perferendis nam dignissimos voluptatem qui. Et dolorum quisquam voluptatum cupiditate itaque ducimus quibusdam. Sunt occaecati deleniti sunt quas. Libero et excepturi rerum ut quisquam et.</p><p>In ut illo similique nihil adipisci aliquid sapiente. Vero corporis vel tempora incidunt alias soluta reprehenderit. Commodi ut quia ut ut. Ipsa sunt assumenda eum quia.</p><p>Perspiciatis quia sapiente sed sunt cumque. Doloribus voluptatem sint rerum consequatur quae consequatur nisi. Aut ratione aliquid enim quia perspiciatis. Nobis sed hic qui et.</p><p>Corporis quisquam placeat alias quae veritatis est. Quaerat porro et et voluptatibus. Rem ea molestiae sit esse quas.</p><p>Et quo vel quaerat et et qui. Velit eos corrupti quia cupiditate nulla et qui ut. Placeat voluptates quos qui eum velit. Itaque et officiis et quia earum.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(42, 1, 2, 'Accusamus occaecati sunt vel vel dolore.', 'aliquam-incidunt-est-voluptas-ipsam-similique-nostrum-nemo-est', NULL, 'Necessitatibus omnis veritatis commodi eum asperiores voluptates at dolores. A sed autem tempore maiores. Itaque doloremque autem pariatur molestiae aperiam.', '<p>Sed consequatur quia ut consequatur. Neque veritatis unde minima ut vel molestiae. Ut perferendis praesentium vero cupiditate libero. Voluptatem facere ullam sit minima ea explicabo eius iusto. Odit eius eius culpa ipsum eaque doloremque placeat.</p><p>Repellendus odit enim praesentium dolorem consequatur. Occaecati velit in quo cumque. Rem id sunt in sequi maxime. Distinctio qui magnam ut odit architecto voluptatibus.</p><p>Dicta aut inventore autem vel eius vero. Consequatur aut cumque dolore ex. Accusantium enim cumque autem ut. Nisi vitae laudantium saepe enim.</p><p>Id corporis placeat voluptas possimus velit. Vel aliquid blanditiis veritatis et placeat. Maiores consequuntur alias qui esse sed enim aliquam voluptatem. Eum autem cum et ut delectus omnis.</p><p>Sequi consequatur doloremque dolore quod quis sunt deleniti. Reprehenderit debitis numquam et aliquam fuga.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(43, 2, 1, 'Tempore sapiente sed laudantium aperiam iste est neque maiores ad voluptatem.', 'non-debitis-totam-quidem-dicta', NULL, 'Voluptates voluptatem odit deserunt impedit incidunt excepturi. Nesciunt dicta deserunt modi unde. Architecto necessitatibus aut praesentium consequatur. Delectus voluptatem eos harum. Ea quod voluptatum consequatur deserunt mollitia.', '<p>Voluptatem hic veritatis quia eligendi animi rerum laborum ducimus. Optio quo quos praesentium facilis a inventore. Id eveniet consequuntur saepe qui ut sequi voluptatem aut. Amet et et repudiandae eum repellendus sit aut.</p><p>Sit earum delectus nisi. Est possimus sint incidunt et voluptatem suscipit sapiente.</p><p>Aut omnis ullam enim et qui ut necessitatibus. Voluptates assumenda recusandae quo. Illo consectetur architecto asperiores omnis laudantium enim. Vel dolorum eius suscipit aperiam deserunt quam est aut.</p><p>Dolorem quis cum quo et vero nam voluptatem. Neque consectetur alias nulla qui nemo sed soluta. Possimus dolorem doloribus odio nobis labore sint. Qui aut eligendi rem quasi.</p><p>Cupiditate suscipit enim ut eum expedita qui et. Et nemo in minus voluptatem soluta doloribus. Sed et harum velit eos qui.</p><p>Esse ullam enim sit et. Et pariatur repellat enim eligendi omnis. Repudiandae qui ipsa libero similique doloremque. Voluptatem enim laborum voluptas qui vel ea.</p><p>Voluptatum atque natus dolorem quis autem aperiam. Rerum non enim cum non voluptatem blanditiis tenetur. Minima sapiente non explicabo.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(44, 1, 2, 'Libero quisquam harum.', 'saepe-unde-pariatur-possimus-non-molestiae', NULL, 'Repellat animi earum consectetur voluptatem dolores consectetur. Quasi quod voluptas est placeat ea fugit voluptates. Aperiam sed eum corrupti qui. Impedit provident voluptatum reiciendis perferendis expedita ipsam alias voluptatum.', '<p>Occaecati reprehenderit quasi iusto iste eum quibusdam. Nisi et dolor ut ut minus qui debitis. Quidem modi ut praesentium voluptates aspernatur fugit.</p><p>Possimus nisi voluptatem ut illum. Quidem consequuntur et dolorem ea mollitia.</p><p>Consequatur voluptatem quasi ab perspiciatis quas facilis et. Corrupti sunt voluptates quod provident. Maiores libero ut fuga fugiat.</p><p>Qui adipisci non sunt laudantium. Itaque alias sint ut numquam officia. Nemo autem aut vel.</p><p>Et est aperiam quod quos qui. Rerum sunt dolor soluta et officiis. Vitae molestias excepturi quod sed. Et voluptas eveniet ut quod officiis.</p><p>Praesentium suscipit quia ad hic rerum quod. Voluptatem nisi omnis autem est voluptatem. Error ex quibusdam vero.</p><p>Deserunt quasi amet porro quibusdam fuga labore. In id enim et perferendis modi sed voluptas. Dolores velit praesentium omnis sit.</p><p>Non non quos natus iusto nihil inventore. Eos mollitia ea cum doloremque. Iusto amet quaerat rerum. Sit expedita recusandae velit repellendus consequatur.</p><p>Possimus atque dolor suscipit voluptates similique. Ea laboriosam et doloremque corrupti repellat maiores provident. Accusantium dicta optio est iure natus. Qui doloribus repudiandae vero eos qui explicabo.</p><p>Ut praesentium asperiores illum. Voluptatem ea quis quam enim. Non quis qui nihil qui ut perferendis vitae.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(45, 2, 2, 'Quaerat quia laborum.', 'ut-excepturi-libero-perspiciatis-et', NULL, 'Laudantium animi qui illum non alias blanditiis sint. Dolores quos nihil unde. Rerum voluptas at et qui voluptatem expedita vel tempora.', '<p>Magnam rerum tempore nostrum repellat. Et et atque molestias est quae voluptas deleniti eligendi. Et voluptatem ipsa nostrum sint quae. Minus nisi deserunt sit aspernatur ipsum tempora porro.</p><p>Nobis alias maxime architecto excepturi et et porro ullam. Inventore est commodi nulla modi soluta aliquam repellat.</p><p>Quaerat dolores neque nobis assumenda saepe voluptas. Et numquam et qui velit est. Animi voluptatem vel ea. Quod architecto quia molestiae totam aut et doloribus.</p><p>Aut quia qui perferendis in soluta. Et eius et deserunt quis in repudiandae voluptatem ipsum. Voluptatibus dolorem fuga voluptatem fugit. Dolor hic eum nihil aliquam. Molestiae et expedita ea.</p><p>Dolore porro doloribus dolor modi nesciunt blanditiis laudantium. Quis adipisci sequi voluptas suscipit soluta asperiores consequatur. Dolor maiores est provident modi nam corporis itaque. Adipisci vel libero est dolor quam.</p><p>Ipsa quisquam fugiat ut necessitatibus. Velit sint maxime amet. Sunt tempore et non officiis debitis aperiam. Eum rerum provident voluptatibus eligendi.</p><p>Tempora iusto quidem voluptatibus odio eos. Molestias non delectus est amet. Corporis laudantium reprehenderit quos.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(46, 2, 1, 'Doloribus ipsa est qui sed error.', 'odio-iure-est-ut-eum', NULL, 'Voluptate facere nesciunt et ut et. Dolorum numquam ducimus distinctio. Dolorum libero ut a quas natus.', '<p>Autem temporibus nihil nostrum quae ut. Laudantium architecto quaerat et magnam repudiandae in. Doloribus fuga rerum optio accusamus exercitationem repudiandae ut. Perferendis occaecati consequatur nemo consequatur.</p><p>Rerum saepe eaque velit qui. Est perspiciatis sunt debitis repudiandae et quod. Repellat sunt qui quia beatae sapiente eaque. Qui eum accusamus quam molestias quas sed.</p><p>Fuga est aut numquam ut. Quia ducimus autem qui consectetur fuga. Deleniti quam iusto qui ipsum et. Quos quia nisi porro nesciunt omnis.</p><p>Placeat occaecati et iste quidem accusantium nesciunt. Enim neque maiores vitae exercitationem in eveniet maxime. Sapiente sit vitae dicta exercitationem a. Dolorum sunt dolorem consequatur molestias ullam. Illo et possimus eum commodi reiciendis.</p><p>Ea odit et reprehenderit asperiores eaque assumenda beatae. Officia et dignissimos eveniet dicta est iste sequi quaerat. Ut illum blanditiis et sapiente.</p><p>Excepturi adipisci sint voluptas eos dolor similique deleniti laudantium. Voluptatem consequuntur mollitia consequatur eligendi sit sequi. Ipsam vitae quo quis suscipit possimus esse sit expedita. Voluptatem et rerum qui.</p><p>Officiis eos facere incidunt impedit in error. Eveniet quia vitae culpa consequuntur eum. Praesentium sunt corrupti incidunt tempora error modi repellat. Excepturi fuga sit eaque dignissimos reiciendis. Ullam perferendis distinctio quia ut voluptas quas.</p><p>Incidunt praesentium blanditiis cumque rem commodi voluptatem non. Est perspiciatis perspiciatis officia ducimus sunt ducimus veritatis. Ipsam consequatur sunt aspernatur sint quia ab aut.</p><p>Aut sed totam incidunt nostrum et cumque et. Omnis consectetur sunt vel. Explicabo dolores aut ut consequatur quod eum. Tempora sint ipsam facere non velit. Expedita occaecati ipsum repellat quasi dolores dolorem sed sit.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(47, 1, 3, 'Culpa dolore occaecati natus.', 'veniam-velit-id-est-nulla-est-repellendus', NULL, 'Omnis dicta aut voluptate illum sequi. Quam quisquam molestias accusamus ipsa sit ut exercitationem doloremque. Modi placeat et ipsum molestiae eum et.', '<p>Perferendis voluptatem eligendi soluta qui ipsum recusandae. Sint cupiditate facilis blanditiis reiciendis vero expedita. Et eius cumque omnis aliquid est blanditiis.</p><p>Et harum ut non illum. Dolores ut cumque reiciendis enim. Possimus earum laborum iste est et autem est. Quam blanditiis aliquam voluptatibus reiciendis qui et sit voluptate.</p><p>Assumenda est veritatis voluptatem inventore eaque. Ut qui ducimus laboriosam nesciunt odio expedita.</p><p>Voluptate totam tempora quia quidem vero. Et illum nobis consequatur in dolore quaerat deleniti. Iure et sed ut et beatae et.</p><p>Qui velit sequi est quaerat sint suscipit dolorem. Eius sint et neque delectus tempora repellat.</p><p>Voluptatem qui et totam cumque. Aliquam quod aut ratione et odit non sint. Nulla eveniet facilis doloremque dolores nihil suscipit perferendis.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(48, 2, 3, 'Repellat accusamus excepturi aut.', 'aut-illo-cupiditate-unde', NULL, 'Eligendi ex quod laudantium reprehenderit deserunt vel. Sint dolor dolorem recusandae eveniet ut itaque. Libero voluptatem et ea possimus dolorem sed et.', '<p>Dignissimos inventore sed et. Qui nostrum aspernatur ut. Non numquam enim aperiam. Quod dolor necessitatibus accusantium quia.</p><p>Et doloremque quis quo corrupti. Dolores enim dolore laborum reiciendis. Vel sint et ut aliquid quia omnis sed. Ratione saepe nostrum quas vel.</p><p>Sit maxime voluptatum eius sunt eos architecto. Dolorem possimus doloremque sapiente sunt voluptatum veritatis. Sapiente inventore sunt enim. Quisquam consequatur vitae earum cum.</p><p>Dolore dicta nostrum optio quia. Minima libero nisi ut nobis et. Sit nesciunt quia quos quis.</p><p>Fugit omnis rerum consequatur pariatur ipsum iusto fugit laudantium. Non quis id labore veritatis rem quam laudantium. Quia rerum ut rerum ducimus.</p><p>Accusantium fugit nobis laboriosam necessitatibus tempora in. Mollitia eligendi unde id dignissimos rerum molestias. Adipisci perferendis quo vitae molestiae eos tempora.</p><p>Consequuntur aut debitis quis dolor expedita saepe dolor sint. Vero non tenetur occaecati impedit non autem sit. Ut sit delectus reiciendis non ipsam eos.</p><p>Sequi voluptate quod illum vitae ut delectus aliquam optio. Voluptatem aut voluptatum consequuntur consequuntur. Id nesciunt necessitatibus cupiditate aut consequatur suscipit. Modi inventore vel sed. Tempore perferendis dolore quis sapiente.</p><p>Voluptas dolor harum necessitatibus dolor. Sed numquam et aut nam esse est ut. Debitis enim itaque id illo.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(49, 1, 3, 'Quibusdam qui autem.', 'cupiditate-sed-tenetur-voluptas-non-dolorum-temporibus-aut', NULL, 'Magnam facilis tenetur voluptatibus earum in totam. Est dolorum et qui nostrum. Qui quam impedit qui voluptatem.', '<p>Accusamus et tempore aut eum laudantium quisquam a. Dolor qui eius quis enim quis. Unde at voluptates animi a debitis repellendus.</p><p>Veritatis iure sed illo accusamus culpa quas. Nesciunt quos nemo rerum nulla ut. Quo qui libero aut sit.</p><p>Corporis molestias quisquam soluta architecto enim et voluptatem. Odit est at voluptas velit mollitia. Quos alias omnis a sit.</p><p>Id voluptates voluptas nihil non et repellendus. Est vel et est eaque omnis. Cum quos aut officiis unde aut quia dignissimos. Non voluptatem sapiente nisi quos doloremque.</p><p>Id odio et nam ut nostrum voluptas. Quam quas aut exercitationem ullam non sed eveniet. Et quibusdam id corporis repudiandae porro in est soluta.</p><p>Labore labore tempora inventore amet fugiat autem. Excepturi ratione dolor sapiente voluptatem numquam eos sit. Id corrupti provident odio dolor incidunt magni.</p><p>Asperiores in aut dolor. Non magni repudiandae assumenda maiores consequatur.</p><p>Nihil illo ut cumque nostrum eveniet accusantium. Est quasi dicta voluptatem recusandae. Odit in est possimus in totam aperiam quo quos. Dolorem nesciunt sed consequatur adipisci.</p><p>Eaque unde ipsam facilis. Et officiis aut iste et numquam praesentium est neque. Aut esse ab harum nam est rem ipsa. Ipsum dolor eveniet magnam dolorem.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59'),
(50, 2, 3, 'Sint vel voluptatem commodi maiores suscipit iste est ducimus voluptatem.', 'consequatur-et-doloremque-voluptates-dolorum-exercitationem', NULL, 'Velit aut provident nulla. Ipsam et est ab rerum cum pariatur.', '<p>Nulla dolorem sint voluptate fuga nisi neque. Officia ut excepturi animi in dolores facere.</p><p>Iusto libero rerum consequatur labore vero sed porro. Quia repellat omnis sed magni et quae blanditiis. Dolorum accusamus inventore et dolorem enim. Distinctio molestias repellendus molestiae porro eos alias.</p><p>Aut iure quasi odit molestias. Sit impedit fuga et exercitationem et id voluptate. Ex et reprehenderit magnam aut dolores cupiditate. Sint consequatur et sit in itaque adipisci provident.</p><p>Molestiae delectus quia quia. Aut qui perspiciatis voluptates fugit nihil. Officia praesentium sint fuga natus omnis saepe.</p><p>Ut dolor qui libero omnis nostrum placeat. Ut aliquid distinctio voluptas id facere eligendi quo. Dolores commodi omnis et voluptas commodi facere delectus. Dolorem exercitationem rerum unde voluptatibus cum nesciunt. Iste perspiciatis voluptas et iusto.</p><p>Asperiores natus ipsam et consequatur. Ad qui voluptatibus et perferendis delectus aut. Molestias excepturi asperiores officiis est amet.</p><p>Ea porro ut quo delectus qui. Nulla cumque optio ea similique placeat officiis suscipit. Voluptas quo et sunt nemo officiis quia dicta aliquam. Alias ea at accusantium illo iste sapiente assumenda.</p><p>Consequatur necessitatibus et amet aut nulla veniam. Ullam ut deserunt molestiae quasi. Numquam eligendi autem odit error dolores eum aut. Provident quisquam vel qui eligendi possimus.</p>', NULL, '2023-07-27 04:47:59', '2023-07-27 04:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Rahmad Zidani', 'rzdnin', 'rahmadzidanirvana@gmail.com', NULL, '$2y$10$Jrv7faHu8Xf3i3p8weoUSO7GU9Eegun610vMKv3D3BNRvIMYbQS9W', NULL, '2023-07-27 04:47:56', '2023-07-27 04:47:56', 0),
(2, 'Kani Rahmawati', 'mahdi.pratiwi', 'wprasasta@example.org', '2023-07-27 04:47:57', '$2y$10$///4dZf4i.6a6u9GhhZRK.wRcRgxDJo3o4mWasQVoPGn5s0fTsuh6', 'E95hvWWr41', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(3, 'Violet Gabriella Suartini S.Kom', 'maryati.ina', 'doktaviani@example.org', '2023-07-27 04:47:57', '$2y$10$fdXeRC5Gv8QEFeD6oR66Xe/lrAXxjAnCxYD/k5UL09mmAhrG.i3Ym', 'Lwy37nsGq7', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(4, 'Kenes Prasetya', 'mumpuni23', 'jamalia43@example.org', '2023-07-27 04:47:57', '$2y$10$9EeMtCBm1cfRqPiKH.4xieixWYL.0S1VLAW.Do4Fx84z7Mi7Y4uc6', 'HUx5xSgAUo', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(5, 'Gangsa Napitupulu', 'nyuniar', 'hidayat.reza@example.com', '2023-07-27 04:47:57', '$2y$10$e9KYvVjSq2sKWuZAgDWlTeIVZnFzbSlY9VGxfGJtsSY97Q.vrldhy', 'Te1kw0QmYJ', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(6, 'Hartana Slamet Adriansyah M.Kom.', 'sabrina.maryati', 'harjaya.laksita@example.com', '2023-07-27 04:47:57', '$2y$10$ZAGULNMHRooUFnpZXqOgzOE.k0SOxAu0wA.2JRzBiPV6eYVcGq9Xq', 'AoFG5wpufk', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(7, 'Karimah Betania Laksita S.Sos', 'umahendra', 'erik12@example.org', '2023-07-27 04:47:57', '$2y$10$P9Wk0HcbdOCOWxerZ0cXAeuwgfFaJbU1iy.kwW0Cj9llM1KDCjRxu', 'raPJCkFz2E', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(8, 'Vega Situmorang', 'dodo04', 'zulaika.gading@example.org', '2023-07-27 04:47:57', '$2y$10$hcQWB94zYS27JH7sPszKIe7.gFqn1MnhgWMbLNN/FY.Q7hhYtQKy6', 'HzbsvmG5NC', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(9, 'Tasdik Dongoran M.TI.', 'nnurdiyanti', 'hani.astuti@example.com', '2023-07-27 04:47:57', '$2y$10$wfb5iQLwh2vfdHE.QHCOgubl.piJLlZCIjxIJMqLexA7ZqyVqgdZC', 'NS29CFvb4v', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(10, 'Belinda Susanti', 'maryadi.safitri', 'ardianto.najib@example.net', '2023-07-27 04:47:57', '$2y$10$nyh9QvvWr9A7/rpiWNgituluwcuqIRGbcw5sxXRH1t4wtfqBJKYYy', '7cmOgwg707', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(11, 'Umi Endah Mandasari', 'qhartati', 'napitupulu.nabila@example.net', '2023-07-27 04:47:57', '$2y$10$nGqcJWZJ9G2JBNpzwbrO7Oa8eh6WikmKD0hksP5jVTwCPP9zwF6VO', 'NlpvjIA1EB', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(12, 'Cakrawala Sihombing', 'fmaheswara', 'cahya.farida@example.net', '2023-07-27 04:47:58', '$2y$10$pvh43SF.eVlGtx7RDeyQLu4KgX5Fh3ED46wb59fBCxnkwOIB0owyK', '1O6AMgvOJP', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(13, 'Yuliana Palastri', 'mahmud31', 'dabukke.utama@example.com', '2023-07-27 04:47:58', '$2y$10$Sp6Fxg2Ic0Ef2KIOk2c3q.DYnBhFArn3Hfm8tC01.Kr9MZKNO55Ji', 'ZpmTaWbvtI', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(14, 'Nova Ani Purwanti S.IP', 'harsaya38', 'yolanda.kalim@example.org', '2023-07-27 04:47:58', '$2y$10$CeGqUo2vV2wXaz91SMPTXuBvSN6lgqn9qQWkuqjRSh.BwqydjGOJC', 'cXzk3hXlCG', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(15, 'Vera Vanesa Pratiwi S.Sos', 'jaka80', 'gmustofa@example.net', '2023-07-27 04:47:58', '$2y$10$5klxcVUk34pMKaNDy8UQEeddYmGNDvR.ALnHt8hc1QH0CDKx3lgbW', 'FOn16B6chp', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(16, 'Estiono Saputra', 'fitriani.mandasari', 'iriana46@example.org', '2023-07-27 04:47:58', '$2y$10$i8JDSXt/eGu3svclG26KN.CdJQWTIT7ECvq08vaI83bEOrfGqKMW6', 'kC9WwBkgR8', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(17, 'Cakrawangsa Hutagalung S.Gz', 'emin67', 'thartati@example.net', '2023-07-27 04:47:58', '$2y$10$WHy/BXTs9hRdcoAB2fUBbeSHr8z.K8yiZdgRxzh3IcT5v.UT5ptTm', '3SzuCyY5OL', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(18, 'Gina Kamaria Yolanda S.Pd', 'safitri.amalia', 'bpurnawati@example.com', '2023-07-27 04:47:58', '$2y$10$dfcQIxRC62RjaB5hxw1HA.IIoFRC4tnyTEYbqpNOLSI5ug8d5yXHa', 'QNxUV6pBXa', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(19, 'Wahyu Damanik S.Kom', 'hrahmawati', 'olestari@example.org', '2023-07-27 04:47:58', '$2y$10$UyQ7nNZj7Qh.NiQWN7lEm.2aZp161nz3XVyF99SX5ivP.dhvRGHVG', 'kUbqM3e7Ol', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(20, 'Prayitna Edi Megantara S.Ked', 'atma.tampubolon', 'kmansur@example.com', '2023-07-27 04:47:58', '$2y$10$/2JORCvOMS4e5F3VrMMYXu.ivNMqvJ4.5BzU7ZttBzgnRmgkrqf3O', 'PTn3JVzfYB', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(21, 'Jasmin Hastuti S.Ked', 'pradipta.kunthara', 'yunita.uwais@example.com', '2023-07-27 04:47:58', '$2y$10$blzEk61t6TfxDIGB2Sj8buTttFf9jlf1NvmgNkEPaj0Wborh0GyI6', 'oaxakcAdlo', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(22, 'Banawa Gandewa Setiawan S.Kom', 'padma37', 'lpermadi@example.net', '2023-07-27 04:47:58', '$2y$10$VzTUGsljkPHZAX1tc0rdF.zk29JXC/Ov5UfVYm8ZZWAKe2H/vkgoG', '10gpu3Folp', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(23, 'Raina Winarsih', 'xnarpati', 'uli.puspasari@example.org', '2023-07-27 04:47:58', '$2y$10$fF3v5V9J1PCL6QmeWSq2ve0ULokBlhK2UPCxOH/rsYas2essCF4/K', 'Qepgz2a14h', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(24, 'Asirwanda Prayoga S.E.', 'siregar.alika', 'lala44@example.net', '2023-07-27 04:47:59', '$2y$10$wi1LxDwfJUfK4b26O3FLd.fAWTWy6ts.wAnQv3o/ehhtEg51oGIXi', 's3X2cFQF6l', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(25, 'Yessi Zulfa Susanti', 'zmayasari', 'tari91@example.com', '2023-07-27 04:47:59', '$2y$10$pR0FvLY2my2/bO4UaftkqOJj8mhRWA3EgUhbUNRMBvmiUQm97D4oy', 'Gr0K0gmSsU', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0),
(26, 'Alika Pertiwi S.Psi', 'safina.prabowo', 'paramita.tamba@example.org', '2023-07-27 04:47:59', '$2y$10$NjedQDf3.8Kcjlc6V6nC3ucDXGOCkKL4t.gLD1bIWrDcjPuiXqrVq', 'xFY4f8N7yO', '2023-07-27 04:47:59', '2023-07-27 04:47:59', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `programs_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

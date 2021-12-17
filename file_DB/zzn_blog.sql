-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 11:48 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zzn_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(2, 'Android Programming', 'android-programming', '2021-12-06 20:10:46', '2021-12-06 20:18:12'),
(3, 'Personal Branding', 'personal-branding', '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(4, 'Machine Learning', 'machine-learning', '2021-12-06 20:12:33', '2021-12-06 20:12:33'),
(5, 'Artificial Intelligence', 'artificial-intelligence', '2021-12-06 20:12:46', '2021-12-06 20:12:46'),
(6, 'Big Data', 'big-data', '2021-12-06 20:12:54', '2021-12-06 20:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_29_154914_create_posts_table', 1),
(6, '2021_11_30_074619_create_categories_table', 1),
(7, '2021_12_04_103528_add_is_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 'Minima sunt exercitationem amet dolorem quas qui consequuntur voluptatum.', 'eum-eos-occaecati-veritatis-velit-ipsam-dolor', NULL, 'Molestiae ut est est dolorem. Qui ipsa possimus veniam autem aperiam. Ipsum enim odio dicta laboriosam ea omnis velit. Placeat veniam sed placeat. Harum suscipit saepe reprehenderit autem est minus neque.', '<p>Molestias voluptate officia voluptatem enim laborum nihil sed. Perspiciatis ipsam libero velit non optio consectetur omnis in.</p><p>Fugit eius atque id delectus est occaecati quam omnis. Non vel suscipit doloremque laudantium perferendis commodi eum et. Architecto mollitia minus mollitia consequatur earum. Sit sit assumenda adipisci minus dolores a.</p><p>Aut qui sed odit dolores sunt ipsa deleniti. Veritatis dolor laboriosam rerum possimus. Perferendis a non impedit commodi maxime. Velit eveniet pariatur nemo at molestiae.</p><p>Reiciendis odio libero nihil et. Ut nisi amet tempore sunt. Numquam fugit harum maxime odit sunt sit. Inventore aut quia et molestiae sint sed aut ut. Rem nihil voluptatum dignissimos sit repellendus in vitae.</p><p>Eveniet quasi magni nihil iste. Soluta voluptas culpa explicabo facere nesciunt. Est ratione quia labore sunt. Alias qui alias corrupti voluptatum modi.</p><p>Beatae aut sed veritatis vero at laudantium. Excepturi autem sequi explicabo in. Aut labore et amet doloremque sapiente pariatur. Aspernatur reiciendis sunt qui quas.</p><p>Fugiat sed sequi porro. Est laborum corporis iusto placeat. Voluptatem ad et at optio delectus.</p><p>Excepturi voluptas itaque dicta omnis ipsa cum doloremque. Eum aut ut commodi molestias consequatur deleniti aperiam. Earum perferendis dolorum explicabo et sed. Vitae tenetur ratione dicta quaerat. Praesentium et et aliquid et culpa cupiditate.</p><p>Adipisci sit aut laboriosam quo corporis dolorum dolor dignissimos. Placeat tempore ut voluptas molestiae perspiciatis. Atque necessitatibus atque totam laudantium molestias qui.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(2, 1, 6, 'Qui perferendis praesentium aut omnis in.', 'deleniti-fugiat-quidem-est-soluta-incidunt-officia-autem', NULL, 'Possimus porro dolore necessitatibus quos ipsam nisi. In ut totam dicta totam. Dolorem reiciendis et sed aut. Sapiente aspernatur sed omnis qui sit.', '<p>Dignissimos sunt dolores pariatur sunt quos voluptatibus sint. Quae minus voluptatum eaque rerum. Odit eos pariatur perferendis adipisci et dolorum ea ipsam.</p><p>Est eligendi ut eveniet atque itaque quas officiis. Qui ducimus voluptatem quo eum qui atque consequatur id. Omnis rerum nisi quo magni debitis vel.</p><p>Doloremque facilis aspernatur rerum perferendis qui molestiae adipisci exercitationem. Dolorem ut qui impedit quisquam beatae. Odio qui repellat nisi laudantium minima ullam itaque. Autem accusamus amet enim sit.</p><p>Ut maiores et et sunt. Dolorem totam inventore totam magni inventore quas. Quo sed est ratione doloremque vero. Accusantium rerum nam earum voluptas.</p><p>Et laborum natus explicabo soluta molestiae. Dolorum eum est molestias a corporis quasi. Qui modi neque error corporis unde officia.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(3, 3, 3, 'Nam porro praesentium voluptatem non.', 'perferendis-aliquid-aut-inventore-possimus-ut-temporibus', NULL, 'Minima pariatur quam fugiat autem molestiae harum assumenda. Mollitia fuga sequi accusamus accusantium beatae assumenda voluptatem qui. Repellendus aut quia autem et dolorum iste repellendus. Labore quo impedit dolor qui hic.', '<p>Ea non culpa veniam libero. Reprehenderit commodi quo ea consequatur. Quia consequatur sunt sit amet distinctio iusto est. Sit ducimus neque facilis sed ipsa at.</p><p>Et et et et minima mollitia nostrum. Ipsa sunt exercitationem et atque autem dignissimos.</p><p>Enim vel nemo reiciendis voluptas in. Sit et sunt vel unde possimus laborum inventore. Libero quaerat magni dolorum sint eos aliquid illo. Quia veritatis reprehenderit sit voluptatem.</p><p>Officiis numquam consequuntur soluta et voluptatem dolor deleniti. Ipsum rerum qui tempore molestiae mollitia debitis eum. Delectus occaecati nam nulla distinctio.</p><p>Velit deleniti suscipit illum doloremque magni rerum facilis. Dolor optio dolore eius sunt aliquam. Quam quia laudantium nesciunt rerum. Modi quia et reprehenderit sed quia rerum.</p><p>Omnis magnam commodi ut voluptas nostrum quis. Dolor consectetur rem molestiae libero voluptas. Iure consequatur inventore quasi asperiores iste cupiditate suscipit quis.</p><p>Vel rerum ab voluptatem et qui. Libero dolorem corrupti excepturi eum magnam. Assumenda rerum voluptatem ut dolores vel aperiam totam. Similique reprehenderit temporibus iste.</p><p>Dolore quis quo in aliquid. Ut aut a odit porro voluptate. A repellendus ut voluptate dolorem. Perspiciatis fugit provident expedita.</p><p>Et nobis molestias consequatur quas a eius. Vitae ut quo non in perspiciatis. Excepturi saepe sunt nesciunt consequatur veniam. Placeat harum non sequi.</p><p>Impedit consequatur laborum sunt reprehenderit molestiae qui ratione. Ut voluptatibus veritatis similique ut eos. Architecto ea quaerat sint eaque sapiente ipsa. Ipsam voluptatem similique animi voluptatem. Et nesciunt consectetur placeat.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(4, 1, 1, 'Ex consectetur.', 'animi-quia-cum-ipsam', NULL, 'Debitis quis iure reprehenderit sunt ut sequi. Ut sed deserunt reiciendis totam quia voluptatibus quis. Debitis quo nisi et aut illo quis. Optio earum consequatur nisi culpa optio deserunt dolorum.', '<p>Non ut alias atque temporibus esse optio ut. Quia fugiat ab non voluptatibus nulla labore facilis. Non qui facilis quam cupiditate.</p><p>Repudiandae voluptatem neque optio enim. Temporibus tempora voluptatum facere. Non error possimus eum voluptatem sed. Deserunt distinctio itaque qui velit porro omnis quisquam animi.</p><p>Iste soluta magnam ex amet aliquam quidem. Non eius ab et ipsa qui adipisci. Dolorem cumque fugiat blanditiis a in pariatur consequatur.</p><p>Rem sequi perferendis itaque et beatae ratione. Eum doloribus quibusdam temporibus dolores. Explicabo repellendus autem totam in id qui nemo. Itaque veritatis omnis ea fugiat omnis nemo sit.</p><p>Error pariatur omnis non facere. Repudiandae voluptas repudiandae et reprehenderit sint. Non voluptatum voluptas incidunt ut placeat animi ratione laborum. A qui quas deleniti.</p><p>Iste ea vero vel quis. Voluptatem est esse suscipit quisquam. Corrupti quos sunt et voluptas maiores.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(5, 2, 1, 'Minus commodi.', 'deserunt-nulla-natus-id-non', NULL, 'Natus iure dolore sit ad suscipit amet. Ipsum sed et vero blanditiis deserunt aut rem. Ut excepturi suscipit aut aut.', '<p>Unde fugit officiis illo dolor esse. Voluptatibus quia et aliquam est. Rerum veritatis quae possimus. Similique eveniet et quo assumenda beatae.</p><p>Sunt voluptates qui quia alias consectetur aliquid consequatur. Nisi praesentium et quos. Praesentium perferendis est minus. Impedit sit aut molestiae et reiciendis quos animi.</p><p>Laboriosam nihil sapiente aut repellat. Et facere illum fugit reiciendis commodi dolor. Qui rerum et quae consequatur ab libero minus. Labore excepturi iure vero incidunt voluptatem. In autem sunt accusantium blanditiis culpa omnis.</p><p>Quisquam et assumenda perspiciatis deleniti occaecati labore sunt. Sit et ea pariatur recusandae ut et sint. Sit consequuntur omnis blanditiis ipsam necessitatibus nemo quis. Voluptatibus odio harum voluptas magnam ut aut nulla voluptas.</p><p>Maiores tenetur explicabo voluptatem tempore ea aspernatur. Numquam sunt cumque illo eius. Labore vel quae dolorem magnam vel.</p><p>Doloremque laborum cumque non. Quidem rerum voluptatem omnis. Omnis est corporis eum quia est et minus. Animi non voluptas ipsam nostrum voluptatem neque.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(6, 1, 1, 'Rerum velit.', 'tempora-dolorum-libero-neque-molestiae', NULL, 'Cupiditate aut quam est dolore rem ex. Ut sint eum dolor et natus. Pariatur et ipsam qui hic. Dicta ut qui consequuntur aliquam et quam sit magni.', '<p>Et ea velit alias. Libero voluptatibus non impedit sapiente voluptas unde.</p><p>Ut ea harum animi est iure est aut aliquam. Adipisci deserunt laborum officiis ab occaecati. Distinctio consequatur placeat modi ea accusamus. Cumque aut quibusdam aut voluptas.</p><p>Dolores laboriosam et sequi aut quod est. Dignissimos rerum assumenda dolor ut enim. Praesentium quia eveniet occaecati facilis consequatur nihil rerum voluptas.</p><p>Animi quis non ad facilis autem qui iste. Et molestiae debitis veniam et. Recusandae autem quia id reiciendis architecto. Ipsa aliquam aspernatur vel aut.</p><p>Consequuntur illo est minima praesentium aut vero et. Molestiae ab est ea.</p><p>Ea est sit soluta aut ut. Sit et nihil eos beatae ut quas commodi. Molestias ex tempora exercitationem.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(7, 1, 5, 'Ut distinctio.', 'dolorum-tempora-repudiandae-nisi-repudiandae-rerum-a-nemo', NULL, 'Et quod est et placeat est. Facilis quis quibusdam rerum optio. Dolores architecto nisi alias veniam rerum ut.', '<p>Nesciunt eligendi quaerat nesciunt maxime at voluptatibus vel. Sunt pariatur in quia est dolorem qui. Ab consequatur est repudiandae similique veritatis eos optio consequatur.</p><p>Explicabo expedita quae veniam quo eligendi. Neque in eum quis perferendis voluptatem dolor. Veritatis non eveniet atque cupiditate. Eum aut saepe fugiat beatae perferendis.</p><p>Distinctio cumque et harum eveniet corporis. Et dignissimos iure itaque recusandae inventore quasi consequatur culpa. Non ea corporis eos facilis voluptas dolores.</p><p>Iure voluptas debitis quibusdam hic. Suscipit excepturi nulla delectus dolor qui earum beatae. Voluptas et autem corporis impedit.</p><p>Ratione sed quis et nemo at. Illum sed ut maxime deleniti similique. Eius fugiat dolor officiis deleniti aut est. Similique quasi assumenda occaecati aut soluta.</p><p>Delectus fugiat unde id facere itaque quidem minus odit. Distinctio beatae earum aut animi. Dolores assumenda et ut voluptates magni nostrum. Harum similique cumque id ut.</p><p>Laborum cumque et optio iusto. In nobis consequatur voluptas perferendis minus ducimus non. Eveniet et repellat a molestiae aut tenetur quo. Qui consequuntur architecto et aut ex nemo.</p><p>Dolorem nihil sint facilis consequatur. Reiciendis quia dolorem sequi eligendi. Architecto est suscipit voluptatum modi et voluptatem. Ut nisi voluptatem illo omnis. Dolor facere eum aut quia.</p><p>Natus quam voluptate sequi laudantium doloremque sed. Cupiditate eum ad eveniet modi atque sed.</p><p>Minus qui assumenda necessitatibus sed nihil autem odit voluptatibus. Modi et architecto neque.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(8, 1, 5, 'Occaecati aut magni in itaque.', 'nulla-distinctio-deserunt-iste-aliquid', NULL, 'Commodi voluptatibus maxime incidunt velit soluta ratione. Enim est vel velit omnis. Sit quia mollitia aperiam ut numquam.', '<p>Ea sint ipsam quia voluptas sequi. Sed et labore non nobis quisquam aspernatur porro fugit. Sint occaecati molestiae animi officia.</p><p>Veniam itaque perferendis culpa impedit eum. Totam et culpa ut voluptas velit. Quibusdam ex dolores sit. Qui sit numquam ut consectetur voluptatem esse sit. Quo earum voluptas voluptas id assumenda sit aliquam.</p><p>Ut commodi enim voluptatem praesentium aliquam sapiente. Consequatur enim voluptas voluptatibus velit quo. Pariatur corrupti quo rerum debitis. Commodi vero eius et distinctio voluptatem mollitia.</p><p>Nihil tenetur non magnam ut et. Vel a iusto hic quam numquam quia. Cupiditate beatae non voluptates qui corrupti et.</p><p>Minus consectetur facilis voluptatum quibusdam. Modi enim adipisci quia sapiente. Quisquam eaque ad similique dolorem eos corrupti.</p><p>Nam recusandae quisquam tempora incidunt voluptates. Facilis consequatur sit enim rerum molestiae esse. Ratione quia voluptas nobis occaecati quia vel.</p><p>Magni perferendis alias velit sed. Alias sit officia perferendis sint aut ut. Quia et qui et velit et ut. Voluptatem dolores minima autem ab natus id ratione.</p><p>Aut id animi possimus esse cupiditate et sit. Aut recusandae voluptas veniam quisquam corporis consequatur qui. Deleniti maxime quibusdam enim nemo nisi incidunt. Animi atque quo velit quaerat neque.</p><p>Laboriosam cupiditate ut ipsa vero et aut fugit. Esse quasi nihil ut ratione eaque iste est. Velit ut earum aspernatur et aut.</p><p>Nihil et laboriosam ullam eligendi est nemo quis. Vel aperiam maxime est molestias. Adipisci repellendus est et laboriosam.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(9, 3, 1, 'Aut ea id et sit nesciunt.', 'mollitia-omnis-ut-et-ipsam', NULL, 'Quo et hic rerum magnam labore. Necessitatibus officia ad autem suscipit voluptatem non adipisci aut. Facilis culpa aut iure nulla maiores aut. Temporibus voluptate vel rerum ea veniam.', '<p>Sapiente voluptatibus cumque sit. Quis adipisci quod qui excepturi ipsam voluptas. Tempore accusamus quis aperiam fugit quasi quaerat. Accusamus ut sunt beatae voluptatem perferendis odio.</p><p>Quidem illum earum et adipisci quas deserunt. Et quam dolorem et ullam dolor. Saepe rerum sint nam quos sed dolores ratione. Doloremque quam mollitia voluptatem ipsum eos pariatur aut.</p><p>Ut officiis laborum nam dignissimos occaecati ea dolor. Ut fuga iure velit qui aliquid. Voluptatibus necessitatibus cum esse quam.</p><p>Illo consequatur qui voluptas ut. Consequatur iusto eum voluptatem vel. Consectetur corrupti ut voluptatem.</p><p>Et aliquam iste asperiores similique hic magni. Et similique aperiam et voluptatibus aperiam odio cumque et. Odio sint consequuntur quas impedit quam et ipsum. Cumque autem consequatur quibusdam dolore exercitationem ut minus.</p><p>Consequatur iure aut minima doloremque sint ipsa est. Dolorem adipisci est voluptas laboriosam eius placeat eligendi voluptatibus. Labore ut est repellendus expedita assumenda ut quo. In quos et hic suscipit quia culpa qui.</p><p>Et nobis porro quae eaque. Nesciunt autem tempora animi aut. Non ut a explicabo aliquid incidunt optio assumenda natus.</p><p>Et architecto minima deserunt sapiente error tempora vel. Voluptatem molestiae praesentium enim quod hic non. Voluptatem magnam aut recusandae dolorem occaecati qui ullam eaque. Voluptatem est rem deserunt qui.</p><p>Ut ut et voluptatum cumque. Sed fugit ut et perferendis aut asperiores fugit. Vel nesciunt distinctio commodi odit sequi dignissimos occaecati.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(10, 1, 3, 'Ut dolorem aut facilis animi.', 'saepe-ducimus-omnis-et-sed-fugit-unde-modi', NULL, 'Sed et debitis voluptatem. Ad assumenda autem quia qui. Dolores numquam aut iure quae adipisci dolorem odit. Deleniti sed et rerum perferendis.', '<p>Iusto inventore eligendi et voluptas minus. Molestias blanditiis atque molestiae consequatur odit. Et delectus exercitationem quia qui non porro quia.</p><p>Aperiam beatae quo id deserunt. Quia omnis occaecati veritatis dicta at vitae libero reprehenderit.</p><p>At suscipit dolor sit autem aut. Molestiae quia omnis ipsum eligendi doloribus qui. Placeat voluptatem laboriosam dolor neque odio consectetur. Culpa sint nihil rerum.</p><p>Velit consequatur velit sunt ipsa quibusdam ducimus quas. Quis rem ipsa exercitationem qui. Veniam voluptas provident perspiciatis quos numquam est est.</p><p>Aut rem illum nisi. Dolor modi nisi voluptas aperiam cupiditate ducimus. Aliquid vitae voluptas nisi qui molestiae. Velit corrupti quis impedit consequatur aut consequuntur.</p><p>Officiis temporibus sunt enim voluptatum aut. Qui sunt facere quia pariatur suscipit hic exercitationem. Beatae voluptatem fugit consequatur quisquam quia nihil. Perspiciatis et tempora consequatur in aut.</p><p>Incidunt qui numquam iure inventore. Omnis illum qui quasi. Modi consectetur dolore rem repellat ea illo quia.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(11, 1, 6, 'Accusamus rerum repellat sit quo sed.', 'dolorem-laboriosam-labore-ut-odio-alias-voluptate-et-voluptatibus', NULL, 'Ad dicta et cumque. Et repudiandae eligendi nobis et ab aut. Modi aut quia modi veniam ducimus excepturi velit et. Sint adipisci ullam dolores.', '<p>Inventore voluptatem non esse ratione. Ut maiores et quia provident. Natus sit et id et tempora magnam expedita. Et eos sit officiis natus voluptatem et commodi.</p><p>Iure sit in incidunt nemo. Voluptas in vel aliquam inventore ipsa. Tenetur dolorem vel quo quaerat repudiandae facere.</p><p>Dolore facere tempore ut ratione dolor et fuga ducimus. Qui iste aut neque.</p><p>Et porro deleniti alias ut dolores laborum sit ut. Optio asperiores vel exercitationem ducimus. Ab est consequuntur et ad provident quos recusandae.</p><p>Vel culpa excepturi dignissimos fuga ab quis voluptatum. Cumque deserunt sapiente excepturi illum. Fugiat at aut adipisci eum nam beatae qui ut.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(12, 3, 4, 'Modi dolor eum voluptatem minus laudantium.', 'distinctio-pariatur-et-esse', NULL, 'Nihil voluptatem molestiae veniam et numquam quidem. Voluptas quis minima aut ut vel quibusdam nobis. Perspiciatis est quas qui.', '<p>Doloremque sapiente sed quae officia similique et rerum. Necessitatibus amet ea et. Iusto ullam consequatur adipisci et rem fugit.</p><p>Dolores at debitis repellat. Nam rerum quasi numquam molestias a et amet. Dolorem possimus molestias quaerat suscipit id mollitia quia porro. Unde voluptas perspiciatis possimus quia.</p><p>Dolorum amet quod aut et ut magnam adipisci. Suscipit est rerum ullam assumenda sequi sint. Et in ut placeat quasi dolore atque rem. Nostrum excepturi voluptatibus animi quasi ratione enim eum.</p><p>Libero et sint velit qui. Doloremque consequatur magnam dolor ut id. Sapiente maxime assumenda laborum eum libero.</p><p>Eum dicta dolorem quae vero suscipit corporis. Nam minima aut repellendus veritatis iste. Perspiciatis in id ut dicta sunt suscipit. Est dolore dolorem doloremque aperiam magnam.</p><p>Nam et natus omnis non dolorem labore. Doloribus rerum qui maiores deleniti nemo est amet et. Ad ab at sequi consequatur. Odio nesciunt et nulla est.</p><p>Excepturi adipisci laudantium neque rerum hic ut. Accusantium et excepturi corporis magnam. Eius quia iure ratione cupiditate. Et ut dolorum voluptates unde.</p><p>Sit porro repellendus eligendi. Labore itaque aut atque incidunt ut soluta accusamus. Corrupti sapiente adipisci tenetur est accusamus. Et aut dicta natus et omnis id commodi.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(13, 2, 1, 'Sit sint aut.', 'sint-nemo-placeat-et-quas-facere-aut-placeat', NULL, 'Quia architecto animi error optio voluptas dolorum error ut. Necessitatibus qui dicta suscipit voluptatem. Nesciunt voluptates natus amet alias aliquam. Quam neque nihil et reprehenderit accusantium.', '<p>Nesciunt placeat nobis et cupiditate incidunt repudiandae. Error qui in ut aut quia sit.</p><p>Odio ipsum sint est quia non voluptates fuga. Expedita qui eveniet dolorem exercitationem. Quibusdam magni distinctio et sit sit.</p><p>Illum nisi ea ullam aut. Vero voluptatem aliquam unde doloremque et rerum maxime impedit. In ea enim maiores iusto tempore laboriosam.</p><p>Temporibus debitis rerum aliquam. Repellat sit quia quas alias architecto hic harum. Quaerat maiores pariatur vel voluptatem modi labore sit. Et voluptas dolorem error sit modi aut at.</p><p>Repellendus et quod placeat exercitationem quisquam hic. Ad corrupti aspernatur perferendis et. Quia officiis dolore et in eum perferendis recusandae.</p><p>Qui voluptatem vero fugit consequatur aliquam voluptate. Ut doloribus aut nemo laudantium consequatur. Perspiciatis architecto dolor similique aut est ut et. Ut quibusdam nulla et asperiores ipsam.</p><p>Nam quam necessitatibus porro exercitationem sunt ut. Nostrum libero molestias dolorum. Nesciunt est rem et voluptatibus explicabo ipsum sint veniam. Veniam voluptatem qui quo quisquam nam fugit.</p><p>Suscipit et architecto iure eos. Voluptas impedit dolorem et labore magni tempore. Et maiores sequi iste nesciunt debitis. At fuga possimus quae suscipit tempore omnis quis.</p><p>A blanditiis aliquid et tenetur. Sapiente itaque aut incidunt. Culpa quidem veniam magnam quo qui ipsum sunt.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(14, 3, 5, 'Deleniti debitis.', 'est-quia-ea-et-quaerat-occaecati-deleniti', NULL, 'Dolores sed porro id molestias non. Ullam rerum aut pariatur qui aliquam et. Rem fuga eos ipsa aspernatur. Modi ut aut quae culpa.', '<p>Sed quod molestiae quia rem quia maiores fuga repellat. Odit facere sunt quia autem neque odit.</p><p>Dolor voluptatum qui dolorem ipsum. Quis porro placeat commodi tenetur rerum ea vero. Quo tenetur qui et aperiam accusantium impedit nemo.</p><p>Repudiandae facere fugiat impedit laborum quo quis et dolorem. Cumque laudantium sapiente et et repellat. Ut cumque harum voluptas veniam reprehenderit exercitationem. Distinctio provident quas eligendi voluptatem ipsam modi.</p><p>Dolore repudiandae culpa inventore quas. Qui ut rerum ex saepe quibusdam sit. Illo tenetur placeat perspiciatis molestiae. Perferendis necessitatibus mollitia corrupti dolore officia.</p><p>Consequatur eligendi dolore dolores rerum blanditiis dignissimos ea. Optio illum suscipit natus nisi laudantium nam. Rerum natus laborum rerum ducimus suscipit consequuntur.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(15, 2, 1, 'Odit culpa at.', 'voluptatum-sed-omnis-enim', NULL, 'Rem maiores consequatur in deserunt qui est in et. Eos voluptas ex explicabo voluptate necessitatibus. Occaecati voluptatibus quibusdam et quia molestias quas incidunt. Aut aut quaerat sunt ipsum velit iusto nostrum.', '<p>Voluptas sunt accusamus sapiente rem cumque nostrum quo. At rem sunt molestiae omnis et possimus. Neque omnis harum quibusdam reprehenderit.</p><p>Enim quos nam ratione quibusdam voluptate sunt. Aliquid eius beatae pariatur voluptate architecto id. Eos voluptatibus aut blanditiis doloribus. Exercitationem occaecati rem rem eum sed ex quia.</p><p>Dolores fugiat officia impedit et et. Occaecati ea error sint quas quas nihil. Autem et dolor sequi inventore. Aut sint animi officia vel aut.</p><p>Eum rem animi dicta. Dolores unde at voluptatum corporis. Quaerat magni occaecati soluta nostrum repellat iure cupiditate. Aut sit expedita sit iure natus suscipit.</p><p>Nostrum similique itaque sed magni fuga adipisci ut excepturi. Et voluptatum libero recusandae veniam officia. Blanditiis harum nemo sequi neque voluptas libero.</p><p>Dolore cum sed deleniti quibusdam. Temporibus molestiae et qui quam voluptas omnis. Quas voluptatem quis cupiditate exercitationem. Consequatur enim magnam ex quia reiciendis voluptatem.</p><p>Distinctio adipisci sit aut et dicta facilis voluptatum. Vel accusantium quo illum vero aperiam repellat voluptatem. Consequuntur beatae ea tenetur provident atque odio tempore. Nulla aliquid odit quia incidunt.</p><p>Doloribus doloribus possimus similique quae commodi. Voluptatem id voluptates fuga nihil qui totam alias. Provident sequi quos itaque in eveniet culpa. Culpa aspernatur et excepturi vitae omnis sunt nemo. Enim sit vero minima aperiam.</p><p>Ut aperiam aliquam et. Nihil deleniti ut deserunt non error. Ea nulla similique sed est iure et corrupti. Perferendis suscipit sint suscipit id voluptas.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(16, 2, 5, 'Blanditiis eaque tempora quo.', 'atque-eligendi-optio-repellendus-sint-rerum', NULL, 'Sed qui iure dolor earum itaque quis. In et assumenda nihil ex. Quo ipsam sit quo corporis illo.', '<p>Ut sequi quia saepe qui rerum asperiores. Ipsa eaque explicabo numquam et. Quis nobis iste repudiandae recusandae.</p><p>Est vel eveniet quibusdam magni vero ullam. Vitae aliquid eveniet aliquam assumenda libero aut optio. Ut quia repellendus eveniet qui repellendus quaerat adipisci. Et sint quia excepturi aut asperiores ducimus error pariatur.</p><p>Quas ab dicta sit consequuntur eaque nostrum repudiandae. Dolorem debitis rerum sit molestiae delectus et eius. Omnis id ullam et sint. Id aperiam est rerum.</p><p>Possimus enim facere a est saepe quam. Asperiores soluta odio quos officiis repellat reiciendis autem. At quas et et ratione. Earum nostrum repellendus et ullam debitis.</p><p>Consequuntur temporibus recusandae est corporis tenetur. Saepe est quis quaerat rerum nemo suscipit laudantium cumque.</p><p>Maiores consequatur ea doloremque ut dignissimos facere accusamus. Praesentium laborum labore voluptas est animi. Id hic consequatur eveniet voluptates molestiae qui. Necessitatibus non necessitatibus nemo non.</p><p>Et nam molestias exercitationem ratione adipisci. Ducimus omnis aut enim ratione non ut ea. Cupiditate quod natus saepe cum sint.</p><p>Molestiae assumenda cupiditate eum eum sed. Id praesentium reiciendis quis eius qui. Quia rerum illum et.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(17, 1, 3, 'Laudantium rerum.', 'corrupti-impedit-cum-iste', NULL, 'Odio et voluptas voluptas dignissimos aperiam atque vel dignissimos. Dolore cum dolorem doloremque sed. Qui voluptatem natus ut quis aut ducimus reiciendis et. Necessitatibus vel amet unde soluta ratione consequatur sit. Omnis maxime in nulla reprehenderit aut voluptates vel libero.', '<p>Error aut suscipit hic est molestiae amet quidem. Rerum et incidunt praesentium quis ea cumque ut. Error voluptatum est omnis facere.</p><p>Rerum modi fuga enim unde illo doloremque voluptatem. Consequuntur quaerat nemo provident iure atque qui. Reiciendis a et corrupti vero qui quae perferendis. Rerum necessitatibus dicta voluptatem quod a.</p><p>Velit aspernatur doloremque sint dolores quod non laboriosam. Vitae quidem amet occaecati praesentium tenetur minima. Quibusdam tempora omnis nihil natus sit sunt.</p><p>Aut illum dolor dolorum laboriosam consequatur minima nulla hic. Sunt sequi consectetur sit est harum incidunt dolor. Possimus a quaerat doloribus.</p><p>In voluptatem nihil nobis molestiae sequi sit. Ratione totam sit enim libero cum. Ipsum dolorum quia eum. Ab architecto et eos illum animi.</p><p>Aliquid in quo qui tempora sit sapiente ipsum magni. A odio aut libero rerum molestiae placeat vel qui. Autem accusantium delectus ullam quo harum doloribus veritatis quam.</p><p>Natus ullam ratione maxime. Et ipsa accusamus sit sunt dolores quia. Necessitatibus neque unde iste enim praesentium expedita. Impedit numquam non officiis.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(18, 2, 4, 'Aut corrupti officia itaque fugiat eos.', 'ex-sint-placeat-voluptas-accusantium-dolores-libero-voluptates', NULL, 'Ut voluptates eveniet officia est in. Sed alias explicabo non et ipsam. Praesentium et quod porro consequatur culpa beatae pariatur.', '<p>Quas omnis enim ut porro. Nam nemo necessitatibus minima facere incidunt et exercitationem. Laboriosam non optio repellendus autem. Recusandae nulla voluptatem repellat aut et eaque.</p><p>Nam quos facere consequuntur odit aut. Qui aliquid quis necessitatibus vel est quo. Ratione ea velit consequuntur non impedit ab.</p><p>Occaecati ratione veritatis voluptatum et hic doloribus. Laboriosam nihil quis neque inventore autem quidem. Veritatis atque quia molestias facere quis ut. Totam ut animi aspernatur eos.</p><p>Unde aliquid quam ratione aut vitae. Ea quas sunt ad error modi quis. Sunt nemo ea necessitatibus beatae.</p><p>Accusantium asperiores eligendi corrupti quaerat facere ut consequuntur. Sed assumenda tenetur quasi et tempore atque. Eveniet ad voluptatem qui expedita sed illum ab numquam. Dolor quidem ab ea explicabo dolores.</p><p>Dolor accusantium vero consequatur accusantium vel vel omnis autem. Laboriosam molestias dolorem voluptas quis modi vel consequatur. Ea et et voluptas officiis ratione. Perspiciatis nobis ut sunt aut facere.</p><p>Non in maxime et odio dolorem sunt id. Deleniti voluptatibus pariatur est molestiae consectetur at dolor illum. Aut quam omnis aut labore.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(19, 2, 6, 'Voluptatum est et iusto.', 'omnis-omnis-nisi-incidunt', NULL, 'Explicabo soluta pariatur perspiciatis quo autem nemo dolorem. Aspernatur suscipit praesentium aperiam. Suscipit molestiae optio et dolorum esse.', '<p>Laborum ipsa id eos facilis consequatur tenetur sed. Atque sint ducimus nisi provident aperiam consequatur recusandae.</p><p>Aperiam sit rerum autem ducimus nulla doloremque. Beatae est et ea qui maiores rerum fuga.</p><p>Quisquam sit et quis rerum aut quia. Minus ipsum molestiae molestiae animi ab modi. Adipisci velit dolor vel necessitatibus voluptas sed aperiam beatae. Neque corporis maiores similique similique.</p><p>Neque dolor voluptatibus veniam officia et. In qui velit non vero quae. Impedit rerum qui repudiandae exercitationem quaerat veniam expedita nobis.</p><p>Et officiis nobis ut commodi fuga. Eum aliquid rerum non voluptatem ut porro.</p><p>Sint quas voluptatibus sed quis non reiciendis labore quis. Omnis ipsam ea ex omnis enim placeat dolor optio. In natus minus in architecto.</p><p>Laboriosam et eius aut iste. Repellat odio distinctio consequuntur enim dolores quia. Voluptatem ea omnis facilis debitis illo cum ea commodi.</p><p>Recusandae temporibus aspernatur tempore quis unde eum. Eum ut libero vel corrupti. Ea nam omnis quaerat quis architecto ex possimus.</p><p>Unde quis totam odio. Quia maxime minus nesciunt sed. Qui illum non qui deleniti eligendi aperiam. Quo culpa eos commodi voluptatum. Ut aperiam impedit tempora fugiat corporis dicta.</p><p>Autem optio quo qui vero veniam doloremque. Consequatur fuga reprehenderit nihil id commodi. Occaecati neque asperiores odit dignissimos. Rem ullam est suscipit impedit nulla rerum nemo.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(20, 1, 5, 'Soluta optio voluptas eum dignissimos officiis voluptates ipsam.', 'soluta-qui-repellat-exercitationem-dolor', NULL, 'Omnis voluptas quod ex nihil consequatur voluptate. Sed dolorem eligendi ipsam veritatis assumenda et voluptate. Itaque expedita vero veniam consequuntur. Quibusdam et quam est. Quia sed temporibus est repellendus repudiandae deleniti.', '<p>Quisquam aut debitis quae. Dignissimos velit commodi alias nam eius rerum reiciendis. Voluptatem tempore facere omnis doloremque similique est sed. Voluptatibus aut consequatur quibusdam.</p><p>Ipsum explicabo quia impedit pariatur voluptas repellendus possimus. Voluptas est hic qui minima velit labore. Aut dicta sint nihil quasi doloribus error. Beatae voluptatem labore dolore sed aut fugiat doloribus.</p><p>Aliquam deserunt est et quo in ex. Est et rerum voluptas at est id sequi. Quisquam explicabo laborum qui distinctio quis qui.</p><p>Eveniet qui tenetur eos repellendus ut molestiae vel ducimus. Nihil quam suscipit est. Unde dolores enim ut expedita ex beatae. Animi ipsum mollitia ut.</p><p>Beatae quos ipsa maxime beatae delectus alias sit a. Numquam eius optio laborum nemo eos non enim. Cupiditate voluptas facilis fuga ipsam ipsam. Qui ea dolorum sed sunt fuga voluptatem non incidunt.</p><p>Unde vel et sed expedita dolore. Sint dolorem in odit blanditiis. Illum fuga quasi voluptatem rerum autem possimus fuga voluptatibus. Eos at iusto id est quae aliquam nobis.</p><p>Qui aperiam excepturi omnis ut maiores corporis. Temporibus amet sunt nihil delectus eveniet. Provident voluptatem cum nemo. Quia nesciunt ut quo exercitationem. Expedita quo fuga accusantium aut possimus dicta.</p><p>Esse impedit illum natus. Adipisci officiis omnis consequatur aut et. Commodi ut nostrum ipsa. Consectetur deserunt rerum possimus cum culpa voluptas quo.</p><p>Vel facilis voluptatem magni aut. Dolorum unde voluptatibus eum libero modi modi odio. Qui tenetur qui totam minus error.</p><p>Nobis saepe nihil ipsam voluptatum autem itaque omnis suscipit. Tempora et quis doloremque unde minus maiores. Ex perspiciatis exercitationem vitae.</p>', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46'),
(21, 5, 1, 'Bill Gates', 'bill-gates', 'post-images/MofJyI4PQ5kDSeZamhDmd1gCIgfZVsMtooC2OX4G.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat voluptates architecto ad mollitia velit qui sint labore, maiores dicta quia exercitationem ipsum possimus voluptatibus iure cumque? Cons...', '<div><strong>Lorem ipsum dolor sit amet consectetur </strong>adipisicing elit. Fugiat voluptates architecto ad mollitia velit qui sint labore, maiores dicta quia exercitationem ipsum possimus voluptatibus iure cumque? Consequatur reprehenderit perferendis deleniti, explicabo excepturi fuga dignissimos, laborum tenetur aliquid iure cum magnam. Perferendis nihil soluta dicta enim quos est perspiciatis beatae, eaque architecto doloremque tenetur, officiis nesciunt minus debitis iure. Eos laudantium sapiente placeat sunt maiores magnam corrupti aut. Molestias, beatae. Blanditiis eaque numquam omnis porro expedita error, placeat quia laboriosam ullam ratione&nbsp;</div><div><br></div><div><em>harum, veniam et praesentium dolores sed debitis dolor</em> nihil facere consequatur maiores nostrum molestiae nesciunt. Sint, officia molestiae aliquam quia qui nisi consequatur recusandae dicta natus culpa nostrum ex impedit? Laborum iste laboriosam iure sequi distinctio accusantium sit quo totam, neque numquam similique, aliquid eos exercitationem asperiores dicta odio praesentium dolores? Omnis accusamus minus debitis incidunt totam doloremque&nbsp;</div><div><br></div><div>sequi tenetur reprehenderit iusto quod eligendi molestias consequatur, rerum alias voluptatem nulla rem dolorem? Sint porro cupiditate dicta veritatis numquam quo ad dolore reprehenderit ut aspernatur. Maxime odit minus quas quod, necessitatibus consequatur soluta in deserunt fugit obcaecati aliquam nulla eum laborum natus. Provident, amet quisquam! Voluptas, a placeat voluptatum natus nulla laborum blanditiis delectus! Asperiores animi nulla porro nihil quidem!</div>', NULL, '2021-12-06 20:21:11', '2021-12-06 20:21:11'),
(22, 4, 2, 'Machine Learning Engineer', 'machine-learning-engineer', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat voluptates architecto ad mollitia velit qui sint labore, maiores dicta quia exercitationem ipsum possimus voluptatibus iure cumque? Cons...', '<div><strong>Lorem ipsum </strong>dolor sit amet consectetur adipisicing elit. Fugiat voluptates architecto ad mollitia velit qui sint labore, maiores dicta quia exercitationem ipsum possimus voluptatibus iure cumque? Consequatur reprehenderit perferendis deleniti, explicabo excepturi fuga dignissimos, laborum tenetur aliquid iure cum magnam. Perferendis nihil soluta dicta enim quos est perspiciatis beatae, eaque architecto doloremque tenetur, officiis nesciunt minus debitis iure. Eos laudantium sapiente placeat sunt maiores magnam corrupti aut. Molestias, beatae. Blanditiis eaque numquam omnis porro expedita error, placeat quia laboriosam ullam ratione&nbsp;</div><div><br></div><div><em>harum, veniam</em> et praesentium dolores sed debitis dolor nihil facere consequatur maiores nostrum molestiae nesciunt. Sint, officia molestiae aliquam quia qui nisi consequatur recusandae dicta natus culpa nostrum ex impedit? Laborum iste laboriosam iure sequi distinctio accusantium sit quo totam, neque numquam similique, aliquid eos exercitationem asperiores dicta odio praesentium dolores? Omnis accusamus minus debitis incidunt totam doloremque&nbsp;</div><div><br></div><div>sequi tenetur reprehenderit iusto quod eligendi molestias consequatur, rerum alias voluptatem nulla rem dolorem? Sint porro cupiditate dicta veritatis numquam quo ad dolore reprehenderit ut aspernatur. Maxime odit minus quas quod, necessitatibus consequatur soluta in deserunt fugit obcaecati aliquam nulla eum laborum natus. Provident, amet quisquam! Voluptas, a placeat voluptatum natus nulla laborum blanditiis delectus! Asperiores animi nulla porro nihil quidem!</div>', NULL, '2021-12-06 20:26:54', '2021-12-06 20:26:54'),
(23, 6, 2, 'Big Data', 'big-data', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat voluptates architecto ad mollitia velit qui sint labore, maiores dicta quia exercitationem ipsum possimus voluptatibus iure cumque? Cons...', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat voluptates architecto ad mollitia velit qui sint labore, maiores dicta quia exercitationem ipsum possimus voluptatibus iure cumque? Consequatur reprehenderit perferendis deleniti, explicabo excepturi fuga dignissimos, laborum tenetur aliquid iure cum magnam. Perferendis nihil soluta dicta enim quos est perspiciatis beatae, eaque architecto doloremque tenetur, officiis nesciunt minus debitis iure. Eos laudantium sapiente placeat sunt maiores magnam corrupti aut. Molestias, beatae. Blanditiis eaque numquam omnis porro expedita error, placeat quia laboriosam ullam ratione&nbsp;</div><div><br></div><div>harum, veniam et praesentium dolores sed debitis dolor nihil facere consequatur maiores nostrum molestiae nesciunt. Sint, officia molestiae aliquam quia qui nisi consequatur recusandae dicta natus culpa nostrum ex impedit? Laborum iste laboriosam iure sequi distinctio accusantium sit quo totam, neque numquam similique, aliquid eos exercitationem asperiores dicta odio praesentium dolores? Omnis accusamus minus debitis incidunt totam doloremque&nbsp;</div><div><br></div><div>sequi tenetur reprehenderit iusto quod eligendi molestias consequatur, rerum alias voluptatem nulla rem dolorem? Sint porro cupiditate dicta veritatis numquam quo ad dolore reprehenderit ut aspernatur. Maxime odit minus quas quod, necessitatibus consequatur soluta in deserunt fugit obcaecati aliquam nulla eum laborum natus. Provident, amet quisquam! Voluptas, a placeat voluptatum natus nulla laborum blanditiis delectus! Asperiores animi nulla porro nihil quidem!</div>', NULL, '2021-12-06 20:28:06', '2021-12-06 20:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Aziz Nurulloh', 'aziz@gmail.com', 'aziz8', NULL, '$2y$10$H.h4kSpuebiVxYfuzBn3o.2o4ZdjZ/cn7iLZAvXuqdX9hWDIie.lG', NULL, '2021-12-06 20:10:46', '2021-12-06 20:10:46', 1),
(2, 'Lasmono Sinaga', 'zpalastri@example.net', 'jsihombing', '2021-12-06 20:10:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y8IDzjUwusfSUYgV1Tt7nnPxo5iNb7UUbvSAhLSzjscI2AZadwyf882qbeWP', '2021-12-06 20:10:46', '2021-12-06 20:10:46', 0),
(3, 'Lulut Maryanto Maheswara', 'ajeng.prabowo@example.net', 'cecep.gunarto', '2021-12-06 20:10:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mC6QzaAX1z', '2021-12-06 20:10:46', '2021-12-06 20:10:46', 0),
(4, 'Karimah Rika Hastuti', 'hasna62@example.net', 'mnasyidah', '2021-12-06 20:10:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g3Gje8G9Sg', '2021-12-06 20:10:46', '2021-12-06 20:10:46', 1),
(5, 'Balamantri Cecep Saragih S.Gz', 'ida.rajasa@example.net', 'ohutapea', '2021-12-06 20:10:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AIUWTTvFy9', '2021-12-06 20:10:46', '2021-12-06 20:10:46', 0),
(6, 'Tomi Sitorus', 'yessi.ardianto@example.net', 'januar.putri', '2021-12-06 20:10:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HOrYZF8tsB5PLU0GgZyMgVoEA7zL7HJgheAgSAnhvLuUYn2bRuiOiQKzBqNA', '2021-12-06 20:10:46', '2021-12-06 20:10:46', 0);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

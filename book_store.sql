-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 29, 2024 at 03:45 PM
-- Server version: 11.3.2-MariaDB
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_address` text NOT NULL,
  `recipient_name` varchar(255) NOT NULL,
  `cellphone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `full_address`, `recipient_name`, `cellphone`, `city`, `state`, `postal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'تهران زعفرانیه خیابان مقدس اردبیلی پلاک 160', 'کیارش مقیمی', '09941851798', 'زعفرانیه', 'تهران', '3169188475', '2024-11-29 15:45:00', '2024-11-29 15:45:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `bio` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authors_slug_unique` (`slug`),
  KEY `authors_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Krystina Bogisich', 'Krystina-Bogisich', 'Delectus quaerat at porro aut veniam voluptates. Cumque dolores enim a corrupti velit repellendus. Omnis omnis assumenda consequatur molestiae.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(2, 'Gilda Pfeffer', 'Gilda-Pfeffer', 'Ut delectus qui iste quas. Debitis laborum quia maiores voluptatem qui. Illo ad et sed laboriosam est totam. Recusandae molestiae dolores qui quia in delectus rerum.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(3, 'Harry Greenholt', 'Harry-Greenholt', 'Vel soluta aut modi facilis ut voluptas quo. Excepturi voluptas placeat et maxime. Odio accusantium autem facilis delectus ipsa reprehenderit non temporibus. Alias impedit facere quis soluta dicta ipsa minima perferendis.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(4, 'Mr. Keshaun Schultz', 'Mr.-Keshaun-Schultz', 'Nobis quod neque perspiciatis odio repellendus maiores occaecati. Voluptate deserunt occaecati labore nostrum. Rerum et consequatur sit facilis sit occaecati.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(5, 'Devante Bayer', 'Devante-Bayer', 'Mollitia explicabo ut quos et. Et quod numquam ut et soluta exercitationem optio aliquam. Qui et non sequi consequuntur dolorum. Ad et ea labore laboriosam.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(6, 'Rusty Hegmann I', 'Rusty-Hegmann-I', 'Ex enim rerum quo modi eaque. Recusandae id qui officia culpa accusantium aliquam. Magni architecto quis sapiente quod blanditiis dignissimos repudiandae dignissimos. Qui reprehenderit modi tenetur vel dolores accusamus qui.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(7, 'Korbin Carroll', 'Korbin-Carroll', 'Ut similique consectetur aut quidem officia doloremque praesentium id. Et eaque aut velit in laborum deleniti atque.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(8, 'Dayana Howell', 'Dayana-Howell', 'Culpa temporibus ratione nesciunt quam quia. Et iure amet architecto dolor. Sunt consectetur quaerat blanditiis quod ducimus.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(9, 'Eula Langosh', 'Eula-Langosh', 'Totam sed repellendus asperiores. Aut aut sunt perspiciatis et vel adipisci molestiae.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(10, 'Bradly Schulist', 'Bradly-Schulist', 'Laudantium et est aperiam iusto laudantium est. Voluptatibus quis assumenda aliquam consequatur. Labore labore ullam omnis architecto nemo molestiae.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(11, 'Prof. Geovanny Jakubowski IV', 'Prof.-Geovanny-Jakubowski-IV', 'Officiis qui sed non ut sit saepe. Esse tenetur sunt itaque distinctio dolor soluta ex. Voluptas culpa repudiandae quaerat soluta possimus. Explicabo debitis accusantium voluptatem voluptatem.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(12, 'Miss Brandyn Kling', 'Miss-Brandyn-Kling', 'Sequi iure ullam quia omnis dolorem et tenetur. Aut et dolor ut omnis ex. Aut voluptatem deleniti quis et quia quia odit omnis. Non sapiente assumenda veritatis expedita.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(13, 'Dr. Chance Quitzon DVM', 'Dr.-Chance-Quitzon-DVM', 'Quia omnis incidunt expedita. Omnis adipisci velit ut at. Illum eveniet iure similique quis sed. Ratione quasi dolore molestias sed id et enim molestiae.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(14, 'Claudie Medhurst Sr.', 'Claudie-Medhurst-Sr.', 'Nostrum a rerum exercitationem eius similique est dolorem. Veniam voluptatem praesentium sint id. Reiciendis voluptatem totam tenetur impedit tenetur.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(15, 'Prof. Eric Abbott DDS', 'Prof.-Eric-Abbott-DDS', 'Eum quo recusandae esse explicabo quaerat quibusdam quasi. Qui vitae debitis voluptas quasi. Harum blanditiis rerum inventore quibusdam est.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(16, 'Karlie Bednar Jr.', 'Karlie-Bednar-Jr.', 'Ut voluptatem rerum dolor quia ea facere. Veritatis omnis qui ipsum consequuntur quae porro sequi. Deserunt reiciendis voluptatem saepe quo et quas laboriosam.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(17, 'Miss Karen Pollich', 'Miss-Karen-Pollich', 'Quaerat earum et quos non numquam. Voluptatibus modi dicta cum deserunt numquam suscipit quasi quia. Explicabo veniam est repudiandae et eaque voluptas cupiditate necessitatibus. Libero et eius ut quos.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(18, 'Mr. Newton Bartoletti Sr.', 'Mr.-Newton-Bartoletti-Sr.', 'Qui possimus vero exercitationem qui. Ad at omnis natus nihil accusamus ipsam earum. Nihil deserunt saepe optio. Et molestiae quia nemo non in inventore voluptatem.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(19, 'Nelle Gutmann', 'Nelle-Gutmann', 'Aliquam natus voluptate dignissimos officiis totam mollitia facere. Magnam consectetur occaecati numquam. Rerum suscipit quasi veniam eaque.', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(20, 'Mr. Johnpaul Walter', 'Mr.-Johnpaul-Walter', 'Asperiores voluptatem voluptatem fuga incidunt eum. Ut delectus illum neque eaque sequi qui aut. Veniam earum et qui vero.', '2024-11-29 15:44:58', '2024-11-29 15:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `slug` varchar(70) NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `publisher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `translator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pages` int(10) UNSIGNED NOT NULL,
  `published_year` year(4) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `books_slug_unique` (`slug`),
  KEY `books_author_id_foreign` (`author_id`),
  KEY `books_publisher_id_foreign` (`publisher_id`),
  KEY `books_translator_id_foreign` (`translator_id`),
  KEY `books_category_id_foreign` (`category_id`),
  KEY `books_title_index` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `price`, `quantity`, `image`, `description`, `author_id`, `publisher_id`, `translator_id`, `category_id`, `pages`, `published_year`, `isbn`, `created_at`, `updated_at`) VALUES
(1, 'Veritatis maiores accusantium atque voluptas.', 'veritatis-maiores-accusantium-atque-voluptas', 133000, 8, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Earum corrupti expedita et sed aperiam odio fuga at sed ex occaecati maxime voluptatem quia voluptatem unde ea ea illo aliquid non ad dolorum rerum optio molestiae eveniet natus similique ipsum harum vel mollitia nesciunt velit consectetur ut quidem ducimus quia neque asperiores quibusdam qui possimus repellendus est et delectus rerum aut alias voluptatibus aut commodi accusamus ipsam repellendus id explicabo sapiente autem suscipit voluptas nesciunt asperiores molestiae quis et sit debitis alias voluptas repellendus error nostrum maiores vel quam doloremque accusantium earum laboriosam consectetur blanditiis et impedit at est dolore consequuntur perspiciatis sed soluta quam quod dolor officiis soluta qui accusamus nobis qui libero deleniti.', 2, 13, 1, 4, 374, '1970', '9792392336508', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(2, 'Excepturi qui numquam.', 'excepturi-qui-numquam', 106500, 5, 'https://book-store-api.chbk.app/images/covers/cover1.jpg', 'Repellendus hic reiciendis aspernatur molestiae nihil officia praesentium eveniet est et id explicabo similique eum et natus veritatis quibusdam non eos eaque dolor ullam quo aliquam non eos eius exercitationem quia perferendis sint commodi consequuntur voluptatem a ipsa dolorem unde reiciendis nihil rem magnam eaque tempora voluptas aut voluptas fugit praesentium et optio nisi eos aut sint omnis magni repudiandae magnam iure unde accusantium rerum quidem voluptatem voluptatem blanditiis est perspiciatis mollitia voluptas magnam facere maiores quisquam ab eum pariatur eius voluptatem sit sequi.', 7, 8, 2, 3, 397, '2013', '9786738947619', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(3, 'Dolores nulla iste.', 'dolores-nulla-iste', 48000, 7, 'https://book-store-api.chbk.app/images/covers/cover4.jpg', 'Doloremque inventore eos in dolorem omnis ratione delectus dolorum pariatur accusamus et placeat dignissimos numquam dolores dolores ipsa quo accusantium dolorem omnis sint a aspernatur id fuga ducimus eos impedit eum ipsa dolorem sunt quos nulla quasi beatae et tempore eos asperiores corporis temporibus a a occaecati magni deserunt quo eaque quia dolores voluptas est velit minus omnis perferendis quia nemo distinctio quia officiis explicabo est laboriosam magni animi vero et officia nihil quae.', 2, 8, 3, 3, 663, '1992', '9782973837593', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(4, 'Voluptatum et.', 'voluptatum-et', 105500, 8, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Quos nobis expedita itaque cupiditate molestias veniam saepe ut tempora voluptatum velit commodi sit minima dolor non maiores voluptate explicabo cumque sunt sint dolorum dolor id explicabo voluptas et numquam harum et minima fugit necessitatibus error quia similique officiis voluptate rerum odit unde sit earum debitis mollitia voluptatem perferendis alias ut ut vel sed rerum ducimus saepe neque illo laboriosam explicabo ducimus ab omnis amet repellat quo excepturi sunt illo iusto quis quo ut qui aliquam officiis est similique natus velit ea quo et atque alias temporibus quaerat eius est aut aliquam velit velit dolores laborum tempore est sint soluta quae similique ex et et quibusdam maiores.', 4, 5, 4, 1, 536, '1997', '9787237834752', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(5, 'Nemo aliquam dolor nam.', 'nemo-aliquam-dolor-nam', 78500, 10, 'https://book-store-api.chbk.app/images/covers/cover11.jpg', 'Voluptas esse voluptatem provident quo impedit sunt temporibus sunt suscipit qui in ut perferendis praesentium repellat et magni mollitia ratione autem laudantium saepe iusto sit molestiae qui odio est et quia vel labore excepturi odit voluptatem rerum esse necessitatibus totam ut earum omnis natus ea recusandae sint voluptatem eos dolorem aut eum quis voluptate ea culpa molestiae ex sapiente beatae sit consequatur est odio alias dolor est autem dicta labore magnam et molestias sunt dolorum impedit sed ut et eos quos provident rem dolore deleniti amet ea qui unde voluptatum provident neque odio ea ipsum vero tempore dolore exercitationem aliquam molestiae omnis voluptatum enim sint qui aliquam est et aut ducimus non ut totam est voluptatem repellendus fugit quo quas voluptatibus fugit non incidunt in debitis non ut placeat placeat molestias architecto.', 8, 20, 5, 1, 731, '2018', '9795216155477', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(6, 'Vitae quisquam omnis.', 'vitae-quisquam-omnis', 47500, 8, 'https://book-store-api.chbk.app/images/covers/cover1.jpg', 'Dolorem perspiciatis odio distinctio iusto itaque maiores exercitationem sit a aut soluta eos dignissimos at eligendi sunt deserunt nisi eligendi porro laborum veritatis eum neque enim omnis dolores repellat maiores ipsum error dolores et impedit a quod iusto blanditiis necessitatibus et qui vel perspiciatis ab numquam quibusdam non at nam consequuntur autem veritatis eveniet tenetur saepe magni quia asperiores itaque magni ut voluptates non eaque omnis esse dolor consequatur ullam expedita laborum suscipit at aliquam ratione numquam quod suscipit a tempore atque eius aut commodi.', 16, 13, 6, 1, 883, '1979', '9792704324551', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(7, 'Dignissimos minima aut quidem blanditiis.', 'dignissimos-minima-aut-quidem-blanditiis', 112500, 1, 'https://book-store-api.chbk.app/images/covers/cover5.jpg', 'Molestiae qui nemo culpa quidem quo laudantium laudantium est et ea impedit et ea rerum officiis dignissimos nihil omnis exercitationem quo consequatur aliquid dolorum commodi et nihil omnis vel dolorum eum autem aut tempora molestias et quis pariatur aut cum fuga nihil impedit voluptatem laudantium qui aspernatur beatae eum et et earum doloribus id aspernatur odit adipisci expedita libero libero et eveniet error facere rerum placeat asperiores illum est iusto laboriosam voluptatem rerum nostrum veniam voluptatem minus fugit praesentium nostrum vitae sunt eaque unde non ut velit eos accusantium harum placeat voluptatum recusandae cum quis eum voluptatem quod et iste adipisci autem quasi ut saepe est nihil blanditiis ducimus blanditiis cum esse adipisci sit et est.', 13, 5, 7, 4, 880, '1997', '9790850417516', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(8, 'Quo quia beatae voluptate.', 'quo-quia-beatae-voluptate', 49000, 1, 'https://book-store-api.chbk.app/images/covers/cover10.jpg', 'Reiciendis voluptatem corrupti pariatur quidem hic minima voluptas animi culpa mollitia earum dolorum natus quis sunt est culpa enim voluptatibus eius non dicta aut dolor aut sit deleniti maiores quis saepe tempore numquam voluptas ducimus suscipit accusantium ipsum laboriosam cumque dolorem repudiandae sequi aut pariatur voluptatum dolore qui ex iusto amet consequuntur fugit et optio cum cumque quia atque cumque ea possimus et consequatur quaerat et et dolores aut molestias debitis quos ipsam quae ut doloremque suscipit asperiores sint explicabo corrupti eos ea adipisci reiciendis et animi sed ad optio nesciunt id inventore et exercitationem voluptatem quia modi nisi dolorum.', 12, 17, 8, 1, 140, '2022', '9793537086494', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(9, 'Et voluptatem sit laboriosam.', 'et-voluptatem-sit-laboriosam', 59000, 2, 'https://book-store-api.chbk.app/images/covers/cover10.jpg', 'Id eligendi repellat magnam ut sunt animi iste qui delectus molestiae aspernatur in facilis ea ea voluptate excepturi error et rem voluptatem amet sit eum voluptas sit illum esse magni veniam voluptatem architecto molestias modi et consequatur quod nemo eos modi quo perspiciatis beatae voluptatem omnis quam aut deleniti officia unde consequatur sit distinctio est ut minima sit mollitia placeat molestiae voluptatem ut earum repellat vel officia fugiat rerum est velit aut maxime velit vero aliquid cum aut incidunt adipisci molestiae quae magni voluptatem eos consequuntur non ad placeat nemo nihil officiis praesentium dolores amet consequatur eos quis expedita placeat dolorum maiores et sed excepturi nulla fugiat eius minima voluptate repudiandae vitae soluta eos possimus delectus nulla quas omnis ea eius dolorem expedita est vel.', 6, 1, 9, 5, 159, '1996', '9790793044473', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(10, 'Assumenda consectetur iste et.', 'assumenda-consectetur-iste-et', 67500, 4, 'https://book-store-api.chbk.app/images/covers/cover11.jpg', 'Veniam itaque quaerat voluptas eos officia et ratione nam architecto asperiores dignissimos hic non natus reprehenderit voluptas accusamus reiciendis a est dolorum doloremque numquam voluptatem porro voluptatum nihil ea quis similique qui praesentium cumque alias error id vitae et deserunt molestiae perferendis minus ut fugit occaecati aspernatur quo culpa excepturi corrupti laborum odio impedit neque qui modi doloremque cum iure modi quasi tenetur odio odit facere et et odio commodi et nisi nemo vel ut eveniet aut voluptas atque magnam.', 4, 9, 10, 5, 613, '1997', '9791400681456', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(11, 'Illo ullam.', 'illo-ullam', 104000, 4, 'https://book-store-api.chbk.app/images/covers/cover5.jpg', 'Necessitatibus officia non reprehenderit provident labore ex unde debitis et quisquam dolores nihil modi perspiciatis fugit est qui eius sunt commodi dolorem omnis delectus quas facilis velit asperiores sequi eligendi voluptas eligendi suscipit hic vel quia dolores enim tempora tempore consequatur sit est quis laboriosam facere earum neque voluptatem possimus distinctio reprehenderit et assumenda eveniet in maiores beatae quia sint et qui sed veritatis quod quibusdam deleniti quos itaque non.', 8, 11, 11, 1, 139, '1989', '9792332217287', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(12, 'Maxime quia saepe.', 'maxime-quia-saepe', 65500, 10, 'https://book-store-api.chbk.app/images/covers/cover9.jpg', 'Odit in ut voluptatibus dolores et adipisci sed eaque sed qui rerum quaerat sunt eos voluptatem assumenda quia natus et enim perspiciatis quaerat similique recusandae quasi dolorem corporis aut laudantium optio qui voluptas omnis sunt fugiat fugit qui at rerum placeat sit odio cumque maiores id laborum et necessitatibus illo rem placeat est et dolore dolores natus sed quis iste est soluta aperiam voluptate rerum.', 17, 9, 12, 1, 378, '2000', '9788408366140', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(13, 'Consequatur iure autem nisi.', 'consequatur-iure-autem-nisi', 64000, 6, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Deleniti perspiciatis nesciunt sequi dolore quisquam non omnis est error ipsa sunt in quia ipsa magnam placeat nulla iure totam provident odit quod excepturi qui sed itaque blanditiis voluptatem deserunt aliquam repellendus odio nulla aut voluptatem doloribus deserunt veniam beatae illum voluptatibus a quisquam aperiam sed recusandae minima fugiat enim repellat et dolores autem repellat hic laudantium eveniet et rem ut deleniti et reprehenderit sint nihil vel adipisci suscipit dolorem ab earum ut in cum laudantium nisi quis molestiae praesentium ipsa omnis animi magni officiis veritatis libero recusandae rerum eius aut nihil omnis repellat inventore corrupti illo perferendis aut aut et laboriosam vel quidem dolores sed quidem et suscipit voluptatem non ab qui et placeat amet magnam molestiae ipsum inventore.', 10, 18, 13, 1, 772, '2014', '9793082979234', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(14, 'Exercitationem est excepturi.', 'exercitationem-est-excepturi', 55500, 4, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Aliquam iusto pariatur sed aut saepe sed beatae et et totam asperiores est temporibus nostrum nostrum earum rerum similique est et enim inventore sunt earum eaque et et velit perferendis in aut fuga rerum eveniet amet aliquam consequatur velit similique aspernatur facere aspernatur eos consequatur inventore quae eos suscipit et autem veritatis officia soluta consequatur et distinctio nihil error molestiae sunt dolore illum esse qui eum sunt ab nostrum consectetur aut aperiam dignissimos praesentium omnis nihil expedita et dolore quis inventore earum maiores voluptatem dolor iusto assumenda voluptatibus ea odit impedit dolor veritatis reprehenderit eum delectus dicta id eaque consequatur et sit iure repudiandae sequi eos quod.', 2, 2, 14, 7, 294, '1988', '9792277093441', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(15, 'Quia id fuga.', 'quia-id-fuga', 101500, 3, 'https://book-store-api.chbk.app/images/covers/cover10.jpg', 'Tempora aut laudantium impedit non autem sint nam sit atque omnis voluptate veniam quia dicta molestiae sint et totam quis sint corrupti quibusdam omnis eos dolore maiores tempore quae nulla repudiandae voluptates minus quisquam quaerat voluptatem placeat non assumenda et sint sed beatae dicta reprehenderit distinctio quia vel dolores et repellendus recusandae natus porro qui fuga sint enim non sit non et qui porro autem eaque dolor fugiat fugiat.', 4, 18, 15, 6, 637, '1991', '9796950226980', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(16, 'Temporibus rerum eveniet.', 'temporibus-rerum-eveniet', 136500, 5, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Eos temporibus unde neque quia corporis delectus quod aut id tempore cupiditate fugit itaque et et iusto ad et fugit ut quaerat expedita distinctio ut dolor nemo cum vel molestias molestiae qui possimus qui voluptatum dolor libero quidem quis voluptatibus tempore optio voluptates qui nihil quae itaque quis voluptate vitae perferendis illum omnis asperiores iste molestias enim quos saepe quaerat vitae natus sit doloribus earum dolor repellendus voluptatum tenetur quod aliquid voluptatum aspernatur consectetur est est exercitationem cum tenetur sit harum voluptate sit expedita maxime fuga veritatis dolorum repudiandae eos quos ut atque id aut dolor occaecati vitae voluptatem omnis quia qui enim praesentium sequi numquam aut voluptatum dolor iusto aperiam voluptas quam aut nulla itaque fuga voluptatem quis id blanditiis.', 12, 5, 16, 2, 642, '1991', '9786438884511', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(17, 'Incidunt animi ea et.', 'incidunt-animi-ea-et', 117000, 9, 'https://book-store-api.chbk.app/images/covers/cover4.jpg', 'Amet quasi molestiae facilis harum quos perspiciatis suscipit itaque minima sed excepturi provident voluptas omnis excepturi quaerat et ut expedita illum rerum autem ipsa delectus molestiae eum est at fugiat qui qui perferendis qui ipsa quibusdam in consectetur cumque eos adipisci hic minus aliquam eum amet et facilis sunt quaerat accusantium ullam ut quis illum et eaque quo architecto necessitatibus atque neque dolor in aut facilis officia est eos aut quam magnam nulla et omnis sapiente omnis ut et necessitatibus molestiae fuga reprehenderit possimus odio distinctio quam sit totam nam ut qui quae magni ipsam qui eveniet ipsam et quasi assumenda molestiae commodi esse dolorum accusamus qui eius iste dignissimos odio omnis voluptatibus amet sapiente molestias inventore quaerat quisquam sunt eveniet mollitia error molestias quia beatae sint fugit aut nostrum et harum amet laboriosam beatae debitis possimus.', 18, 15, 17, 3, 837, '2024', '9781117364278', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(18, 'Sequi illo deserunt.', 'sequi-illo-deserunt', 77000, 4, 'https://book-store-api.chbk.app/images/covers/cover4.jpg', 'Qui quam vero consectetur doloremque consectetur nihil assumenda amet atque odit rem dolores sit voluptatem ea non nulla aut inventore dolores laudantium quae aperiam distinctio rerum sint qui quaerat expedita accusantium distinctio eum et et voluptas vel nostrum at velit omnis aut numquam nemo libero qui et et ut sunt facilis necessitatibus non harum quo culpa qui nihil sit nostrum quia non ad nihil unde velit exercitationem quae explicabo rerum distinctio incidunt rerum aut maxime autem tenetur corporis eum quo asperiores ducimus numquam facilis deserunt sit assumenda occaecati atque blanditiis possimus ullam totam aut illum sed laudantium enim aliquid sequi molestiae aliquid sed quam quia suscipit voluptatem non laboriosam consequuntur molestiae cumque eos eos aspernatur et dolores in molestias qui accusantium quos enim laborum.', 18, 20, 18, 7, 293, '2012', '9795792942294', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(19, 'Nemo nihil sit.', 'nemo-nihil-sit', 100000, 1, 'https://book-store-api.chbk.app/images/covers/cover11.jpg', 'Vel ut iste consequatur sapiente cum dolor velit dolor ut repudiandae est provident doloremque labore et molestiae quia enim dolores corporis incidunt amet quam nemo mollitia voluptate sapiente repudiandae sequi qui totam ad exercitationem et esse dolore consequatur libero sunt nihil quam aspernatur voluptatem nam animi consequatur pariatur et non quia temporibus possimus nisi impedit aut tempore modi magnam adipisci laboriosam nostrum deleniti quod sit asperiores.', 12, 20, 19, 3, 919, '2022', '9783739211657', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(20, 'Eligendi eum sint quibusdam.', 'eligendi-eum-sint-quibusdam', 79500, 6, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Facere reiciendis cum tenetur beatae aut omnis similique nisi rerum modi eaque debitis odit qui doloremque esse omnis eveniet pariatur est rem quisquam illum sequi porro labore hic et maiores ea laboriosam non omnis reprehenderit dolore non dolores est natus enim beatae asperiores nisi vitae perferendis maxime ut libero eaque id error consequatur aut cupiditate quis deserunt pariatur repellat et quisquam et excepturi occaecati consequatur quo voluptas aperiam laboriosam modi illum iure et impedit dolor nobis laborum laborum dolorem quo labore velit itaque repellendus nihil tempora asperiores voluptas voluptate occaecati dolor quas qui corrupti alias et dolorem in hic inventore est nisi et impedit soluta vero et alias est aspernatur quia voluptatem aut sit quis temporibus nisi provident suscipit fugit consectetur qui soluta ipsa consequatur quos consequatur ipsum deserunt sint libero voluptatem architecto cum molestiae.', 6, 6, 20, 1, 378, '1978', '9790040686555', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(21, 'Qui ea qui nam omnis.', 'qui-ea-qui-nam-omnis', 96000, 9, 'https://book-store-api.chbk.app/images/covers/cover1.jpg', 'Eveniet eum saepe modi blanditiis saepe eum omnis id vitae necessitatibus expedita ut nulla nam praesentium illum corrupti delectus natus soluta officia iusto iure placeat assumenda sit nisi adipisci nihil cumque ratione eligendi nisi ut sed esse quasi natus quidem qui minus neque natus doloremque quisquam eos molestiae vel illum voluptatum neque beatae nisi quae placeat sed sunt officia dolorem praesentium quia rerum dignissimos saepe corporis voluptatem optio molestias aliquam officia odio nemo aut dignissimos sit ut omnis repudiandae assumenda.', 7, 16, 21, 1, 687, '2006', '9784981593256', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(22, 'Modi minima provident nemo voluptatum.', 'modi-minima-provident-nemo-voluptatum', 60500, 8, 'https://book-store-api.chbk.app/images/covers/cover3.jpg', 'Accusamus molestias nesciunt modi beatae et voluptas expedita ducimus aut libero molestiae at porro est culpa quas suscipit esse debitis eos et enim veritatis aliquid autem nihil fugiat incidunt totam ea non id voluptatem harum sint facere laudantium molestiae iusto ut quasi ut est quod deleniti animi possimus odio aliquam maxime ducimus dolorum repellat dolor quo voluptatibus cupiditate accusantium veritatis et dolores dolorum et magnam modi dolor ducimus commodi ex voluptatibus id ex aspernatur libero recusandae molestiae delectus ipsa aut quisquam.', 15, 9, 22, 1, 394, '2020', '9798324795153', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(23, 'Sapiente temporibus deserunt.', 'sapiente-temporibus-deserunt', 147500, 6, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Odio iusto et fugit sunt explicabo voluptas hic ut libero fugiat repellat itaque non omnis aut ratione et adipisci libero debitis est quod similique rerum quia dignissimos cupiditate esse ratione eveniet totam molestiae quidem repellat soluta officiis sunt debitis temporibus et voluptas quod dolor ratione assumenda vel architecto accusamus id aperiam similique est ex id et quaerat et consequuntur dolor maiores eum reiciendis sint ducimus rem similique fuga et et placeat explicabo commodi ex doloribus quibusdam incidunt rerum labore alias qui inventore maxime blanditiis a in doloribus quam ut omnis non aut voluptas cum exercitationem exercitationem pariatur consequatur aperiam praesentium eveniet voluptatem eaque quam rerum voluptatem quis perferendis illum id quaerat aut quasi amet temporibus minima velit qui doloribus amet delectus labore voluptatem qui sed iure autem quisquam veritatis culpa perferendis non voluptates rerum vel alias amet cupiditate vel.', 14, 18, 23, 7, 943, '1977', '9791234176821', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(24, 'Neque non qui nam aspernatur.', 'neque-non-qui-nam-aspernatur', 97500, 10, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Vitae ipsa voluptatum eligendi maiores mollitia sed iure voluptates ea ipsa labore quas autem necessitatibus ut possimus rerum ex id sint et et facere et autem et nisi animi aut autem incidunt earum perferendis eaque enim in adipisci autem dolor voluptas dolor vel incidunt aliquam rerum omnis eveniet culpa laudantium dolore quia nobis atque necessitatibus in magnam repellat aut id est temporibus velit quo ad blanditiis debitis enim.', 10, 15, 24, 3, 560, '1999', '9786401959314', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(25, 'Ex animi alias architecto.', 'ex-animi-alias-architecto', 148000, 5, 'https://book-store-api.chbk.app/images/covers/cover7.jpg', 'Itaque aut aut accusantium et aspernatur eum vero omnis earum repellat fugiat ut consectetur ea eum natus sapiente et adipisci consequatur sit quisquam debitis dicta totam non dicta qui accusamus rerum iste eum nemo repellat rerum corrupti repudiandae eos necessitatibus sed molestiae eos molestiae totam veniam ratione necessitatibus expedita qui voluptatibus voluptatibus omnis delectus sunt consequatur doloremque est ut ipsam debitis.', 17, 3, 25, 7, 203, '1998', '9791644498391', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(26, 'Mollitia enim suscipit quia.', 'mollitia-enim-suscipit-quia', 132000, 8, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Autem voluptatem reiciendis voluptas repellat incidunt quia commodi error necessitatibus fugit natus officiis eos ut iure veniam hic enim veniam omnis in assumenda in incidunt fuga et repellendus esse inventore ullam aut quisquam sit non qui voluptas perspiciatis ipsam est odio maxime impedit ea tenetur incidunt omnis impedit accusamus molestiae quas ut facere accusantium doloribus quis fugit perspiciatis non qui omnis consequatur quasi ut nulla ducimus dolores officiis dignissimos minus quis harum consectetur et aspernatur provident aut voluptate voluptatem consequatur voluptatem consequatur vel dolores ut dolore consequatur debitis deserunt sint omnis vitae quo incidunt ipsa repellat rerum sit similique explicabo reiciendis et in consequatur commodi impedit consequatur maxime est ea minus ut necessitatibus excepturi veniam id odio eius accusamus debitis tempore vero.', 20, 8, 26, 3, 504, '1972', '9780495794547', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(27, 'Praesentium labore repudiandae sapiente.', 'praesentium-labore-repudiandae-sapiente', 125000, 10, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Dolorem tenetur qui occaecati optio sint eos natus quis necessitatibus qui quo ea molestiae vel natus quo impedit tenetur iure provident maiores id qui id illo vel odit unde minus omnis in voluptatem ea esse porro et vero eum sit sunt et voluptatum nemo voluptates soluta incidunt eos occaecati iure est explicabo optio quisquam asperiores et dicta aut autem consequatur perferendis hic dolor eos ipsam ut sit explicabo molestias consectetur.', 2, 2, 27, 1, 217, '1984', '9798977025720', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(28, 'Nulla consequatur quia in.', 'nulla-consequatur-quia-in', 81000, 6, 'https://book-store-api.chbk.app/images/covers/cover7.jpg', 'Est nostrum quaerat sapiente voluptas officia sunt saepe ullam aliquam explicabo soluta ut molestiae ut et maxime quis et voluptatem modi quaerat dolorum blanditiis et quasi illo laboriosam sint vero nam et quam molestiae in ea nisi ut cum hic adipisci consequatur iste aut pariatur molestiae aut ut non est consequatur quia velit accusamus sit aut aspernatur ab possimus enim et qui velit eveniet similique dolores quia non accusantium voluptas animi rem mollitia fugit nostrum dolorem sint consequatur voluptas mollitia corrupti adipisci autem aut dolores voluptatem ab sint ut et fugit animi tempora officiis voluptatem quis porro repudiandae atque vero est minima ut fugiat officiis aliquam odit qui eligendi dolorem non molestiae similique aperiam est ducimus iure rerum rem vel eaque et modi hic non maxime fugit ad quia accusamus autem doloribus ipsum enim facilis aut sit iusto.', 13, 9, 28, 5, 251, '2013', '9790376797536', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(29, 'Reiciendis ducimus odio.', 'reiciendis-ducimus-odio', 75500, 6, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Aperiam occaecati eius nobis sapiente dolore quia voluptatem veritatis soluta voluptatem odio repudiandae atque eum fugit laborum est dicta sit velit architecto dignissimos explicabo iure nisi assumenda excepturi ut dolores reprehenderit qui autem delectus similique perferendis voluptatem velit voluptatem dignissimos quo ab dolores delectus vel hic in minus aut illum quos sed alias neque magnam molestiae quos molestias dolorem corporis ut et ipsum quia labore in et ex animi corporis quia non et nihil rem et deserunt non expedita praesentium fugit explicabo laboriosam qui beatae velit enim sint necessitatibus sunt nihil quia aut sed doloribus magni est animi dolor non id animi quo ipsum et ad est beatae est ut vel corrupti commodi quibusdam delectus reiciendis sed esse est animi accusamus nam non maiores eaque.', 19, 13, 29, 2, 346, '1979', '9799299750130', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(30, 'Omnis reprehenderit est et.', 'omnis-reprehenderit-est-et', 99000, 10, 'https://book-store-api.chbk.app/images/covers/cover1.jpg', 'Aut quia optio ea nemo sint nobis et accusamus mollitia quasi repellendus quibusdam corporis deserunt quaerat aut omnis ratione repellendus saepe voluptatum aut dolorem dicta deserunt voluptas vel excepturi dolores eos possimus corrupti omnis sed harum quaerat est autem fugiat dicta recusandae explicabo ratione rerum sunt iure sunt distinctio dolorem dolor et officiis sint voluptates id nam adipisci ducimus veritatis sunt necessitatibus eveniet laboriosam laborum voluptatem consequatur magnam ut quia ut natus enim ea.', 8, 6, 30, 7, 471, '2012', '9797048078740', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(31, 'Occaecati id cum quo.', 'occaecati-id-cum-quo', 101000, 3, 'https://book-store-api.chbk.app/images/covers/cover7.jpg', 'Aut ut dolores laborum fugit aliquam dolorum maiores tempore asperiores quia et ad unde ea rem non quo dicta ducimus sit illum non omnis earum eos quos facere repudiandae facilis accusantium consequatur iste sint blanditiis qui necessitatibus rerum quis aut possimus vitae dolores ut ducimus aperiam reprehenderit sed libero sed aliquid vitae ut sapiente qui voluptas ratione excepturi qui alias et dignissimos vel eum unde et quo in dolore voluptatum eligendi sint voluptatem dolorem qui quibusdam impedit id eaque quas consequatur nulla velit animi voluptatem dolor quia quod nesciunt molestias est rem quidem similique delectus velit qui qui odio culpa.', 4, 5, 31, 5, 325, '2013', '9785060652765', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(32, 'Perspiciatis blanditiis dicta harum.', 'perspiciatis-blanditiis-dicta-harum', 109000, 10, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Consequatur ullam neque sunt animi iusto est amet molestiae repellat eius quas sit et exercitationem distinctio blanditiis nisi officia ipsa excepturi deleniti et enim soluta necessitatibus dolor error similique tenetur consequatur cumque optio molestiae qui recusandae et molestiae et qui sint est rerum ullam consequatur laboriosam numquam mollitia qui reprehenderit totam expedita repellat corporis sit reprehenderit repellat in aut id eos rerum ut et repudiandae odit eaque enim eveniet ut repudiandae tenetur a officiis est ipsa omnis vitae eum nostrum ea expedita reiciendis recusandae repellendus ad qui corrupti quia et placeat quo esse corporis libero porro et fugiat omnis minima.', 11, 7, 32, 1, 129, '1988', '9794377493381', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(33, 'Dolor placeat dolor.', 'dolor-placeat-dolor', 117500, 6, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Neque molestiae qui natus voluptas et reprehenderit molestiae minus laboriosam dicta modi explicabo expedita at beatae a sint aut harum nostrum ut ea quasi veritatis architecto facere tenetur recusandae deleniti sit consequatur qui est facere repudiandae et vel et quasi aut sapiente ut nulla repellat consequuntur qui molestiae qui sint qui possimus sed necessitatibus et delectus sint deserunt consectetur aut odit rerum aut provident sunt commodi quam ab modi porro soluta ipsum voluptas dicta et alias est aspernatur rerum veniam placeat qui et ut quasi non accusamus at ea nam consequuntur et mollitia reprehenderit voluptatum tenetur et veniam delectus laudantium.', 13, 10, 33, 3, 232, '2000', '9791660724115', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(34, 'Voluptatibus et et.', 'voluptatibus-et-et', 76500, 8, 'https://book-store-api.chbk.app/images/covers/cover10.jpg', 'Impedit et recusandae est illo est et minima suscipit nesciunt impedit adipisci debitis nulla dolor hic qui a cupiditate consequatur in laboriosam est consequuntur ea et assumenda rem ut reiciendis fugit sed amet eligendi repudiandae autem assumenda sed eaque fugiat amet ea qui harum laborum vitae dignissimos tempora nemo sit nihil quo vitae corporis dolores aut quibusdam sunt voluptas sequi sed dolores accusamus consequatur ut qui animi officiis ea voluptas aliquam autem repellat veniam earum et laudantium distinctio ipsum tempore quis placeat est commodi aut enim qui suscipit dolorem quae autem odit accusamus deserunt ut dolores dolores excepturi magnam veritatis consequatur tenetur ut possimus nobis magni numquam.', 10, 14, 34, 2, 637, '1998', '9792159616195', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(35, 'Repellendus voluptatum quo.', 'repellendus-voluptatum-quo', 113000, 9, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Dolorum doloremque vel cum repellendus sunt incidunt eos maxime harum facere ut numquam impedit unde quia qui ex aut dolores quod et nostrum ab iusto aut quas delectus sint quod voluptatem quia velit illum facilis voluptatem accusamus non tempora omnis ipsam et nihil excepturi minus iste eveniet ullam sapiente ipsa ad quia et unde ut aut consequuntur ea voluptatem et et maxime commodi similique reprehenderit aut quis dolorem sunt explicabo mollitia et dolorem inventore laborum repellendus illo facilis quisquam nobis laudantium sit facere totam tempora vitae et qui voluptatem quam aut laborum corporis asperiores.', 18, 6, 35, 7, 977, '2017', '9791397024830', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(36, 'Aut blanditiis voluptatem molestiae.', 'aut-blanditiis-voluptatem-molestiae', 116000, 4, 'https://book-store-api.chbk.app/images/covers/cover5.jpg', 'A fugit aperiam fuga harum nam voluptatem exercitationem corrupti non ut impedit rerum velit in ut quasi sit veritatis vel id quia eligendi ratione eum cum voluptatibus illo odit aut ut beatae quis culpa quasi minus consequatur quidem quod eius quasi non natus possimus reiciendis impedit optio soluta quae iure et quos deserunt consequuntur consequatur reprehenderit repellat rem earum rerum quam hic hic explicabo eos neque porro est eligendi et repudiandae qui doloremque culpa eligendi aut qui dolores veritatis ut molestias distinctio cum quia dolorum qui.', 15, 8, 36, 2, 148, '2008', '9799903610638', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(37, 'Omnis error beatae id.', 'omnis-error-beatae-id', 144000, 3, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Maiores reprehenderit nostrum sed aspernatur porro sint facilis quaerat facere sapiente rem ut est eum adipisci tenetur totam voluptatem velit ea quas illum aut perferendis ea quasi id et rem quasi sint molestiae tenetur quia deserunt quis consequatur et placeat facilis et et mollitia quis at quaerat aut architecto sit quos accusantium assumenda qui error ipsum sed officia nobis repellat aut necessitatibus et quis dolorem tempora quisquam reiciendis fuga est cumque non dolor vel ducimus ut sed doloremque doloremque incidunt aut voluptates ipsum nisi dolorem consequatur animi enim saepe amet eum amet minus omnis quo molestiae dignissimos dolores repudiandae suscipit possimus et qui suscipit quam nostrum recusandae quasi consequuntur voluptatem vel provident eaque recusandae molestias.', 17, 9, 37, 1, 873, '2015', '9785593314994', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(38, 'Voluptas aut molestiae similique.', 'voluptas-aut-molestiae-similique', 95000, 6, 'https://book-store-api.chbk.app/images/covers/cover7.jpg', 'Voluptatem illum veniam nisi reiciendis ipsam quas quam et vel dignissimos qui id aperiam aut nisi a possimus perspiciatis in et vel consectetur quidem sint quaerat provident ut minus vel in voluptatem recusandae consequatur necessitatibus est sed est a aut facere doloribus ut nulla officia voluptas assumenda enim quae molestias reprehenderit vitae ut assumenda qui vel ut qui dolores non molestiae facilis et error sint non cumque esse facilis harum saepe et adipisci ea nam ea alias accusamus dolores veniam ipsum dolorem rerum quidem.', 11, 1, 38, 4, 770, '1988', '9798156426195', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(39, 'Doloribus aliquid impedit provident deserunt.', 'doloribus-aliquid-impedit-provident-deserunt', 61500, 2, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Maiores eum natus cumque corrupti et nulla molestiae eligendi nobis aspernatur aspernatur et aspernatur alias pariatur dolores quasi rerum fugit aut qui qui doloribus eaque et saepe consequatur exercitationem ut tempore quam minus deleniti fuga qui fuga est nemo sint dicta veritatis tenetur et quidem ipsum consequuntur inventore omnis aut et eligendi et adipisci accusantium cum omnis modi aut voluptas sint aut vel eos earum veritatis.', 5, 10, 39, 3, 517, '1999', '9792367560099', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(40, 'Enim nihil animi.', 'enim-nihil-animi', 52500, 8, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Ut aut consequatur soluta et voluptatem temporibus nulla eveniet sint recusandae quia distinctio cupiditate quia vitae rem voluptatum reprehenderit veritatis ea ut sit aut possimus tenetur vel ut quibusdam ullam ea quia labore debitis omnis earum necessitatibus eaque nulla possimus repellendus dolores vel porro quaerat modi aut saepe sed nobis rem veniam perferendis et eius et ipsam cum aut ab recusandae eius velit perspiciatis hic aspernatur ullam expedita nihil facilis accusantium est atque est et et ut ad id harum est dolorem placeat sed quibusdam facere porro consequatur voluptas sed enim id culpa sunt perspiciatis nemo debitis tempora rem accusantium assumenda occaecati fugit illo nobis id dolores qui explicabo illo architecto illum et saepe repellat et beatae voluptatum laboriosam in laboriosam tenetur dolor qui quo qui et sit facere ut.', 7, 20, 40, 2, 912, '1971', '9792965418716', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(41, 'Laborum qui non.', 'laborum-qui-non', 88500, 8, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Iusto officia consequuntur quasi et officia voluptas ipsa vitae nobis assumenda cupiditate nam illo deleniti eaque qui deserunt possimus sit provident accusantium ullam iste quae numquam saepe quia et ratione reiciendis praesentium facilis iusto excepturi id aut libero magni non repudiandae qui error laudantium officia earum eos quos quae fugit possimus qui eligendi qui dolores ipsa sed fugit ad aut et earum quis earum ad saepe fuga sunt architecto aspernatur amet praesentium nostrum ullam laudantium labore deleniti.', 5, 19, 41, 4, 501, '2009', '9796144454731', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(42, 'Et dicta non sed.', 'et-dicta-non-sed', 72500, 8, 'https://book-store-api.chbk.app/images/covers/cover3.jpg', 'Minima ipsam nulla qui assumenda consequuntur hic hic neque commodi delectus soluta a consequatur eligendi ut qui et qui sed error voluptatibus beatae debitis voluptatibus itaque eius quos unde quia sed omnis ratione rem illo nostrum ducimus in quasi tenetur laudantium quasi accusamus eum non et quis eum velit sed id aut possimus provident sunt officiis quidem quam ut labore cupiditate libero voluptas aut ut deleniti consequatur dignissimos maiores sapiente quia nesciunt asperiores occaecati maiores nihil ut est blanditiis at nisi illum occaecati et vero voluptatum aut delectus porro architecto molestiae qui et incidunt laboriosam animi voluptatum est dolor eaque consectetur quia ducimus voluptas provident at ut beatae eveniet repellat similique voluptas eaque illum ut placeat delectus nostrum rerum autem repellendus fuga inventore suscipit quidem.', 4, 11, 42, 7, 314, '1985', '9794842968512', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(43, 'Non sint expedita necessitatibus.', 'non-sint-expedita-necessitatibus', 122500, 2, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Nam porro est pariatur veniam quos inventore ipsa et rerum et dolor eum non velit perspiciatis nemo explicabo quam aut ut ea mollitia beatae numquam consectetur quia minima rem qui voluptas corporis laudantium harum sed et quasi ut velit deserunt odit debitis cupiditate aut eos quod ut excepturi voluptatem quae eveniet accusantium reprehenderit nesciunt corporis repellat vitae delectus ut ratione rerum dignissimos harum est perspiciatis dolor explicabo consectetur tempora officia saepe eum impedit enim quia sapiente ab distinctio qui ut quis possimus.', 18, 18, 43, 2, 235, '2005', '9788180259067', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(44, 'Et consequatur nemo.', 'et-consequatur-nemo', 146500, 9, 'https://book-store-api.chbk.app/images/covers/cover11.jpg', 'Ipsam reprehenderit nisi et omnis quisquam aperiam facilis quia dignissimos reprehenderit voluptatem eum molestiae omnis praesentium aut ratione est eum hic qui voluptas et aut iste iure velit voluptatem sint soluta voluptatem ullam provident distinctio quia pariatur iste fuga accusantium excepturi recusandae voluptatem alias omnis non doloribus aut quaerat magni soluta cupiditate delectus est consequatur voluptas voluptatem sit aliquam ut ut soluta officiis repellat occaecati ullam est ut id itaque sunt nemo accusantium ut.', 6, 5, 44, 2, 289, '1992', '9784387396048', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(45, 'Ut officiis corrupti deserunt.', 'ut-officiis-corrupti-deserunt', 78500, 3, 'https://book-store-api.chbk.app/images/covers/cover5.jpg', 'Voluptas ab nisi quibusdam dolor quia molestiae eos veritatis minus molestiae quibusdam voluptates culpa sed et asperiores aliquam voluptas neque natus deleniti et debitis nemo amet unde id tempora enim est ea amet ea at occaecati qui tenetur saepe doloribus ut voluptatibus voluptate molestiae placeat illum non non nobis error ut expedita impedit quasi distinctio sit rerum eos deleniti modi labore eveniet aperiam sit in aut exercitationem facere et modi ducimus culpa voluptatem exercitationem quisquam debitis corrupti maiores vel.', 15, 7, 45, 5, 348, '1997', '9787627972903', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(46, 'Ipsa nisi eos maxime.', 'ipsa-nisi-eos-maxime', 53000, 9, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Optio quis qui delectus fugiat praesentium eum omnis repellendus maxime cumque et exercitationem quos necessitatibus in ex eaque magni suscipit sint rerum non in et facere repellendus non omnis neque sed incidunt facilis id odio culpa unde aut accusamus doloribus temporibus aspernatur mollitia eum beatae voluptates praesentium nam repellat dolor doloribus deleniti recusandae ea incidunt cupiditate libero dolor soluta iure asperiores similique architecto quidem ea inventore amet vitae aliquid soluta aut rem perferendis perferendis dolor suscipit quod aut ipsa cumque rem placeat quisquam voluptatem beatae eaque similique ut ipsa sint autem minus consectetur temporibus nisi soluta id non est incidunt commodi est reiciendis vero dolore beatae cum itaque corporis animi et sit reiciendis ea praesentium qui eum inventore.', 1, 15, 46, 6, 671, '2022', '9794471415906', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(47, 'Aut repellat est eius.', 'aut-repellat-est-eius', 52000, 9, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Temporibus ratione distinctio eos dolore ea nihil et repudiandae dolores magnam et aut molestias suscipit vel fugit nobis qui quaerat itaque sint ducimus beatae incidunt fugiat aliquam laborum est sint tenetur ratione magni quo doloribus et id non cum placeat voluptas qui autem optio porro et et harum aliquam aliquid quae libero aliquam autem sequi omnis aperiam accusantium tempora accusantium libero quo quisquam saepe facilis aut facilis dolore consectetur velit molestiae qui ut illo distinctio placeat eos harum voluptas non reiciendis omnis dolor ratione aut quas error cumque corrupti error ut sint eius rerum ducimus ipsa aut delectus ex dolores.', 1, 5, 47, 6, 594, '1974', '9793602044534', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(48, 'Nemo facere omnis.', 'nemo-facere-omnis', 117500, 9, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Doloremque id aut distinctio ut est quia soluta sit eum numquam iste aut officiis aut nemo et cumque consequatur sapiente quia et voluptatem quia qui corrupti ab laborum quia quam dignissimos at aut suscipit dolorem sequi placeat vel dicta molestias alias sed nihil a consequatur aliquam sit eligendi totam enim adipisci sed et modi dolor commodi illum voluptatibus necessitatibus odio doloribus mollitia ullam aliquid qui tenetur quia est quaerat maiores repellat iste porro mollitia qui minus perferendis quam labore eius dicta illum et earum non dolores asperiores laboriosam voluptatibus sint sed repudiandae quia pariatur explicabo inventore voluptatibus numquam eum consequatur perspiciatis pariatur nihil et recusandae velit est quia consequatur sapiente et ea ullam ullam.', 18, 15, 48, 1, 425, '1973', '9784316319261', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(49, 'Non delectus fugit tempora.', 'non-delectus-fugit-tempora', 85000, 10, 'https://book-store-api.chbk.app/images/covers/cover5.jpg', 'Voluptatem et ut veniam aliquam rerum sunt ea laboriosam consectetur officiis mollitia tempora reiciendis mollitia dolorem fugiat neque voluptatem placeat harum deleniti magnam similique est id voluptatum distinctio velit ut exercitationem nulla et praesentium quos saepe autem atque ab nihil et quo sed optio voluptas error pariatur quae ea voluptatum expedita qui rerum qui itaque rem reprehenderit sunt corporis officia dolor accusantium sint consectetur eum et iusto fugiat eaque dolor porro aut voluptates sunt voluptas ea autem iusto a porro reiciendis deleniti dolor explicabo vel veritatis non temporibus aut quidem reiciendis vel aliquid officiis pariatur consequuntur voluptate ab id laboriosam sint facere dolor placeat.', 3, 17, 49, 7, 228, '1989', '9794952860089', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(50, 'Modi placeat rerum laudantium quia.', 'modi-placeat-rerum-laudantium-quia', 111500, 2, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Atque dolores et hic possimus alias et quo nam quaerat sequi magnam consequuntur enim animi dolorem officia excepturi iusto est quia culpa consectetur optio qui est optio recusandae porro perferendis sequi corrupti ut et quia sed repellat pariatur voluptas quia voluptatum voluptatibus sit nihil necessitatibus sed sit sed mollitia voluptate nihil sint tempore quam aut quibusdam minima est quaerat sed atque corporis rem animi rerum voluptas fuga nemo sint repellendus assumenda voluptatem molestias consequatur iusto ratione quia vero at sint nihil sapiente voluptatem perferendis quas magni omnis vel numquam autem qui vel quidem eaque et qui iusto molestiae neque architecto libero exercitationem enim sapiente ducimus animi non et minus quia voluptas in earum consequatur vitae natus est dolores id sint laborum magnam est et itaque quis assumenda.', 18, 17, 50, 5, 222, '1974', '9791129303363', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(51, 'Non asperiores perferendis voluptate.', 'non-asperiores-perferendis-voluptate', 148500, 8, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Soluta maiores ducimus rem velit magnam autem rerum in illo incidunt totam qui dolore ut veniam ducimus enim eaque necessitatibus dolor esse cum quia sed quod qui necessitatibus molestiae modi maiores et totam qui quia voluptates ut repudiandae dolorem qui deserunt blanditiis recusandae enim exercitationem sequi unde sit facilis quod labore aut dicta nihil vel at deleniti ipsam non suscipit velit praesentium molestiae a qui consequatur eos omnis earum et rerum voluptas consequuntur pariatur rerum consectetur ducimus neque sapiente et tenetur iste et laudantium libero magni ullam quia porro possimus dolor architecto maxime mollitia blanditiis qui rerum aut mollitia exercitationem aut nulla aperiam dolorum voluptatem modi aut numquam suscipit sint quia repellendus est quia qui velit nesciunt aperiam dolor officia dolorum pariatur ea aliquid voluptates nihil est quod eveniet ut totam deleniti non.', 8, 17, 51, 7, 772, '1999', '9787867268767', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(52, 'Sunt modi alias natus.', 'sunt-modi-alias-natus', 143500, 6, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Saepe porro omnis delectus quo reprehenderit soluta rerum voluptatem velit esse nihil rerum ullam consequatur quia et adipisci consequatur hic pariatur sunt et voluptates sint dolorum animi sunt suscipit minima natus aut qui ea molestiae aut ipsam fuga aut libero vel laboriosam sapiente unde non error ut architecto quia earum sunt est officia dolor nobis aut ea reiciendis rem maxime dolorem voluptas distinctio corporis aut quia quae qui quaerat occaecati sunt quasi explicabo qui voluptas deleniti cumque nostrum qui ex rerum eum et quia voluptatem voluptates laboriosam aut ad sit voluptas dolore nobis praesentium aut qui qui facilis aut cumque sapiente facere pariatur et molestiae enim ut similique incidunt omnis quo animi autem ducimus libero sint quam ab qui autem sed ea omnis natus et et earum similique.', 1, 5, 52, 6, 155, '2002', '9781861254757', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(53, 'Voluptatibus ut facere.', 'voluptatibus-ut-facere', 89000, 7, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Voluptatem et pariatur nam voluptates ea quam iste repellendus et est quis ut nisi vel voluptas provident ipsum et omnis at nisi quia est voluptatibus deleniti sed omnis dolore consequatur et repellat repellat natus ut facere impedit ipsa consequuntur dignissimos quidem ut est iste qui vel cumque suscipit qui cum porro laborum voluptatem suscipit ipsum sapiente consectetur temporibus laboriosam sit esse minima perferendis ipsum ducimus eaque necessitatibus accusamus expedita voluptas enim ad officiis pariatur sint voluptas perferendis quia enim praesentium omnis eum vitae quia et ut placeat nihil ut fugit voluptate est aut veniam labore quia eos fugiat ea rerum reprehenderit rem distinctio in culpa consequatur voluptatum nobis voluptates sapiente dolores quaerat error culpa maxime ut ut et neque sapiente et vitae velit rerum ratione non repellendus nihil minus praesentium exercitationem omnis harum veritatis quae culpa saepe nihil qui qui delectus.', 8, 6, 53, 7, 504, '2004', '9786909268949', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(54, 'Saepe iure omnis.', 'saepe-iure-omnis', 93500, 5, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Et quidem asperiores amet hic alias nihil magnam esse est quia commodi libero ducimus accusantium et iusto architecto consequatur dicta at nemo omnis deserunt natus numquam totam voluptatibus qui veniam quisquam sapiente facere rerum impedit sapiente repellat et atque recusandae architecto molestiae dignissimos tenetur ea qui eligendi omnis rerum et fuga voluptatem earum ut nostrum ut nemo repellat sapiente eius est distinctio ut cum eos.', 3, 13, 54, 6, 354, '2000', '9793710353627', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(55, 'Inventore repudiandae alias iste.', 'inventore-repudiandae-alias-iste', 99000, 6, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Sed vero earum eum laudantium et accusamus eum sint ducimus doloremque harum eligendi dolor qui sunt quaerat qui molestias a quia harum laborum quis provident sit eos tempora vero ut repellendus architecto omnis incidunt atque delectus quia voluptas ad facilis quidem nam libero vel assumenda qui ex qui magnam molestiae autem hic sit non omnis dolorem est sit qui sed explicabo temporibus dicta accusamus maxime est voluptas.', 18, 18, 55, 3, 472, '1994', '9799128490053', '2024-11-29 15:45:00', '2024-11-29 15:45:00');
INSERT INTO `books` (`id`, `title`, `slug`, `price`, `quantity`, `image`, `description`, `author_id`, `publisher_id`, `translator_id`, `category_id`, `pages`, `published_year`, `isbn`, `created_at`, `updated_at`) VALUES
(56, 'Optio aspernatur culpa.', 'optio-aspernatur-culpa', 98000, 4, 'https://book-store-api.chbk.app/images/covers/cover9.jpg', 'Perspiciatis fugiat repudiandae molestias nulla eum vel quibusdam et dolorem veniam harum quidem ipsa sapiente sed repudiandae pariatur in qui est cum quos perspiciatis ea adipisci ut ut temporibus explicabo molestias et libero tenetur necessitatibus ratione ullam est quos doloremque incidunt nam tempore esse amet qui quibusdam quam ex eaque in magni saepe ut minus consequatur voluptatum excepturi dolor id alias repellat rerum non qui rerum autem.', 18, 17, 56, 7, 331, '1989', '9783271017915', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(57, 'Cupiditate mollitia blanditiis non.', 'cupiditate-mollitia-blanditiis-non', 133500, 5, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Nostrum et nobis pariatur earum dolor nisi ut qui quia est molestiae in facilis blanditiis aut voluptatum ut distinctio autem rerum impedit dolores architecto nihil aut et molestias error voluptatum nobis quia sed repellendus et rerum fugit consequatur aut praesentium harum officia voluptatibus hic aperiam doloremque exercitationem aut cupiditate eveniet tempore ut molestias minus maxime aut accusantium vel omnis atque dolore quia voluptatem est quaerat sed impedit quibusdam sint beatae iusto harum sed accusantium est quam distinctio id eum quae delectus.', 14, 12, 57, 4, 423, '2017', '9786979389513', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(58, 'Excepturi aliquam nostrum.', 'excepturi-aliquam-nostrum', 89000, 7, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Assumenda facere laboriosam magni aperiam molestiae odit laboriosam minima pariatur impedit ad nostrum sit vel harum iste veniam dolorem qui ut omnis tempore debitis fuga quia similique sed et voluptatem nulla doloremque impedit distinctio voluptatibus delectus a impedit natus aut fuga in aliquid molestiae exercitationem illo quae repellat alias placeat id corrupti quas explicabo commodi sed molestiae cupiditate rerum pariatur vel dolore sit magni similique facere illum qui eius et odio optio neque sit aliquam sed fugit et fugit et ad omnis suscipit commodi deserunt quisquam temporibus sunt ut et eos corporis reprehenderit consequatur voluptatem dolorem rem enim accusantium officiis placeat autem voluptatem vero non temporibus debitis temporibus velit voluptatum rerum repellendus quia iure velit molestias perferendis accusantium natus odit iste non libero incidunt voluptas ipsam et dolorem.', 9, 5, 58, 3, 212, '2001', '9792819940806', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(59, 'Laudantium ex fuga.', 'laudantium-ex-fuga', 135500, 1, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Libero ut dolorem est minima voluptatem provident accusantium perspiciatis est aut sunt odit doloremque sed tempore nulla hic et animi consequuntur voluptatum possimus provident sed excepturi minima totam explicabo numquam non eum commodi qui inventore qui exercitationem et quisquam saepe corrupti eum non voluptatem minus mollitia libero corporis eos provident eveniet inventore dicta velit quisquam in dolore laborum id commodi omnis eius dolore quos eos temporibus enim repudiandae voluptate vel debitis sed quibusdam fuga aut vero ut quisquam enim aperiam odit veritatis quam mollitia aspernatur consequatur vel rerum et ex consectetur corrupti occaecati ex ad omnis laborum cum minima omnis distinctio sapiente tempore a est nihil amet atque ad cum voluptatum dicta omnis amet fugit minima vero earum neque magnam.', 20, 9, 59, 4, 231, '1996', '9790407989329', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(60, 'Fugiat magnam.', 'fugiat-magnam', 81500, 4, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Soluta ut unde cum veritatis molestiae esse quia officia laboriosam voluptatem voluptates non possimus ipsa ut itaque sunt minus mollitia sit sed tenetur vitae quis quia omnis ut quia maiores sunt omnis in veritatis quia vel rerum ad velit explicabo ex numquam omnis consequatur quae delectus quia beatae qui voluptate ipsam quae beatae aut cupiditate dolores illo cum quaerat et sit omnis voluptates sed.', 9, 4, 60, 2, 368, '1994', '9790877322817', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(61, 'Rerum architecto id.', 'rerum-architecto-id', 77000, 5, 'https://book-store-api.chbk.app/images/covers/cover1.jpg', 'A quia magni optio laudantium et quo explicabo excepturi nihil et quia accusamus consequatur corrupti necessitatibus tempora repellendus quidem beatae voluptatum est aliquid ipsa expedita eius quos ratione non sunt corporis nisi nulla nam voluptatem ex ex ipsa dolores culpa ex sed nisi corporis id placeat expedita commodi delectus error quidem asperiores voluptas amet dignissimos quibusdam maiores sapiente molestias officiis ab eligendi quasi ullam delectus ut fuga debitis esse eaque nam quia et est ipsum hic sed voluptatibus est odio.', 19, 17, 61, 4, 346, '2022', '9788339416570', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(62, 'Quod animi reprehenderit quasi.', 'quod-animi-reprehenderit-quasi', 147000, 6, 'https://book-store-api.chbk.app/images/covers/cover4.jpg', 'Commodi quidem et aut magni aspernatur rem quasi et iure omnis quam distinctio et doloribus architecto quia qui nihil et impedit enim enim dolore sed ea sit ea reiciendis aperiam molestias in nulla voluptatem itaque praesentium debitis doloremque quam praesentium amet repellendus voluptatem consequuntur enim sequi voluptas voluptatem pariatur dicta odit nesciunt nemo et sint libero et alias fugit sint enim maxime qui amet quasi autem est ipsa aut aperiam quas deleniti qui tenetur minima pariatur ut laboriosam possimus recusandae autem placeat voluptate adipisci rerum nemo tenetur dolores consequatur reprehenderit quos nulla et consequatur facere quod consequatur corrupti saepe quo et itaque quae numquam id laborum dolorum aperiam et non illum et illum quae sed quae molestiae ut aut quasi assumenda suscipit soluta dolore soluta dicta voluptatem excepturi provident quos rerum alias maiores et aut doloribus.', 3, 20, 62, 4, 717, '1999', '9792995535513', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(63, 'Ad exercitationem.', 'ad-exercitationem', 110000, 10, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Nihil labore non et ut est distinctio consectetur aut facilis commodi aut corrupti aut eveniet qui distinctio voluptatem voluptatum velit similique quia nisi aspernatur quis sequi nostrum iste temporibus voluptatum odio dolores qui omnis quae dolores inventore explicabo minus facilis dolorum est rem dolorem quaerat non minima nihil ut ut quibusdam qui explicabo ducimus consectetur ut fugit quia omnis eum quia aut quis eligendi voluptatem non tenetur quis omnis cum laudantium vero vel sunt doloremque ducimus nisi magnam labore vero quia mollitia consequatur aut quis aut quaerat magni possimus nihil non adipisci voluptatem alias architecto quis quas facilis laboriosam.', 2, 4, 63, 5, 188, '2021', '9789945524321', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(64, 'Eligendi nam ex.', 'eligendi-nam-ex', 53500, 3, 'https://book-store-api.chbk.app/images/covers/cover11.jpg', 'Dolor deleniti laudantium aut reiciendis suscipit dicta aut consectetur velit maxime explicabo aut molestias neque ipsam reprehenderit et sunt dolorum enim odio illo maxime doloremque non quas aliquid eligendi porro magni minima enim quia et eum ut facilis quia ut dolores et incidunt tenetur non numquam consequuntur sunt distinctio quasi delectus vel eos dignissimos aut vitae in possimus mollitia omnis aspernatur accusantium reprehenderit autem expedita odit nobis ad ea assumenda beatae porro maiores repellendus earum nostrum iste facilis et laborum qui iste fugit.', 9, 15, 64, 3, 614, '1983', '9794975763565', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(65, 'Natus fugiat totam dolorem.', 'natus-fugiat-totam-dolorem', 81500, 9, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Ut atque molestiae nobis repellat voluptatum sed ipsa voluptas sit ea libero placeat saepe est non et enim facilis consequuntur unde ipsa voluptatem et nihil voluptatum non adipisci sint eveniet sint quia porro ut maxime consequatur quo non iusto enim labore quia nam hic qui aut minima reprehenderit vel autem qui nemo doloremque distinctio incidunt aut rerum quae non deleniti sit sit sint quos omnis optio ea error commodi hic voluptatum vel sequi et quia rerum distinctio esse iure deserunt suscipit quas enim ipsam sapiente provident odio fugiat omnis qui eos maxime veniam atque eum voluptas provident est dolore ea ipsam sapiente consequuntur omnis eum error voluptas voluptates illo.', 19, 7, 65, 4, 756, '1974', '9794620531327', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(66, 'Excepturi est iusto sit eos.', 'excepturi-est-iusto-sit-eos', 134500, 5, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Dolorum laboriosam et nostrum velit ratione consequatur explicabo eaque nihil voluptatem exercitationem ab possimus rerum aut consequatur dolorem est repellendus sed quia repellendus architecto voluptas facere quam id similique eaque ut quasi nisi voluptatibus expedita nam architecto ducimus adipisci voluptatem velit animi quia ut optio earum ea voluptas autem ut quibusdam et vel iusto et ipsam velit tempore omnis quo minima cupiditate hic harum cum illum tempore distinctio natus est molestias praesentium id delectus aut recusandae laudantium recusandae cumque id cum tempora iure esse alias dicta labore est fugit perferendis voluptatem veritatis autem enim ut qui quia sed doloremque quos aut recusandae quo aut et.', 14, 16, 66, 6, 613, '2004', '9786176635512', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(67, 'Vitae quisquam voluptatibus mollitia.', 'vitae-quisquam-voluptatibus-mollitia', 141000, 10, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Cupiditate dignissimos illum sint eligendi laboriosam omnis neque dolor sint labore ducimus aut consectetur est quisquam officiis vero sunt porro qui voluptatibus et et natus soluta quos distinctio veritatis nemo iure amet tempore suscipit eos reiciendis tenetur quia repudiandae at quisquam ipsum quasi delectus ut provident minus quaerat ullam cupiditate illum voluptatem aliquid nesciunt voluptatum necessitatibus vel eos reiciendis autem soluta odio et cum libero molestias autem numquam inventore quidem officia unde accusantium ex maxime et eius nam molestiae et itaque et harum rem ratione voluptas doloremque qui nobis consequatur cumque delectus alias incidunt vel doloremque laudantium nam sint sit et doloremque molestiae in qui officiis quia quia vel dolor corporis temporibus iure in cum et voluptate facere autem suscipit non ut exercitationem similique doloribus nostrum id sapiente.', 16, 10, 67, 1, 532, '1983', '9794950755455', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(68, 'Est et voluptatem.', 'est-et-voluptatem', 92000, 1, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Rerum non omnis quos ipsam dolore debitis vel aut quo velit alias rerum dolorem doloremque harum aperiam laborum sit sit sapiente ullam autem illum ut perspiciatis est eveniet animi sed voluptatem consequatur iure aut eveniet voluptatem veritatis et eius fuga in in a possimus libero aut rerum eum et sunt ut pariatur maiores voluptatem porro repudiandae commodi dolores voluptatem sequi quisquam quam ipsam aliquid et perspiciatis sit illum culpa impedit voluptatem nobis hic consequatur non voluptatibus ea perferendis molestias velit molestiae aspernatur dolor at nulla excepturi voluptas.', 6, 5, 68, 2, 572, '2015', '9783970425042', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(69, 'Amet dolores qui voluptas.', 'amet-dolores-qui-voluptas', 101500, 7, 'https://book-store-api.chbk.app/images/covers/cover1.jpg', 'Et culpa asperiores sed laudantium sint quasi impedit quia ut eveniet voluptate accusamus molestiae et qui suscipit nobis est velit nam est repudiandae doloremque beatae commodi sed velit quos illo nemo similique at excepturi qui maiores illo nam voluptatem dolor quis nihil mollitia rerum facere fugiat consequatur exercitationem esse voluptates inventore explicabo aliquid recusandae eos a voluptas laborum itaque accusamus quia hic cumque consequatur asperiores reprehenderit aspernatur dolor est quia est esse ut.', 19, 8, 69, 5, 250, '2021', '9785080527487', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(70, 'Placeat dolor magnam possimus.', 'placeat-dolor-magnam-possimus', 89500, 4, 'https://book-store-api.chbk.app/images/covers/cover5.jpg', 'Quis ea ut est maiores delectus aut ex commodi vitae aut veniam quia quia inventore saepe ullam repudiandae fugit iure ipsa sint et numquam veniam ullam repudiandae aut repudiandae ut reiciendis atque consectetur explicabo nulla voluptates ipsum est a dicta quasi optio incidunt quis odio nesciunt unde deserunt molestiae dolor dolor iure soluta accusamus non dolore quis qui qui eos voluptatem consequatur officiis ea quos delectus et optio molestiae veniam error aut et dolorem dolores pariatur fugit modi.', 17, 6, 70, 7, 567, '2004', '9782457521888', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(71, 'Assumenda est laboriosam.', 'assumenda-est-laboriosam', 146000, 2, 'https://book-store-api.chbk.app/images/covers/cover11.jpg', 'Illo sapiente voluptate quo dolor provident sunt ut quia magni dolorem voluptatem debitis qui aliquid error quia dolore possimus deleniti a nam magni ipsum quis sint delectus necessitatibus inventore et assumenda amet ullam fuga non cupiditate aut at unde et tempora expedita et asperiores cum dolores autem laborum dolorum sit sunt id ipsa adipisci tenetur doloribus dignissimos vero reprehenderit dolore optio nihil totam nihil ullam laboriosam consequatur quisquam tempora harum ut aliquam illum ratione optio voluptatum iusto aspernatur sed molestiae rerum molestiae quia totam consequatur qui dolorem excepturi beatae deserunt.', 1, 3, 71, 5, 360, '2014', '9799831004776', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(72, 'Veritatis veniam quis.', 'veritatis-veniam-quis', 76500, 3, 'https://book-store-api.chbk.app/images/covers/cover10.jpg', 'Vero tempore maiores nihil voluptatum quia ipsam excepturi ut officia nostrum aut aut sequi soluta nesciunt tempora velit totam doloribus labore facilis quam modi ea dicta facere ut tenetur porro quia aut asperiores ut temporibus dolores est perspiciatis qui in doloremque et nihil similique voluptas doloremque cupiditate tempora unde sit quo commodi sapiente eveniet a repellendus aut consequatur incidunt rerum asperiores et dolorem velit perferendis officia quia suscipit sequi quaerat perferendis similique sunt pariatur placeat accusantium sunt qui aliquam eos dicta ut totam eum est saepe quia voluptas et et nostrum aut in voluptas natus laboriosam.', 8, 4, 72, 1, 601, '1982', '9798634046822', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(73, 'Expedita provident dolorem dolorem.', 'expedita-provident-dolorem-dolorem', 58500, 9, 'https://book-store-api.chbk.app/images/covers/cover5.jpg', 'Esse sunt laborum aut id temporibus cum occaecati ab reiciendis accusantium hic et et consequuntur voluptatem iusto culpa enim ut quo aspernatur totam hic et voluptatum est accusamus ut nobis non vel et in qui pariatur quisquam nesciunt nisi nobis repellat quisquam corporis rerum voluptatem enim libero fugiat est consectetur eum aut iusto modi et et est ipsum ducimus iure reiciendis sunt et nihil veniam velit eos in officia et temporibus id ipsam quisquam et blanditiis eveniet officiis et iste sed quibusdam necessitatibus magni eveniet tenetur exercitationem expedita suscipit ut aliquid veniam excepturi.', 18, 10, 73, 4, 568, '1978', '9794692056858', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(74, 'Vel et.', 'vel-et', 60500, 1, 'https://book-store-api.chbk.app/images/covers/cover1.jpg', 'Dolore minus qui quidem rerum officiis perspiciatis quibusdam ipsum possimus autem fuga eos officiis ut ut voluptas voluptatem ipsa maiores et quae tempora aperiam saepe eaque vel est amet consequatur sunt labore eos voluptates delectus enim fuga aspernatur aut voluptas et ex veniam et earum hic asperiores a aut omnis voluptas sed voluptas aut quasi rerum placeat nesciunt recusandae ab nostrum sunt sit magnam non perferendis quo est voluptatibus sint aut dolorem deleniti architecto et et dolores tenetur consequatur sit quia qui aperiam fugit expedita quasi occaecati unde id aut sapiente mollitia non eius.', 4, 3, 74, 1, 712, '2019', '9781146712026', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(75, 'Est dolor qui.', 'est-dolor-qui', 126000, 7, 'https://book-store-api.chbk.app/images/covers/cover3.jpg', 'Ut sapiente delectus voluptatum deleniti quis enim qui aut quia inventore nemo voluptas ducimus provident fugit officiis facere hic consequatur qui non esse eaque aut voluptates quod dolore praesentium qui qui dolor nobis molestiae nostrum tenetur ut sit ut culpa et saepe dicta voluptatem eius est dolor veritatis et enim eius odit aut a qui pariatur asperiores nemo ipsa asperiores accusantium id sit esse magnam quibusdam assumenda non magni ut quia et debitis dolores atque ipsam optio repudiandae inventore vero alias vero consectetur officia et ea minima et ipsam minima voluptas aperiam quidem et et officiis possimus molestias molestias dolor molestiae est unde nisi architecto esse quis ut perspiciatis consequuntur voluptatem sed vel est quod quidem eos saepe delectus praesentium inventore dolorum molestias molestiae in aut.', 13, 10, 75, 4, 249, '2018', '9793987479839', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(76, 'Magni cupiditate aut sed.', 'magni-cupiditate-aut-sed', 72000, 8, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Voluptates quam voluptates qui quia sit nemo voluptatem est temporibus non mollitia totam nihil asperiores officia ipsa eos ab voluptas officia iusto odit dicta soluta quasi non quaerat est et iste aut unde ut mollitia culpa molestiae quis ipsum consequatur animi nihil sed et nobis sit commodi qui sit soluta impedit quam exercitationem praesentium sequi aut ut et quisquam modi sit eum quis sed error aperiam ut vel velit est.', 17, 8, 76, 3, 815, '1982', '9799637608536', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(77, 'Consequatur voluptatibus quaerat temporibus.', 'consequatur-voluptatibus-quaerat-temporibus', 93500, 6, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Veritatis sint perferendis blanditiis autem accusantium commodi impedit distinctio qui ex eum et nobis enim quis tempore sit sunt quae eius sit voluptatem ducimus soluta et accusamus velit nisi quis sed laudantium quia neque nulla excepturi praesentium sequi iusto ea autem aut veniam velit voluptatem fuga aliquam tempore nihil voluptatem excepturi illo corrupti qui libero est iusto magnam perferendis eius assumenda et vero et ratione repellendus qui aut eligendi fugit.', 12, 4, 77, 1, 650, '2004', '9794949985375', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(78, 'Molestias rem ipsum.', 'molestias-rem-ipsum', 121000, 1, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Quo autem culpa aut possimus quod consequatur nesciunt enim ab odit quasi laborum rerum reiciendis hic et et debitis enim dicta voluptates et eveniet quis est ut esse tenetur consequatur sunt et eos nesciunt voluptatibus sint sint ratione dicta autem quia hic iure commodi distinctio excepturi iste ullam similique voluptatem nesciunt deleniti ea praesentium voluptatibus nisi ut est et et corporis quaerat quisquam alias aut eligendi.', 11, 1, 78, 3, 932, '1994', '9786867490284', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(79, 'Ut officiis non neque.', 'ut-officiis-non-neque', 109500, 9, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Voluptates qui sunt iure accusamus enim enim et magnam nostrum et praesentium labore inventore hic quos quam quas consequatur amet est eligendi est consequatur est hic incidunt pariatur ut dolor aut at eos ea tenetur quia non aut veritatis esse tenetur nihil aut non necessitatibus quae et ducimus architecto nihil modi voluptas quia eum molestiae cupiditate non ut numquam maxime et earum corporis maxime ut culpa facere sapiente ipsam nulla odio quos inventore vitae reprehenderit et quam itaque qui temporibus facilis enim sed fugiat dicta delectus voluptatem corrupti et sint consequatur quia voluptatem et ab reiciendis dolor corporis dolorum tempore et repellendus eum autem pariatur laborum voluptatem nihil sint quam eius ut ab non quia et quia praesentium rerum ut reiciendis in voluptatem inventore ratione aliquid tenetur voluptatem reiciendis dicta blanditiis.', 19, 3, 79, 2, 802, '2013', '9798632820714', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(80, 'Molestias voluptatem ea.', 'molestias-voluptatem-ea', 117500, 6, 'https://book-store-api.chbk.app/images/covers/cover7.jpg', 'Inventore rerum in sed atque et et quibusdam voluptatibus molestiae eum dolor accusantium dolor quidem provident quae ullam totam optio ut aspernatur dolor corporis aliquam et excepturi sapiente eos eum et modi unde aliquid quo ipsam quos in eos reprehenderit voluptatem in qui facilis ad impedit fuga tenetur accusantium nobis aliquam non aut qui quos ab et perspiciatis voluptatem placeat facere sit omnis numquam culpa aliquam nulla consequatur id praesentium expedita saepe sunt dolores in fugiat excepturi sapiente temporibus asperiores voluptatibus illo nulla id doloribus odio quia rem ex ut soluta ea et ut nostrum tempora cupiditate neque iusto fugit et omnis necessitatibus et est quibusdam nostrum similique veniam facilis perspiciatis dolorum beatae in ab sed voluptatem provident consequatur sit esse consequuntur necessitatibus quia inventore sint facilis in id corrupti dolorum rerum odit eos minus distinctio asperiores.', 18, 15, 80, 1, 256, '1998', '9799842486639', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(81, 'Sed eligendi.', 'sed-eligendi', 104500, 5, 'https://book-store-api.chbk.app/images/covers/cover6.jpg', 'Rem hic voluptatem animi alias minima eligendi sit mollitia alias provident odit maxime sit eum velit beatae quam consequatur iusto velit id harum animi nesciunt in numquam quibusdam modi provident perspiciatis officia sequi autem repellat totam qui ad dolores repellendus consequatur nostrum eaque perferendis doloremque et veniam reiciendis est debitis dolores rerum ratione modi qui repellat at sed cupiditate dolor temporibus eligendi sequi fugiat quia molestias asperiores quis repudiandae dolores sint ut atque sed quibusdam corrupti unde ipsa qui quis nemo nulla voluptates nihil rerum omnis corrupti excepturi voluptas alias iure quod qui iste aspernatur tempora vitae.', 15, 4, 81, 5, 335, '1999', '9785524308689', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(82, 'Iste impedit.', 'iste-impedit', 62000, 3, 'https://book-store-api.chbk.app/images/covers/cover3.jpg', 'Molestias cum rem sit consectetur iure minus autem quaerat cumque veniam cupiditate accusantium qui vero est natus eos dolores aut tenetur dolor enim ad molestias qui omnis blanditiis sed cumque in soluta adipisci voluptatem accusamus voluptatum nostrum voluptatem recusandae sint repellendus cum maxime cum blanditiis corrupti ipsum in in enim non et et aut doloremque qui dolor consectetur quo fuga non omnis quod deserunt veniam sit pariatur voluptas tempore est explicabo eveniet aut hic sit aperiam laboriosam sit ratione ea hic molestias quibusdam consequatur ea quia corrupti rem beatae asperiores repellat dolores consequatur tempora et et incidunt dolorem exercitationem ut dolorem id ex placeat id qui ut modi ratione sint facere ex et rerum ipsa asperiores dolore ullam deserunt et sed rerum nulla consequuntur repellat suscipit voluptatum consequatur et placeat rerum omnis est voluptas reprehenderit cupiditate porro ducimus.', 9, 18, 82, 7, 855, '2007', '9786846252100', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(83, 'Molestias deleniti molestiae.', 'molestias-deleniti-molestiae', 48000, 4, 'https://book-store-api.chbk.app/images/covers/cover4.jpg', 'Debitis fugit atque et illum iusto doloremque eaque facere distinctio vel iste necessitatibus laudantium quia iure sapiente illum modi eos qui aspernatur voluptatum suscipit non hic deserunt quia deleniti eveniet consequatur dolor nulla nulla est corporis voluptatem totam eligendi ullam quisquam cupiditate vitae eaque officiis est enim impedit reiciendis eius omnis praesentium sint non et accusantium atque sit et omnis repellendus est.', 14, 9, 83, 7, 718, '1980', '9794301692767', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(84, 'Dicta iste qui est.', 'dicta-iste-qui-est', 144500, 10, 'https://book-store-api.chbk.app/images/covers/cover11.jpg', 'Quia alias nemo debitis qui dolore odit molestiae ratione vel amet facilis esse amet quae repellendus et et quis quo earum est nemo fuga earum modi voluptatem quia aut ut provident corporis fugit qui eligendi quos dolor et labore aut distinctio debitis dignissimos animi dolor qui tempora aut aut ab possimus magnam ipsam neque tempora et veritatis dolor voluptas commodi et voluptatem et ut voluptatem totam id omnis sint distinctio accusantium ut laudantium expedita qui minima nam assumenda neque est libero incidunt eligendi exercitationem aut laudantium rerum sit voluptas quo atque ut excepturi cum consequatur omnis aspernatur molestiae provident quis cum omnis amet harum omnis illo laudantium consequatur impedit ut debitis perspiciatis provident et incidunt hic beatae velit accusamus libero a unde molestiae beatae consequuntur qui quam modi nihil tempore nemo at.', 12, 19, 84, 4, 471, '1983', '9799385320681', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(85, 'Nobis nobis minima earum.', 'nobis-nobis-minima-earum', 147000, 5, 'https://book-store-api.chbk.app/images/covers/cover7.jpg', 'Qui ut et repudiandae rem temporibus dignissimos eum fugiat aliquam sint sunt voluptas ipsam repellendus quia rerum dolorem consectetur molestias porro ex occaecati facere beatae et culpa quidem ut enim mollitia eum reprehenderit dignissimos dolores ea veritatis aut tempora autem reprehenderit dolores alias dolores assumenda veniam nesciunt enim molestias reiciendis pariatur recusandae facere porro debitis dolores et vel aliquid autem consequuntur reprehenderit commodi mollitia et non et aut consequatur est adipisci adipisci nulla autem sit eum assumenda eum unde rem illo.', 15, 15, 85, 7, 627, '2017', '9785635966105', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(86, 'Vero rerum vel.', 'vero-rerum-vel', 120500, 10, 'https://book-store-api.chbk.app/images/covers/cover1.jpg', 'Accusamus aut non consectetur veritatis velit vel sint sed fugiat perferendis et iusto asperiores quos odit sint dolor odio vero cumque dolore recusandae repellat dignissimos nulla cupiditate rerum consequatur mollitia non hic qui voluptas magni delectus distinctio accusamus facilis voluptas voluptas voluptas eum quia veniam dolores quia omnis voluptatem quibusdam quis quod ut explicabo molestiae qui quia quae exercitationem eum voluptates veritatis fugiat sed hic repellendus aut inventore qui autem in doloremque doloribus et quam qui doloremque consequatur molestias deserunt occaecati excepturi.', 8, 8, 86, 6, 505, '2001', '9789075043464', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(87, 'Omnis reprehenderit.', 'omnis-reprehenderit', 54000, 4, 'https://book-store-api.chbk.app/images/covers/cover1.jpg', 'Nostrum voluptatem doloremque tempore repudiandae asperiores fugiat praesentium ullam sint ut dolor maxime quasi quo magni placeat sint ipsam assumenda nihil facere libero sit ut a illo aut blanditiis corrupti beatae voluptas enim mollitia illum doloribus sint molestiae laborum impedit non harum minus nemo numquam facilis est et nemo alias dicta sit cum perspiciatis autem dolore dolorem corrupti blanditiis error et qui deleniti mollitia dolore non cupiditate et.', 5, 8, 87, 1, 749, '1980', '9792227518086', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(88, 'Repellat exercitationem et et.', 'repellat-exercitationem-et-et', 110500, 3, 'https://book-store-api.chbk.app/images/covers/cover3.jpg', 'Laborum aspernatur repudiandae aliquid occaecati totam laborum vel quia et ex dolorum esse omnis eum ea a consequatur sit dolorem magnam voluptatem voluptatem laboriosam rerum molestias dolores veritatis voluptates occaecati et sed ab vero architecto ut distinctio aut officia doloribus ratione ut tenetur quia occaecati ratione ut sint quis ea quia ut vitae sequi rerum nobis vel soluta ut alias atque dolorem magnam qui excepturi aliquid laboriosam maiores sunt voluptatem laboriosam aut aut voluptate rerum soluta qui eveniet laudantium qui voluptas aliquid quidem rerum in consequatur blanditiis sint quod ut voluptas saepe repudiandae quam veniam eius commodi aut dolorem accusamus eveniet eos reprehenderit dolor illum nulla nisi porro consequuntur sapiente voluptatem omnis dolor sunt amet atque fuga deserunt odio dolorem.', 12, 5, 88, 4, 253, '1998', '9796666244506', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(89, 'Laborum dolores delectus.', 'laborum-dolores-delectus', 141000, 9, 'https://book-store-api.chbk.app/images/covers/cover12.jpg', 'Ad cupiditate autem qui omnis nobis libero nam dolorem et totam voluptatem commodi rerum cumque occaecati et sapiente quia neque quasi at error sit aperiam eum ducimus quae repudiandae fugiat dolor dolor rem sed dolorem quis ea voluptas doloribus iure quis laborum maxime repudiandae sunt qui et vero facilis corrupti iusto velit unde ut et explicabo quae officia est nesciunt maxime maiores expedita id impedit non officia aut et et placeat consequatur consectetur qui dignissimos quod eveniet qui doloremque est iusto neque eos quia quia fugit est inventore sed qui hic architecto sit omnis et voluptatum repellat autem quo ut beatae fuga velit perspiciatis molestiae ipsa optio laborum tempora commodi aut ipsam necessitatibus.', 16, 2, 89, 1, 686, '2001', '9798343855029', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(90, 'Aspernatur voluptates culpa aut.', 'aspernatur-voluptates-culpa-aut', 87000, 5, 'https://book-store-api.chbk.app/images/covers/cover3.jpg', 'Dolor repudiandae qui numquam aut doloremque consequatur est praesentium harum nobis sed excepturi dolor aut suscipit voluptas minus ut recusandae vel vero est odit et est consectetur ullam dolorem et dolore quam excepturi consequatur rerum dolorum iure voluptatem commodi omnis facilis omnis dolore excepturi quis sunt alias excepturi rem perspiciatis natus consequatur dolorem eligendi modi aperiam et sapiente voluptatem quod ea aut omnis dicta quia natus aut omnis quasi sed nemo deleniti doloremque non rem est autem aut perspiciatis et non corporis ut nam dolorem perspiciatis molestiae atque aspernatur repellat voluptatem atque nihil error maxime quis aut omnis in sapiente laborum non facere quis animi qui voluptatibus fuga vel nihil debitis ullam nam perspiciatis recusandae et deleniti sed animi est nam nulla qui aut dolorem sit quae rem pariatur est dolorem.', 5, 1, 90, 6, 139, '2011', '9790401735205', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(91, 'Quisquam quia ex.', 'quisquam-quia-ex', 85000, 2, 'https://book-store-api.chbk.app/images/covers/cover11.jpg', 'Molestiae beatae consequatur incidunt et ad perferendis est fugiat nam ipsum libero facilis rerum at cum adipisci dolor porro architecto officiis ea deleniti fugit sint qui eius et iusto sit exercitationem dolor neque labore quia incidunt qui ea consectetur et saepe accusamus fugit iure earum enim itaque dolorum repudiandae deserunt dicta ipsam pariatur aliquid non iure corporis dignissimos quis in qui quod accusamus optio aut rem consequatur et eum asperiores quae quod ex quia et quasi ut dolores quos tempora iure.', 7, 7, 91, 6, 778, '1981', '9786285473470', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(92, 'Dolores asperiores nemo.', 'dolores-asperiores-nemo', 137500, 8, 'https://book-store-api.chbk.app/images/covers/cover7.jpg', 'Nulla quidem exercitationem nesciunt maxime et odit necessitatibus voluptate enim delectus asperiores ut sit impedit sunt magnam amet saepe voluptatum libero velit necessitatibus necessitatibus qui asperiores suscipit ipsum autem non autem architecto et consequatur dolorum ipsa perferendis et sed qui eos blanditiis architecto et occaecati blanditiis ab sed rem corporis consequatur dolores dolorem qui non amet omnis enim tempore sed autem suscipit ea molestiae expedita illo dolor aperiam temporibus nemo aliquid quia et maxime ex nam vel ex officia.', 7, 12, 92, 5, 742, '2019', '9792317030535', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(93, 'Quia officiis ut.', 'quia-officiis-ut', 90500, 9, 'https://book-store-api.chbk.app/images/covers/cover9.jpg', 'Suscipit et quae labore veniam vel non aut necessitatibus saepe nulla nihil modi amet qui ea eos dolor qui quisquam ut voluptate ut fugiat et eos soluta officiis mollitia pariatur ut ea facere corrupti placeat et dolorem sapiente hic deserunt voluptates mollitia quidem rerum labore eum rerum sint maxime voluptas aut unde non exercitationem est quod ipsa voluptatem ipsa dolor ut commodi reiciendis vitae aut ipsum odit ea enim natus ex eos quia vel molestiae ducimus delectus sapiente voluptatem dolore consequatur rerum tempora distinctio porro dignissimos sit autem velit quae est est quo est exercitationem fugiat distinctio maxime aliquam aut autem aspernatur ipsam expedita facilis est aut exercitationem non eligendi autem.', 9, 16, 93, 7, 515, '2006', '9781487433116', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(94, 'Non iusto asperiores.', 'non-iusto-asperiores', 61500, 1, 'https://book-store-api.chbk.app/images/covers/cover3.jpg', 'Molestiae voluptatem eos explicabo rerum consequatur eos harum itaque ipsa labore ipsa qui recusandae explicabo molestias adipisci sed veniam corrupti ut sit aliquid ducimus odio et laudantium enim labore ea minus est explicabo odio a quam qui impedit magni natus vitae laborum fugiat possimus saepe sunt ipsa consectetur illo ut atque occaecati molestiae enim consequatur dolor esse vero aut ipsa iste quod voluptatem necessitatibus autem atque consequuntur quia ab repellat autem repellat nihil unde dignissimos hic accusamus velit.', 7, 15, 94, 1, 334, '1991', '9782972784683', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(95, 'In iste repellat dolorem.', 'in-iste-repellat-dolorem', 121500, 10, 'https://book-store-api.chbk.app/images/covers/cover8.jpg', 'Ex voluptatum et recusandae voluptas iste molestias quis et deleniti dignissimos est quis reiciendis aspernatur sint beatae totam magni quod quis facere necessitatibus enim autem culpa maiores iusto ipsam voluptas doloribus maiores optio labore dolore et qui voluptas dolorum architecto cupiditate quisquam aut iste et praesentium laborum dicta veritatis soluta aperiam laudantium ut nihil blanditiis soluta dolor nostrum dignissimos totam quia aspernatur rerum.', 11, 19, 95, 5, 192, '2002', '9788685753596', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(96, 'Architecto aliquam cupiditate.', 'architecto-aliquam-cupiditate', 101000, 8, 'https://book-store-api.chbk.app/images/covers/cover9.jpg', 'Voluptas vel quibusdam cum et vel omnis omnis provident dolores nobis et debitis vitae in aliquid itaque est tempore delectus recusandae voluptas doloribus possimus aspernatur earum quia neque quaerat aut est quasi iusto consequatur a omnis ut eaque magni atque et repellat nobis dicta vel amet nihil est et sed omnis velit facere hic facilis est aut debitis aut consequatur quo ipsa aut natus doloribus sint et ratione sed neque sunt eligendi rerum doloribus praesentium et corrupti qui consectetur.', 18, 18, 96, 1, 175, '1983', '9781034421221', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(97, 'Labore rerum.', 'labore-rerum', 148500, 5, 'https://book-store-api.chbk.app/images/covers/cover5.jpg', 'Numquam explicabo molestias corrupti possimus voluptas eveniet nostrum saepe quae quia porro et corporis repellat sit provident ea error quos quia impedit officiis nam delectus accusantium qui expedita iusto a excepturi maiores magni ipsa minus nesciunt aut officia animi quis qui quidem quisquam deserunt aut a laudantium modi omnis inventore reprehenderit ullam ab dolore iusto a est eligendi omnis quo voluptas velit sit iste est maxime perferendis occaecati repellendus omnis aperiam quisquam aut ex expedita distinctio dolorem at perspiciatis est porro voluptas tempore saepe molestiae voluptatem rem vero quia temporibus accusamus recusandae est delectus porro sunt aut maiores deserunt porro dicta veniam id est fugit aliquid vitae beatae dolorem.', 14, 3, 97, 3, 536, '2014', '9789500627894', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(98, 'Mollitia cum dolores.', 'mollitia-cum-dolores', 103500, 7, 'https://book-store-api.chbk.app/images/covers/cover5.jpg', 'Cumque cupiditate qui dignissimos possimus quo soluta corrupti voluptatem rerum minus quas et corrupti nihil aliquid eveniet expedita excepturi beatae error dolore explicabo est ut dicta rerum dolorum voluptates vel error hic sit molestiae nesciunt quia autem doloribus dolores laudantium ut molestiae iste cupiditate provident ut aut labore culpa mollitia rerum ex et doloribus sed aut totam expedita quo est corrupti quia explicabo sed ut sed qui cum eos quaerat quae quae omnis occaecati dolor aperiam exercitationem deleniti molestiae ratione eum iure esse vel quam illo quam quia omnis consequuntur et error tempore ut dolorem officia facilis.', 2, 9, 98, 4, 971, '2016', '9780415319171', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(99, 'Tempore id occaecati.', 'tempore-id-occaecati', 78500, 7, 'https://book-store-api.chbk.app/images/covers/cover2.jpg', 'Nobis est libero eum culpa quis impedit rem aperiam blanditiis harum quod ipsa accusantium hic sint asperiores voluptatem voluptate ipsam fugit autem temporibus asperiores ut non excepturi sit qui consequuntur ut harum voluptates molestiae qui omnis perspiciatis et aut voluptatem sit modi atque quis vel optio eveniet voluptas hic corporis neque qui sed et consectetur modi in enim dignissimos omnis ut ad quia odit et adipisci dolorum iusto ea nulla.', 15, 18, 99, 4, 444, '2008', '9785172067167', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(100, 'Harum quo temporibus.', 'harum-quo-temporibus', 65000, 4, 'https://book-store-api.chbk.app/images/covers/cover4.jpg', 'Placeat nam enim qui quo enim culpa aut id nemo eum consequatur dolore laudantium laudantium enim quisquam veritatis ut nobis in quasi nihil quia laborum est aliquam ipsam necessitatibus saepe ipsum quo repellat libero non voluptate quia distinctio dicta sint dolore nam qui impedit qui magni facilis cumque molestias cupiditate non esse quia ea asperiores cumque fugit cumque odio ipsam dolorem rerum fugiat voluptas sit vitae fugiat repellat quis saepe cumque quia non laboriosam rerum quia asperiores numquam eaque occaecati quas vel sapiente repudiandae animi optio voluptatem sed doloremque omnis accusamus exercitationem ipsa accusantium dolor quo unde ab impedit odio ut vitae est sequi nihil aut sed nihil consequuntur ut aut.', 19, 20, 100, 3, 979, '2004', '9788513617618', '2024-11-29 15:45:00', '2024-11-29 15:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `slug` varchar(35) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'روانشناسی', 'روانشناسی', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(2, 'فلسفه و عرفان', 'فلسفه-و-عرفان', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(3, 'داستانی', 'داستانی', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(4, 'تاریخی', 'تاریخی', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(5, 'سیاسی', 'سیاسی', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(6, 'عمومی', 'عمومی', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(7, 'کودک و نوجوان', 'کودک-و-نوجوان', '2024-11-29 15:44:58', '2024-11-29 15:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `commentable_type` varchar(255) NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `discount_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `max_discount_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `min_order_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used_count` int(11) NOT NULL DEFAULT 0,
  `expires_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount_amount`, `discount_percentage`, `max_discount_amount`, `min_order_amount`, `usage_limit`, `used_count`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'SAVE20', NULL, 20, NULL, NULL, NULL, 0, NULL, '2024-11-29 15:45:00', '2024-11-29 15:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_02_082314_create_coupons_table', 1),
(5, '2024_07_08_134003_create_addresses_table', 1),
(6, '2024_08_10_163400_create_personal_access_tokens_table', 1),
(7, '2024_08_10_163850_create_authors_table', 1),
(8, '2024_08_10_163903_create_publishers_table', 1),
(9, '2024_08_10_171538_create_translators_table', 1),
(10, '2024_08_10_171633_create_categories_table', 1),
(11, '2024_08_10_183911_create_books_table', 1),
(12, '2024_08_10_192344_create_orders_table', 1),
(13, '2024_08_24_161451_create_order_items_table', 1),
(14, '2024_08_24_161641_create_transactions_table', 1),
(15, '2024_09_10_144606_create_comments_table', 1),
(16, '2024_10_09_111844_create_contact_us_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` bigint(20) UNSIGNED NOT NULL,
  `total_items` int(11) NOT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','completed','cancelled','refunded') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_address_id_foreign` (`address_id`),
  KEY `orders_coupon_id_foreign` (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_book_id_foreign` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
CREATE TABLE IF NOT EXISTS `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publishers_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Brisa Dicki DVM', 'Mrs.-Brisa-Dicki-DVM', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(2, 'Hailie Stiedemann', 'Hailie-Stiedemann', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(3, 'Davon Volkman', 'Davon-Volkman', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(4, 'Prof. Nyasia Parker', 'Prof.-Nyasia-Parker', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(5, 'Mr. Baylee Hintz', 'Mr.-Baylee-Hintz', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(6, 'Dudley Weimann', 'Dudley-Weimann', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(7, 'Xzavier Smith DDS', 'Xzavier-Smith-DDS', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(8, 'Kane Wolff', 'Kane-Wolff', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(9, 'Casper Feeney', 'Casper-Feeney', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(10, 'Eddie Bechtelar IV', 'Eddie-Bechtelar-IV', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(11, 'Zella Swaniawski', 'Zella-Swaniawski', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(12, 'Deon Buckridge', 'Deon-Buckridge', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(13, 'Mrs. Maude Dare', 'Mrs.-Maude-Dare', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(14, 'Brook Abernathy', 'Brook-Abernathy', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(15, 'Mr. Donald Yundt', 'Mr.-Donald-Yundt', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(16, 'Colleen Kohler IV', 'Colleen-Kohler-IV', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(17, 'Jacklyn Kemmer', 'Jacklyn-Kemmer', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(18, 'Xavier Zemlak', 'Xavier-Zemlak', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(19, 'Zachariah Farrell', 'Zachariah-Farrell', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(20, 'Dr. Major Hoeger', 'Dr.-Major-Hoeger', '2024-11-29 15:44:58', '2024-11-29 15:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `uu_id` varchar(255) DEFAULT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','successful','failed') NOT NULL DEFAULT 'pending',
  `gateway` varchar(255) DEFAULT NULL,
  `gateway_response` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactions_uu_id_unique` (`uu_id`),
  UNIQUE KEY `transactions_trans_id_unique` (`trans_id`),
  KEY `transactions_order_id_foreign` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translators`
--

DROP TABLE IF EXISTS `translators`;
CREATE TABLE IF NOT EXISTS `translators` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translators_slug_unique` (`slug`),
  KEY `translators_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translators`
--

INSERT INTO `translators` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Efren Mertz', 'Efren-Mertz', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(2, 'Prof. Elaina Schumm', 'Prof.-Elaina-Schumm', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(3, 'Tara Jacobi', 'Tara-Jacobi', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(4, 'Freddie Littel MD', 'Freddie-Littel-MD', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(5, 'Monica Grady', 'Monica-Grady', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(6, 'Noble Cremin', 'Noble-Cremin', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(7, 'Valentin Sanford', 'Valentin-Sanford', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(8, 'King Bins', 'King-Bins', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(9, 'Geo Bayer', 'Geo-Bayer', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(10, 'Shania Jones', 'Shania-Jones', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(11, 'Cristopher Walsh', 'Cristopher-Walsh', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(12, 'Ava Walker', 'Ava-Walker', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(13, 'Reymundo Towne PhD', 'Reymundo-Towne-PhD', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(14, 'Jess Mills', 'Jess-Mills', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(15, 'Leilani Rogahn III', 'Leilani-Rogahn-III', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(16, 'Dr. Candida White DVM', 'Dr.-Candida-White-DVM', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(17, 'Korbin Ruecker Sr.', 'Korbin-Ruecker-Sr.', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(18, 'Sage Kihn', 'Sage-Kihn', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(19, 'Delphia Bailey II', 'Delphia-Bailey-II', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(20, 'Afton Balistreri', 'Afton-Balistreri', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(21, 'Gideon Mertz', 'Gideon-Mertz', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(22, 'Shanel Rodriguez', 'Shanel-Rodriguez', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(23, 'Reed Gulgowski DDS', 'Reed-Gulgowski-DDS', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(24, 'Prof. Peyton Considine', 'Prof.-Peyton-Considine', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(25, 'Ally Volkman', 'Ally-Volkman', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(26, 'Cameron Rutherford', 'Cameron-Rutherford', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(27, 'Madisyn O\'Keefe', 'Madisyn-O\'Keefe', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(28, 'Prof. Emanuel Funk', 'Prof.-Emanuel-Funk', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(29, 'Chadrick Treutel DVM', 'Chadrick-Treutel-DVM', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(30, 'Chloe Padberg', 'Chloe-Padberg', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(31, 'Elmer Purdy', 'Elmer-Purdy', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(32, 'Madie O\'Reilly Sr.', 'Madie-O\'Reilly-Sr.', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(33, 'Mr. Jaydon Trantow', 'Mr.-Jaydon-Trantow', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(34, 'Prof. Daron Gottlieb PhD', 'Prof.-Daron-Gottlieb-PhD', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(35, 'Mr. Thad McLaughlin V', 'Mr.-Thad-McLaughlin-V', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(36, 'Izaiah Watsica V', 'Izaiah-Watsica-V', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(37, 'Prof. Tristin Borer V', 'Prof.-Tristin-Borer-V', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(38, 'Mr. Jerome Waters', 'Mr.-Jerome-Waters', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(39, 'Jenifer Stracke', 'Jenifer-Stracke', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(40, 'Carley Gleichner', 'Carley-Gleichner', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(41, 'Prof. Reuben Mraz MD', 'Prof.-Reuben-Mraz-MD', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(42, 'Jaycee Treutel', 'Jaycee-Treutel', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(43, 'Efrain Schumm', 'Efrain-Schumm', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(44, 'Ian Kuhn', 'Ian-Kuhn', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(45, 'Dr. Dangelo Klein PhD', 'Dr.-Dangelo-Klein-PhD', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(46, 'Ms. Sabina Huels DVM', 'Ms.-Sabina-Huels-DVM', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(47, 'Berta Schoen', 'Berta-Schoen', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(48, 'Dr. Gregg Shields', 'Dr.-Gregg-Shields', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(49, 'Isabel Kovacek', 'Isabel-Kovacek', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(50, 'Prof. Anjali Breitenberg', 'Prof.-Anjali-Breitenberg', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(51, 'Kip Johnston', 'Kip-Johnston', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(52, 'Mrs. Alda Auer', 'Mrs.-Alda-Auer', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(53, 'Eric Armstrong', 'Eric-Armstrong', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(54, 'Lisette Zboncak', 'Lisette-Zboncak', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(55, 'Prof. Adrianna Orn IV', 'Prof.-Adrianna-Orn-IV', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(56, 'Sincere Hill DVM', 'Sincere-Hill-DVM', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(57, 'Jordan Bernhard', 'Jordan-Bernhard', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(58, 'Miss Rebeca Kuhic IV', 'Miss-Rebeca-Kuhic-IV', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(59, 'Candido Hammes', 'Candido-Hammes', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(60, 'Kennedy Runolfsdottir', 'Kennedy-Runolfsdottir', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(61, 'Ike Schumm', 'Ike-Schumm', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(62, 'Nikki Roberts', 'Nikki-Roberts', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(63, 'Vincenza Herzog', 'Vincenza-Herzog', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(64, 'Savannah Harvey', 'Savannah-Harvey', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(65, 'Mollie Runolfsson', 'Mollie-Runolfsson', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(66, 'Marilyne Schroeder DDS', 'Marilyne-Schroeder-DDS', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(67, 'Prof. Zackary Parisian Jr.', 'Prof.-Zackary-Parisian-Jr.', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(68, 'Carissa Kshlerin II', 'Carissa-Kshlerin-II', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(69, 'Mr. Cale Bergstrom', 'Mr.-Cale-Bergstrom', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(70, 'Katherine Stokes', 'Katherine-Stokes', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(71, 'Zachery Altenwerth', 'Zachery-Altenwerth', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(72, 'Adam Morar', 'Adam-Morar', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(73, 'Lizeth Frami V', 'Lizeth-Frami-V', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(74, 'Mrs. Nichole Heaney II', 'Mrs.-Nichole-Heaney-II', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(75, 'Marta Jones', 'Marta-Jones', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(76, 'Mr. Rickie Schiller', 'Mr.-Rickie-Schiller', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(77, 'Mrs. Briana Jenkins Jr.', 'Mrs.-Briana-Jenkins-Jr.', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(78, 'Mrs. Tracy Quigley Jr.', 'Mrs.-Tracy-Quigley-Jr.', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(79, 'Prof. Rosalind O\'Hara Jr.', 'Prof.-Rosalind-O\'Hara-Jr.', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(80, 'Mrs. Delta Goyette', 'Mrs.-Delta-Goyette', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(81, 'Carleton McClure', 'Carleton-McClure', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(82, 'Prof. Bridgette Renner Jr.', 'Prof.-Bridgette-Renner-Jr.', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(83, 'Cesar Heaney', 'Cesar-Heaney', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(84, 'Lenore Konopelski', 'Lenore-Konopelski', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(85, 'Lawrence Beahan', 'Lawrence-Beahan', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(86, 'Zoie Wintheiser', 'Zoie-Wintheiser', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(87, 'Frida Gaylord', 'Frida-Gaylord', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(88, 'Rex Nader', 'Rex-Nader', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(89, 'Caterina Wunsch', 'Caterina-Wunsch', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(90, 'Tia Senger', 'Tia-Senger', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(91, 'Eugene Schuppe', 'Eugene-Schuppe', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(92, 'Sandy Christiansen DVM', 'Sandy-Christiansen-DVM', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(93, 'Scottie Kuhlman', 'Scottie-Kuhlman', '2024-11-29 15:44:59', '2024-11-29 15:44:59'),
(94, 'Kareem Sawayn', 'Kareem-Sawayn', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(95, 'Ms. Estrella Welch', 'Ms.-Estrella-Welch', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(96, 'Dr. Reggie Gibson', 'Dr.-Reggie-Gibson', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(97, 'Brett Volkman', 'Brett-Volkman', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(98, 'Rosendo Block', 'Rosendo-Block', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(99, 'Duncan Gislason', 'Duncan-Gislason', '2024-11-29 15:45:00', '2024-11-29 15:45:00'),
(100, 'Simone Bernier', 'Simone-Bernier', '2024-11-29 15:45:00', '2024-11-29 15:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_cellphone_unique` (`cellphone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `cellphone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jacquelyn Hansen', 'darlene.ebert@example.net', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', 'a8pEUGzxi3', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(2, 'Keven Hettinger', 'block.frieda@example.net', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', '7rJw0RiJDd', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(3, 'Charles Ondricka', 'conroy.demarcus@example.com', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', 'ETSGDw178C', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(4, 'Brandon Satterfield', 'rhansen@example.org', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', '8SakcwUD4w', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(5, 'Laurel Harvey DVM', 'pacocha.jarvis@example.com', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', 'zqPkpZJElq', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(6, 'Raoul Gusikowski Sr.', 'ygorczany@example.com', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', 'yToCAJEpyZ', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(7, 'Prof. Emma Stokes I', 'willms.jany@example.org', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', '7qE1Ni8zkD', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(8, 'Ms. Dora White', 'madisen.howell@example.org', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', 'AzbZXlKqyW', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(9, 'Kristofer Kuhlman', 'ttreutel@example.net', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', 'N3B55qjXDS', '2024-11-29 15:44:58', '2024-11-29 15:44:58'),
(10, 'Emiliano Labadie', 'frami.hector@example.net', NULL, '2024-11-29 15:44:58', '$2y$12$g6sC0oScGnxsu0Qt8eK7h.EqUkh5qemtDgvwm8bJA39JCW/w/RT2G', 'O1VWnzkHce', '2024-11-29 15:44:58', '2024-11-29 15:44:58');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_translator_id_foreign` FOREIGN KEY (`translator_id`) REFERENCES `translators` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

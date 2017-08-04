-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 04 2017 г., 16:15
-- Версия сервера: 5.7.16
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vkontakte`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `users_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `body`, `users_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'In sed voluptate laborum asperiores et sit.', 9, 25, '2017-08-04 03:41:52', NULL),
(2, 'Ut ex similique impedit.', 3, 19, '2017-08-04 03:41:52', NULL),
(3, 'Eum officiis ipsam earum ut nam.', 5, 18, '2017-08-04 03:41:52', NULL),
(4, 'Ea tempora natus aut vel doloremque itaque et.', 6, 17, '2017-08-04 03:41:52', NULL),
(5, 'Quidem vel sed dolore dolor deserunt.', 6, 41, '2017-08-04 03:41:52', NULL),
(6, 'Nostrum quasi dignissimos aut alias.', 2, 22, '2017-08-04 03:41:52', NULL),
(7, 'Quaerat cumque qui consequatur sint.', 4, 11, '2017-08-04 03:41:52', NULL),
(8, 'Doloribus aperiam vel voluptatum.', 5, 53, '2017-08-04 03:41:52', NULL),
(9, 'Et dolorum aut vel temporibus expedita.', 10, 51, '2017-08-04 03:41:52', NULL),
(10, 'Quisquam sit ratione atque id dolor sit.', 9, 44, '2017-08-04 03:41:52', NULL),
(11, 'Qui voluptas quia commodi.', 7, 20, '2017-08-04 03:41:52', NULL),
(12, 'Impedit sint ad quia sed consequuntur eaque.', 2, 14, '2017-08-04 03:41:52', NULL),
(13, 'Inventore magnam fugiat qui quasi.', 9, 40, '2017-08-04 03:41:52', NULL),
(14, 'Non et dolorem veniam ratione ratione et rerum.', 4, 13, '2017-08-04 03:41:52', NULL),
(15, 'Possimus est voluptatibus dolore.', 6, 30, '2017-08-04 03:41:52', NULL),
(16, 'Aut distinctio eos fugit debitis.', 4, 2, '2017-08-04 03:41:52', NULL),
(17, 'Sapiente eius et ipsam.', 10, 53, '2017-08-04 03:41:52', NULL),
(18, 'Mollitia quia quibusdam consectetur.', 4, 31, '2017-08-04 03:41:52', NULL),
(19, 'Ut rerum enim sequi rerum nihil omnis.', 5, 26, '2017-08-04 03:41:52', NULL),
(20, 'Animi odit distinctio iusto.', 9, 2, '2017-08-04 03:41:52', NULL),
(22, 'Voluptates ipsam qui et sit rerum.', 10, 18, '2017-08-04 03:50:05', NULL),
(23, 'Et modi in libero ullam voluptatum illo.', 6, 14, '2017-08-04 03:50:05', NULL),
(24, 'Id odio deserunt dolorem.', 4, 53, '2017-08-04 03:50:05', NULL),
(25, 'Labore at nihil provident qui rem adipisci ut.', 10, 57, '2017-08-04 03:50:05', NULL),
(26, 'Veniam dolores excepturi non ea itaque.', 3, 33, '2017-08-04 03:50:05', NULL),
(27, 'Sint vel consequatur et porro.', 2, 3, '2017-08-04 03:50:05', NULL),
(28, 'Quia fugiat aut quis repellat et omnis qui et.', 2, 44, '2017-08-04 03:50:05', NULL),
(29, 'Occaecati temporibus minus libero.', 9, 41, '2017-08-04 03:50:05', NULL),
(30, 'Aperiam fugiat in qui quas fugit nostrum sit.', 8, 25, '2017-08-04 03:50:05', NULL),
(31, 'Perferendis libero quia enim nesciunt dolores.', 9, 39, '2017-08-04 03:50:05', NULL),
(32, 'Esse odit qui non assumenda iusto qui eos et.', 7, 5, '2017-08-04 03:50:05', NULL),
(33, 'Ut nihil fuga quo voluptatem odio.', 4, 7, '2017-08-04 03:50:05', NULL),
(34, 'Qui minima quibusdam omnis qui tenetur sint.', 5, 39, '2017-08-04 03:50:05', NULL),
(35, 'Vero sit temporibus totam iure culpa.', 8, 48, '2017-08-04 03:50:05', NULL),
(36, 'Et doloribus aut aut.', 7, 39, '2017-08-04 03:50:05', NULL),
(37, 'Aut reprehenderit quibusdam expedita repudiandae.', 3, 57, '2017-08-04 03:50:05', NULL),
(38, 'Non aut sunt consequatur atque et.', 10, 60, '2017-08-04 03:50:05', NULL),
(39, 'Voluptatum fuga commodi ipsum consequatur odio.', 5, 17, '2017-08-04 03:50:05', NULL),
(40, 'Dolores velit totam esse cumque.', 9, 13, '2017-08-04 03:50:05', NULL),
(41, 'Architecto error iusto eum impedit.', 4, 59, '2017-08-04 03:50:05', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20170723164130, 'CreateUsersTable', '2017-08-04 03:41:48', '2017-08-04 03:41:48', 0),
(20170723191224, 'CreateRolesTable', '2017-08-04 03:41:48', '2017-08-04 03:41:48', 0),
(20170723194735, 'CreatePostsTable', '2017-08-04 03:41:48', '2017-08-04 03:41:48', 0),
(20170726121201, 'CreateCommentsTable', '2017-08-04 03:41:48', '2017-08-04 03:41:49', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `img_url` varchar(255) DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `commentable` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `img_url`, `users_id`, `likes`, `commentable`, `created_at`, `updated_at`) VALUES
(1, 'Dr.', 'Alias cumque quis illum consequatur inventore quod sequi. Amet odio sint quo dolorem sit eos. Sit aut eos sit dolores.', 'http://lorempixel.com/900/300/cats/?26295', 2, 24, 0, '2017-08-04 03:41:52', NULL),
(2, 'Dr.', 'Suscipit natus autem aut totam. Assumenda et accusamus quo quia magnam voluptatem. Ut expedita voluptas minus quis doloremque aliquid tempore et. Enim perspiciatis et sunt saepe eos perferendis a.', 'http://lorempixel.com/900/300/cats/?92705', 5, 16, 1, '2017-08-04 03:41:52', NULL),
(3, 'Dr.', 'Sit dicta et sed quia asperiores. Fugiat est veritatis fugit quod deleniti rerum. Iste voluptatem est consequatur et consequuntur nesciunt.', 'http://lorempixel.com/900/300/cats/?95016', 5, 98, 1, '2017-08-04 03:41:52', NULL),
(4, 'Mr.', 'Totam harum nihil ex quod nulla quos. Molestiae praesentium sit non maxime in. Reiciendis modi enim dolorem et tempora quia.', 'http://lorempixel.com/900/300/cats/?88363', 6, 35, 1, '2017-08-04 03:41:52', NULL),
(5, 'Mr.', 'Vel autem voluptas omnis aperiam eveniet. Assumenda temporibus deserunt omnis recusandae quo. Blanditiis ipsam similique et ea. Alias necessitatibus aspernatur veniam repudiandae modi.', 'http://lorempixel.com/900/300/cats/?64911', 6, 64, 1, '2017-08-04 03:41:52', NULL),
(6, 'Prof.', 'Aliquid sit id aliquam. Nihil esse est inventore qui animi ab. Officiis corrupti corporis rerum reprehenderit quas mollitia distinctio aut. Ut in voluptatibus culpa eius.', 'http://lorempixel.com/900/300/cats/?97712', 7, 35, 0, '2017-08-04 03:41:52', NULL),
(7, 'Miss', 'Nesciunt sequi ut iusto. Impedit adipisci consequatur harum ut. Et quae natus et corrupti et voluptas.', 'http://lorempixel.com/900/300/cats/?22879', 2, 94, 0, '2017-08-04 03:41:52', NULL),
(8, 'Ms.', 'Ullam eveniet tempora quisquam tempore et. Et non et dicta. Odit aut aut vel. Et voluptatum voluptatibus repudiandae et nostrum ratione quod. Fuga et harum nesciunt ut accusamus.', 'http://lorempixel.com/900/300/cats/?63518', 5, 77, 1, '2017-08-04 03:41:52', NULL),
(9, 'Dr.', 'Quo cumque sed cumque sunt excepturi. Nostrum quis quis quos modi nostrum. Blanditiis iste autem ad numquam saepe ad velit.', 'http://lorempixel.com/900/300/cats/?40228', 10, 71, 0, '2017-08-04 03:41:52', NULL),
(10, 'Miss', 'Maiores voluptatem tempora consequuntur amet commodi culpa qui. Mollitia consequatur eveniet occaecati nam nam odio. Tempora consequatur dolorem perferendis enim maiores eaque.', 'http://lorempixel.com/900/300/cats/?46105', 2, 21, 1, '2017-08-04 03:41:52', NULL),
(11, 'Prof.', 'Perferendis maxime velit nihil. Maxime atque consequatur aut. Corrupti placeat aut est qui id voluptatem natus.', 'http://lorempixel.com/900/300/cats/?75203', 2, 14, 1, '2017-08-04 03:41:52', NULL),
(12, 'Miss', 'Et voluptas repellendus qui suscipit amet veritatis id. Reiciendis eveniet qui tenetur placeat accusamus assumenda eius magnam. Itaque tempora id perspiciatis sit nulla beatae.', 'http://lorempixel.com/900/300/cats/?92375', 3, 49, 1, '2017-08-04 03:41:52', NULL),
(13, 'Miss', 'Perspiciatis quo nihil dolor. Unde qui qui explicabo animi ullam rerum sed. Est quaerat ea illum. Illo aspernatur quaerat quod iste expedita dignissimos.', 'http://lorempixel.com/900/300/cats/?38791', 10, 100, 0, '2017-08-04 03:41:52', NULL),
(14, 'Prof.', 'Ratione totam voluptatem consequatur est. Iste qui et vero qui aut distinctio. Ea eius nulla perferendis quos et.', 'http://lorempixel.com/900/300/cats/?80738', 6, 90, 1, '2017-08-04 03:41:52', NULL),
(15, 'Dr.', 'Tenetur non qui quo repellendus quae. Qui quod nihil in blanditiis sed molestiae explicabo. Aliquid dolorem voluptas et suscipit est.', 'http://lorempixel.com/900/300/cats/?88907', 8, 89, 0, '2017-08-04 03:41:52', NULL),
(16, 'Mrs.', 'Ullam dolore inventore enim laudantium doloribus. Omnis libero voluptate excepturi quibusdam dolorem laboriosam ad. Sed qui rerum dolores veritatis et qui.', 'http://lorempixel.com/900/300/cats/?87753', 4, 43, 0, '2017-08-04 03:41:52', NULL),
(17, 'Miss', 'Qui magni aut ea earum eaque. Ipsa est repudiandae id facere. Dolorum vero impedit vitae magnam repudiandae debitis quod porro. Qui ut magnam voluptatibus incidunt autem.', 'http://lorempixel.com/900/300/cats/?21089', 8, 53, 1, '2017-08-04 03:41:52', NULL),
(18, 'Ms.', 'Aut aut eos ut. Dolor maiores voluptas consequuntur id iusto. Placeat corporis quo aperiam inventore.', 'http://lorempixel.com/900/300/cats/?83414', 2, 7, 1, '2017-08-04 03:41:52', NULL),
(19, 'Ms.', 'Voluptas impedit sint dolorem repellendus harum et accusamus. Nam aliquid numquam aut aliquid ipsam sed assumenda. Distinctio sunt ut aperiam dicta.', 'http://lorempixel.com/900/300/cats/?77969', 2, 96, 1, '2017-08-04 03:41:52', NULL),
(20, 'Mr.', 'Delectus dignissimos ab nobis distinctio. Omnis veniam nisi ut maxime dignissimos dolor.', 'http://lorempixel.com/900/300/cats/?72708', 10, 99, 0, '2017-08-04 03:41:52', NULL),
(21, 'Dr.', 'Rerum quod ratione vero. Labore aspernatur vel occaecati eos suscipit eaque et est. Quasi ullam minus totam error modi harum labore. Temporibus id sit ratione sit accusantium.', 'http://lorempixel.com/900/300/cats/?15098', 10, 82, 0, '2017-08-04 03:41:52', NULL),
(22, 'Mr.', 'Doloremque excepturi animi ut reprehenderit. Soluta est repellendus sit dolor est.', 'http://lorempixel.com/900/300/cats/?27970', 7, 87, 0, '2017-08-04 03:41:52', NULL),
(23, 'Prof.', 'Doloribus inventore voluptas sunt eaque labore et delectus cumque. Dolorem quasi voluptas est ullam. Reiciendis nihil accusamus unde sit rerum.', 'http://lorempixel.com/900/300/cats/?67910', 6, 62, 1, '2017-08-04 03:41:52', NULL),
(24, 'Dr.', 'Tenetur et deleniti omnis facere illo deleniti quibusdam repudiandae. Sit excepturi architecto facilis ducimus sit. Doloribus voluptates illum commodi eos officiis non.', 'http://lorempixel.com/900/300/cats/?91484', 6, 9, 0, '2017-08-04 03:41:52', NULL),
(25, 'Ms.', 'Velit voluptas ut magnam deleniti non ea neque. Sint aut eum quis ex hic. Accusamus quia aliquam quos veritatis et occaecati. Expedita delectus odit nihil id.', 'http://lorempixel.com/900/300/cats/?36575', 8, 92, 1, '2017-08-04 03:41:52', NULL),
(26, 'Ms.', 'Placeat laboriosam atque debitis ut harum. Ut occaecati debitis vero vel ullam rem autem laboriosam. Facilis iste ad iste veritatis aut sit.', 'http://lorempixel.com/900/300/cats/?87255', 6, 98, 0, '2017-08-04 03:41:52', NULL),
(27, 'Mr.', 'Est voluptatem sunt pariatur dignissimos. Maiores ullam est officiis iure quos qui praesentium. Et non neque maxime in aut. Pariatur illo repellendus assumenda sint minima animi.', 'http://lorempixel.com/900/300/cats/?66953', 10, 66, 1, '2017-08-04 03:41:52', NULL),
(28, 'Prof.', 'Dolore sed sed et ipsum. Vel itaque nulla repellendus qui illo qui corporis ut. Ut aut sit atque pariatur. Aut consequatur debitis esse fuga enim qui dolor.', 'http://lorempixel.com/900/300/cats/?67344', 2, 11, 1, '2017-08-04 03:41:52', NULL),
(29, 'Mrs.', 'Accusantium vel fugiat eaque aperiam sunt aliquam. Id possimus velit ab nobis cum nam nulla. Odit et qui dicta et et iste sint. Minus nesciunt qui ab aut.', 'http://lorempixel.com/900/300/cats/?95173', 8, 36, 0, '2017-08-04 03:41:52', NULL),
(30, 'Dr.', 'Corporis suscipit ut atque voluptatibus voluptatem maxime aut. Accusantium quos et sed autem inventore omnis sequi. Sed sit corporis est impedit.', 'http://lorempixel.com/900/300/cats/?93979', 6, 53, 1, '2017-08-04 03:41:52', NULL),
(31, 'Mr.', 'Accusantium asperiores quisquam fuga cupiditate repellendus sed quia. Eos et quaerat rerum sed incidunt eos. Voluptatem eius adipisci iste sed cum.', 'http://lorempixel.com/900/300/cats/?18175', 8, 37, 0, '2017-08-04 03:41:52', NULL),
(32, 'Prof.', 'Laudantium soluta officia dolor et. Rem veniam hic necessitatibus optio distinctio et. Porro omnis odit et aut totam dicta.', 'http://lorempixel.com/900/300/cats/?17574', 2, 98, 1, '2017-08-04 03:41:52', NULL),
(33, 'Prof.', 'Molestiae aut est quas. Quo nisi itaque beatae iure. Et excepturi non laboriosam hic enim. Cupiditate molestiae ad mollitia quis repellendus tempore qui.', 'http://lorempixel.com/900/300/cats/?58755', 2, 16, 0, '2017-08-04 03:41:52', NULL),
(34, 'Prof.', 'Enim voluptate eum distinctio est. Rem laudantium et ut velit eveniet et. Omnis cum et vel rerum neque mollitia. Nulla laudantium facere suscipit quaerat quam et est quod.', 'http://lorempixel.com/900/300/cats/?91635', 9, 19, 0, '2017-08-04 03:41:52', NULL),
(35, 'Dr.', 'Eaque aliquid laborum ea velit. Velit iste expedita et maiores itaque quia. Enim eaque dolor laboriosam est aliquam quis.', 'http://lorempixel.com/900/300/cats/?99047', 8, 52, 0, '2017-08-04 03:41:52', NULL),
(36, 'Ms.', 'Culpa explicabo omnis ipsum aliquam. Adipisci nihil animi sequi impedit a. Beatae ut maiores ad delectus asperiores magnam. Ab rerum illo nihil odit veritatis neque.', 'http://lorempixel.com/900/300/cats/?92923', 8, 10, 1, '2017-08-04 03:41:52', NULL),
(37, 'Ms.', 'Odit reprehenderit consequuntur tenetur ut ea. Qui quaerat reiciendis tempore vel possimus nam suscipit nihil.', 'http://lorempixel.com/900/300/cats/?70035', 6, 86, 0, '2017-08-04 03:41:52', NULL),
(38, 'Miss', 'Aliquid culpa esse autem omnis et ut. Est ipsa in a aliquam illo nemo dolores. Nihil ullam aut eos eaque illo dolores sed. Repudiandae ipsa ducimus quidem.', 'http://lorempixel.com/900/300/cats/?64132', 4, 12, 1, '2017-08-04 03:41:52', NULL),
(39, 'Prof.', 'Fugiat pariatur qui sapiente repellat illum molestiae itaque. Et fugit officiis facere neque. Necessitatibus odio mollitia aliquid quia officia vel consequatur repellat. Animi expedita qui nihil.', 'http://lorempixel.com/900/300/cats/?55422', 6, 40, 0, '2017-08-04 03:41:52', NULL),
(40, 'Mrs.', 'Vel eos quis rerum et illum quaerat. Perspiciatis minus inventore eligendi culpa consequatur soluta architecto iure. Nostrum nihil qui saepe qui nobis facilis.', 'http://lorempixel.com/900/300/cats/?82016', 5, 37, 0, '2017-08-04 03:41:52', NULL),
(41, 'Dr.', 'Consectetur occaecati quis hic nobis odit. Eum dolore esse omnis. Omnis reiciendis ratione sunt voluptas autem debitis. Qui vero alias neque aut. Quaerat voluptatum maiores facere ratione ad nisi.', 'http://lorempixel.com/900/300/cats/?80010', 3, 48, 0, '2017-08-04 03:41:52', NULL),
(42, 'Mrs.', 'Rerum rerum ut quasi rerum autem. Nulla cum autem voluptates beatae. Illum quo qui nesciunt quia deleniti voluptas vitae.', 'http://lorempixel.com/900/300/cats/?35643', 2, 96, 1, '2017-08-04 03:41:52', NULL),
(43, 'Dr.', 'Sit blanditiis voluptatibus fuga quasi iure ducimus magni. Quos vel sit sed inventore ex dolore alias. Ullam id debitis cumque dolores. Ut itaque eum corporis labore quo id doloribus.', 'http://lorempixel.com/900/300/cats/?20397', 8, 78, 0, '2017-08-04 03:41:52', NULL),
(44, 'Miss', 'Eveniet recusandae rerum qui placeat culpa accusantium. Nobis ipsa id consequatur itaque molestiae temporibus voluptatem aut. Aut vel nam rem. Repudiandae fugiat eos facere esse sit cupiditate.', 'http://lorempixel.com/900/300/cats/?79850', 3, 21, 0, '2017-08-04 03:41:52', NULL),
(45, 'Prof.', 'Qui deserunt odit asperiores repellendus qui soluta. Quia non facere consequuntur ut voluptas praesentium consectetur.', 'http://lorempixel.com/900/300/cats/?77832', 7, 56, 0, '2017-08-04 03:41:52', NULL),
(46, 'Miss', 'Dolore deleniti in qui consequatur. Quia qui amet repellat totam ut tenetur ut. Odit similique aut vel fugiat aliquid dignissimos.', 'http://lorempixel.com/900/300/cats/?24369', 3, 89, 1, '2017-08-04 03:41:52', NULL),
(47, 'Mr.', 'Non autem non voluptatem aut dolor. Fugiat est velit debitis ab ut itaque. Eaque quod quos quibusdam perferendis.', 'http://lorempixel.com/900/300/cats/?11319', 2, 95, 1, '2017-08-04 03:41:52', NULL),
(48, 'Mr.', 'Libero aut quia ratione perspiciatis ea unde. Facilis et enim qui reprehenderit tempora modi neque excepturi. Esse beatae mollitia autem dolores ut.', 'http://lorempixel.com/900/300/cats/?38419', 8, 51, 0, '2017-08-04 03:41:52', NULL),
(49, 'Mr.', 'Laboriosam et aliquam hic magni ut iste eos eos. Consectetur explicabo nesciunt laudantium quos. Perferendis et odit aperiam deserunt.', 'http://lorempixel.com/900/300/cats/?31429', 3, 14, 1, '2017-08-04 03:41:52', NULL),
(50, 'Mr.', 'Molestiae non veritatis veritatis aspernatur velit consequatur quia quaerat. Ullam itaque doloremque quidem placeat. Laudantium minima incidunt quibusdam ut repudiandae facilis odit.', 'http://lorempixel.com/900/300/cats/?14034', 7, 54, 1, '2017-08-04 03:41:52', NULL),
(51, 'Mr.', 'Necessitatibus asperiores minima exercitationem quis voluptas est est. Expedita et ullam molestiae id ut et magni. Voluptas est dolor accusamus perspiciatis placeat voluptatibus aut.', 'http://lorempixel.com/900/300/cats/?81161', 4, 68, 1, '2017-08-04 03:41:52', NULL),
(52, 'Prof.', 'At quasi laudantium eveniet qui. Tempora quia repudiandae dolores ea excepturi ratione. Debitis exercitationem animi voluptas sed omnis veritatis quia.', 'http://lorempixel.com/900/300/cats/?66326', 9, 68, 0, '2017-08-04 03:41:52', NULL),
(53, 'Prof.', 'Itaque iusto dolor et id sunt molestiae expedita. Assumenda delectus eum officia dolorem aut ea iste dicta. Aut ut consequatur quibusdam sed. Odit in omnis autem beatae ducimus mollitia.', 'http://lorempixel.com/900/300/cats/?54227', 4, 73, 0, '2017-08-04 03:41:52', NULL),
(54, 'Mr.', 'Odit pariatur veniam sint fugit praesentium repellendus consequatur maxime. Qui veniam et aut. Et facere sint itaque dolore. Ullam et id repellendus dolores est sed.', 'http://lorempixel.com/900/300/cats/?67091', 5, 8, 1, '2017-08-04 03:41:52', NULL),
(55, 'Mrs.', 'Aut ipsa autem non in voluptatem. Ducimus id rerum facilis placeat. Omnis repellat soluta beatae vitae delectus est. Nam fugiat aut dolore fuga eos.', 'http://lorempixel.com/900/300/cats/?52890', 9, 27, 1, '2017-08-04 03:41:52', NULL),
(56, 'Prof.', 'Cumque pariatur similique repellendus maiores distinctio id. Quos consectetur temporibus reprehenderit sit ea. Atque accusantium quia quasi reiciendis.', 'http://lorempixel.com/900/300/cats/?60881', 3, 63, 0, '2017-08-04 03:41:52', NULL),
(57, 'Dr.', 'Sit ullam temporibus veritatis est ut numquam. Similique nihil architecto exercitationem blanditiis. Rem explicabo et odit quia. Illum incidunt ea modi magni repellat.', 'http://lorempixel.com/900/300/cats/?75845', 4, 38, 1, '2017-08-04 03:41:52', NULL),
(58, 'Miss', 'Nihil ut quos cum. Maiores et soluta nesciunt error aut. Omnis ab aut fugiat quasi.', 'http://lorempixel.com/900/300/cats/?49745', 8, 17, 1, '2017-08-04 03:41:52', NULL),
(59, 'Prof.', 'Dolore rerum est est molestias quam itaque unde et. Eos provident ut necessitatibus blanditiis. Veritatis voluptatum dolores rerum odio vel et.', 'http://lorempixel.com/900/300/cats/?26975', 7, 49, 0, '2017-08-04 03:41:52', NULL),
(60, 'Mr.', 'Ipsum autem officia modi molestiae fuga rerum quod maiores. Vero facilis et tempora occaecati voluptas eveniet ut eos. Aut fuga pariatur velit sapiente amet nobis exercitationem.', 'http://lorempixel.com/900/300/cats/?96733', 8, 77, 0, '2017-08-04 03:41:52', NULL),
(61, 'dsadasdas', 'asdasdas', NULL, 11, 5, 1, '2017-08-04 03:46:39', NULL),
(63, 'Mr.', 'Deserunt ipsa amet laboriosam eum doloremque soluta. Impedit aut et temporibus eum. Est sunt quae distinctio dicta rerum. Aut fuga dolor fugit dolorem tempore.', 'http://lorempixel.com/900/300/cats/?97910', 9, 94, 1, '2017-08-04 03:50:05', NULL),
(65, 'Mr.', 'Tenetur illum et voluptas soluta. Eum et vel occaecati sed repellat omnis animi. Ipsam alias assumenda officia iure doloribus repellendus aut labore.', 'http://lorempixel.com/900/300/cats/?48427', 2, 92, 0, '2017-08-04 03:50:05', NULL),
(66, 'Mrs.', 'Rerum minima velit ipsa explicabo rem. Hic consequatur quibusdam a dolores laborum expedita eveniet quis. Cumque aut fugit neque.', 'http://lorempixel.com/900/300/cats/?79894', 9, 31, 1, '2017-08-04 03:50:05', NULL),
(67, 'Ms.', 'Et repellendus qui excepturi sed natus. Repellat eos aut pariatur quo optio. Exercitationem excepturi pariatur facilis hic. Tempora dolor nam sit asperiores et non porro.', 'http://lorempixel.com/900/300/cats/?62052', 7, 93, 0, '2017-08-04 03:50:05', NULL),
(68, 'Mrs.', 'Impedit omnis quasi minima doloribus quia ratione. Unde quia est molestias accusantium eaque reprehenderit earum voluptas. Temporibus vel nulla in incidunt soluta quia.', 'http://lorempixel.com/900/300/cats/?86693', 5, 100, 0, '2017-08-04 03:50:05', NULL),
(69, 'Prof.', 'Vero et assumenda ea minus sunt. Ad praesentium voluptate facilis et sed libero excepturi. Dolore laudantium possimus ut vel non voluptatibus quo.', 'http://lorempixel.com/900/300/cats/?45623', 5, 78, 1, '2017-08-04 03:50:05', NULL),
(70, 'Prof.', 'In vero dolorem delectus et. Et et harum dolorum delectus incidunt. Dolores vel facilis voluptatibus ut id vero.', 'http://lorempixel.com/900/300/cats/?93381', 4, 58, 1, '2017-08-04 03:50:05', NULL),
(72, 'Prof.', 'Dolores cupiditate quidem aliquam totam aperiam quam animi. Dolorem non non eligendi reiciendis doloribus voluptatem laborum. Et et mollitia sed et voluptas.', 'http://lorempixel.com/900/300/cats/?94322', 10, 88, 0, '2017-08-04 03:50:05', NULL),
(73, 'Dr.', 'Molestiae aspernatur tenetur et facilis. At ipsa fugiat omnis dolorum dolor quo occaecati aut. Architecto sint vero rerum modi ut quaerat. Omnis unde ut consequatur minus.', 'http://lorempixel.com/900/300/cats/?35835', 8, 35, 0, '2017-08-04 03:50:05', NULL),
(75, 'Miss', 'Optio ut ut impedit laboriosam labore quo. Consectetur facilis quaerat ducimus qui aut quia ab. Tenetur velit aut ut enim qui ducimus quia error. At rerum est non odio.', 'http://lorempixel.com/900/300/cats/?92028', 2, 44, 1, '2017-08-04 03:50:05', NULL),
(76, 'Mr.', 'Dolor dolorem aperiam voluptas. Officia sunt in adipisci enim magni. Possimus necessitatibus eum soluta pariatur omnis ut doloremque.', 'http://lorempixel.com/900/300/cats/?95568', 5, 47, 0, '2017-08-04 03:50:05', NULL),
(77, 'Dr.', 'Natus est est dolor atque illo voluptates beatae. Officia et est sint blanditiis quaerat vitae. Aut sint dolorum vero suscipit temporibus ut voluptatem.', 'http://lorempixel.com/900/300/cats/?54475', 5, 66, 1, '2017-08-04 03:50:05', NULL),
(78, 'Dr.', 'Recusandae quidem modi dolorem ut quis doloribus consectetur. Enim deleniti animi debitis dolores. Maxime atque voluptas dolorem unde dolorem aperiam aut. Nemo eaque fugiat repellendus iure.', 'http://lorempixel.com/900/300/cats/?86813', 9, 75, 0, '2017-08-04 03:50:05', NULL),
(79, 'Ms.', 'Quia et cum consequuntur laboriosam vel neque praesentium excepturi. Rerum odio atque aliquid sed qui ullam. Harum provident qui fuga modi ducimus. Exercitationem aut hic vel neque.', 'http://lorempixel.com/900/300/cats/?76807', 2, 4, 1, '2017-08-04 03:50:05', NULL),
(80, 'Prof.', 'Ut facere id quia voluptatem a eos minima. Vitae non iure modi eveniet impedit recusandae aut. Et non earum adipisci possimus architecto. Et eius consectetur ut voluptatem fugiat qui.', 'http://lorempixel.com/900/300/cats/?51832', 8, 19, 1, '2017-08-04 03:50:05', NULL),
(81, 'Mr.', 'Omnis et rerum et et. Sunt voluptates dolore doloribus est dolores similique. Et eaque itaque quod cumque officiis consequatur libero.', 'http://lorempixel.com/900/300/cats/?90160', 2, 24, 1, '2017-08-04 03:50:05', NULL),
(82, 'Dr.', 'Et cumque a ea autem. Rerum facere vel assumenda totam consequuntur et. Hic omnis blanditiis voluptatum et sit voluptas facilis. Et vitae optio animi beatae error.', 'http://lorempixel.com/900/300/cats/?55653', 10, 47, 1, '2017-08-04 03:50:05', NULL),
(83, 'Mrs.', 'Laudantium perspiciatis et saepe est. Qui modi sunt aut. Eos velit nisi eaque omnis quae odio. Rerum officia et laborum sequi sed ut iste.', 'http://lorempixel.com/900/300/cats/?60855', 7, 73, 0, '2017-08-04 03:50:05', NULL),
(84, 'Mrs.', 'Nesciunt aut error et a. Atque sit voluptatem voluptatem accusantium id ut quasi. Qui eveniet et dolores quo impedit odit dolores. Itaque ullam eos officia voluptas.', 'http://lorempixel.com/900/300/cats/?39891', 7, 94, 1, '2017-08-04 03:50:05', NULL),
(85, 'Dr.', 'Eos aut quidem aliquam dolor. Eum quia earum vel saepe doloremque.', 'http://lorempixel.com/900/300/cats/?41541', 8, 12, 0, '2017-08-04 03:50:05', NULL),
(86, 'Prof.', 'Ea provident veritatis omnis inventore magnam non esse. Velit fuga doloremque earum similique. Aspernatur doloribus ipsam fuga quae esse aliquam id ea. Velit tempore facere porro porro ut quae.', 'http://lorempixel.com/900/300/cats/?70466', 9, 97, 0, '2017-08-04 03:50:05', NULL),
(87, 'Prof.', 'In ipsam dolorum consequatur dicta corporis et. Sed optio facilis ut perspiciatis. Iure est ab et debitis amet. Nulla aut ullam ab culpa rerum.', 'http://lorempixel.com/900/300/cats/?33525', 8, 31, 0, '2017-08-04 03:50:05', NULL),
(88, 'Mrs.', 'Cum quia nobis odit at quae qui velit. Possimus adipisci ducimus quas id et. Et minima vel perferendis animi est. Repellat eos est perspiciatis asperiores itaque quia non iusto.', 'http://lorempixel.com/900/300/cats/?66839', 10, 13, 0, '2017-08-04 03:50:05', NULL),
(89, 'Dr.', 'Similique voluptatem modi consequatur eum. Sed quo eum rerum vel debitis nihil. Quisquam deserunt vel distinctio. Similique ea placeat excepturi.', 'http://lorempixel.com/900/300/cats/?86895', 3, 83, 0, '2017-08-04 03:50:05', NULL),
(90, 'Mr.', 'Quis vel modi sapiente sit deleniti perferendis. Esse doloremque autem nostrum at.', 'http://lorempixel.com/900/300/cats/?28859', 4, 44, 0, '2017-08-04 03:50:05', NULL),
(91, 'Dr.', 'Quo reiciendis praesentium cumque ea sed consequuntur natus. Debitis repudiandae quia at. Commodi ut in aut vero ut tempora.', 'http://lorempixel.com/900/300/cats/?13530', 7, 5, 0, '2017-08-04 03:50:05', NULL),
(92, 'Prof.', 'Hic veritatis consectetur officiis. Iure harum non asperiores officiis hic. Consectetur quia recusandae non architecto repellendus.', 'http://lorempixel.com/900/300/cats/?70093', 4, 65, 1, '2017-08-04 03:50:05', NULL),
(93, 'Mrs.', 'Qui qui fuga hic quibusdam voluptates amet ut. Dolore dolor quae aut nesciunt perferendis. Est iure sunt iusto aliquam dolorum quam.', 'http://lorempixel.com/900/300/cats/?51408', 5, 42, 0, '2017-08-04 03:50:05', NULL),
(94, 'Dr.', 'Officiis accusamus ipsam unde facere accusantium. Quidem beatae cum et nulla. Ipsam dolor dolores est accusamus nam. Eos est quisquam voluptatem velit molestiae labore at.', 'http://lorempixel.com/900/300/cats/?96491', 7, 50, 0, '2017-08-04 03:50:05', NULL),
(95, 'Miss', 'Et ipsum alias vel debitis repellendus architecto. Et rerum quia dignissimos vel culpa. Quaerat molestiae atque error ipsam quia.', 'http://lorempixel.com/900/300/cats/?22103', 4, 73, 0, '2017-08-04 03:50:05', NULL),
(96, 'Mrs.', 'Quas molestias officia sint doloremque voluptatum rem accusantium. Perspiciatis dignissimos qui quasi. Animi non eligendi quo accusamus debitis atque culpa suscipit.', 'http://lorempixel.com/900/300/cats/?46959', 7, 93, 1, '2017-08-04 03:50:05', NULL),
(97, 'Prof.', 'Ea modi magnam dignissimos. Excepturi aut ipsa molestiae recusandae. Ea amet numquam aperiam consectetur.', 'http://lorempixel.com/900/300/cats/?82090', 4, 39, 1, '2017-08-04 03:50:05', NULL),
(98, 'Prof.', 'Commodi et molestiae maiores doloremque sunt sit. Autem odit beatae nostrum est. Autem tempora est quasi aut quia rem cum. Reprehenderit rerum ea nihil voluptatem.', 'http://lorempixel.com/900/300/cats/?40117', 7, 33, 1, '2017-08-04 03:50:05', NULL),
(99, 'Dr.', 'Blanditiis accusantium est optio. Architecto velit excepturi cupiditate enim. Ut quibusdam dolores consequatur sit laborum deserunt dicta.', 'http://lorempixel.com/900/300/cats/?39621', 3, 64, 0, '2017-08-04 03:50:05', NULL),
(100, 'Prof.', 'Blanditiis eligendi magnam dolores nesciunt ut consequatur. Aut consectetur voluptatem itaque nam laudantium distinctio amet a. Aliquid ipsum facilis rem nam quasi mollitia perspiciatis consequatur.', 'http://lorempixel.com/900/300/cats/?86359', 7, 86, 1, '2017-08-04 03:50:05', NULL),
(101, 'Ms.', 'Accusantium numquam quia omnis voluptatem optio reprehenderit ut nihil. Ut non omnis sit et et accusantium blanditiis. Voluptates rerum doloribus molestias occaecati nostrum quia ratione.', 'http://lorempixel.com/900/300/cats/?84173', 9, 80, 1, '2017-08-04 03:50:05', NULL),
(102, 'Mr.', 'Enim totam cumque veniam laboriosam. Inventore quas quia debitis nihil quo molestiae id. Et ut architecto suscipit quaerat saepe error. Incidunt fugiat quia natus laudantium modi quos magni non.', 'http://lorempixel.com/900/300/cats/?95074', 6, 59, 1, '2017-08-04 03:50:05', NULL),
(103, 'Dr.', 'Quia maxime ipsum ipsa sit vitae quia aut voluptatem. Explicabo saepe id at animi omnis suscipit rerum. Atque veritatis sint et nam.', 'http://lorempixel.com/900/300/cats/?88356', 3, 55, 0, '2017-08-04 03:50:05', NULL),
(104, 'Miss', 'Ratione itaque perferendis qui eligendi facilis magnam. Expedita atque doloribus laudantium voluptatem ad necessitatibus. Nihil dolorem dolores qui harum labore. Labore aliquid et animi non.', 'http://lorempixel.com/900/300/cats/?30999', 3, 84, 1, '2017-08-04 03:50:05', NULL),
(105, 'Prof.', 'Autem aliquam consequatur consequatur commodi nihil et. Magni repellat ea veritatis quod voluptatem possimus aut. Placeat est dicta reprehenderit amet explicabo voluptatem.', 'http://lorempixel.com/900/300/cats/?67528', 8, 16, 1, '2017-08-04 03:50:05', NULL),
(106, 'Dr.', 'Optio sit porro consequatur sunt nulla non sint. Consectetur vel voluptas soluta. Est ipsam ea et earum vitae.', 'http://lorempixel.com/900/300/cats/?46387', 2, 41, 1, '2017-08-04 03:50:05', NULL),
(107, 'Dr.', 'Accusamus dolorum quo voluptatem nostrum. Iusto dolor mollitia totam reiciendis occaecati at. Ullam voluptas eos tempora provident ducimus corrupti. Rerum id accusantium illo atque eos velit.', 'http://lorempixel.com/900/300/cats/?58704', 8, 75, 0, '2017-08-04 03:50:05', NULL),
(108, 'Dr.', 'Sit sequi consequuntur consequatur sint fugiat consequuntur. Et dolores deserunt consequatur at quod est. Quam qui officiis harum facilis nesciunt.', 'http://lorempixel.com/900/300/cats/?19667', 10, 80, 0, '2017-08-04 03:50:05', NULL),
(109, 'Mr.', 'Iure laborum doloremque qui. Vel aliquam consequatur voluptatem fugiat quis dolorum. Aut sed qui voluptatem quisquam omnis odit ducimus inventore. Assumenda assumenda facere quo.', 'http://lorempixel.com/900/300/cats/?37808', 2, 52, 0, '2017-08-04 03:50:05', NULL),
(110, 'Dr.', 'Autem aut est laudantium qui. Dolorem rerum molestias sint. Sed non excepturi neque qui alias. Minus sed doloremque maxime vel.', 'http://lorempixel.com/900/300/cats/?15121', 7, 47, 1, '2017-08-04 03:50:05', NULL),
(111, 'Mr.', 'Ab reiciendis omnis ex ut aut ex modi. Rerum libero architecto nostrum consectetur. Corporis debitis harum voluptas optio repellendus.', 'http://lorempixel.com/900/300/cats/?33867', 6, 2, 0, '2017-08-04 03:50:05', NULL),
(112, 'Miss', 'Commodi accusamus et officiis eos quibusdam. Illum molestiae sint mollitia quo saepe. Laborum aut magni sed omnis provident officiis numquam.', 'http://lorempixel.com/900/300/cats/?33652', 9, 13, 0, '2017-08-04 03:50:05', NULL),
(113, 'Prof.', 'Culpa qui accusamus ducimus atque. Dolor fuga eum reiciendis quis alias similique. Velit dolor vel asperiores aut praesentium aliquam nobis. Aut recusandae voluptatibus ab aut.', 'http://lorempixel.com/900/300/cats/?13669', 7, 39, 1, '2017-08-04 03:50:05', NULL),
(114, 'Dr.', 'Ipsa temporibus ea qui quaerat et. Tenetur unde debitis unde eligendi eligendi distinctio. Id nihil consequatur deleniti.', 'http://lorempixel.com/900/300/cats/?82522', 10, 92, 0, '2017-08-04 03:50:05', NULL),
(115, 'Mr.', 'Debitis non et fugiat voluptate qui. Ipsa voluptatem facere suscipit odit autem nihil sit. Eum cum ut voluptatem voluptatem aperiam ex sed.', 'http://lorempixel.com/900/300/cats/?62283', 4, 63, 1, '2017-08-04 03:50:05', NULL),
(116, 'Prof.', 'Aut optio expedita et. Quae id aspernatur facere sit facere.', 'http://lorempixel.com/900/300/cats/?77553', 6, 74, 1, '2017-08-04 03:50:05', NULL),
(117, 'Dr.', 'Voluptate fugit enim dolore et eaque ratione nihil. Iste molestiae dolorem sit. Aut doloremque sit neque.', 'http://lorempixel.com/900/300/cats/?72027', 7, 82, 0, '2017-08-04 03:50:05', NULL),
(118, 'Mr.', 'Harum velit et nisi ut. Natus accusamus enim velit optio aperiam qui blanditiis. Sed quo molestiae pariatur pariatur voluptas.', 'http://lorempixel.com/900/300/cats/?66710', 4, 42, 1, '2017-08-04 03:50:05', NULL),
(119, 'Mrs.', 'Provident qui amet autem possimus. Sapiente iusto in nostrum fugit. Doloribus impedit dolor ratione velit. Placeat quis enim nostrum a harum. Ducimus deserunt molestias laborum vero itaque eum.', 'http://lorempixel.com/900/300/cats/?46868', 7, 38, 1, '2017-08-04 03:50:05', NULL),
(120, 'Mr.', 'Omnis modi cumque rerum fugiat ut esse culpa voluptatem. Necessitatibus illo nostrum ipsum quasi. Quos error vero odio est odio et adipisci. Beatae iusto porro tempore mollitia ea veniam.', 'http://lorempixel.com/900/300/cats/?78536', 9, 3, 1, '2017-08-04 03:50:05', NULL),
(121, 'Mrs.', 'Odio debitis quae cupiditate doloribus minus fugit. Voluptatem ex et et at deleniti fuga. Eligendi et nobis molestiae deleniti delectus qui cumque. Ad ea ea quis labore quos veniam.', 'http://lorempixel.com/900/300/cats/?67146', 6, 34, 0, '2017-08-04 03:50:05', NULL),
(122, 'dasdasdas', 'dasdasdasd', NULL, 12, 5, 1, '2017-08-04 04:34:02', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin permissions'),
(2, 'user', 'users permission'),
(3, 'admin', 'admin permissions'),
(4, 'user', 'users permission');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth` date DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `banned` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `birth`, `img_url`, `role_id`, `banned`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Bradford Schaefer', 'damian.mraz@hotmail.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '2006-01-07', 'http://lorempixel.com/200/200/people/?30773', 2, 0, '2017-08-04 03:41:52', NULL),
(2, 'Teagan Brekke', 'baron90@bode.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1984-03-13', 'http://lorempixel.com/200/200/people/?48947', 1, 0, '2017-08-04 03:41:52', NULL),
(3, 'Dr. Jose Hagenes', 'xemard@gmail.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1984-11-01', 'http://lorempixel.com/200/200/people/?74327', 2, 1, '2017-08-04 03:41:52', NULL),
(4, 'Stewart Larkin', 'enoch43@hotmail.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1977-08-20', 'http://lorempixel.com/200/200/people/?27981', 2, 1, '2017-08-04 03:41:52', NULL),
(5, 'Kendrick Baumbach', 'gleichner.janessa@yahoo.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '2005-11-26', 'http://lorempixel.com/200/200/people/?85979', 2, 0, '2017-08-04 03:41:52', NULL),
(6, 'Mandy Zemlak', 'ghessel@gmail.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1980-10-17', 'http://lorempixel.com/200/200/people/?75304', 2, 0, '2017-08-04 03:41:52', NULL),
(7, 'Trace Quitzon', 'johathan57@yahoo.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1981-11-16', 'http://lorempixel.com/200/200/people/?66258', 2, 0, '2017-08-04 03:41:52', NULL),
(8, 'Mr. Liam Wyman Sr.', 'elise98@hotmail.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1988-05-10', 'http://lorempixel.com/200/200/people/?14821', 1, 1, '2017-08-04 03:41:52', NULL),
(9, 'Porter Sporer', 'hills.justice@yahoo.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '2000-08-08', 'http://lorempixel.com/200/200/people/?79803', 1, 1, '2017-08-04 03:41:52', NULL),
(10, 'Abigayle Lemke', 'friesen.rosalia@feil.biz', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1996-07-10', 'http://lorempixel.com/200/200/people/?51336', 2, 0, '2017-08-04 03:41:52', NULL),
(11, 'stosdima', 'stosdima@gmail.com', '$2y$12$tN.4zhHA0/mpJefEG2jXg.lC0.6gsLsFNFO378Io1KobNhyu1t6pu', NULL, 'http://ulafull.ru/wp-content/uploads/2017/02/vk1.jpg', 2, 0, '2017-08-04 03:42:16', NULL),
(12, 'admin', 'admin@gmail.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '2005-10-26', 'http://lorempixel.com/200/200/people/?33052', 1, 0, '2017-08-04 03:50:05', NULL),
(13, 'John Morar III', 'laurine.schiller@harber.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '2012-03-10', 'http://lorempixel.com/200/200/people/?19518', 1, 0, '2017-08-04 03:50:05', NULL),
(14, 'Mr. Raleigh Gerhold', 'nhowell@hotmail.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1972-12-29', 'http://lorempixel.com/200/200/people/?23102', 1, 1, '2017-08-04 03:50:05', NULL),
(15, 'Prof. Jimmy Larson V', 'lavon.johnson@dare.org', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '2014-09-24', 'http://lorempixel.com/200/200/people/?99419', 2, 1, '2017-08-04 03:50:05', NULL),
(16, 'Ms. Neva Dickens DVM', 'beatty.humberto@turner.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1995-12-28', 'http://lorempixel.com/200/200/people/?24194', 2, 1, '2017-08-04 03:50:05', NULL),
(17, 'Torrance Denesik MD', 'maria.ohara@gmail.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1999-03-23', 'http://lorempixel.com/200/200/people/?14382', 2, 0, '2017-08-04 03:50:05', NULL),
(18, 'Prof. Barbara Bogisich V', 'maci15@gmail.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1979-02-01', 'http://lorempixel.com/200/200/people/?96778', 2, 1, '2017-08-04 03:50:05', NULL),
(19, 'Rodrick Murazik', 'vidal46@spencer.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1982-06-26', 'http://lorempixel.com/200/200/people/?71434', 2, 1, '2017-08-04 03:50:05', NULL),
(20, 'Sister Boyle', 'ollie14@kub.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '2011-07-02', 'http://lorempixel.com/200/200/people/?77179', 1, 1, '2017-08-04 03:50:05', NULL),
(21, 'Burley Erdman', 'iva71@yahoo.com', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '1992-02-01', 'http://lorempixel.com/200/200/people/?99646', 2, 1, '2017-08-04 03:50:05', NULL),
(22, 'Dr. Monte Konopelski', 'gusikowski.flavie@stokes.org', '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW', '2004-03-11', 'http://lorempixel.com/200/200/people/?60739', 1, 1, '2017-08-04 03:50:05', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

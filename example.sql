-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 26 2019 г., 10:49
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `example`
--

-- --------------------------------------------------------

--
-- Структура таблицы `albom`
--

CREATE TABLE `albom` (
  `id` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TOKEN` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `albom`
--

INSERT INTO `albom` (`id`, `USER_ID`, `FILE_NAME`, `FILE_SIZE`, `FILE_TYPE`, `TOKEN`) VALUES
(549, 11, '5ce3f842708d215584440985ce3f842708e1.jpg', '37503', 'image/jpeg', ''),
(550, 12, '5ce3f85b85e0215584441235ce3f85b85e18.jpg', '37503', 'image/jpeg', ''),
(551, 13, '5ce3f8904ec1f15584441765ce3f8904ec2c.jpg', '191550', 'image/jpeg', ''),
(552, 14, '5ce3f8b0218dc15584442085ce3f8b0218e9.jpg', '392394', 'image/jpeg', ''),
(553, 15, '5ce3f8c81e65c15584442325ce3f8c81e66b.jpeg', '406675', 'image/jpeg', ''),
(554, 16, '5ce3f8ed71b2715584442695ce3f8ed71b38.jpg', '237858', 'image/jpeg', ''),
(555, 17, '5ce3f90f0786515584443035ce3f90f07877.jpg', '346401', 'image/jpeg', ''),
(556, 18, '5ce3f9314ef7315584443375ce3f9314ef95.jpg', '200711', 'image/jpeg', ''),
(557, 18, '5ce3f965270c415584443895ce3f965270d8.jpg', '83176', 'image/jpeg', ''),
(558, 19, '5ce3f9873dde215584444235ce3f9873ddf2.jpg', '53652', 'image/jpeg', ''),
(559, 19, '5ce3f9d4d7de915584445005ce3f9d4d7df8.jpg', '191550', 'image/jpeg', ''),
(560, 19, '5ce3f9d51cc4d15584445015ce3f9d51cc58.jpg', '130023', 'image/jpeg', ''),
(561, 19, '5ce3f9d54c17315584445015ce3f9d54c180.jpg', '392394', 'image/jpeg', ''),
(562, 19, '5ce3f9d57384c15584445015ce3f9d573b1c.jpg', '125023', 'image/jpeg', ''),
(563, 19, '5ce3f9d58a83515584445015ce3f9d58a842.jpg', '346401', 'image/jpeg', ''),
(564, 19, '5ce3f9d5c518d15584445015ce3f9d5c5199.jpg', '1075158', 'image/jpeg', ''),
(565, 19, '5ce3f9d68a1da15584445025ce3f9d68a1e6.jpg', '124009', 'image/jpeg', ''),
(566, 19, '5ce3f9d6ad0f915584445025ce3f9d6ad107.jpg', '139660', 'image/jpeg', ''),
(567, 19, '5ce3f9d6cbf2015584445025ce3f9d6cbf2c.jpg', '142817', 'image/jpeg', ''),
(568, 19, '5ce3f9d6ed97115584445025ce3f9d6ed97e.jpg', '371692', 'image/jpeg', ''),
(569, 19, '5ce3f9d79908015584445035ce3f9d79908d.jpg', '150924', 'image/jpeg', ''),
(570, 19, '5ce3f9d7b8a0315584445035ce3f9d7b8a10.jpg', '40150', 'image/jpeg', ''),
(571, 15, '5d52b414ac76a15657011405d52b414ac770.jpg', '41184', 'image/jpeg', ''),
(572, 15, '5d52b414afffb15657011405d52b414afffe.jpg', '103054', 'image/jpeg', ''),
(573, 15, '5d52b414b7b9615657011405d52b414b7b98.jpg', '235893', 'image/jpeg', '');

-- --------------------------------------------------------

--
-- Структура таблицы `anketa`
--

CREATE TABLE `anketa` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `anketa`
--

INSERT INTO `anketa` (`id`, `userid`, `firstname`, `lastname`, `about`, `img`) VALUES
(10, 0, 'Вася', 'Программер', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, co', ''),
(17, 11, 'Миша', 'Программист', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, co', '5ce3f842708d215584440985ce3f842708e1.jpg'),
(18, 15, 'Вася', 'Не Петя', 'Holy guacamole! You should check in on some of those fields below.\r\nAww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of conte', '5d52b414b7b9615657011405d52b414b7b98.jpg'),
(19, 14, 'Вася', 'Программер', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, co', '5ce3f8b0218dc15584442085ce3f8b0218e9.jpg'),
(20, 12, 'Петя', 'Отличница', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.\r\n  ', '5ce3f85b85e0215584441235ce3f85b85e18.jpg'),
(23, 13, 'Не', 'Петя', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.\r\n  ', '5ce3f8904ec1f15584441765ce3f8904ec2c.jpg'),
(24, 16, 'Не', 'Отличница', 'Aww yeah, you successfully read this message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. There are many variations of passages of Lorem Ipsum available, b\r\n\r\n\r\n          ', '5ce3f8ed71b2715584442695ce3f8ed71b38.jpg'),
(25, 17, 'Петя', 'Косой', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there.\r\n                ', '5ce3f90f0786515584443035ce3f90f07877.jpg'),
(26, 19, 'Тестовый', 'Пользователь', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\r\n        ', '5ce3f9d7b8a0315584445035ce3f9d7b8a10.jpg'),
(27, 18, 'Some', 'Thing', 'Description   ', '5ce3f965270c415584443895ce3f965270d8.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent`, `alias`) VALUES
(685, 'Комплектующие к Apple', 0, 'komplektuyuschie-k-apple'),
(691, 'Запчасти iPad', 685, 'zapchasti-ipad'),
(692, 'Запчасти iPhone', 685, 'zapchasti-iphone'),
(693, 'Запчасти iPod', 685, 'zapchasti-ipod'),
(694, 'Запчасти Mac', 685, 'zapchasti-mac'),
(695, 'iPad', 691, 'ipad'),
(696, 'iPad 2', 691, 'ipad-2'),
(697, 'iPad NEW (iPad 3)', 691, 'ipad-new-ipad-3'),
(698, 'iPad 4', 691, 'ipad-4'),
(699, 'iPad mini', 691, 'ipad-mini'),
(700, 'iPhone', 692, 'iphone'),
(701, 'iPhone 3G/3GS', 692, 'iphone-3g-3gs'),
(702, 'iPhone 4', 692, 'iphone-4'),
(703, 'iPhone 4S', 692, 'iphone-4s'),
(704, 'iPhone 5', 692, 'iphone-5'),
(705, 'Микросхемы Apple', 685, 'mikroshemy-apple'),
(836, 'Защитные плёнки на Apple', 0, 'zaschitnye-plenki-na-apple'),
(840, 'iPad', 836, 'ipad-840'),
(841, 'iPhone', 836, 'iphone-841'),
(842, 'iPod', 836, 'ipod'),
(843, 'Mac', 836, 'mac'),
(853, 'Оборудование для ремонта Apple', 0, 'oborudovanie-dlya-remonta-apple'),
(876, 'Аксессуары для Apple', 0, 'aksessuary-dlya-apple'),
(877, 'Аксессуары iPad', 876, 'aksessuary-ipad'),
(878, 'Аксессуары iPhone', 876, 'aksessuary-iphone'),
(879, 'Аксессуары iPod', 876, 'aksessuary-ipod'),
(880, 'Аксессуары Mac', 876, 'aksessuary-mac'),
(881, 'iPad', 877, 'ipad-881'),
(882, 'iPad 2', 877, 'ipad-2-882'),
(883, 'iPad NEW 3 / iPad 4', 877, 'ipad-new-3-ipad-4'),
(884, 'iPad mini', 877, 'ipad-mini-884'),
(885, 'iPhone 3G / 3GS', 878, 'iphone-3g-3gs-885'),
(886, 'iPhone 4 / 4S', 878, 'iphone-4-4s'),
(887, 'iPhone 5', 878, 'iphone-5-887'),
(888, 'Аксессуары для Apple', 876, 'aksessuary-dlya-apple-888'),
(895, 'iPhone 5 Lamborghini', 878, 'iphone-5-lamborghini');

-- --------------------------------------------------------

--
-- Структура таблицы `conversation`
--

CREATE TABLE `conversation` (
  `c_id` int(11) NOT NULL,
  `user_one` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_two` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thetime` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `conversation`
--

INSERT INTO `conversation` (`c_id`, `user_one`, `user_two`, `ip`, `thetime`) VALUES
(288, '15', '15', '111', '1557562553'),
(289, '11', '15', '111', '1557562748'),
(290, '13', '15', '111', '1557563203'),
(291, '13', '11', '111', '1557563238'),
(292, '19', '11', '111', '1557564041'),
(293, '15', '19', '111', '1557567124'),
(294, '19', '19', '111', '1558444462');

-- --------------------------------------------------------

--
-- Структура таблицы `conversation_reply`
--

CREATE TABLE `conversation_reply` (
  `cr_id` int(11) NOT NULL,
  `reply` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id_fk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thetime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_id_fk` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `conversation_reply`
--

INSERT INTO `conversation_reply` (`cr_id`, `reply`, `user_id_fk`, `ip`, `thetime`, `c_id_fk`) VALUES
(621, 'проверка связи', '11', 'userip', '1557562985', '289'),
(622, 'Связь работает нормально!', '15', 'userip', '1557563040', '289'),
(623, 'Отлично!', '11', 'userip', '1557563104', '289'),
(624, 'НОВОЕ СООБЩЕНИЕ', '13', 'userip', '1557563210', '290'),
(625, 'test', '13', 'userip', '1557563245', '291'),
(626, '111', '13', 'userip', '1557563252', '290'),
(627, 'проверка связи', '13', 'userip', '1557563258', '291'),
(628, 'Привет Петя', '11', 'userip', '1557563294', '291'),
(629, 'проверка связи', '19', 'userip', '1557564043', '292'),
(630, '111', '19', 'userip', '1557564051', '292'),
(631, 'test', '15', 'userip', '1557564621', '289'),
(632, 'проверка связи', '15', 'userip', '1557567127', '293'),
(633, 'НОВОЕ СООБЩЕНИЕ', '15', 'userip', '1557567142', '289'),
(634, 'Нормально!', '19', 'userip', '1557567213', '293'),
(635, 'Привет', '19', 'userip', '1557567237', '292'),
(636, 'проверка связи', '15', 'userip', '1557567285', '290'),
(637, 'Привет Петя', '15', 'userip', '1557567305', '289'),
(638, '111', '11', 'userip', '1557567405', '289'),
(639, 'НОВОЕ СООБЩЕНИЕ', '11', 'userip', '1557567412', '292'),
(640, 'проверка связи', '11', 'userip', '1557567418', '291'),
(641, '111', '15', 'userip', '1558438094', '289'),
(642, 'Привет! ', '15', 'userip', '1565701175', '288');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `category_id`, `title`, `excerpt`, `text`, `keywords`, `description`) VALUES
(1, 2, 'Создание фреймврка', 'Фреймворк с нуля', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Свой фреймворк', 'Создание фреймврка'),
(2, 2, 'Создание фреймврка', 'Фреймворк с нуля', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Свой фреймворк', 'Создание фреймврка');

-- --------------------------------------------------------

--
-- Структура таблицы `qtsb9_jshopping_categories`
--

CREATE TABLE `qtsb9_jshopping_categories` (
  `category_id` int(11) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_parent_id` int(11) NOT NULL DEFAULT 0,
  `category_publish` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `category_ordertype` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `category_template` varchar(64) DEFAULT NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime DEFAULT '0000-00-00 00:00:00',
  `products_page` int(8) NOT NULL DEFAULT 12,
  `products_row` int(3) NOT NULL DEFAULT 3,
  `access` int(3) NOT NULL DEFAULT 1,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  `ext_id` varchar(256) DEFAULT NULL,
  `ext_update_id` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `qtsb9_jshopping_categories`
--

INSERT INTO `qtsb9_jshopping_categories` (`category_id`, `category_image`, `category_parent_id`, `category_publish`, `category_ordertype`, `category_template`, `ordering`, `category_add_date`, `products_page`, `products_row`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`, `ext_id`, `ext_update_id`) VALUES
(1, 'fc4c42aa8fe2f4218edbdedf808c2f8f.JPG', 0, 1, 1, NULL, 8, '2012-07-20 16:02:49', 500, 2, 1, '', '', '', '', '', '', '', 'СНПЧ', 'snpch', 'СНПЧ для струйных  МФУ и принтеров.', '<p>СНПЧ для струйных  МФУ и принтеров.</p>', 'СНПЧ ', 'СНПЧ ', 'СНПЧ, Система непрерывной подачи чернил, НПЧ, Непрерывная подача чернил', NULL, NULL),
(2, '0079eb840a627abcbf78be9331a212c9.JPG', 1, 1, 1, NULL, 4, '2012-07-20 17:00:34', 500, 2, 1, '', '', '', '', '', '', '', 'СНПЧ Epson', 'snpch-epson', 'СНПЧ для струйных МФУ и принтеров Epson.', '<p>СНПЧ для струйных МФУ и принтеров Epson.</p>', 'СНПЧ Epson', 'СНПЧ Epson', 'СНПЧ Epson, Система непрерывной подачи чернил Epson, НПЧ Epson, Непрерывная подача чернил Epson ', NULL, NULL),
(3, '9351bea6f7029d2b5787cca3f4d14443.JPG', 1, 1, 1, NULL, 13, '2012-07-20 17:03:16', 500, 2, 1, '', '', '', '', '', '', '', 'СНПЧ HP', 'snpch-hp', 'СНПЧ для струйных МФУ и принтеров HP.', '<p>СНПЧ для струйных МФУ и принтеров HP.</p>', 'СНПЧ HP', 'СНПЧ HP', 'СНПЧ HP, Система непрерывной подачи чернил HP, НПЧ HP, Непрерывная подача чернил HP', NULL, NULL),
(4, 'ffb28779948c681af4fd3c506bff1692.JPG', 1, 1, 1, NULL, 8, '2012-07-20 21:53:58', 500, 2, 1, '', '', '', '', '', '', '', 'СНПЧ Canon', 'snpch-canon', 'СНПЧ для струйных МФУ и принтеров Canon', '<p>СНПЧ для струйных МФУ и принтеров Canon</p>', 'СНПЧ Canon', 'СНПЧ Canon', 'снпч для canon,  снпч canon pixma', NULL, NULL),
(5, 'd584730d8e93dbe19c3535a2de04db3b.JPG', 0, 1, 1, NULL, 14, '2012-07-21 10:53:06', 500, 2, 1, '', '', '', '', '', '', '', 'ПЗК', 'pzk', 'ПЗК для струйных  МФУ и принтеров.', '<p>ПЗК для струйных  МФУ и принтеров.</p>', 'пзк', 'пзк', 'пзк', NULL, NULL),
(6, '1093121c11f6a4fbc3868a43d0b5d5e3.JPG', 0, 1, 1, NULL, 25, '2012-07-21 10:55:10', 500, 2, 1, '', '', '', '', '', '', '', 'Струйные картриджи', 'struinye-kartridji', 'Струйные картриджи для принтеров и МФУ', '<p>Струйные картриджи для принтеров и МФУ</p>', 'Струйные картриджи', 'Струйные картриджи', 'струйный картридж', NULL, NULL),
(7, '6e0fb89d81addd799bec0bf45a29b1ba.JPG', 0, 1, 1, NULL, 28, '2012-07-21 10:55:58', 500, 2, 1, '', '', '', '', '', '', '', 'Лазерные картриджи', 'lazernye-kartridji', 'Лазерные картриджи для принтеров и МФУ', '<p>Лазерные картриджи для принтеров и МФУ</p>', 'Лазерные картриджи', 'Лазерные картриджи', 'лазерные картриджи', NULL, NULL),
(8, '64e9629d0e04305f7d67f2a44b8cbcc8.JPG', 0, 1, 1, NULL, 38, '2012-07-21 10:57:31', 500, 2, 1, '', '', '', '', '', '', '', 'Принтеры и МФУ', 'printery-s-resheniem', 'Принтеры подготовленные к печати.\r\nАмериканские принтеры Epson + СНПЧ.\r\nПрошитый Samsung.', '<p>Принтеры подготовленные к печати. Наложенным не высылаем</p>', 'Принтеры с решением', 'Принтеры с решением', 'принтер для офиса, принтер для дома, лазерный принтер для дома, цветной принтер для дома', NULL, NULL),
(9, 'b72933c43ec4b971c735fcae7d3d7738.JPG', 0, 1, 1, NULL, 19, '2012-07-21 10:59:04', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы', 'chipy', 'Чипы для струйных и лазерных принтеров и МФУ', '<p>Чипы для струйных и лазерных принтеров и МФУ</p>', 'Чипы', 'Чипы', 'чип для принтера', NULL, NULL),
(10, 'db16ab39b64148cccb7c2b4975ff8592.JPG', 0, 1, 1, NULL, 31, '2012-07-21 11:00:34', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП для картриджа', 'zip-dlya-kartridja', 'Комплектующие, расходные материалы для лазерных картриджей', '<p>Комплектующие, расходные материалы для лазерных картриджей</p>', 'ЗИП для картриджа', 'ЗИП для картриджа', 'картриджи расходные материалы', NULL, NULL),
(11, 'DSC00429.JPG', 0, 1, 1, NULL, 63, '2012-07-21 11:01:10', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер', 'toner', 'Тонер для лазерных принтеров', '<p>Куплю тонер для лазерных картриджей принтера оптом.</p>\r\n<p>Тонер с Тайваня, TTI - лидер в производстве качественных тонеров для картриджей лазерных принтеров.</p>', 'Тонер', 'Тонер', 'Тонер, куплю тонер, купить тонер, купить тонер для принтера, куплю тонер для картриджа', NULL, NULL),
(12, '6c268be064e96c5e6e83420b8944671b.JPG', 0, 1, 1, NULL, 70, '2012-07-21 11:01:41', 500, 2, 1, '', '', '', '', '', '', '', 'Чернила', 'chernila', 'Чернила струйных принтеров', '<p>Чернила струйных принтеров. В этом разделе представлены чернила для струйных принтеров, которые вы можете купить. Купить чернила вы можете оптом и в розницу.</p>\r\n<p>Чернила для струйного принтера бывают на водной основе, пигментной на основе сольвентного растворителя и предназначенные для термопереноса ( сублимационные ) . Все эти чернила вы можете найти и приобрести тут.</p>\r\n<p>Чернил<span style=\"line-height: 1.3em;\">а для струйной печати бывают для разных типов печатающих головок - термо- и пьезо-</span></p>\r\n<p><span style=\"line-height: 1.3em;\">Чернила, которые мы предлагаем отличаются высоким качеством печати и совершенно совместимы с оригиналом.</span></p>', 'Чернила', 'Чернила', 'Чернила, чернила для принтера, чернила купить, купить чернила для струйного принтера', NULL, NULL),
(13, '035290c316545042355899f02867137b.JPG', 0, 1, 1, NULL, 75, '2012-07-21 11:02:10', 500, 2, 1, '', '', '', '', '', '', '', 'Фотобумага', 'fotobumaga', 'Фотобумага для лазерных и струйных принтеров', '<p>Фотобумага для лазерных и струйных принтеров</p>', 'Фотобумага', 'Фотобумага', 'Фотобумага', NULL, NULL),
(14, 'd2a7511aa5baa5971fb2dec672113656.JPG', 0, 1, 1, NULL, 80, '2012-07-21 11:02:52', 500, 2, 1, '', '', '', '', '', '', '', 'Химия для техники', 'promyvochnaya-jidkost', 'Химические препараты для электроники, для ремонта техники.\r\nВ наличии смазки, масла, очищающие и восстанавливающие жидкости, промывочные смеси для головок.', '<p>Химические препараты для электроники, для ремонта техники.</p>\r\n<p>В наличии смазки, масла, очищающие и восстанавливающие жидкости, промывочные смеси для головок.</p>', 'Промывочная жидкость', 'Промывочная жидкость', 'промывочная жидкость принтеров, промывочная жидкость для принтера, промывочная жидкость для струйных принтеров', NULL, NULL),
(15, 'ab4cce907a026516f03e432476924f8b.JPG', 0, 1, 1, NULL, 47, '2012-07-21 11:07:57', 500, 2, 1, '', '', '', '', '', '', '', 'Решения для принтера', 'resheniya-dlya-printera', 'Способы удешевления печати вашего принтера', '<p>Способы удешевления печати вашего принтера</p>', 'Решения для принтера', 'Решения для принтера', 'печать принтера', NULL, NULL),
(16, '928207d1dab8dd85a2c2f4d96a9014b8.JPG', 0, 1, 1, NULL, 54, '2012-07-21 11:10:26', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП принтера', 'zip-printera', 'Комплектующие, расходные материалы для принтеров', '<p>Комплектующие, расходные материалы для принтеров</p>', 'ЗИП принтера', 'ЗИП принтера', 'зип для принтеров, зип принтера, комплектующие принтера, комплектующие для принтеров', NULL, NULL),
(17, 'e146734bfa0454d069a9d2da4bc01a40.JPG', 0, 1, 1, NULL, 82, '2012-07-21 11:11:09', 500, 2, 1, '', '', '', '', '', '', '', 'Программаторы', 'programmatory', 'Программаторы', '<p>Программаторы</p>', 'Программаторы', 'Программаторы', 'Программаторы', NULL, NULL),
(18, 'b0f6a01066be1b0c0f7896116ed5f2c7.JPG', 0, 1, 1, NULL, 84, '2012-07-21 11:11:44', 500, 2, 1, '', '', '', '', '', '', '', 'Радиодетали', 'radiodetali', 'Радиодетали', '<p>Радиодетали</p>', 'Радиодетали', 'Радиодетали', 'Радиодетали', NULL, NULL),
(20, 'thumb_full_DSC00474.jpg', 1, 1, 1, 'default', 18, '2012-07-21 12:25:25', 500, 2, 1, '', '', '', '', '', '', '', 'СНПЧ Brother', 'snpch-brother', 'СНПЧ для принтеров и МФУ  Brother', '<p>СНПЧ для принтеров и МФУ  Brother</p>', 'СНПЧ Brother', 'СНПЧ Brother', 'СНПЧ Brother, Система непрерывной подачи чернил Brother, НПЧ Brother, Непрерывная подача чернил Brother', NULL, NULL),
(21, '58633663eb101ed374a1c4f609f14633.JPG', 5, 1, 1, NULL, 3, '2012-07-21 12:40:21', 500, 2, 1, '', '', '', '', '', '', '', 'ПЗК Epson', 'pzk-epson', 'ПЗК для струйных принтеров и МФУ Epson', '<p>ПЗК для струйных принтеров и МФУ Epson</p>', 'ПЗК Epson ', 'ПЗК Epson ', 'ПЗК для Epson ', NULL, NULL),
(22, '864220c1e9bb57cc951ae12931278eea.JPG', 5, 1, 1, NULL, 6, '2012-07-21 12:41:01', 500, 2, 1, '', '', '', '', '', '', '', 'ПЗК Canon', 'pzk-canon', 'ПЗК для струйных принтеров и МФУ Canon', '<p>ПЗК для струйных принтеров и МФУ Canon </p>', 'ПЗК Canon ', 'ПЗК Canon ', 'ПЗК для Canon ', NULL, NULL),
(23, '66441222e46ff4f81a7ec4ca2f830bb6.JPG', 5, 1, 1, NULL, 9, '2012-07-21 12:41:42', 500, 2, 1, '', '', '', '', '', '', '', 'ПЗК HP', 'pzk-hp', 'ПЗК для струйных принтеров и МФУ HP', '<p>ПЗК для струйных принтеров и МФУ HP</p>', 'ПЗК HP', 'ПЗК HP', 'ПЗК для HP', NULL, NULL),
(24, '27e8ba39e19ba92b0fe4ad7f5c2d5e98.JPG', 5, 1, 1, NULL, 12, '2012-07-21 12:42:45', 500, 2, 1, '', '', '', '', '', '', '', 'ПЗК Brother', 'pzk-brother', 'ПЗК для струйных принтеров и МФУ Brother', '<p>ПЗК для струйных принтеров и МФУ Brother</p>', 'ПЗК Brother', 'ПЗК Brother', 'ПЗК для  Brother', NULL, NULL),
(25, '7f828f854f91e297850187a43881ad70.JPG', 9, 1, 1, NULL, 4, '2012-07-21 12:46:01', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы Epson', 'chipy-epson', 'Чипы для струйных и лазерных  Epson', '<p>Чипы для струйных и лазерных  Epson</p>', 'Чипы Epson ', 'Чипы Epson ', 'чипы для epson', NULL, NULL),
(26, 'DSC04531.JPG', 9, 1, 1, 'default', 10, '2012-07-21 12:46:49', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы Canon', 'chipy-canon', 'Чипы для лазерных принтеров Canon', '<p>Чипы  лазерных принтеров Canon</p>', 'Чипы Canon ', 'Чипы Canon ', 'Чип Canon ', NULL, NULL),
(27, 'DSC04533.JPG', 9, 1, 1, 'default', 15, '2012-07-21 12:47:23', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы HP', 'chipy-hp', 'Чипы для лазерных принтеров HP', '<p>Чипы для лазерных принтеров HP</p>', 'Чипы HP', 'Чипы HP', 'Чипы HP', NULL, NULL),
(28, 'DSC04537.JPG', 9, 1, 1, 'default', 18, '2012-07-21 12:47:56', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы Samsung', 'chipy-samsung', 'Чипы для лазерных принтеров Samsung', '<p>Чипы для лазерных принтеров Samsung</p>', 'Чипы Samsung', 'Чипы Samsung', 'Samsung чип ', NULL, NULL),
(29, 'DSC04535.JPG', 9, 1, 1, 'default', 22, '2012-07-21 12:48:32', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы Xerox', 'chipy-xerox', 'Чипы для лазерных принтеров Xerox', '<p>Чипы для лазерных принтеров Xerox</p>', 'Чипы Xerox ', 'Чипы Xerox ', 'Чип Xerox ', NULL, NULL),
(30, 'Epson2.jpg', 6, 1, 1, 'default', 6, '2012-07-21 12:50:04', 500, 2, 1, '', '', '', '', '', '', '', 'Картриджи Epson', 'kartridji-epson', 'Оригинальные картриджи Epson', '<p>Оригинальные картриджи Epson.</p>\r\n<p>Картриджи в техупаковке - стартовые картриджи снятые с нового принтера. Упаковка не повреждена. Срок гарантии не истек.</p>', 'Картриджи Epson ', 'Картриджи Epson ', 'струйные картриджи epson, epson картриджи', NULL, NULL),
(31, 'Canon2.jpg', 6, 1, 1, 'default', 10, '2012-07-21 12:50:34', 500, 2, 1, '', '', '', '', '', '', '', 'Картриджи Canon', 'kartridji-canon', 'Оригинальные и совместимые картриджи Canon', '<p>Оригинальные и совместимые картриджи Canon</p>', 'Картриджи Canon ', 'Картриджи Canon ', 'струйные картриджи canon', NULL, NULL),
(32, 'HP2.jpg', 6, 1, 1, 'default', 14, '2012-07-21 12:51:18', 500, 2, 1, '', '', '', '', '', '', '', 'Картриджи HP', 'kartridji-hp', 'Оригинальные и не оригинальные картриджи HP', '<p>Оригинальные и не оригинальные картриджи HP</p>', 'Картриджи HP', 'Картриджи HP', 'струйные картриджи hp', NULL, NULL),
(33, 'Brother__Lexmark__Sharp.jpg', 6, 1, 1, 'default', 18, '2012-07-21 12:52:44', 500, 2, 1, '', '', '', '', '', '', '', 'Картриджи Brother, Lexmark, Sharp', 'kartridji-brother-lexmark-sharp', 'Оригинальные и не оригинальные картриджи Brother, Lexmark, Sharp', '<p>Оригинальные и не оригинальные картриджи&nbsp;Brother, Lexmark, Sharp</p>', 'Картриджи Brother, Lexmark, Sharp', 'Картриджи Brother, Lexmark, Sharp', 'струйный brother, картридж Brother, картридж Lexmark, картридж Sharp', NULL, NULL),
(34, 'DSC04540.JPG', 7, 1, 1, 'default', 3, '2012-07-21 12:56:58', 500, 2, 1, '', '', '', '', '', '', '', 'Картридж Epson', 'kartridj-epson', 'Оригинальные и не оригинальные лазерные картриджи Epson', '<p>Оригинальные и не оригинальные лазерные картриджи Epson</p>', 'Картридж Epson ', 'Картридж Epson ', 'лазерный картридж epson', NULL, NULL),
(35, '40a72839b3075388337d69d41f5d1721.JPG', 7, 1, 1, NULL, 7, '2012-07-21 12:57:36', 500, 2, 1, '', '', '', '', '', '', '', 'Картридж Canon', 'kartridj-canon', 'Оригинальные и не оригинальные лазерные картриджи Canon', '<p>Оригинальные и не оригинальные лазерные картриджи Canon</p>', 'Картридж Canon ', 'Картридж Canon ', 'лазерные картриджи canon, картриджи canon', NULL, NULL),
(36, '9f90bf189b2cd7a78672aa60cb5c472b.JPG', 7, 1, 1, NULL, 12, '2012-07-21 12:58:11', 500, 2, 1, '', '', '', '', '', '', '', 'Картридж HP', 'kartridj-hp', 'Оригинальные и не оригинальные лазерные картриджи HP', '<p>Оригинальные и не оригинальные лазерные картриджи HP</p>', 'Картридж HP', 'Картридж HP', 'лазерные картриджи hp, картриджи hp', NULL, NULL),
(37, 'd245785e763e8fbe007e24ff306de07e.JPG', 7, 1, 1, NULL, 17, '2012-07-21 12:59:38', 500, 2, 1, '', '', '', '', '', '', '', 'Картридж Samsung', 'kartridj-samsung', 'Оригинальные и не оригинальные лазерные картриджи Samsung', '<p>Оригинальные и не оригинальные лазерные картриджи Samsung</p>', 'Картридж Samsung', 'Картридж Samsung', 'лазерные картриджи samsung, картриджи samsung', NULL, NULL),
(38, '20d3659e01aca939b8c02fec9a48ca2a.JPG', 7, 1, 1, NULL, 21, '2012-07-21 13:00:48', 500, 2, 1, '', '', '', '', '', '', '', 'Картридж Xerox', 'kartridj-xerox', 'Оригинальные и не оригинальные лазерные картриджи Xerox', '<p>Оригинальные и не оригинальные лазерные картриджи Xerox</p>', 'Картридж Xerox ', 'Картридж Xerox ', 'лазерные картриджи xerox, картриджи xerox', NULL, NULL),
(39, '402fab2a5442cd14d1cad30261d7147e.JPG', 7, 1, 1, NULL, 24, '2012-07-21 13:01:33', 500, 2, 1, '', '', '', '', '', '', '', 'Картридж Brother', 'kartridj-brother', 'Оригинальные и не оригинальные лазерные картриджи Brother', '<p>Оригинальные и не оригинальные лазерные картриджи Brother</p>', 'Картридж Brother', 'Картридж Brother', 'лазерный картридж Brother, картридж brother', NULL, NULL),
(40, 'a8d480b9168bba77b4884898f7dcfcac.JPG', 10, 1, 1, NULL, 7, '2012-07-21 13:02:51', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП картриджа Canon', 'zip-kartridja-canon', 'Комплектующие, расходные материалы для лазерных картриджей Canon', '<p>Комплектующие, расходные материалы для лазерных картриджей Canon</p>', 'ЗИП картриджа Canon ', 'ЗИП картриджа Canon ', 'ЗИП картриджа Canon ', NULL, NULL),
(41, 'aa7685a3fd4ac5b17cdb420b716082ac.JPG', 10, 1, 1, NULL, 11, '2012-07-21 13:03:19', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП картриджа HP', 'zip-kartridja-hp', 'Комплектующие, расходные материалы для лазерных картриджей HP', '<p>Комплектующие, расходные материалы для лазерных картриджей HP</p>', 'ЗИП картриджа HP', 'ЗИП картриджа HP', 'ЗИП картриджа HP', NULL, NULL),
(42, '678fb2126ffc50645029c50643507339.JPG', 10, 1, 1, NULL, 15, '2012-07-21 13:04:05', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП картриджа Samsung', 'zip-kartridja-samsung', 'Комплектующие, расходные материалы для лазерных картриджей Samsung', '<p>Комплектующие, расходные материалы для лазерных картриджей Samsung</p>', 'ЗИП картриджа Samsung', 'ЗИП картриджа Samsung', 'ЗИП картриджа Samsung', NULL, NULL),
(43, 'DSC04539.JPG', 10, 1, 1, 'default', 19, '2012-07-21 13:08:32', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП картриджа Xerox', 'zip-kartridja-xerox', 'Комплектующие, расходные материалы для лазерных картриджей Xerox', '<p>Комплектующие, расходные материалы для лазерных картриджей Xerox</p>', 'ЗИП картриджа Xerox ', 'ЗИП картриджа Xerox ', 'ЗИП картриджа Xerox ', NULL, NULL),
(45, 'DSC01058.JPG', 10, 1, 1, 'default', 23, '2012-07-21 13:14:54', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП картриджа Brother', 'zip-kartridja-brother', 'Комплектующие, расходные материалы для лазерных картриджей Brother', '<p>Комплектующие, расходные материалы для лазерных картриджей Brother</p>', 'ЗИП картриджа Brother', 'ЗИП картриджа Brother', 'ЗИП картриджа Brother', NULL, NULL),
(46, 'b6bf8d3a63917e59c5f1dc1d64510eba.JPG', 8, 1, 1, NULL, 15, '2012-07-21 13:16:02', 500, 2, 1, '', '', '', '', '', '', '', 'Epson с СНПЧ и ПЗК', 'epson-s-ustanovlennym-snpch-ili-pzk', 'Новый струйный принтер Epson, комплектация по вашему выбору. Американские и европейские модели принтеров и мфу.', '<p>Новый струйный принтер Epson, комплектация по вашему выбору. Американские и европейские модели принтеров и мфу. Без оригинальных картриджей. Без гарантии на печатающую головку.</p>', 'Epson  с установленным СНПЧ или ПЗК', 'Epson  с установленным СНПЧ или ПЗК', 'купить принтер epson, принтер с снпч, принтер epson с снпч, epson stylus photo снпч, принтер с установленным снпч', NULL, NULL),
(47, '8583939aaf2d857595362654231ae4d4.JPG', 8, 1, 1, NULL, 20, '2012-07-21 13:16:57', 500, 2, 1, '', '', '', '', '', '', '', 'Прошитый Samsung', 'proshityi-samsung', 'Прошитый Samsung', '<p>Прошитый Samsung</p>', 'Прошитый Samsung', 'Прошитый Samsung', 'купить принтер лазерный, купить принтер samsung, ', NULL, NULL),
(48, '209b4de8db83a6cfafe985cf4079d7e8.JPG', 8, 1, 1, NULL, 29, '2012-07-21 13:17:45', 500, 2, 1, '', '', '', '', '', '', '', 'Прошитый   Xerox', 'proshityi-xerox', 'Прошитый   Xerox', '<p>Прошитый   Xerox</p>', 'Прошитый   Xerox', 'Прошитый   Xerox', 'xerox купить, купить принтер xerox', NULL, NULL),
(49, 'acd774ab179c7403c5dc99dc5cbe0739.JPG', 15, 1, 1, NULL, 7, '2012-07-21 13:19:03', 500, 2, 1, '', '', '', '', '', '', '', 'Прошивка Epson', 'proshivka-epson', 'Прошивка микросхемы Epson', '<p>Прошивка микросхемы Epson</p>', 'Прошивка Epson', 'Прошивка Epson', 'прошивка epson, прошивка принтера epson', NULL, NULL),
(50, '591a3f7764d634abb4b62d9cffbce091.JPG', 15, 1, 1, NULL, 14, '2012-07-21 13:25:36', 500, 2, 1, '', '', '', '', '', '', '', 'Прошивки Samsung', 'proshivki-samsung', 'Прошивки принтера Samsung, генераторы прошивок samsung, генераторы фиксом samsung, скачать генератор samsung', '<p>Прошивки принтера Samsung, генераторы прошивок samsung, генераторы фиксом samsung</p>', 'Прошивки принтера Samsung, генераторы прошивок samsung, генераторы фиксом samsung', 'Прошивки принтера Samsung, генераторы прошивок samsung, генераторы фиксом samsung', 'прошивка для samsung, прошивка samsung ml, прошивка samsung scx, прошивка принтера samsung, генератор прошивок скачать', NULL, NULL),
(51, '779faba05743b7afbb0978a53ca437c0.JPG', 15, 1, 1, NULL, 18, '2012-07-21 13:32:08', 500, 2, 1, '', '', '', '', '', '', '', 'Прошивки Xerox', 'proshivki-xerox', 'Прошивки принтера Xerox, генераторы прошивок Xerox, генераторы фиксом Xerox, скачать генератор Xerox', '<p>Прошивки принтера Xerox, генераторы прошивок Xerox, генераторы фиксом Xerox, скачать генератор Xerox</p>', 'Прошивки принтера Xerox, генераторы прошивок Xerox, генераторы фиксом Xerox, скачать генератор Xerox', 'Прошивки принтера Xerox, генераторы прошивок Xerox, генераторы фиксом Xerox, скачать генератор Xerox', 'прошивка xerox, xerox phaser прошивка, прошивка принтера xerox', NULL, NULL),
(52, '65e6edafde4a8862f5ee79c4b1680e73.JPG', 16, 1, 1, NULL, 4, '2012-07-21 13:37:48', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП Epson', 'zip-epson', 'Комплектующие, расходные материалы для принтеров Epson', '<p>Комплектующие, расходные материалы для принтеров Epson</p>', 'ЗИП Epson ', 'ЗИП Epson ', 'epson детали, epson плата, расходные материалы epson', NULL, NULL),
(53, '6349089c2659c011b39cf037f9157de3.JPG', 16, 1, 1, NULL, 8, '2012-07-21 13:38:32', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП Canon', 'zip-canon', 'Комплектующие, расходные материалы для принтеров Canon', '<p>Комплектующие, расходные материалы для принтеров Canon</p>', 'ЗИП Canon ', 'ЗИП Canon ', 'canon платы, canon детали, canon расходные материалы', NULL, NULL),
(54, 'bb265aabbff4d0bc04dd19a2c562f228.JPG', 16, 1, 1, NULL, 12, '2012-07-21 13:39:13', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП HP', 'zip-hp', 'Комплектующие, расходные материалы для принтеров HP', '<p>Комплектующие, расходные материалы для принтеров HP</p>', 'ЗИП HP', 'ЗИП HP', 'hp детали, детали для hp, платы hp, расходные материалы hp', NULL, NULL),
(55, '1-DSC00415.JPG', 16, 1, 1, NULL, 16, '2012-07-21 13:40:03', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП Samsung', 'zip-samsung', 'Комплектующие, расходные материалы для принтеров Samsung', '<p>Комплектующие, расходные материалы для принтеров Samsung</p>', 'ЗИП Samsung', 'ЗИП Samsung', 'samsung детали, детали samsung, ролик захвата samsung, samsung  расходные материалы', NULL, NULL),
(56, '1-DSC004151.JPG', 16, 1, 1, NULL, 19, '2012-07-21 13:41:01', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП Xerox', 'zip-xerox', 'Комплектующие, расходные материалы для принтеров Xerox', '<p>Комплектующие, расходные материалы для принтеров Xerox</p>', 'ЗИП Xerox ', 'ЗИП Xerox ', 'xerox платы, xerox зип, xerox расходные материалы', NULL, NULL),
(57, 'DSC02633.JPG', 16, 1, 1, 'default', 23, '2012-07-21 13:41:42', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП Brother', 'zip-brother', 'Комплектующие, расходные материалы для принтеров Brother', '<p>Комплектующие, расходные материалы для принтеров Brother</p>', 'ЗИП Brother', 'ЗИП Brother', 'brother детали, brother платы, расходные материалы brother', NULL, NULL),
(58, 'DSC04561.JPG', 11, 1, 1, 'default', 13, '2012-07-21 13:42:44', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер HP', 'toner-hp', 'Тонер для лазерных принтеров HP', '<p>Купить тонер для лазерных принтеров HP, оптовые цены</p>', 'Тонер HP', 'Тонер HP', 'Тонер HP, тонер для hp, купить тонер hp, тонер hp оптом', NULL, NULL),
(59, 'DSC04563.JPG', 11, 1, 1, 'default', 18, '2012-07-21 13:43:14', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Canon', '', 'Тонер для лазерных принтеров Canon', '<p>Купить тонер для лазерных принтеров Canon оптом</p>', 'Тонер Canon, тонер для canon, купить тонер canon , тонер canon  оптом', 'Тонер Canon, тонер для canon, купить тонер canon , тонер canon  оптом', 'Тонер Canon, тонер для canon, купить тонер canon , тонер canon  оптом', NULL, NULL),
(60, 'DSC04566.JPG', 11, 1, 1, 'default', 5, '2012-07-21 13:43:40', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Epson', 'toner-epson', 'Тонер для лазерных принтеров Epson', '<p>Тонер для лазерных принтеров Epson</p>', 'Тонер Epson ', 'Тонер Epson ', 'тонер epson, тонер для epson ', NULL, NULL),
(61, 'DSC04562.JPG', 11, 1, 1, 'default', 25, '2012-07-21 13:44:34', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Samsung', 'toner-samsung', 'Тонер для лазерных принтеров Samsung', '<p>Купить тонер для лазерных принтеров Samsung оптом</p>', 'Тонер Samsung ,  Тонер Samsung купить  , тонер для   Samsung, тонер  Samsung   оптом', 'Тонер Samsung ,  Тонер Samsung купить  , тонер для   Samsung, тонер  Samsung   оптом', 'Тонер Samsung ,  Тонер Samsung купить  , тонер для   Samsung, тонер  Samsung   оптом', NULL, NULL),
(62, 'DSC04565.JPG', 11, 1, 1, 'default', 31, '2012-07-21 13:45:08', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Xerox', 'toner-xerox', 'Тонер для лазерных принтеров Xerox', '<p>Купить тонер для лазерных принтеров Xerox оптом</p>', 'Тонер Xerox ,  Тонер Xerox   купить  , тонер для   Xerox , тонер  Xerox  оптом', 'Тонер Xerox ,  Тонер Xerox   купить  , тонер для   Xerox , тонер  Xerox  оптом', 'Тонер Xerox ,  Тонер Xerox   купить  , тонер для   Xerox , тонер  Xerox  оптом', NULL, NULL),
(63, 'DSC04558.JPG', 11, 1, 1, 'default', 44, '2012-07-21 13:45:55', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Brother', 'toner-brother', 'Тонер для лазерных принтеров Brother', '<p>Тонер для лазерных принтеров Brother</p>', 'Тонер Brother', 'Тонер Brother', 'Тонер Brother,  тонер для brother', NULL, NULL),
(64, 'DSC04559.JPG', 11, 1, 1, 'default', 48, '2012-07-21 13:46:32', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Panasonic', 'toner-panasonic', 'Тонер для лазерных принтеров Panasonic', '<p>Купить тонер для лазерных принтеров Panasonic оптом</p>', 'Тонер Panasonic,  Тонер Panasonic купить  , тонер для   Panasonic, тонер  Panasonic оптом', 'Тонер Panasonic,  Тонер Panasonic купить  , тонер для   Panasonic, тонер  Panasonic оптом', 'Тонер Panasonic,  Тонер Panasonic купить  , тонер для   Panasonic, тонер  Panasonic оптом', NULL, NULL),
(65, 'DSC04564.JPG', 11, 1, 1, 'default', 53, '2012-07-21 13:48:08', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Kyocera', 'toner-kyocera', 'Тонер для лазерных принтеров Kyocera', '<p>Купить тонер для лазерных принтеров Kyocera оптом</p>', 'Тонер kyocera купить  , тонер для  Kyocera, тонер kyocera  оптом', 'Тонер kyocera купить  , тонер для  Kyocera, тонер kyocera  оптом', 'Тонер kyocera купить  , тонер для  Kyocera, тонер kyocera  оптом', NULL, NULL),
(66, '5a4111bb6f56b4acd8ef641c269a9221.JPG', 12, 1, 1, NULL, 5, '2012-07-21 13:49:04', 500, 2, 1, '', '', '', '', '', '', '', 'Чернила Epson', 'chernila-epson', 'Чернила струйных принтеров Epson', '<p>Здесь вы можете купить чернила для струйных принтеров Epson</p>', 'чернила для epson, чернила epson stylus, купить чернила для epson, купить чернила для струйного принтера epson', 'чернила для epson, чернила epson stylus, купить чернила для epson, купить чернила для струйного принтера epson', 'чернила для epson, чернила epson stylus, купить чернила для epson, купить чернила для струйного принтера epson', NULL, NULL),
(67, '201371f36c80cfb0f4b9493ca80e20e8.JPG', 12, 1, 1, NULL, 11, '2012-07-21 13:49:48', 500, 2, 1, '', '', '', '', '', '', '', 'Чернила Canon', 'chernila-canon', 'Чернила струйных принтеров Canon', '<p>Купить чернила для картриджей струйного принтера Canon Pixma</p>', 'чернила для Canon, купить чернила для Canon, купить чернила для струйного принтера Canon, чернила canon pixma', 'чернила для Canon, купить чернила для Canon, купить чернила для струйного принтера Canon, чернила canon pixma', 'чернила для Canon, купить чернила для Canon, купить чернила для струйного принтера Canon, чернила canon pixma', NULL, NULL),
(68, 'e300ab4e4dfdc8741185aa7e13bbdc2a.JPG', 12, 1, 1, NULL, 16, '2012-07-21 13:50:25', 500, 2, 1, '', '', '', '', '', '', '', 'Чернила HP', 'chernila-hp', 'Чернила струйных принтеров HP', '<p>Купить чернила для картриджей струйных принтеров HP</p>', 'чернила для HP, купить чернила для HP, купить чернила для струйного принтера HP, чернила HP', 'чернила для HP, купить чернила для HP, купить чернила для струйного принтера HP, чернила HP', 'чернила для HP, купить чернила для HP, купить чернила для струйного принтера HP, чернила HP', NULL, NULL),
(69, 'DSC02240.JPG', 12, 1, 1, 'default', 19, '2012-07-21 13:50:56', 500, 2, 1, '', '', '', '', '', '', '', 'Чернила Brother', 'chernila-brother', 'Чернила струйных принтеров Brother', '<p>Купить чернила для картриджей струйных принтеров Brother</p>', 'чернила для Brother, купить чернила для Brother, купить чернила для струйного принтера Brother, чернила Brother', 'чернила для Brother, купить чернила для Brother, купить чернила для струйного принтера Brother, чернила Brother', 'чернила для Brother, купить чернила для Brother, купить чернила для струйного принтера Brother, чернила Brother', NULL, NULL),
(70, 'ecd5f118a1359262f4b81a5f71aeaec3.JPG', 13, 1, 1, NULL, 3, '2012-07-21 13:52:39', 500, 2, 1, '', '', '', '', '', '', '', 'Фотобумага глянцевая', 'fotobumaga-glyancevaya', 'Фотобумага глянцевая для струйных принтеров', '<p>Фотобумага глянцевая для струйных принтеров</p>', 'Фотобумага глянцевая', 'Фотобумага глянцевая', 'Фотобумага глянцевая', NULL, NULL),
(71, '28b5fcd3dce6b951019439f08db2bc1c.JPG', 13, 1, 1, NULL, 7, '2012-07-21 13:53:08', 500, 2, 1, '', '', '', '', '', '', '', 'Фотобумага матовая', 'fotobumaga-matovaya', 'Фотобумага матовая для струйных принтеров', '<p>Фотобумага матовая для струйных принтеров</p>', 'Фотобумага матовая', 'Фотобумага матовая', 'Фотобумага матовая', NULL, NULL),
(72, 'thumb_1961ec720aaf2b5389e5f2df3838564e.jpg', 13, 1, 1, 'default', 12, '2012-07-21 13:53:58', 500, 2, 1, '', '', '', '', '', '', '', 'Фотобумага с тиснением', 'fotobumaga-s-tesneniem', 'Фотобумага с тиснением для струйных принтеров.', '<p>Фотобумага с тиснением для струйных принтеров.</p>', 'Фотобумага с теснением', 'Фотобумага с теснением', 'Фотобумага с теснением', NULL, NULL),
(73, 'd3c40cda31184fbcf7cdd4ce5f122485.JPG', 13, 0, 1, NULL, 14, '2012-07-21 13:55:05', 500, 2, 1, '', '', '', '', '', '', '', 'Фотобумага для лазерных принтеров', 'fotobumaga-dlya-lazernyh-printerov', 'Фотобумага для лазерных принтеров', '<p>Фотобумага для лазерных принтеров</p>', 'Фотобумага для лазерных принтеров', 'Фотобумага для лазерных принтеров', 'Фотобумага для лазерных принтеров', NULL, NULL),
(74, 'banner.jpg', 13, 1, 1, 'default', 18, '2012-07-21 13:55:53', 500, 2, 1, '', '', '', '', '', '', '', 'Рулонная фотобумага', 'rulonnaya-fotobumaga', 'Рулонная фотобумага для струйных принтеров', '<p>Рулонная фотобумага для струйных принтеров</p>', 'Рулонная фотобумага', 'Рулонная фотобумага', 'Рулонная фотобумага, рулонная бумага', NULL, NULL),
(75, '7b5a18249253f25a35ac0a0786d2d5bf.JPG', 14, 1, 1, NULL, 5, '2012-07-21 13:56:42', 500, 2, 1, '', '', '', '', '', '', '', 'Промывочная жидкость для печатающих головок', 'promyvochnaya-jidkost-dlya-epson', 'Промывочная жидкость для пьезоструйных головок Epson, термоструйных HP и Canon', '<p>Промывочная жидкость для пьезоструйных головок Epson, термоструйных HP и Canon</p>\r\n<p>Промывочные жидкости от засоров различных чернил - для текстильной печати, для сольвентов, сублимационных чернил, пищевых чернил, пигментных и водных чернил.</p>', 'Промывочная жидкость для Epson ', 'Промывочная жидкость для Epson ', 'Промывочная жидкость для Epson, промывочная жидкость для принтера epson ', NULL, NULL),
(76, '587c2cdc7fd38a611dc45a503c5bf911.JPG', 14, 1, 1, NULL, 7, '2012-07-21 13:57:49', 500, 2, 1, '', '', '', '', '', '', '', 'Смазки и масла', 'promyvochnaya-jidkost-dlya-canon', 'Смазки и масла для техники, термосмазка, силикон, смазка для механизмов', '<p>Смазки и масла для техники, термосмазка, силикон, смазка для механизмов</p>', 'Смазки и масла для техники, термосмазка, силикон, смазка для механизмов', 'Смазки и масла для техники, термосмазка, силикон, смазка для механизмов', 'Смазки и масла для техники, термосмазка, силикон, смазка для механизмов', NULL, NULL),
(77, '4c5f4433e31e49dcab5411aa20188b57.JPG', 14, 1, 1, NULL, 11, '2012-07-21 13:58:21', 500, 2, 1, '', '', '', '', '', '', '', 'Восстанавливающие, очищающие средства', 'promyvochnaya-jidkost-dlya-hp', 'Восстанавливающие, очищающие средства для пластика, роликов заряда, фотовалов резиновых деталей и пластиковых корпусов', '<p>Восстанавливающие, очищающие средства для пластика, роликов заряда, фотовалов резиновых деталей и пластиковых корпусов</p>', 'Восстанавливающие, очищающие средства для пластика, роликов заряда, фотовалов резиновых деталей и пластиковых корпусов', 'Восстанавливающие, очищающие средства для пластика, роликов заряда, фотовалов резиновых деталей и пластиковых корпусов', 'Восстанавливающие, очищающие средства для пластика, очистить ролик заряда, очистить фотовал, очистить резиновую деталей, очистить пластиковый корпус', NULL, NULL),
(78, '1d339deab981c5ae4d80abf1bad06558.JPG', 14, 0, 1, NULL, 17, '2012-07-21 13:58:53', 500, 2, 1, '', '', '', '', '', '', '', 'Промывочная жидкость для Brother', 'promyvochnaya-jidkost-dlya-brother', 'Промывочная жидкость для термоструйных головок Brother', '<p>Промывочная жидкость для термоструйных головок Brother</p>', 'Промывочная жидкость для Brother', 'Промывочная жидкость для Brother', 'Промывочная жидкость для Brother', NULL, NULL),
(79, 'a3b3406c55f62dd0b7a19be78fd016b3.JPG', 1, 1, 1, NULL, 22, '2012-07-23 17:32:22', 500, 2, 1, '', '', '', '', '', '', '', 'СНПЧ Конструктор', 'snpch-konstruktor', 'Составные части СНПЧ', '<p>Составные части СНПЧ</p>\r\n<p> </p>', 'СНПЧ Конструктор', 'СНПЧ Конструктор', 'снпч конструктор', NULL, NULL),
(81, '533f9838707b94ccd2ea3adf73275714.JPG', 18, 1, 1, NULL, 5, '2012-08-11 20:43:06', 500, 2, 1, '', '', '', '', '', '', '', 'Транзисторы', 'tranzistory', 'Редкие транзисторы для печатающей техники', '', 'Транзисторы купить', 'Транзисторы купить', 'Транзисторы купить', NULL, NULL),
(87, '3cfa0ef1616e84178ec51847aa6d68c6.JPG', 18, 1, 1, NULL, 10, '2012-08-21 17:01:07', 500, 2, 1, '', '', '', '', '', '', '', 'Микросхемы памяти EEPROM', 'mikroshemy-pamyati-eeprom', 'Микросхемы памяти EEPROM', '<p>Микросхемы памяти EEPROM</p>', 'Микросхемы памяти EEPROM', 'Микросхемы памяти EEPROM', 'Микросхемы памяти EEPROM', NULL, NULL),
(83, NULL, 82, 1, 1, NULL, 2, '2012-08-13 12:21:41', 500, 2, 1, '', '', '', '', '', '', '', 'Расходные материалы для широкоформатных принтеров Epson', 'rashodnye-materialy-dlya-shirokoformatnyh-printerov-epson', 'СНПЧ, картриджи, чернила для широкоформатных принтеров Epson', '<p>СНПЧ, картриджи, чернила для широкоформатных принтеров Epson</p>', 'Расходные материалы для широкоформатных принтеров Epson', 'Расходные материалы для широкоформатных принтеров Epson', 'плоттеры epson, картриджи для  плоттеров epson, снпч для  плоттеров epson, широкоформатный принтер epson', NULL, NULL),
(84, NULL, 82, 1, 1, NULL, 4, '2012-08-13 12:24:11', 500, 2, 1, '', '', '', '', '', '', '', 'Расходные материалы для широкоформатных принтеров Canon', 'rashodnye-materialy-dlya-shirokoformatnyh-printerov-canon', 'СНПЧ, картриджи, чернила для широкоформатных принтеров Canon', '<p>СНПЧ, картриджи, чернила для широкоформатных принтеров Canon</p>', 'Расходные материалы для широкоформатных принтеров Canon', 'Расходные материалы для широкоформатных принтеров Canon', 'картриджи для  плоттеров canon, плоттер canon, снпч для  плоттеров canon ', NULL, NULL),
(85, NULL, 82, 1, 1, NULL, 6, '2012-08-13 12:28:02', 500, 2, 1, '', '', '', '', '', '', '', 'Расходные материалы для широкоформатных принтеров HP', 'rashodnye-materialy-dlya-shirokoformatnyh-printerov-hp', 'СНПЧ, картриджи, чернила для широкоформатных принтеров HP', '<p>СНПЧ, картриджи, чернила для широкоформатных принтеров HP</p>', 'Расходные материалы для широкоформатных принтеров HP', 'Расходные материалы для широкоформатных принтеров HP', 'картриджи для  плоттеров hp, картридж для плоттера hp, плоттер hp designjet', NULL, NULL),
(86, '2678554d5b765182a5f55b85b9be4f5f.JPG', 18, 1, 1, NULL, 7, '2012-08-21 16:38:09', 500, 2, 1, '', '', '', '', '', '', '', 'Микросхемы памяти FLASH', 'mikroshemy-pamyati-flash', 'Микросхемы памяти Flash', '<p>Микросхемы памяти Flash. По оптовой цене. </p>', 'Микросхемы памяти Flash', 'Микросхемы памяти Flash', 'Микросхемы памяти Flash', NULL, NULL),
(88, 'cce3296b15cab02ada78f7daf31559ad.JPG', 18, 1, 1, NULL, 13, '2012-08-21 20:42:29', 500, 2, 1, '', '', '', '', '', '', '', 'Микроконтроллеры', 'microcontrollers', 'PIC AVR и ARM микроконтроллеры', '<p>PIC AVR и ARM микроконтроллеры </p>', 'PIC AVR и ARM микроконтроллеры ', 'PIC AVR и ARM микроконтроллеры ', 'Микроконтроллер, купить Микроконтроллер', NULL, NULL),
(89, '1-DSC004142.JPG', 52, 1, 1, NULL, 6, '2012-09-10 20:40:18', 500, 2, 1, '', '', '', '', '', '', '', 'Print Head ( Печатающая головка )', 'pechatayuschaya-golovka-epson', 'Купить печатающую головку ( printhead ) принтера Epson.', '<p>Купить печатающую головку ( printhead ) принтера Epson.</p>\r\n<p>Все комплектующие  новые, оригинальные.</p>\r\n<p>Головка подлежит возврату только если вы не вставляли её в принтер. Гарантия на печатающую головку не распространяется.</p>', 'Купить печатающую головку ( printhead ) принтера Epson.', 'Купить печатающую головку ( printhead ) принтера Epson.', 'головка epson, печатающая головка epson, головка принтера epson, печатающая головка epson stylus, печатающая головка epson купить', NULL, NULL),
(90, '30586fba66804fb7e41630e4fde26c1b.JPG', 18, 1, 1, NULL, 68, '2012-10-29 16:06:37', 500, 2, 1, '', '', '', '', '', '', '', 'Конденсаторы', 'capacitor', 'Конденсаторы', '<p>Конденсаторы</p>', 'Конденсаторы', 'Конденсаторы', 'Конденсаторы', NULL, NULL),
(91, 'f008589f9c380a9159db7e7d09eeda7c.JPG', 18, 1, 1, NULL, 71, '2012-10-29 16:49:05', 500, 2, 1, '', '', '', '', '', '', '', 'Термоэлектрический элемент Пельте', 'termoelektricheskii-element-pel-te', 'Термоэлектрический элемент Пельте', '<p>Термоэлектрический элемент Пельте</p>', 'Термоэлектрический элемент Пельте', 'Термоэлектрический элемент Пельте', 'Термоэлектрический элемент Пельте, элемент пельте', NULL, NULL),
(92, 'bd961be0eec77cfbcd1a7bc3c36dd394.JPG', 17, 1, 1, NULL, 6, '2012-10-29 17:18:58', 500, 2, 1, '', '', '', '', '', '', '', 'Универсальные адаптеры ( панельки )', 'universal-nye-adaptery-panel-ki', 'Универсальные адаптеры ( панельки ) для программирования микросхем. Подходят на любые программаторы. Имеют разводку pin-to-pin.\r\nИзготовитель  - Япония', '<p>Универсальные адаптеры ( панельки ) для программирования микросхем.</p>\r\n<p>Подходят на любые программаторы.</p>\r\n<p>Имеют разводку pin-to-pin. </p>\r\n<p><br />Изготовитель  - Япония</p>', 'Универсальные адаптеры ( панельки ) для программирования микросхем', 'Универсальные адаптеры ( панельки ) для программирования микросхем', 'soic, sop, tsop, plcc', NULL, NULL),
(97, 'DSC04542.JPG', 7, 1, 1, 'default', 32, '2012-12-28 11:23:48', 500, 2, 1, '', '', '', '', '', '', '', 'Картридж OKI', 'kartridzh-oki', 'Картридж OKI', '<p>Картридж OKI</p>', 'Картридж OKI', 'Картридж OKI', 'Картридж OKI', NULL, NULL),
(93, 'DSC01084.JPG', 15, 1, 1, 'default', 21, '2012-11-05 19:40:12', 500, 2, 1, '', '', '', '', '', '', '', 'Прошитая оригиналом память', 'flash-samsung', 'Прошитая оригиналом Flash память для восстановления принтера.', '<p>Прошитая оригиналом Flash память для восстановления принтера.</p>', 'Прошитая оригиналом Flash память для восстановления принтера.', 'Прошитая оригиналом Flash память для восстановления принтера.', 'Прошитая оригиналом  память', NULL, NULL),
(94, '0a54480ce8c902e8009872a5eeb45c56.JPG', 7, 1, 1, NULL, 28, '2012-11-14 15:59:47', 500, 2, 1, '', '', '', '', '', '', '', 'Картриджи Kyocera', 'kartridji-kyocera', 'Оригинальные и не оригинальные лазерные картриджи Kyocera', '<p>Оригинальные и не оригинальные лазерные картриджи Kyocera</p>', 'Картриджи Kyocera', 'Картриджи Kyocera', 'картридж kyocera, kyocera купить, kyocera цена, тонер картридж kyocera', NULL, NULL),
(95, 'd48a137fe908bbe0e5e317ab89635fcc.JPG', 7, 1, 1, NULL, 30, '2012-11-14 17:34:47', 500, 2, 1, '', '', '', '', '', '', '', 'Картридж Panasonic', 'kartridj-panasonic', 'Оригинальные и не оригинальные лазерные картриджи Panasonic', '<p>Оригинальные и не оригинальные лазерные картриджи Panasonic</p>', 'Картридж Panasonic', 'Картридж Panasonic', 'panasonic картридж, картридж panasonic kx, картриджи для принтеров panasonic, купить картридж panasonic', NULL, NULL),
(98, '29227a3622a26368b7f1846fc4b0f38a.jpg', 9, 1, 1, NULL, 26, '2013-03-23 13:49:40', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы OKI', '', 'Чипы OKI', '<p>Чипы OKI</p>', 'Чипы OKI', 'Чипы OKI', 'Чипы OKI', NULL, NULL),
(99, '52de029a3dc7d05d7327578636dbe5c3.jpg', 13, 1, 1, NULL, 20, '2013-04-05 10:43:48', 500, 2, 1, '', '', '', '', '', '', '', 'Фотобумага мелованная', 'fotobumaga-melovannaia', 'Фотобумага мелованная', '<p>Фотобумага мелованная</p>', 'Фотобумага мелованная', 'Фотобумага мелованная', 'мелованная бумага', NULL, NULL),
(100, 'f6e36c61529ee7abf0120a525b842d7b.jpg', 9, 1, 1, NULL, 28, '2013-05-06 13:20:32', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы Ricoh', 'chipy-ricoh', 'Чипы Ricoh', '<p>Чипы Ricoh</p>', 'Чипы Ricoh', 'Чипы Ricoh', 'Чипы Ricoh', NULL, NULL),
(101, '1-DSC00414.JPG', 53, 1, 1, 'default', 8, '2013-06-24 16:08:16', 500, 2, 1, 'Печатающая головка', 'pechataiushchaia-golovka', 'Печатающая головка для струйных принтеров Canon', '<p>Печатающая головка для струйных принтеров Canon&nbsp;</p>', 'Печатающая головка для струйных принтеров Canon ', 'Печатающая головка для струйных принтеров Canon ', 'Печатающая головка Canon, пг canon', 'Печатающая головка Canon', 'pechataiushchaia-golovka-canon', 'Печатающая головка для струйных принтеров Canon', '<p>Печатающая головка для струйных принтеров Canon</p>', 'Печатающая головка Canon', 'Печатающая головка Canon', 'печатающая головка canon, пг canon', NULL, NULL),
(12397, '20180707_105140.jpg', 53, 1, 1, 'default', 10, '2019-02-14 05:19:17', 500, 2, 1, '', '', '', '', '', '', '', 'Электронная плата Canon', 'elektronnaya-plata-canon', 'Электронная плата Canon', '<p>Электронная плата Canon</p>\r\n<p>Материнская плата Canon</p>', 'Электронная плата Canon', 'Электронная плата Canon', 'Электронная плата Canon, Материнская плата Canon', NULL, NULL),
(102, '1-DSC004141.JPG', 54, 1, 1, 'default', 4, '2013-06-24 16:22:12', 500, 2, 1, '', '', '', '', '', '', '', 'Печатающая головка HP', 'pechataiushchaia-golovka', 'Печатающая головка HP\r\nПечатающие головки для струйных принтеров HP', '<p>Печатающие головки для струйных принтеров HP</p>\r\n<p>Все комплектующие &nbsp;новые, оригинальные.</p>\r\n<p>Головка подлежит возврату только если вы не вставляли её в принтер. Гарантия на печатающую головку не распространяется.</p>', 'Печатающая головка HP', 'Печатающая головка HP', 'печатающая головка hp, пг hp', NULL, NULL),
(103, NULL, 0, 0, 1, NULL, 85, '2013-07-10 15:26:33', 500, 2, 1, '', '', '', '', '', '', '', 'Канцтовары', 'kanctovary', 'Канцтовары', '<p>Канцтовары</p>', 'Канцтовары', 'Канцтовары', 'Канцтовары', NULL, NULL),
(104, 'banner.JPG', 0, 1, 1, NULL, 87, '2013-11-01 10:45:04', 500, 2, 1, '', '', '', '', '', '', '', 'Материалы для наружной рекламы', 'materialy-dlia-naruzhnoi-reclamy', 'Материалы для наружной рекламы', 'Материалы для наружной рекламы', 'Материалы для наружной рекламы', 'Материалы для наружной рекламы', 'Материалы для наружной рекламы', NULL, NULL),
(105, 'DSC00634.JPG', 10, 1, 1, 'default', 28, '2014-01-31 10:28:27', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП картриджа Panasonic', 'zip-kartridzha-panasonic', 'Комплектующие, расходные материалы для лазерных картриджей Panasonic', '<p><span>Комплектующие, расходные материалы для лазерных картриджей</span> Panasonic</p>', 'ЗИП картриджа Panasonic', 'ЗИП картриджа Panasonic', 'ЗИП картриджа Panasonic', NULL, NULL),
(106, '12.jpg', 0, 1, 1, NULL, 89, '2014-07-23 12:52:05', 500, 2, 1, '', '', '', '', '', '', '', 'Сублимация', 'sublimatciia', 'Все для сублимационного термопереноса', '<p>Все для сублимационного термопереноса</p>\r\n<p><span>Интернет-магазин vce-o-printere.ru: возможность заказать все для сублимационного термопереноса с доставкой по низким ценам. В каталоге вы найдете товары высокого качества от лучших мировых производителей.</span></p>', 'Все для сублимационного термопереноса', 'Все для сублимационного термопереноса', ' термоперенос, сублимация', NULL, NULL),
(107, 'DSC045311.JPG', 9, 1, 1, 'default', 31, '2014-10-09 05:58:11', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы Pantum', '', 'Чипы для принтера Pantum', '<p>Чипы для принтера Pantum</p>', 'Чипы Pantum', 'Чипы Pantum', 'Чипы Pantum', NULL, NULL),
(116, 'DSC00436.JPG', 12, 1, 1, NULL, 21, '2014-12-21 12:08:13', 500, 2, 1, '', '', '', '', '', '', '', 'Чернила Epson, Canon, HP в канистре', 'chernila-epson-canon-hp-kanistre-optom', 'Чернила Epson, Canon, HP в канистре\r\nчернила для принтеров оптом', '<p>Чернила Epson, Canon, HP в канистре<br />чернила для принтеров оптом</p>', 'Чернила Epson, Canon, HP в канистре чернила для принтеров оптом', 'Чернила Epson, Canon, HP в канистре чернила для принтеров оптом', 'чернила в канистре, чернила для принтеров оптом', NULL, NULL),
(117, 'DSC03510.JPG', 0, 1, 1, NULL, 91, '2015-06-16 12:45:04', 500, 2, 1, '', '', '', '', '', '', '', '3D печать', '3d-pechat', '3D печать', '<p>3D печать</p>', '3D печать', '3D печать', '3D печать', NULL, NULL),
(118, '404a3d42164363a74d9e3f81b3a9dc92.jpg', 10, 1, 1, 'default', 31, '2016-02-09 12:24:15', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП картриджа Разное', 'zip-kartridzha', 'Комплектующие, расходные материалы для лазерных картриджей', '<p>ЗИП картриджа Разное</p>', 'ЗИП картриджа Разное', 'ЗИП картриджа Разное', 'ЗИП картриджа Разное', NULL, NULL),
(119, 'DSC045441.JPG', 7, 1, 1, 'default', 37, '2016-02-16 11:18:00', 500, 2, 1, '', '', '', '', '', '', '', 'Картридж Toshiba, Sharp, Lexmark, Ricoh', 'coopit-lazerny-e-kartridzhi-printera-mfu-kopira-dlia-pechataiushchei-tekhniki-toshiba-sharp-lexmark-ricoh', 'Купить лазерные картриджи принтера, мфу, копира для печатающей техники Toshiba, Sharp, Lexmark, Ricoh', '<p>Оригинальные и не оригинальные лазерные картриджи Toshiba.</p>\r\n<p>Купить лазерные картриджи принтера, мфу, копира для печатающей техники Toshiba, Sharp, Lexmark, Ricoh</p>', 'Купить лазерные картриджи принтера, мфу, копира для печатающей техники Toshiba, Sharp, Lexmark, Ricoh', 'Купить лазерные картриджи принтера, мфу, копира для печатающей техники Toshiba, Sharp, Lexmark, Ricoh', 'Купить лазерные картриджи принтера, мфу, копира для печатающей техники Toshiba, Sharp, Lexmark, Ricoh', NULL, NULL),
(12347, '20180707_1116162.jpg', 12434, 1, 1, 'default', 9, '0000-00-00 00:00:00', 500, 2, 1, 'Ballance', '', '', '', '', '', '', 'Шлейфы Kyocera', 'shlejfy-kyocera', 'Шлейфы Kyocera', '<p>Шлейфы Kyocera</p>', 'Шлейфы Kyocera', 'Шлейфы Kyocera', 'Шлейфы Kyocera', NULL, NULL),
(12348, 'DSC08024.JPG', 9, 1, 1, 'default', 33, '2016-05-24 08:03:02', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы Kyocera', 'chipy-kyocera', 'Чипы для картриджей принтеров и мфу Kyocera', '<p>Чипы для картриджей принтеров и мфу Kyocera</p>', 'Чипы для картриджей принтеров и мфу Kyocera', 'Чипы для картриджей принтеров и мфу Kyocera', 'Чипы для картриджей Kyocera, чип принтера Kyocera,  чип мфу Kyocera', NULL, NULL),
(12350, 'DSC03500.JPG', 52, 1, 1, NULL, 9, '2016-08-06 16:14:42', 500, 2, 1, '', '', '', '', '', '', '', 'Pump Assy ( Узел подачи чернил в сборе )', '', 'Pump Assy ( Узел подачи чернил в сборе )', '<p>Pump Assy ( Узел подачи чернил в сборе ) принтера Epson </p>', 'Pump Assy ( Узел подачи чернил в сборе )', 'Pump Assy ( Узел подачи чернил в сборе )', 'Pump Assy,  Узел подачи чернил в сборе', NULL, NULL),
(12351, 'DSC03501.JPG', 52, 1, 1, NULL, 11, '2016-08-06 16:25:37', 500, 2, 1, '', '', '', '', '', '', '', 'Board Assy ( Электронная плата )', 'board-assy-e-lektronnaia-plata', 'Board Assy ( Электронная плата )', '<p>Board Assy ( Электронная плата )</p>', 'Board Assy ( Электронная плата )', 'Board Assy ( Электронная плата )', 'Board Assy, Электронная плата', NULL, NULL),
(12352, 'DSC00462.JPG', 52, 1, 1, NULL, 13, '2016-08-06 16:32:46', 500, 2, 1, '', '', '', '', '', '', '', 'DAMPER ( Демпер )', 'damper', 'DAMPER ( Демпер )', '<p>DAMPER ( Демпер )</p>', 'DAMPER ( Демпер )', 'DAMPER ( Демпер )', 'DAMPER, Демпер', NULL, NULL),
(12353, 'DSC03503.JPG', 52, 1, 1, NULL, 15, '2016-08-06 16:37:33', 500, 2, 1, '', '', '', '', '', '', '', 'Cable Assy ( Шлейф в сборе )', 'cable-assy', 'Cable Assy ( Шлейф в сборе )', '<p>Cable Assy ( Шлейф в сборе )</p>', 'Cable Assy ( Шлейф в сборе )', 'Cable Assy ( Шлейф в сборе )', 'Cable Assy, Шлейф в сборе', NULL, NULL),
(12354, 'DSC03506.JPG', 52, 1, 1, NULL, 18, '2016-08-06 16:41:10', 500, 2, 1, '', '', '', '', '', '', '', 'Belt, Scale ( ремень каретки, лента позиционирования )', 'belt-remen-karetki', 'Belt, Scale ( ремень каретки, лента позиционирования )', '<p>Belt, Scale ( ремень каретки, лента позиционирования )</p>', 'Belt, Scale ( ремень каретки, лента позиционирования )', 'Belt, Scale ( ремень каретки, лента позиционирования )', 'Belt, Scale,  ремень каретки, лента позиционирования )', NULL, NULL),
(12355, 'DSC03507.JPG', 52, 1, 1, NULL, 21, '2016-08-06 16:44:09', 500, 2, 1, '', '', '', '', '', '', '', 'Motor Assy ( двигатель )', 'motor-assy', 'Motor Assy ( двигатель )', '<p>Motor Assy ( двигатель )</p>', 'Motor Assy ( двигатель )', 'Motor Assy ( двигатель )', 'Motor Assy, двигатель', NULL, NULL),
(12356, 'DSC03508.JPG', 52, 1, 1, NULL, 24, '2016-08-06 16:46:07', 500, 2, 1, '', '', '', '', '', '', '', 'Paper feed unit ( узел подачи бумаги )', 'paper-feed-unit', 'Paper feed unit ( узел подачи бумаги )', '<p>Paper feed unit ( узел подачи бумаги )</p>', 'Paper feed unit ( узел подачи бумаги )', 'Paper feed unit ( узел подачи бумаги )', 'Paper feed unit, узел подачи бумаги', NULL, NULL),
(12357, 'DSC00821.JPG', 52, 1, 1, NULL, 26, '2016-08-06 16:59:16', 500, 2, 1, '', '', '', '', '', '', '', 'Gear ( Шестерня )', 'gear-shesternia', 'Gear ( Шестерня )', '<p>Gear ( Шестерня )</p>', 'Gear ( Шестерня )', 'Gear ( Шестерня )', 'Gear, Шестерня', NULL, NULL),
(12358, 'DSC04471.jpg', 52, 1, 1, 'default', 29, '2016-08-06 17:03:04', 500, 2, 1, '', '', '', '', '', '', '', 'Scaner unit ( блок сканера )', 'scaner-unit', 'Scaner unit ( блок сканера )', '<p>Scaner unit ( блок сканера )</p>', 'Scaner unit ( блок сканера )', 'Scaner unit ( блок сканера )', 'Scaner unit, блок сканера', NULL, NULL),
(12359, 'DSC03509.JPG', 52, 1, 1, NULL, 32, '2016-08-06 17:06:05', 500, 2, 1, '', '', '', '', '', '', '', 'Power Assy ( блок питания )', 'power-assy', 'Power Assy ( блок питания )', '<p>Power Assy ( блок питания )</p>', 'Power Assy ( блок питания )', 'Power Assy ( блок питания )', 'Power Assy, блок питания', NULL, NULL),
(12360, 'DSC03504.JPG', 52, 1, 1, 'default', 35, '2016-08-06 17:10:58', 500, 2, 1, '', '', '', '', '', '', '', 'Разное Epson', 'raznoe-epson', 'Разное Epson. Товары, не вошедшие в предыдущие категории', '<p>Товары, не вошедшие в предыдущие категории</p>\r\n<p>Детали не вошедшие в перечень</p>', 'Разное Epson', 'Разное Epson', 'Разное Epson, Детали Epson, Запчасти Epson', NULL, NULL);
INSERT INTO `qtsb9_jshopping_categories` (`category_id`, `category_image`, `category_parent_id`, `category_publish`, `category_ordertype`, `category_template`, `ordering`, `category_add_date`, `products_page`, `products_row`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`, `ext_id`, `ext_update_id`) VALUES
(12361, 'DSC045392.JPG', 16, 1, 1, 'default', 35, '2016-12-10 08:39:19', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП Panasonic, OKI, Ricoh', 'zip-panasonic-kyocera-oki', 'Комплектующие, расходные материалы для принтеров Panasonic, OKI, Ricoh', '<p>ЗИП Panasonic, OKI, Ricoh</p>\r\n<p><span data-mce-mark=\"1\">Комплектующие, расходные материалы для принтеров&nbsp;<span data-mce-mark=\"1\">Panasonic,&nbsp;OKI, Ricoh</span></span></p>', 'ЗИП Panasonic, OKI, Ricoh', 'ЗИП Panasonic, OKI, Ricoh', 'ЗИП принтера Panasonic, Зип принтера OKI, Зип принтера Ricoh', NULL, NULL),
(12362, '', 12434, 1, 1, 'default', 4, '2017-02-02 12:34:59', 500, 2, 1, '', '', '', '', '', '', '', 'Узел термозакрепления Kyocera', 'uzel-termozakrepleniya-kyocera', 'Узел термозакрепления Kyocera', '<p>Узел термозакрепления Kyocera</p>', 'Узел термозакрепления Kyocera', 'Узел термозакрепления Kyocera', 'Узел термозакрепления Kyocera', NULL, NULL),
(12363, 'HP.png', 8, 1, 1, 'default', 24, '2017-04-05 09:54:07', 500, 2, 1, '', '', '', '', '', '', '', 'Лазерные принтеры и МФУ HP', 'lazernye-printery-i-mfu-hp', 'Лазерные принтеры и МФУ HP, для дома и офиса, с новым картриджем', '<p>Лазерные принтеры и МФУ HP, для дома и офиса, с новым картриджем</p>', 'Лазерные принтеры и МФУ HP, для дома и офиса, с новым картриджем', 'Лазерные принтеры и МФУ HP, для дома и офиса, с новым картриджем', 'Струйный принтер HP, принтер для дома и офиса, новый картридж', NULL, NULL),
(12420, '20180707_1051402.jpg', 55, 1, 1, 'default', 2, '2019-07-01 08:41:20', 500, 2, 1, '', '', '', '', '', '', '', 'Электронная плата Samsung', 'elektronnaya-plata-samsung', 'Электронная плата Samsung', '<p>Электронная плата Samsung</p>', 'Электронная плата Samsung', 'Электронная плата Samsung', 'Электронная плата Samsung', NULL, NULL),
(12364, 'DSC06151.JPG', 0, 1, 1, 'default', 96, '2017-04-08 09:13:07', 500, 2, 1, '', '', '', '', '', '', '', 'Планшетный принтер, текстильная печать', 'printer-planshetny-i-tekstil-ny-i-suvenirny-i-dlia-pechati-na-futbolkak1h', 'ПРИНТЕР планшетный, текстильный, сувенирный, для печати на футболках', '<h1 style=\"font-size: 22px; color: #082b4a; height: 22px; font-family: Arial, sans-serif;\">ПРИНТЕР планшетный, текстильный, сувенирный, для печати на футболках</h1>', 'ПРИНТЕР планшетный, текстильный, сувенирный, для печати на футболках', 'ПРИНТЕР планшетный, текстильный, сувенирный, для печати на футболках', 'ПРИНТЕР планшетный, текстильный принтер, принтер сувенирный,  принтер для печати на футболках', NULL, NULL),
(12365, 'DSC07247.JPG', 57, 1, 1, 'default', 2, '2017-04-18 13:26:10', 500, 2, 1, '', '', '', '', '', '', '', 'Печатающая головка Brother', 'print-head-pechataiushchaia-golovka-printera-brother', 'Print Head ( Печатающая головка ) принтера Brother', '<p>Print Head ( Печатающая головка ) принтера Brother</p>\r\n<p>Качество </p>', 'Print Head ( Печатающая головка ) принтера Brother', 'Print Head ( Печатающая головка ) принтера Brother', 'Print Head brother,  Печатающая головка Brother', NULL, NULL),
(12366, 'DSC01978.JPG', 10, 1, 1, 'default', 3, '2017-06-28 06:53:15', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП картриджа Toshiba', 'zip-kartridzha-toshiba', 'Комплектующие, расходные материалы для лазерных картриджей Toshiba', '<p>ЗИП картриджа Toshiba</p>', 'ЗИП картриджа Toshiba', 'ЗИП картриджа Toshiba', 'ЗИП картриджа Toshiba', NULL, NULL),
(12367, 'DSC09867.JPG', 11, 1, 1, 'default', 56, '2017-09-27 08:09:41', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Oki', 'toner-oki', 'Тонер для лазерных принтеров, копиров и мфу Oki', '<p>Тонер для лазерных принтеров, копиров и мфу Oki</p>', '', '', '', NULL, NULL),
(12368, 'DSC07866.JPG', 11, 1, 1, 'default', 58, '2017-09-27 08:13:22', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Ricoh', 'toner-ricoh', 'Тонер для лазерных принтеров, копиров и мфу Ricoh', '<p>Тонер для лазерных принтеров, копиров и мфу Ricoh</p>', '', '', '', NULL, NULL),
(12369, '_______________________1.jpg', 0, 1, 1, 'default', 98, '2017-09-27 10:10:20', 500, 2, 1, '', '', '', '', '', '', '', 'Разработка программного обеспечения и сайтов', 'software-develop', 'Создание сайтов, скриптов и модулей для сайтов, разработка прошивок для ARM процессоров, написание десктоп приложений, написание внешних компонент 1с', '<p>Создание сайтов, скриптов и модулей для сайтов, разработка прошивок для ARM процессоров, написание десктоп приложений, написание внешних компонент 1с</p>', 'Создание сайтов, скриптов и модулей для сайтов, разработка прошивок для ARM процессоров, написание десктоп приложений, написание внешних компонент 1с', 'Создание сайтов, скриптов и модулей для сайтов, разработка прошивок для ARM процессоров, написание десктоп приложений, написание внешних компонент 1с', 'Создание сайтов, скриптов и модулей для сайтов, разработка прошивок для ARM процессоров, написание десктоп приложений, написание внешних компонент 1с', NULL, NULL),
(12370, '_______________________.jpg', 8, 1, 1, 'default', 3, '2017-10-02 11:43:40', 500, 2, 1, '', '', '', '', '', '', '', 'Oki принтеры и мфу', 'oki-printery-i-mfu', 'Oki принтеры и мфу', '<p>Oki принтеры и мфу.</p>\r\n<p>Цветные и монохромные принтеры и мфу OKI.</p>\r\n<p>Матричные принтеры OKI.</p>', 'Oki принтеры и мфу.  Цветные и монохромные принтеры и мфу OKI.  Матричные принтеры OKI.', 'Oki принтеры и мфу.  Цветные и монохромные принтеры и мфу OKI.  Матричные принтеры OKI.', 'Oki принтеры и мфу,  Цветные принтеры OKI,  монохромные принтеры OKI, цветные  мфу OKI, Матричные принтеры OKI', NULL, NULL),
(12371, 'Recovered_jpg_file_1905_.jpg', 11, 1, 1, 'default', 60, '2017-10-03 17:59:56', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Toshiba', 'toner-toshiba', 'Купить тонер для лазерных принтеров и копиров Toshiba, оптовые цены', '<p>Купить тонер для лазерных принтеров и копиров Toshiba, оптовые цены</p>', '', '', '', NULL, NULL),
(12372, '20180707_1051401.jpg', 54, 1, 1, 'default', 10, '2017-10-05 08:43:18', 500, 2, 1, '', '', '', '', '', '', '', 'Электронная плата HP', 'jelektronnaja-plata-hp', 'Электронная плата HP', '<p>Электронная плата HP</p>', 'Электронная плата HP', 'Электронная плата HP', 'Электронная плата HP', NULL, NULL),
(12373, NULL, 54, 1, 1, 'default', 17, '2017-10-06 08:24:48', 500, 2, 1, '', '', '', '', '', '', '', 'Узел термозакрепления HP', 'uzel-termozakreplenija-hp', 'Узел термозакрепления HP', '<p>Узел термозакрепления HP</p>', 'Узел термозакрепления HP', 'Узел термозакрепления HP', 'Узел термозакрепления HP', NULL, NULL),
(12374, 'DSC045972.JPG', 54, 1, 1, 'default', 20, '2017-10-06 10:49:39', 500, 2, 1, '', '', '', '', '', '', '', 'Узел подачи бумаги HP', 'uzel-podachi-bumagi-hp', 'Узел подачи бумаги HP', '<p>Узел подачи бумаги HP</p>', 'Узел подачи бумаги HP', 'Узел подачи бумаги HP', 'Узел подачи бумаги HP', NULL, NULL),
(12375, '20180707_1119061.jpg', 54, 1, 1, 'default', 23, '2017-10-09 06:02:50', 500, 2, 1, '', '', '', '', '', '', '', 'Ремни, ленты позиционирования, диски энкодера HP', 'remni-lenty-pozicionirovanija-diski-jenkodera-hp', 'Ремни, ленты позиционирования, диски энкодера HP', '<p>Ремни, ленты позиционирования, диски энкодера HP</p>', 'Ремни, ленты позиционирования, диски энкодера HP', 'Ремни, ленты позиционирования, диски энкодера HP', 'Ремень HP, Ремень привода HP, лента позиционирования HP, диск энкодера HP, энкодерная лента HP', NULL, NULL),
(12376, '20180707_111616.jpg', 54, 1, 1, 'default', 25, '2017-10-09 07:14:16', 500, 2, 1, '', '', '', '', '', '', '', 'Шлейфы HP', 'shlejfy-hp', 'Шлейфы HP', '<p>Шлейфы HP</p>', 'Шлейфы HP', 'Шлейфы HP', 'Шлейфы HP, Шлейф HP', NULL, NULL),
(12377, '20180707_1106281.jpg', 54, 1, 1, 'default', 28, '2017-10-09 07:16:26', 500, 2, 1, '', '', '', '', '', '', '', 'Узел подачи чернил HP', 'uzel-podachi-chernil-hp', 'Узел подачи чернил HP', '<p>Узел подачи чернил HP</p>', 'Узел подачи чернил HP', 'Узел подачи чернил HP', 'Узел подачи чернил HP, подача чернил HP, помпа HP', NULL, NULL),
(12378, NULL, 54, 1, 1, 'default', 31, '2017-10-10 08:29:01', 500, 2, 1, '', '', '', '', '', '', '', 'Модули памяти HP', 'moduli-pamjati-hp', 'Модули памяти HP', '<p>Модули памяти HP</p>', 'Модули памяти HP', 'Модули памяти HP', 'Модуль памяти HP, память HP', NULL, NULL),
(12379, 'DSC045961.JPG', 54, 1, 1, 'default', 35, '2017-10-10 08:31:21', 500, 2, 1, '', '', '', '', '', '', '', 'Шестеренки HP', 'shesterenki-hp', 'Шестеренки HP', '<p>Шестеренки HP</p>\r\n<p>Шестерни HP</p>', 'Шестеренки HP', 'Шестеренки HP', 'Шестеренка HP, Шестерня HP', NULL, NULL),
(12380, 'DSC045942.JPG', 54, 1, 1, 'default', 38, '2017-10-10 08:32:46', 500, 2, 1, '', '', '', '', '', '', '', 'Подшипники (бушинги) HP', 'podshipniki-bushingi-hp', 'Подшипники (бушинги) HP', '<p>Подшипники (бушинги) HP</p>', 'Подшипники (бушинги) HP', 'Подшипники (бушинги) HP', 'Подшипники HP, бушинги HP', NULL, NULL),
(12381, '20180707_111328.jpg', 54, 1, 1, 'default', 41, '2017-10-10 08:34:41', 500, 2, 1, '', '', '', '', '', '', '', 'Блоки питания HP', 'bloki-pitanija-hp', 'Блоки питания HP', '<p>Блоки питания HP</p>', 'Блоки питания HP', 'Блоки питания HP', 'Блок питания HP, блок HP', NULL, NULL),
(12382, '20180707_112406.jpg', 54, 1, 1, 'default', 45, '2017-10-10 08:37:29', 500, 2, 1, '', '', '', '', '', '', '', 'Электродвигатели и соленоиды HP', 'jelektrodvigateli-i-solenoidy-hp', 'Электродвигатели и соленоиды HP', '<p>Электродвигатели и соленоиды HP</p>', 'Электродвигатели и соленоиды HP', 'Электродвигатели и соленоиды HP', 'Электродвигатель HP, двигатель HP, соленоид HP', NULL, NULL),
(12383, 'DSC04598.JPG', 54, 1, 1, 'default', 52, '2017-10-10 08:41:57', 500, 2, 1, '', '', '', '', '', '', '', 'Датчики HP', 'datchiki-hp', 'Датчики HP', '<p>Датчики HP</p>', 'Датчики HP', 'Датчики HP', 'Датчик HP', NULL, NULL),
(12384, 'DSC045391.JPG', 54, 1, 1, 'default', 54, '2017-10-10 08:45:48', 500, 2, 1, '', '', '', '', '', '', '', 'Разное HP', 'raznoe-hp', 'Разное HP. Товары, не вошедшие в предыдущие категории', '<p>Разное HP.</p>\r\n<p>Товары, не вошедшие в предыдущие категории</p>', 'Разное HP', 'Разное HP', 'Разное HP, HP', NULL, NULL),
(12385, 'DSC08258.JPG', 11, 1, 1, 'default', 62, '2018-02-12 08:29:55', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Konica', 'toner-konica', 'Тонер Konica', '<p>Тонер Konica, Тонер Minolta</p>', 'Тонер Konica', 'Тонер Konica', 'Тонер Konica, Тонер Minolta', NULL, NULL),
(12386, 'razborke-printerov_3.jpg', 8, 1, 1, 'default', 32, '2018-03-09 07:59:31', 500, 2, 1, '', '', '', '', '', '', '', 'Принтеры в разборе', 'printery-v-razbore', 'Принтеры в разборе', '<p style=\"margin-bottom: 0.0001pt; text-align: center; line-height: normal; background: white;\" align=\"center\"><strong><span style=\"font-size: 14pt; font-family: \'Times New Roman\', serif;\">Принтеры в разборе</span></strong></p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background: white;\"><strong> </strong>В данном разделе сайта представлены принтеры, которые разбираются на запчасти. Такая специфическая продукция незаменима для сервисных центров, где обслуживают печатающие устройства, и других компаний, которые осуществляют ремонт оргтехники и предлагают своим потребителям высокое качество и профессиональное обслуживание. Также заказ может оформить частное лицо, если, к примеру, ремонт будет проводиться в домашних условиях.</p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background: white;\"> <strong style=\"text-align: center;\">Широкий выбор и достойное качество запчастей для принтеров</strong></p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background: white;\"><strong> </strong>Детали для принтеров в магазине VCE-O-PRINTERE – это огромный ассортимент работоспособных мелочей, необходимых для полноценного ремонта оргтехники и сохранения скорости/качества печати принтеров, а также всевозможных МФУ. В данном разделе сайта вы отыщите качественные запчасти для струйной и лазерной печатающей электроники, продукцию известных фирм-производителей (Epson, HP, Canon, Xerox, Toshiba и т. д.) и редкие детали. К вашему вниманию:</p>\r\n<ul>\r\n<li>узлы шестерен, подачи чернил, захвата, термоблоки в сборе, электронные платы, блоки питания, шлейфы, ремни; блоки проявки, энкодеры, моторы разной мощности, лазерные блоки, ленты переноса, драм блоки в сборе и многое другое.</li>\r\n</ul>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\"> </p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Чтобы сократить время, потраченное на поиск нужного принтера (запчасти), вы можете в любой момент воспользоваться удобным поиском, мгновенной сортировкой товара по популярности, производителю или цене. Чтобы не тратить время зря, найдите нужную модель используя CTRL-F или обратитесь к оператору.</p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\"> <strong style=\"background-color: transparent; text-align: center;\">Почему заказывать детали для принтеров лучше всего у нас?</strong></p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\"><strong> </strong>Мы рады каждому клиенту и благодарим всех за такое огромное количество положительных отзывов. Список товаров в каталоге обновляется еженедельно. Постоянно расширяем модели принтеров и следим за ценами, чтобы они оставались доступными и приемлемыми для всех клиентов без исключения.</p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background: white;\"> Сотрудничая с нами, вы получаете индивидуальный подход, только работоспособные детали, удобные варианты оплаты и доставки, лояльную ценовую политику, консультации, а также гарантии. Мы работаем по территории всей страны и готовы помочь вам не ошибиться с выбором.</p>\r\n<p> </p>', 'Принтеры в разборе', 'Принтеры в разборе', 'Принтеры в разборе', NULL, NULL),
(12387, 'DSC00087.JPG', 13, 1, 1, 'default', 22, '2018-05-03 06:55:33', 500, 2, 1, '', '', '', '', '', '', '', 'Фотобумага оригинальная', 'genius-photopaper', 'Оригинальная фотобумага HP, Canon, Epson по низким ценам', '<p>Оригинальная фотобумага HP, Canon, Epson по низким ценам</p>', 'Оригинальная фотобумага HP, Canon, Epson по низким ценам', 'Оригинальная фотобумага HP, Canon, Epson по низким ценам', 'фотобумага canon, фотобумага hp, фотобумага epson ', NULL, NULL),
(12388, 'DSC00142.JPG', 8, 1, 1, 'default', 7, '2018-07-02 16:59:58', 500, 2, 1, '', '', '', '', '', '', '', 'Ручной принтер', 'handheld-printer', 'Ручной принтер для печати на любых материалах', '<p>Ручной принтер для печати на любых материалах</p>\r\n<p>&nbsp;</p>', 'Ручной принтер для печати на любых материалах', 'Ручной принтер для печати на любых материалах', 'Ручной принтер для печати на любых материалах, купить ручной принтер', NULL, NULL),
(12389, 'DSC00705.JPG', 11, 1, 1, 'default', 66, '2018-09-08 07:56:29', 500, 2, 1, '', '', '', '', '', '', '', 'Тонер Sharp', 'toner-sharp', 'Тонер Sharp', '<p>Тонер Sharp</p>', 'Тонер Sharp', 'Тонер Sharp', 'Тонер Sharp', NULL, NULL),
(12390, 'Brother1.jpg', 12386, 1, 1, 'default', 20, '2018-09-08 11:41:14', 500, 2, 1, '', '', '', '', '', '', '', 'Brother струйные и лазерные принтеры и мфу', 'brother-razbor-printera-razborka-detali', 'Brother струйные и лазерные принтеры и мфу', '<p>Brother струйные и лазерные принтеры и мфу</p>', 'Brother струйные и лазерные принтеры и мфу', 'Brother струйные и лазерные принтеры и мфу', 'разбор принтера Brother , разборка Brother , детали Brother ', NULL, NULL),
(12391, 'HP1.jpg', 12386, 1, 1, 'default', 4, '2018-09-08 11:42:46', 500, 2, 1, '', '', '', '', '', '', '', 'HP струйные и лазерные принтеры и мфу', 'hp-razbor-printera-razborka-detali', 'HP струйные и лазерные принтеры и мфу', '<p>HP струйные и лазерные принтеры и мфу</p>', 'HP струйные и лазерные принтеры и мфу', 'HP струйные и лазерные принтеры и мфу', 'разбор принтера HP, разборка HP, детали HP', NULL, NULL),
(12392, 'Canon1.jpg', 12386, 1, 1, 'default', 8, '2018-09-08 11:44:48', 500, 2, 1, '', '', '', '', '', '', '', 'Canon струйные и лазерные принтеры и мфу', 'canon-razbor-printera-razborka-detali', 'Canon струйные и лазерные принтеры и мфу', '<p>Canon струйные и лазерные принтеры и мфу</p>', 'Canon струйные и лазерные принтеры и мфу', 'Canon струйные и лазерные принтеры и мфу', 'разбор принтера canon, разборка canon, детали canon', NULL, NULL),
(12393, 'Epson1.jpg', 12386, 1, 1, 'default', 10, '2018-09-08 11:46:13', 500, 2, 1, '', '', '', '', '', '', '', 'Epson струйные и лазерные принтеры и мфу', 'epson-razbor-printera-razborka-detali', 'Epson струйные и лазерные принтеры и мфу', '<p>Epson струйные и лазерные принтеры и мфу</p>', 'Epson струйные и лазерные принтеры и мфу', 'Epson струйные и лазерные принтеры и мфу', 'разбор принтера epson, разборка epson, детали epson', NULL, NULL),
(12394, 'Panasonic1.jpg', 12386, 1, 1, 'default', 13, '2018-09-08 11:48:04', 500, 2, 1, '', '', '', '', '', '', '', 'Panasonic лазерные принтеры и мфу', 'panasonic-razbor-printera-razborka-detali', 'Panasonic лазерные принтеры и мфу', '<p>Panasonic лазерные принтеры и мфу</p>', 'Panasonic лазерные принтеры и мфу', 'Panasonic лазерные принтеры и мфу', 'разбор принтера panasonic, разборка panasonic, детали panasonic', NULL, NULL),
(12395, 'Samsung1.jpg', 12386, 1, 1, 'default', 14, '2018-09-08 11:49:54', 500, 2, 1, '', '', '', '', '', '', '', 'Samsung лазерные принтеры и мфу', 'samsung-razbor-printera-razborka-detali', 'Samsung лазерные принтеры и мфу', '<p>Samsung лазерные принтеры и мфу</p>', 'Samsung лазерные принтеры и мфу', 'Samsung лазерные принтеры и мфу', 'разбор принтера Samsung, разборка Samsung, детали Samsung', NULL, NULL),
(12396, 'DSC01013.JPG', 10, 1, 1, 'default', 34, '2018-12-14 08:19:29', 500, 2, 1, '', '', '', '', '', '', '', 'Пакет для картриджа', 'paket-dlia-kartridzha', 'Черные пакеты для картриджей', '<p>Черные пакеты для картриджей</p>', 'Черные пакеты для картриджей', 'Черные пакеты для картриджей', 'Черные пакеты для картриджей', NULL, NULL),
(12398, NULL, 53, 1, 1, 'default', 11, '2019-02-14 05:34:49', 500, 2, 1, '', '', '', '', '', '', '', 'Узел термозакрепления Canon', 'uzel-termozakrepleniya-canon', 'Узел термозакрепления Canon', '<p>Узел термозакрепления Canon</p>', 'Узел термозакрепления Canon', 'Узел термозакрепления Canon', 'Узел термозакрепления Canon', NULL, NULL),
(12399, 'DSC045973.JPG', 53, 1, 1, 'default', 15, '2019-02-14 05:45:06', 500, 2, 1, '', '', '', '', '', '', '', 'Узел подачи бумаги Canon', 'uzel-podachi-bumagi-canon', 'Узел подачи бумаги Canon', '<p>Узел подачи бумаги Canon, Ролик подачи бумаги Canon, Резинка ролика захвата Canon, Узел дуплекса Canon</p>', 'Узел подачи бумаги Canon', 'Узел подачи бумаги Canon', 'Узел подачи бумаги Canon, Ролик подачи бумаги Canon, Резинка ролика захвата Canon, Узел дуплекса Canon', NULL, NULL),
(12400, '20180707_111906.jpg', 53, 1, 1, 'default', 18, '2019-02-14 05:51:58', 500, 2, 1, '', '', '', '', '', '', '', 'Ремни, ленты позиционирования, диски энкодера Canon', 'remni-lenty-pozitsionirovaniya-diski-enkodera-canon', 'Ремни, ленты позиционирования, диски энкодера Canon', '<p>Ремни, ленты позиционирования, диски энкодера Canon</p>\r\n<p>Ремень привода Canon, лента позиционирования Canon, Энкодерная лента Canon, Диск энкодера Canon, Ремень каретки Canon</p>', 'Ремни, ленты позиционирования, диски энкодера Canon', 'Ремни, ленты позиционирования, диски энкодера Canon', 'Ремень привода Canon, лента позиционирования Canon, Энкодерная лента Canon, Диск энкодера Canon, Ремень каретки Canon', NULL, NULL),
(12401, 'DSC01217.JPG', 53, 1, 1, 'default', 22, '2019-02-14 06:24:14', 500, 2, 1, '', '', '', '', '', '', '', 'Шлейфы Canon', 'shlejfy-canon', 'Шлейфы Canon', '<p>Шлейфы Canon</p>', 'Шлейфы Canon', 'Шлейфы Canon', 'Шлейф Canon, Комплект шлейфов Canon', NULL, NULL),
(12402, '20180707_110628.jpg', 53, 1, 1, 'default', 25, '2019-02-14 06:29:33', 500, 2, 1, '', '', '', '', '', '', '', 'Узел подачи чернил Canon', 'uzel-podachi-chernil-canon', 'Узел подачи чернил Canon', '<p>Узел подачи чернил Canon, Парковка Canon, Парковочный узел Canon</p>', 'Узел подачи чернил Canon', 'Узел подачи чернил Canon', 'Узел подачи чернил Canon, Парковка Canon, Парковочный узел Canon', NULL, NULL),
(12403, 'DSC04596.JPG', 53, 1, 1, 'default', 29, '2019-02-14 06:32:59', 500, 2, 1, '', '', '', '', '', '', '', 'Шестеренки Canon', 'shesterenki-canon', 'Шестеренки Canon', '<p>Шестеренки Canon</p>', 'Шестеренки Canon', 'Шестеренки Canon', 'Шестеренки Canon, Шестерня Canon, Шестерня для Canon, Шестеренки для Canon', NULL, NULL),
(12404, 'DSC01209.JPG', 53, 1, 1, 'default', 32, '2019-02-14 06:40:43', 500, 2, 1, '', '', '', '', '', '', '', 'Блоки питания Canon', 'bloki-pitaniya-canon', 'Блоки питания Canon', '<p>Блоки питания Canon</p>', 'Блоки питания Canon', 'Блоки питания Canon', 'Блоки питания Canon, Блок питания Canon, Блок питания для Canon', NULL, NULL),
(12405, 'DSC00784.JPG', 53, 1, 1, 'default', 35, '2019-02-14 06:51:21', 500, 2, 1, '', '', '', '', '', '', '', 'Электродвигатели и соленоиды Canon', 'elektrodvigateli-i-solenoidy-canon', 'Электродвигатели и соленоиды Canon', '<p>Электродвигатели и соленоиды Canon, Электродвигатель Canon, Электродвигатель для Canon, соленоид Canon</p>', 'Электродвигатели и соленоиды Canon', 'Электродвигатели и соленоиды Canon', 'Электродвигатели и соленоиды Canon, Электродвигатель Canon, Электродвигатель для Canon, соленоид Canon', NULL, NULL),
(12406, 'DSC01010.JPG', 53, 1, 1, 'default', 37, '2019-02-14 07:06:54', 500, 2, 1, '', '', '', '', '', '', '', 'Датчики Canon', 'datchiki-canon', 'Датчики Canon', '<p>Датчики Canon</p>', 'Датчики Canon', 'Датчики Canon', 'Датчики Canon, датчик для Canon, датчик для принтера Canon', NULL, NULL),
(12407, '20180707_1126562.jpg', 53, 1, 1, 'default', 42, '2019-02-14 07:10:01', 500, 2, 1, '', '', '', '', '', '', '', 'Разное Canon', 'raznoe-canon', 'Разное Canon. Товары, не вошедшие в предыдущие категории', '<p>Разное Canon</p>\r\n<p>Товары, не вошедшие в предыдущие категории</p>', 'Разное Canon', 'Разное Canon', 'Разное Canon', NULL, NULL),
(12408, 'DSC00583.JPG', 9, 1, 1, 'default', 36, '2019-02-14 07:59:37', 500, 2, 1, '', '', '', '', '', '', '', 'Чипы Lexmark', 'chipy-lexmark', 'Чипы Lexmark', '<p>Чипы Lexmark</p>', 'Чипы Lexmark', 'Чипы Lexmark', 'Чипы Lexmark, Чип Lexmark, Чипы для Lexmark', NULL, NULL),
(12409, '_________________________1_.jpg', 0, 1, 1, 'default', 100, '2019-03-04 11:37:08', 500, 2, 1, '', '', '', '', '', '', '', 'Для ноутбука', 'for-notebook', 'Зип, детали, периферия для обслуживания ноутбуков', '<p>Зип, детали, периферия для обслуживания ноутбуков</p>', 'Зип, детали, периферия для обслуживания ноутбуков', 'Зип, детали, периферия для обслуживания ноутбуков', 'Зип ноутбук, детали ноутбук, периферия для обслуживания ноутбуков', NULL, NULL),
(12410, 'DSC03811.JPG', 12409, 1, 1, 'default', 2, '2019-03-04 11:38:10', 500, 2, 1, '', '', '', '', '', '', '', 'Зарядные устройства', 'zariadny-e-ustroi-stva-dlia-noutbukov', 'Зарядные устройства для ноутбуков', '<p>Зарядные устройства для ноутбуков</p>', 'Зарядные устройства для ноутбуков', 'Зарядные устройства для ноутбуков', 'Зарядные устройства для ноутбуков', NULL, NULL),
(12411, 'DSC01079.JPG', 15, 1, 1, 'default', 22, '2019-03-23 18:52:34', 500, 2, 1, '', '', '', '', '', '', '', 'Прошивка принтера Pantum', 'reset-printer-pantum', 'Прошивка принтера Pantum', '<p>Прошивка принтера Pantum</p>', 'Прошивка принтера Pantum', 'Прошивка принтера Pantum', 'Прошивка принтера Pantum', NULL, NULL),
(12412, 'DSC04575.JPG', 12409, 1, 1, 'default', 5, '2019-03-29 06:37:47', 500, 2, 1, '', '', '', '', '', '', '', 'Аккумуляторы Батареи', 'battary', 'Аккумуляторы Батареи для ноутбуков', '<p>Аккумуляторы для ноутбуков. </p>\r\n<p>Аккумуляторная батарея новая, предоставляем гарантию.</p>', 'Аккумуляторы Батареи для ноутбуков', 'Аккумуляторы Батареи для ноутбуков', 'Аккумуляторы для ноутбуков, Батареи для ноутбуков', NULL, NULL),
(12413, 'DSC02517.JPG', 8, 1, 1, 'default', 34, '2019-04-07 08:31:58', 500, 2, 1, '', '', '', '', '', '', '', 'Прошитый МФУ, принтер Pantum', 'proshity-i-mfu-printer-pantum', 'Прошитый МФУ, принтер Pantum \r\nОчень надежный китайский принтер, заправляется тонером Samsung', '<p>Прошитый МФУ, принтер Pantum <br />Очень надежный китайский принтер, заправляется тонером Samsung</p>', 'Прошитый МФУ, принтер Pantum  Очень надежный китайский принтер, заправляется тонером Samsung', 'Прошитый МФУ, принтер Pantum  Очень надежный китайский принтер, заправляется тонером Samsung', 'купить принтер pantum, купить мфу pantum', NULL, NULL),
(12414, 'DSC04597.JPG', 12434, 1, 1, 'default', 6, '2019-05-23 09:01:38', 500, 2, 1, '', '', '', '', '', '', '', 'Узел подачи бумаги Kyocera', 'uzel-podachi-bumagi-kyocera', 'Узел подачи бумаги Kyocera', '<p>Узел подачи бумаги Kyocera</p>', 'Узел подачи бумаги Kyocera', 'Узел подачи бумаги Kyocera', 'Узел подачи бумаги Kyocera', NULL, NULL),
(12415, '____.jpg', 12386, 1, 1, 'default', 26, '2019-05-23 09:04:57', 500, 2, 1, '', '', '', '', '', '', '', 'Xerox струйные и лазерные принтеры и мфу', 'xerox-strujnye-i-lazernye-printery-i-mfu', 'Xerox струйные и лазерные принтеры и мфу', '<p>Xerox струйные и лазерные принтеры и мфу</p>', 'Xerox струйные и лазерные принтеры и мфу', 'Xerox струйные и лазерные принтеры и мфу', 'Xerox струйные и лазерные принтеры и мфу', NULL, NULL),
(12416, 'unnamed.jpg', 12386, 1, 1, 'default', 17, '2019-05-24 07:16:24', 500, 2, 1, '', '', '', '', '', '', '', 'OKI струйные и лазерные принтеры и МФУ', 'oki-strujnye-i-lazernye-printery-i-mfu', 'OKI струйные и лазерные принтеры и МФУ', '<p>OKI струйные и лазерные принтеры и МФУ</p>', 'OKI струйные и лазерные принтеры и МФУ', 'OKI струйные и лазерные принтеры и МФУ', 'OKI струйные и лазерные принтеры, OKI МФУ, OKI лазерные принтеры', NULL, NULL),
(12417, 'Kyocera.jpg', 12386, 1, 1, 'default', 31, '2019-05-24 11:37:10', 500, 2, 1, '', '', '', '', '', '', '', 'Kyocera лазерные принтеры и мфу', 'kyocera-lazernye-printery-i-mfu', 'Kyocera лазерные принтеры и мфу', '<p>Kyocera лазерные принтеры и мфу</p>', 'Kyocera лазерные принтеры и мфу', 'Kyocera лазерные принтеры и мфу', 'Kyocera лазерные принтеры, Kyocera лазерные мфу', NULL, NULL),
(12418, 'work101.jpg', 12386, 1, 1, 'default', 19, '2019-05-24 11:37:42', 500, 2, 1, '', '', '', '', '', '', '', 'Ricoh лазерные принтеры и мфу', 'ricoh-lazernye-printery-i-mfu', 'Ricoh лазерные принтеры и мфу', '<p>Ricoh лазерные принтеры и мфу</p>', 'Ricoh лазерные принтеры и мфу', 'Ricoh лазерные принтеры и мфу', 'Ricoh лазерные принтеры, Ricoh лазерные мфу', NULL, NULL),
(12419, 'file.jpg', 12386, 1, 1, 'default', 27, '2019-05-24 12:48:29', 500, 2, 1, '', '', '', '', '', '', '', 'Sharp лазерные принтеры и МФУ', 'sharp-lazernye-printery-i-mfu', 'Sharp лазерные принтеры и МФУ', '<p>Sharp лазерные принтеры и МФУ</p>', 'Sharp лазерные принтеры и МФУ', 'Sharp лазерные принтеры и МФУ', 'Sharp лазерные принтеры, Sharp лазерные МФУ', NULL, NULL),
(12421, NULL, 55, 1, 1, 'default', 3, '2019-07-01 08:42:25', 500, 2, 1, '', '', '', '', '', '', '', 'Узел термозакрепления Samsung', 'uzel-termozakrepleniya-samsung', 'Узел термозакрепления Samsung', '<p>Узел термозакрепления Samsung</p>', 'Узел термозакрепления Samsung', 'Узел термозакрепления Samsung', 'Узел термозакрепления Samsung', NULL, NULL),
(12422, 'DSC045971.JPG', 55, 1, 1, 'default', 5, '2019-07-01 08:43:20', 500, 2, 1, '', '', '', '', '', '', '', 'Узел подачи бумаги Samsung', 'uzel-podachi-bumagi-samsung', 'Узел подачи бумаги Samsung', '<p>Узел подачи бумаги Samsung</p>', 'Узел подачи бумаги Samsung', 'Узел подачи бумаги Samsung', 'Узел подачи бумаги Samsung', NULL, NULL),
(12423, '20180707_1116161.jpg', 55, 1, 1, 'default', 8, '2019-07-01 08:44:07', 500, 2, 1, '', '', '', '', '', '', '', 'Шлейфы Samsung', 'shlejfy-samsung', 'Шлейфы Samsung', '<p>Шлейфы Samsung</p>', 'Шлейфы Samsung', 'Шлейфы Samsung', 'Шлейфы Samsung, Шлейфа Samsung, Шлейф Samsung', NULL, NULL),
(12424, 'DSC045962.JPG', 55, 1, 1, 'default', 10, '2019-07-01 08:45:29', 500, 2, 1, '', '', '', '', '', '', '', 'Шестеренки Samsung', 'shesterenki-samsung', 'Шестеренки Samsung', '<p>Шестеренки Samsung</p>', 'Шестеренки Samsung', 'Шестеренки Samsung', 'Шестеренки Samsung', NULL, NULL),
(12425, 'DSC045941.JPG', 55, 1, 1, 'default', 12, '2019-07-01 08:46:13', 500, 2, 1, '', '', '', '', '', '', '', 'Подшипники (бушинги) Samsung', 'podshipniki-bushingi-samsung', 'Подшипники (бушинги) Samsung', '<p>Подшипники (бушинги) Samsung</p>', 'Подшипники (бушинги) Samsung', 'Подшипники (бушинги) Samsung', 'Подшипники (бушинги) Samsung', NULL, NULL),
(12426, '20180707_1113281.jpg', 55, 1, 1, 'default', 15, '2019-07-01 08:47:32', 500, 2, 1, '', '', '', '', '', '', '', 'Блоки питания Samsung', 'bloki-pitaniya-samsung', 'Блоки питания Samsung', '<p>Блоки питания Samsung</p>', 'Блоки питания Samsung', 'Блоки питания Samsung', 'Блоки питания Samsung, плата питания Samsung', NULL, NULL),
(12427, '20180707_1124061.jpg', 55, 1, 1, 'default', 17, '2019-07-01 08:49:52', 500, 2, 1, '', '', '', '', '', '', '', 'Электродвигатели и соленоиды Samsung', 'elektrodvigateli-i-solenoidy-samsung', 'Электродвигатели и соленоиды Samsung', '<p>Электродвигатели и соленоиды Samsung</p>', 'Электродвигатели и соленоиды Samsung', 'Электродвигатели и соленоиды Samsung', 'Электродвигатели и соленоиды Samsung, электродвигатель Samsung, соленоид Samsung', NULL, NULL),
(12428, '20180707_112656.jpg', 55, 1, 1, 'default', 22, '2019-07-01 08:50:30', 500, 2, 1, '', '', '', '', '', '', '', 'Узел сканирования Samsung', 'uzel-skanirovaniya-samsung', 'Узел сканирования Samsung', '<p>Узел сканирования Samsung</p>', 'Узел сканирования Samsung', 'Узел сканирования Samsung', 'Узел сканирования Samsung, линейка сканера Samsung, сканирующая линейка Samsung', NULL, NULL),
(12429, 'DSC045981.JPG', 55, 1, 1, 'default', 26, '2019-07-01 08:52:31', 500, 2, 1, '', '', '', '', '', '', '', 'Датчики Samsung', 'datchiki-samsung', 'Датчики Samsung', '<p>Датчики Samsung</p>', 'Датчики Samsung', 'Датчики Samsung', 'Датчики Samsung, Датчик Samsung, Датчик принтера Samsung', NULL, NULL),
(12430, 'DSC045394.JPG', 55, 1, 1, 'default', 28, '2019-07-01 08:53:39', 500, 2, 1, '', '', '', '', '', '', '', 'Разное Samsung. Товары, не вошедшие в предыдущие категории', 'raznoe-samsung-tovary-ne-voshedshie-v-predydushchie-kategorii', 'Разное Samsung. Товары, не вошедшие в предыдущие категории', '<p>Разное Samsung. Товары, не вошедшие в предыдущие категории</p>', 'Разное Samsung. Товары, не вошедшие в предыдущие категории', 'Разное Samsung. Товары, не вошедшие в предыдущие категории', 'Разное Samsung. Товары, не вошедшие в предыдущие категории', NULL, NULL),
(12431, NULL, 55, 1, 1, 'default', 24, '2019-07-01 10:01:09', 500, 2, 1, '', '', '', '', '', '', '', 'Блок лазера Samsung', 'blok-lazera-samsung', 'Блок лазера Samsung', '<p>Блок лазера Samsung</p>', 'Блок лазера Samsung', 'Блок лазера Samsung', 'Блок лазера Samsung', NULL, NULL),
(12432, '20180707_1126563.jpg', 54, 1, 1, 'default', 48, '2019-07-01 10:44:00', 500, 2, 1, '', '', '', '', '', '', '', 'Узел сканирования HP', 'uzel-skanirovaniya-hp', 'Узел сканирования HP', '<p>Узел сканирования HP</p>', 'Узел сканирования HP', 'Узел сканирования HP', 'Узел сканирования HP, Линейка сканирования HP, сканирующая линейка HP', NULL, NULL),
(12434, NULL, 16, 1, 1, 'default', 30, '2019-07-08 08:10:36', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП Kyocera', 'zip-kyocera', 'ЗИП Kyocera\r\nКомплектующие, расходные материалы для принтеров Kyocera', '<p>ЗИП Kyocera, Комплектующие, расходные материалы для принтеров Kyocera</p>', 'ЗИП Kyocera', 'ЗИП Kyocera', 'ЗИП Kyocera, Комплектующие, расходные материалы для принтеров Kyocera', NULL, NULL),
(12433, 'DSC04586.JPG', 16, 1, 1, 'default', 37, '2019-07-06 07:09:43', 500, 2, 1, '', '', '', '', '', '', '', 'ЗИП Термопринтера', 'zip-termoprintera', 'ЗИП Термопринтера\r\nКомплектующие, расходные материалы для термопринтеров', '<p>ЗИП Термопринтера</p>\r\n<p>Комплектующие, расходные материалы для термопринтеров</p>', 'ЗИП Термопринтера', 'ЗИП Термопринтера', 'Запчасти для чековых принтеров, ЗИП Термопринтера, ЗИП принтера чеков, ЗИП принтера печати чеков, ЗИП чекового принтера, ЗИП принтера для чеков, Комплектующие, расходные материалы для термопринтеров', NULL, NULL),
(12435, '20180707_1051403.jpg', 12434, 1, 1, 'default', 2, '2019-07-08 08:12:20', 500, 2, 1, '', '', '', '', '', '', '', 'Электронная плата Kyocera', 'elektronnaya-plata-kyocera', 'Электронная плата Kyocera', '<p>Электронная плата Kyocera</p>', 'Электронная плата Kyocera', 'Электронная плата Kyocera', 'Электронная плата Kyocera', NULL, NULL),
(12436, 'DSC045963.JPG', 12434, 1, 1, 'default', 11, '2019-07-08 08:20:38', 500, 2, 1, '', '', '', '', '', '', '', 'Шестеренки Kyocera', 'shesterenki-kyocera', 'Шестеренки Kyocera', '<p>Шестеренки Kyocera</p>', 'Шестеренки Kyocera', 'Шестеренки Kyocera', 'Шестеренки Kyocera', NULL, NULL),
(12437, 'DSC04594.JPG', 12434, 1, 1, 'default', 13, '2019-07-08 08:21:28', 500, 2, 1, '', '', '', '', '', '', '', 'Подшипники (бушинги) Kyocera', 'podshipniki-bushingi-kyocera', 'Подшипники (бушинги) Kyocera', '<p>Подшипники (бушинги) Kyocera</p>', 'Подшипники (бушинги) Kyocera', 'Подшипники (бушинги) Kyocera', 'Подшипники (бушинги) Kyocera', NULL, NULL),
(12438, '20180707_1113282.jpg', 12434, 1, 1, 'default', 15, '2019-07-08 08:22:40', 500, 2, 1, '', '', '', '', '', '', '', 'Блоки питания Kyocera', 'bloki-pitaniya-kyocera', 'Блоки питания Kyocera\r\nПлаты питания Kyocera', '<p>Блоки питания Kyocera</p>\r\n<p>Платы питания Kyocera</p>', 'Блоки питания Kyocera', 'Блоки питания Kyocera', 'Блоки питания Kyocera, Платы питания Kyocera', NULL, NULL),
(12439, '20180707_1124062.jpg', 12434, 1, 1, 'default', 17, '2019-07-08 08:23:22', 500, 2, 1, '', '', '', '', '', '', '', 'Электродвигатели и соленоиды Kyocera', 'elektrodvigateli-i-solenoidy-kyocera', 'Электродвигатели и соленоиды Kyocera', '<p>Электродвигатели и соленоиды Kyocera</p>', 'Электродвигатели и соленоиды Kyocera', 'Электродвигатели и соленоиды Kyocera', 'Электродвигатели и соленоиды Kyocera', NULL, NULL),
(12440, '20180707_1126561.jpg', 12434, 1, 1, 'default', 19, '2019-07-08 08:24:08', 500, 2, 1, '', '', '', '', '', '', '', 'Узел сканирования Kyocera', 'uzel-skanirovaniya-kyocera', 'Узел сканирования Kyocera', '<p>Узел сканирования Kyocera</p>', 'Узел сканирования Kyocera', 'Узел сканирования Kyocera', 'Узел сканирования Kyocera', NULL, NULL),
(12441, NULL, 12434, 1, 1, 'default', 20, '2019-07-08 08:24:52', 500, 2, 1, '', '', '', '', '', '', '', 'Блок лазера Kyocera', 'blok-lazera-kyocera', 'Блок лазера Kyocera', '<p>Блок лазера Kyocera</p>', 'Блок лазера Kyocera', 'Блок лазера Kyocera', 'Блок лазера Kyocera', NULL, NULL),
(12442, 'DSC045982.JPG', 12434, 1, 1, 'default', 22, '2019-07-08 08:25:39', 500, 2, 1, '', '', '', '', '', '', '', 'Датчики Kyocera', 'datchiki-kyocera', 'Датчики Kyocera', '<p>Датчики Kyocera</p>', 'Датчики Kyocera', 'Датчики Kyocera', 'Датчики Kyocera', NULL, NULL),
(12443, 'DSC045393.JPG', 12434, 1, 1, 'default', 24, '2019-07-08 08:26:25', 500, 2, 1, '', '', '', '', '', '', '', 'Разное Kyocera. Товары, не вошедшие в предыдущие категории', 'raznoe-kyocera-tovary-ne-voshedshie-v-predydushchie-kategorii', 'Разное Kyocera. Товары, не вошедшие в предыдущие категории', '<p>Разное Kyocera. Товары, не вошедшие в предыдущие категории</p>', 'Разное Kyocera. Товары, не вошедшие в предыдущие категории', 'Разное Kyocera. Товары, не вошедшие в предыдущие категории', 'Разное Kyocera. Товары, не вошедшие в предыдущие категории', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `userlogin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('user','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `userlogin`, `password`, `email`, `name`, `role`) VALUES
(11, 'user54656@user.com', 'admin456456', 'michaelphp@yandex.ru456', '', 'user'),
(12, 'user@user.com', 'admin7878', 'michaelphp@yandex.ru', '', 'user'),
(13, 'u1212ser@user.com', 'admin1212', 'mic1212haelphp@yandex.ru', '', 'user'),
(14, 'u89898ser@user.com', 'admin8989', '8989michaelphp@yandex.ru', '', 'user'),
(15, 'usernew', '1234567', 'user@user.com', '', 'user'),
(16, 'user111', '1234567', 'michaelphp111@yandex.ru', '', 'user'),
(17, 'newuser@user.com', '1234567', 'michaelphp222@yandex.ru', '', 'user'),
(18, 'user111@user.com', '1234567', '111michaelphp@yandex.ru', '', 'user'),
(19, 'testuser', '1234567', 'new@user.com', '', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `albom`
--
ALTER TABLE `albom`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `anketa`
--
ALTER TABLE `anketa`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`c_id`);

--
-- Индексы таблицы `conversation_reply`
--
ALTER TABLE `conversation_reply`
  ADD PRIMARY KEY (`cr_id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `qtsb9_jshopping_categories`
--
ALTER TABLE `qtsb9_jshopping_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `sort_add_date` (`category_add_date`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`userlogin`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `albom`
--
ALTER TABLE `albom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT для таблицы `anketa`
--
ALTER TABLE `anketa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=896;

--
-- AUTO_INCREMENT для таблицы `conversation`
--
ALTER TABLE `conversation`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT для таблицы `conversation_reply`
--
ALTER TABLE `conversation_reply`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=643;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `qtsb9_jshopping_categories`
--
ALTER TABLE `qtsb9_jshopping_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12444;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

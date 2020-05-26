-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-04-2020 a las 07:40:24
-- Versión del servidor: 5.6.47-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pagefree`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `adv_id` int(11) NOT NULL,
  `adv_location` varchar(255) NOT NULL,
  `adv_photo` varchar(255) NOT NULL,
  `adv_url` varchar(255) NOT NULL,
  `adv_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`adv_id`, `adv_location`, `adv_photo`, `adv_url`, `adv_status`) VALUES
(1, 'Under Featured News', 'advertisement-1.png', '', 'Hide'),
(2, 'Sidebar Top', 'advertisement-2.png', 'https://www.youtube.com', 'Hide'),
(3, 'Sidebar Bottom', 'advertisement-3.png', '#', 'Hide');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(16, 'Business', 'business', 'Active', 'Business - Meta Title', 'Business - Meta Keyword', 'Business - Meta Description'),
(17, 'Habilidades', 'science', 'Active', 'Science - Meta Title', 'Science - Meta Keyword', 'Science - Meta Description'),
(18, 'Health', 'health', 'Active', 'Health - Meta Title', 'Health - Meta Keyword', 'Health - Meta Description'),
(19, 'Codigos', 'sport-news', 'Active', 'codigos - free fire', 'codigos - nuevos codigos', 'codigos - nuevos codigos free fire'),
(20, 'Travel', 'travel', 'Active', 'Travel - Meta Title', 'Travel - Meta Keyword', 'Travel - Meta Description'),
(21, 'Novedades', 'entertainment', 'Active', 'Entertainment - Meta Title', 'Entertainment - Meta Keyword', 'Entertainment - Meta Description'),
(22, 'Food', 'food', 'Active', 'Food - Meta Title', 'Food - Meta Keyword', 'Food - Meta Description'),
(23, 'Nature', 'nature', 'Active', 'Nature - Meta Title', 'Nature - Meta Keyword', 'Nature - Meta Description'),
(24, 'Desarrollador', 'about-us', 'Active', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_category_photo`
--

CREATE TABLE `tbl_category_photo` (
  `p_category_id` int(11) NOT NULL,
  `p_category_name` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_category_photo`
--

INSERT INTO `tbl_category_photo` (`p_category_id`, `p_category_name`, `status`) VALUES
(1, 'Capturas', 'Active'),
(2, 'Imagenes', 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_category_video`
--

CREATE TABLE `tbl_category_video` (
  `v_category_id` int(11) NOT NULL,
  `v_category_name` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_category_video`
--

INSERT INTO `tbl_category_video` (`v_category_id`, `v_category_name`, `status`) VALUES
(1, 'Tutoriales', 'Active'),
(2, 'Entretenimiento', 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `code_body` text NOT NULL,
  `code_main` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `code_body`, `code_main`) VALUES
(1, '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<div class=\"fb-comments\" data-href=\"https://developers.facebook.com/docs/plugins/comments#configurator\" data-numposts=\"5\"></div>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_file`
--

CREATE TABLE `tbl_file` (
  `file_id` int(11) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_file`
--

INSERT INTO `tbl_file` (`file_id`, `file_title`, `file_name`) VALUES
(1, 'fondo de pantalla', 'file-1.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_home_category`
--

CREATE TABLE `tbl_home_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_order` varchar(10) NOT NULL,
  `category_layout` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_home_category`
--

INSERT INTO `tbl_home_category` (`id`, `category_id`, `category_order`, `category_layout`) VALUES
(14, 16, '', ''),
(15, 17, '', ''),
(16, 18, '', ''),
(17, 19, '', ''),
(18, 20, '', ''),
(19, 21, '3', '1 Column'),
(20, 22, '', ''),
(21, 23, '', ''),
(22, 24, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_type` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `category_or_page_slug` varchar(255) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_parent` int(11) NOT NULL,
  `menu_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_type`, `menu_name`, `category_or_page_slug`, `menu_order`, `menu_parent`, `menu_url`) VALUES
(2, 'Other', 'Inicio', '', 1, 0, 'index.php'),
(3, 'Category', 'Codigos', 'sport-news', 4, 0, ''),
(6, 'Category', 'Habilidades', 'science', 7, 0, ''),
(7, 'Other', 'Galeria', '', 2, 0, '#'),
(8, 'Page', 'Galería de Fotos', 'photo-gallery', 1, 7, ''),
(9, 'Page', 'Galería de Videos', 'video-gallery', 1, 7, ''),
(10, 'Page', 'Desarrollador', 'about-us', 11, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_slug` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `news_date` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `source` varchar(255) NOT NULL,
  `is_featured` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_title`, `news_slug`, `news_content`, `news_date`, `publisher`, `photo`, `status`, `source`, `is_featured`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(47, 'Kapella', 'kapella', '<p>Con Kapella puedes aumentar la durabilidad de todos los objetos que suben el HP hasta en un 10%</p>\r\n', '10-04-2020', 'Yoel', 'news-47.jpg', 'Published', '', 1, 0, '', '', ''),
(48, 'Alok', 'alok', '<p>aumenta tu HP cuando tienes poca vida creando un aura de 5m por 10 segundos. si lo equipas junto con la habilidad de Kapella, podr&aacute;s obtener 10% m&aacute;s de vida.</p>\r\n', '09-04-2020', 'Yoel', 'news-48.jpg', 'Published', '', 1, 2, '', '', ''),
(49, 'La nueva incubadora \"Los Jefes\"', 'la-nueva-incubadora-los-jefes-', '<p>la nueva incubarora denominada &quot;los jefes&quot; estara disponible a partir del 15 de abril, tenemos nuevos dise&ntilde;os tanto del genero masculino como tambien del genero femenino.</p>\r\n', '13-04-2020', 'Yoel', 'news-49.png', 'Published', '', 1, 2, 'nueva incubadora Los Jefes', 'incubadora, free fire', ''),
(50, 'Regresa la incubadora Futurista', 'regresa-la-incubadora-futurista', '<p>la nueva incubarora Futurista estara disponible del 17 al 23 de abril, donde tendremos nuevos dise&ntilde;os de la scar. en este evento podremos obtener la tan anciada scar Tit&aacute;n.</p>\r\n\r\n<p>por la recarga de un diamante obtendremos una piedra evolutiva, tambien por una recarga de 500 diamantes obtendremos un pergamino.</p>\r\n', '16-04-2020', 'Yoel', 'news-50.png', 'Published', '', 1, 5, '', '', ''),
(51, 'Conoce el Nuevo Diamante Royal \"Conejita Hipster\"', 'conoce-el-nuevo-diamante-royal-conejita-hipster-', '<p>el nuevo diamante royal&nbsp;esta disponible a partir del 20 de abril, donde podremos obtener la Conejita Hipster</p>\r\n', '18-04-2020', 'Yoel', 'news-51.png', 'Published', '', 1, 7, '', '', ''),
(52, 'Gana Fragmentos de Cubo Mágico', 'gana-fragmentos-de-cubo-m-gico', '<p>el 19 de abril podras ganar fragmentos de cubo magico despues de jugar, esto solo estara disponible por un d&iacute;a.</p>\r\n', '18-04-2020', 'Yoel', 'news-52.png', 'Published', '', 1, 4, '', '', ''),
(53, 'Evento Web Elige tu Paquete', 'evento-web-elige-tu-paquete', '<p>este evento estara disponible hasta el 26 de abril, en este evento web podras consegir las skin para el genero masculino como tambien para el genero femenino.</p>\r\n', '20-04-2020', 'Yoel', 'news-53.png', 'Published', '', 1, 2, '', '', ''),
(54, 'Kelly', 'kelly', '<p>Codigo para obtener el huevo de Kelly</p>\r\n', '20-04-2020', 'Yoel', 'news-54.png', 'Published', '', 1, 1, '', '', ''),
(55, 'Antonio', 'antonio', '<p>codigo para obtener el huevo de Antonio</p>\r\n', '20-04-2020', 'Yoel', 'news-55.png', 'Published', '', 1, 0, '', '', ''),
(56, 'Misha', 'caroline', '<p>codigo para obtener el huevo de Misha</p>\r\n', '20-04-2020', 'Yoel', 'news-56.png', 'Published', '', 1, 3, '', '', ''),
(57, 'Kla', 'kla', '<p>codigo para obtener el huevo de Kla</p>\r\n', '20-04-2020', 'Yoel', 'news-57.png', 'Published', '', 1, 0, '', '', ''),
(58, 'Moco', 'moco', '<p>codigo para obtener el huevo de Moco</p>\r\n', '20-04-2020', 'Yoel', 'news-58.png', 'Published', '', 1, 0, '', '', ''),
(59, 'Andrew', 'andrew', '<p>codigo para obtener el huevo de Andrew</p>\r\n', '20-04-2020', 'Yoel', 'news-59.png', 'Published', '', 1, 0, '', '', ''),
(60, 'Caroline', 'caroline-1', '<p>C&oacute;digo para obtener el huevo de Caroline</p>\r\n', '21-04-2020', 'Yoel', 'news-60.png', 'Published', '', 1, 14, '', '', ''),
(63, 'Agenda semanal ', 'agenda-semanal-', '<p>Guarden sus diamantes, el d&iacute;a jueves tendr&aacute;n 100% de posibilidades para obtener la scar tit&aacute;n. As&iacute; como tambi&eacute;n nuevas skin de paredes gloo y tambien la llegada de una nueva skin de Dino.</p>\r\n', '22-04-2020', 'Yoel', 'news-63.jpg', 'Published', '', 1, 1, '', '', ''),
(64, 'Supermercado 5.0', 'supermercado-5-0', '<p>la llegada del supermercado 5.0 sera el dia viernes 24 de abril, donde podremos obtener el Dino Angelical ademas de la tarjeta del pase elite, asi como tambien otros objetos.</p>\r\n', '24-04-2020', 'Yoel', 'news-64.png', 'Published', '', 1, 12, '', '', ''),
(65, 'Aspecto Dino Angelical', 'aspecto-dino-angelical', '<p>Aspecto dino angelical disponible el 24 de abril</p>\r\n', '24-04-2020', 'Yoel', 'news-65.jpg', 'Published', '', 1, 4, '', '', ''),
(66, 'Recargas del Dino ', 'recargas-del-dino-', '<p>Por la recarga de 400 diamantes recibir&aacute;s la pared gloo del Dino.</p>\r\n', '24-04-2020', 'Yoel', 'news-66.png', 'Published', '', 1, 0, '', '', ''),
(67, 'Hasta 80% de descuento', 'hasta-80-de-descuento', '<p>Tendr&aacute;s 10 actualizaciones gratis y mientras mas compres mayor ser&aacute; el descuento.</p>\r\n', '24-04-2020', 'Yoel', 'news-67.png', 'Published', '', 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_news_category`
--

CREATE TABLE `tbl_news_category` (
  `news_category_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_news_category`
--

INSERT INTO `tbl_news_category` (`news_category_id`, `news_id`, `category_id`, `access`) VALUES
(449, 47, 16, 0),
(450, 47, 17, 1),
(451, 47, 18, 0),
(452, 47, 19, 0),
(453, 47, 20, 0),
(454, 47, 21, 0),
(455, 47, 22, 0),
(456, 47, 23, 0),
(457, 48, 16, 0),
(458, 48, 17, 1),
(459, 48, 18, 0),
(460, 48, 19, 0),
(461, 48, 20, 0),
(462, 48, 21, 0),
(463, 48, 22, 0),
(464, 48, 23, 0),
(487, 47, 24, 0),
(488, 48, 24, 0),
(489, 49, 16, 0),
(490, 49, 17, 0),
(491, 49, 18, 0),
(492, 49, 19, 0),
(493, 49, 20, 0),
(494, 49, 21, 1),
(495, 49, 22, 0),
(496, 49, 23, 0),
(497, 49, 24, 0),
(498, 50, 16, 0),
(499, 50, 17, 0),
(500, 50, 18, 0),
(501, 50, 19, 0),
(502, 50, 20, 0),
(503, 50, 21, 1),
(504, 50, 22, 0),
(505, 50, 23, 0),
(506, 50, 24, 0),
(507, 51, 16, 0),
(508, 51, 17, 0),
(509, 51, 18, 0),
(510, 51, 19, 0),
(511, 51, 20, 0),
(512, 51, 21, 1),
(513, 51, 22, 0),
(514, 51, 23, 0),
(515, 51, 24, 0),
(516, 52, 16, 0),
(517, 52, 17, 0),
(518, 52, 18, 0),
(519, 52, 19, 0),
(520, 52, 20, 0),
(521, 52, 21, 1),
(522, 52, 22, 0),
(523, 52, 23, 0),
(524, 52, 24, 0),
(525, 53, 16, 0),
(526, 53, 17, 0),
(527, 53, 18, 0),
(528, 53, 19, 0),
(529, 53, 20, 0),
(530, 53, 21, 1),
(531, 53, 22, 0),
(532, 53, 23, 0),
(533, 53, 24, 0),
(534, 54, 16, 0),
(535, 54, 17, 0),
(536, 54, 18, 0),
(537, 54, 19, 1),
(538, 54, 20, 0),
(539, 54, 21, 0),
(540, 54, 22, 0),
(541, 54, 23, 0),
(542, 54, 24, 0),
(543, 55, 16, 0),
(544, 55, 17, 0),
(545, 55, 18, 0),
(546, 55, 19, 1),
(547, 55, 20, 0),
(548, 55, 21, 0),
(549, 55, 22, 0),
(550, 55, 23, 0),
(551, 55, 24, 0),
(552, 56, 16, 0),
(553, 56, 17, 0),
(554, 56, 18, 0),
(555, 56, 19, 1),
(556, 56, 20, 0),
(557, 56, 21, 0),
(558, 56, 22, 0),
(559, 56, 23, 0),
(560, 56, 24, 0),
(561, 57, 16, 0),
(562, 57, 17, 0),
(563, 57, 18, 0),
(564, 57, 19, 1),
(565, 57, 20, 0),
(566, 57, 21, 0),
(567, 57, 22, 0),
(568, 57, 23, 0),
(569, 57, 24, 0),
(570, 58, 16, 0),
(571, 58, 17, 0),
(572, 58, 18, 0),
(573, 58, 19, 1),
(574, 58, 20, 0),
(575, 58, 21, 0),
(576, 58, 22, 0),
(577, 58, 23, 0),
(578, 58, 24, 0),
(579, 59, 16, 0),
(580, 59, 17, 0),
(581, 59, 18, 0),
(582, 59, 19, 1),
(583, 59, 20, 0),
(584, 59, 21, 0),
(585, 59, 22, 0),
(586, 59, 23, 0),
(587, 59, 24, 0),
(588, 60, 16, 0),
(589, 60, 17, 0),
(590, 60, 18, 0),
(591, 60, 19, 1),
(592, 60, 20, 0),
(593, 60, 21, 0),
(594, 60, 22, 0),
(595, 60, 23, 0),
(596, 60, 24, 0),
(615, 63, 16, 0),
(616, 63, 17, 0),
(617, 63, 18, 0),
(618, 63, 19, 0),
(619, 63, 20, 0),
(620, 63, 21, 1),
(621, 63, 22, 0),
(622, 63, 23, 0),
(623, 63, 24, 0),
(624, 64, 16, 0),
(625, 64, 17, 0),
(626, 64, 18, 0),
(627, 64, 19, 0),
(628, 64, 20, 0),
(629, 64, 21, 1),
(630, 64, 22, 0),
(631, 64, 23, 0),
(632, 64, 24, 0),
(633, 65, 16, 0),
(634, 65, 17, 0),
(635, 65, 18, 0),
(636, 65, 19, 0),
(637, 65, 20, 0),
(638, 65, 21, 1),
(639, 65, 22, 0),
(640, 65, 23, 0),
(641, 65, 24, 0),
(642, 66, 16, 0),
(643, 66, 17, 0),
(644, 66, 18, 0),
(645, 66, 19, 0),
(646, 66, 20, 0),
(647, 66, 21, 1),
(648, 66, 22, 0),
(649, 66, 23, 0),
(650, 66, 24, 0),
(651, 67, 16, 0),
(652, 67, 17, 0),
(653, 67, 18, 0),
(654, 67, 19, 0),
(655, 67, 20, 0),
(656, 67, 21, 1),
(657, 67, 22, 0),
(658, 67, 23, 0),
(659, 67, 24, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_news_scheduled`
--

CREATE TABLE `tbl_news_scheduled` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `news_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_news_scheduled`
--

INSERT INTO `tbl_news_scheduled` (`id`, `news_id`, `news_date`) VALUES
(1, 47, '10-04-2020'),
(2, 48, '10-04-2020'),
(3, 49, '13-04-2020'),
(4, 50, '16-04-2020'),
(5, 51, '18-04-2020'),
(6, 52, '18-04-2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_page`
--

CREATE TABLE `tbl_page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `page_layout` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_page`
--

INSERT INTO `tbl_page` (`page_id`, `page_name`, `page_slug`, `page_content`, `page_layout`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Desarrollador', 'about-us', '\r\n<br>\r\n<div style=\"border: 1px solid rgba(3, 201, 2,.5); display: inline-block; border-radius: 3px;\">\r\n<table style=\"font-family: arial; height:90px; border-collapse: collapse; border: \">\r\n  <tr>\r\n    <td style=\"padding: 7px\">\r\n      <img src=\"https://scontent.ftru2-3.fna.fbcdn.net/v/t1.0-9/s960x960/58442308_2275837319404856_6241976211518521344_o.jpg?_nc_cat=100&_nc_sid=174925&_nc_ohc=gYWybqhJUJcAX8lau6i&_nc_ht=scontent.ftru2-3.fna&_nc_tp=7&oh=6bab79a2a4f47c1279e9e57eb8eb8b47&oe=5EC30704\" \r\n         alt=\"\" \r\n         width=\"80\" \r\n         height=\"80\" \r\n         style=\"display:block; border-radius: 50%; margin-right: 7px; float: left\"\r\n       >\r\n      <div style=\"width: 5px; height: 80px; background: rgba(3, 201, 2,.5); float: right\">\r\n    </td>\r\n    <td style=\"vertical-align:top; padding:7px 14px 7px 3px\">\r\n      <strong style=\"margin: 0; font-size:17px; color: rgba(3, 201, 2,.5); line-height: 24px; height: 24px; display:block\">Yoel Barrios</strong>\r\n      <p style=\'font-size:12px; margin: 0px 0 6px; height: 30px\'>\r\n        <span style=\"margin: 0; color: #666\">Director General (CEO)</span>\r\n        <br>\r\n        <a href=\'https://ed.team\' style=\"color: #25C9FF; font-weight: bold\">https://battleff.com</a>\r\n      </p>\r\n      <div id=\"sociales\" ></div>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</div>\r\n</br>\r\n<script>\r\n  let socials = {\r\n  facebook: {\r\n    url: \'#\',\r\n    icon: \'https://drupal.ed.team/sites/default/files/social-icons/facebook-icon.png\'\r\n  } ,\r\n  youtube: {\r\n    url: \'#\',\r\n    icon: \'https://drupal.ed.team/sites/default/files/social-icons/youtube-icon.png\'\r\n  },\r\n  twitter: { \r\n    url: \'#\',\r\n    icon: \'https://drupal.ed.team/sites/default/files/social-icons/twitter-icon.png\'\r\n  },\r\n  linkedin: {\r\n    url: \'#\',\r\n    icon: \'https://drupal.ed.team/sites/default/files/social-icons/linkedin-icon.png\'\r\n  },\r\n  github: {\r\n    url: \'#\',\r\n    icon: \'https://drupal.ed.team/sites/default/files/social-icons/github-icon.png\'\r\n  } \r\n}\r\n\r\nlet socialIcons = \'\';\r\nfor(let social in socials) {\r\n  socialIcons += `<a href=\"${socials[social].url}\" style=\"display:inline-block;margin-right:6px\"><img src=\"${socials[social].icon}\" width=\"20\" style=\"display: block\"></a>`\r\n}\r\n\r\ndocument.getElementById(\'sociales\').innerHTML = socialIcons;\r\n</script>\r\n\r\n', 'Page with Sidebar', 'Active', '', '', ''),
(2, 'Contact Us', 'contact-us', '<p>This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;This is a contact us page.&nbsp;</p>\r\n', 'Contact Us', 'Active', '', '', ''),
(5, 'Galería de fotos', 'photo-gallery', '', 'Gallery Page', 'Active', '', '', ''),
(6, 'Galería de videos', 'video-gallery', '', 'Video Page', 'Active', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(255) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `p_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_photo`
--

INSERT INTO `tbl_photo` (`photo_id`, `photo_caption`, `photo_name`, `p_category_id`) VALUES
(8, 'Photo 1', 'photo-8.png', 1),
(9, 'Photo 2', 'photo-9.png', 1),
(10, 'Photo 3', 'photo-10.png', 1),
(11, 'Photo 4', 'photo-11.png', 2),
(12, 'Photo 5', 'photo-12.png', 2),
(13, 'Photo 6', 'photo-13.png', 2),
(14, 'Evento web supermercado ', 'photo-14.jpeg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `total_recent_news` int(10) NOT NULL,
  `total_popular_news` int(10) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `mod_rewrite` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `total_recent_news`, `total_popular_news`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `mod_rewrite`) VALUES
(1, 'logo.jpg', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an. Cum ei doctus oporteat contentiones, vix graeci vocibus alienum no. Quando homero aeterno cu pro, mel ne novum ridens aliquando, harum facete per an.</p>\r\n\r\n<p>Ea suas pertinax has, solet officiis pericula cu pro, possit inermis qui ad. An mea tale perfecto sententiae, eos inani epicuri concludaturque ex.</p>\r\n', '© battle ff 2020', 'ABC Steet, NewYork.', 'info@yourdomain.com', '123-456-7878', '123-456-7890', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.84040262736!2d-74.25819605476612!3d40.70583158628177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbd!4v1485712851643\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'jbbr.1990@gmail.com', 'Visitor Email Message - NewsTree', 'Thank you for sending email. We will contact you shortly.', 0, 0, 'Battle ff', 'free fire, codigos, noticias, eventos, diamantes', 'pagina informativa sobre los ultimos acontecimientos que suceden en el juego', 'Off');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', '#', 'fa fa-facebook'),
(2, 'Twitter', '#', 'fa fa-twitter'),
(3, 'LinkedIn', '#', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '#', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(4, 'jbbr.1990@gmail.com', '2017-08-10', '2017-08-10 07:44:23', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Yoel', 'sadmin@gmail.com', '0177777777', '81dc9bdb52d04dc20036dbd8313ed055', 'user-1.png', 'Super Admin', 'Active'),
(13, 'Kakon Asif', 'admin@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '', 'Admin', 'Active'),
(14, 'Sabbir Ahmed', 'publisher@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '', 'Publisher', 'Active'),
(15, 'Michael', 'michael@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '', 'Publisher', 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_video`
--

CREATE TABLE `tbl_video` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `video_iframe` text NOT NULL,
  `v_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_video`
--

INSERT INTO `tbl_video` (`video_id`, `video_title`, `video_iframe`, `v_category_id`) VALUES
(3, 'Video 1', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/TW9d8vYrVFQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1),
(4, 'Video 2', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/p7ZsBPK656s\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1),
(5, 'Video 3', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/wTdtQ_yfQPM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1),
(6, 'Video 4', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RcmrbNRK-jY\" frameborder=\"0\" allowfullscreen></iframe>', 2),
(7, 'Video 5', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ka-ZgwCXKho\" frameborder=\"0\" allowfullscreen></iframe>', 2),
(8, 'Video 6', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/MVMIwIJtMdU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indices de la tabla `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indices de la tabla `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  ADD PRIMARY KEY (`p_category_id`);

--
-- Indices de la tabla `tbl_category_video`
--
ALTER TABLE `tbl_category_video`
  ADD PRIMARY KEY (`v_category_id`);

--
-- Indices de la tabla `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indices de la tabla `tbl_home_category`
--
ALTER TABLE `tbl_home_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indices de la tabla `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indices de la tabla `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  ADD PRIMARY KEY (`news_category_id`);

--
-- Indices de la tabla `tbl_news_scheduled`
--
ALTER TABLE `tbl_news_scheduled`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indices de la tabla `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indices de la tabla `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indices de la tabla `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  MODIFY `p_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_category_video`
--
ALTER TABLE `tbl_category_video`
  MODIFY `v_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_home_category`
--
ALTER TABLE `tbl_home_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  MODIFY `news_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT de la tabla `tbl_news_scheduled`
--
ALTER TABLE `tbl_news_scheduled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

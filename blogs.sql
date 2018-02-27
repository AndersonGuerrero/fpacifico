-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-02-2018 a las 05:08:27
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `clientes_pacifico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `titulo_en` varchar(255) DEFAULT NULL,
  `texto` varchar(2000) DEFAULT NULL,
  `texto_en` varchar(2000) DEFAULT NULL,
  `imagen` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `titulo`, `titulo_en`, `texto`, `texto_en`, `imagen`, `created_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis velit saepe, suscipit temporibus quas necessitatibus. Corporis atque officiis amet dignissimos numquam deserunt reiciendis quas quis vitae. Accusamus iusto, itaque cum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis velit saepe, suscipit temporibus quas necessitatibus. Corporis atque officiis amet dignissimos numquam deserunt reiciendis quas quis vitae. Accusamus iusto, itaque cum.</p>\n', '2018_02_26_10.57.04blog1.jpg', '2018-02-12 00:00:00'),
(2, 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n\r\n\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n', '2018_02_26_10.57.31blog3.jpg', '2018-02-20 00:00:00'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis velit saepe, suscipit temporibus quas necessitatibus. Corporis atque officiis amet dignissimos numquam deserunt reiciendis quas quis vitae. Accusamus iusto, itaque cum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis velit saepe, suscipit temporibus quas necessitatibus. Corporis atque officiis amet dignissimos numquam deserunt reiciendis quas quis vitae. Accusamus iusto, itaque cum.</p>\r\n', '2018_02_26_10.57.48blog2.jpg', '2018-02-26 00:00:00'),
(5, 'dfdfdf', 'sdfsdf', 'dfdfdf', 'gfgd', '2018_02_26_11.26.44fondo.jpeg', '2018-02-26 23:09:50'),
(6, 'Lorem ipsum dolor sit amet.sdsdsdhksjhlsjkfdhkjahdlk', NULL, 'dsfsdjflksdjflk dsfjklsdjfksjf sdjflkjsd', NULL, '2018_02_26_11.27.121.png', '2018-02-26 23:10:56'),
(7, 'teste', NULL, 'sdfsdfsdfsdfsdf', NULL, '2018_02_26_11.28.29aside_bg2.jpg', '2018-02-26 23:23:52');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

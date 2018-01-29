-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-01-2018 a las 15:33:12
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
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL,
  `titulo_blanco` varchar(50) DEFAULT NULL,
  `titulo_blanco_en` varchar(50) DEFAULT NULL,
  `titulo_amarillo` varchar(50) DEFAULT NULL,
  `titulo_amarillo_en` varchar(50) DEFAULT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `texto_en` varchar(255) DEFAULT NULL,
  `btna` varchar(100) DEFAULT NULL,
  `btna_en` varchar(100) DEFAULT NULL,
  `btnb` varchar(100) DEFAULT NULL,
  `btnb_en` varchar(100) DEFAULT NULL,
  `urla` varchar(200) DEFAULT NULL,
  `urla_en` varchar(200) DEFAULT NULL,
  `urlb` varchar(200) DEFAULT NULL,
  `urlb_en` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `titulo_blanco`, `titulo_blanco_en`, `titulo_amarillo`, `titulo_amarillo_en`, `texto`, `texto_en`, `btna`, `btna_en`, `btnb`, `btnb_en`, `urla`, `urla_en`, `urlb`, `urlb_en`, `img`) VALUES
(1, 'Préstamos', 'Quick', 'Rápidos', 'Loans', 'Arregla tu casa este mes!', 'Fix your house this month!', 'Aplica para tu préstamo', ' Apply for your loan', 'Mas información', ' More information', 'prestamos/solicitud/1', '#', 'servicios/detalle/1', '#', 'upload/banners/2017_12_10_02.13.50banner1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nombre_en` varchar(100) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `nombre_en`, `label`) VALUES
(1, 'Fuerza Pública', 'Public Force', 'fuerzapublica'),
(2, 'Educadores', 'Educators', 'educa'),
(3, 'ACP', 'ACP', 'acp'),
(4, 'Empresa Privada', 'Private Company', 'empresaprivada'),
(5, 'Profesional de Salud', 'Health Professional', 'profesionalsalud'),
(6, 'Otras', 'Others', 'otras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int(11) NOT NULL,
  `historia` varchar(3000) DEFAULT NULL,
  `historia_en` varchar(3000) DEFAULT NULL,
  `mision` varchar(1000) DEFAULT NULL,
  `mision_en` varchar(1000) DEFAULT NULL,
  `vision` varchar(1000) DEFAULT NULL,
  `vision_en` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `historia`, `historia_en`, `mision`, `mision_en`, `vision`, `vision_en`) VALUES
(1, '<p>Corporaci&oacute;n Pac&iacute;fico se funda en 1984 en la ciudad de Col&oacute;n, por iniciativa de uno de los consorcios m&aacute;s s&oacute;lidos en la plaza, de vasta experiencia y trayectoria de negocios en nuestro pa&iacute;s. Iniciamos con un compromiso que a&uacute;n mantenemos, y que se convertir&iacute;a en el lema que nos ha acompa&ntilde;ado durante a&ntilde;os:</p>\r\n\r\n<p>Ser para el p&uacute;blico, Su mejor alternativa!</p>\r\n\r\n<p>La aceptaci&oacute;n recibida en la ciudad de Col&oacute;n, y la necesidad de nuestros clientes actuales y potenciales, de tener oficinas a su alcance, motivaron la apertura de una nueva oficina en la ciudad capital, hoy d&iacute;a nuestra Casa Matriz, la cual se encuentra ubicada en el coraz&oacute;n de la Calle 50, en pleno centro bancario. Al presente, nuestra cobertura nacional y red de atenci&oacute;n al p&uacute;blico incluye dos sucursales en Panam&aacute;, y oficinas en David, Chitr&eacute;, Santiago, Chorrera y Col&oacute;n.</p>\r\n', '<p>Corporaci&oacute;n Pac&iacute;fico was founded in 1984 in the city of Col&oacute;n, on the initiative of one of the strongest consortiums in the plaza, with vast experience and business experience in our country. We started with a commitment that we still maintain, and that would become the motto that has accompanied us for years:</p>\r\n\r\n<p>Be for the public, Your best alternative!</p>\r\n\r\n<p>The acceptance received in the city of Col&oacute;n, and the need of our current and potential clients, to have offices within their reach, motivated the opening of a new office in the capital city, today our Head Office, which is located in the heart of Calle 50, right in the banking center. At present, our national coverage and customer service network includes two branches in Panama, and offices in David, Chitr&eacute;, Santiago, Chorrera and Col&oacute;n.</p>\r\n', 'Satisfacer las necesidades de nuestros clientes ofreciendo servicios financieros de calidad, con responsabilidad y excelencia; con un recurso humano capacitado y comprometido en brindar asesoría personalizada, ágil y oportuna.', 'Satisfy the needs of our clients by offering quality financial services, with responsibility and excellence; with a human resource trained and committed to provide personalized, agile and timely advice', 'Ser una entidad financiera sólida, rentable y líder en soluciones personalizadas para nuestros clientes, comprometida con un servicio de calidad, contribuyendo con el desarrollo de nuestros colaboradores y al crecimiento de nuestro país. ', 'To be a solid financial institution, profitable and leader in customized solutions for our clients, committed to a quality service, contributing with the development of our collaborators and the growth of our country.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `titulo_en` varchar(255) DEFAULT NULL,
  `texto` varchar(2000) DEFAULT NULL,
  `texto_en` varchar(2000) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `faq`
--

INSERT INTO `faq` (`id`, `titulo`, `titulo_en`, `texto`, `texto_en`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis velit saepe, suscipit temporibus quas necessitatibus. Corporis atque officiis amet dignissimos numquam deserunt reiciendis quas quis vitae. Accusamus iusto, itaque cum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis velit saepe, suscipit temporibus quas necessitatibus. Corporis atque officiis amet dignissimos numquam deserunt reiciendis quas quis vitae. Accusamus iusto, itaque cum.</p>\r\n'),
(2, 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur enim provident voluptates obcaecati ex odio dicta deserunt laborum minus inventore. Sequi assumenda, non a nemo iusto consectetur rerum doloremque illum.</p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `general`
--

CREATE TABLE IF NOT EXISTS `general` (
  `id` int(11) NOT NULL,
  `tlfa` varchar(100) DEFAULT NULL,
  `tlfb` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `nombre_pdf` varchar(100) DEFAULT NULL,
  `nombre_pdf_en` varchar(100) DEFAULT NULL,
  `texto_referir` varchar(500) DEFAULT NULL,
  `texto_referir_en` varchar(500) DEFAULT NULL,
  `titulo_btn` varchar(100) DEFAULT NULL,
  `titulo_btn_en` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `img_en` varchar(100) DEFAULT NULL,
  `parallax_img` varchar(100) DEFAULT NULL,
  `titulo_am` varchar(100) DEFAULT NULL,
  `titulo_am_en` varchar(100) DEFAULT NULL,
  `titulo_bl` varchar(100) DEFAULT NULL,
  `titulo_bl_en` varchar(100) DEFAULT NULL,
  `texto` varchar(500) DEFAULT NULL,
  `texto_en` varchar(500) DEFAULT NULL,
  `pdfa` varchar(50) DEFAULT NULL,
  `pdfb` varchar(50) DEFAULT NULL,
  `pdfc` varchar(50) DEFAULT NULL,
  `pdfd` varchar(50) DEFAULT NULL,
  `pdfaimg` varchar(100) DEFAULT NULL,
  `pdfbimg` varchar(100) DEFAULT NULL,
  `pdfcimg` varchar(100) DEFAULT NULL,
  `pdfdimg` varchar(100) DEFAULT NULL,
  `pdfa_en` varchar(50) DEFAULT NULL,
  `pdfb_en` varchar(50) DEFAULT NULL,
  `pdfc_en` varchar(50) DEFAULT NULL,
  `pdfd_en` varchar(50) DEFAULT NULL,
  `pdfaimg_en` varchar(100) DEFAULT NULL,
  `pdfbimg_en` varchar(100) DEFAULT NULL,
  `pdfcimg_en` varchar(100) DEFAULT NULL,
  `pdfdimg_en` varchar(100) DEFAULT NULL,
  `bolsa` varchar(5000) DEFAULT NULL,
  `bolsa_en` varchar(5000) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `general`
--

INSERT INTO `general` (`id`, `tlfa`, `tlfb`, `email`, `facebook`, `twitter`, `youtube`, `instagram`, `nombre_pdf`, `nombre_pdf_en`, `texto_referir`, `texto_referir_en`, `titulo_btn`, `titulo_btn_en`, `img`, `img_en`, `parallax_img`, `titulo_am`, `titulo_am_en`, `titulo_bl`, `titulo_bl_en`, `texto`, `texto_en`, `pdfa`, `pdfb`, `pdfc`, `pdfd`, `pdfaimg`, `pdfbimg`, `pdfcimg`, `pdfdimg`, `pdfa_en`, `pdfb_en`, `pdfc_en`, `pdfd_en`, `pdfaimg_en`, `pdfbimg_en`, `pdfcimg_en`, `pdfdimg_en`, `bolsa`, `bolsa_en`) VALUES
(1, '340-9000', '6679-2140', 'platafacil@fpacifico.com', 'https://www.facebook.com/finpacifico/', 'https://twitter.com/finpacifico?lang=es', 'https://www.youtube.com/channel/UCPBD6Loh7VZZd0ZfhwD5q8g', 'https://www.instagram.com/finpacifico/', 'Bienes a la venta', ' Goods for sale', 'Referir sí paga, Plan Chispa de Financiera Pacífico.', ' Refer if you pay, Plan Chispa de Financiera Pacífico.', 'ENTÉRATE COMO', 'Find out how', 'upload/general/2018_01_18_11.33.46(F-C) CHISPA 2016 BOLETO-IN 2017 (2).jpg', 'upload/general/2017_12_10_01.31.27lewasing 2017 web llave chica.png', 'upload/general/2017_12_10_12.13.11familia.jpg', 'Aqui va', ' Here is', 'un mensaje', 'a message', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque accusamus \r\nfacere dolorem Quam atque veniam, nulla.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque accusamus \r\nfacere dolorem Quam atque veniam, nulla.', 'Propiedades', 'Autos Reposeidos', 'Terrenos', 'Otros', 'upload/pdfs/2017_12_11_06.45.26PAGINA WEB PACÍFICO 2017-RED.pdf', NULL, NULL, NULL, ' Properties', 'Cars Foreclosed', 'Land', 'Others', NULL, NULL, NULL, NULL, '<p><strong>Corporaci&oacute;n Pac&iacute;fico</strong> entidad dedica a brindar soluciones de cr&eacute;ditos en el pa&iacute;s, con m&aacute;s de 30 a&ntilde;os de servicio, en nuestro crecimiento contamos con oportunidades de desarrollo profesional constante, beneficios competitivos, buen clima laboral y programas de capacitaci&oacute;n profesional para que contin&uacute;es tu crecimiento.</p>\r\n\r\n<p>&iexcl;Tienes vocaci&oacute;n a tu trabajo! enfocado en la atenci&oacute;n al cliente, en&eacute;rgico en todo lo que haces y amante del trabajo en equipo, esta es tu oportunidad laboral para dar a demostrar tu potencial.</p>\r\n\r\n<p>Int&eacute;grate a nuestro equipo de trabajo visitando nuestras vacantes y haz click en la solicitud de empleo o env&iacute;anos tu hoja de vida actualizada a <a href="mailto:bolsadetrabajo@fpacifico.com?subject=Interesados%20en%20Plaza%20de%20Trabajo" target="_blank">bolsadetrabajo@fpacifico.com</a> para ser considerado en el proceso de reclutamiento y selecci&oacute;n de nuestras vacantes.</p>\r\n\r\n<p>Reservamos el derecho de contactar a los candidatos que se considera que cumpla con el perfil en b&uacute;squeda. Debes ser mayor de 18 a&ntilde;os como lo establece la ley y la informaci&oacute;n brindad sea ver&iacute;dica y comprobada. De ser extranjero, debe contar con todos los documento en regla.</p>\r\n', '<p><strong>Corporaci&oacute;n Pac&iacute;fico</strong> entity is dedicated to providing credit solutions in the country, with more than 30 years of service, in our growth we have opportunities for constant professional development, competitive benefits, good work environment and professional training programs so you can continue your growth.</p>\r\n\r\n<p>You have a vocation to your work! focused on customer service, energetic in everything you do and a lover of teamwork, this is your job opportunity to show your potential.</p>\r\n\r\n<p>Join our team by visiting our vacancies and click on the job application or send us your updated resume to <a href="mailto:bolsadetrabajo@fpacifico.com?subject=Interesados%20en%20Plaza%20de%20Trabajo" target="_blank">bolsadetrabajo@fpacifico.com</a> to be considered in the process of recruitment and selection of our vacancies.</p>\r\n\r\n<p>We reserve the right to contact candidates who are considered to meet the search profile. You must be over 18 years old as established by law and the information provided be truthful and proven. If you are a foreigner, you must have all the documents in order.</p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE IF NOT EXISTS `promociones` (
  `id` int(11) NOT NULL,
  `categorias_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nombre_en` varchar(100) DEFAULT NULL,
  `fecha_finaliza` date DEFAULT NULL,
  `texto` varchar(3000) DEFAULT NULL,
  `texto_en` varchar(3000) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `descripcion_en` varchar(500) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`id`, `categorias_id`, `nombre`, `nombre_en`, `fecha_finaliza`, `texto`, `texto_en`, `descripcion`, `descripcion_en`, `img`) VALUES
(1, 4, 'Especial para ti! Empresa privada', ' Special for you! Private company', '2018-02-04', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis animi quibusdam ex commodi pariatur nihil, ab numquam ipsa laudantium ipsam aut officia omnis placeat laborum aliquid porro. Ab, commodi, magnam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum porro quia dolores quas atque sequi ea. Temporibus odio esse distinctio necessitatibus nisi error suscipit, nulla perspiciatis laudantium voluptate doloribus, aspernatur.</p>\r\n', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis animi quibusdam ex commodi pariatur nihil, ab numquam ipsa laudantium ipsam aut officia omnis placeat laborum aliquid porro. Ab, commodi, magnam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum porro quia dolores quas atque sequi ea. Temporibus odio esse distinctio necessitatibus nisi error suscipit, nulla perspiciatis laudantium voluptate doloribus, aspernatur.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus, soluta nostrum aspernatur quaerat minus reiciendis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus, soluta nostrum aspernatur quaerat minus reiciendis.', 'upload/promociones/2017_12_11_12.28.40lewasing 2017 web llave chica.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisitos`
--

CREATE TABLE IF NOT EXISTS `requisitos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nombre_en` varchar(100) DEFAULT NULL,
  `texto` varchar(2000) DEFAULT NULL,
  `texto_en` varchar(2000) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `requisitos`
--

INSERT INTO `requisitos` (`id`, `nombre`, `nombre_en`, `texto`, `texto_en`, `img`) VALUES
(1, 'Fuerza Pública', 'Public Force', '<p>1. CEDULA</p>\r\n\r\n<p>2. CARNET DE POLICIA</p>\r\n\r\n<p>3. 2 &Uacute;LTIMO TALONARIO</p>\r\n\r\n<p>4. RECIBO DE UTILIDAD</p>\r\n\r\n<p>5. PROFORMA O CLAVE</p>\r\n', '<p>1. CEDULA</p>\r\n\r\n<p>2. POLICE CARD</p>\r\n\r\n<p>3. 2 LAST TALONARY</p>\r\n\r\n<p>4. RECEIPT OF UTILITY</p>\r\n\r\n<p>5. PROFORMA OR KEY</p>\r\n', 'upload/requisitos/2017_12_11_01.59.06prestamopersonal1.jpg'),
(2, 'Educadores', 'Educators', '<p>1. CEDULA</p>\r\n\r\n<p>2. CARNET DE TRABAJO/CARNET DE C.S.S.</p>\r\n\r\n<p>3. 2 &Uacute;LTIMO TALONARIO</p>\r\n\r\n<p>4. RECIBO DE UTILIDAD</p>\r\n\r\n<p>5. PROFORMA O CLAVE</p>\r\n', '<p>1. CEDULA</p>\r\n\r\n<p>2. CARD OF WORK / CARD OF C.S.S.</p>\r\n\r\n<p>3. 2 LAST TALONARY</p>\r\n\r\n<p>4. RECEIPT OF UTILITY</p>\r\n\r\n<p>5. PROFORMA OR KEY</p>\r\n', 'upload/requisitos/2017_12_11_02.01.16equipo.jpg'),
(3, 'Jubilado', 'Retired', '<p>1. CEDULA</p>\r\n\r\n<p>2. CARNET DE JUBILADO C.S.S.</p>\r\n\r\n<p>3. 2 ULTIMOS TALONARIOS</p>\r\n\r\n<p>4. RECIBO DE UTILIDAD</p>\r\n', '<p>1. CEDULA</p>\r\n\r\n<p>2. CARD OF RETIRED C.S.S.</p>\r\n\r\n<p>3. 2 LAST SIZES</p>\r\n\r\n<p>4. RECEIPT OF UTILITY</p>\r\n', 'upload/requisitos/2017_12_11_02.09.51promo3.jpg'),
(4, 'Gobierno Central', 'Central Government', '<p>1. CEDULA</p>\r\n\r\n<p>2. CARNET DE TRABAJO O SEGUNDA IDENTIFICACION</p>\r\n\r\n<p>3. 2 ULTIMOS TALONARIOS</p>\r\n\r\n<p>4. PROFORMA O CLAVE</p>\r\n\r\n<p>5. RECIBO DE UTILIDAD</p>\r\n', '<p>1. CEDULA</p>\r\n\r\n<p>2. WORK CARD OR SECOND IDENTIFICATION</p>\r\n\r\n<p>3. 2 LAST SIZES</p>\r\n\r\n<p>4. PROFORMA OR KEY</p>\r\n\r\n<p>5. RECEIPT OF UTILITY</p>\r\n', 'upload/requisitos/2017_12_11_02.03.54promo1.jpg'),
(5, 'Entidades Autónomas y Semiautónomas', 'Autonomous and Semi-autonomous Entities', '<p>1. CEDULA</p>\r\n\r\n<p>2. CARNET DE TRABAJO O SEGUNDA IDENTIFICACION</p>\r\n\r\n<p>3. 2 ULTIMOS TALONARIOS</p>\r\n\r\n<p>4. 2 ULTIMAS FICHAS (SI APLICA)</p>\r\n\r\n<p>5. CARTA DE TRABAJO</p>\r\n\r\n<p>6. RECIBO DE UTILIDAD</p>\r\n', '<p>1. CEDULA</p>\r\n\r\n<p>2. WORK CARD OR SECOND IDENTIFICATION</p>\r\n\r\n<p>3. 2 LAST SIZES</p>\r\n\r\n<p>4. 2 LAST FILES (IF APPLICABLE)</p>\r\n\r\n<p>5. WORK LETTER</p>\r\n\r\n<p>6. RECEIPT OF UTILITY</p>\r\n', 'upload/requisitos/2017_12_11_02.05.04equipo.jpg'),
(6, 'ACP', 'ACP', '<p>1. CEDULA</p>\r\n\r\n<p>2. CARNET DE TRABAJO O SEGUNDA IDENTIFICACION</p>\r\n\r\n<p>3. 2 ULTIMOS TALONARIOS O COMPROBANTES DE PAGO</p>\r\n\r\n<p>4. 2 ULTIMAS FICHAS</p>\r\n\r\n<p>5. CARTA DE TRABAJO</p>\r\n\r\n<p>6. RECIBO DE UTILIDAD</p>\r\n', '<p>1. CEDULA</p>\r\n\r\n<p>2. WORK CARD OR SECOND IDENTIFICATION</p>\r\n\r\n<p>3. 2 LAST TALONARIES OR PROOF OF PAYMENT</p>\r\n\r\n<p>4. 2 LAST FILES</p>\r\n\r\n<p>5. WORK LETTER</p>\r\n\r\n<p>6. RECEIPT OF UTILITY</p>\r\n', 'upload/requisitos/2017_12_11_02.05.51prestamopersonal1.jpg'),
(7, 'Empresa Privada', ' Private Company', '<p>1. CEDULA</p>\r\n\r\n<p>2. CARNET DE TRABAJO O SEGUNDA IDENTIFICACION</p>\r\n\r\n<p>3. 2 ULTIMOS TALONARIOS O COMPROBANTES DE PAGO</p>\r\n\r\n<p>4. 2 ULTIMAS FICHAS</p>\r\n\r\n<p>5. CARTA DE TRABAJO</p>\r\n\r\n<p>6. RECIBO DE UTILIDAD</p>\r\n', '<p>1. CEDULA</p>\r\n\r\n<p>2. WORK CARD OR SECOND IDENTIFICATION</p>\r\n\r\n<p>3. 2 LAST TALONARIES OR PROOF OF PAYMENT</p>\r\n\r\n<p>4. 2 LAST FILES</p>\r\n\r\n<p>5. WORK LETTER</p>\r\n\r\n<p>6. RECEIPT OF UTILITY</p>\r\n', 'upload/requisitos/2017_12_11_02.06.52empresarios.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nombre_en` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `descripcion_en` varchar(255) DEFAULT NULL,
  `texto` varchar(3000) DEFAULT NULL,
  `texto_en` varchar(3000) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`, `nombre_en`, `descripcion`, `descripcion_en`, `texto`, `texto_en`, `img`) VALUES
(1, 'Préstamo personal', 'Personal loan', 'Planes de financiamiento a diversos sectores de la sociedad', ' Provide the best financing plans to various sectors of society ...', '<p>Financiera Pac&iacute;fico se especializa en brindar los mejores planes de financiamiento a diversos sectores de la sociedad:&nbsp;<br />\r\n- Educadores<br />\r\n- Polic&iacute;as<br />\r\n- T&eacute;cnicos en Salud<br />\r\n- Empleados P&uacute;blicos<br />\r\n- Sector Privado<br />\r\n- Autoridad del Canal de Panam&aacute;<br />\r\n- Jubilados y Pensionados de la CSS<br />\r\n- Jubilados del la Zona del Canal<br />\r\nNuestro equipo de cr&eacute;dito est&aacute; capacitado para ofrecer planes de pr&eacute;stamos personales acordes con la necesidad real del cliente.</p>\r\n\r\n<p><strong>Requisitos:</strong><br />\r\n1. Ficha del Seguro Social y dos &uacute;ltimos talonarios de pago<br />\r\n2. Copia de la c&eacute;dula, carnet de Seguro y/o Carn&eacute; de Trabajo<br />\r\n3. Carta de trabajo (activos) o Proforma<br />\r\n4. Recibo de utilidad (Luz, agua, cable)</p>\r\n\r\n<p><strong>M&aacute;s que Pr&eacute;stamos, un Mundo de Ventajas:</strong><br />\r\n- Asesor&iacute;a y atenci&oacute;n personalizada<br />\r\n- Competitivas tasas de inter&eacute;s<br />\r\n- Servicio r&aacute;pido<br />\r\n- Solidez y confianza</p>\r\n', '<p>Financiera Pac&iacute;fico specializes in providing the best financing plans to various sectors of society:&nbsp;<br />\r\n- Educators&nbsp;<br />\r\n- Police&nbsp;<br />\r\n- Health Technicians&nbsp;<br />\r\n- Public employees&nbsp;<br />\r\n- Private sector&nbsp;<br />\r\n- Panama Canal Authority&nbsp;<br />\r\n- Retirees and Pensioners of the CSS&nbsp;<br />\r\n- Retirees from the Canal Zone Our credit team is trained to offer personal loan plans according to the real needs of the client.&nbsp;</p>\r\n\r\n<p><strong>Requirements:&nbsp;</strong><br />\r\n1. Social Security card and two last pay stubs&nbsp;<br />\r\n2. Copy of the identity card, insurance card and / or work card&nbsp;<br />\r\n3. Work letter (assets) or Proforma&nbsp;<br />\r\n4. Utility receipt (Light, water, cable)&nbsp;</p>\r\n\r\n<p><strong>More than Loans, a World of Advantages:&nbsp;</strong><br />\r\n- Advice and personalized attention&nbsp;<br />\r\n- Competitive interest rates&nbsp;<br />\r\n- Fast service&nbsp;<br />\r\n- Strength and confidence<br />\r\n&nbsp;</p>\r\n', 'upload/servicios/2017_12_10_02.45.48prestamopersonal1.jpg'),
(2, 'Préstamo con garantía hipotecaria', 'Loan with mortgage guarantee', 'Son aquellos en que el deudor proporciona a la entidad financiera una garantía...', ' Are those in which the debtor provides the financial institution with a guarantee...', '<p>Los pr&eacute;stamos con garant&iacute;a hipotecaria son aquellos en que el deudor proporciona a la entidad financiera una garant&iacute;a a cambio de una suma de dinero prestada.</p>\r\n\r\n<p><strong>&iquest;Qui&eacute;nes aplican?</strong><br />\r\nAplican todo aquel cliente que cuente con un terreno o vivienda y que en las escrituras del mismo aparezca &Eacute;l como el propietario. El cliente puede ser independiente o asalariado.</p>\r\n\r\n<p><strong>Requisitos:</strong><br />\r\n1. Escrituras de la Propiedad con plano incluido&nbsp;<br />\r\n2. C&eacute;dula de identidad personal&nbsp;<br />\r\n3. Firma de Solicitud de APC&nbsp;<br />\r\n4. Fotocopia de la &uacute;ltima factura de agua y luz<br />\r\n5. Dos &uacute;ltimas declaraciones de renta (clientes independientes)<br />\r\n6. Carta de Trabajo&nbsp;<br />\r\n7. Carnet CSS&nbsp;<br />\r\n8. &Uacute;ltima ficha CSS&nbsp;<br />\r\n9. Dos &uacute;ltimos talonarios de pago<br />\r\n10. Aval&uacute;o (por las avaluadoras autorizadas por la empresa)</p>\r\n', '<p>The loans with mortgage guarantee are those in which the debtor provides to the financial institution a guarantee in exchange for a sum of money loaned.</p>\r\n\r\n<p><strong>Who applies?</strong><br />\r\nApply all that client that has a land or housing and that in the writings of the same appear He as the owner. The client can be independent or salaried.</p>\r\n\r\n<p><strong>Requirements:</strong><br />\r\n1. Deeds of Property with plane included<br />\r\n2. Personal identity card<br />\r\n3. APC Application Signature<br />\r\n4. Photocopy of the last water and electricity bill<br />\r\n5. Two last declarations of income (independent clients)<br />\r\n6. Work Letter<br />\r\n7. CSS Card<br />\r\n8. Last CSS tab<br />\r\n9. Two last pay stubs<br />\r\n10. Appraisal (by the appraisers authorized by the company)</p>\r\n', 'upload/servicios/2017_12_10_02.49.03architecture-1836070_1920.jpg'),
(3, 'Financiamiento de autos', 'Car financing', 'Financiamiento a tu medida para la adquisición de tu Moto Kitomi...', 'Customized financing for the acquisition of your Moto Kitomi...', '<p>Haz tu sue&ntilde;os realidad y sal sobre ruedas con el financiamiento que necesitas para tu auto nuevo o usado con Pacific Leasing.</p>\r\n\r\n<p><strong>Aplican:</strong><br />\r\nEmpresa Privada<br />\r\nIndependientes<br />\r\nACP (Permanentes y temporales)<br />\r\nExtranjeros<br />\r\nEmpleados P&uacute;blicos</p>\r\n\r\n<p><strong>Requisitos:</strong><br />\r\n<em><strong>Persona Natural</strong></em><br />\r\n1. Cotizaci&oacute;n del Equipo o Veh&iacute;culo<br />\r\n2. Copia de C&eacute;dula<br />\r\n3. Ficha de Seguro Social<br />\r\n4. Carta de Trabajo y/o 2 &uacute;ltimas declaraciones de renta<br />\r\n5. Dos &uacute;ltimos talonarios o comprobantes de pago<br />\r\n6. Copia de Recibo de Agua, luz o tel&eacute;fono<br />\r\n7. Licencia de Conducir<br />\r\n<em><strong>Persona Jur&iacute;dica</strong></em><br />\r\n1. Cotizaci&oacute;n del Equipo o Veh&iacute;culo<br />\r\n2. Copia de C&eacute;dula del Representante Legal<br />\r\n3. Copia de C&eacute;dula del Secretario(a)<br />\r\n4. Pacto Social y Reformas<br />\r\n5. 2 &uacute;ltimas Declaraciones de Renta y/o Estados Financieros<br />\r\n6. Tasa &uacute;nica vigente<br />\r\n7. Cartificado de Registro P&uacute;blico Vigente<br />\r\n8. Recibo de Luz, Agua o Tel&eacute;fono de la Compa&ntilde;&iacute;a</p>\r\n\r\n<p><strong>Beneficios:</strong><br />\r\nIntereses Competitivos<br />\r\ninter&eacute;s sobre saldo<br />\r\nPlazos hasta 84 meses<br />\r\nPlanes con y sin Fiador</p>\r\n', '<p>Make your dreams come true and get out on wheels with the financing you need for your new or used car with Pacific Leasing.</p>\r\n\r\n<p><strong>Apply:</strong><br />\r\nPrivate company<br />\r\nIndependents<br />\r\nACP (Permanent and temporary)<br />\r\nForeign<br />\r\nPublic employees</p>\r\n\r\n<p><strong>Requirements:</strong><br />\r\n<em><strong>Natural person</strong></em><br />\r\n1. Quotation of the Equipment or Vehicle<br />\r\n2. Copy of Identification<br />\r\n3. Social Security Card<br />\r\n4. Work Letter and / or 2 last declarations of income<br />\r\n5. Two last pay stubs or proof of payment<br />\r\n6. Copy of Water, Light or Telephone Receipt<br />\r\n7. Drivers License<br />\r\n<em><strong>Legal person</strong></em><br />\r\n1. Quotation of the Equipment or Vehicle<br />\r\n2. Copy of Certificate of the Legal Representative<br />\r\n3. Copy of the Secretary&#39;s Certificate<br />\r\n4. Social Pact and Reforms<br />\r\n5. 2 Last Income Statements and / or Financial Statements<br />\r\n6. Sole rate in force<br />\r\n7. Calendars of the Public Registry in Force<br />\r\n8. Light, Water or Company Telephone Receipt</p>\r\n\r\n<p><strong>Benefits:</strong><br />\r\nCompetitive interests<br />\r\ninterest on balance<br />\r\nDeadlines up to 84 months<br />\r\nPlans with and without Guarantor</p>\r\n', 'upload/servicios/2017_12_10_02.50.39carro.jpg'),
(4, 'Financiamiento de motos', 'Motorcycle financing', 'Financiamiento a tu medida para la adquisición de tu Moto Kitomi...', 'Customized financing for the acquisition of your Moto Kitomi ...', '<p>Financiamiento a tu medida para la adquisici&oacute;n de tu Moto Kitomi. R&aacute;pido, c&oacute;modo y confiable.</p>\r\n\r\n<p><strong>&iquest;Qui&eacute;nes Aplican?</strong><br />\r\n- Educadores<br />\r\n- Polic&iacute;as<br />\r\n- Empleados P&uacute;blicos<br />\r\n- Todo el Sector Privado</p>\r\n\r\n<p><strong>Planes de Financiamiento&nbsp;</strong></p>\r\n\r\n<p><em><strong>Credi Contado:</strong></em> Los financiamientos de moto, con la modalidad credicontado, son aquellos en que el deudor proporciona a la entidad financiera m&iacute;nimo el 60% del costo de la moto. El resto ser&aacute; pagadero de 4 a 6 meses (dependiendo del perfil del cliente). Adicionalmente, el cliente cubrir&aacute; los gastos de placa y seguro.</p>\r\n\r\n<p><strong><em>Kitomi Xpress: </em></strong>Son aquellos financiamientos otorgados en plazos de 6 a 18 meses, especialmente para aquel cliente que no posee el tiempo de servicio requerido para un financiamiento regular. Es muy f&aacute;cil tramitar tu cr&eacute;dito, &uacute;nicamente necesitas:</p>\r\n\r\n<p><strong>Requisitos:</strong><br />\r\n1. Carta de Trabajo&nbsp;<br />\r\n2. C&eacute;dula&nbsp;<br />\r\n3. Ficha&nbsp;<br />\r\n4. Carnet de CSS&nbsp;<br />\r\n5. Dos &uacute;ltimos talonarios de pago&nbsp;<br />\r\n6. Recibo de luz, agua o tel&eacute;fono</p>\r\n', '<p>Customized financing for the acquisition of your Moto Kitomi. Fast, comfortable and reliable.</p>\r\n\r\n<p><strong>Who applies?</strong><br />\r\n- Educators<br />\r\n- Police<br />\r\n- Public employees<br />\r\n- All the Private Sector</p>\r\n\r\n<p><strong>Financing Plans</strong></p>\r\n\r\n<p><em><strong>Credi Contado:</strong></em> Motorcycle financing, with the credited modality, are those in which the debtor provides the minimum financial entity with 60% of the cost of the motorcycle. The rest will be payable from 4 to 6 months (depending on the client&#39;s profile). Additionally, the client will cover the costs of plaque and insurance.</p>\r\n\r\n<p><strong><em>Kitomi Xpress: </em></strong>These are loans granted in terms of 6 to 18 months, especially for those customers who do not have the required service time for regular financing. It is very easy to process your credit, you only need:</p>\r\n\r\n<p><strong>Requirements:</strong><br />\r\n1. Work Letter<br />\r\n2. Certificate<br />\r\n3. Card<br />\r\n4. CSS card<br />\r\n5. Two last pay stubs<br />\r\n6. Receipt of electricity, water or telephone</p>\r\n', 'upload/servicios/2017_12_10_02.52.04moto.jpg'),
(5, 'Préstamo para microempresarios', 'Loan for microentrepreneurs', 'Financiar inversiones y capital de trabajo de micro y pequeños empresarios...', ' Finance investments and working capital of micro and small entrepreneurs ...', '<p>Este cr&eacute;dito tiene como objetivo financiar inversiones y capital de trabajo de micro y peque&ntilde;os empresarios. Trabajadores independientes, propietarios de unidades econ&oacute;micas menores enmarcadas a las microempresas y que desarrollen actividades en los sectores de la producci&oacute;n, comercio y servicios exceptuando los negocios que se indiquen a continuaci&oacute;n:</p>\r\n\r\n<p>- Producci&oacute;n y distribuci&oacute;n de bebidas alcoh&oacute;licas, exclusivamente.<br />\r\n- Juegos de Azar<br />\r\n- Cualquier otro negocio que atente contra la moral y buenas costumbres.</p>\r\n\r\n<p><strong>Actividades a Financiar:</strong></p>\r\n\r\n<p><br />\r\n<strong><em>Producci&oacute;n: </em></strong>calzados, ebanistas, confeccionistas, artesanos, panaderos, imprentas, alimentos y metalister&iacute;a.</p>\r\n\r\n<p><strong><em>Comercio:</em></strong> Tiendas, miscel&aacute;neas, minisuper, mercanc&iacute;a seca (Puestos de legumbres, entre otros)</p>\r\n\r\n<p><em><strong>Servicios:</strong></em> Sala de Belleza, barber&iacute;as, restaurantes, talleres de reparaci&oacute;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Requisitos:</strong></p>\r\n\r\n<p>1. Un a&ntilde;o con el negocio<br />\r\n2. Copia de C&eacute;dula<br />\r\n3. Aviso de Operaci&oacute;n<br />\r\n4. Paz y Salvos<br />\r\n5. Inscripci&oacute;n AMPYME<br />\r\n6. Flujo de Caja de los &uacute;ltimos 3 meses<br />\r\n7. Declaraci&oacute;n de renta de tener 1 a&ntilde;o de operaci&oacute;n<br />\r\n8. Estado financieros &uacute;ltimo a&ntilde;o<br />\r\n9. Recibo de Pago de Impuesto Municipal<br />\r\n10. Recibo de luz, agua o tel&eacute;fono<br />\r\n11. Dos referencias comerciales<br />\r\n12. Dos referencias bancarias<br />\r\n13. Coodeudor Solidario</p>\r\n', '<p><br />\r\nThis loan aims to finance investments and working capital of micro and small entrepreneurs. Independent workers, owners of minor economic units framed by microenterprises and who develop activities in the sectors of production, commerce and services except for the businesses indicated below:</p>\r\n\r\n<p>- Production and distribution of alcoholic beverages, exclusively.<br />\r\n- Games of Chance<br />\r\n- Any other business that threatens morals and good customs.</p>\r\n\r\n<p><strong>Activities to finance:</strong></p>\r\n\r\n<p><br />\r\n<strong><em>Production: </em></strong>footwear, cabinetmakers, garment makers, craftsmen, bakers, printers, food and metalwork.</p>\r\n\r\n<p><strong><em>Commerce: </em></strong>Stores, miscellanies, mini-supermarket, dry merchandise (Vegetable stalls, among others)</p>\r\n\r\n<p><em><strong>Services:</strong></em> Beauty Room, barber shops, restaurants, repair shops.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Requirements:</strong></p>\r\n\r\n<p>1. One year with the business<br />\r\n2. Copy of Identification<br />\r\n3. Operation Notice<br />\r\n4. Peace and Salvation<br />\r\n5. Registration AMPYME<br />\r\n6. Cash Flow of the last 3 months<br />\r\n7. Income statement to have 1 year of operation<br />\r\n8. Financial status last year<br />\r\n9. Municipal Tax Payment Receipt<br />\r\n10. Receipt of electricity, water or telephone<br />\r\n11. Two commercial references<br />\r\n12. Two bank references<br />\r\n13. Solidarity Cooperator</p>\r\n', 'upload/servicios/2017_12_10_02.53.24empresarios.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE IF NOT EXISTS `solicitudes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `fecha_nac` date NOT NULL,
  `provincia` int(100) NOT NULL,
  `letra` varchar(10) NOT NULL,
  `folio` int(11) NOT NULL,
  `asiento` int(11) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `direccion` text NOT NULL,
  `telefono_residencia` varchar(50) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `telefono_oficina` varchar(50) NOT NULL,
  `celular` varchar(50) NOT NULL,
  `correo2` varchar(300) DEFAULT NULL,
  `laboral` varchar(100) NOT NULL,
  `ocupacion` varchar(200) NOT NULL,
  `lugar_trabajo` varchar(500) NOT NULL,
  `monto_deseado` varchar(100) NOT NULL,
  `comentario` text NOT NULL,
  `salario` varchar(50) NOT NULL,
  `tiempo_servicio` varchar(100) NOT NULL,
  `sucursales_id` int(11) NOT NULL,
  `servicios_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `nombre`, `apellido`, `fecha_nac`, `provincia`, `letra`, `folio`, `asiento`, `sexo`, `direccion`, `telefono_residencia`, `correo`, `telefono_oficina`, `celular`, `correo2`, `laboral`, `ocupacion`, `lugar_trabajo`, `monto_deseado`, `comentario`, `salario`, `tiempo_servicio`, `sucursales_id`, `servicios_id`, `created_at`) VALUES
(1, 'anderson', 'guererro', '1992-11-28', 24, 'an', 1234, 567899, 'masculino', 'villaa de cura', '0426-7449604', 'anderson.andres.guerrero@gmail.com', '0244-1234567', '0426-7449604', 'anderson.andres.guerrero@gmail.com', 'Fuerza Pública', 'Programador', 'Villa de cura', '1000', 'hola', '$ 700', '3 años', 1, 1, '2018-01-27 22:25:44'),
(2, 'anderson', 'guererro', '1992-11-28', 24, 'an', 1234, 567899, 'masculino', 'villaa de cura', '0426-7449604', 'anderson.andres.guerrero@gmail.com', '0244-1234567', '0426-7449604', 'anderson.andres.guerrero@gmail.com', 'Fuerza Pública', 'Programador', 'Villa de cura', '1000', 'hola', '$ 700', '3 años', 1, 1, '2018-01-27 22:29:43'),
(4, 'anderson', 'guererro', '1992-11-28', 24, 'an', 1234, 567899, 'masculino', 'villaa de cura', '0426-7449604', 'anderson.andres.guerrero@gmail.com', '0244-1234567', '0426-7449604', 'anderson.andres.guerrero@gmail.com', 'Fuerza Pública', 'Programador', 'Villa de cura', '1000', 'hola', '$ 700', '3 años', 1, 1, '2018-01-27 22:29:53'),
(5, 'anderson', 'guererro', '1992-11-28', 24, 'an', 1234, 567899, 'masculino', 'villaa de cura', '0426-7449604', 'anderson.andres.guerrero@gmail.com', '0244-1234567', '0426-7449604', 'anderson.andres.guerrero@gmail.com', 'Fuerza Pública', 'Programador', 'Villa de cura', '1000', 'hola', '$ 700', '3 años', 1, 1, '2018-01-27 22:30:49'),
(9, 'anderson', 'guererro', '1992-11-28', 24, 'an', 1234, 567899, 'masculino', 'villaa de cura', '0426-7449604', 'anderson.andres.guerrero@gmail.com', '0244-1234567', '0426-7449604', 'anderson.andres.guerrero@gmail.com', 'Otros', 'Programador', 'Villa de cura', '1000', 'hola', '$ 600', '3 años', 1, 1, '2018-01-27 22:40:10'),
(10, 'anderson', 'guererro', '1992-11-28', 24, 'an', 1234, 567899, 'masculino', 'villaa de cura', '0426-7449604', 'anderson.andres.guerrero@gmail.com', '0244-1234567', '0426-7449604', 'anderson.andres.guerrero@gmail.com', 'Otros', 'Programador', 'Villa de cura', '1000', 'hola', '$ 600', '3 años', 1, 1, '2018-01-27 22:43:51'),
(11, 'anderson', 'guererro', '1992-11-28', 24, 'an', 1234, 567899, 'masculino', 'villaa de cura', '0426-7449604', 'anderson.andres.guerrero@gmail.com', '0244-1234567', '0426-7449604', 'anderson.andres.guerrero@gmail.com', 'Otros', 'Programador', 'Villa de cura', '1000', 'hola', '$ 600', '3 años', 1, 1, '2018-01-27 22:45:31'),
(12, 'anderson', 'guererro', '1992-11-28', 24, 'an', 1234, 567899, 'masculino', 'villaa de cura', '0426-7449604', 'anderson.andres.guerrero@gmail.com', '0244-1234567', '0426-7449604', 'anderson.andres.guerrero@gmail.com', 'Otros', 'Programador', 'Villa de cura', '1000', 'hola', '$ 600', '3 años', 1, 1, '2018-01-27 22:46:53'),
(13, 'anderson', 'guererro', '1992-11-28', 24, 'an', 1234, 567899, 'masculino', 'villaa de cura', '0426-7449604', 'anderson.andres.guerrero@gmail.com', '0244-1234567', '0426-7449604', 'anderson.andres.guerrero@gmail.com', 'bueno chico', 'Programador', 'Villa de cura', '1000', 'hola', '$ 600', '3 años', 1, 1, '2018-01-27 22:47:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE IF NOT EXISTS `sucursales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nombre_en` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `direccion_en` varchar(500) DEFAULT NULL,
  `telefonos` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `horario` varchar(255) DEFAULT NULL,
  `horario_en` varchar(255) DEFAULT NULL,
  `mapa` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `nombre`, `nombre_en`, `img`, `direccion`, `direccion_en`, `telefonos`, `celular`, `horario`, `horario_en`, `mapa`) VALUES
(1, 'CALLE 50 - CASA MATRIZ - Panamá', 'CALLE 50 - CASA MATRIZ - Panama', 'upload/sucursales/2017_12_10_03.51.22CASA MATRIZ.jpg', 'Calle 50 entre Ave. Federico Boyd y Calle Uruguay, Edificio Pacífico Planta Baja.', 'Calle 50 between Ave. Federico Boyd and Calle Uruguay, Edificio Pacífico Planta Baja.', '340-9000', '6349-2140', 'Lunes-Viernes: 08:00am-05:00pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 08:00 am to 05:00 pm, Saturdays: 09:00 am to 01:00 pm', 'upload/sucursales/2017_12_10_03.51.22mapa calle 50.jpg'),
(2, 'Perejil - Casino', 'Perejil - Casino', 'upload/sucursales/2017_12_10_03.55.52casino perejil.jpg', 'Ave. Perejil y calle 36 frente al antiguo Ija de Casino, Edificio Don Raul, planta baja a lado de la Estación Delta.', 'Ave. Perejil and 36th Street in front of the former Ija de Casino, Don Raul Building, ground floor next to the Delta Station.', '227-9000 / 227-0909', '6675-7136', 'Lunes-Viernes: 08:00am-05:00pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 08:00 am to 05:00 pm, Saturdays: 09:00 am to 01:00 pm', 'upload/sucursales/2017_12_10_03.55.52perejil mapa.png'),
(3, 'Los Andes', 'Los Andes', 'upload/sucursales/2017_12_11_03.26.56fachada los andes.png', 'Centro Comercial Los Andes, a un costado de Perfumería Fraiché.', 'Los Andes Shopping Center, next to Fraiché Perfumery.', '393-9000', '6998-9359', 'Lunes-Viernes: 08:30am-05:30pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 08:30 am-05: 30pm, Saturdays: 09:00 am-01: 00 pm', 'upload/sucursales/2017_12_11_03.26.56MAPA ANDES.png'),
(4, 'La Doña', 'La Doña', 'upload/sucursales/2017_12_11_03.30.10LA DOÑA2.jpg', 'Centro Comercial La Doña, 24 de Diciembre.', 'La Doña Shopping Center, December 24.', '295-9091', '6675-7154', 'Lunes-Viernes: 08:30am-05:30pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 08:30 am-05: 30pm, Saturdays: 09:00 am-01: 00 pm', 'upload/sucursales/2017_12_11_03.30.10mapa la doña.jpg'),
(5, 'Chorrera', 'Chorrera', 'upload/sucursales/2017_12_11_03.36.05fachada chorrera.jpg', 'Avenida Las Américas (Frente al Pio Pio y Melo). ', 'Avenida Las Américas (Opposite Pio Pio and Melo).', '253-9000', '6675-7182 / 6379-1266', 'Lunes-Viernes: 08:30am-05:30pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 08:30 am-05: 30pm, Saturdays: 09:00 am-01: 00 pm', 'upload/sucursales/2017_12_11_03.36.05mapa-chorrera.jpg'),
(6, 'Terminal de Albrook', 'Terminal de Albrook', 'upload/sucursales/2017_12_11_03.38.26ALBROOK.jpg', 'Gran Terminal Albrook, Pasillo Principal, diagonal al Banco Nacional Frente al la zona de abordaje Norte.', 'Grand Albrook Terminal, Main Hall, diagonal to the National Bank Opposite the North boarding area.', '314-7870 / 314-7864', '6672-3714', 'Lunes-Viernes: 09:00am-06:00pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 09:00 am to 06:00 pm, Saturdays: 09:00 am to 01:00 pm', 'upload/sucursales/2017_12_11_03.38.26albrook.png'),
(7, 'Colón', 'Colón', 'upload/sucursales/2017_12_11_03.43.19COLÓN.jpg', 'Calle 10, Ave. Bolívar, Edif. 10113. Local Nº 4.', 'Calle 10, Ave. Bolívar, Edif. 10113. Local Nº 4.', '441-9000', '6675-7157', 'Lunes-Viernes: 08:00am-05:00pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 08:00 am to 05:00 pm, Saturdays: 09:00 am to 01:00 pm', 'upload/sucursales/2017_12_11_03.43.19mapa-colon.jpg'),
(8, 'Santiago', 'Santiago', 'upload/sucursales/2017_12_11_03.44.56SANTI.jpg', 'Avenida Central y Calle 5, Edificio Don Angelo (Frente a la Joyería Melillo).', 'Central Avenue and 5th Street, Don Angelo Building (Opposite the Melillo Jewelry Store).', '998-9000', '6675-7138 / 6675-7152', 'Lunes-Viernes: 08:00am-05:00pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 08:00 am to 05:00 pm, Saturdays: 09:00 am to 01:00 pm', 'upload/sucursales/2017_12_11_03.44.56mapa-santiago.jpg'),
(9, 'Chitré', 'Chitré', 'upload/sucursales/2017_12_11_03.47.02CHITRE.jpg', 'Calle Ramón L. Crespo, frente a la Agencia de Cobros del IDAAN.', 'Calle Ramón L. Crespo, in front of the Collection Agency of IDAAN.', '996-7000', '#', 'Lunes-Viernes: 08:30am-05:30pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 08:30 am-05: 30pm, Saturdays: 09:00 am-01: 00 pm', 'upload/sucursales/2017_12_11_03.47.02mapa-chitre.jpg'),
(10, 'David', 'David', 'upload/sucursales/2017_12_11_03.48.43DAVID.jpg', 'Calle segunda, detrás del Hotel Alcalá, frente al Palacio Hindú.', 'Second street, behind the Alcalá Hotel, in front of the Hindu Palace.', '774-9000', '6980-7782', 'Lunes-Viernes: 08:00am-05:00pm, Sábados: 09:00am-01:00pm', 'Monday-Friday: 08:00 am to 05:00 pm, Saturdays: 09:00 am to 01:00 pm', 'upload/sucursales/2017_12_11_03.48.43DAVID MAPA.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `clave` varchar(200) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `admin` int(1) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `usuario`, `clave`, `status`, `email`, `admin`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1, 'steffanytj@gmail.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `requisitos`
--
ALTER TABLE `requisitos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `requisitos`
--
ALTER TABLE `requisitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

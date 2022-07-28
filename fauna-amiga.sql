-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 28, 2022 at 06:57 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fauna-amiga`
--

-- --------------------------------------------------------

--
-- Table structure for table `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` varchar(250) NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(2, 'El ADN ayudó a resolver cómo algunos cuervos fabrican ganchos', 'El cuervo de Nueva Caledonia es el único animal no humano conocido por fabricar herramientas con gancho en la naturaleza', 'La genética ha ayudado a resolver el misterio de qué plantas utilizan una población de cuervos en Nueva Caledonia para fabricar herramientas únicas. Los astutos cuervos son bien conocidos por hacer sus propias herramientas de palo con puntas en forma de gancho para recuperar presas invertebradas de pequeños agujeros y grietas. El cuervo de Nueva Caledonia es el único animal no humano conocido por fabricar herramientas con gancho en la naturaleza.\r\n\r\n'),
(3, '¿Los gatos nos eligen o nosotros a ellos?', 'El temperamento tan particular de los felinos domésticos nos permite hacer esa pregunta: ¿tienen tutor o simplemente eligen vivir dónde se sienten a gusto?', 'Enseguida descartamos la primera opción ya que seguramente pensamos, muy humanos nosotros, que ha sido una decisión nuestra la de adoptarlo y protegerlo. Sin embargo, esa pregunta no es tan errónea, ni está fuera de lugar teniendo en cuenta que un ser tan inteligente e independiente como el gato no se sentirá forzado a convivir si no está a gusto.'),
(11, 'holaa', '456', '789');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Lu', 'd5c186983b52c4551ee00f72316c6eaa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

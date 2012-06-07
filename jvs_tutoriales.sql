-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-05-2012 a las 08:29:31
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `jvs_tutoriales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuarios` varchar(45) NOT NULL,
  `apellido_usuarios` varchar(45) NOT NULL,
  `descripcion_usuarios` varchar(200) NOT NULL,
  `foto_usuarios` varchar(200) NOT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre_usuarios`, `apellido_usuarios`, `descripcion_usuarios`, `foto_usuarios`) VALUES
(1, 'Jose ', 'Perez', 'Administrador de sistema', 'imagenes/user_male.png'),
(2, 'Juan', 'Gomez', 'Administrador de base de datos', 'imagenes/user_male.png'),
(3, 'Carlos', 'Ramirez', 'Gerente de ventas', 'imagenes/user_male.png'),
(4, 'Maria ', 'Rojas', 'Gerente de RRHH', 'imagenes/user_female.png'),
(5, 'Ana', 'Hernandez', 'Jefe de sistemas', 'imagenes/user_female.png'),
(6, 'Ana', 'Hernandez', 'Jefe de programacion', 'imagenes/user_female.png');

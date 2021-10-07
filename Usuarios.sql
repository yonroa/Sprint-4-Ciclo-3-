-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-10-2021 a las 12:22:27
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viajes y turismo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Telefono` int(7) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Contrasena` varchar(8) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`Nombre`, `Apellido`, `Telefono`, `Correo`, `Contrasena`, `ID`) VALUES
('Maria', 'Gomez', 1234567, 'm@hotmail.com', 'm123456M', 1),
('Luis', 'Rojas', 24681088, 'luis@gmail.com', 'Luis2020', 2),
('Pedro', 'Morales', 3579133, 'pepe@gmail.com', 'Mora23', 3),
('Ana Lucia', 'Fuentes', 2343254, 'analu@une.com', 'naNa2345', 4),
('Elena', 'Aguirre', 2345657, 'ela@gmail.com', 'neN20214', 5),
('Ricardo', 'Cifuentes', 3432356, 'ricard@hotmail.com', 'Ric3232', 6),
('Patricia', 'Gonzalez', 9876541, 'patico@gmail.com', 'pAg34-2', 7),
('Catalina', 'Smith', 5643210, 'smity@une.com', 'katy5478', 8),
('Orlando', 'Fajardo', 8765436, 'orfa@gmai.com', 'faja-564', 9),
('Teresa', 'Patiño', 6765453, 'tere34@hotmail.com', 'patere38', 10),
('Lucy', 'Moreno', 8765432, 'valu@gmail.com', 'Luca4561', 11),
('Yon', 'Roa', 2345678, 'yon@gmail.com', 'Roa23451', 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

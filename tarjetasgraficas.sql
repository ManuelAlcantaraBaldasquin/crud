-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2017 a las 13:07:21
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetasgraficas`
--

CREATE TABLE `tarjetasgraficas` (
  `ID` int(100) NOT NULL,
  `Marca` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Modelo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `TamañoMemoria` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `TipoMemoria` varchar(7) COLLATE utf8_spanish2_ci NOT NULL,
  `Precio` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Es una tabla mu bonita';

--
-- Volcado de datos para la tabla `tarjetasgraficas`
--

INSERT INTO `tarjetasgraficas` (`ID`, `Marca`, `Modelo`, `TamañoMemoria`, `TipoMemoria`, `Precio`) VALUES
(1, 'Asus', 'Dual gtx 1060 oc', '6', 'gddr5', '299'),
(2, 'gigabyte', 'geForce gtx 1050ti windforce', '4', 'gddr5', '179'),
(3, 'MSI', 'gtx 1070 gaming x', '8', 'gddr5', '479'),
(4, 'gigabyte', 'aorus geForce gtx 1080 TI', '11', 'ddr5x', '849');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tarjetasgraficas`
--
ALTER TABLE `tarjetasgraficas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tarjetasgraficas`
--
ALTER TABLE `tarjetasgraficas`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

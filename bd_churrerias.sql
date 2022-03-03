-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2022 a las 20:19:11
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_churrerias`
--
CREATE DATABASE IF NOT EXISTS `bd_churrerias` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_churrerias`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_churreria`
--

CREATE TABLE `tbl_churreria` (
  `id` int(10) NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_churreria`
--

INSERT INTO `tbl_churreria` (`id`, `categoria`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'churreria', 'Xurreria La Confiança', 'Av. de Josep Tarradellas i Joan, 161, 08901 L\'Hospitalet de Llobregat, Barcelona', '986524854'),
(2, 'churreria', 'Churros y love', 'Carrer de la metal•lurgia, 38-42, 08908 Barcelona', '986253458'),
(5, 'bar', 'Bar Rambla', 'Rambla de la Marina, 185, 08907 L\'Hospitalet de Llobregat, Barcelona', '987564253'),
(6, 'bar', 'Bar cafeteria Nos vemos', 'Rambla de la Marina, 247, 08907 L\'Hospitalet de Llobregat, Barcelona', '987452365'),
(7, 'ferreteria', 'Artin SL', 'Av. Mare de Déu de Bellvitge, 236, 08907 L\'Hospitalet de Llobregat, Barcelona', '985724581'),
(8, 'ferreteria', 'Ferreteria Condal', 'Av. Mare de Déu de Bellvitge, 296, 08907 L\'Hospitalet de Llobregat, Barcelona', '987525635');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_churreria`
--
ALTER TABLE `tbl_churreria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_churreria`
--
ALTER TABLE `tbl_churreria`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

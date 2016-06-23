-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2016 a las 01:27:35
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rowapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenamiento_remero`
--

CREATE TABLE `entrenamiento_remero` (
  `id_entrenamiento` int(11) NOT NULL,
  `id_remero` int(11) NOT NULL,
  `km` int(11) NOT NULL,
  `pulsaciones` int(3) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entrenamiento_remero`
--

INSERT INTO `entrenamiento_remero` (`id_entrenamiento`, `id_remero`, `km`, `pulsaciones`, `fecha`) VALUES
(1, 10, 30, 210, '2016-06-22'),
(2, 11, 30, 210, '2016-06-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialremero`
--

CREATE TABLE `historialremero` (
  `id_historial` int(3) NOT NULL,
  `id_remero` int(3) NOT NULL,
  `puesto_regata` varchar(100) NOT NULL,
  `modalidad` varchar(3) NOT NULL,
  `tiempo_regata` varchar(10) NOT NULL,
  `lugar` varchar(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historialremero`
--

INSERT INTO `historialremero` (`id_historial`, `id_remero`, `puesto_regata`, `modalidad`, `tiempo_regata`, `lugar`, `fecha`) VALUES
(12, 6, '11', '11', '11', '11', '2016-06-20'),
(13, 10, '1', '1x', '22', 'navia', '2016-06-22'),
(14, 11, '1x', '2x', '22', 'Castropol', '2016-06-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_admin`
--

CREATE TABLE `users_admin` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_email` varchar(55) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_admin`
--

INSERT INTO `users_admin` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(3, 'administrador', 'administrador@administrador.com', '$2y$10$VE/KIP2xPCRVGxQ7GV2Ly.SRGJTpmX3706Pr2nf1SEstlA/VD6EDu'),
(5, 'usuarioAdmin', 'usuarioadmin@gmail.com', '$2y$10$DW86lMJCiy5cvio0V2Rs7uOdqYflZ5Qyo234V6w1/rFOk6F2SVCZC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_remero`
--

CREATE TABLE `users_remero` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(55) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_remero`
--

INSERT INTO `users_remero` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(10, 'Juan Manuel Fernandez Cuesta', 'juanma_681@hotmail.com', '$2y$10$sbT7TNJFxVKZrwMj0ysRQejsv9BFAf17BcWe8QXxGc.hVlAN1ZQGS'),
(11, 'Pablo Diaz', 'pablo@pablo.es', '$2y$10$zhTy8dvX8MVBTRa7eb3xWuKdY83RJ8V/m3JWhDTx0WfphfHLvdybq');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entrenamiento_remero`
--
ALTER TABLE `entrenamiento_remero`
  ADD PRIMARY KEY (`id_entrenamiento`);

--
-- Indices de la tabla `historialremero`
--
ALTER TABLE `historialremero`
  ADD PRIMARY KEY (`id_historial`);

--
-- Indices de la tabla `users_admin`
--
ALTER TABLE `users_admin`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`user_email`);

--
-- Indices de la tabla `users_remero`
--
ALTER TABLE `users_remero`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entrenamiento_remero`
--
ALTER TABLE `entrenamiento_remero`
  MODIFY `id_entrenamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `historialremero`
--
ALTER TABLE `historialremero`
  MODIFY `id_historial` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `users_admin`
--
ALTER TABLE `users_admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users_remero`
--
ALTER TABLE `users_remero`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

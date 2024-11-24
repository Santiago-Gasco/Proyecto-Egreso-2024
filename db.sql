-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2024 a las 02:33:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_qubeware`
--
CREATE DATABASE IF NOT EXISTS `db_qubeware` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_qubeware`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_arbitro`
--

CREATE TABLE `tb_arbitro` (
  `ID_arbitro` int(11) NOT NULL,
  `Cedula` int(8) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` enum('Hombre','Mujer') NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Rango` enum('A','BA','B','C') NOT NULL,
  `Categoria` enum('Kata','Kumite') NOT NULL,
  `Historial` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_arbitro`
--

INSERT INTO `tb_arbitro` (`ID_arbitro`, `Cedula`, `Nombre`, `Apellido`, `Edad`, `Sexo`, `Fecha_nacimiento`, `Rango`, `Categoria`, `Historial`) VALUES
(1, 53959402, 'Manuel', 'Mendez', 24, 'Hombre', '2000-09-26', 'A', 'Kata', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_atleta`
--

CREATE TABLE `tb_atleta` (
  `ID_atleta` int(11) NOT NULL,
  `Cedula` int(8) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` enum('Hombre','Mujer') NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Federado` int(11) NOT NULL,
  `Escuela` varchar(40) NOT NULL,
  `Ranking` int(11) NOT NULL,
  `Puntos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_atleta`
--

INSERT INTO `tb_atleta` (`ID_atleta`, `Cedula`, `Nombre`, `Apellido`, `Edad`, `Sexo`, `Fecha_nacimiento`, `Federado`, `Escuela`, `Ranking`, `Puntos`) VALUES
(1, 57101332, 'Tomás', 'Peña', 17, 'Hombre', '2007-03-24', 69, 'UTU Maldonado', 2, 0),
(2, 55272923, 'Lucas', 'Mujica', 19, 'Hombre', '2005-07-06', 420, 'UTU Maldonado', 3, 0),
(3, 56949632, 'Nahuel', 'Rodriguez', 17, 'Hombre', '2006-12-23', 777, 'UTU Maldonado', 4, 0),
(4, 86323223, 'Tago', 'Crucci', 18, 'Hombre', '2024-10-25', 123245, 'UTU Maldonado', 5, 0),
(5, 58574923, 'Simon', 'Esquiro', 9, 'Hombre', '2008-07-28', 75, 'Santana', 1, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_eventos`
--

CREATE TABLE `tb_eventos` (
  `ID_evento` int(11) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Participantes` varchar(500) NOT NULL,
  `Orden` varchar(500) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_eventos`
--

INSERT INTO `tb_eventos` (`ID_evento`, `Nombre`, `Participantes`, `Orden`, `Fecha_inicio`, `Fecha_fin`) VALUES
(20, 'Fixture 1', 'Alejandro-Nicolas-Daniel-Santiago-Tomas-Martin-Joaquin-Leonardo-Sebastian-Gabriel-Mateo-Lucas-Andres-Ricardo-Fernando-Manuel-', '0-1-0-0-0-0-0-0-1-1-1-1-1-0-1-', '2024-09-03', '2024-10-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_idioma`
--

CREATE TABLE `tb_idioma` (
  `Idioma` enum('es','en') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_idioma`
--

INSERT INTO `tb_idioma` (`Idioma`) VALUES
('es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_profesor`
--

CREATE TABLE `tb_profesor` (
  `ID_profesor` int(11) NOT NULL,
  `Cedula` int(8) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` enum('Hombre','Mujer') NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Escuela` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_profesor`
--

INSERT INTO `tb_profesor` (`ID_profesor`, `Cedula`, `Nombre`, `Apellido`, `Edad`, `Sexo`, `Fecha_nacimiento`, `Escuela`) VALUES
(1, 52859485, 'Bauti', 'Rodriguez', 25, 'Hombre', '1999-06-17', 'Escuela 94');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `ID_usuario` int(11) NOT NULL,
  `Nombre` varchar(35) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `Rol` enum('Super Admin','Admin','Profesor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_usuario`
--

INSERT INTO `tb_usuario` (`ID_usuario`, `Nombre`, `Contraseña`, `Rol`) VALUES
(1, 'admin', 'admin', 'Admin'),
(2, 'profesor', 'profesor', 'Profesor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_arbitro`
--
ALTER TABLE `tb_arbitro`
  ADD PRIMARY KEY (`ID_arbitro`);

--
-- Indices de la tabla `tb_atleta`
--
ALTER TABLE `tb_atleta`
  ADD PRIMARY KEY (`ID_atleta`);

--
-- Indices de la tabla `tb_eventos`
--
ALTER TABLE `tb_eventos`
  ADD PRIMARY KEY (`ID_evento`);

--
-- Indices de la tabla `tb_profesor`
--
ALTER TABLE `tb_profesor`
  ADD PRIMARY KEY (`ID_profesor`);

--
-- Indices de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_arbitro`
--
ALTER TABLE `tb_arbitro`
  MODIFY `ID_arbitro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_atleta`
--
ALTER TABLE `tb_atleta`
  MODIFY `ID_atleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_eventos`
--
ALTER TABLE `tb_eventos`
  MODIFY `ID_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tb_profesor`
--
ALTER TABLE `tb_profesor`
  MODIFY `ID_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

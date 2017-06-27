-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2017 a las 21:07:39
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `platziprofesores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course`
--

CREATE TABLE `course` (
  `id_course` int(11) NOT NULL,
  `id_teacher` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `themes` text,
  `project` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `course`
--

INSERT INTO `course` (`id_course`, `id_teacher`, `name`, `themes`, `project`) VALUES
(1, NULL, 'Java EE', 'API REST', 'ProfesoresPlatzi'),
(2, NULL, 'Ruby on Rails', 'MVC en Ruby on Rails', 'ProfesoresPlatzi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_media`
--

CREATE TABLE `social_media` (
  `id_social_media` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `icon` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `social_media`
--

INSERT INTO `social_media` (`id_social_media`, `name`, `icon`) VALUES
(1, 'facebook', 'avatar'),
(2, 'Twitter', 'avatar'),
(3, 'Linkedin', 'avatar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE `teacher` (
  `id_teacher` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `avatar` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `name`, `avatar`) VALUES
(1, 'GustavoARestrepo', 'images/teachers/1-pictureTaecher-2017-06-27-10-52-17.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_social_media`
--

CREATE TABLE `teacher_social_media` (
  `id_teacher_social_media` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `id_social_media` int(11) NOT NULL,
  `nickname` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `teacher_social_media`
--

INSERT INTO `teacher_social_media` (`id_teacher_social_media`, `id_teacher`, `id_social_media`, `nickname`) VALUES
(1, 1, 2, '@tavorestrepo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id_course`);

--
-- Indices de la tabla `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id_social_media`);

--
-- Indices de la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id_teacher`);

--
-- Indices de la tabla `teacher_social_media`
--
ALTER TABLE `teacher_social_media`
  ADD PRIMARY KEY (`id_teacher_social_media`),
  ADD KEY `id_teacher` (`id_teacher`,`id_social_media`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `course`
--
ALTER TABLE `course`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id_social_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id_teacher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `teacher_social_media`
--
ALTER TABLE `teacher_social_media`
  MODIFY `id_teacher_social_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

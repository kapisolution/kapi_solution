-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-10-2017 a las 20:42:37
-- Versión del servidor: 10.0.31-MariaDB-0ubuntu0.16.04.2
-- Versión de PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Articulos`
--

CREATE TABLE `Articulos` (
  `Nivel_articulo` int(11) NOT NULL,
  `id_articulo` float NOT NULL,
  `Nombre_articulo` varchar(30) NOT NULL,
  `rol_articulo` varchar(20) NOT NULL,
  `titulo` text NOT NULL,
  `contenido` longtext NOT NULL,
  `nick` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Examenes`
--

CREATE TABLE `Examenes` (
  `id_ex` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Insignias`
--

CREATE TABLE `Insignias` (
  `nivel` int(11) NOT NULL,
  `Descripción` text NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Insignias_Usuario`
--

CREATE TABLE `Insignias_Usuario` (
  `usr_nickname` varchar(20) NOT NULL,
  `nivel_insignia` int(11) NOT NULL,
  `rol_insignia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modificaciones`
--

CREATE TABLE `Modificaciones` (
  `id_modificacion` varchar(5) NOT NULL,
  `votos_positivos` int(11) DEFAULT '0',
  `votos_negativos` int(11) DEFAULT '0',
  `id_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modificacion_articulo`
--

CREATE TABLE `Modificacion_articulo` (
  `id_mod` varchar(3) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `nivel` int(20) NOT NULL,
  `titulo` text NOT NULL,
  `contenido` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modificacion_pregunta`
--

CREATE TABLE `Modificacion_pregunta` (
  `rol` varchar(20) NOT NULL,
  `id_mod` varchar(3) NOT NULL,
  `nivel` int(11) NOT NULL,
  `texto` text NOT NULL,
  `A` text NOT NULL,
  `B` text NOT NULL,
  `C` text NOT NULL,
  `D` text NOT NULL,
  `Correcta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modificacion_sugerencia`
--

CREATE TABLE `Modificacion_sugerencia` (
  `id_mod` varchar(3) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Preguntas`
--

CREATE TABLE `Preguntas` (
  `id_pregunta` varchar(3) NOT NULL,
  `nivel` int(11) NOT NULL,
  `texto` text NOT NULL,
  `rol` varchar(20) NOT NULL,
  `A` text NOT NULL,
  `B` text NOT NULL,
  `C` text NOT NULL,
  `D` text NOT NULL,
  `Correcta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Preguntas_Examen`
--

CREATE TABLE `Preguntas_Examen` (
  `id_exam` int(11) NOT NULL,
  `pregunta_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Realiza_Examen`
--

CREATE TABLE `Realiza_Examen` (
  `nick_usr` varchar(20) NOT NULL,
  `id_examen` int(11) NOT NULL,
  `nota` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `nick` varchar(20) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Articulos`
--
ALTER TABLE `Articulos`
  ADD PRIMARY KEY (`nick`);

--
-- Indices de la tabla `Examenes`
--
ALTER TABLE `Examenes`
  ADD PRIMARY KEY (`id_ex`,`nivel`);

--
-- Indices de la tabla `Insignias`
--
ALTER TABLE `Insignias`
  ADD PRIMARY KEY (`nivel`,`rol`);

--
-- Indices de la tabla `Insignias_Usuario`
--
ALTER TABLE `Insignias_Usuario`
  ADD PRIMARY KEY (`usr_nickname`,`nivel_insignia`,`rol_insignia`),
  ADD KEY `Insignias_Usuario_fk1` (`nivel_insignia`);

--
-- Indices de la tabla `Modificaciones`
--
ALTER TABLE `Modificaciones`
  ADD PRIMARY KEY (`id_modificacion`),
  ADD KEY `Modificaciones_fk0` (`id_user`);

--
-- Indices de la tabla `Modificacion_articulo`
--
ALTER TABLE `Modificacion_articulo`
  ADD PRIMARY KEY (`id_mod`);

--
-- Indices de la tabla `Modificacion_pregunta`
--
ALTER TABLE `Modificacion_pregunta`
  ADD PRIMARY KEY (`id_mod`);

--
-- Indices de la tabla `Modificacion_sugerencia`
--
ALTER TABLE `Modificacion_sugerencia`
  ADD PRIMARY KEY (`id_mod`);

--
-- Indices de la tabla `Preguntas`
--
ALTER TABLE `Preguntas`
  ADD PRIMARY KEY (`id_pregunta`,`nivel`);

--
-- Indices de la tabla `Preguntas_Examen`
--
ALTER TABLE `Preguntas_Examen`
  ADD PRIMARY KEY (`id_exam`,`pregunta_id`),
  ADD KEY `Preguntas_Examen_fk1` (`pregunta_id`);

--
-- Indices de la tabla `Realiza_Examen`
--
ALTER TABLE `Realiza_Examen`
  ADD PRIMARY KEY (`nick_usr`,`id_examen`),
  ADD KEY `Realiza_Examen_fk1` (`id_examen`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`nick`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Examenes`
--
ALTER TABLE `Examenes`
  MODIFY `id_ex` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Articulos`
--
ALTER TABLE `Articulos`
  ADD CONSTRAINT `Articulos_ibfk_1` FOREIGN KEY (`nick`) REFERENCES `Usuarios` (`nick`);

--
-- Filtros para la tabla `Insignias_Usuario`
--
ALTER TABLE `Insignias_Usuario`
  ADD CONSTRAINT `Insignias_Usuario_fk0` FOREIGN KEY (`usr_nickname`) REFERENCES `Usuarios` (`nick`),
  ADD CONSTRAINT `Insignias_Usuario_fk1` FOREIGN KEY (`nivel_insignia`) REFERENCES `Insignias` (`nivel`);

--
-- Filtros para la tabla `Modificaciones`
--
ALTER TABLE `Modificaciones`
  ADD CONSTRAINT `Modificaciones_fk0` FOREIGN KEY (`id_user`) REFERENCES `Usuarios` (`nick`);

--
-- Filtros para la tabla `Modificacion_articulo`
--
ALTER TABLE `Modificacion_articulo`
  ADD CONSTRAINT `Modificacion_contenido_fk0` FOREIGN KEY (`id_mod`) REFERENCES `Modificaciones` (`id_modificacion`);

--
-- Filtros para la tabla `Modificacion_pregunta`
--
ALTER TABLE `Modificacion_pregunta`
  ADD CONSTRAINT `Modificacion_pregunta_fk0` FOREIGN KEY (`id_mod`) REFERENCES `Modificaciones` (`id_modificacion`);

--
-- Filtros para la tabla `Modificacion_sugerencia`
--
ALTER TABLE `Modificacion_sugerencia`
  ADD CONSTRAINT `Modificacion_sugerencia_fk0` FOREIGN KEY (`id_mod`) REFERENCES `Modificaciones` (`id_modificacion`);

--
-- Filtros para la tabla `Preguntas_Examen`
--
ALTER TABLE `Preguntas_Examen`
  ADD CONSTRAINT `Preguntas_Examen_fk0` FOREIGN KEY (`id_exam`) REFERENCES `Examenes` (`id_ex`),
  ADD CONSTRAINT `Preguntas_Examen_fk1` FOREIGN KEY (`pregunta_id`) REFERENCES `Preguntas` (`id_pregunta`);

--
-- Filtros para la tabla `Realiza_Examen`
--
ALTER TABLE `Realiza_Examen`
  ADD CONSTRAINT `Realiza_Examen_fk0` FOREIGN KEY (`nick_usr`) REFERENCES `Usuarios` (`nick`),
  ADD CONSTRAINT `Realiza_Examen_fk1` FOREIGN KEY (`id_examen`) REFERENCES `Examenes` (`id_ex`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

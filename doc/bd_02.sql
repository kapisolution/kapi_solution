-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-10-2017 a las 19:13:20
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
  `capitulo` int(2) NOT NULL,
  `rol_articulo` varchar(20) NOT NULL,
  `titulo` text NOT NULL,
  `contenido` longtext NOT NULL,
  `Imagen` varchar(30) DEFAULT NULL,
  `id_creador` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Articulos`
--

INSERT INTO `Articulos` (`Nivel_articulo`, `capitulo`, `rol_articulo`, `titulo`, `contenido`, `Imagen`, `id_creador`) VALUES
(1, 1, 'Thomas Gilliam', 'Bridges, Bryar I.', 'tincidunt, neque', NULL, ''),
(1, 2, 'Ginger Phelps', 'Smith, Nola N.', 'aliquet molestie tellus.', NULL, ''),
(1, 3, 'Freya Alvarez', 'Wong, Cameron O.', 'nisi. Cum sociis natoque penatibus et magnis dis parturient', NULL, ''),
(1, 6, 'Drew Wallace', 'Miles, Illana F.', 'Vivamus nibh dolor, nonummy ac, feugiat non,', NULL, ''),
(1, 6, 'Vernon Byers', 'Avila, Ryan K.', 'fermentum convallis ligula. Donec luctus aliquet odio.', NULL, ''),
(1, 7, 'Ashton Joseph', 'Greer, Thane Y.', 'penatibus et magnis dis', NULL, ''),
(1, 7, 'Gray Kelly', 'Hampton, Haley J.', 'volutpat nunc sit amet metus. Aliquam erat volutpat.', NULL, ''),
(1, 8, 'Claire Short', 'Castro, Harding H.', 'Vivamus nibh dolor, nonummy ac, feugiat', NULL, ''),
(1, 9, 'Jelani Barnett', 'Pennington, Walker D.', 'turpis. In condimentum. Donec at arcu. Vestibulum', NULL, ''),
(2, 2, 'Ina Reynolds', 'Hawkins, Alexandra J.', 'lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', NULL, ''),
(2, 2, 'Kaseem Kim', 'Wright, Ezra J.', 'ac', NULL, ''),
(2, 3, 'Iola Bowman', 'West, Brenden N.', 'id, ante. Nunc mauris sapien,', NULL, ''),
(2, 3, 'Jonah Gentry', 'Daugherty, Brendan L.', 'tellus', NULL, ''),
(2, 3, 'Keefe Stein', 'Leach, Cleo C.', 'eu, eleifend nec, malesuada ut,', NULL, ''),
(2, 4, 'Lionel Logan', 'Allen, Ashton G.', 'eget metus.', NULL, ''),
(2, 4, 'Wynne Hardy', 'Winters, Camden S.', 'commodo', NULL, ''),
(2, 6, 'Veronica Meyers', 'Woods, Camden T.', 'at pretium aliquet, metus urna convallis', NULL, ''),
(2, 8, 'Gannon Martin', 'Benson, Sophia V.', 'primis in faucibus orci luctus', NULL, ''),
(2, 9, 'Armando Torres', 'Clay, Cairo M.', 'eros. Nam consequat dolor vitae dolor. Donec', NULL, ''),
(2, 10, 'Julian Mullins', 'Byers, Maris W.', 'Phasellus in felis. Nulla tempor augue ac ipsum.', NULL, ''),
(2, 10, 'Justina Noble', 'Maxwell, Marny T.', 'Curae; Donec tincidunt. Donec vitae erat vel', NULL, ''),
(3, 3, 'Lewis Potter', 'Owen, Daria G.', 'Nam consequat dolor vitae dolor. Donec fringilla. Donec', NULL, ''),
(3, 5, 'Jared Bell', 'Lowery, Mechelle S.', 'Nulla facilisi.', NULL, ''),
(3, 6, 'Shellie Gregory', 'Gomez, Conan A.', 'at, velit. Pellentesque ultricies dignissim', NULL, ''),
(3, 8, 'Jamal Davenport', 'Nelson, Ross Q.', 'aliquam iaculis, lacus pede', NULL, ''),
(3, 9, 'Giacomo Morrow', 'Osborn, Fletcher K.', 'a, enim. Suspendisse aliquet, sem ut', NULL, ''),
(3, 10, 'Shaine Gould', 'Sears, Clark O.', 'ipsum porta elit, a feugiat tellus lorem', NULL, ''),
(4, 2, 'Charde Walton', 'Solis, Leandra B.', 'ornare tortor at', NULL, ''),
(4, 2, 'Jarrod Mcgowan', 'Durham, Portia D.', 'nec quam. Curabitur vel lectus. Cum sociis natoque penatibus', NULL, ''),
(4, 4, 'Reece Marshall', 'Raymond, Xavier G.', 'Nunc mauris elit, dictum eu,', NULL, ''),
(4, 5, 'Yetta Wynn', 'Orr, Florence Q.', 'et, eros.', NULL, ''),
(4, 7, 'Dorian Stokes', 'Benjamin, Christen X.', 'blandit mattis.', NULL, ''),
(4, 8, 'Dalton Guthrie', 'Avery, Moses W.', 'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus', NULL, ''),
(4, 10, 'Nevada Burks', 'Spencer, Shannon K.', 'eleifend', NULL, ''),
(5, 2, 'Zeph Patel', 'Schmidt, Marvin J.', 'quam dignissim pharetra. Nam ac nulla. In tincidunt', NULL, ''),
(5, 4, 'Phelan Noble', 'Kirk, Helen M.', 'dictum eleifend,', NULL, ''),
(5, 4, 'Wylie Snider', 'Cooley, Germane I.', 'iaculis aliquet', NULL, ''),
(5, 5, 'Lars Schroeder', 'Bonner, Zahir S.', 'eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor.', NULL, ''),
(5, 6, 'Wyatt Serrano', 'Roach, Melodie P.', 'odio.', NULL, ''),
(5, 7, 'Xanthus Fleming', 'Fox, Sheila D.', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus', NULL, ''),
(5, 8, 'Xandra Underwood', 'Landry, Leandra V.', 'lacinia orci, consectetuer euismod est arcu ac orci. Ut', NULL, ''),
(5, 9, 'Chancellor Cross', 'Hester, Porter G.', 'habitant morbi', NULL, ''),
(5, 10, 'Remedios Horton', 'Clements, Finn U.', 'vitae, aliquet nec, imperdiet nec,', NULL, ''),
(5, 10, 'Sebastian Farmer', 'Hardy, Jaquelyn Z.', 'amet metus. Aliquam erat volutpat. Nulla', NULL, ''),
(6, 2, 'Fletcher Greer', 'Sheppard, Dante J.', 'ipsum', NULL, ''),
(6, 4, 'Hilel Preston', 'Howe, Louis N.', 'fringilla mi lacinia mattis. Integer', NULL, ''),
(6, 4, 'Robert Brewer', 'Vega, Amy P.', 'ultrices iaculis odio. Nam interdum enim non nisi.', NULL, ''),
(6, 6, 'Aimee Talley', 'Miranda, Cadman C.', 'lorem semper auctor. Mauris', NULL, ''),
(6, 10, 'Cooper Decker', 'Holmes, Amos M.', 'semper auctor. Mauris', NULL, ''),
(6, 10, 'Samuel Rodgers', 'Wiley, Jin C.', 'aliquam iaculis, lacus pede sagittis augue, eu', NULL, ''),
(7, 2, 'Chantale Mayer', 'Sutton, Alyssa A.', 'eu, ligula.', NULL, ''),
(7, 3, 'Alana Salas', 'Prince, Barrett R.', 'placerat, augue. Sed molestie. Sed id risus quis', NULL, ''),
(7, 4, 'Kamal Simpson', 'Lara, Cadman A.', 'Phasellus', NULL, ''),
(7, 4, 'Megan Atkins', 'Graham, Illana B.', 'vitae,', NULL, ''),
(7, 6, 'Hyacinth Daugherty', 'Green, Ginger E.', 'convallis convallis dolor. Quisque tincidunt pede ac', NULL, ''),
(7, 6, 'Kay Vargas', 'Walker, Joshua H.', 'Aliquam gravida mauris ut mi.', NULL, ''),
(7, 8, 'Hiroko Mcdaniel', 'Watkins, Zena T.', 'convallis erat, eget', NULL, ''),
(7, 9, 'Brett Cantu', 'Underwood, Kitra S.', 'venenatis vel, faucibus id,', NULL, ''),
(7, 9, 'Herman English', 'Terrell, Morgan D.', 'elit, pharetra ut,', NULL, ''),
(7, 9, 'Whilemina Ruiz', 'Savage, Hedy D.', 'turpis non enim. Mauris quis turpis vitae', NULL, ''),
(7, 10, 'Kaseem Kline', 'Donovan, Ivana O.', 'vulputate velit eu sem.', NULL, ''),
(7, 10, 'Molly Johnson', 'Dawson, Michael X.', 'lectus ante dictum mi, ac mattis velit', NULL, ''),
(8, 1, 'Isadora Boyle', 'Parrish, Aristotle S.', 'convallis ligula. Donec luctus', NULL, ''),
(8, 2, 'Daria Mcfadden', 'Cox, Aquila Z.', 'sit', NULL, ''),
(8, 2, 'Kaden Vazquez', 'Cannon, Amela U.', 'egestas a, scelerisque sed, sapien. Nunc pulvinar arcu', NULL, ''),
(8, 2, 'Phillip Webb', 'Cochran, Odessa X.', 'Aenean eget metus. In', NULL, ''),
(8, 4, 'Belle Kinney', 'Henson, Serena G.', 'Vivamus sit amet risus. Donec egestas. Aliquam nec', NULL, ''),
(8, 4, 'Jolie Hampton', 'Monroe, Gavin L.', 'dolor dapibus gravida.', NULL, ''),
(8, 4, 'Laurel Conway', 'Aguilar, Remedios G.', 'eget tincidunt dui augue eu tellus. Phasellus elit pede,', NULL, ''),
(8, 4, 'Sydnee Lynch', 'Hebert, Richard U.', 'tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum', NULL, ''),
(8, 5, 'Quemby Pickett', 'Burton, Shannon U.', 'non leo. Vivamus nibh dolor, nonummy ac, feugiat non,', NULL, ''),
(8, 5, 'Sara House', 'Mann, Sonia K.', 'nibh.', NULL, ''),
(8, 6, 'Brenda Mendoza', 'Mcdonald, Silas A.', 'dictum augue malesuada malesuada. Integer id magna et ipsum', NULL, ''),
(8, 6, 'Hiram Schroeder', 'Thornton, Trevor D.', 'id magna et', NULL, ''),
(8, 6, 'Marah Bell', 'Higgins, Nayda Q.', 'id magna et ipsum cursus vestibulum. Mauris magna. Duis', NULL, ''),
(8, 9, 'Zachery Romero', 'Levy, Liberty U.', 'egestas. Duis', NULL, ''),
(8, 10, 'Galena Cain', 'Booker, Evan B.', 'mauris sit amet lorem', NULL, ''),
(9, 1, 'Colorado Franks', 'Miranda, Fleur W.', 'sagittis lobortis mauris.', NULL, ''),
(9, 1, 'Evangeline Keith', 'Gutierrez, Quin Y.', 'Quisque imperdiet, erat nonummy ultricies ornare, elit elit', NULL, ''),
(9, 1, 'Giselle Burke', 'Sears, Gannon I.', 'et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim', NULL, ''),
(9, 1, 'Marshall Chase', 'Gentry, Declan B.', 'Donec fringilla. Donec feugiat metus', NULL, ''),
(9, 2, 'Fleur Fry', 'Hawkins, Regina B.', 'eu lacus.', NULL, ''),
(9, 3, 'Isaac Frye', 'Norris, Hedy W.', 'Proin ultrices. Duis volutpat nunc', NULL, ''),
(9, 3, 'Leslie Kidd', 'Cardenas, Raya A.', 'ac sem ut dolor dapibus', NULL, ''),
(9, 3, 'Olivia Haney', 'Burris, Zephania M.', 'Mauris blandit enim consequat purus. Maecenas libero est, congue', NULL, ''),
(9, 3, 'Stone Holcomb', 'Garner, Damian R.', 'tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae', NULL, ''),
(9, 3, 'Tiger Church', 'Berry, Logan L.', 'Nam porttitor scelerisque neque. Nullam nisl. Maecenas', NULL, ''),
(9, 5, 'Joshua Richard', 'Rosales, Aquila O.', 'Nulla', NULL, ''),
(9, 5, 'Wylie Mcmillan', 'Alexander, Cailin V.', 'eu erat semper', NULL, ''),
(9, 6, 'Breanna Ramsey', 'Sherman, Gage G.', 'tristique aliquet.', NULL, ''),
(9, 7, 'Desirae Hopper', 'Holder, Ella Z.', 'dictum mi, ac mattis', NULL, ''),
(9, 8, 'Ursula Aguilar', 'Hanson, Tallulah Q.', 'cursus. Integer', NULL, ''),
(9, 10, 'Odysseus Sanford', 'Robertson, Irma O.', 'vitae, posuere at, velit. Cras lorem lorem,', NULL, ''),
(10, 3, 'Bruno Pitts', 'Copeland, Charde E.', 'diam at pretium aliquet, metus urna convallis', NULL, ''),
(10, 3, 'Renee Harrington', 'Parks, Martena K.', 'scelerisque, lorem ipsum sodales purus,', NULL, ''),
(10, 4, 'Calvin Maxwell', 'Mooney, Hope L.', 'sollicitudin a, malesuada id, erat.', NULL, ''),
(10, 5, 'Brett Serrano', 'Roberts, Quinn N.', 'euismod enim. Etiam gravida molestie arcu. Sed eu nibh', NULL, ''),
(10, 7, 'Graham Scott', 'Snider, Rogan L.', 'tellus id nunc interdum feugiat. Sed', NULL, ''),
(10, 7, 'Yvette Newman', 'Hammond, Danielle D.', 'Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.', NULL, ''),
(10, 9, 'Kennedy Price', 'Livingston, Walker N.', 'lectus, a sollicitudin orci sem eget massa. Suspendisse', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ejercicios`
--

CREATE TABLE `Ejercicios` (
  `Enunciado` text NOT NULL,
  `A` text,
  `B` text,
  `C` text,
  `D` text,
  `Correcta` char(1) DEFAULT NULL,
  `Imagen` varchar(30) DEFAULT NULL,
  `Nivel_ar` int(11) NOT NULL,
  `N_capitulo` int(2) NOT NULL,
  `Roll_ar` varchar(20) NOT NULL,
  `Numero ejercicio` int(1) NOT NULL
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
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`nick`, `Nombre`, `Apellidos`, `rol`, `nivel`) VALUES
('alvasenj', 'al', 'la', 'abogado', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Visitan`
--

CREATE TABLE `Visitan` (
  `nick` varchar(20) NOT NULL,
  `Nivel_ar` int(11) NOT NULL,
  `capitulo` int(2) NOT NULL,
  `Rol_ar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Articulos`
--
ALTER TABLE `Articulos`
  ADD PRIMARY KEY (`Nivel_articulo`,`capitulo`,`rol_articulo`,`id_creador`);

--
-- Indices de la tabla `Ejercicios`
--
ALTER TABLE `Ejercicios`
  ADD PRIMARY KEY (`Nivel_ar`,`N_capitulo`,`Roll_ar`);

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
-- Indices de la tabla `Visitan`
--
ALTER TABLE `Visitan`
  ADD PRIMARY KEY (`nick`,`Nivel_ar`,`capitulo`,`Rol_ar`),
  ADD KEY `Nivel_ar` (`Nivel_ar`);

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
-- Filtros para la tabla `Ejercicios`
--
ALTER TABLE `Ejercicios`
  ADD CONSTRAINT `Ejercicios_ibfk_1` FOREIGN KEY (`Nivel_ar`) REFERENCES `Articulos` (`Nivel_articulo`);

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

--
-- Filtros para la tabla `Visitan`
--
ALTER TABLE `Visitan`
  ADD CONSTRAINT `Visitan_ibfk_1` FOREIGN KEY (`nick`) REFERENCES `Usuarios` (`nick`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

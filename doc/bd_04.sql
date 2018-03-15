-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-03-2018 a las 19:01:17
-- Versión del servidor: 10.0.33-MariaDB-0ubuntu0.16.04.1
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
  `id` int(10) NOT NULL,
  `nivel` int(11) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `titulo` text NOT NULL,
  `contenido` longtext NOT NULL,
  `img` varchar(30) DEFAULT NULL,
  `creador` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Articulos`
--

INSERT INTO `Articulos` (`id`, `nivel`, `rol`, `titulo`, `contenido`, `img`, `creador`) VALUES
(31, 10, 'abogado', 'odio. Phasellus at augue id ante dictum cursus. Nunc mauris', 'Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,', '6', 'alfonso'),
(32, 9, 'abogado', 'mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean', 'non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis', '10', 'javimv36'),
(58, 6, 'periodista', 'amet nulla. Donec non justo. Proin non massa non ante', 'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus', '1', 'alfonso'),
(84, 6, 'periodista', 'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat.', 'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas', '3', 'alvasenj'),
(98, 1, 'periodista', 'Duis sit amet diam eu dolor egestas rhoncus. Proin nisl', 'commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.', '8', 'alvasenj'),
(115, 8, 'periodista', 'per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare.', 'a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam', '7', 'alvasenj'),
(125, 2, 'periodista', 'justo eu arcu. Morbi sit amet massa. Quisque porttitor eros', 'pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper', '7', 'alfonso'),
(127, 7, 'periodista', 'semper tellus id nunc interdum feugiat. Sed nec metus facilisis', 'tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim,', '10', 'javimv36'),
(141, 8, 'periodista', 'dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel,', 'lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis', '3', 'javimv36'),
(142, 10, 'informatico', 'neque. Morbi quis urna. Nunc quis arcu vel quam dignissim', 'risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam', '5', 'alfonso'),
(145, 7, 'informatico', 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut', 'risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit', '5', 'alvasenj'),
(169, 7, 'informatico', 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam', 'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.', '9', 'alfonso'),
(189, 4, 'informatico', 'lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan', 'Duis elementum, dui quis accumsan convallis, ante lectus convallis est,', '1', 'javimv36'),
(198, 9, 'abogado', 'non nisi. Aenean eget metus. In nec orci. Donec nibh.', 'amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam', '8', 'javimv36'),
(212, 1, 'informatico', 'velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices.', 'Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et,', '8', 'alvasenj'),
(214, 3, 'abogado', 'mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In', 'Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.', '9', 'alvasenj'),
(246, 10, 'informatico', 'purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam', 'eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat', '1', 'alfonso'),
(264, 5, 'abogado', 'tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer', 'libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna', '7', 'alfonso'),
(265, 3, 'periodista', 'at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum', 'libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam', '7', 'javimv36'),
(274, 3, 'abogado', 'litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut', 'libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum', '9', 'alvasenj'),
(280, 3, 'abogado', 'arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi.', 'Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum.', '7', 'alfonso'),
(317, 6, 'abogado', 'lorem ipsum sodales purus, in molestie tortor nibh sit amet', 'elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris', '1', 'javimv36'),
(358, 1, 'abogado', 'dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae,', 'urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque', '10', 'javimv36'),
(392, 4, 'abogado', 'nulla. Donec non justo. Proin non massa non ante bibendum', 'dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.', '2', 'alfonso'),
(399, 10, 'periodista', 'mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent', 'fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus', '6', 'alvasenj'),
(402, 5, 'abogado', 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel', 'enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend', '1', 'alvasenj'),
(406, 7, 'abogado', 'vel arcu eu odio tristique pharetra. Quisque ac libero nec', 'quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.', '5', 'alfonso'),
(409, 9, 'periodista', 'nisi nibh lacinia orci, consectetuer euismod est arcu ac orci.', 'augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,', '8', 'javimv36'),
(416, 8, 'informatico', 'sem mollis dui, in sodales elit erat vitae risus. Duis', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,', '6', 'alfonso'),
(418, 5, 'informatico', 'pede, ultrices a, auctor non, feugiat nec, diam. Duis mi', 'in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci,', '1', 'javimv36'),
(441, 5, 'informatico', 'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut', 'lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at,', '3', 'alfonso'),
(497, 10, 'informatico', 'nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam', 'gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut', '7', 'javimv36'),
(513, 2, 'informatico', 'non massa non ante bibendum ullamcorper. Duis cursus, diam at', 'pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet', '8', 'alfonso'),
(554, 8, 'informatico', 'Ut semper pretium neque. Morbi quis urna. Nunc quis arcu', 'litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas.', '2', 'alfonso'),
(558, 4, 'periodista', 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis', 'dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas', '5', 'alfonso'),
(562, 8, 'periodista', 'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus', 'dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam', '1', 'alvasenj'),
(586, 2, 'periodista', 'arcu eu odio tristique pharetra. Quisque ac libero nec ligula', 'turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a,', '8', 'javimv36'),
(597, 9, 'abogado', 'ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci', 'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras', '1', 'alfonso'),
(611, 2, 'periodista', 'hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium', 'mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris', '7', 'alfonso'),
(617, 9, 'informatico', 'nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam', 'ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et', '1', 'javimv36'),
(661, 2, 'periodista', 'nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae', 'feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet', '1', 'javimv36'),
(706, 5, 'abogado', 'Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi', 'lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non,', '9', 'alvasenj'),
(709, 2, 'informatico', 'sagittis felis. Donec tempor, est ac mattis semper, dui lectus', 'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.', '8', 'alvasenj'),
(712, 1, 'abogado', 'tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget', 'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut', '7', 'alfonso'),
(715, 5, 'abogado', 'et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat', 'vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus', '3', 'alfonso'),
(755, 4, 'periodista', 'sit amet ornare lectus justo eu arcu. Morbi sit amet', 'iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa.', '4', 'alvasenj'),
(770, 6, 'informatico', 'nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam', 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit', '1', 'alfonso'),
(779, 4, 'abogado', 'rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida', 'Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc', '5', 'alvasenj'),
(780, 8, 'abogado', 'et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.', 'orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus.', '5', 'alvasenj'),
(790, 2, 'informatico', 'Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit.', 'iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu', '4', 'alvasenj'),
(815, 2, 'informatico', 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis,', '3', 'javimv36'),
(822, 2, 'periodista', 'velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor', 'dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum', '4', 'alfonso'),
(827, 1, 'abogado', 'lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed', 'facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus', '9', 'javimv36'),
(828, 5, 'informatico', 'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa', 'magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus', '10', 'alvasenj'),
(839, 6, 'periodista', 'viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum', 'at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed', '3', 'alfonso'),
(865, 8, 'informatico', 'posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse', 'torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa.', '5', 'alfonso'),
(888, 1, 'abogado', 'dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur', 'orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas', '9', 'alfonso'),
(918, 5, 'abogado', 'massa non ante bibendum ullamcorper. Duis cursus, diam at pretium', 'orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean', '1', 'javimv36'),
(930, 2, 'informatico', 'Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros.', 'diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi', '3', 'javimv36'),
(935, 2, 'periodista', 'Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non', 'sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi', '3', 'alfonso'),
(948, 9, 'abogado', 'leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,', 'tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi', '7', 'javimv36'),
(952, 1, 'abogado', 'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum', 'sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris,', '4', 'javimv36'),
(955, 3, 'periodista', 'vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque', 'lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer', '3', 'alfonso'),
(993, 3, 'abogado', 'orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu,', 'tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget', '7', 'alvasenj'),
(999, 8, 'periodista', 'amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede,', 'ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis', '7', 'javimv36');

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
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Insignias_Usuario`
--

CREATE TABLE `Insignias_Usuario` (
  `nick` varchar(20) NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modificaciones`
--

CREATE TABLE `Modificaciones` (
  `id_modificacion` varchar(5) NOT NULL,
  `votos_positivos` int(11) DEFAULT '0',
  `votos_negativos` int(11) DEFAULT '0',
  `nick` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modificacion_articulo`
--

CREATE TABLE `Modificacion_articulo` (
  `id_mod` varchar(3) NOT NULL,
  `id` int(10) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `nivel` int(20) NOT NULL,
  `titulo` text NOT NULL,
  `contenido` longtext NOT NULL,
  `creador` varchar(30) NOT NULL
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
  `Correcta` text NOT NULL,
  `id` int(10) NOT NULL
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
  `A` text,
  `B` text,
  `C` text,
  `D` text,
  `correcta` text,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Preguntas`
--

INSERT INTO `Preguntas` (`id_pregunta`, `nivel`, `texto`, `rol`, `A`, `B`, `C`, `D`, `correcta`, `id`) VALUES
('1', 1, 'Esta es una pregunta de prueba', 'abogado', '', '', '', '', '', 827),
('2', 1, 'Pregunta prueba 2', 'abogado', NULL, NULL, NULL, NULL, NULL, 827),
('3', 1, 'Pregunta de prueba 3', 'abogado', NULL, NULL, NULL, NULL, NULL, 827);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Preguntas_Examen`
--

CREATE TABLE `Preguntas_Examen` (
  `id_ex` int(11) NOT NULL,
  `id_pregunta` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Realiza_Examen`
--

CREATE TABLE `Realiza_Examen` (
  `nick` varchar(20) NOT NULL,
  `id_ex` int(11) NOT NULL,
  `nota` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `nick` varchar(20) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `nivel` int(11) NOT NULL,
  `password` longtext NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`nick`, `rol`, `nivel`, `password`, `email`) VALUES
('a', 'abogado', 0, 'c4ca4238a0b923820dcc509a6f75849b', 'a@a.com'),
('alvasenj', 'informatico', 5, '81dc9bdb52d04dc20036dbd8313ed055', 'alvi_senjo@hotmail.es'),
('alvasenjPrueba', 'informatico', 0, 'c4ca4238a0b923820dcc509a6f75849b', 'aaaa@email.com'),
('hola', 'abogado', 0, 'c4ca4238a0b923820dcc509a6f75849b', 'hola@1.com'),
('javi', 'informatico', 0, '81dc9bdb52d04dc20036dbd8313ed055', 'javimv36@ucm.es'),
('juan', 'informatico', 0, 'c4ca4238a0b923820dcc509a6f75849b', 'juan@prueba.com'),
('juanGutierrez', 'informatico', 0, '202cb962ac59075b964b07152d234b70', 'juan@juan.com'),
('p', 'abogado', 0, 'c4ca4238a0b923820dcc509a6f75849b', 'p@p.com'),
('prueba', 'periodista', 0, 'c4ca4238a0b923820dcc509a6f75849b', ''),
('prueba2', 'informatico', 0, 'c4ca4238a0b923820dcc509a6f75849b', 'prueba@email.com'),
('rocio', 'periodista', 0, 'c4ca4238a0b923820dcc509a6f75849b', 'rocio@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Visitan`
--

CREATE TABLE `Visitan` (
  `nick` varchar(20) NOT NULL,
  `articulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Articulos`
--
ALTER TABLE `Articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Examenes`
--
ALTER TABLE `Examenes`
  ADD PRIMARY KEY (`id_ex`,`nivel`);

--
-- Indices de la tabla `Insignias`
--
ALTER TABLE `Insignias`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `Insignias_Usuario`
--
ALTER TABLE `Insignias_Usuario`
  ADD PRIMARY KEY (`nick`,`nombre`),
  ADD KEY `Insignias_Usuario_fk1` (`nombre`);

--
-- Indices de la tabla `Modificaciones`
--
ALTER TABLE `Modificaciones`
  ADD PRIMARY KEY (`id_modificacion`),
  ADD KEY `Modificaciones_fk0` (`nick`);

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
  ADD PRIMARY KEY (`id_ex`,`id_pregunta`),
  ADD KEY `Preguntas_Examen_fk1` (`id_pregunta`);

--
-- Indices de la tabla `Realiza_Examen`
--
ALTER TABLE `Realiza_Examen`
  ADD PRIMARY KEY (`nick`,`id_ex`),
  ADD KEY `Realiza_Examen_fk1` (`id_ex`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`nick`);

--
-- Indices de la tabla `Visitan`
--
ALTER TABLE `Visitan`
  ADD PRIMARY KEY (`nick`,`articulo`);

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
-- Filtros para la tabla `Insignias_Usuario`
--
ALTER TABLE `Insignias_Usuario`
  ADD CONSTRAINT `Insignias_Usuario_fk0` FOREIGN KEY (`nick`) REFERENCES `Usuarios` (`nick`);

--
-- Filtros para la tabla `Modificaciones`
--
ALTER TABLE `Modificaciones`
  ADD CONSTRAINT `Modificaciones_fk0` FOREIGN KEY (`nick`) REFERENCES `Usuarios` (`nick`);

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
  ADD CONSTRAINT `Preguntas_Examen_fk0` FOREIGN KEY (`id_ex`) REFERENCES `Examenes` (`id_ex`),
  ADD CONSTRAINT `Preguntas_Examen_fk1` FOREIGN KEY (`id_pregunta`) REFERENCES `Preguntas` (`id_pregunta`);

--
-- Filtros para la tabla `Realiza_Examen`
--
ALTER TABLE `Realiza_Examen`
  ADD CONSTRAINT `Realiza_Examen_fk0` FOREIGN KEY (`nick`) REFERENCES `Usuarios` (`nick`),
  ADD CONSTRAINT `Realiza_Examen_fk1` FOREIGN KEY (`id_ex`) REFERENCES `Examenes` (`id_ex`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

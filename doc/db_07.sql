-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-04-2018 a las 10:37:53
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kapi`
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
  `creador` varchar(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Articulos`
--

INSERT INTO `Articulos` (`id`, `nivel`, `rol`, `titulo`, `contenido`, `img`, `creador`, `fecha`) VALUES
(31, 10, 'abogado', 'odio. Phasellus at augue id ante dictum cursus. Nunc mauris', 'Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,', '6', 'alfonso', '0000-00-00'),
(32, 9, 'abogado', 'mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean', 'non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis', '10', 'javimv36', '0000-00-00'),
(58, 6, 'periodista', 'amet nulla. Donec non justo. Proin non massa non ante', 'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus', '1', 'alfonso', '0000-00-00'),
(84, 6, 'periodista', 'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat.', 'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas', '3', 'alvasenj', '0000-00-00'),
(98, 1, 'periodista', 'Duis sit amet diam eu dolor egestas rhoncus. Proin nisl', 'commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.', '8', 'alvasenj', '0000-00-00'),
(115, 8, 'periodista', 'per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare.', 'a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam', '7', 'alvasenj', '0000-00-00'),
(125, 2, 'periodista', 'justo eu arcu. Morbi sit amet massa. Quisque porttitor eros', 'pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper', '7', 'alfonso', '0000-00-00'),
(127, 7, 'periodista', 'semper tellus id nunc interdum feugiat. Sed nec metus facilisis', 'tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim,', '10', 'javimv36', '0000-00-00'),
(141, 8, 'periodista', 'dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel,', 'lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis', '3', 'javimv36', '0000-00-00'),
(142, 10, 'informatico', 'neque. Morbi quis urna. Nunc quis arcu vel quam dignissim', 'risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam', '5', 'alfonso', '0000-00-00'),
(145, 7, 'informatico', 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut', 'risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit', '5', 'alvasenj', '0000-00-00'),
(169, 7, 'informatico', 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam', 'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.', '9', 'alfonso', '0000-00-00'),
(189, 4, 'informatico', 'lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan', 'Duis elementum, dui quis accumsan convallis, ante lectus convallis est,', '1', 'javimv36', '0000-00-00'),
(198, 9, 'abogado', 'non nisi. Aenean eget metus. In nec orci. Donec nibh.', 'amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam', '8', 'javimv36', '0000-00-00'),
(212, 1, 'informatico', 'velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices.', 'Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et,', '8', 'alvasenj', '0000-00-00'),
(214, 3, 'abogado', 'mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In', 'Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.', '9', 'alvasenj', '0000-00-00'),
(246, 10, 'informatico', 'purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam', 'eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat', '1', 'alfonso', '0000-00-00'),
(264, 5, 'abogado', 'tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer', 'libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna', '7', 'alfonso', '0000-00-00'),
(265, 3, 'periodista', 'at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum', 'libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam', '7', 'javimv36', '0000-00-00'),
(274, 3, 'abogado', 'litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut', 'libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum', '9', 'alvasenj', '0000-00-00'),
(280, 3, 'abogado', 'arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi.', 'Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum.', '7', 'alfonso', '0000-00-00'),
(317, 6, 'abogado', 'lorem ipsum sodales purus, in molestie tortor nibh sit amet', 'elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris', '1', 'javimv36', '0000-00-00'),
(358, 1, 'abogado', 'dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae,', 'urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque', '10', 'javimv36', '0000-00-00'),
(392, 4, 'abogado', 'nulla. Donec non justo. Proin non massa non ante bibendum', 'dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.', '2', 'alfonso', '0000-00-00'),
(399, 10, 'periodista', 'mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent', 'fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus', '6', 'alvasenj', '0000-00-00'),
(402, 5, 'abogado', 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel', 'enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend', '1', 'alvasenj', '0000-00-00'),
(406, 7, 'abogado', 'vel arcu eu odio tristique pharetra. Quisque ac libero nec', 'quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.', '5', 'alfonso', '0000-00-00'),
(409, 9, 'periodista', 'nisi nibh lacinia orci, consectetuer euismod est arcu ac orci.', 'augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,', '8', 'javimv36', '0000-00-00'),
(416, 8, 'informatico', 'sem mollis dui, in sodales elit erat vitae risus. Duis', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,', '6', 'alfonso', '0000-00-00'),
(418, 5, 'informatico', 'pede, ultrices a, auctor non, feugiat nec, diam. Duis mi', 'in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci,', '1', 'javimv36', '0000-00-00'),
(441, 5, 'informatico', 'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut', 'lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at,', '3', 'alfonso', '0000-00-00'),
(497, 10, 'informatico', 'nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam', 'gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut', '7', 'javimv36', '0000-00-00'),
(513, 2, 'informatico', 'non massa non ante bibendum ullamcorper. Duis cursus, diam at', 'pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet', '8', 'alfonso', '0000-00-00'),
(554, 8, 'informatico', 'Ut semper pretium neque. Morbi quis urna. Nunc quis arcu', 'litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas.', '2', 'alfonso', '0000-00-00'),
(558, 4, 'periodista', 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis', 'dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas', '5', 'alfonso', '0000-00-00'),
(562, 8, 'periodista', 'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus', 'dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam', '1', 'alvasenj', '0000-00-00'),
(586, 2, 'periodista', 'arcu eu odio tristique pharetra. Quisque ac libero nec ligula', 'turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a,', '8', 'javimv36', '0000-00-00'),
(597, 9, 'abogado', 'ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci', 'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras', '1', 'alfonso', '0000-00-00'),
(611, 2, 'periodista', 'hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium', 'mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris', '7', 'alfonso', '0000-00-00'),
(617, 9, 'informatico', 'nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam', 'ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et', '1', 'javimv36', '0000-00-00'),
(661, 2, 'periodista', 'nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae', 'feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet', '1', 'javimv36', '0000-00-00'),
(706, 5, 'abogado', 'Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi', 'lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non,', '9', 'alvasenj', '0000-00-00'),
(709, 2, 'informatico', 'sagittis felis. Donec tempor, est ac mattis semper, dui lectus', 'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.', '8', 'alvasenj', '0000-00-00'),
(712, 1, 'abogado', 'tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget', 'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut', '7', 'alfonso', '0000-00-00'),
(715, 5, 'abogado', 'et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat', 'vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus', '3', 'alfonso', '0000-00-00'),
(755, 4, 'periodista', 'sit amet ornare lectus justo eu arcu. Morbi sit amet', 'iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa.', '4', 'alvasenj', '0000-00-00'),
(770, 6, 'informatico', 'nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam', 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit', '1', 'alfonso', '0000-00-00'),
(779, 4, 'abogado', 'rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida', 'Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc', '5', 'alvasenj', '0000-00-00'),
(780, 8, 'abogado', 'et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.', 'orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus.', '5', 'alvasenj', '0000-00-00'),
(790, 2, 'informatico', 'Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit.', 'iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu', '4', 'alvasenj', '0000-00-00'),
(815, 2, 'informatico', 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis,', '3', 'javimv36', '0000-00-00'),
(822, 2, 'periodista', 'velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor', 'dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum', '4', 'alfonso', '0000-00-00'),
(827, 1, 'abogado', 'lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed', 'facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus', '9', 'javimv36', '0000-00-00'),
(828, 5, 'informatico', 'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa', 'magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus', '10', 'alvasenj', '0000-00-00'),
(839, 6, 'periodista', 'viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum', 'at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed', '3', 'alfonso', '0000-00-00'),
(865, 8, 'informatico', 'posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse', 'torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa.', '5', 'alfonso', '0000-00-00'),
(888, 1, 'abogado', 'dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur', 'orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas', '9', 'alfonso', '0000-00-00'),
(918, 5, 'abogado', 'massa non ante bibendum ullamcorper. Duis cursus, diam at pretium', 'orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean', '1', 'javimv36', '0000-00-00'),
(930, 2, 'informatico', 'Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros.', 'diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi', '3', 'javimv36', '0000-00-00'),
(935, 2, 'periodista', 'Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non', 'sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi', '3', 'alfonso', '0000-00-00'),
(948, 9, 'abogado', 'leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,', 'tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi', '7', 'javimv36', '0000-00-00'),
(952, 1, 'abogado', 'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum', 'sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris,', '4', 'javimv36', '0000-00-00'),
(955, 3, 'periodista', 'vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque', 'lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer', '3', 'alfonso', '0000-00-00'),
(993, 3, 'abogado', 'orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu,', 'tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget', '7', 'alvasenj', '0000-00-00'),
(999, 8, 'periodista', 'amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede,', 'ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis', '7', 'javimv36', '0000-00-00');

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
-- Estructura de tabla para la tabla `Imagen_articulo`
--

CREATE TABLE `Imagen_articulo` (
  `id` int(10) NOT NULL,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Imagen_modificacion_articulo`
--

CREATE TABLE `Imagen_modificacion_articulo` (
  `id_mod` int(10) NOT NULL,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

--
-- Volcado de datos para la tabla `Modificaciones`
--

INSERT INTO `Modificaciones` (`id_modificacion`, `votos_positivos`, `votos_negativos`, `nick`) VALUES
('1', 50, 50, 'javi'),
('100', 60, 76, 'alvasenj'),
('15', 49, 77, 'alvasenj'),
('16', 73, 5, 'alvasenj'),
('18', 99, 85, 'alvasenj'),
('19', 56, 19, 'alvasenj'),
('2', 59, 90, 'alvasenj'),
('21', 20, 23, 'alvasenj'),
('23', 88, 71, 'alvasenj'),
('26', 5, 16, 'alvasenj'),
('28', 21, 73, 'alvasenj'),
('3', 57, 62, 'alvasenj'),
('4', 16, 81, 'alvasenj'),
('44', 5, 44, 'alvasenj'),
('45', 60, 86, 'alvasenj'),
('47', 22, 17, 'alvasenj'),
('49', 56, 40, 'alvasenj'),
('5', 9, 86, 'alvasenj'),
('53', 46, 59, 'alvasenj'),
('54', 57, 29, 'alvasenj'),
('55', 93, 74, 'alvasenj'),
('56', 87, 55, 'alvasenj'),
('57', 46, 28, 'alvasenj'),
('59', 38, 54, 'alvasenj'),
('64', 71, 67, 'alvasenj'),
('65', 60, 54, 'alvasenj'),
('68', 31, 11, 'alvasenj'),
('7', 93, 62, 'alvasenj'),
('70', 81, 28, 'alvasenj'),
('73', 40, 26, 'alvasenj'),
('75', 22, 33, 'alvasenj'),
('76', 86, 18, 'alvasenj'),
('78', 20, 27, 'alvasenj'),
('79', 15, 66, 'alvasenj'),
('8', 63, 90, 'alvasenj'),
('80', 83, 9, 'alvasenj'),
('81', 8, 53, 'alvasenj'),
('83', 67, 33, 'alvasenj'),
('85', 94, 46, 'alvasenj'),
('89', 100, 59, 'alvasenj'),
('9', 5, 99, 'alvasenj'),
('94', 90, 74, 'alvasenj'),
('97', 53, 50, 'alvasenj'),
('98', 71, 49, 'alvasenj'),
('99', 39, 73, 'alvasenj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modificacion_articulo`
--

CREATE TABLE `Modificacion_articulo` (
  `id_mod` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `nivel` int(20) NOT NULL,
  `titulo` text NOT NULL,
  `contenido` longtext NOT NULL,
  `creador` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Modificacion_articulo`
--

INSERT INTO `Modificacion_articulo` (`id_mod`, `id`, `rol`, `nivel`, `titulo`, `contenido`, `creador`, `fecha`) VALUES
(1, 0, 'periodista', 0, 'Lorem ipsum dolor sit amet', ' consectetuer', 'javimv36', '2018-07-04 03:31:22'),
(2, 38, 'informatico', 1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 'alvasenj', '2017-06-09 07:15:41'),
(3, 73, 'abogado', 8, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur sed', 'alvasenj', '2018-11-25 15:13:09'),
(4, 87, 'informatico', 1, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'javimv36', '2017-05-16 21:26:49'),
(5, 30, 'abogado', 3, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'alvasenj', '2019-01-20 23:41:52'),
(6, 28, 'abogado', 4, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'alvasenj', '2018-06-03 11:19:12'),
(7, 60, 'informatico', 1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 'javimv36', '2019-02-19 00:50:11'),
(8, 34, 'abogado', 0, 'Lorem ipsum dolor sit amet', '', 'alvasenj', '2017-12-28 01:53:21'),
(9, 18, 'informatico', 4, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet', 'alvasenj', '2017-09-19 22:44:37'),
(10, 69, 'abogado', 8, 'Lorem ipsum dolor sit amet', '', 'javimv36', '2017-04-24 17:43:00'),
(11, 72, 'informatico', 8, 'Lorem ipsum dolor', 'Lorem ipsum', 'alvasenj', '2018-04-01 18:40:19'),
(12, 7, 'periodista', 6, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'alvasenj', '2017-12-13 03:13:43'),
(13, 13, 'abogado', 4, 'Lorem ipsum', 'Lorem', 'alvasenj', '2018-02-13 06:52:42'),
(14, 41, 'periodista', 4, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur sed', 'javimv36', '2018-12-21 09:43:34'),
(15, 60, 'periodista', 4, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-12-03 17:26:26'),
(16, 31, 'abogado', 3, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet', 'alvasenj', '2017-11-25 17:17:29'),
(17, 76, 'periodista', 3, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet', 'alvasenj', '2019-01-14 21:10:43'),
(18, 42, 'abogado', 4, 'Lorem ipsum dolor sit amet', ' consectetuer', 'alvasenj', '2018-11-03 18:19:23'),
(19, 22, 'abogado', 3, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 'javimv36', '2018-04-24 01:03:37'),
(20, 73, 'abogado', 7, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 'alvasenj', '2017-12-06 19:33:56'),
(21, 38, 'periodista', 5, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-08-25 08:31:04'),
(22, 50, 'informatico', 1, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'javimv36', '2017-08-08 12:16:15'),
(23, 45, 'informatico', 2, 'Lorem', 'Lorem', 'javimv36', '2019-01-28 22:36:26'),
(24, 86, 'abogado', 9, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit.', 'javimv36', '2017-06-04 20:09:55'),
(25, 88, 'informatico', 9, 'Lorem ipsum dolor sit amet', ' consectetuer', 'javimv36', '2018-04-11 05:08:10'),
(26, 42, 'informatico', 3, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit.', 'javimv36', '2019-01-21 08:39:54'),
(27, 10, 'periodista', 3, 'Lorem ipsum dolor sit amet', '', 'javimv36', '2017-12-17 19:41:54'),
(28, 97, 'periodista', 3, 'Lorem ipsum dolor sit amet', ' consectetuer', 'alvasenj', '2018-10-01 07:17:32'),
(29, 32, 'informatico', 8, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur sed', 'javimv36', '2018-06-29 13:02:45'),
(30, 40, 'periodista', 9, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur sed', 'javimv36', '2018-03-29 12:18:59'),
(31, 11, 'informatico', 1, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'alvasenj', '2019-03-17 19:58:19'),
(32, 73, 'abogado', 1, 'Lorem ipsum dolor sit amet', ' consectetuer', 'javimv36', '2018-02-23 02:47:27'),
(33, 77, 'periodista', 7, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 'javimv36', '2019-03-15 02:08:02'),
(34, 59, 'abogado', 2, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'alvasenj', '2017-08-04 19:03:38'),
(35, 38, 'abogado', 4, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 'javimv36', '2018-01-25 07:00:50'),
(36, 46, 'periodista', 5, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit.', 'javimv36', '2017-10-06 06:09:47'),
(37, 89, 'abogado', 0, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit.', 'javimv36', '2019-02-13 12:08:11'),
(38, 35, 'periodista', 0, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-09-25 01:45:58'),
(39, 34, 'periodista', 2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 'javimv36', '2017-07-22 16:12:12'),
(40, 32, 'periodista', 7, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'alvasenj', '2017-10-13 03:11:08'),
(41, 28, 'abogado', 2, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit.', 'javimv36', '2018-01-13 15:12:19'),
(42, 21, 'abogado', 7, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur sed', 'alvasenj', '2017-10-31 07:09:29'),
(43, 52, 'abogado', 7, 'Lorem ipsum dolor sit amet', ' consectetuer', 'alvasenj', '2018-03-11 19:12:51'),
(44, 24, 'abogado', 5, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'javimv36', '2018-03-19 09:21:13'),
(45, 88, 'abogado', 9, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'javimv36', '2019-03-21 09:07:29'),
(46, 22, 'informatico', 3, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit.', 'javimv36', '2019-01-18 23:08:48'),
(47, 87, 'periodista', 2, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'alvasenj', '2018-03-20 20:04:26'),
(48, 99, 'periodista', 6, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'alvasenj', '2019-01-27 18:33:10'),
(49, 32, 'informatico', 8, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'javimv36', '2017-10-13 08:44:11'),
(50, 79, 'informatico', 2, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet', 'alvasenj', '2017-05-25 15:02:11'),
(51, 79, 'informatico', 4, 'Lorem ipsum dolor sit amet', ' consectetuer', 'javimv36', '2018-10-14 04:45:31'),
(52, 23, 'periodista', 4, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'alvasenj', '2017-06-04 05:47:00'),
(53, 70, 'informatico', 0, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur sed', 'alvasenj', '2018-07-06 10:51:39'),
(54, 68, 'informatico', 3, 'Lorem', 'Lorem ipsum', 'javimv36', '2018-12-16 03:22:15'),
(55, 55, 'informatico', 1, 'Lorem ipsum dolor sit amet', ' consectetuer', 'alvasenj', '2018-06-12 10:51:22'),
(56, 30, 'periodista', 8, 'Lorem ipsum', 'Lorem ipsum dolor sit', 'alvasenj', '2018-03-30 11:51:50'),
(57, 72, 'abogado', 8, 'Lorem', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-02-28 18:13:11'),
(58, 93, 'informatico', 4, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-08-29 06:25:25'),
(59, 91, 'abogado', 5, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet', 'javimv36', '2018-12-13 07:03:03'),
(60, 6, 'informatico', 1, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'alvasenj', '2017-11-29 03:08:10'),
(61, 90, 'abogado', 3, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'alvasenj', '2018-07-31 04:26:46'),
(62, 14, 'abogado', 7, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'javimv36', '2017-09-04 21:40:30'),
(63, 56, 'periodista', 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'javimv36', '2018-12-19 12:28:57'),
(64, 10, 'informatico', 9, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit.', 'javimv36', '2018-11-14 08:43:14'),
(65, 86, 'abogado', 2, 'Lorem ipsum dolor sit', 'Lorem ipsum', 'alvasenj', '2018-04-17 03:44:07'),
(66, 8, 'abogado', 4, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur sed', 'alvasenj', '2018-08-28 15:53:31'),
(67, 5, 'periodista', 9, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit', 'javimv36', '2018-01-16 05:58:16'),
(68, 27, 'periodista', 5, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-12-11 15:05:49'),
(69, 60, 'informatico', 0, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'javimv36', '2017-11-05 10:33:08'),
(70, 65, 'abogado', 6, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'javimv36', '2018-05-14 17:21:09'),
(71, 48, 'periodista', 5, 'Lorem ipsum dolor sit amet', '', 'javimv36', '2017-08-04 22:16:03'),
(72, 13, 'informatico', 7, 'Lorem', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-08-19 18:26:04'),
(73, 47, 'abogado', 9, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-08-06 15:27:37'),
(74, 84, 'abogado', 1, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'javimv36', '2017-09-15 00:47:28'),
(75, 91, 'informatico', 6, 'Lorem ipsum dolor sit amet', ' consectetuer', 'javimv36', '2018-03-16 09:10:57'),
(76, 0, 'informatico', 4, 'Lorem ipsum dolor sit amet', ' consectetuer', 'javimv36', '2018-05-03 10:54:24'),
(77, 0, 'abogado', 2, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'javimv36', '2018-09-14 16:21:09'),
(78, 0, 'abogado', 1, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit.', 'javimv36', '2018-08-29 09:19:02'),
(79, 0, 'informatico', 6, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet', 'alvasenj', '2017-12-31 06:33:52'),
(80, 0, 'periodista', 1, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur sed', 'javimv36', '2017-06-17 09:30:12'),
(81, 0, 'abogado', 4, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit', 'javimv36', '2018-03-01 06:34:42'),
(82, 0, 'informatico', 6, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 'javimv36', '2019-01-10 11:08:30'),
(83, 0, 'informatico', 1, 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit', 'javimv36', '2018-12-15 02:29:01'),
(84, 0, 'informatico', 6, 'Lorem ipsum dolor sit amet', '', 'alvasenj', '2018-01-15 12:07:09'),
(85, 0, 'abogado', 3, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'javimv36', '2018-02-19 19:25:20'),
(86, 0, 'periodista', 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor', 'javimv36', '2018-08-16 00:42:23'),
(87, 0, 'informatico', 1, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing', 'javimv36', '2018-07-01 22:25:56'),
(88, 0, 'abogado', 1, 'Lorem ipsum dolor', 'Lorem', 'alvasenj', '2018-09-24 07:33:22'),
(89, 0, 'informatico', 7, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-01-06 08:08:51'),
(90, 0, 'abogado', 5, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'alvasenj', '2017-08-21 06:24:23'),
(91, 0, 'informatico', 6, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'alvasenj', '2018-11-14 08:56:13'),
(92, 0, 'informatico', 5, 'Lorem', 'Lorem ipsum dolor', 'javimv36', '2018-04-19 19:47:53'),
(93, 0, 'abogado', 5, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'javimv36', '2019-01-08 15:58:15'),
(94, 0, 'periodista', 8, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur sed', 'javimv36', '2018-05-19 19:41:27'),
(95, 0, 'abogado', 2, 'Lorem ipsum dolor sit amet', ' consectetuer', 'alvasenj', '2019-03-26 19:49:37'),
(96, 0, 'informatico', 2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet', 'alvasenj', '2017-07-01 10:19:13'),
(97, 0, 'informatico', 8, 'Lorem ipsum dolor sit amet', ' consectetuer adipiscing elit. Curabitur', 'javimv36', '2019-01-11 16:17:15'),
(98, 0, 'abogado', 4, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet', 'alvasenj', '2018-11-04 21:59:20'),
(99, 0, 'informatico', 6, 'Lorem ipsum dolor sit amet', '', 'alvasenj', '2017-07-13 10:16:49'),
(100, 0, 'abogado', 6, 'Lorem ipsum dolor sit amet', '', 'alvasenj', '2017-06-29 15:36:28'),
(101, 0, '', 0, '', '', 'javi', '2018-04-05 18:47:13'),
(102, 513, 'informatico', 2, '\r\n                non massa non ante bibendum ullamcorper. Duis cursus, diam at              ', 'pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet', 'javi', '2018-04-05 18:47:13'),
(103, 0, '', 0, '', '', 'javi', '2018-04-05 18:48:21'),
(104, 513, 'informatico', 2, '\r\n                non massa non ante bibendum ullamcorper. Duis cursus, diam at              ', 'pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet', 'javi', '2018-04-05 18:48:21'),
(105, 0, '', 0, '', '', 'javi', '2018-04-05 18:51:59'),
(106, 513, 'informatico', 2, '\r\n                non massa non ante bibendum ullamcorper. Duis cursus, diam at              ', 'pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet', 'javi', '2018-04-05 18:51:59'),
(107, 0, '', 0, '', '', 'javi', '2018-04-05 19:11:58'),
(108, 770, 'informatico', 6, '\r\n                nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam              ', 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit', 'javi', '2018-04-05 19:11:58'),
(109, 0, '', 0, '', '', 'javi', '2018-04-05 19:16:53'),
(110, 265, 'periodista', 3, '\r\n                at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum              ', 'libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam', 'javi', '2018-04-05 19:16:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modificacion_pregunta`
--

CREATE TABLE `Modificacion_pregunta` (
  `rol` varchar(20) NOT NULL,
  `id_mod` varchar(3) NOT NULL,
  `nivel` int(11) NOT NULL,
  `texto` varchar(150) NOT NULL,
  `A` text NOT NULL,
  `B` text NOT NULL,
  `C` text NOT NULL,
  `D` text NOT NULL,
  `Correcta` text NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Modificacion_pregunta`
--

INSERT INTO `Modificacion_pregunta` (`rol`, `id_mod`, `nivel`, `texto`, `A`, `B`, `C`, `D`, `Correcta`, `id`) VALUES
('informatico', '10', 1, 'asasasa', 'aaaaa', 'bbbbbb', 'ccccc', 'ddddd', 'A', 129),
('abogado', '100', 7, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales', 'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris', 'Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris', 'tellus id nunc interdum feugiat. Sed nec metus facilisis lorem', 'quis, pede. Praesent eu dui. Cum sociis natoque penatibus et', 'C', 86),
('informatico', '100', 7, 'Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a', 'in consequat enim diam vel arcu. Curabitur ut odio vel', 'erat vitae risus. Duis a mi fringilla mi lacinia mattis.', 'mollis lectus pede et risus. Quisque libero lacus, varius et,', 'ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit', 'A', 59),
('', '101', 0, '', 'A', 'B', 'C', 'D', 'A', 0),
('abogado', '101', 0, 'ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper', 'fermentum risus, at fringilla purus mauris a nunc. In at', 'tellus eu augue porttitor interdum. Sed auctor odio a purus.', 'fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies', 'ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus.', 'A', 16),
('informatico', '101', 4, 'Aliquam adipiscing lobortis risus. In', 'dictum placerat, augue. Sed molestie. Sed id risus quis diam', 'nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis', 'at fringilla purus mauris a nunc. In at pede. Cras', 'dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc', 'D', 48),
('periodista', '101', 2, 'in aliquet lobortis, nisi', 'sem egestas blandit. Nam nulla magna, malesuada vel, convallis in,', 'id, blandit at, nisi. Cum sociis natoque penatibus et magnis', 'dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit.', 'Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,', 'A', 20),
('abogado', '101', 1, 'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dol', 'dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu', 'Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor,', 'dui quis accumsan convallis, ante lectus convallis est, vitae sodales', 'B', 40),
('informatico', '102', 2, 'undefined', 'A', 'B', 'C', 'D', 'A', 513),
('', '103', 0, '', 'A', 'B', 'C', 'D', 'A', 0),
('periodista', '103', 5, 'diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ', 'odio vel est tempor bibendum. Donec felis orci, adipiscing non,', 'ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend', 'quis diam. Pellentesque habitant morbi tristique senectus et netus et', 'ante lectus convallis est, vitae sodales nisi magna sed dui.', 'C', 20),
('periodista', '103', 7, 'dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem ', 'nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet.', 'nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in', 'aptent taciti sociosqu ad litora torquent per conubia nostra, per', 'nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus.', 'C', 21),
('abogado', '104', 3, ' Phasellus ornare.', 'nunc. Quisque ornare tortor at risus. Nunc ac sem ut', 'pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac,', 'eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec', 'faucibus orci luctus et ultrices posuere cubilia Curae', 'C', 8),
('abogado', '104', 3, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhonc', 'non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget', 'Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum', 'Donec tempor, est ac mattis semper, dui lectus rutrum urna,', 'enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum', 'A', 44),
('abogado', '104', 2, 'tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id', 'Phasellus at augue id ante dictum cursus. Nunc mauris elit,', 'erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse', 'tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum.', 'eu nulla at sem molestie sodales. Mauris blandit enim consequat', 'C', 23),
('informatico', '104', 2, 'undefined', 'A', 'B', 'C', 'D', 'A', 513),
('', '105', 0, '', 'A', 'B', 'C', 'D', 'A', 0),
('abogado', '105', 7, 'commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendr', 'Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.', 'amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis', 'volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis.', 'Vivamus non lorem vitae odio sagittis semper. Nam tempor diam', 'A', 5),
('abogado', '105', 8, 'et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, male', 'rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam', 'amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum', 'netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus', 'tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,', 'B', 74),
('informatico', '106', 2, 'asdad', 'A', 'B', 'C', 'D', 'A', 513),
('informatico', '106', 2, 'asdasd', 'A', 'B', 'C', 'D', 'A', 513),
('informatico', '106', 2, 'dasda', 'A', 'B', 'C', 'D', 'A', 513),
('', '107', 0, '', '', '', '', '', '', 0),
('informatico', '107', 0, 'erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio.', 'lobortis. Class aptent taciti sociosqu ad litora torquent per conubia', 'elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum.', 'egestas. Fusce aliquet magna a neque. Nullam ut nisi a', 'id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis', 'A', 68),
('informatico', '108', 6, 'adsad', 'asdadsa', 'adsads', 'asdad', 'asdasd', 'A', 770),
('informatico', '108', 6, 'dasasda', 'asdads', 'adsadsa', 'dasdsa', 'asda', 'B', 770),
('informatico', '108', 6, 'ssdadassd', 'sfdsfdsf', 'asdadsa', 'adsdsa', 'dasdada', 'D', 770),
('', '109', 0, '', '', '', '', '', '', 0),
('abogado', '109', 5, 'torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt t', 'nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque,', 'magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac', 'aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam', 'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id,', 'C', 68),
('periodista', '110', 3, 'dasa', 'das', 'da', 'das', 'dsa', 'D', 265),
('periodista', '110', 3, 'dsa', 'das', 'dsa', 'das', 'das', 'D', 265),
('periodista', '110', 3, 'dsadsad', 'dsada', 'dsadsa', 'dasda', 'dadsdssd', 'D', 265),
('periodista', '111', 3, 'turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequ', 'congue, elit sed consequat auctor, nunc nulla vulputate dui, nec', 'pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit', 'sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla', 'sit amet luctus vulputate, nisi sem semper erat, in consectetuer', 'C', 42),
('periodista', '112', 3, 'Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed', 'mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut,', 'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas,', 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus', 'arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor', 'D', 94),
('abogado', '112', 3, 'vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis', 'gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet', 'Sed auctor odio a purus. Duis elementum, dui quis accumsan', 'in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla', 'eros nec tellus. Nunc lectus pede, ultrices a, auctor non,', 'D', 13),
('abogado', '114', 4, 'Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ', 'iaculis odio. Nam interdum enim non nisi. Aenean eget metus.', 'aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt,', 'vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh', 'ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec,', 'A', 77),
('periodista', '114', 6, 'nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim ', 'auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis', 'feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem', 'euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget', 'libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus', 'A', 81),
('periodista', '115', 7, 'magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis maur', 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed', 'Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,', 'Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor,', 'sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis', 'D', 47),
('periodista', '116', 4, 'nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lac', 'quam. Pellentesque habitant morbi tristique senectus et netus et malesuada', 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis.', 'Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet', 'tellus eu augue porttitor interdum. Sed auctor odio a purus.', 'A', 2),
('informatico', '119', 2, 'ipsum. Curabitur consequat, lectus sit amet', 'ultrices a, auctor non, feugiat nec, diam. Duis mi enim,', 'tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,', 'nec mauris blandit mattis. Cras eget nisi dictum augue malesuada', 'Proin mi. Aliquam gravida mauris ut mi. Duis risus odio,', 'C', 84),
('periodista', '119', 6, 'nec urna et arcu imperdiet ullamcorper. Duis', 'Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus', 'dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada', 'vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu.', 'in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum', 'D', 65),
('periodista', '121', 4, 'a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales', 'nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam', 'purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam', 'facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus', 'Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus,', 'D', 26),
('periodista', '122', 5, 'ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vit', 'magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu', 'sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris', 'Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis', 'pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum.', 'B', 36),
('informatico', '125', 5, 'elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida ', 'gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat.', 'dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales', 'lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan', 'cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis', 'D', 67),
('informatico', '125', 9, 'et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel', 'arcu. Curabitur ut odio vel est tempor bibendum. Donec felis', 'Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus', 'tempor erat neque non quam. Pellentesque habitant morbi tristique senectus', 'rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida', 'C', 87),
('abogado', '129', 6, 'vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et mag', 'accumsan convallis, ante lectus convallis est, vitae sodales nisi magna', 'nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus', 'massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at', 'non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris', 'C', 12),
('abogado', '13', 1, 'Pregunta prueba 2', 'A', 'B', 'C', 'D', 'A', 827),
('informatico', '130', 4, 'nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet,', 'lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis', 'Proin vel arcu eu odio tristique pharetra. Quisque ac libero', 'neque. Sed eget lacus. Mauris non dui nec urna suscipit', 'ornare sagittis felis. Donec tempor, est ac mattis semper, dui', 'B', 86),
('periodista', '132', 3, 'a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risu', 'dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui.', 'mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet,', 'sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 'Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra', 'A', 7),
('periodista', '132', 6, 'velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat', 'tempus non, lacinia at, iaculis quis, pede. Praesent eu dui.', 'inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In', 'odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam', 'Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris', 'D', 25),
('periodista', '134', 0, 'aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, cons', 'iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac,', 'cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula', 'cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum', 'In nec orci. Donec nibh. Quisque nonummy ipsum non arcu.', 'D', 78),
('informatico', '134', 6, 'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis', 'arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum', 'magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed,', 'tellus sem mollis dui, in sodales elit erat vitae risus.', 'vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget', 'C', 35),
('informatico', '135', 1, 'euismod est arcu ac orci. Ut semper pretium neque. Morbi', 'scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit', 'ultrices posuere cubilia Curae', ' Phasellus ornare. Fusce mollis. Duis sit', 'fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem', 'C', 66),
('abogado', '137', 2, 'auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus', 'arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt', 'cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis', 'a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc', 'et netus et malesuada fames ac turpis egestas. Fusce aliquet', 'D', 67),
('informatico', '137', 8, 'Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus', 'vulputate eu, odio. Phasellus at augue id ante dictum cursus.', 'facilisi. Sed neque. Sed eget lacus. Mauris non dui nec', 'Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla.', 'nunc nulla vulputate dui, nec tempus mauris erat eget ipsum.', 'D', 96),
('periodista', '137', 3, 'lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet di', 'in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est', 'in sodales elit erat vitae risus. Duis a mi fringilla', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at', 'A', 24),
('abogado', '137', 9, 'porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui.', 'hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer,', 'cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis', 'metus vitae velit egestas lacinia. Sed congue, elit sed consequat', 'eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce', 'D', 20),
('informatico', '138', 9, 'tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Eti', 'eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis,', 'Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus.', 'cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis', 'pede et risus. Quisque libero lacus, varius et, euismod et,', 'B', 51),
('abogado', '14', 1, 'undefined', 'A', 'B', 'C', 'D', 'A', 888),
('informatico', '143', 2, 'ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, i', 'arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi.', 'sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie', 'nunc ac mattis ornare, lectus ante dictum mi, ac mattis', 'est ac mattis semper, dui lectus rutrum urna, nec luctus', 'A', 15),
('periodista', '145', 2, 'ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitud', 'rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at,', 'In ornare sagittis felis. Donec tempor, est ac mattis semper,', 'augue. Sed molestie. Sed id risus quis diam luctus lobortis.', 'a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque', 'B', 21),
('abogado', '145', 2, 'eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis', 'ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend', 'Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas', 'metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec', 'lacus pede sagittis augue, eu tempor erat neque non quam.', 'C', 54),
('periodista', '148', 4, 'neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neq', 'erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat', 'sed pede nec ante blandit viverra. Donec tempus, lorem fringilla', 'metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec', 'Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem.', 'B', 41),
('periodista', '148', 8, 'Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, ', 'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices', 'ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam', 'Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris,', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula', 'B', 81),
('abogado', '149', 0, ' Donec tincidunt. Donec', 'Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci,', 'arcu. Curabitur ut odio vel est tempor bibendum. Donec felis', 'nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet.', 'orci luctus et ultrices posuere cubilia Curae', 'A', 46),
('periodista', '149', 8, 'fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci', 'Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo', 'nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse', 'Curae', ' Donec tincidunt. Donec vitae erat vel pede blandit congue.', 'C', 57),
('abogado', '15', 1, 'Pregunta prueba 2', 'A', 'B', 'C', 'D', 'A', 827),
('informatico', '150', 4, 'in faucibus orci luctus', 'tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat.', 'diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer', 'a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed', 'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec,', 'C', 41),
('abogado', '150', 1, 'metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa.', 'lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis', 'ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus.', 'consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque', 'vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum', 'D', 36),
('abogado', '151', 3, 'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 'nunc sed libero. Proin sed turpis nec mauris blandit mattis.', 'nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et', 'facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus', 'auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus', 'C', 75),
('informatico', '152', 5, 'magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio.', 'non magna. Nam ligula elit, pretium et, rutrum non, hendrerit', 'euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate', 'nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat,', 'vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus', 'B', 76),
('abogado', '153', 7, 'amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, di', 'leo, in lobortis tellus justo sit amet nulla. Donec non', 'dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus', 'vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget', 'commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,', 'C', 67),
('informatico', '155', 5, 'nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. ', 'tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec', 'convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit', 'augue. Sed molestie. Sed id risus quis diam luctus lobortis.', 'a nunc. In at pede. Cras vulputate velit eu sem.', 'B', 12),
('informatico', '156', 9, 'feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, ', 'Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas', 'Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada', 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus', 'massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis', 'B', 97),
('abogado', '156', 8, 'ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc', 'fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,', 'id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus', 'sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam', 'molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis.', 'C', 75),
('abogado', '156', 4, 'parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed ', 'mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris', 'Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci', 'faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis', 'laoreet, libero et tristique pellentesque, tellus sem mollis dui, in', 'B', 14),
('informatico', '156', 0, 'vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. N', 'libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet', 'non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris', 'id nunc interdum feugiat. Sed nec metus facilisis lorem tristique', 'elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis', 'C', 54),
('informatico', '159', 0, 'faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adip', 'mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris', 'interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh', 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.', 'malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris', 'D', 73),
('abogado', '16', 1, '', 'A', 'B', 'C', 'D', 'A', 827),
('abogado', '16', 1, 'Pregunta de prueba 3', 'A', 'B', 'C', 'D', 'A', 827),
('abogado', '16', 1, 'Pregunta prueba 2', 'A', 'B', 'C', 'D', 'A', 827),
('informatico', '160', 6, 'Maecenas', 'Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel', 'pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac,', 'magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem', 'sit amet, dapibus id, blandit at, nisi. Cum sociis natoque', 'A', 5),
('periodista', '163', 9, 'hymenaeos. Mauris ut quam vel sapien imperdiet ornare.', 'urna justo faucibus lectus, a sollicitudin orci sem eget massa.', 'dui quis accumsan convallis, ante lectus convallis est, vitae sodales', 'ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc', 'arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt', 'C', 29),
('periodista', '163', 2, 'luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit am', 'Praesent eu dui. Cum sociis natoque penatibus et magnis dis', 'nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante', 'tellus eu augue porttitor interdum. Sed auctor odio a purus.', 'ut eros non enim commodo hendrerit. Donec porttitor tellus non', 'D', 31),
('periodista', '164', 1, 'vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egesta', 'non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis', 'ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula.', 'a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo', 'amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.', 'A', 95),
('informatico', '167', 6, 'cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu', 'eu tellus eu augue porttitor interdum. Sed auctor odio a', 'Donec tincidunt. Donec vitae erat vel pede blandit congue. In', 'Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam', 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus', 'B', 94),
('abogado', '168', 8, ' Phasellus ornare. Fusce mollis. Duis sit', 'at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque', 'nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in', 'ante lectus convallis est, vitae sodales nisi magna sed dui.', 'ultrices posuere cubilia Curae', 'A', 70),
('periodista', '169', 8, 'Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer', 'ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus', 'arcu ac orci. Ut semper pretium neque. Morbi quis urna.', 'auctor non, feugiat nec, diam. Duis mi enim, condimentum eget,', 'consequat enim diam vel arcu. Curabitur ut odio vel est', 'C', 95),
('informatico', '169', 1, 'Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus no', 'tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed', 'mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.', 'augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum.', 'rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,', 'D', 98),
('informatico', '169', 3, 'Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt ', 'ornare lectus justo eu arcu. Morbi sit amet massa. Quisque', 'est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse', 'aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu', 'id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis', 'B', 99),
('informatico', '169', 3, 'tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus pur', 'scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia.', 'egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est', 'Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non,', 'mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin', 'C', 79),
('abogado', '170', 4, 'nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, ', 'mauris a nunc. In at pede. Cras vulputate velit eu', 'nisi nibh lacinia orci, consectetuer euismod est arcu ac orci.', 'id, blandit at, nisi. Cum sociis natoque penatibus et magnis', 'Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae', 'C', 99),
('informatico', '171', 9, 'lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi', 'tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed', 'dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel,', 'dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate', 'hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer,', 'D', 6),
('abogado', '171', 6, 'torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt t', 'tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec', 'Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor,', 'dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus.', 'neque. In ornare sagittis felis. Donec tempor, est ac mattis', 'B', 75),
('abogado', '172', 5, ' Phasellus ornare. Fusce mollis. Duis', 'amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis', 'sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue', 'placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,', 'et ultrices posuere cubilia Curae', 'A', 52),
('abogado', '172', 1, 'tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus pur', 'Nam interdum enim non nisi. Aenean eget metus. In nec', 'ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus', 'lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in', 'velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat,', 'C', 29),
('periodista', '174', 7, 'quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin n', 'dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus', 'id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque', 'Maecenas libero est, congue a, aliquet vel, vulputate eu, odio.', 'sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 'D', 21),
('informatico', '177', 7, 'mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus', 'in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum', 'et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu.', 'eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus', 'mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.', 'D', 34),
('abogado', '179', 8, 'erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor l', 'porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris', 'felis. Donec tempor, est ac mattis semper, dui lectus rutrum', 'lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in', 'ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin', 'B', 91),
('abogado', '179', 3, 'nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede.', 'non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris', 'erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum', 'vestibulum, neque sed dictum eleifend, nunc risus varius orci, in', 'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum', 'C', 2),
('abogado', '180', 0, 'Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum u', 'scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed', 'In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas', 'enim diam vel arcu. Curabitur ut odio vel est tempor', 'accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam.', 'C', 25),
('periodista', '181', 8, 'Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliq', 'Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies', 'dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris,', 'molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est,', 'velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc', 'A', 75),
('abogado', '182', 6, 'arcu.', 'orci, in consequat enim diam vel arcu. Curabitur ut odio', 'est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse', 'adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu', 'Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas', 'C', 76),
('abogado', '187', 6, 'tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Na', 'Sed eget lacus. Mauris non dui nec urna suscipit nonummy.', 'Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo.', 'dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum', 'ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede', 'A', 81),
('periodista', '188', 2, 'Duis mi enim, condimentum eget, volutpat ornare, facilisis', 'vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit', 'molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris.', 'vitae sodales nisi magna sed dui. Fusce aliquam, enim nec', 'lectus ante dictum mi, ac mattis velit justo nec ante.', 'C', 40),
('periodista', '188', 5, 'tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu,', 'sit amet diam eu dolor egestas rhoncus. Proin nisl sem,', 'rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,', 'pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna.', 'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum.', 'C', 6),
('informatico', '189', 3, 'euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turp', 'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada', 'et tristique pellentesque, tellus sem mollis dui, in sodales elit', 'pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,', 'interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt', 'C', 95),
('informatico', '190', 5, 'Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, ', 'eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam', 'ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec', 'quis, pede. Praesent eu dui. Cum sociis natoque penatibus et', 'Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi', 'D', 60),
('abogado', '190', 6, 'porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis ege', 'cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut,', 'consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia', 'Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec,', 'feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc,', 'A', 85),
('periodista', '191', 8, 'lectus rutrum urna, nec luctus felis', 'commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus', 'adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 'metus urna convallis erat, eget tincidunt dui augue eu tellus.', 'sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo.', 'D', 83),
('informatico', '192', 6, 'Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque ', 'eu nulla at sem molestie sodales. Mauris blandit enim consequat', 'ipsum sodales purus, in molestie tortor nibh sit amet orci.', 'vel, vulputate eu, odio. Phasellus at augue id ante dictum', 'in sodales elit erat vitae risus. Duis a mi fringilla', 'A', 39),
('abogado', '192', 1, 'metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sag', 'Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus', 'elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec', 'sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum', 'pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien,', 'B', 78),
('informatico', '193', 1, 'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libe', 'faucibus leo, in lobortis tellus justo sit amet nulla. Donec', 'consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia', 'Nunc ut erat. Sed nunc est, mollis non, cursus non,', 'malesuada fames ac turpis egestas. Fusce aliquet magna a neque.', 'B', 40),
('periodista', '194', 4, 'eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermen', 'scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed', 'pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit', 'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque', 'interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt', 'B', 25),
('informatico', '196', 8, ' Donec tincidunt. Donec', 'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu,', 'Donec est mauris, rhoncus id, mollis nec, cursus a, enim.', 'eu tellus eu augue porttitor interdum. Sed auctor odio a', 'orci luctus et ultrices posuere cubilia Curae', 'C', 4),
('informatico', '197', 5, 'Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui', 'risus. In mi pede, nonummy ut, molestie in, tempus eu,', 'cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut', 'Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna.', 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis.', 'D', 86),
('periodista', '197', 8, 'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. A', 'Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.', 'eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer', 'Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit', 'odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa.', 'C', 27),
('informatico', '197', 6, 'ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, i', 'Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec', 'ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci', 'sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 'magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem', 'C', 34),
('informatico', '197', 7, 'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non', 'diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer', 'Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus', 'Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,', 'rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,', 'C', 24),
('informatico', '198', 7, 'In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec u', 'tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.', 'leo, in lobortis tellus justo sit amet nulla. Donec non', 'amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis', 'dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus', 'A', 35),
('abogado', '199', 8, 'nunc sit amet metus. Aliquam erat', 'pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi.', 'dui quis accumsan convallis, ante lectus convallis est, vitae sodales', 'ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget', 'amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque,', 'B', 74),
('periodista', '199', 6, 'tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicu', 'Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut', 'quis arcu vel quam dignissim pharetra. Nam ac nulla. In', 'tristique pellentesque, tellus sem mollis dui, in sodales elit erat', 'eu dui. Cum sociis natoque penatibus et magnis dis parturient', 'D', 90),
('abogado', '200', 6, 'a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi', 'placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,', 'Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis,', 'pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod', 'arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus.', 'A', 84);

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
('101', 5, ' Phasellus', 'informatico', 'ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem', 'Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue', 'vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget', 'in faucibus orci luctus et ultrices posuere cubilia Curae', 'B', 68),
('103', 3, 'aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum', 'informatico', 'iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus', 'fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit.', 'scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada', 'tristique pellentesque, tellus sem mollis dui, in sodales elit erat', 'D', 62),
('104', 5, 'neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 'informatico', 'ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor.', 'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis', 'erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'D', 35),
('105', 0, 'purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam', 'periodista', 'posuere cubilia Curae', ' Phasellus ornare. Fusce mollis. Duis sit amet', 'tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh', 'Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam', 'D', 59),
('105', 4, 'Duis sit amet diam eu dolor egestas rhoncus. Proin', 'informatico', 'dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec', 'tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,', 'nunc. In at pede. Cras vulputate velit eu sem. Pellentesque', 'ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat', 'D', 4),
('106', 1, 'placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora', 'informatico', 'ipsum sodales purus, in molestie tortor nibh sit amet orci.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 'eros nec tellus. Nunc lectus pede, ultrices a, auctor non,', 'at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare', 'C', 68),
('106', 7, 'erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi', 'periodista', 'laoreet, libero et tristique pellentesque, tellus sem mollis dui, in', 'eros non enim commodo hendrerit. Donec porttitor tellus non magna.', 'tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac', 'nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat', 'C', 64),
('106', 9, 'mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus', 'abogado', 'auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis', 'posuere, enim nisl elementum purus, accumsan interdum libero dui nec', 'interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus', 'sit amet, faucibus ut, nulla. Cras eu tellus eu augue', 'B', 80),
('107', 2, 'diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.', 'informatico', 'enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula', 'nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia', 'mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla', 'est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed', 'D', 72),
('109', 2, 'neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut,', 'informatico', 'mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean', 'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis,', 'sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie', 'adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor', 'B', 50),
('110', 7, 'inceptos hymenaeos. Mauris', 'periodista', 'sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero', 'ac metus vitae velit egestas lacinia. Sed congue, elit sed', 'neque sed sem egestas blandit. Nam nulla magna, malesuada vel,', 'ac nulla. In tincidunt congue turpis. In condimentum. Donec at', 'A', 98),
('111', 8, 'porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat', 'abogado', 'sem egestas blandit. Nam nulla magna, malesuada vel, convallis in,', 'Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero.', 'augue ac ipsum. Phasellus vitae mauris sit amet lorem semper', 'turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla', 'D', 56),
('112', 0, 'volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin', 'periodista', 'mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare,', 'magna tellus faucibus leo, in lobortis tellus justo sit amet', 'semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim', 'posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse', 'D', 84),
('112', 1, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu.', 'abogado', 'tellus lorem eu metus. In lorem. Donec elementum, lorem ut', 'Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.', 'purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam', 'ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare,', 'D', 79),
('112', 4, 'velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet', 'periodista', 'venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', 'sed libero. Proin sed turpis nec mauris blandit mattis. Cras', 'pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi.', 'ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris', 'B', 21),
('112', 8, 'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus', 'abogado', 'Fusce aliquet magna a neque. Nullam ut nisi a odio', 'Donec vitae erat vel pede blandit congue. In scelerisque scelerisque', 'pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque', 'Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.', 'A', 34),
('112', 9, 'Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum.', 'abogado', 'Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet', 'eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus', 'In condimentum. Donec at arcu. Vestibulum ante ipsum primis in', 'sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra,', 'B', 50),
('113', 2, 'vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem', 'informatico', 'massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit', 'vitae diam. Proin dolor. Nulla semper tellus id nunc interdum', 'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus', 'elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu', 'B', 16),
('115', 9, 'eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie', 'periodista', 'id, blandit at, nisi. Cum sociis natoque penatibus et magnis', 'quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque', 'vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor', 'dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu', 'B', 16),
('117', 8, 'mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis', 'informatico', 'mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus', 'mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec', 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis', 'parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique', 'C', 100),
('121', 2, 'elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat', 'informatico', 'quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.', 'et netus et malesuada fames ac turpis egestas. Fusce aliquet', 'Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.', 'egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor', 'C', 87),
('122', 7, 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', 'abogado', 'Curabitur egestas nunc sed libero. Proin sed turpis nec mauris', 'Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper', 'Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.', 'ante dictum mi, ac mattis velit justo nec ante. Maecenas', 'B', 25),
('125', 8, 'faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla', 'periodista', 'Sed auctor odio a purus. Duis elementum, dui quis accumsan', 'fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque', 'nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem', 'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant', 'B', 95),
('126', 5, 'rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent', 'abogado', 'Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis', 'Proin mi. Aliquam gravida mauris ut mi. Duis risus odio,', 'eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer', 'nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod', 'C', 69),
('127', 2, 'Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu', 'abogado', 'Donec at arcu. Vestibulum ante ipsum primis in faucibus orci', 'eu erat semper rutrum. Fusce dolor quam, elementum at, egestas', 'venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', 'nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus.', 'C', 7),
('128', 3, 'tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede.', 'informatico', 'leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,', 'cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet', 'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac', 'porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo', 'A', 93),
('128', 8, 'sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl', 'periodista', 'at augue id ante dictum cursus. Nunc mauris elit, dictum', 'nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque', 'mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam', 'rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi', 'A', 58),
('131', 0, 'sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 'informatico', 'imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit,', 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut', 'leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,', 'aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam', 'C', 43),
('132', 0, 'egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam', 'informatico', 'aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae', 'Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor.', 'magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus', 'nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas', 'C', 31),
('133', 4, 'mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue', 'abogado', 'erat neque non quam. Pellentesque habitant morbi tristique senectus et', 'eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce', 'mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus', 'nunc sed libero. Proin sed turpis nec mauris blandit mattis.', 'A', 100),
('133', 6, 'sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor,', 'informatico', 'nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus', 'Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc', 'malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris', 'Ut tincidunt vehicula risus. Nulla eget metus eu erat semper', 'C', 15),
('134', 1, ' Donec tincidunt. Donec vitae erat vel pede blandit', 'informatico', 'eu augue porttitor interdum. Sed auctor odio a purus. Duis', 'luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget,', 'Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis', 'cubilia Curae', 'C', 49),
('135', 7, 'nunc ac mattis ornare, lectus ante dictum mi,', 'periodista', 'pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus', 'volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat', 'magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor', 'congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit', 'B', 62),
('135', 8, 'mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non', 'abogado', 'tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque', 'sagittis augue, eu tempor erat neque non quam. Pellentesque habitant', 'sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus', 'eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc', 'D', 59),
('135', 9, 'luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis', 'abogado', 'malesuada fames ac turpis egestas. Fusce aliquet magna a neque.', 'metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus', 'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra.', 'augue. Sed molestie. Sed id risus quis diam luctus lobortis.', 'B', 7),
('136', 4, 'hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed', 'informatico', 'lorem eu metus. In lorem. Donec elementum, lorem ut aliquam', 'nunc risus varius orci, in consequat enim diam vel arcu.', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam', 'D', 49),
('138', 5, 'vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio', 'periodista', 'feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare,', 'diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent', 'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu,', 'sagittis augue, eu tempor erat neque non quam. Pellentesque habitant', 'A', 46),
('139', 5, 'consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt', 'abogado', 'risus varius orci, in consequat enim diam vel arcu. Curabitur', 'erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse', 'Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non,', 'Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat.', 'C', 10),
('139', 9, 'sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non', 'periodista', 'at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas', 'Cras eu tellus eu augue porttitor interdum. Sed auctor odio', 'Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,', 'metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper', 'C', 65),
('140', 3, 'tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa', 'periodista', 'nunc sed libero. Proin sed turpis nec mauris blandit mattis.', 'lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor', 'orci, consectetuer euismod est arcu ac orci. Ut semper pretium', 'ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc', 'A', 13),
('142', 7, 'nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit,', 'abogado', 'tempor, est ac mattis semper, dui lectus rutrum urna, nec', 'nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse', 'vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros', 'urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat', 'A', 37),
('143', 8, 'eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a', 'abogado', 'Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla', 'orci. Ut semper pretium neque. Morbi quis urna. Nunc quis', 'In at pede. Cras vulputate velit eu sem. Pellentesque ut', 'diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est', 'A', 11),
('144', 2, 'at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat', 'periodista', 'mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a,', 'interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt', 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed', 'ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis', 'D', 98),
('144', 8, 'ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet', 'periodista', 'neque. Morbi quis urna. Nunc quis arcu vel quam dignissim', 'neque sed dictum eleifend, nunc risus varius orci, in consequat', 'feugiat metus sit amet ante. Vivamus non lorem vitae odio', 'diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec,', 'B', 89),
('145', 0, 'blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit', 'abogado', 'semper erat, in consectetuer ipsum nunc id enim. Curabitur massa.', 'scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit', 'sagittis augue, eu tempor erat neque non quam. Pellentesque habitant', 'diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae,', 'C', 26),
('145', 5, 'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus.', 'informatico', 'feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare,', 'vulputate, nisi sem semper erat, in consectetuer ipsum nunc id', 'vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque', 'ultrices a, auctor non, feugiat nec, diam. Duis mi enim,', 'A', 41),
('145', 9, 'magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales', 'abogado', 'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis', 'et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.', 'auctor non, feugiat nec, diam. Duis mi enim, condimentum eget,', 'lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in', 'C', 15),
('146', 9, 'elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non', 'periodista', 'ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque.', 'amet nulla. Donec non justo. Proin non massa non ante', 'luctus et ultrices posuere cubilia Curae', ' Donec tincidunt. Donec vitae', 'A', 43),
('147', 0, 'quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non', 'abogado', 'placerat, augue. Sed molestie. Sed id risus quis diam luctus', 'Nam nulla magna, malesuada vel, convallis in, cursus et, eros.', 'vulputate eu, odio. Phasellus at augue id ante dictum cursus.', 'blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae', 'D', 57),
('147', 6, 'sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,', 'abogado', 'vitae diam. Proin dolor. Nulla semper tellus id nunc interdum', 'Sed id risus quis diam luctus lobortis. Class aptent taciti', 'orci, consectetuer euismod est arcu ac orci. Ut semper pretium', 'laoreet, libero et tristique pellentesque, tellus sem mollis dui, in', 'B', 7),
('147', 8, 'egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat', 'informatico', 'fermentum risus, at fringilla purus mauris a nunc. In at', 'sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis', 'Donec vitae erat vel pede blandit congue. In scelerisque scelerisque', 'condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus', 'C', 13),
('149', 9, 'Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis', 'informatico', 'et nunc. Quisque ornare tortor at risus. Nunc ac sem', 'semper, dui lectus rutrum urna, nec luctus felis purus ac', 'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam', 'luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed', 'D', 13),
('150', 0, 'ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer', 'informatico', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'nulla magna, malesuada vel, convallis in, cursus et, eros. Proin', 'sed turpis nec mauris blandit mattis. Cras eget nisi dictum', 'Praesent eu dui. Cum sociis natoque penatibus et magnis dis', 'B', 96),
('151', 4, 'diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non', 'abogado', 'tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim', 'magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac', 'commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac,', 'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris', 'A', 20),
('151', 5, 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla.', 'periodista', 'sit amet, faucibus ut, nulla. Cras eu tellus eu augue', 'sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula', 'lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus.', 'Sed auctor odio a purus. Duis elementum, dui quis accumsan', 'A', 43),
('152', 1, 'penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'informatico', 'ac orci. Ut semper pretium neque. Morbi quis urna. Nunc', 'neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede', 'Proin sed turpis nec mauris blandit mattis. Cras eget nisi', 'lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras', 'C', 87),
('152', 6, 'et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis', 'periodista', 'lorem ipsum sodales purus, in molestie tortor nibh sit amet', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit', 'Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean', 'A', 22),
('154', 0, 'orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in', 'abogado', 'magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus.', 'inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In', 'pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu', 'auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus', 'B', 62),
('154', 1, 'est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum', 'abogado', 'Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit,', 'blandit. Nam nulla magna, malesuada vel, convallis in, cursus et,', 'est ac facilisis facilisis, magna tellus faucibus leo, in lobortis', 'amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.', 'B', 34),
('154', 5, 'est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.', 'abogado', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at', 'feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem', 'varius et, euismod et, commodo at, libero. Morbi accumsan laoreet', 'A', 29),
('156', 9, 'dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy', 'abogado', 'eu tempor erat neque non quam. Pellentesque habitant morbi tristique', 'sit amet diam eu dolor egestas rhoncus. Proin nisl sem,', 'non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum', 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi.', 'A', 20),
('157', 1, 'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce', 'periodista', 'quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus', 'nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in', 'mi tempor lorem, eget mollis lectus pede et risus. Quisque', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'C', 99),
('157', 8, 'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac', 'abogado', 'Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc', 'in faucibus orci luctus et ultrices posuere cubilia Curae', ' Phasellus', 'Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc', 'B', 46),
('158', 1, 'Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc', 'periodista', 'risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt,', 'magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec', 'sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor', 'tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque', 'D', 10),
('158', 2, 'mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris', 'abogado', 'tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat.', 'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,', 'imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at', 'Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula.', 'C', 17),
('158', 7, 'sit amet, faucibus', 'informatico', 'tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer', 'Aenean sed pede nec ante blandit viverra. Donec tempus, lorem', 'venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', 'tellus id nunc interdum feugiat. Sed nec metus facilisis lorem', 'C', 3),
('159', 7, 'nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat', 'abogado', 'nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas.', 'sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue', 'parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla', 'nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in', 'B', 68),
('159', 8, 'vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque', 'periodista', 'ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus', 'ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris', 'mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam', 'pretium neque. Morbi quis urna. Nunc quis arcu vel quam', 'B', 48),
('160', 5, 'amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec,', 'abogado', 'amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat', 'aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt,', 'odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat', 'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices', 'C', 5),
('160', 7, 'interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.', 'periodista', 'sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo', 'elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu', 'at fringilla purus mauris a nunc. In at pede. Cras', 'ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis', 'C', 72),
('161', 9, 'id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor', 'abogado', 'magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec', 'Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est.', 'velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque', 'cursus, diam at pretium aliquet, metus urna convallis erat, eget', 'A', 9),
('163', 6, 'varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id', 'abogado', 'Donec porttitor tellus non magna. Nam ligula elit, pretium et,', 'placerat, augue. Sed molestie. Sed id risus quis diam luctus', 'magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna.', 'blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae', 'D', 91),
('165', 2, 'vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit.', 'periodista', 'varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem', 'molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est,', 'est, mollis non, cursus non, egestas a, dui. Cras pellentesque.', 'tellus id nunc interdum feugiat. Sed nec metus facilisis lorem', 'D', 35),
('165', 6, 'eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum.', 'abogado', 'imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 'ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,', 'quis accumsan convallis, ante lectus convallis est, vitae sodales nisi', 'id, blandit at, nisi. Cum sociis natoque penatibus et magnis', 'D', 61),
('166', 8, 'iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget', 'abogado', 'molestie in, tempus eu, ligula. Aenean euismod mauris eu elit.', 'aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis', 'fermentum risus, at fringilla purus mauris a nunc. In at', 'nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor', 'D', 54),
('167', 4, 'vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc', 'abogado', 'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut', 'odio. Phasellus at augue id ante dictum cursus. Nunc mauris', 'odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque', 'Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus,', 'A', 72),
('167', 8, ' Donec tincidunt. Donec vitae erat vel pede', 'abogado', 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis.', 'netus et malesuada fames ac turpis egestas. Fusce aliquet magna', 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus', 'posuere cubilia Curae', 'B', 19),
('167', 9, 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae,', 'periodista', 'massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede', 'nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.', 'enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.', 'sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique', 'C', 12);
INSERT INTO `Preguntas` (`id_pregunta`, `nivel`, `texto`, `rol`, `A`, `B`, `C`, `D`, `correcta`, `id`) VALUES
('168', 1, 'tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper', 'periodista', 'ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor', 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', 'lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis', 'consequat, lectus sit amet luctus vulputate, nisi sem semper erat,', 'D', 97),
('168', 2, 'ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse', 'abogado', 'placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl.', 'netus et malesuada fames ac turpis egestas. Fusce aliquet magna', 'nisi sem semper erat, in consectetuer ipsum nunc id enim.', 'tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac', 'D', 26),
('168', 9, 'et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus', 'abogado', 'scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed', 'vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi', 'orci lacus vestibulum lorem, sit amet ultricies sem magna nec', 'ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida', 'C', 71),
('169', 0, 'Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna.', 'informatico', 'Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', 'odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.', 'fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat', 'est ac facilisis facilisis, magna tellus faucibus leo, in lobortis', 'D', 86),
('171', 1, 'felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel', 'abogado', 'est tempor bibendum. Donec felis orci, adipiscing non, luctus sit', 'Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna.', 'dui lectus rutrum urna, nec luctus felis purus ac tellus.', 'libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet', 'A', 28),
('172', 4, 'quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede', 'periodista', 'nunc nulla vulputate dui, nec tempus mauris erat eget ipsum.', 'risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt,', 'ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam', 'Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed', 'D', 17),
('174', 7, 'elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies', 'informatico', 'magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim', 'varius orci, in consequat enim diam vel arcu. Curabitur ut', 'non enim. Mauris quis turpis vitae purus gravida sagittis. Duis', 'eget varius ultrices, mauris ipsum porta elit, a feugiat tellus', 'C', 31),
('175', 2, 'in, hendrerit', 'abogado', 'Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum', 'volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat', 'nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit', 'non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum', 'D', 9),
('177', 7, '', 'abogado', 'est ac facilisis facilisis, magna tellus faucibus leo, in lobortis', 'turpis non enim. Mauris quis turpis vitae purus gravida sagittis.', 'vel, vulputate eu, odio. Phasellus at augue id ante dictum', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae', 'C', 97),
('180', 6, 'velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis,', 'periodista', 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.', 'a, aliquet vel, vulputate eu, odio. Phasellus at augue id', 'risus. Duis a mi fringilla mi lacinia mattis. Integer eu', 'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer', 'A', 89),
('181', 8, 'Phasellus', 'abogado', 'tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris.', 'Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi', 'ut nisi a odio semper cursus. Integer mollis. Integer tincidunt', 'magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices.', 'A', 42),
('183', 4, 'Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit', 'abogado', 'vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante.', 'pede. Praesent eu dui. Cum sociis natoque penatibus et magnis', 'Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu', 'Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus', 'B', 52),
('183', 6, 'sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit', 'informatico', 'a neque. Nullam ut nisi a odio semper cursus. Integer', 'nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor', 'odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a,', 'Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra.', 'C', 41),
('185', 2, 'a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta', 'periodista', 'a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis', 'pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus', 'netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus', 'Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi', 'D', 55),
('189', 4, 'vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus.', 'informatico', 'vitae erat vel pede blandit congue. In scelerisque scelerisque dui.', 'sit amet, faucibus ut, nulla. Cras eu tellus eu augue', 'libero lacus, varius et, euismod et, commodo at, libero. Morbi', 'dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam', 'B', 74),
('190', 5, 'ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim', 'abogado', 'pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna.', 'pretium neque. Morbi quis urna. Nunc quis arcu vel quam', 'Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,', 'arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor', 'D', 41),
('195', 9, 'neque tellus, imperdiet', 'informatico', 'non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh.', 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec', 'sit amet diam eu dolor egestas rhoncus. Proin nisl sem,', 'elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec', 'D', 57),
('196', 7, 'pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 'informatico', 'iaculis enim, sit amet ornare lectus justo eu arcu. Morbi', 'quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus', 'sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id', 'Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat', 'D', 79),
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
-- Indices de la tabla `Imagen_articulo`
--
ALTER TABLE `Imagen_articulo`
  ADD PRIMARY KEY (`id`,`path`);

--
-- Indices de la tabla `Imagen_modificacion_articulo`
--
ALTER TABLE `Imagen_modificacion_articulo`
  ADD PRIMARY KEY (`id_mod`,`path`);

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
  ADD PRIMARY KEY (`id_mod`,`texto`);

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
-- AUTO_INCREMENT de la tabla `Modificacion_articulo`
--
ALTER TABLE `Modificacion_articulo`
  MODIFY `id_mod` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Modificaciones`
--
ALTER TABLE `Modificaciones`
  ADD CONSTRAINT `Modificaciones_fk0` FOREIGN KEY (`nick`) REFERENCES `Usuarios` (`nick`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

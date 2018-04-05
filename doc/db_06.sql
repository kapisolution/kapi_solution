-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-04-2018 a las 17:53:36
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
('', '101', 0, '', 'A', 'B', 'C', 'D', 'A', 0),
('informatico', '102', 2, 'undefined', 'A', 'B', 'C', 'D', 'A', 513),
('', '103', 0, '', 'A', 'B', 'C', 'D', 'A', 0),
('informatico', '104', 2, 'undefined', 'A', 'B', 'C', 'D', 'A', 513),
('', '105', 0, '', 'A', 'B', 'C', 'D', 'A', 0),
('informatico', '106', 2, 'asdad', 'A', 'B', 'C', 'D', 'A', 513),
('informatico', '106', 2, 'asdasd', 'A', 'B', 'C', 'D', 'A', 513),
('informatico', '106', 2, 'dasda', 'A', 'B', 'C', 'D', 'A', 513),
('', '107', 0, '', '', '', '', '', '', 0),
('informatico', '108', 6, 'adsad', 'asdadsa', 'adsads', 'asdad', 'asdasd', 'A', 770),
('informatico', '108', 6, 'dasasda', 'asdads', 'adsadsa', 'dasdsa', 'asda', 'B', 770),
('informatico', '108', 6, 'ssdadassd', 'sfdsfdsf', 'asdadsa', 'adsdsa', 'dasdada', 'D', 770),
('', '109', 0, '', '', '', '', '', '', 0),
('periodista', '110', 3, 'dasa', 'das', 'da', 'das', 'dsa', 'D', 265),
('periodista', '110', 3, 'dsa', 'das', 'dsa', 'das', 'das', 'D', 265),
('periodista', '110', 3, 'dsadsad', 'dsada', 'dsadsa', 'dasda', 'dadsdssd', 'D', 265),
('abogado', '13', 1, 'Pregunta prueba 2', 'A', 'B', 'C', 'D', 'A', 827),
('abogado', '14', 1, 'undefined', 'A', 'B', 'C', 'D', 'A', 888),
('abogado', '15', 1, 'Pregunta prueba 2', 'A', 'B', 'C', 'D', 'A', 827),
('abogado', '16', 1, '', 'A', 'B', 'C', 'D', 'A', 827),
('abogado', '16', 1, 'Pregunta de prueba 3', 'A', 'B', 'C', 'D', 'A', 827),
('abogado', '16', 1, 'Pregunta prueba 2', 'A', 'B', 'C', 'D', 'A', 827);

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

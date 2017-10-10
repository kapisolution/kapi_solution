CREATE TABLE `Usuarios` (
	`nick` varchar(20) NOT NULL,
	`Nombre` varchar(30) NOT NULL,
	`Apellidos` varchar(60) NOT NULL,
	`rol` varchar(20) NOT NULL,
	`nivel` INT NOT NULL,
	PRIMARY KEY (`nick`)
);

CREATE TABLE `Insignias` (
	`nivel` int NOT NULL,
	`Descripción` TEXT(100) NOT NULL,
	`rol` varchar(20) NOT NULL,
	PRIMARY KEY (`nivel`,`rol`)
);

CREATE TABLE `Modificaciones` (
	`id_modificacion` varchar NOT NULL,
	`votos_positivos` int NOT NULL DEFAULT '0',
	`votos_negativos` int NOT NULL DEFAULT '0',
	`id_user` varchar(20) NOT NULL,
	PRIMARY KEY (`id_modificacion`)
);

CREATE TABLE `Exámenes` (
	`id_ex` INT NOT NULL AUTO_INCREMENT,
	`nivel` INT NOT NULL,
	`rol` varchar(20) NOT NULL,
	PRIMARY KEY (`id_ex`,`nivel`)
);

CREATE TABLE `Realiza_Examen` (
	`nick_usr` varchar(20) NOT NULL,
	`id_examen` DATE NOT NULL AUTO_INCREMENT,
	`nota` int NOT NULL DEFAULT '0',
	PRIMARY KEY (`nick_usr`,`id_examen`)
);

CREATE TABLE `Preguntas` (
	`id_pregunta` varchar NOT NULL,
	`nivel` INT NOT NULL,
	`texto` TEXT(200) NOT NULL,
	`rol` varchar(20) NOT NULL,
	`A` TEXT NOT NULL,
	`B` TEXT NOT NULL,
	`C` TEXT NOT NULL,
	`D` TEXT NOT NULL,
	`Correcta` TEXT NOT NULL,
	PRIMARY KEY (`id_pregunta`,`nivel`)
);

CREATE TABLE `Preguntas_Examen` (
	`id_exam` INT NOT NULL,
	`pregunta_id` varchar NOT NULL,
	PRIMARY KEY (`id_exam`,`pregunta_id`)
);

CREATE TABLE `Artículos` (
	`Nivel_articulo` int NOT NULL,
	`id_articulo` FLOAT NOT NULL AUTO_INCREMENT,
	`Nombre_articulo` varchar(30) NOT NULL,
	`rol_articulo` varchar(20) NOT NULL,
	PRIMARY KEY (`Nivel_articulo`,`id_articulo`,`rol_articulo`)
);

CREATE TABLE `Insignias_Usuario` (
	`usr_nickname` varchar(20) NOT NULL,
	`nivel_insignia` INT NOT NULL,
	`rol_insignia` varchar(20) NOT NULL,
	PRIMARY KEY (`usr_nickname`,`nivel_insignia`,`rol_insignia`)
);

CREATE TABLE `Modificacion_pregunta` (
	`rol` varchar(20) NOT NULL,
	`id_mod` varchar NOT NULL,
	`nivel` INT NOT NULL,
	`texto` TEXT(200) NOT NULL,
	`A` TEXT NOT NULL,
	`B` TEXT NOT NULL,
	`C` TEXT NOT NULL,
	`D` TEXT NOT NULL,
	`Correcta` TEXT NOT NULL,
	PRIMARY KEY (`id_mod`)
);

CREATE TABLE `Modificacion_sugerencia` (
	`id_mod` varchar NOT NULL,
	`texto` TEXT NOT NULL,
	PRIMARY KEY (`id_mod`)
);

CREATE TABLE `Modificacion_contenido` (
	`id_mod` varchar NOT NULL,
	`rol` varchar(20) NOT NULL,
	`nivel` INT(20) NOT NULL,
	PRIMARY KEY (`id_mod`)
);

ALTER TABLE `Modificaciones` ADD CONSTRAINT `Modificaciones_fk0` FOREIGN KEY (`id_user`) REFERENCES `Usuarios`(`nick`);

ALTER TABLE `Realiza_Examen` ADD CONSTRAINT `Realiza_Examen_fk0` FOREIGN KEY (`nick_usr`) REFERENCES `Usuarios`(`nick`);

ALTER TABLE `Realiza_Examen` ADD CONSTRAINT `Realiza_Examen_fk1` FOREIGN KEY (`id_examen`) REFERENCES `Exámenes`(`id_ex`);

ALTER TABLE `Preguntas_Examen` ADD CONSTRAINT `Preguntas_Examen_fk0` FOREIGN KEY (`id_exam`) REFERENCES `Exámenes`(`id_ex`);

ALTER TABLE `Preguntas_Examen` ADD CONSTRAINT `Preguntas_Examen_fk1` FOREIGN KEY (`pregunta_id`) REFERENCES `Preguntas`(`id_pregunta`);

ALTER TABLE `Insignias_Usuario` ADD CONSTRAINT `Insignias_Usuario_fk0` FOREIGN KEY (`usr_nickname`) REFERENCES `Usuarios`(`nick`);

ALTER TABLE `Insignias_Usuario` ADD CONSTRAINT `Insignias_Usuario_fk1` FOREIGN KEY (`nivel_insignia`) REFERENCES `Insignias`(`nivel`);

ALTER TABLE `Insignias_Usuario` ADD CONSTRAINT `Insignias_Usuario_fk2` FOREIGN KEY (`rol_insignia`) REFERENCES `Insignias`(`rol`);

ALTER TABLE `Modificacion_pregunta` ADD CONSTRAINT `Modificacion_pregunta_fk0` FOREIGN KEY (`id_mod`) REFERENCES `Modificaciones`(`id_modificacion`);

ALTER TABLE `Modificacion_sugerencia` ADD CONSTRAINT `Modificacion_sugerencia_fk0` FOREIGN KEY (`id_mod`) REFERENCES `Modificaciones`(`id_modificacion`);

ALTER TABLE `Modificacion_contenido` ADD CONSTRAINT `Modificacion_contenido_fk0` FOREIGN KEY (`id_mod`) REFERENCES `Modificaciones`(`id_modificacion`);


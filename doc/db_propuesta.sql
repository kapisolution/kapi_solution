CREATE TABLE `Usuarios` (
	`nick` VARCHAR(20) NOT NULL AUTO_INCREMENT,
	`Nombre` VARCHAR(30) NOT NULL AUTO_INCREMENT,
	`Apellidos` VARCHAR(60) NOT NULL AUTO_INCREMENT,
	`rol` VARCHAR(20) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`nick`)
);

CREATE TABLE `Insignias` (
	`nivel` INT NOT NULL AUTO_INCREMENT,
	`Descripción` TEXT(100) NOT NULL AUTO_INCREMENT,
	`Foto` BINARY(100) NOT NULL AUTO_INCREMENT,
	`user` VARCHAR(20) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`nivel`)
);

CREATE TABLE `Modificaciones` (
	`id_modificacion` INT NOT NULL AUTO_INCREMENT,
	`votos_positivos` INT NOT NULL AUTO_INCREMENT DEFAULT '0',
	`votos_negativos` INT NOT NULL AUTO_INCREMENT DEFAULT '0',
	`id_user` VARCHAR(20) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id_modificacion`)
);

CREATE TABLE `Exámenes` (
	`Fecha_inicio` DATE NOT NULL AUTO_INCREMENT,
	`Fecha_fin` DATE NOT NULL AUTO_INCREMENT,
	`nivel` INT NOT NULL,
	PRIMARY KEY (`Fecha_inicio`,`Fecha_fin`)
);

CREATE TABLE `Realiza_Examen` (
	`nick_usr` VARCHAR(20) NOT NULL AUTO_INCREMENT,
	`Ex_inicio` DATE NOT NULL AUTO_INCREMENT,
	`Ex_fin` DATE NOT NULL AUTO_INCREMENT,
	`nota` INT NOT NULL DEFAULT '0',
	PRIMARY KEY (`nick_usr`,`Ex_inicio`,`Ex_fin`)
);

CREATE TABLE `Preguntas` (
	`id_modificación` varchar NOT NULL AUTO_INCREMENT,
	`nivel` INT NOT NULL,
	`texto` TEXT(200) NOT NULL,
	`puntuación` INT NOT NULL,
	PRIMARY KEY (`id_modificación`)
);

CREATE TABLE `Preguntas_Examen` (
	`Examen_ini` DATE NOT NULL AUTO_INCREMENT,
	`Examen_fin` DATE NOT NULL AUTO_INCREMENT,
	`pregunta_id` varchar NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Examen_ini`,`Examen_fin`,`pregunta_id`)
);

CREATE TABLE `Artículos` (
	`Nivel_articulo` INT NOT NULL AUTO_INCREMENT,
	`id_articulo` INT NOT NULL AUTO_INCREMENT,
	`Nombre_capitulo` VARCHAR(30) NOT NULL,
	PRIMARY KEY (`Nivel_articulo`,`id_articulo`)
);

ALTER TABLE `Insignias` ADD CONSTRAINT `Insignias_fk0` FOREIGN KEY (`user`) REFERENCES `Usuarios`(`nick`);

ALTER TABLE `Modificaciones` ADD CONSTRAINT `Modificaciones_fk0` FOREIGN KEY (`id_user`) REFERENCES `Usuarios`(`nick`);

ALTER TABLE `Realiza_Examen` ADD CONSTRAINT `Realiza_Examen_fk0` FOREIGN KEY (`nick_usr`) REFERENCES `Usuarios`(`nick`);

ALTER TABLE `Realiza_Examen` ADD CONSTRAINT `Realiza_Examen_fk1` FOREIGN KEY (`Ex_inicio`) REFERENCES `Exámenes`(`Fecha_inicio`);

ALTER TABLE `Realiza_Examen` ADD CONSTRAINT `Realiza_Examen_fk2` FOREIGN KEY (`Ex_fin`) REFERENCES `Exámenes`(`Fecha_fin`);

ALTER TABLE `Preguntas_Examen` ADD CONSTRAINT `Preguntas_Examen_fk0` FOREIGN KEY (`Examen_ini`) REFERENCES `Exámenes`(`Fecha_inicio`);

ALTER TABLE `Preguntas_Examen` ADD CONSTRAINT `Preguntas_Examen_fk1` FOREIGN KEY (`Examen_fin`) REFERENCES `Exámenes`(`Fecha_fin`);

ALTER TABLE `Preguntas_Examen` ADD CONSTRAINT `Preguntas_Examen_fk2` FOREIGN KEY (`pregunta_id`) REFERENCES `Preguntas`(`id_modificación`);


/*
Navicat MySQL Data Transfer

Source Server         : LocalHost
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : renacer

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-10-31 03:43:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for asistencia
-- ----------------------------
DROP TABLE IF EXISTS `asistencia`;
CREATE TABLE `asistencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSocio` int(11) NOT NULL,
  `idEncargado` int(11) NOT NULL,
  `idDetalleEvento` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fechaAsistencia` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `IX_idEncargado` (`idEncargado` DESC) USING BTREE,
  KEY `IX_idDetalleEvento` (`idDetalleEvento` DESC) USING BTREE,
  KEY `FK_Asistencia_DetalleEvento_idDetalleEvento` (`idDetalleEvento`),
  KEY `FK_Asistencia_Encargado_idEncargado` (`idEncargado`),
  KEY `FK_Asistencia_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_Asistencia_DetalleEvento_idDetalleEvento` FOREIGN KEY (`idDetalleEvento`) REFERENCES `detalleevento` (`id`),
  CONSTRAINT `FK_Asistencia_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_Asistencia_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of asistencia
-- ----------------------------
INSERT INTO `asistencia` VALUES ('1', '1', '1', '1', '0', '2019-10-18 02:48:12');
INSERT INTO `asistencia` VALUES ('2', '2', '1', '1', '0', '2019-10-18 02:48:12');
INSERT INTO `asistencia` VALUES ('3', '10', '1', '1', '0', '2019-10-18 02:48:12');
INSERT INTO `asistencia` VALUES ('4', '1', '1', '2', '0', '2019-10-18 02:48:17');
INSERT INTO `asistencia` VALUES ('5', '3', '1', '2', '0', '2019-10-18 02:48:17');
INSERT INTO `asistencia` VALUES ('6', '10', '1', '2', '0', '2019-10-18 02:48:17');
INSERT INTO `asistencia` VALUES ('7', '4', '1', '9', '0', '2019-10-27 14:18:30');
INSERT INTO `asistencia` VALUES ('8', '1', '1', '9', '0', '2019-10-27 14:18:30');
INSERT INTO `asistencia` VALUES ('9', '11', '1', '9', '0', '2019-10-27 14:18:30');
INSERT INTO `asistencia` VALUES ('10', '4', '1', '10', '0', '2019-10-27 14:18:35');
INSERT INTO `asistencia` VALUES ('11', '1', '1', '10', '0', '2019-10-27 14:18:35');
INSERT INTO `asistencia` VALUES ('12', '11', '1', '10', '0', '2019-10-27 14:18:35');
INSERT INTO `asistencia` VALUES ('13', '3', '1', '3', '0', '2019-10-27 20:47:04');
INSERT INTO `asistencia` VALUES ('14', '1', '1', '3', '0', '2019-10-27 20:47:04');
INSERT INTO `asistencia` VALUES ('15', '10', '1', '3', '0', '2019-10-27 20:47:04');
INSERT INTO `asistencia` VALUES ('16', '2', '1', '3', '0', '2019-10-27 20:47:04');
INSERT INTO `asistencia` VALUES ('17', '3', '1', '4', '0', '2019-10-27 20:47:16');
INSERT INTO `asistencia` VALUES ('18', '1', '1', '4', '0', '2019-10-27 20:47:16');
INSERT INTO `asistencia` VALUES ('19', '10', '1', '4', '0', '2019-10-27 20:47:16');

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `tipoDoc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_tipoDoc_id` (`tipoDoc_id` DESC) USING BTREE,
  KEY `FK_Cliente_TipoDocumento_tipoDoc_id` (`tipoDoc_id`),
  CONSTRAINT `FK_Cliente_TipoDocumento_tipoDoc_id` FOREIGN KEY (`tipoDoc_id`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cliente
-- ----------------------------

-- ----------------------------
-- Table structure for contacto
-- ----------------------------
DROP TABLE IF EXISTS `contacto`;
CREATE TABLE `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `relacion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of contacto
-- ----------------------------
INSERT INTO `contacto` VALUES ('1', 'juan', 'jose', '3432324324', '242143134', 'juan@juan.com', 'Hermano/a');
INSERT INTO `contacto` VALUES ('2', 'Javier', 'Jimenez', '3543604130', '', '', 'Hijo/a');
INSERT INTO `contacto` VALUES ('3', 'Agua Sacha', 'JIMENEZ', '03543604130', '', '', 'Madre');
INSERT INTO `contacto` VALUES ('4', 'Agua Sacha', 'JIMENEZ', '03543604130', '', '', 'Madre');

-- ----------------------------
-- Table structure for cuotas
-- ----------------------------
DROP TABLE IF EXISTS `cuotas`;
CREATE TABLE `cuotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `monto` decimal(18,2) NOT NULL,
  `Evento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Evento_id` (`Evento_id` DESC) USING BTREE,
  KEY `FK_Cuotas_Evento_Evento_id` (`Evento_id`),
  CONSTRAINT `FK_Cuotas_Evento_Evento_id` FOREIGN KEY (`Evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cuotas
-- ----------------------------
INSERT INTO `cuotas` VALUES ('2', 'Cuota 1', '400.00', '1');
INSERT INTO `cuotas` VALUES ('3', 'Cuota 2', '400.00', '1');
INSERT INTO `cuotas` VALUES ('4', 'Cuota 3', '400.00', '1');
INSERT INTO `cuotas` VALUES ('5', 'Cuota 1', '325.00', '2');
INSERT INTO `cuotas` VALUES ('6', 'Cuota 2', '325.00', '2');
INSERT INTO `cuotas` VALUES ('7', 'Cuota 3', '325.00', '2');
INSERT INTO `cuotas` VALUES ('8', 'Cuota 4', '325.00', '2');
INSERT INTO `cuotas` VALUES ('9', 'Cuota 1', '600.00', '3');
INSERT INTO `cuotas` VALUES ('10', 'Cuota 2', '600.00', '3');
INSERT INTO `cuotas` VALUES ('11', 'Cuota 3', '600.00', '3');
INSERT INTO `cuotas` VALUES ('12', 'Cuota 1', '500.00', '5');
INSERT INTO `cuotas` VALUES ('13', 'Cuota 2', '500.00', '5');
INSERT INTO `cuotas` VALUES ('14', 'Cuota 3', '500.00', '5');
INSERT INTO `cuotas` VALUES ('15', 'Cuota 1', '1000.00', '6');
INSERT INTO `cuotas` VALUES ('16', 'Cuota 2', '1000.00', '6');
INSERT INTO `cuotas` VALUES ('17', 'Cuota 1', '500.00', '8');
INSERT INTO `cuotas` VALUES ('18', 'Cuota 2', '500.00', '8');
INSERT INTO `cuotas` VALUES ('19', 'Cuota 3', '500.00', '8');

-- ----------------------------
-- Table structure for detalleevento
-- ----------------------------
DROP TABLE IF EXISTS `detalleevento`;
CREATE TABLE `detalleevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  `idEncargado` int(11) NOT NULL,
  `idEvento` int(11) NOT NULL,
  `idEspacio` int(11) NOT NULL,
  `fechaDesde` datetime NOT NULL,
  `fechaHasta` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  `dia` longtext,
  `asistencia` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEncargado` (`idEncargado` DESC) USING BTREE,
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idEspacio` (`idEspacio` DESC) USING BTREE,
  KEY `FK_DetalleEvento_EspacioComun_idEspacio` (`idEspacio`),
  KEY `FK_DetalleEvento_Evento_idEvento` (`idEvento`),
  KEY `FK_DetalleEvento_Encargado_idEncargado` (`idEncargado`),
  CONSTRAINT `FK_DetalleEvento_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_DetalleEvento_EspacioComun_idEspacio` FOREIGN KEY (`idEspacio`) REFERENCES `espaciocomun` (`id`),
  CONSTRAINT `FK_DetalleEvento_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of detalleevento
-- ----------------------------
INSERT INTO `detalleevento` VALUES ('1', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-14 10:00:00', '2019-10-14 12:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('2', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-16 12:00:00', '2019-10-16 14:00:00', null, 'Nuevo', 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('3', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-21 10:00:00', '2019-10-21 12:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('4', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-23 12:00:00', '2019-10-23 14:00:00', null, 'Nuevo', 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('5', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-28 10:00:00', '2019-10-28 12:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('6', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-30 12:00:00', '2019-10-30 14:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('7', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-11-04 10:00:00', '2019-11-04 12:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('8', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-11-06 12:00:00', '2019-11-06 14:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('9', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '1', '2', '1', '2019-10-17 14:00:00', '2019-10-17 16:00:00', null, 'Nuevo', 'Jueves', '1');
INSERT INTO `detalleevento` VALUES ('10', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '1', '2', '1', '2019-10-21 14:00:00', '2019-10-21 16:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('11', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '1', '2', '1', '2019-10-24 14:00:00', '2019-10-24 16:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('12', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '1', '2', '1', '2019-10-28 14:00:00', '2019-10-28 16:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('13', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-10-22 16:00:00', '2019-10-22 18:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('14', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-10-25 16:00:00', '2019-10-25 18:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('15', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-10-29 16:00:00', '2019-10-29 18:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('16', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-01 16:00:00', '2019-11-01 18:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('17', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-05 16:00:00', '2019-11-05 18:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('18', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-08 16:00:00', '2019-11-08 18:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('19', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-12 16:00:00', '2019-11-12 18:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('20', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-15 16:00:00', '2019-11-15 18:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('21', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-19 16:00:00', '2019-11-19 18:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('22', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-22 16:00:00', '2019-11-22 18:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('23', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-26 16:00:00', '2019-11-26 18:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('24', 'Campaña Vacunación ', 'Campaña para vacunar a menores de edad', '3', '4', '1', '2019-10-21 20:00:00', '2019-10-21 22:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('25', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-01 19:00:00', '2019-11-01 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('26', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-04 19:00:00', '2019-11-04 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('27', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-08 19:00:00', '2019-11-08 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('28', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-11 19:00:00', '2019-11-11 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('29', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-15 19:00:00', '2019-11-15 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('30', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-18 19:00:00', '2019-11-18 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('31', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-22 19:00:00', '2019-11-22 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('32', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-25 19:00:00', '2019-11-25 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('33', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-29 19:00:00', '2019-11-29 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('34', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-02 19:00:00', '2019-12-02 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('35', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-06 19:00:00', '2019-12-06 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('36', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-09 19:00:00', '2019-12-09 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('37', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-13 19:00:00', '2019-12-13 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('38', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-16 19:00:00', '2019-12-16 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('39', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-06 15:00:00', '2019-11-06 17:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('40', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-12 14:00:00', '2019-11-12 16:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('41', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-13 15:00:00', '2019-11-13 17:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('42', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-19 14:00:00', '2019-11-19 16:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('43', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-20 15:00:00', '2019-11-20 17:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('44', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-26 14:00:00', '2019-11-26 16:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('45', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-27 15:00:00', '2019-11-27 17:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('46', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-12-03 14:00:00', '2019-12-03 16:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('47', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-12-04 15:00:00', '2019-12-04 17:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('48', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-12-10 14:00:00', '2019-12-10 16:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('49', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-12-11 15:00:00', '2019-12-11 17:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('50', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-12-17 14:00:00', '2019-12-17 16:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('51', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-12-18 15:00:00', '2019-12-18 17:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('52', 'Seminario Fertilidad', 'Se hablara sobre la fertilidad y se derribaran mitos.', '3', '7', '3', '2019-10-28 09:00:00', '2019-10-28 12:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('53', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-04 14:00:00', '2019-11-04 16:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('54', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-06 16:00:00', '2019-11-06 18:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('55', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-11 14:00:00', '2019-11-11 16:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('56', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-13 16:00:00', '2019-11-13 18:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('57', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-18 14:00:00', '2019-11-18 16:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('58', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-20 16:00:00', '2019-11-20 18:00:00', null, 'Nuevo', 'Miercoles', '0');

-- ----------------------------
-- Table structure for domicilio
-- ----------------------------
DROP TABLE IF EXISTS `domicilio`;
CREATE TABLE `domicilio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barrio` longtext,
  `calle` longtext,
  `piso` longtext,
  `nro` longtext,
  `codPostal` int(11) NOT NULL,
  `depto` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of domicilio
-- ----------------------------
INSERT INTO `domicilio` VALUES ('1', 'Alta Cordoba', 'Juan del campillo', '1', '50', '5000', 'A');
INSERT INTO `domicilio` VALUES ('2', 'Los Paraisos', 'bernis', 'akakka', '3567', '5008', '1111ssss');
INSERT INTO `domicilio` VALUES ('3', 'Alta Cordoba', 'Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- Córdoba, capital (domicilio de contacto)', '1', '8744', '5018', 'Cordoba');
INSERT INTO `domicilio` VALUES ('4', 'Alta Cordoba', 'Agua Sacha', '1', '500', '5000', 'A');
INSERT INTO `domicilio` VALUES ('5', 'Alta Cordoba', 'Agua Sacha', '1', '500', '5000', 'A');

-- ----------------------------
-- Table structure for encargado
-- ----------------------------
DROP TABLE IF EXISTS `encargado`;
CREATE TABLE `encargado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `idTipoDoc` int(11) NOT NULL,
  `nroDocumento` longtext,
  `idDomicilio` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio` DESC) USING BTREE,
  KEY `FK_Encargado_Domicilio_idDomicilio` (`idDomicilio`),
  KEY `FK_Encargado_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  CONSTRAINT `FK_Encargado_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Encargado_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of encargado
-- ----------------------------
INSERT INTO `encargado` VALUES ('1', 'Augusto', 'Galan', null, null, null, '2', '23423234', '1', '0001-01-01 00:00:00', null, null);
INSERT INTO `encargado` VALUES ('2', 'Javier', 'Pietro', null, null, null, '2', '43232323', '1', '0001-01-01 00:00:00', null, null);
INSERT INTO `encargado` VALUES ('3', 'Emanuel Alejo', 'Lopez', 'skskkskskssksk', 'jsjsjsjjsjssj', 'emanuel@gmail', '1', '28907654', '2', '2019-08-17 20:25:33', null, '2019-08-17 20:29:33');

-- ----------------------------
-- Table structure for encargadotags
-- ----------------------------
DROP TABLE IF EXISTS `encargadotags`;
CREATE TABLE `encargadotags` (
  `Encargado_id` int(11) NOT NULL,
  `Tag_id` int(11) NOT NULL,
  PRIMARY KEY (`Encargado_id`,`Tag_id`),
  KEY `IX_Encargado_id` (`Encargado_id` DESC) USING BTREE,
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `FK_EncargadoTags_Tags_Tag_id` (`Tag_id`),
  CONSTRAINT `FK_EncargadoTags_Encargado_Encargado_id` FOREIGN KEY (`Encargado_id`) REFERENCES `encargado` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EncargadoTags_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of encargadotags
-- ----------------------------

-- ----------------------------
-- Table structure for espaciocomun
-- ----------------------------
DROP TABLE IF EXISTS `espaciocomun`;
CREATE TABLE `espaciocomun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  `capacidad` int(11) NOT NULL,
  `idTipoEspacio` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoEspacio` (`idTipoEspacio` DESC) USING BTREE,
  KEY `FK_EspacioComun_TipoEspacio_idTipoEspacio` (`idTipoEspacio`),
  CONSTRAINT `FK_EspacioComun_TipoEspacio_idTipoEspacio` FOREIGN KEY (`idTipoEspacio`) REFERENCES `tipoespacio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of espaciocomun
-- ----------------------------
INSERT INTO `espaciocomun` VALUES ('1', 'Aula 205', 'Aula con buen espacio y equipamiento.', '20', '1', '0', '2019-10-06 15:41:24', null, null);
INSERT INTO `espaciocomun` VALUES ('2', 'Aula 207', 'Aula Mayormente equipada para las expresiones artísticas', '15', '1', '0', '2019-10-18 02:22:32', null, null);
INSERT INTO `espaciocomun` VALUES ('3', 'SUM', 'Espacio al aire libre', '200', '4', '0', '2019-10-18 02:23:09', null, null);

-- ----------------------------
-- Table structure for evento
-- ----------------------------
DROP TABLE IF EXISTS `evento`;
CREATE TABLE `evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  `idTipoEvento` int(11) NOT NULL,
  `idEspacio` int(11) NOT NULL,
  `idEncargado` int(11) NOT NULL,
  `cupoMinimo` int(11) NOT NULL,
  `cupoMaximo` int(11) NOT NULL,
  `gratuito` tinyint(1) NOT NULL,
  `monto` float NOT NULL,
  `cantidadCuota` int(11) NOT NULL,
  `fechaDesde` datetime NOT NULL,
  `fechaHasta` datetime NOT NULL,
  `fechaDesdeInscripcion` datetime NOT NULL,
  `fechaHastaInscripcion` datetime NOT NULL,
  `estado` longtext,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoEvento` (`idTipoEvento` DESC) USING BTREE,
  KEY `IX_idEspacio` (`idEspacio` DESC) USING BTREE,
  KEY `IX_idEncargado` (`idEncargado` DESC) USING BTREE,
  KEY `FK_Evento_EspacioComun_idEspacio` (`idEspacio`),
  KEY `FK_Evento_Encargado_idEncargado` (`idEncargado`),
  KEY `FK_Evento_TipoEvento_idTipoEvento` (`idTipoEvento`),
  CONSTRAINT `FK_Evento_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_Evento_EspacioComun_idEspacio` FOREIGN KEY (`idEspacio`) REFERENCES `espaciocomun` (`id`),
  CONSTRAINT `FK_Evento_TipoEvento_idTipoEvento` FOREIGN KEY (`idTipoEvento`) REFERENCES `tipoevento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of evento
-- ----------------------------
INSERT INTO `evento` VALUES ('1', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '2', '1', '1', '5', '20', '0', '1200', '3', '2019-10-11 00:00:00', '2019-11-07 00:00:00', '2019-10-06 00:00:00', '2019-10-10 00:00:00', 'Progreso', '2019-10-06 15:45:22', null);
INSERT INTO `evento` VALUES ('2', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '2', '1', '1', '5', '20', '0', '1300', '4', '2019-10-15 00:00:00', '2019-10-30 00:00:00', '2019-10-13 00:00:00', '2019-10-18 00:00:00', 'Finalizado', '2019-10-13 23:53:46', null);
INSERT INTO `evento` VALUES ('3', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '1', '1', '3', '5', '20', '0', '1800', '3', '2019-10-22 00:00:00', '2019-11-28 00:00:00', '2019-10-16 00:00:00', '2019-10-23 00:00:00', 'Progreso', '2019-10-16 23:48:49', null);
INSERT INTO `evento` VALUES ('4', 'Campaña Vacunación ', 'Campaña para vacunar a menores de edad', '4', '1', '3', '5', '20', '1', '0', '0', '2019-10-21 00:00:00', '2019-10-21 00:00:00', '2019-10-18 00:00:00', '2019-10-20 00:00:00', 'Finalizado', '2019-10-18 01:56:56', null);
INSERT INTO `evento` VALUES ('5', 'Baile de salsa', 'Aprender a bailar salsa.', '6', '2', '1', '5', '15', '0', '1500', '3', '2019-10-30 00:00:00', '2019-12-18 00:00:00', '2019-10-28 00:00:00', '2019-11-05 00:00:00', 'Progreso', '2019-10-27 16:26:33', null);
INSERT INTO `evento` VALUES ('6', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '2', '2', '1', '4', '14', '0', '2000', '2', '2019-11-06 00:00:00', '2019-12-23 00:00:00', '2019-10-27 00:00:00', '2019-11-05 00:00:00', 'Nuevo', '2019-10-27 16:35:47', null);
INSERT INTO `evento` VALUES ('7', 'Seminario Fertilidad', 'Se hablara sobre la fertilidad y se derribaran mitos.', '3', '3', '3', '5', '25', '1', '0', '0', '2019-10-28 00:00:00', '2019-10-28 00:00:00', '2019-10-27 00:00:00', '2019-10-28 00:00:00', 'Finalizado', '2019-10-27 18:01:03', null);
INSERT INTO `evento` VALUES ('8', 'Taller de prueba', 'Es un taller de prueba', '2', '2', '1', '5', '15', '0', '1500', '3', '2019-10-31 00:00:00', '2019-11-20 00:00:00', '2019-10-28 00:00:00', '2019-10-31 00:00:00', 'Progreso', '2019-10-28 19:32:47', null);

-- ----------------------------
-- Table structure for horarios
-- ----------------------------
DROP TABLE IF EXISTS `horarios`;
CREATE TABLE `horarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` longtext,
  `dayOfWeek` int(11) NOT NULL,
  `horaDesde` longtext,
  `horaHasta` longtext,
  `Evento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Evento_id` (`Evento_id` DESC) USING BTREE,
  KEY `FK_Horarios_Evento_Evento_id` (`Evento_id`),
  CONSTRAINT `FK_Horarios_Evento_Evento_id` FOREIGN KEY (`Evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of horarios
-- ----------------------------
INSERT INTO `horarios` VALUES ('1', 'Lunes', '1', '10:00', '12:00', '1');
INSERT INTO `horarios` VALUES ('2', 'Miercoles', '3', '12:00', '14:00', '1');
INSERT INTO `horarios` VALUES ('3', 'Lunes', '1', '14:00', '16:00', '2');
INSERT INTO `horarios` VALUES ('4', 'Jueves', '4', '14:00', '16:00', '2');
INSERT INTO `horarios` VALUES ('5', 'Viernes', '5', '16:00', '18:00', '3');
INSERT INTO `horarios` VALUES ('6', 'Martes', '2', '16:00', '18:00', '3');
INSERT INTO `horarios` VALUES ('7', 'Lunes', '1', '20:00', '22:00', '4');
INSERT INTO `horarios` VALUES ('8', 'Lunes', '1', '19:00', '21:00', '5');
INSERT INTO `horarios` VALUES ('9', 'Viernes', '5', '19:00', '20:00', '5');
INSERT INTO `horarios` VALUES ('10', 'Martes', '2', '14:00', '16:00', '6');
INSERT INTO `horarios` VALUES ('11', 'Miercoles', '3', '15:00', '17:00', '6');
INSERT INTO `horarios` VALUES ('12', 'Lunes', '1', '09:00', '12:00', '7');
INSERT INTO `horarios` VALUES ('13', 'Lunes', '1', '14:00', '16:00', '8');
INSERT INTO `horarios` VALUES ('14', 'Miercoles', '3', '16:00', '18:00', '8');

-- ----------------------------
-- Table structure for inscripcion
-- ----------------------------
DROP TABLE IF EXISTS `inscripcion`;
CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idEvento` int(11) NOT NULL,
  `idSocio` int(11) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  `estadoEncuesta` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `FK_Inscripcion_Evento_idEvento` (`idEvento`),
  KEY `FK_Inscripcion_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_Inscripcion_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`),
  CONSTRAINT `FK_Inscripcion_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of inscripcion
-- ----------------------------
INSERT INTO `inscripcion` VALUES ('5', '1', '1', '2019-10-06 16:05:03', null, null, '0');
INSERT INTO `inscripcion` VALUES ('6', '1', '2', '2019-10-07 00:26:18', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('7', '1', '3', '2019-10-07 00:26:46', null, null, '0');
INSERT INTO `inscripcion` VALUES ('8', '1', '10', '2019-10-07 00:26:46', null, null, '0');
INSERT INTO `inscripcion` VALUES ('14', '2', '11', '2019-10-13 23:54:58', null, null, '0');
INSERT INTO `inscripcion` VALUES ('15', '2', '4', '2019-10-13 23:54:58', null, null, '0');
INSERT INTO `inscripcion` VALUES ('16', '2', '1', '2019-10-13 23:54:58', null, null, '0');
INSERT INTO `inscripcion` VALUES ('17', '4', '2', '2019-10-18 02:25:15', null, null, '1');
INSERT INTO `inscripcion` VALUES ('18', '3', '2', '2019-10-18 02:45:16', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('19', '7', '1', '2019-10-27 18:01:46', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('20', '7', '2', '2019-10-27 18:01:46', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('21', '7', '4', '2019-10-27 18:01:46', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('22', '7', '3', '2019-10-27 18:01:46', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('23', '5', '2', '2019-10-27 20:49:57', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('24', '5', '1', '2019-10-28 17:56:55', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('25', '8', '2', '2019-10-28 19:33:41', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('26', '8', '1', '2019-10-28 19:33:41', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('27', '8', '11', '2019-10-28 19:33:41', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('28', '5', '14', '2019-10-30 02:43:23', null, 'ADEUDADO', '0');

-- ----------------------------
-- Table structure for matricula
-- ----------------------------
DROP TABLE IF EXISTS `matricula`;
CREATE TABLE `matricula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio` datetime NOT NULL,
  `valor` int(11) NOT NULL,
  `fechaVencimiento` datetime NOT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of matricula
-- ----------------------------
INSERT INTO `matricula` VALUES ('3', '2019-08-08 04:27:48', '1200', '2019-10-31 00:00:00', 'Activa');

-- ----------------------------
-- Table structure for matriculaxsocios
-- ----------------------------
DROP TABLE IF EXISTS `matriculaxsocios`;
CREATE TABLE `matriculaxsocios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSocio` int(11) NOT NULL,
  `idMatricula` int(11) NOT NULL,
  `fechaPago` datetime NOT NULL,
  `pago` decimal(18,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `IX_idMatricula` (`idMatricula` DESC) USING BTREE,
  KEY `FK_MatriculaXSocios_Matricula_idMatricula` (`idMatricula`),
  KEY `FK_MatriculaXSocios_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_MatriculaXSocios_Matricula_idMatricula` FOREIGN KEY (`idMatricula`) REFERENCES `matricula` (`id`),
  CONSTRAINT `FK_MatriculaXSocios_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of matriculaxsocios
-- ----------------------------
INSERT INTO `matriculaxsocios` VALUES ('1', '2', '3', '2019-10-17 01:01:47', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('2', '3', '3', '2019-10-17 01:02:19', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('3', '12', '3', '2019-10-27 18:02:57', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('4', '13', '3', '2019-10-27 21:10:41', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('5', '11', '3', '2019-10-28 19:38:21', '1200.00');

-- ----------------------------
-- Table structure for pago
-- ----------------------------
DROP TABLE IF EXISTS `pago`;
CREATE TABLE `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `monto` float NOT NULL,
  `nroRecibo` int(11) NOT NULL,
  `idInscripcion` int(11) NOT NULL,
  `fechaCobro` datetime NOT NULL,
  `fechaBaja` datetime NOT NULL,
  `estaPagado` tinyint(1) NOT NULL,
  `idCuota` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idInscripcion` (`idInscripcion` DESC) USING BTREE,
  KEY `IX_idCuota` (`idCuota` DESC) USING BTREE,
  KEY `FK_Pago_Cuotas_idCuota` (`idCuota`),
  KEY `FK_Pago_Inscripcion_idInscripcion` (`idInscripcion`),
  CONSTRAINT `FK_Pago_Cuotas_idCuota` FOREIGN KEY (`idCuota`) REFERENCES `cuotas` (`id`),
  CONSTRAINT `FK_Pago_Inscripcion_idInscripcion` FOREIGN KEY (`idInscripcion`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pago
-- ----------------------------
INSERT INTO `pago` VALUES ('5', 'Cuota 1', '400', '0', '5', '2019-10-07 00:27:11', '0001-01-01 00:00:00', '1', '2');
INSERT INTO `pago` VALUES ('6', 'Cuota 2', '400', '0', '5', '2019-10-07 00:27:27', '0001-01-01 00:00:00', '1', '3');
INSERT INTO `pago` VALUES ('7', 'Cuota 3', '400', '0', '5', '2019-10-18 02:08:43', '0001-01-01 00:00:00', '1', '4');
INSERT INTO `pago` VALUES ('8', 'Cuota 1', '400', '10034', '6', '2019-10-24 01:30:49', '0001-01-01 00:00:00', '1', '2');
INSERT INTO `pago` VALUES ('9', 'Cuota 2', '400', '10034', '6', '2019-10-24 01:32:02', '0001-01-01 00:00:00', '1', '3');
INSERT INTO `pago` VALUES ('10', 'Cuota 3', '400', '10034', '6', '2019-10-24 01:32:26', '0001-01-01 00:00:00', '1', '4');
INSERT INTO `pago` VALUES ('11', 'Cuota 1', '400', '0', '7', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '2');
INSERT INTO `pago` VALUES ('12', 'Cuota 2', '400', '0', '7', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '3');
INSERT INTO `pago` VALUES ('13', 'Cuota 1', '400', '0', '8', '2019-10-07 00:29:01', '0001-01-01 00:00:00', '1', '2');
INSERT INTO `pago` VALUES ('14', 'Cuota 3', '400', '0', '7', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '4');
INSERT INTO `pago` VALUES ('15', 'Cuota 2', '400', '0', '8', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '3');
INSERT INTO `pago` VALUES ('16', 'Cuota 3', '400', '0', '8', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '4');
INSERT INTO `pago` VALUES ('20', 'Cuota 1', '325', '10037', '15', '2019-10-27 21:10:07', '0001-01-01 00:00:00', '1', '5');
INSERT INTO `pago` VALUES ('21', 'Cuota 1', '325', '0', '14', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '5');
INSERT INTO `pago` VALUES ('22', 'Cuota 2', '325', '0', '15', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '6');
INSERT INTO `pago` VALUES ('23', 'Cuota 2', '325', '0', '14', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '6');
INSERT INTO `pago` VALUES ('24', 'Cuota 3', '325', '0', '15', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '7');
INSERT INTO `pago` VALUES ('25', 'Cuota 3', '325', '0', '14', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '7');
INSERT INTO `pago` VALUES ('26', 'Cuota 4', '325', '0', '15', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '8');
INSERT INTO `pago` VALUES ('27', 'Cuota 4', '325', '0', '14', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '8');
INSERT INTO `pago` VALUES ('28', 'Cuota 1', '325', '10034', '16', '2019-10-21 20:25:44', '0001-01-01 00:00:00', '1', '7');
INSERT INTO `pago` VALUES ('29', 'Cuota 2', '325', '0', '16', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '8');
INSERT INTO `pago` VALUES ('30', 'Cuota 3', '325', '10034', '16', '2019-10-19 15:35:26', '0001-01-01 00:00:00', '1', '5');
INSERT INTO `pago` VALUES ('31', 'Cuota 4', '325', '0', '16', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '6');
INSERT INTO `pago` VALUES ('32', 'Cuota 1', '600', '10034', '18', '2019-10-20 16:09:03', '0001-01-01 00:00:00', '1', '10');
INSERT INTO `pago` VALUES ('33', 'Cuota 2', '600', '10034', '18', '2019-10-20 16:09:10', '0001-01-01 00:00:00', '1', '11');
INSERT INTO `pago` VALUES ('34', 'Cuota 3', '600', '10034', '18', '2019-10-20 16:10:56', '0001-01-01 00:00:00', '1', '9');
INSERT INTO `pago` VALUES ('35', 'Cuota 1', '500', '10040', '23', '2019-10-28 17:57:46', '0001-01-01 00:00:00', '1', '12');
INSERT INTO `pago` VALUES ('36', 'Cuota 2', '500', '0', '23', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '13');
INSERT INTO `pago` VALUES ('37', 'Cuota 3', '500', '0', '23', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '14');
INSERT INTO `pago` VALUES ('38', 'Cuota 1', '500', '0', '24', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '12');
INSERT INTO `pago` VALUES ('39', 'Cuota 2', '500', '0', '24', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '13');
INSERT INTO `pago` VALUES ('40', 'Cuota 3', '500', '0', '24', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '14');
INSERT INTO `pago` VALUES ('41', 'Cuota 1', '500', '10049', '25', '2019-10-28 19:34:35', '0001-01-01 00:00:00', '1', '17');
INSERT INTO `pago` VALUES ('42', 'Cuota 2', '500', '10049', '25', '2019-10-28 19:36:55', '0001-01-01 00:00:00', '1', '18');
INSERT INTO `pago` VALUES ('43', 'Cuota 1', '500', '0', '26', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '17');
INSERT INTO `pago` VALUES ('44', 'Cuota 3', '500', '0', '25', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '19');
INSERT INTO `pago` VALUES ('45', 'Cuota 2', '500', '0', '26', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '18');
INSERT INTO `pago` VALUES ('46', 'Cuota 3', '500', '0', '26', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '19');
INSERT INTO `pago` VALUES ('47', 'Cuota 1', '500', '0', '27', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '19');
INSERT INTO `pago` VALUES ('48', 'Cuota 2', '500', '0', '27', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '17');
INSERT INTO `pago` VALUES ('49', 'Cuota 3', '500', '0', '27', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '18');
INSERT INTO `pago` VALUES ('50', 'Cuota 1', '500', '0', '28', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '14');
INSERT INTO `pago` VALUES ('51', 'Cuota 2', '500', '0', '28', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '12');
INSERT INTO `pago` VALUES ('52', 'Cuota 3', '500', '0', '28', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '13');

-- ----------------------------
-- Table structure for ratingevento
-- ----------------------------
DROP TABLE IF EXISTS `ratingevento`;
CREATE TABLE `ratingevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ratingEvento` int(11) NOT NULL,
  `ratingContenido` int(11) NOT NULL,
  `ratingEncargado` int(11) NOT NULL,
  `textoDescripcion` longtext,
  `idEvento` int(11) NOT NULL,
  `idSocio` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idEvento` (`idEvento` DESC) USING BTREE,
  KEY `IX_idSocio` (`idSocio` DESC) USING BTREE,
  KEY `FK_RatingEvento_Evento_idEvento` (`idEvento`),
  KEY `FK_RatingEvento_Socio_idSocio` (`idSocio`),
  CONSTRAINT `FK_RatingEvento_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`),
  CONSTRAINT `FK_RatingEvento_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ratingevento
-- ----------------------------
INSERT INTO `ratingevento` VALUES ('1', '5', '3', '3', '', '4', '2');
INSERT INTO `ratingevento` VALUES ('2', '3', '2', '4', '', '4', '2');
INSERT INTO `ratingevento` VALUES ('3', '4', '4', '4', '', '7', '2');
INSERT INTO `ratingevento` VALUES ('4', '4', '3', '4', '', '4', '2');

-- ----------------------------
-- Table structure for recordatorios
-- ----------------------------
DROP TABLE IF EXISTS `recordatorios`;
CREATE TABLE `recordatorios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` longtext,
  `descripcion` longtext,
  `fechaRecordatorio` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of recordatorios
-- ----------------------------
INSERT INTO `recordatorios` VALUES ('1', 'Sacar la basura', 'Sacar la basura del patio', '2019-07-30 05:28:45');
INSERT INTO `recordatorios` VALUES ('2', 'Dejar papeles al contador', 'Dejar papeles afip al contador', '2019-07-30 05:29:11');
INSERT INTO `recordatorios` VALUES ('3', 'Avisar profesora computacion ', 'Llegada de nuevos mouses', '2019-08-01 00:00:00');
INSERT INTO `recordatorios` VALUES ('4', 'Contadora', 'dasdas', '2019-08-05 22:53:29');
INSERT INTO `recordatorios` VALUES ('5', 'Sacar el perro', 'asdasd', '2019-08-07 00:00:00');

-- ----------------------------
-- Table structure for secretario
-- ----------------------------
DROP TABLE IF EXISTS `secretario`;
CREATE TABLE `secretario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `sexo` longtext,
  `estadoCivil` longtext,
  `idTipoDoc` int(11) NOT NULL,
  `nroDocumento` longtext,
  `fechaNacimiento` datetime DEFAULT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `FK_Secretario_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  CONSTRAINT `FK_Secretario_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of secretario
-- ----------------------------
INSERT INTO `secretario` VALUES ('1', 'jose', 'Jimenez', '2312312', '231312312', 'nose@gmail.com', 'MASCULINO', 'SOLTERO', '1', '30822222', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2019-08-16 03:19:58', 'ACTIVO');
INSERT INTO `secretario` VALUES ('3', 'Nelida', 'Gonzalez', '', null, 'nelida@gmail.com', 'Femenino', 'Soltero', '1', '38907867', null, '2019-08-17 20:19:57', null, 'Activo');

-- ----------------------------
-- Table structure for socio
-- ----------------------------
DROP TABLE IF EXISTS `socio`;
CREATE TABLE `socio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `apellido` longtext,
  `telefono` longtext,
  `celular` longtext,
  `email` longtext,
  `sexo` longtext,
  `estadoCivil` longtext,
  `idTipoDoc` int(11) NOT NULL,
  `nroDocumento` longtext,
  `idDomicilio` int(11) NOT NULL,
  `idContacto` int(11) NOT NULL,
  `fechaNacimiento` datetime DEFAULT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime DEFAULT NULL,
  `estado` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio` DESC) USING BTREE,
  KEY `IX_idContacto` (`idContacto` DESC) USING BTREE,
  KEY `FK_Socio_Contacto_idContacto` (`idContacto`),
  KEY `FK_Socio_Domicilio_idDomicilio` (`idDomicilio`),
  KEY `FK_Socio_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  CONSTRAINT `FK_Socio_Contacto_idContacto` FOREIGN KEY (`idContacto`) REFERENCES `contacto` (`id`),
  CONSTRAINT `FK_Socio_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Socio_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of socio
-- ----------------------------
INSERT INTO `socio` VALUES ('1', 'JOse', 'Quinteros', '3543604130', '3543604130', 'juanjose@gmail.com', 'Masculino', 'Soltero', '1', '32972080', '1', '1', '1986-03-04 00:00:00', '0001-01-01 00:00:00', null, 'Activo');
INSERT INTO `socio` VALUES ('2', 'Augusto', 'galan', '3543604130', '3543604130', 'juanjose@gmail.com', 'Masculino', 'Soltero', '1', '32972081', '1', '1', null, '0001-01-01 00:00:00', null, 'Activo');
INSERT INTO `socio` VALUES ('3', 'Laura', 'Miguez', '3543604130', null, 'laura1Miguez@gmail.com', null, null, '1', '30992080', '1', '1', null, '0001-01-01 00:00:00', null, 'Activo');
INSERT INTO `socio` VALUES ('4', 'Maria', 'Del Valle', '3543604132', null, 'mariadelvalle@gmail.com', 'Femenino', 'Soltero', '1', '40000001', '1', '1', '2003-07-27 00:00:00', '0001-01-01 00:00:00', null, 'Activo');
INSERT INTO `socio` VALUES ('10', 'Jorge', 'galan', '3543604130', null, 'juanjose@gmail.com', null, null, '1', '40000002', '1', '1', '2019-07-03 01:12:28', '0001-01-01 00:00:00', null, 'Activo');
INSERT INTO `socio` VALUES ('11', 'Soledad', 'Miguez', '3543604130', null, 'laura1Miguez@gmail.com', null, null, '1', '40000003', '1', '1', '2019-07-03 01:12:28', '0001-01-01 00:00:00', null, 'Activo');
INSERT INTO `socio` VALUES ('12', 'Angelica', 'Valles', '3543604132', null, 'mariadelvalle@gmail.com', null, null, '1', '40000004', '1', '1', '2019-07-03 01:12:28', '0001-01-01 00:00:00', null, 'Activo');
INSERT INTO `socio` VALUES ('13', 'Graciela María', 'Casartelli', '03543403668', '03543604130', 'gracielacasartelli946@hotmail.com', 'Femenino', 'Soltero', '1', '30999888', '3', '2', '2019-07-03 01:12:28', '2019-10-18 23:08:13', null, 'Activo');
INSERT INTO `socio` VALUES ('14', 'JAVIER', 'JIMENEZ', '03543604130', '3543604130', 'javierjimenez78@gmail.com', 'Masculino', 'Soltero', '1', '30992080', '5', '4', '1946-03-04 00:00:00', '2019-10-30 02:24:52', null, 'DebeMatricula');

-- ----------------------------
-- Table structure for sociotags
-- ----------------------------
DROP TABLE IF EXISTS `sociotags`;
CREATE TABLE `sociotags` (
  `Socio_id` int(11) NOT NULL,
  `Tag_id` int(11) NOT NULL,
  PRIMARY KEY (`Socio_id`,`Tag_id`),
  KEY `IX_Socio_id` (`Socio_id` DESC) USING BTREE,
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `FK_SocioTags_Tags_Tag_id` (`Tag_id`),
  CONSTRAINT `FK_SocioTags_Socio_Socio_id` FOREIGN KEY (`Socio_id`) REFERENCES `socio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SocioTags_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sociotags
-- ----------------------------
INSERT INTO `sociotags` VALUES ('14', '1');
INSERT INTO `sociotags` VALUES ('14', '5');
INSERT INTO `sociotags` VALUES ('14', '18');
INSERT INTO `sociotags` VALUES ('3', '2');
INSERT INTO `sociotags` VALUES ('3', '5');
INSERT INTO `sociotags` VALUES ('3', '13');
INSERT INTO `sociotags` VALUES ('3', '14');
INSERT INTO `sociotags` VALUES ('3', '15');
INSERT INTO `sociotags` VALUES ('3', '16');
INSERT INTO `sociotags` VALUES ('2', '5');
INSERT INTO `sociotags` VALUES ('2', '6');
INSERT INTO `sociotags` VALUES ('2', '8');
INSERT INTO `sociotags` VALUES ('2', '9');
INSERT INTO `sociotags` VALUES ('2', '10');
INSERT INTO `sociotags` VALUES ('2', '11');
INSERT INTO `sociotags` VALUES ('2', '12');
INSERT INTO `sociotags` VALUES ('2', '17');
INSERT INTO `sociotags` VALUES ('1', '1');
INSERT INTO `sociotags` VALUES ('1', '2');
INSERT INTO `sociotags` VALUES ('1', '4');
INSERT INTO `sociotags` VALUES ('1', '5');
INSERT INTO `sociotags` VALUES ('1', '6');
INSERT INTO `sociotags` VALUES ('1', '7');

-- ----------------------------
-- Table structure for tagespaciocomuns
-- ----------------------------
DROP TABLE IF EXISTS `tagespaciocomuns`;
CREATE TABLE `tagespaciocomuns` (
  `Tag_id` int(11) NOT NULL,
  `EspacioComun_id` int(11) NOT NULL,
  PRIMARY KEY (`Tag_id`,`EspacioComun_id`),
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `IX_EspacioComun_id` (`EspacioComun_id` DESC) USING BTREE,
  KEY `FK_TagEspacioComuns_EspacioComun_EspacioComun_id` (`EspacioComun_id`),
  CONSTRAINT `FK_TagEspacioComuns_EspacioComun_EspacioComun_id` FOREIGN KEY (`EspacioComun_id`) REFERENCES `espaciocomun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TagEspacioComuns_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tagespaciocomuns
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'Sum');
INSERT INTO `tags` VALUES ('2', 'aire libre');
INSERT INTO `tags` VALUES ('3', 'Laboratorio');
INSERT INTO `tags` VALUES ('4', 'caminar');
INSERT INTO `tags` VALUES ('5', 'computacion');
INSERT INTO `tags` VALUES ('6', 'android');
INSERT INTO `tags` VALUES ('7', 'telefonos');
INSERT INTO `tags` VALUES ('8', 'word');
INSERT INTO `tags` VALUES ('9', 'pintura');
INSERT INTO `tags` VALUES ('10', 'teatro');
INSERT INTO `tags` VALUES ('11', 'ajedrez');
INSERT INTO `tags` VALUES ('12', 'truco');
INSERT INTO `tags` VALUES ('13', 'gimnasia');
INSERT INTO `tags` VALUES ('14', 'telefono');
INSERT INTO `tags` VALUES ('15', 'zumba');
INSERT INTO `tags` VALUES ('16', 'baile');
INSERT INTO `tags` VALUES ('17', 'salsa');
INSERT INTO `tags` VALUES ('18', 'sa');

-- ----------------------------
-- Table structure for tipodocumento
-- ----------------------------
DROP TABLE IF EXISTS `tipodocumento`;
CREATE TABLE `tipodocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tipodocumento
-- ----------------------------
INSERT INTO `tipodocumento` VALUES ('1', 'DNI');
INSERT INTO `tipodocumento` VALUES ('2', 'PASAPORTE');

-- ----------------------------
-- Table structure for tipoespacio
-- ----------------------------
DROP TABLE IF EXISTS `tipoespacio`;
CREATE TABLE `tipoespacio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tipoespacio
-- ----------------------------
INSERT INTO `tipoespacio` VALUES ('1', 'Aula');
INSERT INTO `tipoespacio` VALUES ('2', 'SUM');
INSERT INTO `tipoespacio` VALUES ('3', 'Patio');
INSERT INTO `tipoespacio` VALUES ('4', 'Abierto');
INSERT INTO `tipoespacio` VALUES ('5', 'Cerrado');

-- ----------------------------
-- Table structure for tipoevento
-- ----------------------------
DROP TABLE IF EXISTS `tipoevento`;
CREATE TABLE `tipoevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tipoevento
-- ----------------------------
INSERT INTO `tipoevento` VALUES ('1', 'Curso', '---');
INSERT INTO `tipoevento` VALUES ('2', 'Taller', '---');
INSERT INTO `tipoevento` VALUES ('3', 'Conferencia', '---');
INSERT INTO `tipoevento` VALUES ('4', 'Campaña social', '---');
INSERT INTO `tipoevento` VALUES ('5', 'Festival', '---');
INSERT INTO `tipoevento` VALUES ('6', 'Baile', '---');
INSERT INTO `tipoevento` VALUES ('7', 'Recreacion', '---');
INSERT INTO `tipoevento` VALUES ('8', 'Seminario', '---');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `usuario` longtext,
  `clave` longtext,
  `imagen` longtext,
  `rol` longtext,
  `email` longtext,
  `fechaCreacion` datetime NOT NULL,
  `fechaBaja` datetime NOT NULL,
  `token` longtext,
  `idEncargado` int(11) DEFAULT NULL,
  `idSocio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'Augusto2', 'admin', '123456', 'images\\perfiles\\perfil-1.jpg', 'ADMIN', 'admin@admin.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', 'e3c5b2d18b9d452182c73cfec3af130f', '1', '2');
INSERT INTO `usuario` VALUES ('2', 'Laura', 'secre', '123456', 'assets/img/profile/users/augusto.png', 'SECRETARIO', 'secretario@secretario.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '6d3ec35bac2b4479a33d410e451f07b2', null, '2');
INSERT INTO `usuario` VALUES ('3', 'Javier', 'socio', '123456', 'images\\perfiles\\perfil-3.jpg', 'SOCIO', 'socio@socio.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '23fb204e2666414aa9e5503a4bd86a32', null, '2');
INSERT INTO `usuario` VALUES ('4', 'Josecito', 'encargado', '123456', 'images\\perfiles\\perfil-4.jpg', 'ENCARGADO', 'encargado@encargado.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', 'a1fe919690e1455599ac8c5128143cf4', '1', '2');
INSERT INTO `usuario` VALUES ('5', 'DASH', 'dash', '123456', 'assets/img/profile/users/augusto.png', 'DASH', 'socio@socio.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '48dfee9df6a24ede8049645ed8d18d17', '1', '2');
INSERT INTO `usuario` VALUES ('6', 'JAVIER', 'JIMENEZ227', 'JAVIER30992080', 'images\\perfiles\\perfil-6.jpg', 'SOCIO', 'javierjimenez78@gmail.com', '2019-10-30 02:25:28', '0001-01-01 00:00:00', 'f031bcd825684f6ab3223c9a1ef6dd0b', null, '14');

-- ----------------------------
-- Table structure for __migrationhistory
-- ----------------------------
DROP TABLE IF EXISTS `__migrationhistory`;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContextKey` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MigrationId`,`ContextKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of __migrationhistory
-- ----------------------------
INSERT INTO `__migrationhistory` VALUES ('201910060709224_incial', 'Renacer.Nucleo.Migrations.Configuration', 0x1F8B0800000000000400ED3DD972DC3892EF1BB1FF50518F133D2ABB7B7AA6DB21CD845BB2671C33B21D96FB7853402424739B45D6922C871C1BFB65FBB09FB4BFB0E08D231307C1A34AAEF08355049048241289442233F17FFFF3BFE77F7BDCC6ABCF34CBA334B9583F3F7BB65ED12448C32879B858EF8BFB3FFEB0FEDB5FFFFDDFCE5F85DBC7D52F6DBDEFCA7AAC65925FAC3F15C5EEC56693079FE896E467DB28C8D23CBD2FCE8274BB2161BAF9F6D9B31F37CF9F6F2803B166B056ABF30FFBA488B6B4FAC17E5EA6494077C59EC4D76948E3BCF9CE4A6E2AA8ABB7644BF31D09E8C5FA034DD8FFD9D9DB7D10D374BD7A194784617143E3FBF58A24495A9082E1F8E2E79CDE14599A3CDCECD807127FFCB2A3ACDE3D8973DAE0FEA2AF6E3B8C67DF96C3D8F40D5B50C13E2FD2AD23C0E7DF3574D9C8CD075177DDD18D51EE15A370F1A51C7545BD8BF5CB3CCA0B36B71159AFE4EE5E5CC659595526EF5909252421CDCFFAE6DFACC44ADF747CC1D8A7FCF7CDEA721F17FB8C5E24745F6424FE66F57E7F1747C13FE9978FE9EF34B948F671CC63CBF06565C207F6E97D96EE68567CF940EF9B3144E17AB511DB6DE4865D33AE4D3DB63749F1DDB7EBD55BD639B98B69C70C1C1D6E8A34A37FA709CD4841C3F7A42868C6E6F24D482B722ABD2B7DDDA441949A3A3401799504247B60B3EB0BE88A16248EE9ABCF0C7D4F60342F38847E4AD39892C419CA3D0D3E119E136B70578CDA1F994030C37B4B3E470FD55C49904371A81F685CD5CA3F45BB5A3A701C7C2B557E9DA5DB0F692C2C12B1CEED4DBACF0286CEC7D450F1239B395AD8E39D31C1C6D02CC76CC25AA80AE2CCD5D061CC5773C537AF195C8F695309C4B12AD361575780F03ADFF4524D2BEB24BE1F20EE0408278987F695A4DBBB8CB6FDB11D97290EEBD53579FC174D1E8A4F176BF6276384E89186ED9706879F9388E919AC5191ED8D72834D499045BBA0DA1A27EE6B44F93B86E065504AD5C77757A924EF15CD43EA2E742150FF206C431807D44FE43F00482EDBD1747CD7EF5193F54194EDD07A7745A5346D590690D38268BBED6AF6C21AACA0486CB896EB7642F1FDBA811C33EA902B6CC3462B7598B4F8E235DB918DB5658BD0915D1BAD6420B469EFB6DE231BA972996EF789CB16C9353BED8B685F4F705F0C4839F34C3DF2DDCF3E46BB74943D4DDC043CF6C5CB8C129E86F3EF6755C3EB348CEEA30041C5563C5512EE2379C841E1C40A6A19D8CC40CE0B25A55091A26A0D57E959F0B30F897D4EC0DC0A9539A98FD45164275AD14B74322238484C56FB2428671794FAE5D169F8F022E98A6FB9C5C4B19F5AACAA1B401DD7A522AD53FFD52C2F0F7CBD3BA15819BD6004AB22988A52914241B91CA29EBDB6D31FE9065803BAD6A7853CFB42964F4B3B1AC7D10C47BF82C6F43E4DA6EF28A0F13E26D9E4FDD02D89E219AC27A57A7795067E6A59929530F65BDE7E3221CE57E9360AA2781423CB935226C39E30DA7D92AB07ED935DB1AAA10175066D42A8C63B6033C79154B72B17BDB75A165A14BB5A10824DA106BDB6869FF5BC9FCB2196F3B6F569AF44FBBA235916CDB0B39476A3C97BD945F9F44361FBC1F4E44AC3F7295BDEB1DF2610D2DDE87B96FDD1B41600EDC63960FD0A104E6B18E7C829F45DEB796EFC0C06CC6FD5F234AFF3CEEBE91C736CE7989C3E4E4FB2DA807D197D3E1DCC109C473A9845E1659A1424F0BD8CAF4E566FD9996A1BF104703A982D7F3E9CEAF21C3DFB041DF15113615F45B610B625CAB1472A763D90E98FB63570F0582B1521784D759C75B0A8C2884D7384AD6103C757A100416994636BBFC20768456DE3936284F675528C4E8A112DBD5F6261FB5AE284DB5D090F3CDF36ED4F8B7DDEC56E7F5B37DC71F7E4B17B18627C5E8FDD6A511F8EB3ED682EC4C17E975E4749B41D030E79F486F3C0786E1FF5541E1A07B24DF9E323E38AD8FDF813907AD15FEED3DE13F9C939475758BD4994C534028263429DC91F7BA903F420476BDCC3DAE05AEDE9535D1DF0AA55815C88729ED06D35D8A3BA2EC5F0E3AB0CC2F1CA18B3E5E903AE431CF61677C2FF1F694632CCF389EFABAF0863DD966B11EE2A0DC2955BEC144698AB714B1522ABA58AC31650656CD77ABD4FBD8533BDA517BDD181D5C8B27C2D05C3BE104390ABE16714A937C7211691B2E5498F46FB9A498F1634A52B1A44DBF27EFA7DC6FE6A62F67F58AF6E02528ED1A4F858734D236A06F14DD3F6C439685F73049585E4CBBBFB5F29FDBDEBA98A4CEABF3AAA4A9FD8AC0A0AF26498973D09FAF3DCC607412D1EB000B8F6A745A0E96B9CF3FA0809170EEF50816B17CE4A9AAC5F68F438277DF23D794014DFB2E45658443D827299A2432A155C35483C3F010F554950A0146A0937428A8272A083C44BD9F02457D0BE9650CB061AB0922CFDC0D4B83B6F190818727C24617AD73B5B4E210607989618D38F907D261A642BC4BD1A6A6098086C8A25E1577D55840B57E42A8D85C9F715C7205E90BC1E7E7537FC6AA76F7E927F4BCBBFE9AE77EC4D1B71E98345871937EAB6273E9A928FAC64F27CEE1E8D8F91998863B843350C06394449458ACC95CBBD44EE3561F40CF6F1301B60D7FAB45070064E227F6DE93389D36C04DDED97328F10E69B7A08577AEE8CFBDBF0500709C68989357D8D92B8929336DEAC5C1F903D7978C703F1339EEB76826D3F6E602F90D8F096ABDDEF0A6825657FC06B8E97CB51EE43B19780158CA88E6037F9C0504D1E3C4E113C80934440FBCA043AFBACE61A52E9604D93C8D721AA416B1CEFAA823E16E9D5BCA92517337A0FB136F36B05303703C58A0880EA8C27A704E88A90524BF5E88D219E68906621616B6FA0CEC2033889277CE946C53E9E21FFE78CC2A1D27A44FE71D27EEC63876990D162F0057FDFFCC49F685FA7609953B00C3D4511A3CB63CE28E253D0EEA0A05D6DB467B70780219F4AA91AF7A956F1D2BB7ECEF78E1B5AD3E2B487E18B749E3D6CDF4EDDD43B4B4C3E4F3F9A684B1EE8F4CA62964E2FEBE7D9226713AFAEC681726DCF6111406C19436C0076A273BFE50427E712FA267F1D9387FE912C5C94DE7CC90BBAEDDD49BF596D73766E89A3BB5E7CFEC9567CDEFDE52FE4FBE0FB3F3FFFF1BB3FD1673FFC585230A459FC85519C1F9D488F6BBABDA3597BA2D9272161F2EC1712EFD9CF670AF584DAD7A950FBB9BEF6C73DCDF9EAEAD408D57FA5612236F8CE00FFD33E13EAFF495FFF7516F1B5BFD7D7BE218CF67CFD3FAB5C52F303FFF1655E9A42AA496FE040991EC56E5F25E1CA22ED63EF8CCC31FE35639168C79882F1EBC5FA0FCA90F4B03B1F42CED1B9CFDB21C256279BEDC7342B3744125F321D87B1689414EAE61D2541B423B1190DA9A9E5CE5FCE44D7895C7245773429376D3381ED7AE7C8A3A2D1F526A92626429D6F38B6B1E5A63E8F8979C681C426A371139086BA875DE57BD7421D34F656733663A768D1A38D5B56BEF9518BA904275E471222B3AE2289BC767D77E7E04556909AF81D9B6B4D1678170E37C004F8477C6066ACE523658BC230C45247F5E835FA93FDA09174531CC83E03D1248B05466086950213D3AEE39E268BAC13398D977E72B5FACA408659544F4150988D678E543F9173ACE96758AB970CE49AF9F41131719B1E2B8D1E32709C0BEB1F2012B3AD8E23D43BD0D7995055D3F854D3208DC1AE0F84ABBA1C3FD3E8B4066CE6506D0D44B7E7B48E548B701BFC5425C60686772BB95D57CC2462CF68FA372F2D39792436D3E232038F69A96DD7FFB2CC65C955667672E7A38360A0C538E7E85986CF9C649862308D9289759E9D9DA973AC050D1D46EBF0C3D1CC566826261B3491B44C2642D8520179F977B0C4F7594FF878E75B5A38512C575943A7C517599738CB860BD42C5A232E3425FB1607BC4B9733D66203B23C6038EA523EF4180AF1BFF6FB942EE997FBDA1DB4AA701466584E38718F601D7141E8D8FC4211E9FDBCD61138F6DC0204B19BF6A3919844ED7906E65089676911AD09B11C4FF0C2403B976066004FFE0093BF5809AA317905C0622E8E01886AD7B5409A45B847CDA063B371488117A36E4A62C486C91C39C196242030F38E2410D6AEEF862C4BEA757CEE4E83E20526F21CE1DC0D65FFB4B9521FF7E00D6031DF090120ADA54AD31367492EE2D2AB1A261BCAB53A020F01095A652BF3946A318AC57C2CA412D6C1ACBCA4622C1E8C6DE411DA6242EBF2C242CA88CCEC26E6A315592FF3282FCAC41CE436B4B29C610D206EEBEBBAB01ADA83ABED6C246E33E13303B399886E878244ACA5F9CD46B8C1D527E1B585659A1E937979EC294833FD1950AE3809472D7200C4FA9F97838EECF8276744C326174D8FC69912DBCC7FF62C8325559BD9DF08416306C641C86AD3339F396F11D6C1132861D36D914DA99F7825D5983D5B99733141FD4CC45C466466603323E1ED70E04875101CA7DFE90CC9B026E1B445363E2D120B70D7916D81503A256CBEB5B995FAD916D3A1D9B3932E2DD35C57BB1A1C66E0250D812D15F125CF7840E22BABA94645D3288CB48850C231989B8B8E4C1C01493CB059D665F4E066994B2CE5100880A702993B1A00C564064EC2496C6F569F2B2EE0559559A00AED8A122EAE3EA471DAA45301D207FC9CD3268340DE24479059A2847A438B36B915671C78D5E532002C070A6B897044A3AB0A4A6BB353A051C1335701263AEE1A601565208F02A20AEF3161D15B815414300B914A993ECE4AA50A1683A58E425C9AEA78C47203B4268BA3020594944AEB2E30540580452282E3E9FC8CC1D1205EC8EA2C612C67C96BEDEBACEA58201F22A579FFECA802A07359348088781F0D058AC625458154A6626ED056E0D49E4436D3821114BF545459A4B51EA9546D4B0C10B804CE0A0CF4E48A43690F8338ACDFEC98BF4E8E0B0012953B13142105A50A4B28362D664E23505734576880D3E58852807489BF2408DCCED58381B298ACB89AB200C5028705FD4597EEA41B8720B1951DDA2EBF09072C4485F3461CB81351FA80572D5190B858641C6A74AC0751D4B0580E5801EC9B3EE4E832DBE988016ACE08F6B2EAEC41085953E6C9A0DD6EDD09A2A69A000862C847218C02CF48A19F4C0310801454A78CB95342CC83009141AA81A30FA754E071CF9193A13121050723C0549EA163D78A4DB98A0973ADB8B41DFE6C62528ACBC70960231EA59A3E049841240AD1EAF8C0CDA250A8E733E819C51F1AF10E6D0B56D1F1A24837C5C75B8A333BA008BDB0F38C3BB5E0886D805416A1DDC290F4C1DDFC9A3778E0D846734FB78D9889634D153339A8990E4B11800FA3C5898006DB426380C26D0711030AAEE500B5588F4A0AC90EA5A7882606171D0F1C853B9C3E70D8ADED5AF4A4566FDCD0130A0E2145C7A404910E278F1232CA81EAB1F7260AF424B84A125348A9300A4D50293786481B906415456A24EE007AF08FEFAA74C0A222058C81B8480E53CE92A51935100D398500519FF745C68C46FDA95843717FC3C60F45FBD97190E742681449FD3A00EE4D51C6152F4E3D5781784F6AD27F870B4ADEFD171793A8933024D92017E1412212F205B631880CA7066F404689810516414300428B06910288259215F4B184231EFB62D4D1EDD8C41C2A3382AE3E23EFA0C11B00BDEC023D847119433DB86111F4CAD30EE40C0A1A127AA0A7951D6319C214BCE8B40C3FA17B94DEC51E1B04BA43B9D363F2FD49791E5B2582D65F5C401CF318E70DA1F0CD9E16CC0CB625CDCBB02A412CBDA0853199FDA0B9D12917921A62991D9F21C013900C5D44162EBCDA11A1CBC9874C932F2CF0C54E9538464F5461143A5F546E0CEDF5B3861E3AB7D329CE82D0FBA0066A98F844E34EE9418BC919037AB10B30E41B5C0245533CEE14C80F00BDE537011B5100B78FE1742E6B5DD9F9E626F844B7A4F970BE615502BA2BF624AEFCD9F2B6E09AEC766CBEF2BE65F36575B32341B97FFCF166BD7ADCC6497EB1FE5414BB179B4D5E81CECFB65190A5797A5F9C05E976C31489CDB7CF9EFDB879FE7CB3AD616C02C13E253BD8753D1569461EA854CABA6698BE8EB2BCB82205B923E5E33D97E156A9263AE8211E176D5F8A0F9E3A77AD2B46DBA4FCBB5977E25B6B2F51283D195FB39195D35A0D927273AE6BCC9A97CFB7930C7826ED328DF7DB04F7CDD4B56E24BB080211F73A389C2B9E084B13C5A983279988459886D8631C6EFBB4200FAEFD660FA57A7A8B77CBE4C129852ADCF38DC40932C36D148E9396BFCCC3561C6E3AA95933B9D6226FC1E786F6D3B07AFBC61F0FA1FD660F457826990725142CB970E015E3BE54B80CB412282C312D0EAB5A1357340F29B0569AEF8ED0FE41F2025A79CD774768F53B7A0AB0FAF3DCE22594454A088B11AC3D412493EE74BC9850122E5C3D64D22B0D1C0B91A46FFE3549A480949408893434EEB38B0C117CC845526993EEE33047DCC2FBB7389595DF172D2349AA464C8B8DEEA300C3512C3E98155D7A62792CE48F6A738BF50BB63A8465BB9458ED94071F998A01B111A878DB43981674EFDCD1388E64F9D27FB58754D098DEA78904A9FFEA209169BC675F2579DC7E74909CF52BC782E0AC3FB94AF4CAA6A24A7330284F3363196FE110E62DC36D1F7AECB8582EE9C8883FB485C33BED12D31D4635CED3F607510C88CD21146F3B8D80BA235926F365FBCD453D8B632AAB66D5277B18BB2897F0A8BF382D5D65C53A8D220DDFA74C6993C411F7D94501DEC9F2A3F97430CC2E1A737D94231D201B3549DFFE1076E685A608BB0CB19E9A1B0880C59420ED0E612A4E4AD2302529A78FD288EA2FAE87DCCBE8B3820B5F7052DB30787D04BC080E7FA317875669516F99FEB48DD4212B854F47B97433B42C24B6350188D692FB12816121BCF1A627F97DBCF23BA331B028FBAF07C3FDFAC03B27AD120163A953A2AD0F61192C6582F3BE671D7CC17ABA59959F5F00AE1E16BD111DFBDE37D8EFD2EB2889B61238FEBB2334F208436BBEDB437BC848B18FE459E8BFDA43DAA6CA64369F5C0C286C9D84A47D9C4C34A408454FE87EBBC241889D82D1D4BEBC6583B1BE0FB5CAD77AEFB7D09E844617DB2BCB5040A18DA60CB73BE41DC945DA2C349F9A905FEB196D13A4B9CF29DA729A59F5F58B09C99777F7BF52FABB04A5FF6C0FEB131B3A20F0B9CF6EB00071CF7D3E187E8BB4A1B5D62CA789D0B5603B6DEB69586F4CB7BA713C6EBFF28DAC8FCCF660C32A19A33BFFC1CD9ECA4EA631FB7EA04174A7DA7CDBCF2E8B00D5130DAFBFE2306BAE4FEFE49B49FEFB728654C633A0F6DA7E77326EAB2717F4ADE5654D53DE16908F28145BC3D457640959CA04DF449CFA1C2A601036C70AACE5214FF088F677EEC122C102AF79C8683146D185F15AB3CA3506C48259346DA7611792C89A5EFDC51EC26712A7D2A548F3C9712FFBA574FC476F3085D22776452847318FC17C30281716C4204C757E192BCE8FCBFA2DC2D23C6485C3AB98AFCE89AEF024942A5D076BA780D921101662C42652DA83FF84ECE6EECCA76F3E0DE765424276E13E5593AADD0CB1BC79A789B2892A85CE98C2D7324AA1CB1DF963915E613A9D5A7A0C5689A556109F91DF671D69E0D8AC236DF369D611EB7C1FCB7E16CDB7E52E592B412DBE93A0C871DD330A0BF21297ADC183936E5028167CA46BFC959C5F9EA4FFD0C9FFF3E461693FCB077E7C6A1FA4F110923FC3202C2424DAF290C563F7840F0F660FBFDEA38313C4E4B31CEA537F7258F85BF24065137BF3CD41354E2531547D9857A81EFA622ED2DF6542379F96F30A3B34B55ECC5A25CA19F071267368325F1B8D4106A2C3CB845C12B5342F39A994B2923E3D44F8C94C0E8761E8A18F765AA157BE2CE486989C78CC7996812796749900E4BA40D8BF2E73074045F449A6D968688996DFD40AEFA2CC3CC7D26B3D9A19566A82C17176AB5782E539AD35B411265646EBE8562CF48489C1635DAC6CE50908C93BF4A193A16BA206388628469F4E19889A334E97691246D50BD76FF2B7FB38664A0B89736A39E05199A27FE0C38A2DFAEA96EE8406FACBCF981C1473C80FA33C15F650B28CCA553A4DB2F9D2FDEEB28C36193E85D4A3153DCA44A2151DF226DBA89CF2B3AEB25EB1C17F8EC22ADDE7979BFF8CCFCAF2B3EACFDA2BA0AF714D92E89E9DAC3F960AF9C5FAFBB3BFAC572FE388E47532D82699E90BF91D6FABECA6CFBF2BB39BD270BB919BBBE7482DA1E47918031952CBB5D570079626F4FC9F5461849641748FB79F6FE486E7003FD62FD1462559AB85FB77CAA69D14347C4F8A82668C586FCA87D719AAEB55C972658AF98EED3606F0CD8984EB437953FD4D12D2C78BF57F556D5EACDEFC76DB34FB66F52E6373FC62F56CF5DF03BAE60E56AEDD774D3D5190D299BAA22134F742A5353ED518DCA5E529DF118492FEB48615324E29A22D2DD7240DA2BC5A5DCF0CD0F9E3A6764568128A1EEDA268ED4E7517719A3C9457853C9822DB1BA108F73A7EA00E62A90C5D23232C0E2ECECFB9F7BAA157F77C2C99C79A4200378106E303AECD68B6706DF85014528317462F9B8682208A94B39098D6320DB76B9C44DA58228D4B6ACA0DDB592E08994C5D6503D778C4BD7BC8402433FA31C80220C3DD70F0D64B5331487D552BD25E82C12940BF2A6201BB46E726E107A77792F09481AD8F841F98E63ECF57C5ECFC11868851D6D04B848AFE0BBE43E15257399FE8DAA6FE1AE3499E5B1C1FE154A0472BA8DAACA2BECA519556D40F489D58D40F46955BD4732C7D62D1E1FA5193557492BD529398F368D97052E502089FF8AA0875522C5C80D4FE979E88F0AE97273DE770F41C3EADA72B066D4B7F458B77511D5D253A2E2D6E8885CE5AF0C329374FB2FF24FB11207DDECEC9343730FDE557C592F646A1D31DDDA477747C6ACB41A6E8A3BF283B807B4A3EEBE6F0F3269F6D7338943ECFA6C7AD7E932DA886701FA764C068C4E49A9ED714C77711AAE6D79C08F9E9FA18E7E6F5E0155A7B5554F564FDCAB732414E848CE0DBD2E4C691FEF90F0CF58094F0BE75C69173587493EB5D434CAA7B3001E8B57AB46C30825B04974F73B890E71269FA61C365D1F4037490CC87A6C23C5A065CD8C56B3147D4A7B32BAAE9318F961927D8148729CF5C964D1F47254035B4E771AEF1089C5E27E45C9ACDADD5DE364FA7C7192A028E3E7636EAB29903C9DD4C57277BCC68F618FB830394B5F22BA7FA68266C2EF5A5DB4AEB5B4EB1D890E493473BEB7526CB51056D93D9D2D33424E4B25CDCFEE1CE1F5066C8A3E5924543BBB89494AEDD774DFD559D3A8FE5A88CB8E341FA5959ACF9134F1E79B4CC2966A01C2E7694A493BEA0E00B0C47506A6649DFBBA5AFE1646EBF1ED0249047BB1EDA7C9207739D09E48FF490A3F6BE85485EC6A39DD803D3D09FA093C9C9C1702A07C39373DD8C871030DFE2572EF6BACC8D9ED2AA4EDDE8B9AE9BD48D9E1E71A9B7801945681ED8EAB3D391EA9C8EDEAAB441C3B783A2EAC4E3F8E8A17913ED448121EDA1DA004E6B66961F62478ED7B25C5BAFCDAE45DEADFBBAD524567D5D4E44BB0944D3CC0173AD4F34689EC399C807308F8CB923FF88CDA7984938FBA1DD146A12188EB7FEFA4EDC68D7B63BE675C7A54853A451880494BE4AC2D587B4EC48099A29F3909D715FAFF77111ED62F6B3F872B17EAE10A307A56C251528EEAB08EA0F0A28C607342B552C125FA6495E64245233FFBECFA224887624560620D5B4540E4BC27630E5922BBAA349A9F52943B4EB8CA3A3DA6B075C6276131984AC78B69CA0CF473A7C169F2B5912DF2557EC5C5DD0D5CBA0CE5D7749F280A82F115779038D5894520744A42A9884A35C27791C8E0292CB0ED16996E22A28AF24379FF23402B3F70439C9764EE7E6213C7BEFACDCD3DC73E34C23C4A20BEC23961CFA1EA509AA9F98232C3B435F5F998523EC52A11F843491CF34121662D931CB144342FBC3132B7689EB795180CDA36E129F2C5B394FF602FC65F196C00C8C569F190338FABB9F523915403597FD47FB2D4BB0AD55509A2F93F0011CD53E0D0F606FD7421DF5945B70D2673D4ECF3BEFB31EA35D267EE923B4CD731EEEB336D13ED219EA1404A63BE4B84CA63FD7D8AA3FBA775316E09A833D1E2FC13133A9B04EFCB2A8EE5A73CB02C7E179F798D98FC12EA269D923B0A0DA166826179119A4EC161D2B74DF1DEC22430E4323B20538DC699862C0494720EA22FC213C2C714B0DCC31F0688BB307F83048ADDA8A254FE26CAA79C503ED7059F6588A2F008678529C707C2CC0BF78E73D6BCFCECE74B32F8491D6F68DFACB3473EF32175EB30E3E0C085BA4748FB5CD3CE9BAB78706CCFD016F07B331C2A08DA019FAE2FCD0BD6F38B5186813CFF080BA6F47CE01C8539007290CB8BC08B7740629002471A82009DF8F7CFED1BC3668778BAEFF32C4F33600B281396FDABA89E703492B08F58769EE23ACF762CF9956B3C5A0FD34045B6E86F16C4B5EABF350E6DC7DD1CD35F302F11617F239109F3FE026E21025FC6C970AEEBCD6507149FD2E63077D06A974151ECF8FF3804EF9B33A603A29F73DF9969CFF02CB9724D987D579E33F1F2E0360F9A00E800378021E8025786649B0F0C17F4EB930E8ECBFB078E89FBBBE0DADAC4103E753C722EA93DB153CFEF3340E2C03E6CB8B41B811D9F5269174690E9959742CC517B30A0D679E38208931F96962290E98ED2CE13CFB4B1E259AD48F4B789DB45927052354FBED69789E80893591AEF844918BB08294F1EF768B6488EC6750496857CD21F7D59E19E4748320C0DF4061331273200931A7610C6D7645B44B8EB207C12193EF15CB73C56CBBC6308E5872EBE03330CE72D324A47CE4418905477ED78427B644FB5BF42C21B0C1E41261491E984D160C60812505419F9F7011E7E53E3BA2C059DCE7A7A14C626920D1DEE6F4657E552525A9C2B3A28466EDE9220DE9EB28CB8B2B52903B92AB2686B2D50D2D9473E87AF5AA4B73029C106F824F744B2ED661F504459D2C852F57B845EC47B2C1285D49E5506F5A338ED2A1E859A9F4271643DD89350CBD55311B4A27D5570876199A621E416FA250D1EFCB40DC31EB863A2F7D94973A277D19381F5880984A1D51D2A87412CB418A89550C1D36B259E9A8F90E75008A7305701F0DA9C0EE8B20F058182548ABCEA115A454578AD109F18755190C5B8CBA5568B9FC1A570D954AF5779044B5F3AC0972E7E1A6C0EE4A20E89D579E09BE70C7AEF4219442FD683C1594AE6A570EA58FFA3304BC2EB1E1206C6AF942947F2CA7B8B51CA993DC9680D3DC161AC073476FA503AE0CEA023DB5E39DFC86890CA586B6C3BA9299C944DD59E9542C867A146B987A131268ABBD09C5606F5C0DF3E078455015C15C212887B972433F6DAE5AB593AE04EAA12BB4DD7FE1CD5D2CD6EEC256DBBD926E025227CC6A8B54C962B6BA985378BB4487D796AA5D701A2B404E2E9A7FC5D594C98A05FD0B4711457D61FD693413EC8E8D6B8BAB4E1B71584E4356C2D8B523D707BDFB0C026ECBCDBED8BC2A98840C4D5CB62519A0286EF1942B8D00407CE1A1B7E774ED88C1C3BCEE38CF0F59A721CFCCF868622960F47649A8BC661B11AD6D5BED496F8CC1E3CC6E973C499C3D6C24BA612C488EFAE2A24BDB031041AA81232E9FBE2A8C35096A143B28D70C3EEF0D1D9E764B93AB4CB39D4D3D449B2D0CA9E98DB4DA461601FDC7D1878BAF5EA4E678826B9EA16AB626B1C2B4DBD2740C8C2679803663AB8410CAE025934D37743C36D953A20F20039CCB00A08145D28391B724D03C5C0B3FADD577002F18473FE3B081F18E3D503E2E1D1F2C1ABD3E0C5D71D7E64D81F5960DC571790E51E213FD48B53EABDE039E9D99C5B063C3D8E1F0E411862D1966AB66DD37EFA10241B6C0404DA1B8230C13B00F574D75865FF7E17201A5C030B170D321EB4E68C35BA4AB26A0C579E070040A2183D28485F9CDC12CC35483040D3C0A786F78EBC7F330281007830B1ED4E57D3C5BD6F43B2917FC858F148B1053154615616D88D33C43C5839C8C6AE2F4733CDFBE8AC6F30054B08BFD196320020CD571A302A071C9F0228381156CC25B46E38399878E0A727D0C87B71C9F6398723002304A6DBCC2E84600E952B9565B901B63F7E1E20EF7C0C02DBDF305F4954BEB6A003A2F728DEB3504E137906F462005CAE5162EE8DEAC3EEFD021376A60E0466FEB110E13901F40D5567BBFEF396474AA4D8EC5DEF33CD77001FF58C8B869F0A21DDFC2A93846D474C35D1EF0A1B7AFD2750EA05DD9F9A6BEAD6F3EB09F053B853FD0EB34A4715E7D3DDF7CD827E55BA8F5AF2B9A470F3D88730633A181E070DAD57993DCA7ADEBAB84515B457AA6EF9A8D2D2405799915D13D090A561CD03C67F3BD5EFD42E27DB978B677347C93BCDB17BB7DC1864CB777F1179E18A5FFACAEFFF38D82F3F9BB5DF92B1F63080CCDA87C3EF65DF2D33E8AC30EEFD7C06B810888D231B779D9B89CCBA27CE1F8E14B07E96D9A58026AC8D7F9137FA4DB5DCC80E5EF929BEA816177DC7ECEE9BFE80309BEB0EF9FA390663810F34488643FBF8AC84346B67903A36FCF7E321E0EB78F7FFD7FF5FF36CF9DE50100, '6.1.3-40302');
INSERT INTO `__migrationhistory` VALUES ('201910240358280_agregadoEstadoInscripcion', 'Renacer.Nucleo.Migrations.Configuration', 0x1F8B0800000000000400ED3DD972DC3892EF1BB1FF50518F133D2ABB7B7AA6DB21CD845BB2671C33B21D96FB7853402424739B45D6922C871C1BFB65FBB09FB4BFB0E08D231307C1A34AAEF08355049048241289442233F17FFFF3BFE77F7BDCC6ABCF34CBA334B9583F3F7BB65ED12448C32879B858EF8BFB3FFEB0FEDB5FFFFDDFCE5F85DBC7D52F6DBDEFCA7AAC65925FAC3F15C5EEC56693079FE896E467DB28C8D23CBD2FCE8274BB2161BAF9F6D9B31F37CF9F6F2803B166B056ABF30FFBA488B6B4FAC17E5EA6494077C59EC4D76948E3BCF9CE4A6E2AA8ABB7644BF31D09E8C5FA034DD8FFD9D9DB7D10D374BD7A194784617143E3FBF58A24495A9082E1F8E2E79CDE14599A3CDCECD807127FFCB2A3ACDE3D8973DAE0FEA2AF6E3B8C67DF96C3D8F40D5B50C13E2FD2AD23C0E7DF3574D9C8CD075177DDD18D51EE15A370F1A51C7545BD8BF5CB3CCA0B36B71159AFE4EE5E5CC659595526EF5909252421CDCFFAE6DFACC44ADF747CC1D8A7FCF7CDEA721F17FB8C5E24745F6424FE66F57E7F1747C13FE9978FE9EF34B948F671CC63CBF06565C207F6E97D96EE68567CF940EF9B3144E17AB511DB6DE4865D33AE4D3DB63749F1DDB7EBD55BD639B98B69C70C1C1D6E8A34A37FA709CD4841C3F7A42868C6E6F24D482B722ABD2B7DDDA441949A3A3401799504247B60B3EB0BE88A16248EE9ABCF0C7D4F60342F38847E4AD39892C419CA3D0D3E119E136B70578CDA1F994030C37B4B3E470FD55C49904371A81F685CD5CA3F45BB5A3A701C7C2B557E9DA5DB0F692C2C12B1CEED4DBACF0286CEC7D450F1239B395AD8E39D31C1C6D02CC76CC25AA80AE2CCD5D061CC5773C537AF195C8F695309C4B12AD361575780F03ADFF4524D2BEB24BE1F20EE0408278987F695A4DBBB8CB6FDB11D97290EEBD53579FC174D1E8A4F176BF6276384E89186ED9706879F9388E919AC5191ED8D72834D499045BBA0DA1A27EE6B44F93B86E065504AD5C77757A924EF15CD43EA2E742150FF206C431807D44FE43F00482EDBD1747CD7EF5193F54194EDD07A7745A5346D590690D38268BBED6AF6C21AACA0486CB896EB7642F1FDBA811C33EA902B6CC3462B7598B4F8E235DB918DB5658BD0915D1BAD6420B469EFB6DE231BA972996EF789CB16C9353BED8B685F4F705F0C4839F34C3DF2DDCF3E46BB74943D4DDC043CF6C5CB8C129E86F3EF6755C3EB348CEEA30041C5563C5512EE2379C841E1C40A6A19D8CC40CE0B25A55091A26A0D57E959F0B30F897D4EC0DC0A9539A98FD45164275AD14B74322238484C56FB2428671794FAE5D169F8F022E98A6FB9C5C4B19F5AACAA1B401DD7A522AD53FFD52C2F0F7CBD3BA15819BD6004AB22988A52914241B91CA29EBDB6D31FE9065803BAD6A7853CFB42964F4B3B1AC7D10C47BF82C6F43E4DA6EF28A0F13E26D9E4FDD02D89E219AC27A57A7795067E6A59929530F65BDE7E3221CE57E9360AA2781423CB935226C39E30DA7D92AB07ED935DB1AAA10175066D42A8C63B6033C79154B72B17BDB75A165A14BB5A10824DA106BDB6869FF5BC9FCB2196F3B6F569AF44FBBA235916CDB0B39476A3C97BD945F9F44361FBC1F4E44AC3F7295BDEB1DF2610D2DDE87B96FDD1B41600EDC63960FD0A104E6B18E7C829F45DEB796EFC0C06CC6FD5F234AFF3CEEBE91C736CE7989C3E4E4FB2DA807D197D3E1DCC109C473A9845E1659A1424F0BD8CAF4E566FD9996A1BF104703A982D7F3E9CEAF21C3DFB041DF15113615F45B610B625CAB1472A763D90E98FB63570F0582B1521784D759C75B0A8C2884D7384AD6103C757A100416994636BBFC20768456DE3936284F675528C4E8A112DBD5F6261FB5AE284DB5D090F3CDF36ED4F8B7DDEC56E7F5B37DC71F7E4B17B18627C5E8FDD6A511F8EB3ED682EC4C17E975E4749B41D030E79F486F3C0786E1FF5541E1A07B24DF9E323E38AD8FDF813907AD15FEED3DE13F9C939475758BD4994C534028263429DC91F7BA903F420476BDCC3DAE05AEDE9535D1DF0AA55815C88729ED06D35D8A3BA2EC5F0E3AB0CC2F1CA18B3E5E903AE431CF61677C2FF1F694632CCF389EFABAF0863DD966B11EE2A0DC2955BEC144698AB714B1522ABA58AC31650656CD77ABD4FBD8533BDA517BDD181D5C8B27C2D05C3BE104390ABE16714A937C7211691B2E5498F46FB9A498F1634A52B1A44DBF27EFA7DC6FE6A62F67F58AF6E02528ED1A4F858734D236A06F14DD3F6C439685F73049585E4CBBBFB5F29FDBDEBA98A4CEABF3AAA4A9FD8AC0A0AF26498973D09FAF3DCC607412D1EB000B8F6A745A0E96B9CF3FA080917BED65B394DECA5B32E28AB311A75D1496D7D4F1E10FDBA2CB915D66A8FA05CA6A8AA4A055745154F83C04355F22028855AC28D9009A11CE8202956363C892FB4AF25B4BF8176B2244B3F306DF1CE5BD402F6221F819BDEF53E9D5348DB01162CC6F42324B98906992471E7891A1826029B6249F8555F15E1C215B94A6361F27DC531881724AF87DF100EBF41EA9B9FE4DFD2F26FBA5B247B0B4A5CBA7AD1613694BAED898FA6E4232B993C9F5749E3CA6426E2185E570D83417E5752912273E5722F917B4D183D837D3CCCD4D8B53E2D149C8193C85F5BFA4CE2341B4177FBA54C5784B9C01EC2CDA13BE3FE363CA242827162624D5FA3E4C7E4A48D372BD707644F1EDEF140FC6CF4BA9D60DB8F1BD80B2436BCE56AF7BB025A49D91FF09AE3A58C94FB50EC25600523AA23D84D3E305493078F53040FE02411D0BE3281CE3EABB98654FA71D324F2F5BB6AD01AC789ABA08F457A356F06CBC56CEB43ACCDFC5A01CCCD40B12202A03AE3C92901BA22A4D4523D7A6388271AA45948D8DA1BA8B3F0004EE2095FBA51B18F6748333AA370A8B41E917F9CB41FFB10651A64B418EC47D0373FF127DAD72926E71493434FC1CAE8F2983358F9141B3CC80B411B54DAED016064A952AA8697AA55BCF4AE9FF3BDE386D6B438ED61F8229D670FDBB75337F5CE1293CFD38F26DA92073ABDB298A5D3CBFA79B6C8D9C4ABAB71A05CDB735804105BC6101B809DE8DC6F39C1C9799EBEC95FC7E4A17F8B0B17A5375FF2826E7BAFD56F56DB9C9D5BE2E8AE179F7FB2159F777FF90BF93EF8FECFCF7FFCEE4FF4D90F3F96140C69167F6114E74727D2E39A6EEF68D69E68F64948983CFB85C47BF6F399423DA1F6752AD47EAEAFFD714F73BEBA3A3542F55F6998880DBE33C0FFB4CF84FA7FD2D77F9D457CEDEFF5B56F08A33D5FFFCF2A97D4FCC07F7C9997A6906AD21B38504249B1DB5749B8B2C82ED9FB3C738C7FCD5824DA31A660FC7AB1FE8332243DECCE8790F3A7EED38388B0D5C966FB31CDCA0D91C4974CC7612C1A2585BA79474910ED486C46436A6AB9F39733D17522975CD11D4DCA4DDB4C60BBDE39F2A86874BD49AA898950E71B8E6D6CB9A94F97629E71207FCA68DC0464BBEE615769E5B550078DBDD59CCDD8295AF468E396956F7ED462C6C289D79184C8ACAB4822AF5DDFDD39789115A4E697C7E65A936CDE85C30D3001FE11DFB1196BF94849A9300CB10C553D7A8DFE643F6824AB1507B24F7434C96281119861A5C0C4B4EBB8A7C922EB44CE16A69F5CADBE32906116D553101466E39923D54FE4546EFA19D6EA2503B9663E7D44CC0FA7C74AA3870C1CE7C2FA0788C46CABE308F50EF4112854D534BE08354863B0EB03E1AA2E95D0343AAD019B39545B03D1ED39AD23D522DC06BF8889B181E1794C6ED7151396D8339AFE694D4B4E1E89CDB4B8CCC0635A6ADBF5BF2C73597295999DDCF9E820186831CE397A96E1133419A618CCD664629D676767EA1C6B414387D13AFC7034B3159AF0C9064D24FB938910B654401E181E2CF17DD6133EDEF996164E14CB55D6D069F145D6E5E7B2E1023559D7880B4D49F2C501EFB2F28CB5D8802C0F188EBA940F3D8642FCAFFD3EA5CB2DE6BE7607AD2A1C851996134EDC2358475C103A36BF50447A3FAF75048E3DB70041ECA6FD682426517B9E813954E2595A446B422CC713BC30D0CE259819C0933FC0E42F56826A4C5E01B0988B6300A2DA752D906611EE5133E8D86C1C52E0C5A89B9218B16132474EB0250908CCBC230984B5EBBB21CB927A1D9F22D4A07881F9424738774349466DAED4C73D780358CC774200486BA9D2F4C459928BB82CAE86C98652BA8EC043401E58D9CA3CA55A8C62311F0BA98475302B2FA9188B07631B7984B698D0BABCB090322233BB89F96845D6CB3CCA8B323107B90DAD2C67580388DBFABA2EAC86F6E06A3B1B89DB4CF8CCC06C26A2DBA120116B697EB3116E70F549786D6199A6C7645E1E7B0AD24C7F06942B4EC2518B1C00B1FEE7E5A0233BFEC919D1B0C945D3A371A6C436F39F3DCB6049D566F63742D098817110B2DAF4CC67CE5B8475F0044AD8745B6453EA275E493566CF56E65C4C503F133197119919D8CC48783B1C38521D04C7E9773A4332AC49386D918D4F8BC402DC75645B20944E099B6F6D6EA57EB6C57468F6ECA44BCB34D7D5AE068719784943604B457CC9331E90F8CA6AAA51D1340A232D2294700CE6E6A223134740120F6C9675193DB859E6124B390402E0A940E68E0640319981937012DB9BD5E78A0B78556516A842BBA2848BAB0F699C36E95480F4013FE7B4C9209037C911649628A1DED0A24D6EC519075E75B90C00CB81C25A221CD1E8AA82D2DAEC146854F0CC5580898EBB06584519C8A380A8C27B4C58F456201505CC42A452A68FB352A982C560A9A31097A63A1EB1DC00ADC9E2A8400125A5D2BA0B0C5501609188E0783A3F6370348817B23A4B18CB59F25AFB08AC3A16C8874869DEBF6EAA00E85C160D2022DE474381A27149512095A9981BB41538B52791CDB46004C52F15551669AD472A55DB1203042E81B302033DB9E250DAC3200EEB373BE6AF93E3028044E5CE04454841A9C2128A4D8B99D308D415CD151AE07439A214205DE22F0902B773F560A02C262BAEA62C40B1C061417FD1A53BE9C621486C6587B6CB6FC2010B51E1BC1107EE44943EE0554B14242E1619871A1DEB4114352C96035600FBA60F39BACC763A62809A3382BDAC3A7B1042D694793268B75B7782A8A926008218F25108A3C03352E827D300042005D52963EE9410F3204064906AE0E8C3291578DC73E464684C48C1C108309567E8D8B56253AE62C25C2B2E6D873F9B9894E2F27102D88847A9A60F0166108942B43A3E70B32814EAF90C7A46F18746BC43DB825574BC28D24DF1F196E2CC0E28422FEC3CE34E2D38621B20954568B730247D7037BFE60D1E38B6D1DCD36D2366E25853C54C0E6AA6C35204E0C3687122A0C1B6D018A070DB41C480826B39402DD6A39242B243E929A289C145C70347E10EA70F1C766BBB163DA9D51B37F484824348D1312941A4C3C9A3848C72A07AECBD89023D09AE92C414522A8C421354CA8D21D206245945911A893B801EFCE3BB2A1DB0A8480163202E92C394B36469460D44434E2140D4E77D9131A3517F2AD650DCDFB0F143D17E761CE4B9101A4552BF0E807B539471C58B53CF5520DE939AF4DFE1829277FFC5C524EA240C4936C845789088847C816D0C22C3A9C11B905162608145D01080D0A241A400628964057D2CE188C7BE1875743B363187CA8CA0ABCFC83B68F006402FBB400F615CC6500F6E5804BDF2B40339838286841EE86965C7588630052F3A2DC34FE81EA577B1C70681EE50EEF4987C7F529EC75689A0F5171710C73CC67943287CB3A70533836D49F332AC4A104B2F68614C663F686E74CA85A4865866C76708F00424431791850BAF7644E872F221D3E40B0B7CB153258ED113551885CE17951B437BFDACA187CEED748AB320F43EA8811A263ED1B8537AD06272C6805EEC020CF9069740D1148F3B05F203406FF94DC04614C0ED63389DCB5A5776BEB9093ED12D693E9C6F589580EE8A3D892B7FB6BC2DB826BB1D9BAFBC6FD97C59DDEC4850EE1F7FBC59AF1EB771925FAC3F15C5EEC5669357A0F3B36D1464699EDE176741BADD304562F3EDB3673F6E9E3FDF6C6B189B40B04FC90E765D4F459A91072A95B2AE19A6AFA32C2FAE4841EE48F978CF65B855AA890E7A88C745DB97E283A7CE5DEB8AD13629FF6ED69DF8D6DA4B144A4FC6D76C64E5B45683A4DC9CEB1AB3E6E5F3ED24039E49BB4CE3FD36C17D3375AD1BC92E8240C4BD0E0EE78A27C2D24471EAE049266211A621F61887DB3E2DC8836BBFD943A99EDEE2DD3279704AA10AF77C237182CC701B85E3A4E52FF3B015879B4E6AD64CAEB5C85BF0B9A1FD34ACDEBEF1C74368BFD943119E49E64109054B2E1C78C5B82F152E03AD040A4B4C8BC3AAD6C415CD430AAC95E6BB23B47F90BC80565EF3DD115AFD8E9E02ACFE3CB77809659112C262046B4F10C9A43B1D2F2694840B570F99F44A03C74224E99B7F4D122920252542220D8DFBEC2243041F729154DAA4FB38CC11B7F0FE2D4E65E5F745CB4892AA11D362A3FB28C070148B0F6645979E581E0BF9A3DADC62FD82AD0E61D92E25563BE5C147A662406C042ADEF610A605DD3B77348E2359BEF45FED211534A6F7692241EABF3A48641AEFD957491EB71F1D2467FDCAB12038EB4FAE12BDB2A9A8D21C0CCAD3CC58C65B388479CB70DB871E3B2E964B3A32E20F6DE1F04EBBC47487518DF3B4FD411403627308C5DB4E23A0EE4896C97CD97E7351CFE298CAAA59F5C91EC62ECA253CEA2F4E4B5759B14EA348C3F72953DA2471C47D76518077B2FC683E1D0CB38BC65C1FE54807C8464DD2B73F849D79A129C22E43ACA7E6060260312548BB43988A9392344C49CAE9A334A2FA8BEB21F732FAACE0C2179CD4360C5E1F012F82C3DFE8C5A1555AD45BA63F6D2375C84AE1D3512EDD0C2D0B896D4D00A2B5E4BE446058086FBCE9497E1FAFFCCE680C2CCAFEEBC170BF3EF0CE49AB44C058EA9468EB4358064B99E0BCEF59075FB09E6E56E5E71780AB87456F44C7BEF70DF6BBF43A4AA2AD048EFFEE088D3CC2D09AEFF6D01E3252EC237916FAAFF690B6A93299CD2717030A5B2721691F27130D2942D113BADFAE701062A76034B52F6FD960ACEF43ADF2B5DEFB2DB427A1D1C5F6CA32145068A329C3ED0E79477291360BCDA726E4D77A46DB0469EE738AB69C66567DFD6242F2E5DDFDAF94FE2E41E93FDBC3FAC4860E087CEEB31B2C40DC739F0F86DF226D68AD35CB6922742DD84EDB7A1AD61BD3AD6E1C8FDB43D9C88EDA7AD4C7777B307395D2D19D8BE1664F653FD4188F3FD020BA532DC7ED6797A5846A9B8637647198F5DA49EFE4FB4DFEFB720B8AF10CB8A8DAEF4E2672F5FC83BED8BCAC81CBDB8EF21185626BDEFA8AEC294B19F29BB8559FA3090CC2E67082B53CE4091ED18ACF3D7B24D8F135CF212DC628BA60606B56B9C68058308BA6ED34EC4212595FACBFD843F84CE254BA5A693E39EE65BF94E103E83DA850FAC4544539167A0CE68341B9B0200661AA53D058D1825CEE701196E6392C1C5EC57C7566758527A184EB3A583B05CC0E81B0102336F1D61EFC27E44877673E7DF369382F13D2BA0BB7B29A84EF6688E5FD3D4D944D542974C614BEDC510A5D6EDA1F8BF40AD3E9D4D263B06D2CB582F8BCFE3EEB4803C7661D699B4FB38E58E7FB58F6D668BE2D77555B096AF1B505458EEB1E63589097B89C0F1E9C748342B1E0235DE3AFE4FCF224BD904E5EA4273F4DFB593EF0E353FBAC8D8790FC1906612121D196872C1EBB878078307BF80D201D9C20269FE580A1FA93C3C2DF92072A9BD89B6F0EAA712A89A1EAC3BC42F5D0177391FE2E13BAF9B49C6FD9A1A9F562EE2B51CE804F3C99039CF9DA68243310635EA6F592A8A5790F4AA59495F4E921C20F6F72380C430F7DFAD30ABDF27D2237C4E4F465CEB30C3CD4A4CB2720D7059207E8F27F0054441F769A8D869668F94DADF0BACACC732CBDF9A39961A526186267B77A25589ED35A431B616265B48E6EC5420FA118FCDEC5CA56FE8490BC439F4B19BA266A80638862F4019681A839E37499266154BD93FD267FBB8F63A6B49038A796031E9529FA6742ACD8A2AF6EE99468A0BFFC18CA413187FCBCCA53610F2557A95CA5D3249B2FDDEF2E576993275448605AD1A34C475AD1216F7296CA8943EB2AEB151BFCE728AC92867EB9F9CFF8AC2C3FABFEACBD02FA1AD72489EED9C9FA63A9905FACBF3FFBCB7AF5328E485EA7946D52A2BE905F03B7CA91FAFCBB32472A0DB71BB9B97BA6D5124A9E87319067B55C5B0D7760C946CFFF491546681944F704FCF9466E780EF063FD9E6D5492B55AB87FA76CDA4941C3F7A42868C688F5A67CBE9DA1BA5E952C5726AAEFD86E6300DF9C48B83E9497D9DF24217DBC58FF57D5E6C5EACD6FB74DB36F56EF3236C72F56CF56FF3DA06BEE60E5DA7DD7D413052929AA2B1A42732F545AE3538DC15D5A9EF21D412849546B5821E39422DAD2724DD220CAABD5F5CC009D3F6E6A5784262DE9D12E8AD6EE547711A7C9437955C88329B2BD118A70AFE307EA2096CAD03532C2E2E0A2059D7BAF1B7A75CF47A479AC29047013AE303EE0DA8C660BD7860F4521357861F4B2692808A248390B89692DD370BBC649A48D25D2B8D4A8DCB09DE582900FD55536708D47DCBB870C4432A31F832C00F2E40D076FBD341583D457B522ED25189C48F4AB2216B06B746E127E707A27094F19D8FA48F88169EEF37C55CCCE1F618818650DBD44A8E8BFE03B142E0196F389AE6DEAAF319EE4B9C5F1114E287AB482AACD4DEAAB1C55C949FD80D4E949FD6054194A3DC7D2A7271DAE1F35B94927D92B35E93D8F960D27552E80F089AF8A5027C5C20548ED7FE98908EF7A79D2730E47CFE19383BA62D0B6F457B47817D5D155A2E3D2E28658E8AC053F9CB8F324FB4FB21F01D267FF9C4C730393687E552C696F143ADDD14D7A47C727C81C648A3EFA8BB203B8A7E473770E3F6FF2393B8743E9B3757ADCEA37D9826A08F7714A068C464CD1E9794D717C17A16A96CE89909FAE8F716E5E0F5EA1B55745554FD6AF7C2B13E444C808BE2D4D6E1CE99FFFC0500F4809EF5B671C39874537B9DE35C4A4BA0713805EAB47CB0623B845705939870B792E1DA71F365C2E4E3F4007C97C6842CDA365C0855DBC1673443DF85D7166338F9A64F368597A82AD75980ACEE5EAF4717702144CFB95C2351E61BDD4693D975E2CD6CA739BEDD3E324160107283B4B77D9CC81E46E06B093556734AB8EFDF103CA7DF995537D3443389740D36DA5F52DA7586C480ACBA39DF53A1FE6A882B6C98FE969601232622E6E4571E70F28BFE4D172C9A201625C624BD7EEBBA6FEAA4E9D0D735446DCF120FD6C35D6FC89A7A03C5AE614F3580E173B4AEA4A5F50F035882328353FA5EF0DD5D770BEB75F0F682AC9A35D0F6D56CA83B91405B2507AC8517B0F4524BBE3D14EEC8169E84FD055E5E4A638959BE2C9456FC6430898B5F12B177B5DFE474F69552780F45CD74D02484FBFBAD45BC08C22340F6CF5D9E9487566486F55DAA0E1DB415175E2713CFDD0EC8B76A2C0903C516D00274733CB0FB123C7CB5DAEADD766D722EFD67DDD6A12ABBE2EB3A2DD04A2C9EA80B9D6A72B34CFE14CE4039847C6DC917FC4E653CC249C43D16E0A356910C75B7F7D276EB46BDB1DF3BAE312AD29D22844C2525F25E1EA435A76A484DE94D9CCCEB8AFD7FBB8887631FB597CB9583F5788D18352B6920A14F75504F5070514E3039A952A16892FD3242F3212A9F983DF675112443B122B03906A5A2A8725613B9872C915DDD1A4D4FA9421DA75C6D151EDB5032E31BB890C426E3D5B4ED067351D3E8BCF955C8BEF922B76AE2EE8EA655067C0BB247940D45791ABEC83462C4AA9032252154CC251AE933C0E4701296A87E8344B7115949D929B4F791A81D97B829C643BA773F3109E037856EE69EEB971A61122DA05F6114B0E7D8FD284E64FCC11969DA16FB8CCC2117609D50F429AC8671A090BB1EC98658A212DFEE18915BBF4F7BC28C0E65137894F96AD9C277B01FEB27891600646ABCF8C011C43DE4FA99C50A09ACBFEA3FD9625D8D62A28CD9749F8008E8D9F8607B01770A18E7ACA2D38E9B31EA7E79DF7598FD12E13BFF411DAE65110F7599B681FE90C750A02D31D725C26D39F6B6CD51FDDEB2B0B70CDC11E8F97E098995458277E595477ADB96581E3F0BC7BCCECC76017D1B4EC1158506D0B341F8CC80C528E8C8E15BAEF0E76912187A111D9021CEE344C31E0A423107511FE109EA7B8A506E61878B4C5D9037C5EA4566DC592277136D5BC058276B82C7B2CC51700433C294E383E16E0DFCDF39EB5676767BAD917C2486BFB46FD659AB977990BAF59079F17842D52BA27DF669E74DD0B4603E6FE80B783D91861D046D00C7D717EE85E499C5A0CB4E96B7840DDB723E700E441C98314065C5E845B3A8314009238549084EF473EFF68761CB4BB45D77F19E2791B0039C59C376DDDC4F381A41584FAC334F711D67BB1E74CABD962D07E1A822D37C378CE26AFD5792873EEBEE8E69A7981788B0BF91C88CF1F70137188127EB64B05775E6BA8B8A47E97B1833E8354BA0A8FE7C77940A7FC591D309D94FB9E7C4BCE7F81E54B92ECC3EABCF19F0F9701B07C5007C0013C010FC0123CB32458F8E03FA75C1874F65F583CF48F66DF8656D6A081F3A96311F5E1EE0A1EFF791A079601F3E5C520DC88EC7A9348BA3487CC2C3A96E28B598586334F1C90C498FC34B11407CC7696709EFD258F124DEAC725BC4EDAAC938211AAFDF6343C4FC0C49A48577CA2C8455841CAF877BB453244F633A824B4ABE690FB6ACF0C72BA4110E06FA0B0198939908498D3308636BB22DA2547D983E090C9F78AE5B962B65D6318472CB975F0191867B96912523EF2A0C48223BF6BC2135BA2FD2D7A9610D8607289B0240FCC260B06B0C09282A0CF4FB888F3729F1D51E02CEEF3D35026B13490686F73FA32BFAA929254E1595142B3F6749186F47594E5C51529C81DC9551343D9EA8616CA3974BD7AD5A539014E8837C127BA2517EBB07A82A24E96C2972BDC22F623D96094AEA472A837AD1947E950F4AC54FA138BA1EEC41A86DEAA980DA593EA2B04BB0C4D318FA03751A8E8F76520EE9875439D973ECA4B9D93BE0C9C0F2C404CA58E2869543A89E520C5C42A860E1BD9AC74D47C873A00C5B902B88F865460F74510782C8C12A455E7D00A52AA2BC5E884F8C3AA0C862D46DD2AB45C7E8DAB864AA5FA3B48A2DA79D604B9F3705360772510F4CE2BCF045FB86357FA104AA17E349E0A4A57B52B87D247FD19025E97D8701036B57C21CA3F9653DC5A8ED4496E4BC0696E0B0DE0B9A3B7D201570675819EDAF14E7EC344865243DB615DC9CC64A2EEAC742A16433D8A354CBD0909B4D5DE8462B037AE867970BC22A88A60AE1094C35CB9A19F3657ADDA495702F5D015DAEEBFF0E62E166B7761ABED5E493701A91366B545AA64315B5DCC29BC5DA2C36B4BD52E388D15202717CDBFE26ACA64C582FE85A388A2BEB0FE349A0976C7C6B5C555A78D382CA7212B61ECDA91EB83DE7D0601B7E5665F6C5E154C4286262EDB920C5014B778CA95460020BEF0D0DB73BA76C4E0615E779CE787ACD39067667C34B114307ABB24545EB38D88D6B6ADF6A437C6E07166B74B9E24CE1E3612DD301624477D71D1A5ED018820D5C011974F5F15C69A04358A1D946B069FF7860E4FBBA5C955A6D9CEA61EA2CD1686D4F4465A6D238B80FEE3E8C3C5572F52733CC135CF50355B935861DA6D693A0646933C409BB155420865F092C9A61B3A1E9BEC29D1079001CE6500D0C022E9C1C85B12681EAE859FD6EA3B80178CA39F71D8C078C71E281F978E0F168D5E1F86AEB86BF3A6C07ACB86E2B83C8728F1897EA45A9F55EF01CFCECC62D8B161EC7078F208C3960CB355B3EE9BF75081205B60A0A650DC118609D887ABA63AC3AFFB70B98052609858B8E9907527B4E12DD25513D0E23C70380285904169C2C2FCE6609661AA4182061E05BC37BCF5E37918148883C1050FEAF23E9E2D6BFA9D940BFEC2478A4588A90AA38AB036C4699EA1E2414E463571FA399E6F5F45E379002AD8C5FE8C31100186EAB85101D0B8647891C1C00A36E12DA3F1C1CC434705B93E86C35B8ECF314C39180118A5365E6174238074A95CAB2DC88DB1FB7071877B60E096DEF902FACAA57535009D17B9C6F51A82F01BC837239002E5720B17746F569F77E8901B353070A3B7F5088709C80FA06AABBDDFF71C323AD526C762EF799E6BB8807F2C64DC3478D18E6FE1541C236ABAE12E0FF8D0DB57E93A07D0AEEC7C53DFD6371FD8CF829DC21FE8751AD238AFBE9E6F3EEC93F22DD4FAD715CDA3871EC4398399D0407038EDEABC49EED3D6F555C2A8AD223DD377CDC6169282BCCC8AE89E04052B0E689EB3F95EAF7E21F1BE5C3CDB3B1ABE49DEED8BDDBE6043A6DBBBF80B4F8CD27F56D7FFF946C1F9FCDDAEFC958F31048666543E1FFB2EF9691FC56187F76BE0B5400444E998DBBC6C5CCE6551BE70FCF0A583F4364D2C0135E4EBFC893FD2ED2E66C0F277C94DF5C0B03B6E3FE7F45FF481045FD8F7CF5148331C88792244B29F5F45E42123DBBC81D1B7673F190F87DBC7BFFE3F816B467590E60100, '6.1.3-40302');
INSERT INTO `__migrationhistory` VALUES ('201910272002472_cambioInscripcionEncuesta', 'Renacer.Nucleo.Migrations.Configuration', 0x1F8B0800000000000400ED3DD972DC3892EF1BB1FF50518F133D2ABB7B7AA6DB21CD845BB2671C33B21D96FB7853402424739B45D6922C871C1BFB65FBB09FB4BFB0E08D231307C1A34AAEF08355049048243213092033F17FFFF3BFE77F7BDCC6ABCF34CBA334B9583F3F7BB65ED12448C32879B858EF8BFB3FFEB0FEDB5FFFFDDFCE5F85DBC7D52F6DBDEFCA7AAC65925FAC3F15C5EEC56693079FE896E467DB28C8D23CBD2FCE8274BB2161BAF9F6D9B31F37CF9F6F2803B166B056ABF30FFBA488B6B4FAC17E5EA6494077C59EC4D76948E3BCF9CE4A6E2AA8ABB7644BF31D09E8C5FA034DD8FFD9D9DB7D10D374BD7A194784617143E3FBF58A24495A9082E1F8E2E79CDE14599A3CDCECD807127FFCB2A3ACDE3D8973DAE0FEA2AF6E3B8C67DF96C3D8F40D5B50C13E2FD2AD23C0E7DF3574D9C8CD075177DDD18D51EE15A370F1A51C7545BD8BF5CB3CCA0B36B71159AFE4EE5E5CC659595526EF5909252421CDCFFAE6DFACC44ADF747CC1D8A7FCF7CDEA721F17FB8C5E24745F6424FE66F57E7F1747C13FE9978FE9EF34B948F671CC63CBF06565C207F6E97D96EE68567CF940EF9B3144E17AB511DB6DE4865D33AE4D3DB63749F1DDB7EBD55BD639B98B69C70C1C1D6E8A34A37FA709CD4841C3F7A42868C6E6F24D482B722ABD2B7DDDA441949A3A3401799504247B60B3EB0BE88A16248EE9ABCF0C7D4F60342F38847E4AD39892C419CA3D0D3E119E136B70578CDA1F994230C37B4B3E470FD55C49904371A81F685CD5CA3F45BB5A3B701C7C2B557E9DA5DB0F692C088958E7F626DD670143E7636AA8F891CD1C2DECF1CE98626368966336612D540571E66AE830E6ABB9E29BD70CAEC7B4A904E25895E9B0AB2B40789D6F7AADA6D57512DF0F5077028493C643FB4AD2ED5D46DBFED88ACB0C87F5EA9A3CFE8B260FC5A78B35FB933142F448C3F64B83C3CF49C4EC0CD6A8C8F646BDC1A624C8A25D502D8D13F735A2FE1D43F13228A5E9E3BBAA549AF78AE6217557BA10A87F10B6208C03EA27F21F002497E5683ABEEBD7A8C9FA20CA7268BDBAA25A9AB62C03E86941B5DD76357B650D565034365CCB7539A1F87ADD408E1975C815B660A3953A4C5A7CF19AEDC8C65AB245E8C8AA8D563210DAB4765BAF918D56B94CB7FBC46589E49A9DD645B4AF27B82E06A49C79661EF9AE671FA35D3ACA9A262E021EEBE26546094FC3F9D7B3AAE1751A46F75180A062AB9E2A0DF7913CE4A0726205B50E6C6620E7959252A86851B586ABF62CF8D987D43EA7606E85CA9CD647EA28BA13ADE8A53A19111C3426AB7D5294B32B4ABD7874163E2C245DF12D274C1CFBA9C5AAB901D4711515494EFDA559160F5CDE9D50AC0EBD6004AB22988A52914241B91CA29EBDB5D36FE9069C0674AD4F823CBB20CBBBA51D8DE36886AD5F41637A9F26D37714D0781F936CF27EE89644F10CA727A5797795067E6659929530F65BFEFC64429CAFD26D1444F128872C4FCA980C7BC268D749AE1EB44E76C5AA8506D419B408A116EF80C51C47525DAE5CECDE4A2CB42876B520049B420D7A6D0DBFD3F37E2E879C9CB7AD4F6B25DAD71DC9B2688695A53C379ABC975D944F3F14B61E4C4FAE347C9F32F18EFD168190EE465FB3ECB7A6B5026817CE01F22B4038C930CE9153D8BBD6F3DCF8190C98DFAAE5695EE79DD7D33EE6D8F631397D9C9E64F501F665F4F9B43143701E6963168597695290C0F732BEDA59BD657BAA6DC413C06963B6FCFE70AACB7374EF1374C4478F08FB2AF209615BA26C7BA462D70D997E6B5B0307B7B5521182D754DB5987135518B169B6B0356C60FB2A1420288DB26DED257C8055D4363E1946685F27C3E86418D1D2FB251696AF2576B8DD95F0C0FD6DD3FE24ECF30ABBFD6DDD70C7DD93C7EE61A8F1793D762BA13E1C67DBD15C8883FD2EBD8E92683B061CF2E80DE781F1DC3EEAA93C340E649BF2DB47C615B1FBF62720B5D05FEED3DE13F9C939475758BD4914611A01C131A1CEE48FBDD4067A90A335EE616D70ADF6F4A9AE367895542017A29C27745B0DF6A8AE4B31FCF82A8370BC32C66C79FA80EB1087BDC59DF0FF479A910CF37CE2FBEA2BC258B7E55A84BB4A8370E5849DC20873356EA94264B55471D802AA8CED5AAFF7A9B770A6B7F4A2373AB01A5996AFA560D81762087235FC0E45EAC571C88948D9F26447A37DCD64470B96D2150DA26D793FFD3E637F3531FB3FAC57370129C768327CACB9A6513583F8A6697BE21CB4AF3982CA42F2E5DDFDAF94FEDEF5544526F55F1D4DA54F6C5605037932CCCB9E04FB79EEC307C12C1E20005CFB931068FA1A67BF3E42C285277E2B0776F32A09F69413B211424E7193C8D9B2948D228DF1E96404BF270F88B55E96DC0A92DF2328972986AF52C1D5ECC5932AF05095AC0A4AA1967023E45528073A4827960D4FCA10ED6B095B72E0A95B92A51F98ED79E7ADB881D3271FF59DDEF51EA253E8EE01E7618CE9474899130D3AE0C45D316A60980A6C8A25E5577D55940B57E4AA8D85C9F755C7205E90BE1E7EDF38FC3EAA6F7ED27F4BEBBFE9EEA4ECCF63E2D2718C0E3B91A9DB9EF8684A3EB2D2C9F3F9A8348E5166228EE1C3D53018E4C52515293A572EF752B9D784D133D8C7C30E2EBBD62741C1193889FCADA5CF244EB3116CB75FCAE4479843ED21DC43BA33EE6FC3E33324182726D6F4354AB64D4EDB78B372BD41F6E4E11D0FC4EFC45FB7126CFB71036B81C486B75CED7E55402B29EB035E73BC0494721FCA790958C188EA08E7261F18AAC983C72E820770D208685F9940671F69AE21955EE134897CBDB81AB4C671092BE863915ECD9B0F73B193FA21A7CDBCAC00C7CD40B1A202A03AE3E92901BAA2A4D4523D7A63A8271AA4594898EC0DB459780027F5848B6E54ECE3199296CEA81C2AAB47E41F27EBC73EE09906192D067B25F4CD4FFC89F6758AF03945F8D053E8332A1E73863E9F228D07451A6B4354BB35008C53554AD56055B58A97DDF573BE775CD09A16A7350C17D279D6B07D3B7553AF2C31F93CFD68A22D79A0D31B8B593ABDAE9F67899C4DBDBA1E0E94B23DC78900729631E40CC04E75EEB79CE2E4FC58DFE4AF63F2D0BFEC85ABD29B2F7941B7BD0FEC37AB6DCEF62D7174D7ABCF3FD9AACFBBBFFC857C1F7CFFE7E73F7EF727FAEC871F4B0A86348BBF308AF3A313E9714DB777346B7734FB24244C9FFD42E23DFBF94CA19E50FB3A156A3FD7D7FEB8A7395F5D9D1AA1FAAF344CC406DF19E07FDA6742FD3FE9EBBFCE22BEF6F7FADA3784D19EAFFF67954B6A7EE03FBECCCBA3906AD21B38507A4AB1DB5749B8B2C855D97B50738C7FCD5824DA31A660FC7AB1FE8332243DECCE8790F3CEEE938D88B0D5C966EB31CDCA0591C497CCC6612C1A2585BA78474910ED486C46436A6AB9F29733D17522975CD11D4DCA45DB4C60BBDE39F2A86874BD49A6898950E71B8E6D6CB9A94FBE629E71201BCB68DC04E4CEEE615749EAB550078DBDB59CCDD82956F468E3968D6F7ED462FEC389E5484264562992C86BD777B70F5E4482D46CF5D85C6B52D7BB70B80126C03FE2AB3863898F94E20AC310CB77D5A3D7D84FF6834672647120FBB44993080B8CC00C920213D3AEE39E268BC8899C7B4C3FB95A7B6520C32C6AA72028CCC633476A9FC889E1F433ACB54B0672CD7CF688986D4E8F95C60E1938CE85ED0F1089D9A4E308ED0EF44929D4D434BE2F35C862B0EB03E1AA2E31D13436AD019B394C5B03D1ED39AD23D522DC06BFAF89B181E1B14D6ED515D39FD8339AFEA14E4B4E1E89CDB4B8CCC0635A6ADBF5BF2C73597295999DDCF9E820186831CE397A96E1D33D19A618CCFD64629D676767EA1C6B41439BD13AFC70B4632B347D940D9A482E2913216CA9803C573C58E3FBC8133EDEF9440B278AA59435745A5CC8BA6C5F365CA0A6FE1A51D09494611CF02EC7CF58C2066479C070D4A57CE83114E27FEDD7295DA63277D91D2455380A3388134EDC2390232E081D9B5F2822BD9FD73A02C79E5B802076D37A341293A83DCFC01C2AF12C4F446B422CC713BC32D0CE259819C0933FC0E42F568A6A4C5E01B0988B6300A2DA752D906611EE5133E8D82C1C52E0C5A88B9218B1613A8E9C6049121098794512086BD777439625ED3A3EE1A8C1F002B38F8EB0EF865296DA5CA98FBBF106B0986F870090D6D2A4E989B324177139610D930D25881D818780ACB2F229F39466318AC57C2CA412D6E1587949C358DC18DBE823B4C584A7CB0B2B292332B31F311FADCA7A9947795126E620B7A1D5C919D600E2B6BEAE0BABA13DB89E9D8DC46D267C66603613D1ED509088B534BFD92837B8FA24BCB6B04ED363322F8F3D056DA6DF03CA1527E1A845368058FFF372D0916DFFE48C68D8E4A2E9D1B8A3C436F39F3DCB6049D566F63742D098817110B2DAF4CC67CE5B8475F0044AD8745B6453EA275E493566CF56E65C4C503F133197119919D8CC48783B1C38521D04C7E9573A4332AC49386D91854F8BC402DC75644B20944E099B6F6D6EA57EB6C57468F6ECA44BCB34D7D5AE068719784943604B437CC93D1E90F8CA6AAA51D5340A232DA294700CE6E6A223534740120F6C9675193DB859E6124B390402E0A940E68E0640319981937012DB1FABCF1517F0AACA2C508576450917571FD2386DD2A900E9037ECE699341206F9223C82C5142BDA1459BDC8A3B1C78D5E532004E0E14D612E18887AE2A28ED999D028D0A9EB90A30D171D700AB280379141055788F098BFE144845013B215229D3C759A954C162B0D45188A2A98E472C37406BB2382A50404DA9B4EE02435500582422389ECECF181C0DE285ACCE12C67296BCD63E29AB8E05F221529AF76FA52A003A9745038888F7D150A0685C521448652AE6066D054EED4964332D1841F14B459545DAD32395AA6D89010297C0598181EE5C7128ED661087F59B1DF3D7C9710140A271678222A4A0546109C52661E62C0255A2B942039C2E479402A44BFC2541E056AE1E0C94C564C5D594152816382CD82FBA7427DD38048DADACD076F94D386021AA9C37E2C09D88D207BC6A8982C4C522E350A3633D88A286C572C00A60DDF4214797D94E470CD07246B0974D670F42C896324F06ED72EB4E1035D5044010433E0A611478460AFD641A8000A4A03A63CC9D12621E04880C520D1C7D38A5028F7B8EEC0C8D092938180166F20C1DBB566DCA554C986BD5A5EDF0675393525C3E4E001BF528D5F421C00C2A518856C7076E5685423D9F41CFA8FED088776859B08A8E1755BA293EDE529DD90145E885ED67DCA905476C03A4B208ED1686A40FEEE665DEE081631BCD3DDD3262268E3555CCE4A0663A2C45003E8C1627021A6C0B8D010AB71D440C28B89603D4623D2A29A473283D453431B8E878E028DCE1F481C36E6D65D1935AFDE1869E507008293A2625887438799490510E548FBD3751A027C1559298424A855168824AB93144DA8024AB2852237107D0837F7C57A503161529600CC44572987227599A5103D190532810F5795F64CC68D49F8A3514F7376CFC50B49F1D07790A426348EAE500B837451957BC38F59402F19ED464FF0E5794BCFB2FAE2651276148B3412EC2835424E40B6C7320329C1AFC01324A0C2CB0081A02105A348814402C916CA08FA51CF1D817A38D6EC726E65099116CF51979070DDE00E86517E8218CCB18EAC10D8BA0579E76206730D090D0033DADEC18CB10A6E045A765F8095DA3F42EF6D820D015CA9D1E93AF4FCAF3D82A11B4FEE202E298C7387F100ADFEC69C1CC70B6A47919562588A517B43026B31F34373AE54252432CB3E33304780292A14264E1C2AB1D112A4E3E649A5CB0C0173B55E2183D518551E87C51B931B4D7CF1A7AE8DC4EA7D80B42EF831AA861E2138D3BA5072D26670CE8C52EE020DFE012281EC5E34E81FC00D05B7E13B0111570FB184EE7B2D6959D6F6E824F744B9A0FE71B5625A0BB624FE2CA9F2D6F0BAEC96EC7E62BEF5B365F56373B1294EBC71F6FD6ABC76D9CE417EB4F45B17BB1D9E415E8FC6C1B05599AA7F7C559906E37CC90D87CFBECD98F9BE7CF37DB1AC62610CEA76407BBAEA722CDC803954A59D70CD3D751961757A42077A47CBCE732DC2AD544073DC4E3A2ED4BF1C153E7AE75C5689B947F377227BEB5F61285D293F1351B5939ADD5202937E7BAC6AC79F97C3BC98067D22ED378BF4D70DF4C5DEB46B38B201075AF83C3B9E289B034519C3A78D211B108D3107B8CC36D9F16E4C1B5DFECA1544F6FF16E993C38A550857BBE91384166B88DC27192F8CB3C6CC5E1A69D9A35936B4FE42DF8DCD07E1A566FDFF8E321B4DFECA108CF24F3A0848225050796187751E132D04AA0B0C4B438AC4A26AE681E5240569AEF8ED0FE41F20292BCE6BB23B4FA1D3D0558FD796EF512CA2A2584D508D69E209A49B73B5E4C290917AE1E3AE995068E854AD237FF9A3452404A4A84441A1AF7D94587083EE422A9B449F77198232EE1FD5B9C8AE4F745CB6892AA11B362A3FB28C070148B0F46A24B4F2C0F41FEA836B7905FB0D52188ED526AB5331E7C742A06C446A1E26D0F615AD0B57347E33892F54BFFD51E5241637A9F2612A4FEAB8346A6F19E7D95F471FBD14173D6AF1C0B8AB3FEE4AAD1AB3315559B8341799A19CBF8130E61DE32FCEC438F1D17CB256D19F187B67078A75562BACDA8C679DA7E238A01B1D984E26DA751507724CB64BE6CBFB99867714C65D3ACFA640F6317E5121EF51727D15524D6691469F83E65469BA48EB8CF2E06F04ED61FCDA7836176F130D7C738D201B23193F4ED0F61655E688AB0CB10EBA9B98100584C09D2EE10A6E264240D339272FA288DA8FEE2BAC9BD8C3E2BB8F00527B30D83D747C08BE0F0377A71689515F596D94FDB481DB252F8748C4BB7839685D4B62600D15A735F22302C9437DEF4A4BF8F577F67340684B2FF7A30DCAF0FBC73B22A1130963625DAFA10C460A92338EF7BD6C117ACA79B55F9F905E0EA61D11BD1B1EF7D83FD2EBD8E92682B81E3BF3B42238F30B4E6BB3DB4878C14FB489E85FEAB3DA46DAA4C66F3C9E50085C94948DAC7C9C48314A1E809DD6F573808B153309ADA97B76C30D6F7A156F95AEFFD165A93D0E8627B63190A28B4B194E17687BC22B9689B85E65313F26B3DA36D8234F739455B4E33ABBE7E3121F9F2EEFE574A7F97A0F49FED617D624307143EF7D90D16A0EEB9CF07C36F9136B4D69AE53411BA166CA76D3D0DEB8DE956378EC7EDA12C64D32ED7750B6611EFA9221F72D9C108491F35EE212255A24877D9809B3D9555567324FD8106D19D7A1EDD7E761150D48635BC4C8BC3AC2532BD936F4DF9EFCB8929E3195054DBEF4E07EFEAAE0A7D077AD96333EFD3998F2814DB43B3AFE89466A9EB81261AD667C30383B0D9F2602D0F798247BC1BE01E53126E07348F2C2DC628BA10636B56B9C68058308BA6ED34EC4212D90AADBFD843F84CE254BAB0693E39AE65BF944109E8EDAA50FAC4AE2FE508EB31980F06E5C2821884A9F65663C5207219C945589A47B6707815F3D5F9DA159E84D2B8EB60ED14303B04C2428CD844717BF09F9079DD9DF9F4CDA7E1BC4C48162FDCF56AD2C89B21965E0134511651A5D01953F8CA482974B9BF7F2CD22BCCA6534B8FE1C4642909E25F0BF091230D1C1B39D2369F468E58E7FB58F60169BE2D77015C296AF10D07458FEB9E78589097B84C121E9C748342B1E0235DE3AF64FFF2247D9B4EBEA927EF4FFB593EF0ED53FB588E8792FC190661A121D19687AC1EBBE78578307BF865211D9C20269FE530A4FA9383E06FC903958FD89B6F0EA6712AA9A1EAC3BC4AF5D085B9487F9709DD7C5ACE63EDD0CC7A31A396A867C087A3CC61D37C6D343E1A885C2F938549D4D2BC32A552CA4AFBF410E1E73C391C86A1873E286A855EF9EA911B62725234E759069E7FD2652990EB022909745945002AA2CF45CD46434BB4FCA65678B365E639965E12D2CCB052130CDCB3935E0996E7B4D6D046985819ADA39358E879158337BD58D9CA4B11D277E8232C4365A20638862A469F7519889A334E97691246D5EBDB6FF2B7FB3866460B89736A39E05199A27F7CC48A2DFAEA96AE8E06FACB4FAC1C1473C88FB63C15F65032A0CA553A4BB2F9D2FDEE32A036D94785B4A8153DCA24A7151DF22613AA9C8EB4AEB25EB1C17F8EC22A15E9979BFF8CCFCAF2B3EACFDA2BA0AF714D92E89EEDAC3F9606F9C5FAFBB3BFAC572FE388E475A2DA26D1EA0BF98D71ABCCABCFBF2B33AFD270BB919BBBE76F2DA1E4791803D95B4BD96AB8034B617AFE4FAA3042CB20BA87E5CF3772C373801FEB5772A392AC95E0FE9DB26927050DDF93A2A01923D69BF2517886EA7A55B25C99FEBE63BB8D017CB323E1FA50DE7B7F9384F4F162FD5F559B17AB37BFDD36CDBE59BDCBD81CBF583D5BFDF780AEB98D956BF75D534F14A454ABAE6808CDBD50690F9F6A0CEED27297EF084249CD5AC30A19A714D1969632498328AFA4EB99013ABFDDD44A8426D9E9D10A457BEE547711A7C9437955C88329B2BD118A70AFE307EA204465A88C8C201C5C0CA273EF7543AFEEF938370F994200374110E303AE8FD16CE1DAF0A1A8A4060B46AF9B8682208A96B3D098D63A0D3FD738A9B4B1541A9770951BB6B35E10B2ACBAEA06AEF1886BF7908148C7E8C7A00B80EC7BC3C15B8BA67220F55549A4BD0683D3937E55C402568DCE4DC20F4EEF24E1A9035B1F093F30CD7D9EAF89D9F9230C51A3ACA1970A15FD177C87C2A5D572DED1B54DFD2DC6933EB7D83EC2694A8F5651B5194F7D8DA32AE5A91F903AE9A91F8C2AEFA9E758FAA4A7C3EDA326E3E9246BA52669E8D1B2E1A4C605103EF15511EA6458B800A9FD2F3D11E15D2F4F76CEE1D8397CCA51570CDA96FE8616EFA23ABA49745C56DC90133A6BC50FA7033DE9FE93EE4780F4394527B3DCC0D49C5F154BDA1F0A9DEEE826BDA3E3D36E0E3A8A3EFA8BB203B8A7E433820EDF6FF299408743E973807ADCEA37D9826A08F7714A068C464CFCE9794D717C17A16AEECF89909FAE8F716E5E0FDEA0B53745554FD6AF7C2913F444C808BE2D8FDC38D23FFF81A11E9012DEB7CE38720E8B6E7ABD6B8869750F2600BD568F960D46708BE0727D0E57F25C924F3F6CB80C9F7E800E92F9D0349D47CB800BBB782DE6887AF0ABE254E6809C62747C4F2A355FE7D14AC704ABF4306B9E4BFBE9E33905D8AAF642C7351E41F4EA0CA14BCB9DB51DDE260EF5D8D445C05ECCEED0BC6CE64072B7B3B4D301D1680744F63B19288DE6574EF5D1CED4B95C9C6E92D6B79C42D8906C98473BEB756ACD51156D936AD3F3AC4A48AEB9F8818C3B7F40A92A8F964B168D35E37264BA76DF35F53775EAC49AA332E28E07E977EC63CD9F7836CBA3654E3125E670B5A364C1F40505DFA8388252535DFA5E767D0D4705F6F28066A53C5A7968135C1ECCFD2A90D0D2438FDA3B3B2289228F76620FCC427F825E2F278FC7A93C1E4FDE7E336E42C004905FB9DAEB52497A6AAB3A97A4A75C37B9243D5DF4526F05338AD23C30E9B3B391EA2493DEA6B4C1C2B783A2DAC4E3380DA2891CED5481210FA3DA00CEB366D61F62478EF7C45C5BAFC5AE45DEADFBBAD524A7FABA248D761388E6BD03E65A9FF9D03C8733910F601E197347FE119B4F3193703A46BB29D464541C4FFEFA4EDC68D7B63B66B9E372B629DA2844225C5F25E1EA435A76A444F19489D1CEB8AFD7FBB8887631FB597CB9583F5788D1835296920A14F75504F5070514E3039A952616892FD3242F3212A9A988DF675112443B122B03906A5A1A8725613B9872C915DDD1A4B4FA9421DA75C6D151EDB5032E31BB890C429A3E5B4ED027481D3E8BCF95B48DEF922BB6AF2EE8EA655027D3BB247940D4679BAB4486462C4AAD032252154CC251AE933C0E4701D96E87D8344B711594E8929B4F791A81D97B829C643BA773F3109E4E7856EE69EEB971A61182E305F6114B0E7D8DD244F94FCC11969DA1CFC1CCC21176B9D90F429BC87B1A090BB1EC98758A21C3FEE1A915BB4CFABC2AC0E65137894F96AD9C277B01FEB278DC600646ABF78C011C8EDE4FA99C9BA09ACBFEA3FD92259CAD55509A2F93F0011C663F0D0F608FE9421DF5945B70D267DD4ECF3BEFB36EA35D267EE92DB4CDFB22EEB336D13AD21DD429084CB7C971994C7FAEB1357F740FB92CC03507BB3D5E82636632619DF86551DBB5E69605B6C3F3AE31B36F835D54D3B25B60C1B42DD0D432223348E9363A56E8BE3B9C8B0CD90C8DC816E070A7618A013B1D81A88BF087F0D2C52D3530C7C0AD2DCE1EE04B25B5692B963C89BDA9E65911B4C365D96329BE0018E24971C2F1B100FF049FF7AC3D3B3BD3CDBE10465A9F6FD45FA6997B97B9F09A75F0A542F8444AF77ADCCC93AE7B0C69C0DC1FF072301B230C5A089AA12FCE0FDD838B53AB8136130E0FA8FB76E41C80BC4D7990CA80CB8B704B67D0024012870A92F0FDC8E71F4DB48376B7A8FC97219EB701909ECC79D1D64D3C1F485A41A83F4C731F61BD167BCEB49A2D06EDA721D872338CA77FF292CE43997377A19B6BE605E22DAEE473203E7FC04DC4216AF8D92E15DC79ADA1E292F65DC636FA0C52E92A3C9E1FE701EDF26775C07432EE7BF22D39FF05962F493A1F56E78DFF7CB80C80E5833A000EE009780027C1336B828537FE73EA85417BFF85D543FFFEF66D68751A34703E752CA2BE015EC1E33F4FE3C03260BEBC18841B915D6F124997E6909955C7527C31ABD270E68903D21893EF2696E280D9F612CEB3BFE456A249FDB884D7499B755238846ABF3D0DCF1330B126D2159F287211569032FEDD6E910C91FD0C2A09EDAA39E4BEDA33839C6E1004F81BA86C46620E2421E6348CA1CDAE8876C951F6203864F2B56279AE986DD518C6114B2E1D7C06C6596E9A84948F3C28B1E0C8EF9AF0C496687F8BEE250436985C232CC903B3E982012CB0A422E8F3132EE2BCDC674714388BFBFC348C492C0D24DADB9CBECCAFAAA42455785694D0ACDD5DA4217D1D657971450A724772F588A16C75430B651FBA5EBDEAD29C003BC49BE013DD928B75583D4151274BE1CB156E11FB91CE6094AEA472A837ED318ED2A1E859A9F4271643DD89350CBD55311B4A27D5570876199A621E417F44A1A2DF9781B863A71BEABCF4515EEA9CF465E07C6001622A75444DA3D2492C072926563174D8E866A5A3E63BD401A8CE15C07D34A402BB2F82C063619420AD3A875690525D294627C41F5665304C18755268297E8DAB864AA5FA3B48A2DA79D604B9F3705360772510F4CE2BCF045FB86357FA104AA17E349E0A4A57B52B87D247FD19025E97D8701036B57C21CA3F9653DC9E1CA993DC9680D3DC161AC0735B6FA503AE0CEA02DDB5E39DFC86A90CA586B6C3BA9299C944DB59E9542C867A146B987A131268ABBD09C5606F5C0DF3E078435055C15C21A887B972433F6DAE5AB593AE04EAA12BB45D7FE1C55D2CD6AEC256CBBD926E023227CC668B54C962B6BA985378B94487D796AA5D70162B404E2E9A7FC5D594C98A05FD0B5B11C57C61FD692C13EC8E8D6B8B9B4E1B71584E4356C2D8B523D707BDFB0C026ECBCDBED8BC2A98840C4D5CB62519A0286E71972B8D00407CE1A1B7FB74ED88C1CDBC6E3BCF0F596721CFCCF868622960F47649A8BC661B51AD6D5BED4E6F8CC1E3CC6E973C499C3D6C24BA612C488EFAE2A24BDB031041AA81232EEFBE2A8C35096A947350AE19BCDF1B3A3CED9226579966399B7A88364B1852D31B69B58DAC02FA8FA30F17975EA4E6788A6B9EA16A9626B1C2B4CBD2740C8C2679801663AB8410CAE0A5239B6EE8786CB2A7461F400638970140038BA407232F49E0F170ADFCB4A7BE0378C138FA19870D8C77EC81F271E9F860D1E8F561E88AAB367F14582FD9501C97E710253ED18F54EBB3EA3DE0D999590C3B368C1D0E4F1E61D8D2C16CD5ACFBE63D5420C81618A8291477846102E7C35553DDC1AFFB70B98052609858B8E910B913DAF027D25513F0C479E070040A2183D28485F9CDC12CC35483040D3C0A786F78DBC7F330281007832B1ED4E57DBCB3ACE957522EF80B1F291621A61A8C2AC2DA10A779868A073919CDC4E9E778BE75158DE701A86017FB33C6400418AAE3460540E392E14506032BD884B78CC607330F1D55E4FA180E6F3D3EC730E560046094DA7885D10F01A44BE5DA6C416E8CDD878B3BDC0303B7F4CE17D0572EADAB01E8BCC835AED71084DF40BE19811428975BB8A07BB3FABC4387DCA881811BBDAD47D84C407E00555BEDFDBEE790D1A93639167BCFF35CC305FC63A1C34D8317EDF8279C8A63444D37DCE5011F7AFB2A5DE700DA959D6FEADBFAE603FB59B05DF803BD4E431AE7D5D7F3CD877D52BE855AFFBAA279F4D083386730131A080EA75D9D37C97DDABABE4A18B555A467FAAED9D8425290975911DD93A060C501CD7336DFEBD52F24DE97C2B3BDA3E19BE4DDBED8ED0B3664BABD8BBFF0C428FD6775FD9F6F149CCFDFEDCA5FF91843606846E5F3B1EF929FF6511C7678BF065E0B4440948EB9CDCBC6E55C16E50BC70F5F3A486FD3C4125043BECE9FF823DDEE62062C7F97DC540F0CBBE3F6734EFF451F48F0857DFF1C8534C38198274224FBF955441E32B2CD1B187D7BF693F170B87DFCEBFF033A107D5B7FE70100, '6.1.3-40302');

/*
Navicat MySQL Data Transfer

Source Server         : LocalHost
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : renacer

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-11-30 18:31:41
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `asistencia` VALUES ('20', '1', '1', '5', '0', '2019-11-11 03:11:29');
INSERT INTO `asistencia` VALUES ('21', '3', '1', '5', '0', '2019-11-11 03:11:29');
INSERT INTO `asistencia` VALUES ('22', '3', '1', '6', '0', '2019-11-11 03:11:38');
INSERT INTO `asistencia` VALUES ('23', '2', '1', '6', '0', '2019-11-11 03:11:38');
INSERT INTO `asistencia` VALUES ('24', '10', '1', '6', '0', '2019-11-11 03:11:38');
INSERT INTO `asistencia` VALUES ('25', '1', '1', '7', '0', '2019-11-11 03:11:46');
INSERT INTO `asistencia` VALUES ('26', '10', '1', '7', '0', '2019-11-11 03:11:46');
INSERT INTO `asistencia` VALUES ('27', '3', '1', '7', '0', '2019-11-11 03:11:46');
INSERT INTO `asistencia` VALUES ('28', '1', '1', '8', '0', '2019-11-11 03:11:57');
INSERT INTO `asistencia` VALUES ('29', '10', '1', '8', '0', '2019-11-11 03:11:57');
INSERT INTO `asistencia` VALUES ('30', '4', '1', '11', '0', '2019-11-11 03:12:07');
INSERT INTO `asistencia` VALUES ('31', '11', '1', '11', '0', '2019-11-11 03:12:07');
INSERT INTO `asistencia` VALUES ('32', '4', '1', '12', '0', '2019-11-11 03:12:13');
INSERT INTO `asistencia` VALUES ('33', '1', '1', '12', '0', '2019-11-11 03:12:13');
INSERT INTO `asistencia` VALUES ('34', '1', '1', '25', '0', '2019-11-11 03:12:46');
INSERT INTO `asistencia` VALUES ('35', '4', '1', '25', '0', '2019-11-11 03:12:46');
INSERT INTO `asistencia` VALUES ('36', '11', '1', '25', '0', '2019-11-11 03:12:46');
INSERT INTO `asistencia` VALUES ('37', '14', '1', '26', '0', '2019-11-11 03:12:52');
INSERT INTO `asistencia` VALUES ('38', '1', '1', '26', '0', '2019-11-11 03:12:52');
INSERT INTO `asistencia` VALUES ('39', '4', '1', '26', '0', '2019-11-11 03:12:52');
INSERT INTO `asistencia` VALUES ('40', '14', '1', '27', '0', '2019-11-11 03:12:58');
INSERT INTO `asistencia` VALUES ('41', '11', '1', '27', '0', '2019-11-11 03:12:58');
INSERT INTO `asistencia` VALUES ('43', '1', '1', '39', '0', '2019-11-11 03:13:05');
INSERT INTO `asistencia` VALUES ('44', '4', '1', '39', '0', '2019-11-11 03:13:05');
INSERT INTO `asistencia` VALUES ('45', '4', '1', '59', '0', '2019-11-13 00:15:15');
INSERT INTO `asistencia` VALUES ('46', '1', '1', '59', '0', '2019-11-13 00:15:15');
INSERT INTO `asistencia` VALUES ('47', '12', '1', '59', '0', '2019-11-13 00:15:15');
INSERT INTO `asistencia` VALUES ('48', '3', '1', '59', '0', '2019-11-13 00:15:15');
INSERT INTO `asistencia` VALUES ('49', '10', '1', '59', '0', '2019-11-13 00:15:15');
INSERT INTO `asistencia` VALUES ('50', '2', '1', '59', '0', '2019-11-13 00:15:15');
INSERT INTO `asistencia` VALUES ('51', '1', '1', '60', '0', '2019-11-13 00:24:51');
INSERT INTO `asistencia` VALUES ('52', '3', '1', '60', '0', '2019-11-13 00:24:51');
INSERT INTO `asistencia` VALUES ('53', '2', '1', '60', '0', '2019-11-13 00:24:51');
INSERT INTO `asistencia` VALUES ('54', '10', '1', '60', '0', '2019-11-13 00:24:51');
INSERT INTO `asistencia` VALUES ('55', '12', '1', '60', '0', '2019-11-13 00:24:51');
INSERT INTO `asistencia` VALUES ('56', '2', '3', '13', '0', '2019-11-17 18:44:14');
INSERT INTO `asistencia` VALUES ('57', '2', '3', '14', '0', '2019-11-17 18:44:17');
INSERT INTO `asistencia` VALUES ('58', '2', '3', '15', '0', '2019-11-17 18:44:20');
INSERT INTO `asistencia` VALUES ('59', '2', '3', '16', '0', '2019-11-17 18:44:23');
INSERT INTO `asistencia` VALUES ('60', '2', '3', '17', '0', '2019-11-17 18:44:26');
INSERT INTO `asistencia` VALUES ('61', '2', '3', '18', '0', '2019-11-17 18:44:30');
INSERT INTO `asistencia` VALUES ('62', '2', '3', '19', '0', '2019-11-17 18:44:32');
INSERT INTO `asistencia` VALUES ('63', '2', '3', '20', '0', '2019-11-17 18:44:36');
INSERT INTO `asistencia` VALUES ('64', '4', '1', '28', '0', '2019-11-21 22:38:18');
INSERT INTO `asistencia` VALUES ('65', '1', '1', '28', '0', '2019-11-21 22:38:18');
INSERT INTO `asistencia` VALUES ('66', '11', '1', '28', '0', '2019-11-21 22:38:18');
INSERT INTO `asistencia` VALUES ('67', '1', '1', '29', '0', '2019-11-21 22:38:25');
INSERT INTO `asistencia` VALUES ('68', '14', '1', '29', '0', '2019-11-21 22:38:25');
INSERT INTO `asistencia` VALUES ('69', '11', '1', '29', '0', '2019-11-21 22:38:25');
INSERT INTO `asistencia` VALUES ('70', '4', '1', '30', '0', '2019-11-22 01:23:39');
INSERT INTO `asistencia` VALUES ('71', '1', '1', '30', '0', '2019-11-22 01:23:39');
INSERT INTO `asistencia` VALUES ('72', '14', '1', '30', '0', '2019-11-22 01:23:39');
INSERT INTO `asistencia` VALUES ('73', '11', '1', '40', '0', '2019-11-22 01:24:21');
INSERT INTO `asistencia` VALUES ('74', '1', '1', '40', '0', '2019-11-22 01:24:21');
INSERT INTO `asistencia` VALUES ('75', '4', '1', '40', '0', '2019-11-22 01:24:21');
INSERT INTO `asistencia` VALUES ('76', '11', '1', '41', '0', '2019-11-22 01:24:26');
INSERT INTO `asistencia` VALUES ('77', '1', '1', '41', '0', '2019-11-22 01:24:26');
INSERT INTO `asistencia` VALUES ('78', '1', '1', '61', '0', '2019-11-26 17:04:47');
INSERT INTO `asistencia` VALUES ('79', '3', '1', '61', '0', '2019-11-26 17:04:47');
INSERT INTO `asistencia` VALUES ('80', '4', '1', '61', '0', '2019-11-26 17:04:47');
INSERT INTO `asistencia` VALUES ('81', '2', '1', '61', '0', '2019-11-26 17:04:47');
INSERT INTO `asistencia` VALUES ('82', '10', '1', '61', '0', '2019-11-26 17:04:47');
INSERT INTO `asistencia` VALUES ('83', '12', '1', '61', '0', '2019-11-26 17:04:47');
INSERT INTO `asistencia` VALUES ('84', '3', '1', '69', '0', '2019-11-26 17:05:22');
INSERT INTO `asistencia` VALUES ('85', '11', '1', '69', '0', '2019-11-26 17:05:22');
INSERT INTO `asistencia` VALUES ('86', '15', '1', '69', '0', '2019-11-26 17:05:22');
INSERT INTO `asistencia` VALUES ('87', '1', '1', '69', '0', '2019-11-26 17:05:22');
INSERT INTO `asistencia` VALUES ('88', '4', '1', '69', '0', '2019-11-26 17:05:22');
INSERT INTO `asistencia` VALUES ('89', '1', '1', '31', '0', '2019-11-26 17:11:49');
INSERT INTO `asistencia` VALUES ('90', '14', '1', '31', '0', '2019-11-26 17:11:49');
INSERT INTO `asistencia` VALUES ('91', '11', '1', '31', '0', '2019-11-26 17:11:49');
INSERT INTO `asistencia` VALUES ('92', '4', '1', '31', '0', '2019-11-26 17:11:49');
INSERT INTO `asistencia` VALUES ('93', '4', '1', '42', '0', '2019-11-29 01:04:07');
INSERT INTO `asistencia` VALUES ('94', '1', '1', '42', '0', '2019-11-29 01:04:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of contacto
-- ----------------------------
INSERT INTO `contacto` VALUES ('1', 'juan', 'jose', '3432324324', '242143134', 'juan@juan.com', 'Hermano/a');
INSERT INTO `contacto` VALUES ('2', 'Javier', 'Jimenez', '3543604130', '', '', 'Hijo/a');
INSERT INTO `contacto` VALUES ('3', 'Agua Sacha', 'JIMENEZ', '03543604130', '', '', 'Madre');
INSERT INTO `contacto` VALUES ('4', 'Agua Sacha', 'JIMENEZ', '03543604130', '', '', 'Madre');
INSERT INTO `contacto` VALUES ('5', 'Maria', 'Antonieta', '23423423', '', '', 'Pareja');
INSERT INTO `contacto` VALUES ('6', 'JOse', 'Gomez', '3232232323', '', '', 'Hermano/a');
INSERT INTO `contacto` VALUES ('7', 'JOse', 'Gomez', '3232232323', '', '', 'Hermano/a');
INSERT INTO `contacto` VALUES ('8', 'Agua Sachan8744', 'Jimenez', '03543604130', '', '', 'Nieto/a');
INSERT INTO `contacto` VALUES ('9', 'Agua Sacha 8744', 'Matias', '03543403668', '', '', 'Hijo/a');
INSERT INTO `contacto` VALUES ('10', 'Susana', 'Perez', '3543605212', '', '', 'Hijo/a');
INSERT INTO `contacto` VALUES ('11', 'Amelia', 'Santa', '351403423', '', '', 'Hermano/a');
INSERT INTO `contacto` VALUES ('12', 'JAvier', 'Jimenez', '3423423', '', '', 'Hijo/a');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `cuotas` VALUES ('20', 'Cuota 1', '500.00', '9');
INSERT INTO `cuotas` VALUES ('21', 'Cuota 2', '500.00', '9');
INSERT INTO `cuotas` VALUES ('22', 'Cuota 3', '500.00', '9');
INSERT INTO `cuotas` VALUES ('23', 'Cuota 4', '500.00', '9');
INSERT INTO `cuotas` VALUES ('24', 'Cuota 1', '1000.00', '10');
INSERT INTO `cuotas` VALUES ('25', 'Cuota 2', '1000.00', '10');
INSERT INTO `cuotas` VALUES ('26', 'Cuota 3', '1000.00', '10');
INSERT INTO `cuotas` VALUES ('27', 'Cuota 1', '1000.00', '11');
INSERT INTO `cuotas` VALUES ('28', 'Cuota 2', '1000.00', '11');
INSERT INTO `cuotas` VALUES ('29', 'Cuota 1', '1000.00', '12');
INSERT INTO `cuotas` VALUES ('30', 'Cuota 2', '1000.00', '12');
INSERT INTO `cuotas` VALUES ('31', 'Cuota 3', '1000.00', '12');
INSERT INTO `cuotas` VALUES ('32', 'Cuota 1', '2500.00', '13');
INSERT INTO `cuotas` VALUES ('33', 'Cuota 2', '2500.00', '13');
INSERT INTO `cuotas` VALUES ('34', 'Cuota 1', '900.00', '14');
INSERT INTO `cuotas` VALUES ('35', 'Cuota 2', '900.00', '14');

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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of detalleevento
-- ----------------------------
INSERT INTO `detalleevento` VALUES ('1', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-14 10:00:00', '2019-10-14 12:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('2', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-16 12:00:00', '2019-10-16 14:00:00', null, 'Nuevo', 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('3', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-21 10:00:00', '2019-10-21 12:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('4', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-23 12:00:00', '2019-10-23 14:00:00', null, 'Nuevo', 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('5', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-28 10:00:00', '2019-10-28 12:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('6', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-10-30 12:00:00', '2019-10-30 14:00:00', null, 'Nuevo', 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('7', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-11-04 10:00:00', '2019-11-04 12:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('8', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '1', '1', '1', '2019-11-06 12:00:00', '2019-11-06 14:00:00', null, 'Nuevo', 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('9', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '1', '2', '1', '2019-10-17 14:00:00', '2019-10-17 16:00:00', null, 'Nuevo', 'Jueves', '1');
INSERT INTO `detalleevento` VALUES ('10', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '1', '2', '1', '2019-10-21 14:00:00', '2019-10-21 16:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('11', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '1', '2', '1', '2019-10-24 14:00:00', '2019-10-24 16:00:00', null, 'Nuevo', 'Jueves', '1');
INSERT INTO `detalleevento` VALUES ('12', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '1', '2', '1', '2019-10-28 14:00:00', '2019-10-28 16:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('13', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-10-22 16:00:00', '2019-10-22 18:00:00', null, 'Nuevo', 'Martes', '1');
INSERT INTO `detalleevento` VALUES ('14', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-10-25 16:00:00', '2019-10-25 18:00:00', null, 'Nuevo', 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('15', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-10-29 16:00:00', '2019-10-29 18:00:00', null, 'Nuevo', 'Martes', '1');
INSERT INTO `detalleevento` VALUES ('16', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-01 16:00:00', '2019-11-01 18:00:00', null, 'Nuevo', 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('17', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-05 16:00:00', '2019-11-05 18:00:00', null, 'Nuevo', 'Martes', '1');
INSERT INTO `detalleevento` VALUES ('18', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-08 16:00:00', '2019-11-08 18:00:00', null, 'Nuevo', 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('19', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-12 16:00:00', '2019-11-12 18:00:00', null, 'Nuevo', 'Martes', '1');
INSERT INTO `detalleevento` VALUES ('20', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-15 16:00:00', '2019-11-15 18:00:00', null, 'Nuevo', 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('21', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-19 16:00:00', '2019-11-19 18:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('22', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-22 16:00:00', '2019-11-22 18:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('23', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '3', '3', '1', '2019-11-26 16:00:00', '2019-11-26 18:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('24', 'Campaña Vacunación ', 'Campaña para vacunar a menores de edad', '3', '4', '1', '2019-10-21 20:00:00', '2019-10-21 22:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('25', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-01 19:00:00', '2019-11-01 20:00:00', null, 'Nuevo', 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('26', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-04 19:00:00', '2019-11-04 21:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('27', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-08 19:00:00', '2019-11-08 20:00:00', null, 'Nuevo', 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('28', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-11 19:00:00', '2019-11-11 21:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('29', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-15 19:00:00', '2019-11-15 20:00:00', null, 'Nuevo', 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('30', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-18 19:00:00', '2019-11-18 21:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('31', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-22 19:00:00', '2019-11-22 20:00:00', null, 'Nuevo', 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('32', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-25 19:00:00', '2019-11-25 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('33', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-11-29 19:00:00', '2019-11-29 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('34', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-02 19:00:00', '2019-12-02 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('35', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-06 19:00:00', '2019-12-06 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('36', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-09 19:00:00', '2019-12-09 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('37', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-13 19:00:00', '2019-12-13 20:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('38', 'Baile de salsa', 'Aprender a bailar salsa.', '1', '5', '2', '2019-12-16 19:00:00', '2019-12-16 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('39', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-06 15:00:00', '2019-11-06 17:00:00', null, 'Nuevo', 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('40', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-12 14:00:00', '2019-11-12 16:00:00', null, 'Nuevo', 'Martes', '1');
INSERT INTO `detalleevento` VALUES ('41', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-13 15:00:00', '2019-11-13 17:00:00', null, 'Nuevo', 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('42', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '1', '6', '2', '2019-11-19 14:00:00', '2019-11-19 16:00:00', null, 'Nuevo', 'Martes', '1');
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
INSERT INTO `detalleevento` VALUES ('53', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-04 14:00:00', '2019-11-04 16:00:00', '2019-11-02 23:23:45', 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('54', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-06 16:00:00', '2019-11-06 18:00:00', '2019-11-02 23:23:45', 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('55', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-11 14:00:00', '2019-11-11 16:00:00', '2019-11-02 23:23:45', 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('56', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-13 16:00:00', '2019-11-13 18:00:00', '2019-11-02 23:23:45', 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('57', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-18 14:00:00', '2019-11-18 16:00:00', '2019-11-02 23:23:45', 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('58', 'Taller de prueba', 'Es un taller de prueba', '1', '8', '2', '2019-11-20 16:00:00', '2019-11-20 18:00:00', '2019-11-02 23:23:45', 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('59', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-11-11 10:00:00', '2019-11-11 12:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('60', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-11-11 14:00:00', '2019-11-11 16:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('61', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-11-18 10:00:00', '2019-11-18 12:00:00', null, 'Nuevo', 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('62', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-11-18 14:00:00', '2019-11-18 16:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('63', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-11-25 10:00:00', '2019-11-25 12:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('64', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-11-25 14:00:00', '2019-11-25 16:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('65', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-12-02 10:00:00', '2019-12-02 12:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('66', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-12-02 14:00:00', '2019-12-02 16:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('67', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-12-09 10:00:00', '2019-12-09 12:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('68', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '9', '2', '2019-12-09 14:00:00', '2019-12-09 16:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('69', 'Curso excel avanzado', 'Se aprenderán funciones avanzadas de excel', '1', '10', '2', '2019-11-21 16:00:00', '2019-11-21 20:00:00', null, 'Nuevo', 'Jueves', '1');
INSERT INTO `detalleevento` VALUES ('70', 'Curso excel avanzado', 'Se aprenderán funciones avanzadas de excel', '1', '10', '2', '2019-11-28 16:00:00', '2019-11-28 20:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('71', 'Curso excel avanzado', 'Se aprenderán funciones avanzadas de excel', '1', '10', '2', '2019-12-05 16:00:00', '2019-12-05 20:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('72', 'Curso excel avanzado', 'Se aprenderán funciones avanzadas de excel', '1', '10', '2', '2019-12-12 16:00:00', '2019-12-12 20:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('73', 'Curso excel avanzado', 'Se aprenderán funciones avanzadas de excel', '1', '10', '2', '2019-12-19 16:00:00', '2019-12-19 20:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('74', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-11-15 19:00:00', '2019-11-15 21:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('75', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-11-18 19:00:00', '2019-11-18 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('76', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-11-22 19:00:00', '2019-11-22 21:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('77', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-11-25 19:00:00', '2019-11-25 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('78', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-11-29 19:00:00', '2019-11-29 21:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('79', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-12-02 19:00:00', '2019-12-02 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('80', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-12-06 19:00:00', '2019-12-06 21:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('81', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-12-09 19:00:00', '2019-12-09 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('82', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-12-13 19:00:00', '2019-12-13 21:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('83', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '3', '11', '5', '2019-12-16 19:00:00', '2019-12-16 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('84', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '12', '6', '2019-11-28 20:00:00', '2019-11-28 22:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('85', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '12', '6', '2019-12-03 20:00:00', '2019-12-03 22:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('86', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '12', '6', '2019-12-05 20:00:00', '2019-12-05 22:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('87', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '12', '6', '2019-12-10 20:00:00', '2019-12-10 22:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('88', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '12', '6', '2019-12-12 20:00:00', '2019-12-12 22:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('89', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '12', '6', '2019-12-17 20:00:00', '2019-12-17 22:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('90', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '12', '6', '2019-12-19 20:00:00', '2019-12-19 22:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('91', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '12', '6', '2019-12-24 20:00:00', '2019-12-24 22:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('92', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '12', '6', '2019-12-26 20:00:00', '2019-12-26 22:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('93', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '2', '13', '6', '2019-11-26 09:00:00', '2019-11-26 12:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('94', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '2', '13', '6', '2019-11-30 09:00:00', '2019-11-30 12:00:00', null, 'Nuevo', 'Sabado', '0');
INSERT INTO `detalleevento` VALUES ('95', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '2', '13', '6', '2019-12-03 09:00:00', '2019-12-03 12:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('96', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '2', '13', '6', '2019-12-07 09:00:00', '2019-12-07 12:00:00', null, 'Nuevo', 'Sabado', '0');
INSERT INTO `detalleevento` VALUES ('97', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '2', '13', '6', '2019-12-10 09:00:00', '2019-12-10 12:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('98', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '2', '13', '6', '2019-12-14 09:00:00', '2019-12-14 12:00:00', null, 'Nuevo', 'Sabado', '0');
INSERT INTO `detalleevento` VALUES ('99', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '2', '13', '6', '2019-12-17 09:00:00', '2019-12-17 12:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('100', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '2', '13', '6', '2019-12-21 09:00:00', '2019-12-21 12:00:00', null, 'Nuevo', 'Sabado', '0');
INSERT INTO `detalleevento` VALUES ('101', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '2', '13', '6', '2019-12-24 09:00:00', '2019-12-24 12:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('102', 'CORTINERIA Y DECORACION', 'Es un taller que nos permite aprender de cortinas y su decoración', '3', '14', '6', '2019-12-09 19:00:00', '2019-12-09 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('103', 'CORTINERIA Y DECORACION', 'Es un taller que nos permite aprender de cortinas y su decoración', '3', '14', '6', '2019-12-11 19:00:00', '2019-12-11 21:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('104', 'CORTINERIA Y DECORACION', 'Es un taller que nos permite aprender de cortinas y su decoración', '3', '14', '6', '2019-12-16 19:00:00', '2019-12-16 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('105', 'CORTINERIA Y DECORACION', 'Es un taller que nos permite aprender de cortinas y su decoración', '3', '14', '6', '2019-12-18 19:00:00', '2019-12-18 21:00:00', null, 'Nuevo', 'Miercoles', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of domicilio
-- ----------------------------
INSERT INTO `domicilio` VALUES ('1', 'Alberdi', 'Juan del campillo', '1', '50', '5000', 'A');
INSERT INTO `domicilio` VALUES ('2', 'La Floresta', 'bernis', '1', '3567', '5008', '1');
INSERT INTO `domicilio` VALUES ('3', 'Alta Cordoba', 'Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- Córdoba, capital (domicilio de contacto)', '1', '8744', '5018', 'Cordoba');
INSERT INTO `domicilio` VALUES ('4', 'Alta Cordoba', 'Agua Sacha', '1', '500', '5000', 'A');
INSERT INTO `domicilio` VALUES ('5', 'Alta Cordoba', 'Agua Sacha', '1', '500', '5000', 'A');
INSERT INTO `domicilio` VALUES ('6', 'Ayacucho', 'Agua Sacha', '1', '50', '5000', 'A');
INSERT INTO `domicilio` VALUES ('7', 'Alta Cordoba', 'Agua Sacha', '1', '550', '5000', 'A');
INSERT INTO `domicilio` VALUES ('8', 'Alta Cordoba', 'Agua Sacha', '1', '550', '5000', 'A');
INSERT INTO `domicilio` VALUES ('9', 'Jardín', 'Agua Sacha', '', '323', '5000', '');
INSERT INTO `domicilio` VALUES ('10', 'La Floresta', 'Agua Sacha', '1', '550', '5000', 'a');
INSERT INTO `domicilio` VALUES ('11', 'Juniors', 'Agua Sacha', '1', '1', '5000', '1');
INSERT INTO `domicilio` VALUES ('12', 'La France', 'Agua Sacha 8744- Pta Baja- Dto \"A\" -Barrio Villa Rivera Indarte- Córdoba, capital (domicilio de contacto)', '', '550', '5018', '');
INSERT INTO `domicilio` VALUES ('13', 'Chateau Carreras', 'Agua Sacha', '1', '8744', '5000', '1');

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
  `estado` longtext,
  `Tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_idTipoDoc` (`idTipoDoc` DESC) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio` DESC) USING BTREE,
  KEY `FK_Encargado_Domicilio_idDomicilio` (`idDomicilio`),
  KEY `FK_Encargado_TipoDocumento_idTipoDoc` (`idTipoDoc`),
  KEY `IX_Tag_id` (`Tag_id` DESC) USING BTREE,
  KEY `FK_Encargado_Tags_Tag_id` (`Tag_id`),
  CONSTRAINT `FK_Encargado_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Encargado_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `FK_Encargado_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of encargado
-- ----------------------------
INSERT INTO `encargado` VALUES ('1', 'Juan', 'Gutierrez', '351503140', '351503140', 'juangutierrez@gmail.com', '2', '23423234', '1', '0001-01-01 00:00:00', null, 'Activo', null);
INSERT INTO `encargado` VALUES ('2', 'Javier', 'Pietro', '343242242', '343242242', 'javierpietro@gmail.com', '2', '43232323', '1', '0001-01-01 00:00:00', null, 'Activo', null);
INSERT INTO `encargado` VALUES ('3', 'Emanuel Alejo', 'Lopez', '351574576', '351574576', 'emanuel@gmail', '1', '28907654', '2', '2019-08-17 20:25:33', null, 'Activo', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of espaciocomun
-- ----------------------------
INSERT INTO `espaciocomun` VALUES ('1', 'Aula 205', 'Aula con buen espacio y equipamiento.', '20', '1', '0', '2019-10-06 15:41:24', null, null);
INSERT INTO `espaciocomun` VALUES ('2', 'Aula 207', 'Aula Mayormente equipada para las expresiones artísticas', '15', '1', '0', '2019-10-18 02:22:32', null, null);
INSERT INTO `espaciocomun` VALUES ('3', 'SUM', 'Espacio al aire libre', '200', '4', '0', '2019-10-18 02:23:09', null, null);
INSERT INTO `espaciocomun` VALUES ('4', 'Aula computacion', 'Es un aula destinada para el uso de PCs', '18', '1', '0', '2019-11-11 03:02:20', null, null);
INSERT INTO `espaciocomun` VALUES ('5', 'Aula espacio libre', 'Es un aula con gran espacio libre', '30', '1', '0', '2019-11-11 03:04:00', null, null);
INSERT INTO `espaciocomun` VALUES ('6', 'Aula 209', 'Aula', '20', '1', '0', '2019-11-11 03:04:43', null, null);

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
  `estadoDeudores` longtext,
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of evento
-- ----------------------------
INSERT INTO `evento` VALUES ('1', 'Taller de costura', 'Taller donde se aprenderán distintas técnicas de costura', '2', '1', '1', '5', '20', '0', '1200', '3', '2019-10-11 00:00:00', '2019-11-07 00:00:00', '2019-10-06 00:00:00', '2019-10-10 00:00:00', 'Finalizado', '2019-10-06 15:45:22', null, 'PAGO');
INSERT INTO `evento` VALUES ('2', 'Taller pintura sobre oleo', 'Se enseña a pintar con diferentes tecnicas sobre tela en oleo.', '2', '1', '1', '5', '20', '0', '1300', '4', '2019-10-15 00:00:00', '2019-10-30 00:00:00', '2019-10-13 00:00:00', '2019-10-18 00:00:00', 'Finalizado', '2019-10-13 23:53:46', null, 'PAGO');
INSERT INTO `evento` VALUES ('3', 'Curso Office Word', 'Se dictara un curso para aprender a usar el Word', '1', '1', '3', '5', '20', '0', '1800', '3', '2019-10-22 00:00:00', '2019-11-28 00:00:00', '2019-10-16 00:00:00', '2019-10-23 00:00:00', 'Finalizado', '2019-10-16 23:48:49', null, 'PAGO');
INSERT INTO `evento` VALUES ('4', 'Campaña Vacunación ', 'Campaña para vacunar a menores de edad', '4', '1', '3', '5', '20', '1', '0', '0', '2019-10-21 00:00:00', '2019-10-21 00:00:00', '2019-10-18 00:00:00', '2019-10-20 00:00:00', 'Finalizado', '2019-10-18 01:56:56', null, 'ADEUDADO');
INSERT INTO `evento` VALUES ('5', 'Baile de salsa', 'Aprender a bailar salsa.', '6', '2', '1', '5', '15', '0', '1500', '3', '2019-10-30 00:00:00', '2019-12-18 00:00:00', '2019-10-28 00:00:00', '2019-11-05 00:00:00', 'Progreso', '2019-10-27 16:26:33', null, 'ADEUDADO');
INSERT INTO `evento` VALUES ('6', 'Yoga ', 'Aprenderemos a relajarnos haciendo yoga.', '2', '2', '1', '4', '14', '0', '2000', '2', '2019-11-06 00:00:00', '2019-12-23 00:00:00', '2019-10-27 00:00:00', '2019-11-05 00:00:00', 'Progreso', '2019-10-27 16:35:47', null, 'ADEUDADO');
INSERT INTO `evento` VALUES ('7', 'Seminario Fertilidad', 'Se hablara sobre la fertilidad y se derribaran mitos.', '3', '3', '3', '5', '25', '1', '0', '0', '2019-10-28 00:00:00', '2019-10-28 00:00:00', '2019-10-27 00:00:00', '2019-10-28 00:00:00', 'Finalizado', '2019-10-27 18:01:03', null, 'ADEUDADO');
INSERT INTO `evento` VALUES ('8', 'Taller de prueba', 'Es un taller de prueba', '2', '2', '1', '5', '15', '0', '1500', '3', '2019-10-31 00:00:00', '2019-11-20 00:00:00', '2019-10-28 00:00:00', '2019-10-31 00:00:00', 'Cancelado', '2019-10-28 19:32:47', '2019-11-02 23:31:37', 'ADEUDADO');
INSERT INTO `evento` VALUES ('9', 'Curso de meditación', 'Aprenderemos distintas técnicas para meditar', '1', '2', '1', '5', '10', '0', '2000', '4', '2019-11-08 00:00:00', '2019-12-13 00:00:00', '2019-11-03 00:00:00', '2019-11-12 00:00:00', 'Progreso', '2019-11-03 15:08:52', null, 'ADEUDADO');
INSERT INTO `evento` VALUES ('10', 'Curso excel avanzado', 'Se aprenderán funciones avanzadas de excel', '1', '2', '1', '5', '15', '0', '3000', '3', '2019-11-21 00:00:00', '2019-12-20 00:00:00', '2019-11-08 00:00:00', '2019-11-20 00:00:00', 'Progreso', '2019-11-08 20:14:47', null, 'ADEUDADO');
INSERT INTO `evento` VALUES ('11', 'CORTE Y CONFECCION', 'Es un taller para aprender a realizar corte y confeccion', '2', '5', '3', '5', '25', '0', '2000', '2', '2019-11-13 00:00:00', '2019-12-16 00:00:00', '2019-11-11 00:00:00', '2019-11-19 00:00:00', 'Progreso', '2019-11-11 03:10:38', null, 'ADEUDADO');
INSERT INTO `evento` VALUES ('12', 'GUITARRA Y CANTO', 'Se aprenderá a tocar la guitarra y acompañar con el canto', '2', '6', '2', '5', '20', '0', '3000', '3', '2019-11-28 00:00:00', '2019-12-26 00:00:00', '2019-11-14 00:00:00', '2019-11-27 00:00:00', 'Progreso', '2019-11-14 16:00:44', null, 'ADEUDADO');
INSERT INTO `evento` VALUES ('13', 'SECRETARIADO Y RECEPCIÓN', 'Se formara al alumno para que cuentes con las habilidades correspondientes', '1', '6', '2', '5', '20', '0', '5000', '2', '2019-11-25 00:00:00', '2019-12-24 00:00:00', '2019-11-15 00:00:00', '2019-11-22 00:00:00', 'Progreso', '2019-11-15 03:17:16', null, 'ADEUDADO');
INSERT INTO `evento` VALUES ('14', 'CORTINERIA Y DECORACION', 'Es un taller que nos permite aprender de cortinas y su decoración', '2', '6', '3', '5', '15', '0', '1800', '2', '2019-12-09 00:00:00', '2019-12-20 00:00:00', '2019-11-29 00:00:00', '2019-12-05 00:00:00', 'Nuevo', '2019-11-29 00:16:42', null, 'ADEUDADO');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `horarios` VALUES ('15', 'Lunes', '1', '10:00', '12:00', '9');
INSERT INTO `horarios` VALUES ('16', 'Lunes', '1', '14:00', '16:00', '9');
INSERT INTO `horarios` VALUES ('17', 'Jueves', '4', '16:00', '20:00', '10');
INSERT INTO `horarios` VALUES ('18', 'Lunes', '1', '19:00', '21:00', '11');
INSERT INTO `horarios` VALUES ('19', 'Viernes', '5', '19:00', '21:00', '11');
INSERT INTO `horarios` VALUES ('20', 'Martes', '2', '20:00', '22:00', '12');
INSERT INTO `horarios` VALUES ('21', 'Jueves', '4', '20:00', '22:00', '12');
INSERT INTO `horarios` VALUES ('22', 'Martes', '2', '09:00', '12:00', '13');
INSERT INTO `horarios` VALUES ('23', 'Sabado', '6', '09:00', '12:00', '13');
INSERT INTO `horarios` VALUES ('24', 'Lunes', '1', '19:00', '21:00', '14');
INSERT INTO `horarios` VALUES ('25', 'Miercoles', '3', '19:00', '21:00', '14');

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of inscripcion
-- ----------------------------
INSERT INTO `inscripcion` VALUES ('5', '1', '1', '2019-10-06 16:05:03', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('6', '1', '2', '2019-10-07 00:26:18', null, 'PAGADO', '1');
INSERT INTO `inscripcion` VALUES ('7', '1', '3', '2019-10-07 00:26:46', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('8', '1', '10', '2019-10-07 00:26:46', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('14', '2', '11', '2019-10-13 23:54:58', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('15', '2', '4', '2019-10-13 23:54:58', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('16', '2', '1', '2019-10-13 23:54:58', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('17', '4', '2', '2019-10-18 02:25:15', null, 'ADEUDADO', '1');
INSERT INTO `inscripcion` VALUES ('18', '3', '2', '2019-10-18 02:45:16', null, 'PAGADO', '1');
INSERT INTO `inscripcion` VALUES ('19', '7', '1', '2019-10-27 18:01:46', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('20', '7', '2', '2019-10-27 18:01:46', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('21', '7', '4', '2019-10-27 18:01:46', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('22', '7', '3', '2019-10-27 18:01:46', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('23', '5', '2', '2019-10-27 20:49:57', '2019-11-03 14:24:47', 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('24', '5', '1', '2019-10-28 17:56:55', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('25', '8', '2', '2019-10-28 19:33:41', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('26', '8', '1', '2019-10-28 19:33:41', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('27', '8', '11', '2019-10-28 19:33:41', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('28', '5', '14', '2019-10-30 02:43:23', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('29', '5', '4', '2019-11-03 02:30:00', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('30', '5', '11', '2019-11-03 02:30:00', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('31', '6', '2', '2019-11-03 14:19:34', '2019-11-03 14:21:28', 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('32', '6', '4', '2019-11-03 14:19:34', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('33', '6', '1', '2019-11-03 14:19:34', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('34', '6', '11', '2019-11-03 14:21:08', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('35', '9', '1', '2019-11-06 21:57:27', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('36', '9', '3', '2019-11-06 21:57:27', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('37', '9', '15', '2019-11-06 21:57:27', '2019-11-06 22:51:33', 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('38', '9', '12', '2019-11-06 21:57:27', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('39', '9', '10', '2019-11-06 21:57:28', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('40', '9', '2', '2019-11-06 21:57:28', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('41', '9', '4', '2019-11-06 21:57:28', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('42', '10', '3', '2019-11-10 22:06:37', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('43', '10', '11', '2019-11-10 22:06:39', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('44', '10', '15', '2019-11-10 22:06:40', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('45', '10', '1', '2019-11-10 22:06:41', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('46', '10', '4', '2019-11-10 22:06:41', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('47', '11', '2', '2019-11-13 00:34:54', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('48', '11', '10', '2019-11-13 00:34:54', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('49', '11', '4', '2019-11-13 00:34:54', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('50', '11', '15', '2019-11-13 00:34:54', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('51', '11', '1', '2019-11-13 00:34:54', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('52', '12', '4', '2019-11-15 03:13:11', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('53', '12', '13', '2019-11-15 03:13:11', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('54', '12', '1', '2019-11-15 03:13:11', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('55', '12', '2', '2019-11-15 03:13:11', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('56', '12', '11', '2019-11-15 03:13:11', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('57', '13', '3', '2019-11-17 19:26:35', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('58', '13', '11', '2019-11-17 19:26:35', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('59', '13', '2', '2019-11-17 19:26:35', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('60', '13', '12', '2019-11-17 19:26:35', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('61', '13', '15', '2019-11-17 19:26:36', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('62', '13', '1', '2019-11-17 19:26:36', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('63', '12', '14', '2019-11-26 02:48:10', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('64', '12', '12', '2019-11-26 03:13:57', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('65', '12', '15', '2019-11-26 03:15:34', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('66', '14', '2', '2019-11-29 00:22:33', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('67', '14', '1', '2019-11-29 00:22:33', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('68', '14', '14', '2019-11-29 00:38:43', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('69', '14', '3', '2019-11-29 00:38:43', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('70', '14', '15', '2019-11-29 00:38:55', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('71', '14', '22', '2019-11-29 00:48:24', null, 'PAGADO', '0');
INSERT INTO `inscripcion` VALUES ('72', '14', '10', '2019-11-29 14:04:59', null, 'ADEUDADO', '0');
INSERT INTO `inscripcion` VALUES ('73', '14', '12', '2019-11-29 14:04:59', null, 'ADEUDADO', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of matricula
-- ----------------------------
INSERT INTO `matricula` VALUES ('3', '2019-08-08 04:27:48', '1200', '2019-12-31 00:00:00', 'Activa');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of matriculaxsocios
-- ----------------------------
INSERT INTO `matriculaxsocios` VALUES ('1', '2', '3', '2019-09-17 01:01:47', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('2', '3', '3', '2019-09-17 01:02:19', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('3', '12', '3', '2019-10-27 18:02:57', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('4', '13', '3', '2019-10-27 21:10:41', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('5', '11', '3', '2019-10-28 19:38:21', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('6', '14', '3', '2019-11-01 18:34:29', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('7', '15', '3', '2019-11-06 23:08:32', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('8', '16', '3', '2019-11-06 23:25:21', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('9', '18', '3', '2019-11-07 00:32:47', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('10', '10', '3', '2019-11-26 03:27:00', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('11', '22', '3', '2019-11-29 00:10:30', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('12', '21', '3', '2019-11-29 00:11:26', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('13', '4', '3', '2019-11-30 17:49:54', '1200.00');

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
  `metodoPago` longtext,
  PRIMARY KEY (`id`),
  KEY `IX_idInscripcion` (`idInscripcion` DESC) USING BTREE,
  KEY `IX_idCuota` (`idCuota` DESC) USING BTREE,
  KEY `FK_Pago_Cuotas_idCuota` (`idCuota`),
  KEY `FK_Pago_Inscripcion_idInscripcion` (`idInscripcion`),
  CONSTRAINT `FK_Pago_Cuotas_idCuota` FOREIGN KEY (`idCuota`) REFERENCES `cuotas` (`id`),
  CONSTRAINT `FK_Pago_Inscripcion_idInscripcion` FOREIGN KEY (`idInscripcion`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pago
-- ----------------------------
INSERT INTO `pago` VALUES ('5', 'Cuota 1', '400', '0', '5', '2019-10-07 00:27:11', '0001-01-01 00:00:00', '1', '2', 'Efectivo');
INSERT INTO `pago` VALUES ('6', 'Cuota 2', '400', '0', '5', '2019-10-07 00:27:27', '0001-01-01 00:00:00', '1', '3', 'Efectivo');
INSERT INTO `pago` VALUES ('7', 'Cuota 3', '400', '0', '5', '2019-10-18 02:08:43', '0001-01-01 00:00:00', '1', '4', 'Efectivo');
INSERT INTO `pago` VALUES ('8', 'Cuota 1', '400', '10034', '6', '2019-10-24 01:30:49', '0001-01-01 00:00:00', '1', '2', 'Efectivo');
INSERT INTO `pago` VALUES ('9', 'Cuota 2', '400', '10034', '6', '2019-10-24 01:32:02', '0001-01-01 00:00:00', '1', '3', 'Efectivo');
INSERT INTO `pago` VALUES ('10', 'Cuota 3', '400', '10034', '6', '2019-10-24 01:32:26', '0001-01-01 00:00:00', '1', '4', 'Efectivo');
INSERT INTO `pago` VALUES ('11', 'Cuota 1', '400', '10066', '7', '2019-11-05 02:25:01', '0001-01-01 00:00:00', '1', '2', 'Efectivo');
INSERT INTO `pago` VALUES ('12', 'Cuota 2', '400', '10066', '7', '2019-11-05 02:26:20', '0001-01-01 00:00:00', '1', '3', 'Efectivo');
INSERT INTO `pago` VALUES ('13', 'Cuota 1', '400', '0', '8', '2019-10-07 00:29:01', '0001-01-01 00:00:00', '1', '2', 'Efectivo');
INSERT INTO `pago` VALUES ('14', 'Cuota 3', '400', '10066', '7', '2019-11-06 16:28:14', '0001-01-01 00:00:00', '1', '4', 'Efectivo');
INSERT INTO `pago` VALUES ('15', 'Cuota 2', '400', '10066', '8', '2019-11-05 02:28:06', '0001-01-01 00:00:00', '1', '3', 'Efectivo');
INSERT INTO `pago` VALUES ('16', 'Cuota 3', '400', '10066', '8', '2019-11-05 03:04:58', '0001-01-01 00:00:00', '1', '4', 'Efectivo');
INSERT INTO `pago` VALUES ('20', 'Cuota 1', '325', '10037', '15', '2019-10-27 21:10:07', '0001-01-01 00:00:00', '1', '5', 'Efectivo');
INSERT INTO `pago` VALUES ('21', 'Cuota 1', '325', '10094', '14', '2019-11-08 22:51:37', '0001-01-01 00:00:00', '1', '5', 'Efectivo');
INSERT INTO `pago` VALUES ('22', 'Cuota 2', '325', '10066', '15', '2019-11-04 23:55:22', '0001-01-01 00:00:00', '1', '6', 'Efectivo');
INSERT INTO `pago` VALUES ('23', 'Cuota 2', '325', '10094', '14', '2019-11-08 22:52:40', '0001-01-01 00:00:00', '1', '6', 'Efectivo');
INSERT INTO `pago` VALUES ('24', 'Cuota 3', '325', '10066', '15', '2019-11-05 02:49:32', '0001-01-01 00:00:00', '1', '7', 'Efectivo');
INSERT INTO `pago` VALUES ('25', 'Cuota 3', '325', '10094', '14', '2019-11-08 22:52:52', '0001-01-01 00:00:00', '1', '7', 'Efectivo');
INSERT INTO `pago` VALUES ('26', 'Cuota 4', '325', '10066', '15', '2019-11-05 02:50:47', '0001-01-01 00:00:00', '1', '8', 'Efectivo');
INSERT INTO `pago` VALUES ('27', 'Cuota 4', '325', '10094', '14', '2019-11-08 22:53:49', '0001-01-01 00:00:00', '1', '8', 'Efectivo');
INSERT INTO `pago` VALUES ('28', 'Cuota 1', '325', '10034', '16', '2019-10-21 20:25:44', '0001-01-01 00:00:00', '1', '7', 'Efectivo');
INSERT INTO `pago` VALUES ('29', 'Cuota 2', '325', '10066', '16', '2019-11-05 01:57:19', '0001-01-01 00:00:00', '1', '8', 'Efectivo');
INSERT INTO `pago` VALUES ('30', 'Cuota 3', '325', '10034', '16', '2019-10-19 15:35:26', '0001-01-01 00:00:00', '1', '5', 'Efectivo');
INSERT INTO `pago` VALUES ('31', 'Cuota 4', '325', '10066', '16', '2019-11-05 01:59:37', '0001-01-01 00:00:00', '1', '6', 'Efectivo');
INSERT INTO `pago` VALUES ('32', 'Cuota 1', '600', '10034', '18', '2019-10-20 16:09:03', '0001-01-01 00:00:00', '1', '10', 'Efectivo');
INSERT INTO `pago` VALUES ('33', 'Cuota 2', '600', '10034', '18', '2019-10-20 16:09:10', '0001-01-01 00:00:00', '1', '11', 'Efectivo');
INSERT INTO `pago` VALUES ('34', 'Cuota 3', '600', '10034', '18', '2019-10-20 16:10:56', '0001-01-01 00:00:00', '1', '9', 'Efectivo');
INSERT INTO `pago` VALUES ('35', 'Cuota 1', '500', '10040', '23', '2019-10-28 17:57:46', '0001-01-01 00:00:00', '1', '12', 'Efectivo');
INSERT INTO `pago` VALUES ('36', 'Cuota 2', '500', '10052', '23', '2019-11-01 01:31:44', '0001-01-01 00:00:00', '1', '13', 'Efectivo');
INSERT INTO `pago` VALUES ('37', 'Cuota 3', '500', '10052', '23', '2019-11-01 01:26:19', '0001-01-01 00:00:00', '1', '14', 'Efectivo');
INSERT INTO `pago` VALUES ('38', 'Cuota 1', '500', '10066', '24', '2019-11-05 02:03:51', '0001-01-01 00:00:00', '1', '12', 'Efectivo');
INSERT INTO `pago` VALUES ('39', 'Cuota 2', '500', '10066', '24', '2019-11-05 02:08:30', '0001-01-01 00:00:00', '1', '13', 'Efectivo');
INSERT INTO `pago` VALUES ('40', 'Cuota 3', '500', '10066', '24', '2019-11-05 02:17:17', '0001-01-01 00:00:00', '1', '14', 'Efectivo');
INSERT INTO `pago` VALUES ('41', 'Cuota 1', '500', '10049', '25', '2019-10-28 19:34:35', '0001-01-01 00:00:00', '1', '17', 'Efectivo');
INSERT INTO `pago` VALUES ('42', 'Cuota 2', '500', '10049', '25', '2019-10-28 19:36:55', '0001-01-01 00:00:00', '1', '18', 'Efectivo');
INSERT INTO `pago` VALUES ('43', 'Cuota 1', '500', '10066', '26', '2019-11-05 00:40:08', '0001-01-01 00:00:00', '1', '17', 'Efectivo');
INSERT INTO `pago` VALUES ('44', 'Cuota 3', '500', '10066', '25', '2019-11-04 19:48:09', '0001-01-01 00:00:00', '1', '19', 'Efectivo');
INSERT INTO `pago` VALUES ('45', 'Cuota 2', '500', '10066', '26', '2019-11-05 02:18:43', '0001-01-01 00:00:00', '1', '18', 'Efectivo');
INSERT INTO `pago` VALUES ('46', 'Cuota 3', '500', '10066', '26', '2019-11-05 02:19:40', '0001-01-01 00:00:00', '1', '19', 'Efectivo');
INSERT INTO `pago` VALUES ('47', 'Cuota 1', '500', '0', '27', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '19', 'Efectivo');
INSERT INTO `pago` VALUES ('48', 'Cuota 2', '500', '0', '27', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '17', 'Efectivo');
INSERT INTO `pago` VALUES ('49', 'Cuota 3', '500', '0', '27', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '18', 'Efectivo');
INSERT INTO `pago` VALUES ('50', 'Cuota 1', '500', '0', '28', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '14', 'Efectivo');
INSERT INTO `pago` VALUES ('51', 'Cuota 2', '500', '0', '28', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '12', 'Efectivo');
INSERT INTO `pago` VALUES ('52', 'Cuota 3', '500', '0', '28', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '13', 'Efectivo');
INSERT INTO `pago` VALUES ('53', 'Cuota 1', '500', '10066', '29', '2019-11-05 03:08:01', '0001-01-01 00:00:00', '1', '12', 'Efectivo');
INSERT INTO `pago` VALUES ('54', 'Cuota 1', '500', '0', '30', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '12', 'Efectivo');
INSERT INTO `pago` VALUES ('55', 'Cuota 2', '500', '10066', '29', '2019-11-05 03:08:13', '0001-01-01 00:00:00', '1', '13', 'Efectivo');
INSERT INTO `pago` VALUES ('56', 'Cuota 2', '500', '0', '30', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '13', 'Efectivo');
INSERT INTO `pago` VALUES ('57', 'Cuota 3', '500', '10066', '29', '2019-11-05 03:12:31', '0001-01-01 00:00:00', '1', '14', 'Efectivo');
INSERT INTO `pago` VALUES ('58', 'Cuota 3', '500', '0', '30', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '14', 'Efectivo');
INSERT INTO `pago` VALUES ('59', 'Cuota 1', '1000', '10066', '33', '2019-11-04 21:37:33', '0001-01-01 00:00:00', '1', '15', 'Efectivo');
INSERT INTO `pago` VALUES ('60', 'Cuota 1', '1000', '0', '31', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '15', 'Efectivo');
INSERT INTO `pago` VALUES ('61', 'Cuota 1', '1000', '10066', '32', '2019-11-06 16:07:52', '0001-01-01 00:00:00', '1', '15', 'Efectivo');
INSERT INTO `pago` VALUES ('62', 'Cuota 2', '1000', '10066', '33', '2019-11-04 21:37:21', '0001-01-01 00:00:00', '1', '16', 'Efectivo');
INSERT INTO `pago` VALUES ('63', 'Cuota 2', '1000', '10066', '32', '2019-11-06 16:15:04', '0001-01-01 00:00:00', '1', '16', 'Efectivo');
INSERT INTO `pago` VALUES ('64', 'Cuota 2', '1000', '0', '31', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '16', 'Efectivo');
INSERT INTO `pago` VALUES ('65', 'Cuota 1', '1000', '0', '34', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '15', 'Efectivo');
INSERT INTO `pago` VALUES ('66', 'Cuota 2', '1000', '0', '34', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '16', 'Efectivo');
INSERT INTO `pago` VALUES ('67', 'Cuota 1', '500', '10094', '35', '2019-11-10 21:50:49', '0001-01-01 00:00:00', '1', '21', 'Efectivo');
INSERT INTO `pago` VALUES ('68', 'Cuota 1', '500', '10155', '39', '2019-11-26 03:16:23', '0001-01-01 00:00:00', '1', '21', 'Efectivo');
INSERT INTO `pago` VALUES ('69', 'Cuota 2', '500', '10094', '35', '2019-11-10 21:58:01', '0001-01-01 00:00:00', '1', '22', 'Efectivo');
INSERT INTO `pago` VALUES ('70', 'Cuota 2', '500', '0', '39', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '22', 'Efectivo');
INSERT INTO `pago` VALUES ('71', 'Cuota 3', '500', '10155', '35', '2019-11-26 03:22:26', '0001-01-01 00:00:00', '1', '23', 'Efectivo');
INSERT INTO `pago` VALUES ('72', 'Cuota 1', '500', '10094', '37', '2019-11-06 21:58:21', '0001-01-01 00:00:00', '1', '21', 'Efectivo');
INSERT INTO `pago` VALUES ('73', 'Cuota 4', '500', '10155', '35', '2019-11-26 03:22:33', '0001-01-01 00:00:00', '1', '20', 'Efectivo');
INSERT INTO `pago` VALUES ('74', 'Cuota 1', '500', '0', '38', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '21', 'Efectivo');
INSERT INTO `pago` VALUES ('75', 'Cuota 2', '500', '10094', '37', '2019-11-06 22:37:13', '0001-01-01 00:00:00', '1', '22', 'Efectivo');
INSERT INTO `pago` VALUES ('76', 'Cuota 3', '500', '0', '39', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '23', 'Efectivo');
INSERT INTO `pago` VALUES ('77', 'Cuota 3', '500', '0', '37', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '23', 'Efectivo');
INSERT INTO `pago` VALUES ('78', 'Cuota 1', '500', '0', '36', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '21', 'Efectivo');
INSERT INTO `pago` VALUES ('79', 'Cuota 4', '500', '0', '39', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '20', 'Efectivo');
INSERT INTO `pago` VALUES ('80', 'Cuota 2', '500', '0', '38', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '22', 'Efectivo');
INSERT INTO `pago` VALUES ('81', 'Cuota 4', '500', '0', '37', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '20', 'Efectivo');
INSERT INTO `pago` VALUES ('82', 'Cuota 3', '500', '0', '38', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '23', 'Efectivo');
INSERT INTO `pago` VALUES ('83', 'Cuota 2', '500', '0', '36', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '22', 'Efectivo');
INSERT INTO `pago` VALUES ('84', 'Cuota 4', '500', '0', '38', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '20', 'Efectivo');
INSERT INTO `pago` VALUES ('85', 'Cuota 3', '500', '0', '36', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '23', 'Efectivo');
INSERT INTO `pago` VALUES ('86', 'Cuota 4', '500', '0', '36', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '20', 'Efectivo');
INSERT INTO `pago` VALUES ('87', 'Cuota 1', '500', '10094', '40', '2019-11-07 00:34:48', '0001-01-01 00:00:00', '1', '21', 'Efectivo');
INSERT INTO `pago` VALUES ('88', 'Cuota 2', '500', '10094', '40', '2019-11-07 00:39:43', '0001-01-01 00:00:00', '1', '22', 'Efectivo');
INSERT INTO `pago` VALUES ('89', 'Cuota 3', '500', '10094', '40', '2019-11-07 00:41:43', '0001-01-01 00:00:00', '1', '23', 'Efectivo');
INSERT INTO `pago` VALUES ('90', 'Cuota 4', '500', '10094', '40', '2019-11-06 23:30:12', '0001-01-01 00:00:00', '1', '20', 'Tarjeta');
INSERT INTO `pago` VALUES ('91', 'Cuota 1', '500', '0', '41', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '20', 'Efectivo');
INSERT INTO `pago` VALUES ('92', 'Cuota 2', '500', '0', '41', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '21', 'Efectivo');
INSERT INTO `pago` VALUES ('93', 'Cuota 3', '500', '0', '41', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '22', 'Efectivo');
INSERT INTO `pago` VALUES ('94', 'Cuota 4', '500', '0', '41', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '23', 'Efectivo');
INSERT INTO `pago` VALUES ('95', 'Cuota 1', '1000', '0', '42', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '24', 'Efectivo');
INSERT INTO `pago` VALUES ('96', 'Cuota 2', '1000', '0', '42', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '25', 'Efectivo');
INSERT INTO `pago` VALUES ('97', 'Cuota 3', '1000', '0', '42', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '26', 'Efectivo');
INSERT INTO `pago` VALUES ('98', 'Cuota 1', '1000', '0', '43', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '24', 'Efectivo');
INSERT INTO `pago` VALUES ('99', 'Cuota 2', '1000', '0', '43', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '25', 'Efectivo');
INSERT INTO `pago` VALUES ('100', 'Cuota 3', '1000', '0', '43', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '26', 'Efectivo');
INSERT INTO `pago` VALUES ('101', 'Cuota 1', '1000', '10119', '44', '2019-11-13 02:15:02', '0001-01-01 00:00:00', '1', '24', 'Efectivo');
INSERT INTO `pago` VALUES ('102', 'Cuota 2', '1000', '10119', '44', '2019-11-13 02:15:09', '0001-01-01 00:00:00', '1', '25', 'Efectivo');
INSERT INTO `pago` VALUES ('103', 'Cuota 3', '1000', '10146', '44', '2019-11-17 19:27:28', '0001-01-01 00:00:00', '1', '26', 'Efectivo');
INSERT INTO `pago` VALUES ('104', 'Cuota 1', '1000', '0', '45', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '26', 'Efectivo');
INSERT INTO `pago` VALUES ('105', 'Cuota 2', '1000', '0', '45', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '24', 'Efectivo');
INSERT INTO `pago` VALUES ('106', 'Cuota 3', '1000', '0', '45', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '25', 'Efectivo');
INSERT INTO `pago` VALUES ('107', 'Cuota 1', '1000', '0', '46', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '26', 'Efectivo');
INSERT INTO `pago` VALUES ('108', 'Cuota 2', '1000', '0', '46', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '24', 'Efectivo');
INSERT INTO `pago` VALUES ('109', 'Cuota 3', '1000', '0', '46', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '25', 'Efectivo');
INSERT INTO `pago` VALUES ('110', 'Cuota 1', '1000', '10119', '47', '2019-11-14 02:02:22', '0001-01-01 00:00:00', '1', '27', 'Tarjeta');
INSERT INTO `pago` VALUES ('111', 'Cuota 1', '1000', '0', '48', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '27', 'Efectivo');
INSERT INTO `pago` VALUES ('112', 'Cuota 1', '1000', '0', '49', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '27', 'Efectivo');
INSERT INTO `pago` VALUES ('113', 'Cuota 2', '1000', '0', '49', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '28', 'Efectivo');
INSERT INTO `pago` VALUES ('114', 'Cuota 2', '1000', '10119', '47', '2019-11-14 01:33:26', '0001-01-01 00:00:00', '1', '28', 'Tarjeta');
INSERT INTO `pago` VALUES ('115', 'Cuota 2', '1000', '0', '48', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '28', 'Efectivo');
INSERT INTO `pago` VALUES ('116', 'Cuota 1', '1000', '0', '50', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '27', 'Efectivo');
INSERT INTO `pago` VALUES ('117', 'Cuota 2', '1000', '0', '50', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '28', 'Efectivo');
INSERT INTO `pago` VALUES ('118', 'Cuota 1', '1000', '0', '51', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '27', 'Efectivo');
INSERT INTO `pago` VALUES ('119', 'Cuota 2', '1000', '0', '51', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '28', 'Efectivo');
INSERT INTO `pago` VALUES ('120', 'Cuota 1', '1000', '0', '53', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '31', 'Efectivo');
INSERT INTO `pago` VALUES ('121', 'Cuota 1', '1000', '0', '52', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '31', 'Efectivo');
INSERT INTO `pago` VALUES ('122', 'Cuota 2', '1000', '0', '53', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '29', 'Efectivo');
INSERT INTO `pago` VALUES ('123', 'Cuota 2', '1000', '0', '52', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '29', 'Efectivo');
INSERT INTO `pago` VALUES ('124', 'Cuota 3', '1000', '0', '53', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '30', 'Efectivo');
INSERT INTO `pago` VALUES ('125', 'Cuota 3', '1000', '0', '52', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '30', 'Efectivo');
INSERT INTO `pago` VALUES ('126', 'Cuota 1', '1000', '0', '54', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '29', 'Efectivo');
INSERT INTO `pago` VALUES ('127', 'Cuota 2', '1000', '0', '54', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '30', 'Efectivo');
INSERT INTO `pago` VALUES ('128', 'Cuota 1', '1000', '0', '55', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '29', 'Efectivo');
INSERT INTO `pago` VALUES ('129', 'Cuota 3', '1000', '0', '54', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '31', 'Efectivo');
INSERT INTO `pago` VALUES ('130', 'Cuota 2', '1000', '0', '55', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '30', 'Efectivo');
INSERT INTO `pago` VALUES ('131', 'Cuota 3', '1000', '10167', '55', '2019-11-29 01:01:29', '0001-01-01 00:00:00', '1', '31', 'Tarjeta');
INSERT INTO `pago` VALUES ('132', 'Cuota 1', '1000', '0', '56', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '29', 'Efectivo');
INSERT INTO `pago` VALUES ('133', 'Cuota 2', '1000', '0', '56', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '30', 'Efectivo');
INSERT INTO `pago` VALUES ('134', 'Cuota 3', '1000', '0', '56', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '31', 'Efectivo');
INSERT INTO `pago` VALUES ('135', 'Cuota 1', '2500', '0', '57', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '32', 'Efectivo');
INSERT INTO `pago` VALUES ('136', 'Cuota 2', '2500', '0', '57', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '33', 'Efectivo');
INSERT INTO `pago` VALUES ('137', 'Cuota 1', '2500', '0', '59', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '32', 'Efectivo');
INSERT INTO `pago` VALUES ('138', 'Cuota 2', '2500', '0', '59', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '33', 'Efectivo');
INSERT INTO `pago` VALUES ('139', 'Cuota 1', '2500', '0', '58', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '32', 'Efectivo');
INSERT INTO `pago` VALUES ('140', 'Cuota 2', '2500', '0', '58', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '33', 'Efectivo');
INSERT INTO `pago` VALUES ('141', 'Cuota 1', '2500', '0', '60', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '32', 'Efectivo');
INSERT INTO `pago` VALUES ('142', 'Cuota 2', '2500', '0', '60', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '33', 'Efectivo');
INSERT INTO `pago` VALUES ('143', 'Cuota 1', '2500', '0', '62', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '32', 'Efectivo');
INSERT INTO `pago` VALUES ('144', 'Cuota 1', '2500', '0', '61', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '32', 'Efectivo');
INSERT INTO `pago` VALUES ('145', 'Cuota 2', '2500', '0', '62', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '33', 'Efectivo');
INSERT INTO `pago` VALUES ('146', 'Cuota 2', '2500', '0', '61', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '33', 'Efectivo');
INSERT INTO `pago` VALUES ('147', 'Cuota 1', '1000', '0', '63', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '29', 'Efectivo');
INSERT INTO `pago` VALUES ('148', 'Cuota 2', '1000', '0', '63', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '30', 'Efectivo');
INSERT INTO `pago` VALUES ('149', 'Cuota 3', '1000', '0', '63', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '31', 'Efectivo');
INSERT INTO `pago` VALUES ('150', 'Cuota 1', '1000', '0', '64', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '31', 'Efectivo');
INSERT INTO `pago` VALUES ('151', 'Cuota 2', '1000', '0', '64', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '29', 'Efectivo');
INSERT INTO `pago` VALUES ('152', 'Cuota 3', '1000', '0', '64', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '30', 'Efectivo');
INSERT INTO `pago` VALUES ('153', 'Cuota 1', '1000', '0', '65', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '29', 'Efectivo');
INSERT INTO `pago` VALUES ('154', 'Cuota 2', '1000', '0', '65', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '30', 'Efectivo');
INSERT INTO `pago` VALUES ('155', 'Cuota 3', '1000', '0', '65', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '31', 'Efectivo');
INSERT INTO `pago` VALUES ('156', 'Cuota 1', '900', '0', '66', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '34', 'Efectivo');
INSERT INTO `pago` VALUES ('157', 'Cuota 1', '900', '0', '67', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '34', 'Efectivo');
INSERT INTO `pago` VALUES ('158', 'Cuota 2', '900', '0', '66', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '35', 'Efectivo');
INSERT INTO `pago` VALUES ('159', 'Cuota 2', '900', '0', '67', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '35', 'Efectivo');
INSERT INTO `pago` VALUES ('160', 'Cuota 1', '900', '0', '68', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '34', 'Efectivo');
INSERT INTO `pago` VALUES ('161', 'Cuota 2', '900', '0', '68', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '35', 'Efectivo');
INSERT INTO `pago` VALUES ('162', 'Cuota 1', '900', '0', '69', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '34', 'Efectivo');
INSERT INTO `pago` VALUES ('163', 'Cuota 2', '900', '0', '69', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '35', 'Efectivo');
INSERT INTO `pago` VALUES ('164', 'Cuota 1', '900', '0', '70', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '34', 'Efectivo');
INSERT INTO `pago` VALUES ('165', 'Cuota 2', '900', '0', '70', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '35', 'Efectivo');
INSERT INTO `pago` VALUES ('166', 'Cuota 1', '900', '10167', '71', '2019-11-29 00:49:07', '0001-01-01 00:00:00', '1', '34', 'Efectivo');
INSERT INTO `pago` VALUES ('167', 'Cuota 2', '900', '10167', '71', '2019-11-29 00:49:40', '0001-01-01 00:00:00', '1', '35', 'Efectivo');
INSERT INTO `pago` VALUES ('168', 'Cuota 1', '900', '0', '73', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '34', 'Efectivo');
INSERT INTO `pago` VALUES ('169', 'Cuota 1', '900', '0', '72', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '34', 'Efectivo');
INSERT INTO `pago` VALUES ('170', 'Cuota 2', '900', '0', '72', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '35', 'Efectivo');
INSERT INTO `pago` VALUES ('171', 'Cuota 2', '900', '0', '73', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '0', '35', 'Efectivo');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ratingevento
-- ----------------------------
INSERT INTO `ratingevento` VALUES ('2', '3', '2', '4', '', '4', '2');
INSERT INTO `ratingevento` VALUES ('3', '4', '4', '4', '', '7', '2');
INSERT INTO `ratingevento` VALUES ('4', '4', '3', '4', '', '4', '2');
INSERT INTO `ratingevento` VALUES ('5', '2', '4', '3', '', '1', '2');
INSERT INTO `ratingevento` VALUES ('6', '5', '4', '4', 'Buen Curso', '2', '1');
INSERT INTO `ratingevento` VALUES ('7', '3', '3', '4', 'Buen Curso', '2', '4');
INSERT INTO `ratingevento` VALUES ('8', '3', '4', '3', 'Buen Curso', '2', '11');
INSERT INTO `ratingevento` VALUES ('9', '4', '3', '4', '', '3', '2');

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
INSERT INTO `recordatorios` VALUES ('2', 'Dejar papeles al contador', 'Dejar papeles afip al contador', '2019-07-30 05:29:11');
INSERT INTO `recordatorios` VALUES ('3', 'Avisar profesora computacion ', 'Llegada de nuevos mouses', '2019-08-01 00:00:00');
INSERT INTO `recordatorios` VALUES ('4', 'Contadora', 'dasdas', '2019-08-05 22:53:29');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of secretario
-- ----------------------------
INSERT INTO `secretario` VALUES ('1', 'jose', 'Jimenez', '2312312', '231312312', 'nose@gmail.com', 'MASCULINO', 'SOLTERO', '1', '30822222', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2019-08-16 03:19:58', 'ACTIVO');
INSERT INTO `secretario` VALUES ('3', 'Nelida', 'Gonzalez', '', null, 'nelida@gmail.com', 'Femenino', 'Soltero', '1', '38907867', null, '2019-08-17 20:19:57', null, 'Activo');
INSERT INTO `secretario` VALUES ('4', 'Romina', 'Gutierrez', '3516943547', '3516943547', 'rominaguitierrez@gmail.com', 'Femenino', 'Soltero', '1', '26545072', null, '2019-11-15 20:58:00', null, 'Activo');
INSERT INTO `secretario` VALUES ('5', 'Graciela', 'Sanchez', '3516393547', '3516393547', 'gragomez@gmail.com', 'Femenino', 'Soltero', '1', '28899421', null, '2019-11-15 21:08:14', null, 'Activo');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of socio
-- ----------------------------
INSERT INTO `socio` VALUES ('1', 'JOse', 'Quinteros', '3543604130', '3543604130', 'juanjose@gmail.com', 'Masculino', 'Soltero', '1', '32972080', '1', '1', '1986-03-04 00:00:00', '2019-11-10 14:52:06', null, 'Activo');
INSERT INTO `socio` VALUES ('2', 'AUGUSTO', 'GALAN', '3543604130', '3543604130', 'juanjose@gmail.com', 'Masculino', 'Soltero', '1', '32972081', '1', '1', '1960-11-06 00:00:00', '2019-08-30 02:24:52', null, 'Activo');
INSERT INTO `socio` VALUES ('3', 'Laura', 'Miguez', '3543604130', '3543604130', 'laura1Miguez@gmail.com', 'Femenino', 'Casado', '1', '30992080', '1', '1', '1950-11-06 00:00:00', '2019-08-30 02:24:52', null, 'Activo');
INSERT INTO `socio` VALUES ('4', 'Maria', 'Del Valle', '3543604132', '3543604130', 'mariadelvalle@gmail.com', 'Femenino', 'Soltero', '1', '40000001', '1', '1', '1976-03-04 00:00:00', '2019-10-30 02:24:52', null, 'Activo');
INSERT INTO `socio` VALUES ('10', 'Jorge', 'galan', '3543604130', '3543604130', 'juanjose@gmail.com', 'Masculino', 'Casado', '1', '40000002', '1', '1', '1960-03-04 00:00:00', '2019-09-30 02:24:52', null, 'Activo');
INSERT INTO `socio` VALUES ('11', 'Soledad', 'Miguez', '3543604130', '3543604130', 'laura1Miguez@gmail.com', 'Femenino', 'Casado', '1', '40000003', '1', '1', '1958-03-04 00:00:00', '2019-09-30 02:24:52', null, 'Activo');
INSERT INTO `socio` VALUES ('12', 'Angelica', 'Valles', '3543604132', '3543604130', 'mariadelvalle@gmail.com', 'Femenino', 'Casado', '1', '40000004', '1', '1', '1940-03-04 00:00:00', '2019-09-30 02:24:52', null, 'Activo');
INSERT INTO `socio` VALUES ('13', 'Graciela María', 'Casartelli', '03543403668', '03543604130', 'gracielacasartelli946@hotmail.com', 'Femenino', 'Soltero', '1', '30999888', '3', '2', '1950-07-03 01:12:28', '2019-10-18 23:08:13', null, 'Activo');
INSERT INTO `socio` VALUES ('14', 'JAVIER', 'JIMENEZ', '03543604130', '3543604130', 'javierjimenez78@gmail.com', 'Masculino', 'Soltero', '1', '30992080', '5', '4', '1946-03-04 00:00:00', '2019-10-30 02:24:52', null, 'Activo');
INSERT INTO `socio` VALUES ('15', 'amelio', 'gutierrez', '03543604130', '3543604130', 'javierjimenez78@gmail.com', 'Masculino', 'Soltero', '1', '32972080', '6', '5', '1987-05-14 00:00:00', '2019-11-01 03:05:43', null, 'Activo');
INSERT INTO `socio` VALUES ('16', 'Julia', 'Agostini', '03543604130', '03543604130', 'javierjimenez78@gmail.com', 'Femenino', 'Soltero', '1', '5489482', '7', '6', '1946-04-06 00:00:00', '2019-11-06 23:10:16', null, 'Activo');
INSERT INTO `socio` VALUES ('18', 'alberto', 'JIMENEZ', '03543604130', '3543604130', 'javierjimenez78@gmail.com', 'Masculino', 'Soltero', '1', '30999888', '9', '8', '1930-11-06 00:00:00', '2019-11-06 23:24:46', null, 'Activo');
INSERT INTO `socio` VALUES ('19', 'JUANA', 'Dominguez', '03543604130', '3543604130', 'javierjimenez78@gmail.com', 'Femenino', 'Soltero', '1', '5498232', '10', '9', '1940-05-05 00:00:00', '2019-11-07 01:32:33', null, 'DebeMatricula');
INSERT INTO `socio` VALUES ('20', 'PERALTA', 'PERALTA', '03543604130', '3516393547', 'javierjimenez78@gmail.com', 'Masculino', 'Soltero', '1', '32972080', '11', '10', '1954-03-05 00:00:00', '2019-11-28 00:06:48', null, 'DebeMatricula');
INSERT INTO `socio` VALUES ('21', 'LUISANA', 'ALBERTI', '03543403668', '3543604130', 'gracielacasartelli946@hotmail.com', 'Femenino', 'Viudo', '1', '23432394', '12', '11', '1946-10-03 00:00:00', '2019-11-28 00:19:00', null, 'Activo');
INSERT INTO `socio` VALUES ('22', 'AGUSTIN', 'FERNANDEZ', '03543604130', '3543604130', 'javierjimenez78@gmail.com', 'Masculino', 'Casado', '1', '54343434', '13', '12', '1946-01-03 00:00:00', '2019-11-29 00:08:00', null, 'Activo');

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
INSERT INTO `sociotags` VALUES ('22', '5');
INSERT INTO `sociotags` VALUES ('22', '11');
INSERT INTO `sociotags` VALUES ('22', '19');
INSERT INTO `sociotags` VALUES ('22', '20');
INSERT INTO `sociotags` VALUES ('22', '21');
INSERT INTO `sociotags` VALUES ('14', '1');
INSERT INTO `sociotags` VALUES ('14', '5');
INSERT INTO `sociotags` VALUES ('14', '18');
INSERT INTO `sociotags` VALUES ('3', '2');
INSERT INTO `sociotags` VALUES ('3', '5');
INSERT INTO `sociotags` VALUES ('3', '13');
INSERT INTO `sociotags` VALUES ('3', '14');
INSERT INTO `sociotags` VALUES ('3', '15');
INSERT INTO `sociotags` VALUES ('3', '16');
INSERT INTO `sociotags` VALUES ('2', '2');
INSERT INTO `sociotags` VALUES ('2', '4');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `tags` VALUES ('19', 'celular');
INSERT INTO `tags` VALUES ('20', 'yoga');
INSERT INTO `tags` VALUES ('21', 'pintar');

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
INSERT INTO `tipoevento` VALUES ('6', 'Baile', '---');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'Augusto', 'admin', '123456', 'images\\perfiles\\perfil-1.jpg', 'ADMIN', 'admin@admin.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '69b003c1b4d5435dab7d9e0670888591', '1', '2');
INSERT INTO `usuario` VALUES ('2', 'Laura', 'secre', '123456', 'images\\perfiles\\perfil-2.jpg', 'SECRETARIO', 'secretario@secretario.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '87bc285345794f78a61c5c985c34fa88', null, '2');
INSERT INTO `usuario` VALUES ('3', 'Javier', 'socio', '123456', 'images\\perfiles\\perfil-3.jpg', 'SOCIO', 'socio@socio.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', 'cac7997ef2ac4a50860b28513fb864a6', null, '2');
INSERT INTO `usuario` VALUES ('4', 'Juan', 'encargado', '123456', 'images\\perfiles\\perfil-4.jpg', 'ENCARGADO', 'encargado@encargado.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', 'f9b100bc1d1d452ea2a5db4a8785d557', '1', '2');
INSERT INTO `usuario` VALUES ('5', 'DASH', 'dash', '123456', 'assets/img/profile/users/augusto.png', 'DASH', 'socio@socio.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '43f12e739fcb49e9a5cbd0de4711be70', '1', '2');
INSERT INTO `usuario` VALUES ('6', 'JAVIER', 'JIMENEZ227', 'JAVIER30992080', 'images\\perfiles\\perfil-6.jpg', 'SOCIO', 'javierjimenez78@gmail.com', '2019-10-30 02:25:28', '0001-01-01 00:00:00', 'f031bcd825684f6ab3223c9a1ef6dd0b', null, '14');
INSERT INTO `usuario` VALUES ('7', 'amelio', 'gutierrez613', 'amelio32972080', 'images\\perfiles\\perfil-1.jpg', 'SOCIO', 'javierjimenez78@gmail.com', '2019-11-01 03:05:44', '0001-01-01 00:00:00', null, null, '15');
INSERT INTO `usuario` VALUES ('8', 'Julia', 'Agostini891', 'Julia5489482', 'images\\perfiles\\julia.jpg', 'SOCIO', 'javierjimenez78@gmail.com', '2019-11-06 23:10:16', '0001-01-01 00:00:00', '6bbb3a7bbfc7433faa438a2a14c0d9d7', null, '16');
INSERT INTO `usuario` VALUES ('10', 'alberto', 'JIMENEZ927', 'alberto30999888', 'images\\perfiles\\adam.jpg', 'SOCIO', 'javierjimenez78@gmail.com', '2019-11-06 23:24:46', '0001-01-01 00:00:00', null, null, '18');
INSERT INTO `usuario` VALUES ('11', 'JUANA', 'JUANA387', 'JUANA5498232', 'images\\perfiles\\julia.jpg', 'SOCIO', 'javierjimenez78@gmail.com', '2019-11-07 01:32:33', '0001-01-01 00:00:00', null, null, '19');
INSERT INTO `usuario` VALUES ('13', 'Emanuel', 'encargadoEmanuel', '123456', 'images\\perfiles\\perfil-4.jpg', 'ENCARGADO', 'encargado@encargado.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2bbd20445ed04d01b3e7df7b977e2650', '3', '3');
INSERT INTO `usuario` VALUES ('14', 'PERALTA', 'PERALTA939', 'PERALTA32972080', 'images\\perfiles\\adam.jpg', 'SOCIO', 'javierjimenez78@gmail.com', '2019-11-28 00:06:48', '0001-01-01 00:00:00', null, null, '20');
INSERT INTO `usuario` VALUES ('15', 'LUISANA', 'ALBERTI107', 'LUISANA23432394', 'images\\perfiles\\julia.jpg', 'SOCIO', 'gracielacasartelli946@hotmail.com', '2019-11-28 00:19:00', '0001-01-01 00:00:00', null, null, '21');
INSERT INTO `usuario` VALUES ('16', 'AGUSTIN', 'FERNANDEZ950', 'AGUSTIN54343434', 'images\\perfiles\\adam.jpg', 'SOCIO', 'javierjimenez78@gmail.com', '2019-11-29 00:08:00', '0001-01-01 00:00:00', null, null, '22');

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
INSERT INTO `__migrationhistory` VALUES ('201911070031045_metodo-pago', 'Renacer.Nucleo.Migrations.Configuration', 0x1F8B0800000000000400ED3DCB72DC3892F78DD87FA8A8E3448FCAEE9E9EE9764833E196EC19C78C6C87E57EDC141409C9DC6691B524CB21C7C67ED91EF693F617167CE391890741825572850F5611402291C84C2480CCC4FFFDCFFF9EFFED719BAC3E93BC88B3F462FDFCECD97A45D2308BE2F4E162BD2FEFFFF8C3FA6F7FFDF77F3B7F156D1F57BF74F5BEABEAD1966971B1FE5496BB179B4D117E22DBA038DBC6619E15D97D791666DB4D10659B6F9F3DFB71F3FCF98650106B0A6BB53AFFB04FCB784BEA1FF4E76596866457EE83E43A8B4852B4DF69C94D0D75F536D892621784E462FD81A4F4FFFCECED3E4C48B65EBD4CE28062714392FBF52A48D3AC0C4A8AE38B9F0B7253E659FA70B3A31F82E4E3971DA1F5EE83A4202DEE2F86EAA6C378F66D358CCDD0B00315EE8B32DB5A027CFE5D4B978DD87C1475D73DDD28E55E510A975FAA51D7D4BB58BF2CE2A2A4731B07EB95D8DD8BCB24AFAA8AE43DABA04441448AB3A1F9372BBED2373D5F50F6A9FE7DB3BADC27E53E271729D99779907CB37ABFBF4BE2F09FE4CBC7EC77925EA4FB2461B1A5F8D232EE03FDF43ECF76242FBF7C20F7ED18E268BDDAF0ED3662C3BE19D3A619DB9BB4FCEEDBF5EA2DED3CB84B48CF0C0C1D6ECA2C277F2729C9839244EF83B224399DCB3711A9C929F52EF575938571A6EB5007E4551A06F9039D5D574057A40C9284BCFA4CD17704468A9241E8A72C4B48905A43B927E1A780E5C406DC15A5F647AA10F4F0DE069FE3877AAE04C8113FD40F24A96B159FE25DA31D180EBE152ABFCEB3ED872CE18484AF737B93EDF390A2F331D354FC48678E94E678E754B15134AB31EBB0E6AA823833355418B3D56CF12D1A065763DA560271ACCB54D8351520BCCE37835653EA3A81EF47A83B0EC249E3A17DA5D9F62E275D7F74C5A586C37A751D3CFE8BA40FE5A78B35FD933242FC48A2EE4B8BC3CF694CED0CDAA8CCF75ABD41A724CCE35D582F8D33F735A1FE9D42F1522895E9E3BAAAD49AF78A1411B157BA10A87F0474419806D44FC17F00906C96A3F9F86E58A366EB23909643E3D515D5D2A46319404F73AAEDB6AF39286BB082A4B1E15AB6CB09C1D7EB167242A9135C610B365AA9C7A4C317AFD98D6CAA259B878EACDA68250DA1756BB7F11AD96A95CB6CBB4F6D9648A6D9695D44FB7A82EB621854334FCD23D7F5EC63BCCB2659D3F845C0615DBCCC49C0D2D0FF7A5637BCCEA2F83E0E11544CD553ADE13E060F05A89C6841A303DB192858A524154A5A54AE61AB3D4B76F621B5CF28985BAE32A3F5913A92EE442B3AA94E4A040B8D496B9F14A57745A9168FDEC28785A42FBE658489613FB9583637803AB6A222C8A9BB348BE281CBBB158AF5A1178C605D045351289228289643D433B776862DDD88D380BEF54990BD0BB2B85BDA9124893D6CFD4A9290FB2C9DBFA39024FB24C867EF876C8338F1707A5299775759E86696A5790563BF65CF4F66C4F92ADBC6619C4C72C8F2A48CC968208C729D64EA41EB645F2C5B68409D518B106AF18E58CC7124E5E5CAC6EEADC54289625F0B42B02D54A0D7D5703B3D1FE672CCC979D7FAB456A27DDD05791E7B5859AA73A3D97BD9C5C5FC43A1EBC1FCE4CAA2F71915EFC46D1188C86EF235CB7C6BDA28806EE11C21BF1C84930CE31C3987BD6B3CCFAD9FC188F9AD5B9EE6D5EFBC9EF631C7B68F29C8E3FC246B0EB02FE3CFA78D1982F3441BB338BACCD232085D2FE3EB9DD55BBAA7DAC62C01AC3666CBEF0FE7BA3C47F73E614F7CF48870A8229E107625D2B64728B6DD90A9B7B60D70705B2B142178CDB59DB5385185119B670BDBC006B6AF5C0182D224DBD641C24758455DE3936184F675328C4E8611A9BC5F126EF95A6287DB5F098FDCDFB6ED4FC2EE57D8CD6FEBC63BEE9E3C760F438DFBF5D8AD85FA709C6D2773210EF7BBEC3A4EE3ED1470824767380F94E7F6F140E5B17120DB8CDD3E52AE48ECB73F61D008FDE53E1B3C919F9C73748DD59B5412A609109C12AA277FECA536D0A31CAD710F6B8D6BB5A34F75BDC1ABA502B910653CA1BB6AB04775538AE1C7561985E3953666CBD1075C8538EC2D6E85FF3FB23CC831CF27B6AFA1228C7557AE44B8AF340A5746D8098C3053E3964844964B25872DA0CAD4AEF56A9F7A03677A432F7AAD03AB9665D95A12864321862053C3ED50A4591CC79C88542D4F7634DA97273B9AB394AE48186FABFBE9F739FDAB8DD9FF61BDBA09836A8C3AC3C7986B5A55338A6FDAB627CE41FBF2115416055FDEDDFF4AC8EF7D4F7564D2F0D5D254FA446795339067C3BCEA89B39F7D1F3E7066F1080160DA9F8440D1D734FBF509122E3CF15B39B09B5769B8278C904D10728A9B44D696A56814298C4F2B23F87DF08058EB55C92D27F90382629964F84A156CCD5E3CA9020B55CAAA20152A0937415E856AA0A37462D5F0A40CD1BE96B025479EBAA579F681DA9E77CE8A1B387D7251DFD9DDE0213A87EE1E711E46997E829439F114079C5B526651D688AF3FAF8F066F4CDBB6C5829EADBF4A7A8C29B255FC1C9FB96A7E102F6869187FB539FEEA6B687E52B5B8FE3AF6EB2FF3A39FA4F25123E30E7F9AB6273E9A938F8C34B73F7798D6074B4FC429DCC55A06831CC6842249E78AE54E2AF73AA0F40CF7C9B833D2BEF5495070064E6377C3EC739064F90466E22F559E25CC77F710AE3CED19F7B7F1A120028C13132BFA9A24B127A36D9C599935E647F3F08E05E276B9A05A09B6C3B881B54060C35BA6F6B02AA095A4F501AF395DAE4BB10FE96806ACA0457582239A0F14D5F4C16117C102386904B4AF9CA3B38B3437902A077492C6AE0E632D5AD3789F95E4B1CCAEFCA6DE5CEC5260CCC1362B2BC0C936502CA900A8CE747A8A832E2929B9548DDE14EA8984591E0554F646DA2C2C80937AC245372EF78987FCA81E95436DF5F0FC6365FD98C756933027E5680788A1F9893FD1BE4EC144A76022728AB246C5C36794F529A879D4F596321AB65F03C09058A9548E8B95AB38D95D3F177BCB05AD6D715AC37021F5B386EDBBA99B7B654982CFF38F26DE060F647E6331CFE6D7F57E96486FEAD5F670A0926D1F2702C859C698330033D5B9DF328A9371997D53BC4E8287E111315C95DE7C294AB21DDC6DBF596D0BBA6F49E2BB417DFEC9547DDEFDE52FC1F7E1F77F7EFEE3777F22CF7EF8B1A26044F2E40BA5383B3A9E1ED7647B47F26E47B34FA380EAB35F82644F7F3E93A8C7D5BECEB8DACFD5B53FEE49C15697A786ABFE2B8952BEC1771AF89FF63957FF4FEAFAAFF398ADFDBDBAF64D4069CFD6FFB3CC250D3FB01F5F16D551483DE92D1C281326DFEDAB345A19A4C51C9CB519C6BFA62C12EF2853507EBD58FF411A921A76EFAEC838820F794D78D8F264D3F598E4D582182497D4C6A12C1AA7A5BC78C76918EF82448F86D0D470E5AF66A2EF442CB9223B92568BB69EC066BD33E491D1E87B134C131DA1CE370CDB9872D390E7453FE340E297C9B80948D33DC0AEF3E12BA18E1A7B6739EBB193ACE8C9C62D1ADFECA8F9548B33CB918088572912C86BD677BF0F5E4482E4C4F8D85C2BB2E4DB70B80626C03FFC033C53898F904D0BC3104BAD35A0D7DA4FE68346D2713120870C4DB3080B8C800749818969D6F1409345E4444C73A69E5CA5BD32926116B5531014BCF1CC91DA27620E3AF50C2BED92915CE3CF1EE113DBA9B152D82123C7B9B0FD0122E14D3A8ED0EE405FAF424D4DED5356A32C06B33E10AEEA7320CD63D36AB0F161DA6A886ECE693DA916E136F8294F8C0D34EF7A32AB2E9F69C59CD1D46F821A72F2446CA6C4C5038F29A96DD6FFB2CC65C8557A76B2E7A38360A0C538E7E85986CD2CA5996230CD948E759E9D9DC973AC040D6D469BF0C3C98EADD04C5526682269AB748430A502F232F2688DEF224FF878FD89164E1443296BE9B4B890F589C54CB840CE3236A1A049D9C918E07D3AA1A9840D482881E1A8CA2E3160C8C5FF9AAF53AAA468F6B23B4AAA70143C88134EDC23902326081D9B5F28227D98D72602C79C5B802076DD7A341193C83D7B600E99788627A20D2196E309561928E712CC0CE0C81F609E1923453525AF0058F8E21880A8665D73A459847BE4643D260B87107831E9A2C4476CE88E2367589238043CAF481C61CDFA6EC9B2A45DC7E636D5185E60A2D309F6DD507654932BF56937DE0016FE760800690D4D9A81384B7211937E5633D9502EDA09780848602B9E32CF6916A358F8632199B016C7CA4B1AC6FCC6D8441FA12D663C5D5E58496991F17EC47CB42AEB65111765959823B88D8C4ECEB00610B70D756D580DEDC1F6EC6C226ED3E1E381D9744437434120D6D2FC66A2DCE0EAB3F0DAC23A4D8D895F1E7B0ADA4CBD07142BCEC2518B6C00B1FEFD72D0916DFFC48C68D8E4A2E9D198A3C42EF39F39CB6049D53CFB1B216878601C84AC263DB399F316611D3C811236DD06D994868997528D99B3953E1713D4CF4CCCA545C6039B69096F860343AA83E038F54AA74986350BA72DB2F029915880BB8E6C0984D22961F3ADCCAD34CC369F0ECD9C9D5469997C5DED2A70F0C04B0A021B1AE24BEEF180C45746538DAAA649186911A58463E09B8B8E4C1D01493CB0595665F4606699492C65110880A702F11D0D8062E2819370129B1FABFB8A0B78556716A843BBE29489AB8F4892B5E95480F4013F17A4CD2050B4C9114496A8A0DE90B24B6EC51C0EBCEA7319002707126BF170F843571994F2CC4E824638CF5C0918EFB8AB815556813C12883ABC4787C5700A24A3809D10C99419E2AC64AA603158F22878D194C7C3976BA0B5591C2528A0A6945AF781A132002C12111C4FEF670C8E06F1429667096339435EEB5EAF95C702F91049CD8767592500BDCBA20644CCFA684850142E2912A42A15738BB604A7F1243299168CA0F8A5A2CC22DDE9914CD5AE44038149E02CC14077AE38946E3388C3FACD8CF99BE4B80020DEB8D341E15250CAB0B8629D303316812CD14CA1064E9F234A02D227FE1220302BD70006CA62B2626A8A0A140B1CE6EC1755BA937E1C9CC6965668B3FC260CB00855CE1B7EE0564419025E954441E2629171C8D1B10E4491C362196025B06EBA90A3CF6CA72206683923D88BA6B30321444B99258372B9B527889C6A022088261F05370A3C23857A3235400052109531664F093E0F024406A1068E3E9C5281C5BD407686DA84140C8C103379C68E5DA936C52A3ACC95EAD274F8DED4A410978F13C0443D0A355D08E0412572D1EAF8C0F5AA90ABE732688FEA0F8D78879605A3E8785EA5EBE2E30DD5991950845ED87EC69E5A70C436402A83D06E6E48EAE06E56E6351E38A6D1DCF32D237AE21853454F0EA2A7C3520460C3687122A0C1B6D018A070DB51C480826B19401DD6939242388752534411838B8E078EC21D4F1F38ECD654161DA9351C6EA809058790A263928248C793470A1965400DD83B13057A7D5C26892EA4941B8522A8941943AC0C48328A22D51277043DD8C777653A6051911CC6405C2483297392A51835100D398702919FF745C68C46FDC95843717FE3C60F45FB997190A320B486A45A0E807B539471F98B534729E0EF4975F6EF7845C9BAFFE26A12751286341BE4223C4A4542BEC0260722E3A9C11E20A3C4C0028BA02100A145A34801C4128906FA54CA118F7DD1DAE8666CA20F9599C056F7C83B68F006402FB3400F6E5CDA500F6658017AE56906D2838186841EA86965C6589A3005273A2DC34FE81AA576B1C70681AE50F6F4987D7D929EC79689A0F417E710C73CC6D98350F8664F09C6C3D992E265589920865ED0DC98F47ED0CCE8A40B4905B1F48ECF10E01948860A91810BAF7244A838B9906976C1025FEC9489A3F544E546A1F24565C6D05D3F2BE8A1723B9D632F08BD0FAAA1868E4F14EE940EB4989D31A017BB80837C8D4B207F148F3B05B203406FF975C02654C0DD6338BDCB5A5F76BEB9093F916DD07E38DFD02A21D995FB20A9FDD98AAEE03AD8EDE87C1543CBF6CBEA661784D5FAF1C79BF5EA719BA4C5C5FA5359EE5E6C36450DBA38DBC6619E15D97D791666DB0D352436DF3E7BF6E3E6F9F3CDB681B109B9F329D1C1AEEFA9CCF2E08108A5B46B8AE9EB382FCAABA00CEE82EAF19ECB682B55E31DF4108F8BAE2FC9074F9EBBCE15A36B52FDDDCA1DFFD6DA4B14CA40C6D77464D5B4D68324CC9CAB1AD3E6D5F3ED410E3C93769925FB6D8AFB66AA5AB79A9D0781A87B151CC6158F87A588E254C1138E8879989AD8631C6EF7B4200BAEFB660EA57E7A8B75CB64C1498532DCF38DC00922C36D248E13C45FE461230ED7EDD48C995C79226FC0E79AF6F3B07AF7C61F0BA1FB660E857B269905C5152C2938B0C4D88B0A938156008525A6C561D53271458A8800B2D27EB784F68FA02821C96BBF5B426BDED19380359F7DAB9748542911AC46B0F601A29954BBE3C5941277E1EAA0935E29E018A82475F3AF492385414589281086C67CB6D1219C0F394F2A65D27D1CE6844BF8F016A724F943D1329AA46E44ADD8F83E0E311CF9E28391E8CA13CB41903FCACD0DE4176C750862BB945AED8D07179D8A013151A878DB43981674EDDC91248945FD327C3587549284DC67A90069F86AA19149B2A75F057DDC7DB4D09CCD2BC79CE26C3ED96AF4FA4C45D6E660509E62C672F684839BB71C3FFB5063C7C472095B46FCA12D1CDE6995986F33AA709E36DF8862404C36A178DB7914D45D90E7225F76DF6CCCB32421A269567F3287B18B0B018FE68B95E84A126B358A2C7A9F51A34D5047CC671B037827EA8FF6D3C1303B7F98EB621CA900999849EAF687B0322F3445D86588F1D4DC40000CA60469770853713292C6194905791446D47CB1DDE45EC69F255CD88293D986C11B22E07970F81BBD38B4DA8A7A4BEDA76D2C0F592A7C3AC6A5DD41CB426A5B118068ACB92F111806CA1B6F7AD2DFC7ABBF73920042397C3D18EE5707DE5959950818439B126D7D0862B0D4119CF33DEBE80BD6D3CDAAF8FC0270F5B0E88DE8D4F7BEE17E975DC769BC15C0B1DF2DA1058F30B4F6BB39B4873C28F7B1380BC3577348DB4C9ACCF693CD010A959328E81E27E30F52B8A22774BF5DE3C0C54EC1682A5FDE32C158DD875CE56BBDF75B684D42A38BCD8D6528A0D0C45286DB1DF28A64A36D169A4F45C8AFF18C7609D2ECE7146D39CFACBAFAC544C19777F7BF12F2BB0065F86C0EEB131D3AA0F099CF76B00075CF7C3E187E8B95A1B5C62CA788D035603B65EB79586F4AB7BA693C6E0F65219B77B96E5A508B784F24F910CB0E464886A8710711A91345DACB06DCECA9ACB28A23E90F248CEFE4F3E8EEB38D80A236ACE6655A1C662391D99D786BCA7E5F4E4C29CF80A2DA7DB73A78977755E83BD00A9E206516654DAE548E3198EF0723EECA387ABB33B8B1E73DAAC6872CFB63CF7C96BA6C68636B5DB64F3008930D14D6F2902778C29B06E66926EEAE41F164D3628CA20A583666956B0C8801B328DACEC32E412ADAB4CD1773089F832413AE7FDA4F962BE32F5588037A57CB953EB1CB50315E7B0AE68341D9B0200661AE9DDA54118D4C7E731E96E2C92E1C5ECD7CB245C37CB6F0DF93C0EC0ECB246A63C21DF88FCBE36ECF7CEAE6F3705ECEA59EE76E8E1549E9F5102B1F03924A8BA854688D297C012515DA78033C96D91566D3C9A5C770FEB29404B16F0FB8C891028E891C299BCF2347B4F37D227A94B4DF96BB4EAE1535FF2284A4C7550F462CC84B4C5E0A074EBA41A118F091AAF157B27F79929E52274FD7932FA9F92C1FF8F6A97B7AC74149FE0C8330D09068CB43568FFD63452C983DFC4E910A4E98049FC5A0A6E69385E06F8307221ED8B7DF2C4CE34C5043F507BF4AF5D085B9CC7E1709DD7E5ACEFFEDD0CC7A3E3F17AF67C067A8F441D86C6D34DA1A8883AF528F09D452BC592553CA48FB0C10E1C741191CC6A1873E4F6A845EF586921D62628A35EB59061E9352E53C10EB02090E54394A002AA28F4F79A3A1215A6E53CBBD00E3798E85778914332CD504C300CDA45780E538AD0DB409265644EBE824167AAC45E39BCF5736F27984F41DFAA4CB589968004EA18AD1476246A2668DD365964671FD96F79BE2ED3E49A8D1122405311CF0A44C313C6562C416437543C7490DFDC5075B0E8A39C427609E0A7B48F954C52ABD25D97EE97FF7F954DB5CA65C92D59A1E55CAD49A0E459B57554C6EDA5459AFE8E03FC7519DD8F4CBCD7F266755F959FD67E31530D4B80ED2F89EEEAC3F5606F9C5FAFBB3BFAC572F9338289AB4B76DDAD617E28BE546795C9F7F57E57125D1762336B7CF065B41298A280172C156B2D572079610F5FC9F4462848E4154CFD49F6FC486E7003F366FEEC615596BC1FD3BA1D31E94247A1F9425C929B1DE544FCC5354D7AB8AE5AA64FA3DDB6D34E0DB1D09D387F47AFC9B34228F17EBFFAADBBC58BDF9EDB66DF6CDEA5D4EE7F8C5EAD9EABF4774CD6CAC6CBBEF9B3AA220246EB545836BEE844A77F8D460709755BB7C4B1052A2D706564439A58CB7A4924912C6452D5DCF34D0D9EDA6522214A9538F5628BA73A7A68B244B1FAAAB42164C99EFB550B87B1D375007212A63656402E160221AAD7B6F1A3A75CF46CD39C81402B80DA9981E70738C660AD7840F7925355A3006DD341644206939038D69ACD3F0738D934A9B4AA531E95B99615BEB052E67ABAD6E601A4FB8768F1988708C7E0CBA00C8E5371EBCB1684A07525F95449A6B3038D9E957452C60D5E8DD24DCE00C4E128E3AB0F3917003D3DEE7B99A98BD3FC218354A1B3AA950DE7FC175284C922EEB1D5DD7D4DD623CE97383ED239CF4F4681555973FD5D538AA13A8BA016952A8BAC1A8B3A83A8E6548A13ADE3E6AF3A7CEB2562A52901E2D1BCE6A5C00E1135F15A14E86850D90C6FFD21111D6F5F264E71C8E9DC32630B5C5A06BE96E68B12EAA939B44C765C58D39A13356FC7072D193EE3FE97E04C890A17436CB0D4CF4F955B1A4F9A1D0E98E6ED63B3A3689E7A8A3E8A3BF283B807B4A36BFE8F8FD269B57743C9421A3A8C3AD7E9B7BA881709F64C188D1F069441DAF298EEF2254CE243A13F2F3F531CDCDEBC11BB4E6A6A8ECC9FA952F659C9E8828C1B7D5911B43FAE73F50D4C3A082F7AD358E8CC3A29D5EEF1B625ADD810940AFD5A3658309DC2298CCA1E3953C9332D40D1B265FA81BA083643E34E9E7D132E0C22E5E8B39A21EFCAA38973920262C9DDE934ACEFE79B4D231C32A3DCE9A679288BA784E01B6AAB9D0318D2710BD26DFE8D272676C877769481D367531B017333B34AF9A39919C4D593ADFA9DCE9A869B2A326F33D119490F32BA7FA64A7F34C564F3B991D5A5A88ADF19C2379358F76D69B249D93AAEC3669A7E3A91797A673F1A31D7BFE80925E1E2D972C1AB5C664DBB4EDBE6FEA6E34B10BF8448CB86341BA1D2019F3279E17F36899934FAE395EED48F9345D41C1773396A0E4A499AED7665FC3A183B93CA0F92D8F561EBA54990773530BA4C674D0A3E66E9348CAC9A39DD803B3D09FA0FFCCC977722EDFC993DFA0C74D08984AF22B577B7D524A476DD564A57494EB362BA5A3B35FE6AC6026519A07267D66365293AED2D994D658F86650649B781AF7433425A4992AD06474941BC019DBF4FA83EFC8F2C69969EBB4D875C8DB75DFB49A6363A24CF768368168063D60AED53914F573E8897C00F388985BF20FDF7C8E9984133B9A4DA12237E374F237746247BBAEDD31CB1D93FD4DD24611122BFB2A8D561FB2AA23291EA84AB176C67CBDDE2765BC4BE8CFF2CBC5FAB9448C0194B494D4A098AF3CA83F48A0281F90BC32B182E4324B8B320F6239A9F1FB3C4EC3781724D200849A86C66145D81EA65872457624ADAC3E6988669D3174947BED810BCCAE230397F0CF9413D4A956C7CFE2732901E4BBF48AEEAB4BB27A193669F92E83220CE4E7A4EB94885A2C2AAD03225217CCC251B6933C0D47017973C7D8344B7115943293994F711A81D97B829C643AA7BE79084F4CEC957BDA7B6E9C69B8307B8E7DF892435FA314F90266E608C3CED08765BC70845996F783D026E29E46C0822F3B669DA2C9D57F786AC52C273FAB0AB079544DE293652BEBC95E80BF0C9E49F0C068CD9E318403DB872915B31CD473397C345FB2B8B3B51A4AFB65163E8003F6E7E101EC595EA8A381720B4EBAD7EDB4DF79F7BA8DB699F8A5B7D0262F95D8CFDA4CEB487F50272130DF26C76632DDB9C6D4FC513D09B300D71CECF678098EF164C25AF1CBA2B66BC32D0B6C87FDAE31DEB7C136AA69D92D3067DA9668921A9E1984C41D3D2BF4DF2DCE45C66C8626640B70B8F330C5889D0E47D445F8837B33E396689863E4D616670FF0CD93C6B4E54B9EC4DE54F14009DAE1B2ECB1145F000CF1A438E1F858807DCCCF79D69E9D9DA9669F0B486DCE379A2FF3CCBDCD5C38CD3AF8E6217C22A57A87CEF3A4AB9E551A31F707BC1C786384510B413BF4C5F9A17FBA716E35D0E5D46101F5DF8E9C0390572E0F52193019166E89072D00A483A82171DF8F7CFED1943D68778BCA7F15E2791B0289CEAC176DD5C4B381A43584E6C33CF711C66BB1E34CCB7967D07E5A822D37C378222927E93C9439B7173A5F33CF116F71255F00F1F9236E220E51C37BBB54B0E7B5968A4BDA7739DDE8534895ABF0747E9C07B4CBF7EA806965DC0FE45B72FE4B2C5F92703E2CCF1BFBF9701900CB0775001CC012F0004E823D6B828537FE3EF5C2A8BDFFC2EA6178C9FB36323A0D1A399F2A16915F13AFE1B19FE7716019315F4E0CC28CC8AC3781A44B738867D5B1145F78551AD63C71401A63F6DDC4521CE06D2F613DFB4B6E25DAD48F4B789D745927B943A8EEDBD3F03C01136B225DB1892217610521E3DFED16C91039CCA094D0AE9E43E6AB393388E9064180BF81CA6622E6401262CEC318CAEC8A68970C650F8243665F2B96E70A6FABC6388E5872E96033307AB969E2523EB2A0F88223BF6BC2135BA2FD2DBA97E0D860768DB0240F78D305235860494530E4275CC47979C88EC87116F3F9691893581A48B4379FBECCAFEAA4247578569C92BCDB5D6411791DE745791594C15D50C8470C55AB1B524AFBD0F5EA559FE604D821DE849FC836B85847F563164DB214B65CE216BE1FE10C46EA4A28877A531EE3481DF29E95527F7C31D41D5F43D35B1DB32175527F856057A129FA110C471432FA4319883B76BA21CFCB10E525CFC95006CE071620265387D734329DF87290627C154D87AD6E963A6ABF431D80EA5C023C44434AB08722083C164609D2AA77680529D597627442FC616506C38451258586E2D7BA6AC8546ABE83246A9C6775907B0F3709765F0241EFBDF274F0B93B76A90FAE14EA47E1A92075D5B872487D349F21E04D8909076153CB16A2FC6338C5DDC9913CC95D0938CD5DA1063CB3F5963A60CAA02ED05D3BDEC96F98CA906A283B6C2AE9998CB79DA54EF962A847BE86AE372E81B6DC1B570CF6C6D4D00F8E35046515CC14827A9829D7F4D3E5AA953BE94BA01EFA42D3F5175EDCF962E52A6CB4DC4BE9262073426FB608950C66AB8F3985974B74785DA9DC0563B102E464A2F9574C4D91AC58D03FB71591CC17DA9FC232C1EED898B6B8E9B4E187653564298C5D397275D0BBCB20E0B6CCECF3CDEB8259C8D0C6651B92018AE2E677B9C20800C4171E7AB74F578E18DCCCABB6F3EC905516B267C647134B01A3374B42E534DB886AEDDA2A777A530C1E6776B3E449FCEC6123510D6341723417177DDA1E8008420D1C7171F75563AC4850239D8332CDE0FDDED8E1299734B1CA3CCBD9DC433459C2909ACE48CB6D4415307C9C7CB8B8F42235A7535C7E86AA589AF80AF32E4BF331309AE4015A8C8D12424883178E6CFAA1E3B1C98E1A7D0419E05C06000D0C921E4CBC2481C7C38DF2539EFA8EE005EDE83D0E1B18EFD40365E3D2F1C1A2D1EBE3D0E5576DF628B059B2A1382EC7210A7CA21EA9D267D579C0DE99990F3BD68C1D0E4F9E60D8C2C16CDDACFFE63C5420C81618A82E1477826102E7C37553D5C1AFFD70998052609858B8E918B9E3DAB027D27513F0C479E470380A2183528485B9CD819761CA41821A1E05BC379CED633F0C0AC4C1E08A0775799FEE2C6BFE959409FEC2478A4588C906A38CB032C4C9CF50F12027AD9938FF1CFB5B57D1781E800A66B13F530C8483213B6ED400142E194E64D0B0824978CB647CE079E8A82257C77038EB711FC314831180512AE315263F04102E951BB305B931B61F2EEE700F0CDCD03B9F435FBAB4AE07A0F22257B85E43107E03F9660252A05C6EE082EECCEA7E870EB9510303D77A5B4FB09980FC00EAB6CAFB7DC721A353AD732C769E675FC305FC63A1C34D8D17EDF4279C9263444337DCE5011F7AF72A5DEF00DA979D6F9ADBFAF603FD59D25DF803B9CE229214F5D7F3CD877D5ABD85DAFCBA2245FC308038A7305312720EA77D9D37E97DD6B9BE0A1875558467FAAEE9D8A2A00C5EE6657C1F84252D0E4951D0F95EAF7E09927D253CDB3B12BD49DFEDCBDDBEA44326DBBBE40B4B8CCA7F56D5FFF946C2F9FCDDAEFA554C31048A665C3D1FFB2EFD691F27518FF76BE0B5400444E598DBBE6C5CCD6559BD70FCF0A587F4364B0D01B5E4EBFD893F92ED2EA1C08A77E94DFDC0B03D6E3F17E45FE42108BFD0EF9FE388E43810FD44F0643FBF8A83873CD8162D8CA13DFD497938DA3EFEF5FF01D8CF709682E80100, '6.1.3-40302');
INSERT INTO `__migrationhistory` VALUES ('201911090000083_estadoEventoPago', 'Renacer.Nucleo.Migrations.Configuration', 0x1F8B0800000000000400ED3DCB72DC3892F78DD87FA8A8E3448FCAEE9E9EE9764833E196EC19C78C6C87E57EDC141409C9DC6691B524CB21C7C67ED91EF693F617167CE391890741825572850F5611402291C84C2480CCC4FFFDCFFF9EFFED719BAC3E93BC88B3F462FDFCECD97A45D2308BE2F4E162BD2FEFFFF8C3FA6F7FFDF77F3B7F156D1F57BF74F5BEABEAD1966971B1FE5496BB179B4D117E22DBA038DBC6619E15D97D791666DB4D10659B6F9F3DFB71F3FCF98650106B0A6BB53AFFB04FCB784BEA1FF4E76596866457EE83E43A8B4852B4DF69C94D0D75F536D892621784E462FD81A4F4FFFCECED3E4C48B65EBD4CE28062714392FBF52A48D3AC0C4A8AE38B9F0B7253E659FA70B3A31F82E4E3971DA1F5EE83A4202DEE2F86EAA6C378F66D358CCDD0B00315EE8B32DB5A027CFE5D4B978DD87C1475D73DDD28E55E510A975FAA51D7D4BB58BF2CE2A2A4731B07EB95D8DD8BCB24AFAA8AE43DABA04441448AB3A1F9372BBED2373D5F50F6A9FE7DB3BADC27E53E271729D99779907CB37ABFBF4BE2F09FE4CBC7EC77925EA4FB2461B1A5F8D232EE03FDF43ECF76242FBF7C20F7ED18E268BDDAF0ED3662C3BE19D3A619DB9BB4FCEEDBF5EA2DED3CB84B48CF0C0C1D6ECA2C277F2729C9839244EF83B224399DCB3711A9C929F52EF575938571A6EB5007E4551A06F9039D5D574057A40C9284BCFA4CD17704468A9241E8A72C4B48905A43B927E1A780E5C406DC15A5F647AA10F4F0DE069FE3877AAE04C8113FD40F24A96B159FE25DA31D180EBE152ABFCEB3ED872CE18484AF737B93EDF390A2F331D354FC48678E94E678E754B15134AB31EBB0E6AA823833355418B3D56CF12D1A065763DA560271ACCB54D8351520BCCE37835653EA3A81EF47A83B0EC249E3A17DA5D9F62E275D7F74C5A586C37A751D3CFE8BA40FE5A78B35FD933242FC48A2EE4B8BC3CF694CED0CDAA8CCF75ABD41A724CCE35D582F8D33F735A1FE9D42F1522895E9E3BAAAD49AF78A1411B157BA10A87F0474419806D44FC17F00906C96A3F9F86E58A366EB23909643E3D515D5D2A46319404F73AAEDB6AF39286BB082A4B1E15AB6CB09C1D7EB167242A9135C610B365AA9C7A4C317AFD98D6CAA259B878EACDA68250DA1756BB7F11AD96A95CB6CBB4F6D9648A6D9695D44FB7A82EB621854334FCD23D7F5EC63BCCB2659D3F845C0615DBCCC49C0D2D0FF7A5637BCCEA2F83E0E11544CD553ADE13E060F05A89C6841A303DB192858A524154A5A54AE61AB3D4B76F621B5CF28985BAE32A3F5913A92EE442B3AA94E4A040B8D496B9F14A57745A9168FDEC28785A42FBE658489613FB9583637803AB6A222C8A9BB348BE281CBBB158AF5A1178C605D045351289228289643D433B776862DDD88D380BEF54990BD0BB2B85BDA9124893D6CFD4A9290FB2C9DBFA39024FB24C867EF876C8338F1707A5299775759E86696A5790563BF65CF4F66C4F92ADBC6619C4C72C8F2A48CC968208C729D64EA41EB645F2C5B68409D518B106AF18E58CC7124E5E5CAC6EEADC54289625F0B42B02D54A0D7D5703B3D1FE672CCC979D7FAB456A27DDD05791E7B5859AA73A3D97BD9C5C5FC43A1EBC1FCE4CAA2F71915EFC46D1188C86EF235CB7C6BDA28806EE11C21BF1C84930CE31C3987BD6B3CCFAD9FC188F9AD5B9EE6D5EFBC9EF631C7B68F29C8E3FC246B0EB02FE3CFA78D1982F3441BB338BACCD232085D2FE3EB9DD55BBAA7DAC62C01AC3666CBEF0FE7BA3C47F73E614F7CF48870A8229E107625D2B64728B6DD90A9B7B60D70705B2B142178CDB59DB5385185119B670BDBC006B6AF5C0182D224DBD641C24758455DE3936184F675328C4E8611A9BC5F126EF95A6287DB5F098FDCDFB6ED4FC2EE57D8CD6FEBC63BEE9E3C760F438DFBF5D8AD85FA709C6D2773210EF7BBEC3A4EE3ED1470824767380F94E7F6F140E5B17120DB8CDD3E52AE48ECB73F61D008FDE53E1B3C919F9C73748DD59B5412A609109C12AA277FEC83DA405F917D445571E17123ADF2EBC61DBA359EDC8E2EDCF57EB21642E4FE9571BCEEAAC10EDC4D29861F5B65148E57DA103147977315E2B073BA15FEFFC8F220C71CADD8BE868A30D65DB912E1BED2285C19DD426084991AB74422B25C2AF9870155A6F6E457BBF01BF8EE1B3AED6BFD65B52CCBD692301C0A3104991A6E6730CD5A3CE600A66A7932DBD1BE3C99ED9C617645C2785B5D87BFCFE95F6D8A801FD6AB9B30A8C6A8B3B38CB9A65535A3F8A66D7BE21CB42F1F316C51F0E5DDFDAF84FCDEF75407420D5F2D2DB34F7456397B7C36CCAB9E3873DDF7590767858F1000A6FD4908147D4D733C30417E8783DAC378BAE27E95867BC208D90411AEB849646D598A4691C2F8B43282DF070F88B55E95DC72923F2028964986AF54C1D6ECC57338B050A5240E52A1927013A471A8063A4A27560D4FCA10ED6B095B72E4215F9A671FA8ED79E7ACB881C32E17F59DDD0D0EA973E8EE11C76F94E927C8D0134F719EBA256516658DF8FA733269F0C6B46D5B2CE8D9FAABA4C798225BC5CFF199ABE607F1829686F137A9E36FDA86E627558BEBAF63BF6D333FFA492A973832EEF0A7697BE2A339F9C84873FBF3BE695DBEF4449CC23BAD6530C83F4D289274AE58EEA472AF034ACF709F8C3B23ED5B9F040567E0347637CC3E0749964F6026FE52A575C25C850FE186D59E717F1B1F7922C03831B1A2AF49F28832DAC6999559637E340FEF58206E970BAA95603B8C1B580B0436BC656A0FAB025A495A1FF09AD3A5D614FB908E66C00A5A542738A2F940514D1F1C76112C80934640FBCA393ABB487303A9F2772769ECEA9FD6A2358DB35B491ECBECCA6FA6CFC52E05C61C6CB3B2029C6C03C5920A80EA4CA7A738E89292924BD5E84DA19E4898E55140656FA4CDC20238A9275C74E3729F7848C7EA5139D4560FCF3F56D68F7928370973528E7680189A9FF813EDEB14BB748A5D22A7A06E543C7C06759F62A8475D6F29836FFB35008CC0954AE5305CB98A93DDF573B1B75CD0DA16A7350C17523F6BD8BE9BBAB9579624F83CFF68E26DF040E63716F36C7E5DEF6789F4A65E6D0F072AD9F67122809C658C390330539DFB2DA3381997D937C5EB247818DE2CC355E9CD97A224DBC1DDF69BD5B6A0FB9624BE1BD4E79F4CD5E7DD5FFE127C1F7EFFE7E73F7EF727F2EC871F2B0A46244FBE508AB3A3E3E9714DB67724EF7634FB340AA83EFB2548F6F4E733897A5CEDEB8CABFD5C5DFBE39E146C75796AB8EABF9228E51B7CA781FF699F73F5FFA4AEFF3A8FD9DADFAB6BDF0494F66CFD3FCB5CD2F003FBF165511D85D493DEC281126FF2DDBE4AA3954116CEC1599B61FC6BCA22F18E3205E5D78BF51FA421A961F7EE8A8C23F8904685872D4F365D8F495E2D884172496D1CCAA2715ACA8B779C86F12E48F468084D0D57FE6A26FA4EC4922BB22369B568EB096CD63B431E198DBE37C134D111EA7CC3B08D29370D6965F4330EE499998C9B80ACE003EC3AFDBE12EAA8B17796B31E3BC98A9E6CDCA2F1CD8E9ACFEC38B31C098878952281BC667DF7FBE0452448CEC38FCDB52229BF0D876B6002FCC3BFF73395F808C9BB300CB14C5E037AADFD643E6824FB1703724808358BB0C0087890149898661D0F3459444EC4AC6AEAC955DA2B231966513B0541C11BCF1CA97D22A6BC53CFB0D22E19C935FEEC113E8F9E1A2B851D32729C0BDB1F2012DEA4E308ED0EF4B12CD4D4D4BE9C35CA6230EB03E1AA3EE5D23C36AD061B1FA6AD86E8E69CD6936A116E835F0EC5D840F38C28B3EAF29956CC194DFD04A921274FC4664A5C3CF09892DA66FD2FCB5C865CA567277B3E3A08065A8C738E9E65D8CC529A2906D34CE958E7D9D9993CC74AD0D066B4093F9CECD80ACD5465822692B64A4708532A200F318FD6F82EF2848FD79F68E1443194B2964E8B0B599F58CC840BE42C63130A9A949D8C01DEA7139A4AD8808412188EAAEC1203865CFCAFF93AA54A8A662FBBA3A40A47C18338E1C43D02396282D0B1F98522D287796D2270CCB9050862D7AD47133189DCB307E69089677822DA1062399E609581722EC1CC008EFC01E69931525453F20A80852F8E01886AD635479A45B8474ED663B270088117932E4A7CC486EE387286258943C0F38AC411D6ACEF962C4BDA756C6E538DE105263A9D60DF0D654735B9529F76E30D60E16F870090D6D0A41988B3241731E96735930DE5A29D80878004B6E229F39C66318A853F1692096B71ACBCA461CC6F8C4DF411DA62C6D3E58595941619EF47CC47ABB25E16715156893982DBC8E8E40C6B0071DB50D786D5D01E6CCFCE26E2361D3E1E984D4774331404622DCD6F26CA0DAE3E0BAF2DACD3D498F8E5B1A7A0CDD47B40B1E22C1CB5C80610EBDF2F071DD9F64FCC88864D2E9A1E8D394AEC32FF99B30C9654CDB3BF11828607C641C86AD2339B396F11D6C1132861D36D904D69987829D598395BE9733141FDCCC45C5A643CB09996F0663830A43A088E53AF749A6458B370DA220B9F128905B8EBC89640289D1236DFCADC4AC36CF3E9D0CCD9499596C9D7D5AE02070FBCA420B0A121BEE41E0F487C6534D5A86A9A849116514A3806BEB9E8C8D41190C4039B6555460F669699C452168100782A10DFD10028261E380927B1F9B1BAAFB880577566813AB42B4E99B8FA8824599B4E05481FF07341DA0C02459B1C4164890AEA0D29BBE456CCE1C0AB3E9701707220B1160F873F74954129CFEC246884F3CC9580F18EBB1A586515C82381A8C37B74580CA740320AD809914C9921CE4AA60A1683258F82174D793C7CB9065A9BC55182026A4AA9751F182A03C02211C1F1F47EC6E068102F647996309633E4B5EEF55A792C900F91D47C78965502D0BB2C6A40C4AC8F860445E1922241AA5231B7684B701A4F229369C1088A5F2ACA2CD29D1EC954ED4A34109804CE120C74E78A43E9368338ACDFCC98BF498E0B00E28D3B1D142E05A50C8B2BD609336311C812CD146AE0F439A224207DE22F0102B3720D60A02C262BA6A6A840B1C061CE7E51A53BE9C7C1696C698536CB6FC2008B50E5BCE1076E459421E0554914242E1619871C1DEB4014392C96015602EBA60B39FACC762A6280963382BD683A3B1042B494593228975B7B82C8A926008268F25170A3C03352A8275303042005511963F694E0F3204064106AE0E8C3291558DC0B6467A84D48C1C008319367ECD8956A53ACA2C35CA92E4D87EF4D4D0A71F938014CD4A350D385001E542217AD8E0F5CAF0AB97A2E83F6A8FED088776859308A8EE755BA2E3EDE509D990145E885ED67ECA905476C03A43208EDE686A40EEE66655EE381631ACD3DDF32A2278E3155F4E4207A3A2C4500368C1627021A6C0B8D010AB71D450C28B89601D4613D292984732835451431B8E878E028DCF1F481C36E4D65D1915AC3E1869A507008293A262988743C79A4905106D480BD3351A0D7C76592E8424AB95128824A9931C4CA8024A328522D7147D0837D7C57A6031615C9610CC44532983227598A5103D190732810F9795F64CC68D49F8C3514F7376EFC50B49F1907390A426B48AAE500B837451997BF38759402FE9E5467FF8E5794ACFB2FAE2651276148B3412EC2A35424E40B6C7220329E1AEC01324A0C2CB0081A02105A348A14402C9168A04FA51CF1D817AD8D6EC626FA5099096C758FBC83066F00F4320BF4E0C6A50DF5608615A0579E66203D186848E8819A56668CA5095370A2D332FC84AE516A177B6C10E80A654F8FD9D727E9796C99084A7F710E71CC639C3D08856FF694603C9C2D295E86950962E805CD8D49EF07CD8C4EBA9054104BEFF80C019E8164A81019B8F02A47848A930B9966172CF0C54E99385A4F546E142A5F54660CDDF5B3821E2AB7D339F682D0FBA01A6AE8F844E14EE9408BD919037AB10B38C8D7B804F247F1B853203B00F4965F076C4205DC3D86D3BBACF565E79B9BF013D906ED87F30DAD12925DB90F92DA9FADE80AAE83DD8ECE5731B46CBFAC6E764158AD1F7FBC59AF1EB7495A5CAC3F95E5EEC56653D4A08BB36D1CE65991DD976761B6DD504362F3EDB3673F6E9E3FDF6C1B189B903B9F121DECFA9ECA2C0F1E88504ABBA698BE8EF3A2BC0ACAE02EA81EEFB98CB65235DE410FF1B8E8FA927CF0E4B9EB5C31BA26D5DFADDCF16FADBD44A10C647C4D47564D6B3D48C2CCB9AA316D5E3DDF1EE4C033699759B2DFA6B86FA6AA75ABD9791088BA57C1615CF178588A284E153CE1889887A9893DC6E1764F0BB2E0BA6FE650EAA7B758B74C169C5428C33DDF089C2032DC46E23841FC451E36E270DD4ECD98C99527F2067CAE693F0FAB776FFCB110BA6FE650B8679259505CC19282034B8CBDA8301968055058625A1C562D1357A48808202BED774B68FF088A1292BCF6BB25B4E61D3D0958F3D9B77A89449512C16A046B1F209A49B53B5E4C297117AE0E3AE995028E814A5237FF9A345218549488026168CC671B1DC2F990F3A45226DDC7614EB8840F6F714A923F142DA349EA46D48A8DEFE310C3912F3E1889AE3CB11C04F9A3DCDC407EC1568720B64BA9D5DE7870D1A9181013858AB73D846941D7CE1D499258D42FC35773482549C87D960A9086AF161A99247BFA55D0C7DD470BCDD9BC72CC29CEE693AD46AFCF54646D0E06E529662C674F38B879CBF1B30F35764C2C97B065C41FDAC2E19D5689F936A30AE769F38D2806C464138AB79D4741DD05792EF265F7CDC63C4B12229A66F5277318BBB810F068BE5889AE24B156A3C8A2F71935DA0475C47CB6318077A2FE683F1D0CB3F387B92EC6910A908999A46E7F082BF34253845D86184FCD0D04C0604A90768730152723699C915490476144CD17DB4DEE65FC59C2852D38996D18BC21029E0787BFD18B43ABADA8B7D47EDAC6F290A5C2A7635CDA1DB42CA4B6150188C69AFB128161A0BCF1A627FD7DBCFA3B27092094C3D783E17E75E09D9555898031B429D1D68720064B1DC139DFB38EBE603DDDAC8ACF2F00570F8BDE884E7DEF1BEE77D9759CC65B011CFBDD125AF008436BBF9B437BC883721F8BB3307C3587B4CDA4C96C3FD91CA050398982EE7132FE20852B7A42F7DB350E5CEC148CA6F2E52D138CD57DC8554EF77ED028AFC83EA21ABD80463B941DCC4A87C62C9B9BE05098A289FD0DB73BE475CE46872D349F8A4062E319EDD2AED9CF29DA729E5975F5B689822FEFEE7F25E47701CAF0D91CD6273A746019613EDBC1021611E6F3C1F05BAC0CD835663945DCAF01DB295BCFC37A533AEB4DE3C77B1CCBA3AB11D0B4A076F69E48F221961D8C900CB1E80E2252A79FB4970DB8D95359651507DD1F4818DFC9A7DCDD671B01452D63CD7BB738CC4622B33BF12E96FDBE9C98529E0145B5FB6E759C2FEFD5D0D7A5153C41CA2CCA9A0CAC1C6330DF0F46DC95D1F976277B634F91548D0F59F6C79E242D7585D146ECBA6C9F6010261B28ACE5214FF084F717CC834FDC0D86E221A8C5184515066DCC2AD71810036651B49D875D8254B4699B2FE6103E0749265C2AB59F2C57C65FAAC009F406982B7D6257AC6214F814CC0783B261410CC25C3BB5A9E22499ACE93C2CC5436038BC9AF9648B86F96CE1152881D91D9649D4469A3BF01F971DDE9EF9D4CDE7E1BC9C4B68CFDD472B52DDEB21569E0B24951651A9D01A53F85A4B2AB4F131782CB32BCCA6934B8FE1FC652909625F34709123051C133952369F478E68E7FB44F45369BF2D77495D2B6AFE9D09498FAB9EA1589097986C170E9C74834231E02355E3AF64FFF224FDAF4EFEB3270F55F3593EF0ED53F7A08F8392FC190661A021D19687AC1EFB279058307BF8F523159C30093E8BA152CD270BC1DF060F443CB06FBF5998C699A086EA0F7E95EAA10B7399FD2E12BAFDB49C57DDA199F57CD62F5ECF808F5BE943BBD9DA680C37105D5F253413A8A578094BA69491F61920C24F8E32388C430F7DF4D408BDEA65263BC4C4C46DD6B30C3C51A5CAA420D605D226A8329F0054449FB4F2464343B4DCA6967B57C6F31C0BAF1D296658AA0906179A49AF00CB715A1B68134CAC88D6D1492CF4048CC6E39FAF6CE4F308E93BF4A198B132D1009C4215A34FCF8C44CD1AA7CB2C8DE2FA85F037C5DB7D9250A325480A6238E04999627820C5882D86EA868E931AFA8BCFC01C1473880FCB3C15F690B2B48A557A4BB2FDD2FFEEB3B4B61952B9D4AD353DAA44AC351D8A365BAB9832B5A9B25ED1C17F8EA33A5DEA979BFF4CCEAAF2B3FACFC62B60A8711DA4F13DDD597FAC0CF28BF5F7677F59AF5E26715034C974DB64B02FC477D08DB2C33EFFAECA0E4BA2ED466C6E9F63B682521451026498AD64ABE50E2CCDEAF93F89C4081D83B0EFCFCBD32D363C07F8B179C937AEC85A0BEEDF099DF6A024D1FBA02C494E89F5A67AB89EA2BA5E552C57A5E8EFD96EA301DFEE48983EA437E9DFA41179BC58FF57DDE6C5EACD6FB76DB36F56EF723AC72F56CF56FF3DA26B666365DB7DDFD41105211DAC2D1A5C732754BAC3A70683BBACDAE55B8290D2C736B022CA2965BC25954C92302E6AE97AA681CE6E379512A148C87AB442D19D3B355D2459FA505D15B260CA7CAF85C2DDEBB8813A0851192B23130807132769DD7BD3D0A97B3616CF41A610C06D48C5F4809B633453B8267CC82BA9D18231E8A6B1200249CB19684C639D869F6B9C54DA542A8D490ACB0CDB5A2F7099606D7503D378C2B57BCC408463F463D0054086C0F1E08D45533A90FAAA24D25C83C12954BF2A6201AB46EF26E10667709270D4819D8F841B98F63ECFD5C4ECFD11C6A851DAD04985F2FE0BAE4361527F59EFE8BAA6EE16E3499F1B6C1FE154AA47ABA8BAACACAEC6519D96D50D489398D50D469D9BD5712C4362D6F1F6519B957596B55291D8F468D97056E302089FF8AA0875322C6C8034FE978E88B0AE97273BE770EC1C362DAA2D065D4B77438B75519DDC243A2E2B6ECC099DB1E28753969E74FF49F7234086BCA7B3596E60FAD0AF8A25CD0F854E7774B3DED1B1A941471D451FFD45D901DC53B2594BC7EF37D96CA5E3A10C794A1D6EF5DBDC430D84FB240B468C864F4EEA784D717C17A1727ED299909FAF8F696E5E8FD6A01D3297CE63D8CA7EB15FF9C2C8699D884EDFB63AC06326F2F90F14F530A8E07D6B8D23E3FE68B74AF40DB135C28109401FD8A36583099C2C983CA4E3970C2601A91B364CF651374007C97C680AD1A365C0851DC616736B3DDA35769A43DA21FDE9F47E59722ED1A3958E1956E9717B032625A98B1F1660F99A0B1DD37802D16BB2972E2D77C6567D97D4D4618B18033B3BB323F8AA9913C9D904A8F39DF19D0EAE263BB832DF1341E93DBF72AA4F76D6CFE408B593D9A1A585D81ACF3992A5F36867BD49F939A9CA6E53803A9EA171493F173F28B2E70F2885E6D172C9A231704CEE4EDBEEFBA6EE4613BB804FC4883B16A4DB0192317FE259368F9639F9549DE3D58E949DD315147CD363094A4EC1E97A09F7351C3A98CB039A2DF368E5A14BBC7930F7BE40A24D073D6AEE848924B03CDA893D300BFD097AE39C3C31E7F2C43C79217ADC84808929BF72B5D7A7B874D4564D8E4B47B96E735C3ABA0E66CE0A6612A57960D267662335C92F9D4D698D856F0645B689A7716644134C9AA9024D7E48B9019CFF4DAF3FF88E2C6F9C99B64E8B5D87BC5DF74DAB393626CAE491661388E6E303E65A9D91513F879EC807308F88B925FFF0CDE79849384DA4D9142A323D4E277F432776B4EBDA1DB3DC31B9E4246D142191B7AFD268F521AB3A92A28BAA846D67CCD7EB7D52C6BB84FE2CBF5CAC9F4BC41840494B490D8AF9CA83FA83048AF201C92B132B482EB3B428F320965324BFCFE3348C7741220D40A869681C5684ED618A25576447D2CAEA938668D6194347B9D71EB8C0EC3A3270E9034D39419DB875FC2C3E97D249BE4BAFE8BEBA24AB976193E4EF3228C2407E9CBA4EB0A8C5A2D23A202275C12C1C653BC9D370149085778C4DB3145741093899F914A71198BD27C849A673EA9B87F034C75EB9A7BDE7C699860BDAE7D8872F39F4354A917D60668E30EC0C7DA6C60B4798E58C3F086D22EE69042CF8B263D6299ACCFF87A756CC32FCB3AA009B47D5243E59B6B29EEC05F8CBE0D1050F8CD6EC1943384C7E98523167423D97C347F3258B3B5BABA1B45F66E10338FC7F1E1EC01EF9853A1A28B7E0A47BDD4EFB9D77AFDB689B895F7A0B6DF2EE89FDACCDB48EF407751202F36D726C26D39D6B4CCD1FD503330B70CDC16E8F97E0184F26AC15BF2C6ABB36DCB2C076D8EF1AE37D1B6CA39A96DD0273A66D89A6BCE199414803D2B342FFDDE25C64CC666842B600873B0F538CD8E970445D843FB817386E898639466E6D71F6005F50694C5BBEE449EC4D15CF9DA01D2ECB1E4BF105C0104F8A138E8F05D8A7019D67EDD9D9996AF6B980D4E67CA3F932CFDCDBCC85D3AC832F28C22752AA57ED3C4FBAEA91A611737FC0CB81374618B510B4435F9C1FFA8720E756035D4E1D1650FFEDC839007933F32095019361E19678D002403A881A12F7FDC8E71F4DD98376B7A8FC57219EB72190E8CC7AD1564D3C1B485A43683ECC731F61BC163BCEB49C7706EDA725D872338C27927292CE4399737BA1F335F31CF11657F205109F3FE226E21035BCB74B057B5E6BA9B8A47D97D38D3E8554B90A4FE7C77940BB7CAF0E9856C6FD40BE25E7BFC4F22509E7C3F2BCB19F0F9701B07C5007C0012C010FE024D8B3265878E3EF532F8CDAFB2FAC1E8677C16F23A3D3A091F3A96211F96DF21A1EFB791E079611F3E5C420CC88CC7A1348BA348778561D4BF18557A561CD1307A43166DF4D2CC501DEF612D6B3BFE456A24DFDB884D7499775923B84EABE3D0DCF1330B126D2159B287211561032FEDD6E910C91C30C4A09EDEA3964BE9A3383986E1004F81BA86C26620E2421E63C8CA1CCAE8876C950F6203864F6B56279AEF0B66A8CE38825970E3603A3979B262EE5230B8A2F38F2BB263CB125DADFA27B098E0D66D7084BF280375D308205965404437EC2459C9787EC881C67319F9F863189A581447BF3E9CBFCAA4E4A528767C529C9BBDD451691D7715E94574119DC05857CC450B5BA21A5B40F5DAF5EF5694E801DE24DF8896C838B75543F66D1244B61CB256EE1FB11CE60A4AE8472A837E5318ED421EF5929F5C71743DDF13534BDD5311B5227F5570876159AA21FC1704421A33F9481B863A71BF2BC0C515EF29C0C65E07C6001623275784D23D3892F0729C657D174D8EA66A9A3F63BD401A8CE25C04334A4047B2882C063619420AD7A875690527D294627C41F5666304C18555268287EADAB864CA5E63B48A2C6795607B9F7709360F72510F4DE2B4F079FBB6397FAE04AA17E149E0A52578D2B87D447F31902DE9498701036B56C21CA3F8653DC9D1CC993DC9580D3DC156AC0335B6FA903A60CEA02DDB5E39DFC86A90CA986B2C3A6929EC978DB59EA942F867AE46BE87AE31268CBBD71C5606F4C0DFDE058435056C14C21A88799724D3F5DAE5AB993BE04EAA12F345D7FE1C59D2F56AEC246CBBD946E023227F4668B50C960B6FA985378B94487D795CA5D30162B404E269A7FC5D414C98A05FD735B11C97CA1FD292C13EC8E8D698B9B4E1B7E58564396C2D895235707BDBB0C026ECBCC3EDFBC2E98850C6D5CB62119A0286E7E972B8C00407CE1A177FB74E588C1CDBC6A3BCF0E5965217B667C34B114307AB324544EB38DA8D6AEAD72A737C5E07166374B9EC4CF1E3612D5301624477371D1A7ED018820D4C01117775F35C68A0435D23928D30CDEEF8D1D9E724913ABCCB39CCD3D4493250CA9E98CB4DC465401C3C7C9878B4B2F52733AC5E567A88AA589AF30EFB2341F03A3491EA0C5D82821843478E1C8A61F3A1E9BECA8D1479001CE6500D0C020E9C1C44B12783CDC283FE5A9EF085ED08EDEE3B081F14E3D50362E1D1F2C1ABD3E0E5D7ED5668F029B251B8AE3721CA2C027EA912A7D569D07EC9D99F9B063CDD8E1F0E409862D1CCCD6CDFA6FCE4305826C8181EA4271271826703E5C37551DFCDA0F970928058689859B8E913BAE0D7B225D37014F9C470E87A3103228455898DB1C7819A61C24A8E151C07BC3D93EF6C3A0401C0CAE785097F7E9CEB2E65F4999E02F7CA45884986C30CA082B439CFC0C150F72D29A89F3CFB1BF75158DE701A86016FB33C5403818B2E3460D40E192E144060D2B9884B74CC6079E878E2A72750C87B31EF7314C31180118A5325E61F24300E152B9315B901B63FBE1E20EF7C0C00DBDF339F4A54BEB7A002A2F7285EB3504E137906F262005CAE5062EE8CEACEE77E8901B353070ADB7F5049B09C80FA06EABBCDF771C323AD53AC762E779F6355CC03F163ADCD478D14E7FC22939463474C35D1EF0A177AFD2F50EA07DD9F9A6B9AD6F3FD09F25DD853F90EB2C2249517F3DDF7CD8A7D55BA8CDAF2B52C40F0388730A332521E770DAD77993DE679DEBAB8051574578A6EF9A8E2D0ACAE0655EC6F74158D2E29014059DEFF5EA9720D957C2B3BD23D19BF4DDBEDCED4B3A64B2BD4BBEB0C4A8FC6755FD9F6F249CCFDFEDAA5FC51443A068C6D5F3B1EFD29FF67112F578BF065E0B4440548EB9EDCBC6D55C96D50BC70F5F7A486FB3D410504BBEDE9FF823D9EE120AAC7897DED40F0CDBE3F67341FE451E82F00BFDFE398E488E03D14F044FF6F3AB3878C8836DD1C218DAD39F9487A3EDE35FFF1FEEB53CD895E90100, '6.1.3-40302');
INSERT INTO `__migrationhistory` VALUES ('201911150626525_agregoEstadoEncargado', 'Renacer.Nucleo.Migrations.Configuration', 0x1F8B0800000000000400ED3DCB72DC3892F78DD87FA8A8E3448FCAEE9E9EE9764833E196EC19C78C6C87E57EDC141409C9DC6691B524CB21C7C67ED91EF693F617167CE391890741825572850F5611402291C84C2480CCC4FFFDCFFF9EFFED719BAC3E93BC88B3F462FDFCECD97A45D2308BE2F4E162BD2FEFFFF8C3FA6F7FFDF77F3B7F156D1F57BF74F5BEABEAD1966971B1FE5496BB179B4D117E22DBA038DBC6619E15D97D791666DB4D10659B6F9F3DFB71F3FCF98650106B0A6BB53AFFB04FCB784BEA1FF4E76596866457EE83E43A8B4852B4DF69C94D0D75F536D892621784E462FD81A4F4FFFCECED3E4C48B65EBD4CE28062714392FBF52A48D3AC0C4A8AE38B9F0B7253E659FA70B3A31F82E4E3971DA1F5EE83A4202DEE2F86EAA6C378F66D358CCDD0B00315EE8B32DB5A027CFE5D4B978DD87C1475D73DDD28E55E510A975FAA51D7D4BB58BF2CE2A2A4731B07EB95D8DD8BCB24AFAA8AE43DABA04441448AB3A1F9372BBED2373D5F50F6A9FE7DB3BADC27E53E271729D99779907CB37ABFBF4BE2F09FE4CBC7EC77925EA4FB2461B1A5F8D232EE03FDF43ECF76242FBF7C20F7ED18E268BDDAF0ED3662C3BE19D3A619DB9BB4FCEEDBF5EA2DED3CB84B48CF0C0C1D6ECA2C277F2729C9839244EF83B224399DCB3711A9C929F52EF575938571A6EB5007E4551A06F9039D5D574057A40C9284BCFA4CD17704468A9241E8A72C4B48905A43B927E1A780E5C406DC15A5F647AA10F4F0DE069FE3877AAE04C8113FD40F24A96B159FE25DA31D180EBE152ABFCEB3ED872CE18484AF737B93EDF390A2F331D354FC48678E94E678E754B15134AB31EBB0E6AA823833355418B3D56CF12D1A065763DA560271ACCB54D8351520BCCE37835653EA3A81EF47A83B0EC249E3A17DA5D9F62E275D7F74C5A586C37A751D3CFE8BA40FE5A78B35FD933242FC48A2EE4B8BC3CF694CED0CDAA8CCF75ABD41A724CCE35D582F8D33F735A1FE9D42F1522895E9E3BAAAD49AF78A1411B157BA10A87F0474419806D44FC17F00906C96A3F9F86E58A366EB23909643E3D515D5D2A46319404F73AAEDB6AF39286BB082A4B1E15AB6CB09C1D7EB167242A9135C610B365AA9C7A4C317AFD98D6CAA259B878EACDA68250DA1756BB7F11AD96A95CB6CBB4F6D9648A6D9695D44FB7A82EB621854334FCD23D7F5EC63BCCB2659D3F845C0615DBCCC49C0D2D0FF7A5637BCCEA2F83E0E11544CD553ADE13E060F05A89C6841A303DB192858A524154A5A54AE61AB3D4B76F621B5CF28985BAE32A3F5913A92EE442B3AA94E4A040B8D496B9F14A57745A9168FDEC28785A42FBE658489613FB9583637803AB6A222C8A9BB348BE281CBBB158AF5A1178C605D045351289228289643D433B776862DDD88D380BEF54990BD0BB2B85BDA9124893D6CFD4A9290FB2C9DBFA39024FB24C867EF876C8338F1707A5299775759E86696A5790563BF65CF4F66C4F92ADBC6619C4C72C8728CC6A4A7D315FCF47EA0BF723966EA41CB715F2C1B82409D516B1D6A588FB0197024E555D1C6BCAEA54F89625F0B42B02D54A0D7D5703BA41FE672CC017DD7FAB424A37DDD05791E7B58C0AAE3A9D97BD9C5C5FC43A1CBCEFCE4CAA2F71915EFC46DAD89C86EF2A5D17C07DC28806E7D1E21BF1C84930CE31C3987596D3CCFAD3BC388F9AD5B9EE6D5EFBC9EB64BC7B65D2AC8E3FC246BCCF9CBF8F369FF87E03CD1FE2F8E2EB3B40C42D73BFF7A03F7966EDDB6314B00ABFDDFF2DB50EFBBC8B0273E7A123954110F22BB1269DB2314DB6EC8D45BDB0638B8AD158A10BCE6DACE5A1CDCC288CDB3856D6003DB57AE004169926DEB20E123ACA2AEF1C93042FB3A194627C388544E3609B77C2DB1C3ED6F9E47EE6FDBF62761F72BECE69782E3FD834F8EC187A1C6FD3A06D7427D383EBD93792A87FB5D761DA7F1760A38C1A3339C07CA73FB78A0F2D870936DC66E1F295724F6DB9F306884FE729F0D0ECF4FCE07BBC6EA4D2A09D304084E09D593DBF7416DA0AFC83EA2AAB8F0B89156B98FE37EE31A8771474FF17A3F590B2172FFCAF87777D5603FF1A614C38FAD320AC72B6D249AA367BB0A71D807DE0AFF7F64799063FE5C6C5F434518EBAE5C89705F6914AE8C6E2130C24C8D5B2211592E95DCD0802A53070CA823050C42040C6303B46EB95A96656B49180E8518824C0DB73398662D1E730053B53C99ED685F9ECC76CE30BB2261BCADAEC3DFE7F4AF3613C10FEBD54D185463D4D959C65CD3AA9A517CD3B63D710EDA978F50B928F8F2EEFE57427EEF7BAAE3AD86AF9696D9273AAB9C3D3E1BE6554F9CB9EEFBAC83B3C2470800D3FE24048ABEA6391E98208DC441ED613C5D71BF4AC33D61846C82405ADC24B2B62C45A348617C5A19C1EF8307C45AAF4A6E39C91F1014CB24C357AA606BF6E2A92258A852AE08A95049B809B24554031DA513AB86276588F6B5842D39F2902FCDB30FD4F6BC7356DCC061978BFACEEE0687D43974F788E337CAF41324028AA7384FDD92328BB2467CFD3999347863DAB62D16F46CFD55D2634C91ADE2E7F8CC55F38378414BC3F89BD4F1376D43F393AAC5F5D7B1DFB6991FFD24954B1C1977F8D3B43DF1D19C7C64A4B9FD79DFB42E5F7A224EE19DD63218E49F2614493A572C7752B9D701A567B84FC69D91F6AD4F828233701ABB1B669F8324CB2730137FA9B24761AEC28770C36ACFB8BF8D8F3C11609C9858D1D724E94A196DE3CCCAAC313F9A87772C10B7CB05D54AB01DC60DAC05021BDE32B5875501AD24AD0F78CDE932788A7D48473360052DAA131CD17CA0A8A60F0EBB0816C04923A07DE51C9D5DA4B98154F9BB933476F54F6BD19AC6D9AD248F6576E537A1E8629702630EB65959014EB6816249054075A6D3531C744949C9A56AF4A6504F24CCF228A0B237D26661019CD4132EBA71B94F3C647DF5A81C6AAB87E71F2BEBC73C949B843929473B400CCD4FFC89F6758A5D3AC52E915350372A1E3E83BA4F31D4A3AEB794C1B7FD1A0046E04AA57218AE5CC5C9EEFAB9D85B2E686D8BD31A860BA99F356CDF4DDDDC2B4B127C9E7F34F1367820F31B8B7936BFAEF7B3447A53AFB68703956CFB381140CE32C69C0198A9CEFD96519C8CCBEC9BE275123C0C4FA3E1AAF4E64B5192EDE06EFBCD6A5BD07D4B12DF0DEAF34FA6EAF3EE2F7F09BE0FBFFFF3F31FBFFB1379F6C38F15052392275F28C5D9D1F1F4B826DB3B92773B9A7D1A05549FFD12247BFAF399443DAEF675C6D57EAEAEFD714F0AB6BA3C355CF55F4994F20DBED3C0FFB4CFB9FA7F52D77F9DC76CEDEFD5B56F024A7BB6FE9F652E69F881FDF8B2A88E42EA496FE1408937F96E5FA5D1CA200BE7E0ACCD30FE35659178479982F2EBC5FA0FD290D4B07B7745C6117C48A3C2C396279BAEC724AF16C420B9A4360E65D1382DE5C53B4EC37817247A3484A6862B7F35137D2762C915D991B45AB4F50436EB9D218F8C46DF9B609AE80875BE61D8C6949B86B432FA1907F2CC4CC64D40F2F101769DE55F0975D4D83BCB598F9D64454F366ED1F86647CD67769C598E0444BC4A91405EB3BEFB7DF0221224A7FBC7E65A91FBDF86C3353001FEE19F159A4A7C84E45D18865826AF01BDD67E321F3492FD8B013924849A455860043C480A4C4CB38E079A2C2227625635F5E42AED95910CB3A89D82A0E08D678ED43E1153DEA9675869978CE41A7FF6089F474F8D95C20E1939CE85ED0F10096FD271847607FA26176A6A6A1FE81A653198F58170559F72691E9B56838D0FD3564374734EEB49B508B7C10F94626CA079AD945975F94C2BE68CA67EE9D49093276233252E1E784C496DB3FE97652E43AED2B3933D1F1D04032DC63947CF326C6629CD148369A674ACF3ECEC4C9E6325686833DA841F4E766C8566AA324113495BA52384291590F79E476B7C1779C2C7EB4FB470A2184A594BA7C585AC4F2C66C2057296B109054DCA4EC600EFD3094D256C4042090C4755768901432EFED77C9D522545B397DD515285A3E0419C70E21E811C3141E8D8FC4211E9C3BC361138E6DC0204B1EBD6A3899844EED90373C8C4333C116D08B11C4FB0CA40399760660047FE00F3CC1829AA297905C0C217C7004435EB9A23CD22DC2327EB31593884C08B4917253E6243771C39C392C421E07945E2086BD6774B9625ED3A36B7A9C6F002139D4EB0EF86B2A39A5CA94FBBF106B0F0B74300486B68D20CC459928B98F4B39AC98672D14EC04340025BF194794EB318C5C21F0BC984B538565ED230E637C626FA086D31E3E9F2C24A4A8B8CF723E6A355592F8BB828ABC41CC16D647472863580B86DA86BC36A680FB6676713719B0E1F0FCCA623BA190A02B196E63713E506579F85D716D6696A4CFCF2D853D066EA3DA05871168E5A640388F5EF97838E6CFB276644C326174D8FC61C257699FFCC59064BAAE6D9DF0841C303E3206435E999CD9CB708EBE00994B0E936C8A6344CBC946ACC9CADF4B998A07E66622E2D321ED84C4B78331C18521D04C7A9573A4D32AC59386D91854F89C402DC75644B20944E099B6F656EA561B6F97468E6ECA44ACBE4EB6A578183075E5210D8D0105F728F0724BE329A6A54354DC2488B28251C03DF5C7464EA0848E281CDB22AA30733CB4C62298B40003C1588EF680014130F9C8493D8FC58DD575CC0AB3AB3401DDA15A74C5C7D4492AC4DA702A40FF8B9206D0681A24D8E20B24405F586945D722BE670E0559FCB00383990588B87C31FBACAA09467761234C279E64AC078C75D0DACB20AE49140D4E13D3A2C8653201905EC8448A6CC10672553058BC19247C18BA63C1EBE5C03ADCDE228410135A5D4BA0F0C9501609188E0787A3F6370348817B23C4B18CB19F25AF77AAD3C16C887486A3E3CCB2A01E85D16352062D6474382A27049912055A9985BB425388D2791C9B46004C52F156516E94E8F64AA76251A084C02670906BA73C5A1749B411CD66F66CCDF24C70500F1C69D0E0A97825286C515EB8499B1086489660A3570FA1C5112903EF197008159B9063050169315535354A058E03067BFA8D29DF4E3E034B6B4429BE537618045A872DEF003B722CA10F0AA240A12178B8C438E8E75208A1C16CB002B8175D3851C7D663B153140CB19C15E349D1D08215ACA2C1994CBAD3D41E45413004134F928B851E01929D493A901029082A88C317B4AF079102032083570F4E1940A2CEE05B233D426A460608498C93376EC4AB52956D161AE5497A6C3F7A62685B87C9C0026EA51A8E942000F2A918B56C707AE57855C3D97417B547F68C43BB42C1845C7F32A5D171F6FA8CECC8022F4C2F633F6D48223B601521984767343520777B332AFF1C0318DE69E6F19D113C7982A7A72103D1D9622001B468B13010DB685C60085DB8E2206145CCB00EAB09E9414C239949A228A185C743C7014EE78FAC061B7A6B2E848ADE170434D283884141D9314443A9E3C52C828036AC0DE9928D0EBE332497421A5DC281441A5CC18626540925114A996B823E8C13EBE2BD3018B8AE43006E222194C99932CC5A88168C8391488FCBC2F326634EA4FC61A8AFB1B377E28DACF8C831C05A13524D57200DC9BA28CCB5F9C3A4A017F4FAAB37FC72B4AD6FD175793A89330A4D92017E1512A12F205363910194F0DF6001925061658040D01082D1A450A20964834D0A7528E78EC8BD6463763137DA8CC04B6BA47DE418337007A99057A70E3D2867A30C30AD02B4F33901E0C3424F4404D2B33C6D2842938D169197E42D728B58B3D36087485B2A7C7ECEB93F43CB64C04A5BF388738E631CE1E84C2377B4A301ECE96142FC3CA0431F482E6C6A4F7836646275D482A88A5777C8600CF403254880C5C78952342C5C9854CB30B16F862A74C1CAD272A370A952F2A3386EEFA59410F95DBE91C7B41E87D500D35747CA270A774A0C5EC8C01BDD8051CE46B5C02F9A378DC29901D007ACBAF0336A102EE1EC3E95DD6FAB2F3CD4DF8896C83F6C3F9865609C9AEDC0749EDCF567405D7C16E47E7AB185AB65F5637BB20ACD68F3FDEAC578FDB242D2ED69FCA72F762B3296AD0C5D9360EF3ACC8EECBB330DB6EA821B1F9F6D9B31F37CF9F6FB60D8C4DC89D4F890E767D4F6596070F4428A55D534C5FC779515E05657017548FF75C465BA91AEFA087785C747D493E78F2DC75AE185D93EAEF56EEF8B7D65EA2500632BEA623ABA6B51E2461E65CD59836AF9E6F0F72E099B4CB2CD96F53DC3753D5BAD5EC3C0844DDABE030AE783C2C4514A70A9E7044CCC3D4C41EE370BBA7055970DD377328F5D35BAC5B260B4E2A94E19E6F044E10196E23719C20FE220F1B71B86EA766CCE4CA1379033ED7B49F87D5BB37FE5808DD377328DC33C92C28AE6049C18125C65E54980CB402282C312D0EAB96892B5244049095F6BB25B47F044509495EFBDD125AF38E9E04ACF9EC5BBD44A24A89603582B50F10CDA4DA1D2FA694B80B57079DF44A01C74025A99B7F4D1A290C2A4A44813034E6B38D0EE17CC879522993EEE330275CC287B73825C91F8A96D12475236AC5C6F77188E1C8171F8C44579E580E82FC516E6E20BF60AB4310DBA5D46A6F3CB8E8540C888942C5DB1EC2B4A06BE78E24492CEA97E1AB39A49224E43E4B0548C3570B8D4C923DFD2AE8E3EEA385E66C5E39E61467F3C956A3D7672AB2360783F2143396B3271CDCBCE5F8D9871A3B26964BD832E20F6DE1F0BE8655629A7576A92DADC205DB7C3B8B0131D9CAE26DE7517377419E8BDCDD7DB331F2928488065EFDC91CC62E2E043C9A2F560A40927BAB5164D1FB8CB2A4A0D498CF3666F44ED442EDA7836176FE48D8C5C452013231B6D4ED0F617D5F688AB02B15E3A9B98100184C09D2EE10A6E2646A8D33B50AF2288CA8F962BB845FC69F255CD88293F187C11BE2E87970F84BBF38B4DA167B4BADB06D2C0F592A7C3A26EA5198918A304663CD7D89C03050DE78D393FE3E5EFD9D930410CAE1EBC170BF3A7CCFCAAA44C018DA9468EB431083A50EF29C6F6B475FD39EEE67C5471C800B8C45EF55A7BE3D0EF7BBEC3A4EE3AD008EFD6E092D7884A1B5DFCDA13DE441B98FC55918BE9A43DA66D264B69F6C0E50A89C4441F7C4197F90C2153DA15BF21A072E020B4653F97E9709C6EA3EE42AA7DB43689457641F518D5E40A31DCA0E66A543239FCD4D7028D8D1C4FE86DB1DF23A67A3C3169A4F4538B2F18C76C9DBECE7146D39CFACBAFAEC44C19777F7BF12F2BB0065F86C0EEB131D3AB08C309FED60018B08F3F960F82D5686FD1AB39C227AD880ED94ADE761BD295DFEA6F1063E8EE5D1D508685A503B7B4F24F910CB0E46488688760711A99358DACB06DCECA9ACB28A83EE0F248CEFE453EEEEB38D80A296B1E6D55C1C662391D99D7817CB7E5F4E4C29CF80A2DA7DB73ACE97F76AE81BD50A9E206516654D1E578E3198EF0723EECA187FBB93BDB1A748AAC6872CFB634F9296BAC268E37E5DB64F3008930D14D6F2902778C2FB0BE6D928EE0643F19CD4628CA20AA63666956B0C8801B328DACEC32E412ADAB4CD1773089F8324132E95DA4F962BE32F55F8057A03CC953EB12B5631967C0AE68341D9B0200661AE9DDA54D1964CEE751E96E239311C5ECD7CB245C37CB6F00A94C0EC0ECB246AE3D51DF88FCB316FCF7CEAE6F3705ECEA5C5E7EEA31509F3F5102BCF05924A8BA854688D297CAD2515DAF8183C96D91566D3C9A5C770FEB29404B1EF22B8C891028E891C299BCF2347B4F37D22FAA9B4DF96BBA4AE1535FF5A85A4C7558F592CC84B4CCE0C074EBA41A118F091AAF157B27F7992FE5727FFD99387AAF92C1FF8F6A97B16C84149FE0C8330D09068CB43568FFD434A2C983DFC86920A4E98049FC550A9E69385E06F8307221ED8B7DF2C4CE34C5043F507BF4AF5D085B9CC7E1709DD7E5ACEABEED0CC7A3E7718AF67C027B2F401E26C6D34121C88D1AFD2A209D452BCA72553CA48FB0C10E1874B191CC6A1873E9D6A845EF5BE931D6262FA37EB59061EBA52E56310EB02C91754F953002AA20F6379A3A1215A6E53CBBD4EE3798E85379314332CD504830BCDA45780E538AD0DB409265644EBE824167A4846E3F1CF5736F27984F41DFADCCC589968004EA18AD1076C46A2668DD365964671FDCEF89BE2ED3E49A8D1122405311CF0A44C313CB362C416437543C7490DFDC5C7640E8A39C4E7699E0A7B48B95EC52ABD25D97EE97FF7B95EDB3CAB5C02D89A1E553AD79A0E459BF3554CBCDA5459AFE8E03FC7519D74F5CBCD7F266755F959FD67E31530D4B80ED2F89EEEAC3F5606F9C5FAFBB3BFAC572F9338289A94BC6D4AD917E26BEA4639669F7F57E59825D1762336B7CF545B41298A2801F2D456B2D5720796ACF5FC9F4462848E41D857ECE5E9161B9E03FCD8BC071C5764AD05F7EF844E7B5092E87D509624A7C47A13911AD5F5AA62B92AD17FCF761B0DF87647C2F421BD6CFF268DC8E3C5FABFEA362F566F7EBB6D9B7DB37A97D3397EB17AB6FAEF115D331B2BDBEEFBA68E280849656DD1E09A3BA1D21D3E3518DC65D52EDF12849484B68115514E29E32DA964928471514BD7330D7476BBA99408455AD7A3158AEEDCA9E922C9D287EAAA900553E67B2D14EE5EC70DD44188CA5819994038983849EBDE9B864EDDB3B1780E3285006E432AA607DC1CA399C235E1435E498D168C41378D0511485ACE40631AEB34FC5CE3A4D2A652694C6A5966D8D67A81CB276BAB1B98C613AEDD6306221CA31F832E00F20C8E076F2C9AD281D4572591E61A0C4EC4FA55110B58357A37093738839384A30EEC7C24DCC0B4F779AE2666EF8F30468DD2864E2A94F75F701D0A93FACB7A47D73575B718BF627D3E8DE968BE098513B21EADBAEB72BBBA9A5875725737204D7A573718758657C7B10CE95DC75B596D6ED7595850911EF568D97056130508C2F8AA0875324F6C80345E9C8E88B00E9C276BE970AC2536B9AA2D065D4B77738D75749DDCB03A2E5B7056630D4E7C7AD2FD27DD8F0019B2A7CE66B9814948BF2A96343F5A3ADDF4CD7AD3C726181D75A07DF4D76D0770DBC9E63E1DBFDF64739E8E8732643B75F00D6833183510EE932C18311A3EC5A9E365C7F15DA7CA594E67427EBE3EA6B9BF3D5A8376C87F3A8F612B7BD77EE50B23A775223A7DDBEA008F99C8E73F50D4C3A082F7AD358E8C13A5DD2AD137C4D6080726003D698F960D2670D560B2998E5F329834A66ED830394CDD001D24F3A189488F960117763B5BCC39F668D7D8690E698724AAD37B77C919498F563A6658A5C7ED0D98C4A62EDE5C80E56B2E744CE30944AFC981BAB4DC195BF55D6A54872D620CECECCC8EE0AB664E2467D3A8CE77C6773AB89AECE0CA7C4F042509FDCAA93ED9593F9369D44E66879616626B3CE748AECFA39DF52671E8A42ABB4D24EA7886C6A50E5DFCA0C89E3FA0449C47CB258B46D23119406DBBEF9BBA1B4DEC023E1123EE58906E0748C6FC89E7EA3C5AE6E4137E8E573B528E4F5750F04D8F25283991A7EB25DCD770E8602E0F68CECDA395872E7DE7C1DCFB02E93A1DF4A8B913269206F36827F6C02CF427E88D73F2C49CCB13F3E485E8711302A6B7FCCAD55E9F28D3515B3599321DE5BACD94E9E83A98392B984994E681499F998DD4A4D07436A53516BE1914D9269EC699114D5369A60A345926E506701639BDFEE03BB2BC7166DA3A2D761DF276DD37ADE6D8982853509A4D209AD50F986B755E47FD1C7A221FC03C22E696FCC3379F6326E164936653A8C817399DFC0D9DD8D1AE6B77CC72C764A493B4518444DEBE4AA3D587ACEA488A2EAAD2BE9D315FAFF74919EF12FAB3FC72B17E2E116300252D253528E62B0FEA0F1228CA0724AF4CAC20B9CCD2A2CC83584EB4FC3E8FD330DE05893400A1A6A1715811B68729965C911D492BAB4F1AA259670C1DE55E7BE002B3EBC8C0252134E50475FAD7F1B3F85C4A4AF92EBDA2FBEA92AC5E864DAAC0CBA00803F989EB3A4DA3168B4AEB8088D405B37094ED244FC351402EDF3136CD525C05A5F164E6539C4660F69E202799CEA96F1EC293257BE59EF69E1B671A2E689F631FBEE4D0D72845F6819939C2B033F4B11B2F1C619679FE20B489B8A711B0E0CB8E59A768DE0F383CB562F64E00AB0AB079544DE293652BEBC95E80BF0C9E6EF0C068CD9E3184C3E48729157326D473397C345FB2B8B3B51A4AFB65163E80C3FFE7E101ECA960A8A381720B4EBAD7EDB4DF79F7BA8DB699F8A5B7D026AFA7D8CFDA4CEB487F50272130DF26C76632DDB9C6D4FC513D53B300D71CECF678098EF164C25AF1CBA2B66BC32D0B6C87FDAE31DEB7C136AA69D92D3067DA9668CA1B9E198434203D2BF4DF2DCE45C66C8626640B70B8F330C5889D0E47D445F8837BC7E396689863E4D616670FF01D96C6B4E54B9EC4DE54F1680ADAE1B2ECB1145F000CF1A438E1F858807D60D079D69E9D9DA9669F0B486DCE379A2FF3CCBDCD5C38CD3AF80E237C22A57A1BCFF3A4AB9E7A1A31F707BC1C786384510B413BF4C5F9A17F4E726E35D0E5D46101F5DF8E9C039097370F52193019166E89072D00A483A82171DF8F7CFED1943D68778BCA7F15E2791B0289CEAC176DD5C4B381A43584E6C33CF711C66BB1E34CCB7967D07E5A822D37C378222927E93C9439B7173A5F33CF116F71255F00F1F9236E220E51C37BBB54B0E7B5968A4BDA7739DDE8534895ABF0747E9C07B4CBF7EA806965DC0FE45B72FE4B2C5F92703E2CCF1BFBF9701900CB0775001CC012F0004E823D6B828537FE3EF5C2A8BDFFC2EA61785DFC36323A0D1A399F2A16915F38AFE1B19FE7716019315F4E0CC28CC8AC3781A44B738867D5B1145F78551AD63C71401A63F6DDC4521CE06D2F613DFB4B6E25DAD48F4B789D745927B943A8EEDBD3F03C01136B225DB1892217610521E3DFED16C91039CCA094D0AE9E43E6AB393388E9064180BF81CA6622E6401262CEC318CAEC8A68970C650F8243665F2B96E70A6FABC6388E5872E96033307AB969E2523EB2A0F88223BF6BC2135BA2FD2DBA97E0D860768DB0240F78D305235860494530E4275CC47979C88EC87116F3F9691893581A48B4379FBECCAFEAA4247578569C92BCDB5D6411791DE745791594C15D50C8470C55AB1B524AFBD0F5EA559FE604D821DE849FC836B85847F563164DB214B65CE216BE1FE10C46EA4A28877A531EE3481DF29E95527F7C31D41D5F43D35B1DB32175527F856057A129FA110C471432FA4319883B76BA21CFCB10E525CFC95006CE071620265387D734329DF87290627C154D87AD6E963A6ABF431D80EA5C023C44434AB08722083C164609D2AA77680529D597627442FC616506C38451258586E2D7BA6AC8546ABE83246A9C6775907B0F3709765F0241EFBDF274F0B93B76A90FAE14EA47E1A92075D5B872487D349F21E04D8909076153CB16A2FC6338C5DDC9913CC95D0938CD5DA1063CB3F5963A60CAA02ED05D3BDEC96F98CA906A283B6C2AE9998CB79DA54EF962A847BE86AE372E81B6DC1B570CF6C6D4D00F8E35046515CC14827A9829D7F4D3E5AA953BE94BA01EFA42D3F5175EDCF962E52A6CB4DC4BE9262073426FB608950C66AB8F3985974B74785DA9DC0563B102E464A2F9574C4D91AC58D03FB71591CC17DA9FC232C1EED898B6B8E9B4E187653564298C5D397275D0BBCB20E0B6CCECF3CDEB8259C8D0C6651B92018AE2E677B9C20800C4171E7AB74F578E18DCCCABB6F3EC905516B267C647134B01A3374B42E534DB886AEDDA2A777A530C1E6776B3E449FCEC6123510D6341723417177DDA1E8008420D1C7171F75563AC4850239D8332CDE0FDDED8E1299734B1CA3CCBD9DC433459C2909ACE48CB6D4415307C9C7CB8B8F42235A7535C7E86AA589AF80AF32E4BF331309AE4015A8C8D12424883178E6CFAA1E3B1C98E1A7D0419E05C06000D0C921E4CBC2481C7C38DF2539EFA8EE005EDE83D0E1B18EFD40365E3D2F1C1A2D1EBE3D0E5576DF628B059B2A1382EC7210A7CA21EA9D267D579C0DE99990F3BD68C1D0E4F9E60D8C2C16CDDACFFE63C5420C81618A82E1477826102E7C37553D5C1AFFD70998052609858B8E918B9E3DAB027D27513F0C479E470380A2183528485B9CD819761CA41821A1E05BC379CED633F0C0AC4C1E08A0775799FEE2C6BFE959409FEC2478A4588C906A38CB032C4C9CF50F12027AD9938FF1CFB5B57D1781E800A66B13F530C8483213B6ED400142E194E64D0B0824978CB647CE079E8A82257C77038EB711FC314831180512AE315263F04102E951BB305B931B61F2EEE700F0CDCD03B9F435FBAB4AE07A0F22257B85E43107E03F9660252A05C6EE082EECCEA7E870EB9510303D77A5B4FB09980FC00EAB6CAFB7DC721A353AD732C769E675FC305FC63A1C34D8D17EDF4279C9263444337DCE5011F7AF72A5DEF00DA979D6F9ADBFAF603FD59D25DF803B9CE229214F5D7F3CD877D5ABD85DAFCBA2245FC308038A7305312720EA77D9D37E97DD6B9BE0A1875558467FAAEE9D8A2A00C5EE6657C1F84252D0E4951D0F95EAF7E09927D253CDB3B12BD49DFEDCBDDBEA44326DBBBE40B4B8CCA7F56D5FFF946C2F9FCDDAEFA554C31048A665C3D1FFB2EFD691F27518FF76BE0B5400444E598DBBE6C5CCD6559BD70FCF0A587F4364B0D01B5E4EBFD893F92ED2EA1C08A77E94DFDC0B03D6E3F17E45FE42108BFD0EF9FE388E43810FD44F0643FBF8A83873CD8162D8CA13DFD497938DA3EFEF5FF015967F3B888EA0100, '6.1.3-40302');
INSERT INTO `__migrationhistory` VALUES ('201911150634510_cambiosEncargado', 'Renacer.Nucleo.Migrations.Configuration', 0x1F8B0800000000000400ED3DCB72DC3892F78DD87FA8A8E3844725774F4F773BA499704BF6B46346B6C3B2BB7D53502424739B45D6922C87141BFB657BD84FDA5F58F08D47261E045F2557F8601501241289442291C84CFCDFFFFCEFD9DF1FB6D1EA2B49B33089CFD7CF4F4ED72B12FB4910C6F7E7EB7D7EF7E79FD67FFFDBBFFFDBD9AB60FBB0FAADA9F77D518FB68CB3F3F5973CDFBDD86C32FF0BD97AD9C936F4D3244BEEF2133FD96EBC20D97C777AFAF3E6F9F30DA120D614D66A75F6611FE7E196943FE8CF8B24F6C92EDF7BD155129028ABBFD392EB12EAEAADB725D9CEF3C9F9FA0389E9FFE9C9DBBD1F9164BD7A19851EC5E29A4477EB9517C749EEE514C7179F32729DA7497C7FBDA31FBCE8E3E38ED07A775E94911AF7175D75D3619C7E570C63D3356C40F9FB2C4FB696009F7F5FD3652336EF45DD754B374AB95794C2F96331EA927AE7EB975998E5746E436FBD12BB7B7111A5455591BC270594C00B4876D2357FB6E22B3D6BF982B24FF1EFD9EA621FE5FB949CC7649FA75EF46CF57E7F1B85FE3FC9E3C7E40F129FC7FB2862B1A5F8D232EE03FDF43E4D7624CD1F3F90BB7A0C61B05E6DF8761BB161DB8C69538DED4D9C7FFFDD7AF59676EEDD46A46506860ED77992927F9098A45E4E82F75E9E9394CEE59B8094E4947A97FABA4EFC30D175A803F22AF6BDF49ECEAE2BA04B927B51445E7DA5E83B022359CE20F44B9244C48BADA1DC11FF8BC7726205EE9252FB2315087A786FBDAFE17D395702E4801FEA071295B5B22FE1AE920E0C07DF08955FA7C9F64312718B84AF73739DEC539FA2F331D154FC48678EE4E678A754B051348B31EBB0E6AA823833355418B3D56CF1CD2A0657635A5702712CCB54D8551520BCCE369D5453CA3A81EF7B883B0EC251E2A17DC5C9F636254D7F74C7A58AC37A75E53DFC8BC4F7F997F335FD933242F84082E64B8DC3A738A47A066D94A77BADDCA053E2A7E1CE2FB7C691FB1A50FE0E2178299442F571DD554AC97B49B280D80B5D08D4AF1EDD108601F58BF71F00249BED683CBEEBF6A8D1FAF0A4EDD0787745A53469580690D39C68BB696B76C21AAC20496CB896ED7642F0FDBA861C51EA7897D8868D566A3169F0C56B36231B6ACBE6A123BB365A494368DDDE6DBC47D652E522D9EE639B2D926976DC17D1BE9EE0BEE87BC5CC53F5C8753FFB18EE9241F6347E1370D8172F52E2B1349C7E3F2B1B5E25417817FA082AA6E2A994701FBDFB0C144EB4A09281F50C64AC50920A25292AD7B0959E393BFB90D86704CC0D579991FA481D4976A2159D4427258285C4A4B58F82727241A95E1EAD86AF5B244C3D6899B4C512E741756C9523619DBAAF661C4971BD5BA1581ABD6004CBA21B462475E8094592A811CB214163AEED7447BA1ED680B6F571214FBE90C5D3D28E445138C1D12F2711B94BE2F13BF249B48FBC74F47EC8D60BA309AC27857A7799F86E6A599C1630F65BD67E3222CE97C936F4C3681023CBFCCAE458C611DCF8DE910FD2E81AE979C3D4639439B958D6E3803AB65B55DEF0A512C5B61684605DA840AFA9E166BEEEC8D4C774DDB43E6E56685FB75E9A861388F6C270337A2FBB301B7F2854208F4FAE24789F50D915B949E180EC06DF34CCCF8695006876AE1EEB9783705CC338478EA1701ACF737DD1DF637ECB96C7799D765E8F0789433B4864E4617C92559AF245F8F5783242701EE864140617499C7BBEEB6D7879267A4BCF57DB9025809599FD1B3CA0F92DF1511B5D574534D13525D2B14728B63D90A94F8D1570F0C428142178F53F29AA6F502C4C9A3062B2C97388236C051B38BE7205084A831C5BBB15DE432B6A1A1F1523B4AFA36274548C48E17E1271DBD71C27DCF64EB6E7F9B66E7F5CECD32E76F3EBB2FE9EB34797D96588F1695D66CB45BD1C6FD7C17C78FDFD2EB90AE3703B041CEFC119CE3DE5B97DD851B96F20C636618F8F942B22FBE38FEF558BFE629F74AEC04FCE3BB9C4EA4D2C2DA601101C12EA440ED18B3A405F927D40457136E1415AE5588D7B546B5CA91D7DA8CBF364B908E1032BEBF9DC54833DA8AB520C3FB64A2F1C2FB5315A8E3EDF2AC461EF702BFC7F4D522FC53C9DD8BEBA8A30D64DB912E1B6522F5C19D9426084991A374422B25C2A396801558676A557FBD01B38CF1B7ACD6B1D56B52CCBD69230EC0A3104991A6E36986A2FEE6380295A1ED576B4AF89D4764E31BB247EB82DAEC3DFA7F4AF3A46FFA7F5EADAF78A31EAF42C63AEA9454D2FBEA9DB1E3907ED6B8A20B2C07B7C77F73B217FB43D959148DD574BCDEC0B9D554E1F1F0DF3A2274E5D9FDAD6C169E13D1600D3FEB808147D0D631E1820C1C2A2CE30135D71BF8AFD3D6116D90021A6B84A64AD598A4A9142F9B45282DF7BF788B65E94DC702BBF43502C93145FA982ADDA8B275160A14A5914A44225E106C8A3500CB4974C2C1A1E8521DAD71CBA644F235F9C261FA8EE79EB2CB80163978BF84E6E3B87D43164770FF31B65FA0152E48443D853B7244F82A45ABED33999547863D2B62E16E46CF95592634C91ADE0E7F8CC55F28378415B43FF9BD4FE376D5DF3A3A8C5E5D7A1DFB6999B7EA2C2258EF433FE546D8F7C34261F1949EEE9BC6F6A972F3D1187F04EAB190CF24F138A24992B963B89DC2B8FD2D3DF47FD6CA46DEBE342C119380EDD15B3AF5E94A403A889BF1579953057E125DCB0DA33EEE7FE9127028C23132BFA1A249127236D9C599955E67BF3F08E05E276B9A0DA09B6DDB881BD4060C31BA676B72BA095A4FD01AF395C6E4BB10FC9340356D0A23A8089E6034535BE773845B0008E1201ED2BE5E8ECB29A2B4885BF3B894357FFB41AAD619CDD72F2902797D3A6DA9CED52A08F619B5D2B80651B2896440054673839C5419784945CAA466F08F144FC240D3CBAF67AEA2C2C80A378C2976E98EFA309F2A14E281C4AAD87E71F2BEDC73C949BF829C97B3B4074CD8FFC89F6758C5D3AC62E91635037BA3CA60CEA3EC650F7BADE5206DFB67B0018812B95CA61B8721527BDEB53B6B7DCD0EA16C73D0C5FA4D3EC61FB66EAC6DE5922EFEBF8A309B7DE3D195F594C93F165FD345BE464E2D5D63850ACED292C02882DA38F0DC04C74EEB78CE0645C66DF64AF23EFBE7B340C17A5D78F594EB69DBBEDB3D536A3E79628BCEDC4E75F4CC5E7ED8F3F7A3FF83FFCF5F9CFDFFF859CFEF47341C180A4D123A5383B3A9E1E57647B4BD2E644B38F038FCAB3DFBC684F7F9E4AD4E36A5F255CEDE7EADA1FF72463ABCB53C355FF9D0431DFE07B0DFC2FFB94ABFF1775FDD769C8D6FE415DFBDAA3B467EBFF55E6928A1FD88F2FB3C214524E7A0D07CA69C977FB2A0E5606092E3B676D86F1AF288B843BCA14945FCFD77F9286A486DDBA2B328EE05D1A151EB63CD9743F2669B1217AD105D571288B86712E6FDE61EC873B2FD2A3213435DCF98B99683B114B2EC98EC4C5A6AD27B059EF0C796434DADE04D54447A8B30DC336A6DCD4688FFAF99634C9C13849544019C84276C39179494064524E12C86BD6777B169C858BA0ACF5D86C2B53D833F35DBC74C0CFF2E9C9893CD16AC0002399B268AFE137B9F0F5384A89F19543572D1FC5D319CCA8B93777861AB890BF0BC3104BE6D5A157AB50E6834612803120BB9C50A3C80A18810904054C4CB38E3B9ACC2226C4C46AEAC955AA2C3D19665655054161329E39501545CC7AA79E6120059E33D7002F85D8486BEBB1EA543124AF9EF3386756BF4024265B1D07A876A10F56A19AB6F6F5AA5E1A83591F0857B55997C651E935D84CA1D96B886ECE692DA966E136F8F54E8C0D344F7932BB2E9F6CC59CD1D4CF801A72F2406CA6C465021E5352DBACFF7999CB90ABF4EC64CF478B60A0D938E7E059864D2EA5996230D3948E7534560745862AF6305A45200EA526E2C9AA4CD0443257E908614A05E431E4DE12DF653DE1E39D6E69E144315C65359D665F646D6E31132E90138D0DB8D0A404650CF036A3D0508B0DC82981E1A84A30D161C885009BEF53AABC68F66BB7D7AAC251986039E1C43D8075C4C4A163F30B05A577F35A05E198730B10C7AEDB8F066212B9E7099843269EA145B422C47C3CC10A03E55C82C9011CF9034C356324A886E415008BA9380620AA59D71C6966E11E395F8FC9C621C45E0CBA29F1411B3A73E4085B1287C0C43B124758B3BE6BB2CCA9D7B1E94D358A1798EB748073379420D5E4BA76D8833780C574270480B4862A4D479C39B988C940AB996C281DED003C04E4B015ADCC63AAC52816D3B1904C580BB3F29C8A317F30369147688B11ADCB330B292D32939B980F5664BDCCC22C2F727378378191E50C6B00715B57D786D5D01E6C6D6703719B0E9F09984D477433140462CDCD6F26C20DAE3E0AAFCD2CD3D4984CCB634F419AA9CF8062C551386A960320D6FFB41C7460C73F31291A36B9688634C694D824FF3367192CAFDAC4FE46081A13300E4256939ED9E479B3B00E9E43099B6E83844ADDC44BD9C6CCD94A9F8E09EA6724E6D22233019B69096F860343AA45709C7AA7D3E4C31A85D366D9F89448CCC05D07B605421995B0F956A657EA669BCF8866CE4EAACC4C535DED2A7098809714043654C4E73CE301B9AF8CA61A154D8330D22C4209C7606A2E3A307104E4F1C0665995D483996526B7944520009E0D64EA6800149309380927B1B9597DAAB8805765728132B42B8C99D0FA8044499D5105C820F02923751281ACCE8F20B24401F59AE44D7E2BC638F0AA4D6700580E24D6E2E1F046571994D2662741239C67AE048C77DCD5C0CA8B401E094419DEA3C3A2B302C92860162299325D9C954C152C064B1E05BF34E5F1F0E51A68752247090A2829A5D66D60A80C008B4404C7D3FA1983A341BC90E559C258CE90D79A076CE5B1403E4452F3EE65560940EBB2A80111B23E1A1214854B8A04A9C8C65CA32DC1A93C894CA60523287EA928B348633D92A9DA94682030399C2518E8C91587D21C0671589FCD98BFCA8F0B00E2953B1D142E0BA50C8B2BD62D66462390573453A881D3A6899280B4B9BF0408CCCED581811299AC989AA200C5028739FD4595F1A41D0727B1A51DDA2CC509032C4085F3861FB81551DA6C6E2A9280AA2232065157742087A81A32A072E5FE624F1028B50440126D060A6E24AA1C14EC58E4BD5F0B0620094A5D277234A92694C400F3512063103352F4228498828225834A19B3A7049F070122835003471F4EA9C0E29E2127436D420A06868FA93C7DC7AE149B62151DE64A71693AFCC9C4A410978F1300491B00E02E270EE841003953807A15F51EBA6277E02BE83056EC0AA6839E70374023DEA15DD2283A9EDFE174F1F186E2CC0C28422FEC3C634F2D38621B20954168373724757037BBE6351E38A6D1DCE36D237AE21853454F0EA2A7C35C0460C3687122A0C1B6D018A070DB5EC480826B19400DD6839242B043A929A288C145C70347E1F6A70F1C766BBA161DA9D51937D484824348D1314941A4FDC923858C32A03AEC9D89023D402E93441752CA8D421154CA8C215406241945916A89DB831EECFBBB321DB0A8480E63202E92C194B16429460D44438E2140E4177E9131A3517F32D650DC5FBFF143D17E661CE4B8106A4552BD0E807B539471F98B53C755C0DF93EAF4DFFE829275FFC5C524EA240C4936C845B89788847C8147B260C831433831B0C02268084068512F5200B144A2823E9470C4635FB43ABA199BE8436506D0D527E41D347803A09759A007372E6DA807332C0FBDF2340339818286841EA86965C6589A3005273ACDC34FE81EA576B1C70681EE50F6F4187D7F925EC89689A0F417E710C73CC65943287CB3A70433816D49F138AC4C10432F686E4C7A3F686674D285A482587AC76708F00824431791810BAF7244E8727221D3E80B0B7CB453268ED613951B85CA1795194373FDACA087CAED748CB320F444A8861A3A3E51B8533AD06274C6801EED020CF91A9740DE148F3B05B203406FF975C00614C0CD7B38ADCB5A5B76B6B9F6BF90AD577F38DBD02A3ED9E57B2F2AFDD9B2A6E0CADBEDE87C655DCBFACBEA7AE7F9C5FEF1E7EBF5EA611BC5D9F9FA4B9EEF5E6C3659093A3BD9867E9A64C95D7EE227DB0D552436DF9D9EFEBC79FE7CB3AD606C7CCE3E253AD8B53DE549EADD13A194764D317D1DA6597EE9E5DEAD57BCDF73116CA56ABC831EE271D1F425F9E0C973D7B862344D8ABFEB75C73FB7F61285D291F1351D5931ADE5200933E7AAC6B479F182BB97022FA55D24D17E1BE3BE99AAD6B564E74120E25E058771C5E36129A23855F00413310F53137B8CC36D5E1764C135DFCCA194AF6FB16E992C38A950867BB611384164B88DC471C2F21779D888C37527356326575AE40DF85CD37E1C566F9EF9632134DFCCA1702F25B3A0B88239170EBC62EC970A938156008525A6C561956BE292640101D64AFDDD12DAAF5E96432BAFFE6E09AD7A4A4F02567D9E5ABC04A24809603182B5F710C9A43A1DCF2694B80B570799F44A01C74024A99B7F4B12C9F70A4A049E3034E6B38D0CE17CC879522993EEE33007DCC2BBE738A595DF15CD2349CA46548B0DEF421FC3912F5ECC8A2E3CB11C16F247B9B9C1FA055B2D61D9CE25565BE5C145A662404C042ADE7609D382EE9D3B1245A1285FBAAFE690721291BB241620755F2D243289F6F4AB208F9B8F1692B37AE898139CD5275B895EDA5464690E06E529662C652D1CDCBCA5B8ED438D1D13CB251C19F187B670784BDF25ECF6C2B98E9D0A3769F3232706C4E4B889B71D4714DD7A692A7260F3CD46118B22222A61E5277318BB3013F0A8BE582D52696D5A8D2209DE27942505C1C37CB6517577A2A4A83F2D86D979B3AD8B1AA40264A210A9DB2F610F9E698AB06B0FE3A9B98600184C09D26E0953715487FAA94319791046547DB1DDC22FC2AF122E6CC15141C3E075B1EE3C38FC355E1C5AA983BDA51ADD3694872C151ED5C849C5B622D4D058725F20300C8437DEF428BF0F577EA724021665F77531DCAF0EB1B3D22A1130863A25DA7A09CB602E639BF38D6AEFABD4E31DAAF8D00270C930EBDDE7D037BCFE7E975C8571B815C0B1DF2DA1790F30B4FABB39B4FBD4CBF7A1380BDD577348DB449ACCFA938D0185AE93C06B9E21E30D295CD113BAC92E71E0A2A46034956F6C9960ACEE43AE72BCE183467949F60195E81934DAAE6C313B1D1A9D6CAE8243018926FA37DC6EC9FB9C8D0C9B693E1521C3C633DA2458B39F53B4E538B3EAEA5713788FEFEE7E27E40F014AF7D91CD6173A74601B613EDBC1023611E6F362F82D5486E61AB39C22C2D780ED94ADC761BD21DDF286F1D83D8CEDD15509A85A503D7B4FA4F521962D66917451E70E4BA44C3469BF36E0664F65975518BA3F103FBC95ADDCCD679B058A6AC69A976D7198D58A4C6EC5BB58F6FB7CCB94F20CB8549BEF56E67CF9AC86BE23ADE00992274152E55AE51883F9BE98E5AE8CC3B7B3ECF5B522A91A2F79EDF7B524CD758551C7E6BA1C9F6010260728ACE5922778C0FB0BE66927EE0643F1E4D36C8CA20A783666952B0C8801B328DA8EC32E5E2CEAB4D51773085FBD28112E95EA4F963BE36F4588047A03CC953EB12B5631DE7B08E68341D9B0200661AC93DA5011914C7E741E96E2C92F1C5EC97CB246C37CB6F00A94C0EC96A512D531E50EFCC7E581B7673E75F371382FE552D773F7D18AA4F67A8885E70289A54D542AB4C614BED6920A6D7C0C1EF2E412D3E9E4D243B0BFCCB582D8B70B5CD691028EC93A52361F671DD1CEF791E8A7527F9BEF92BA14D4FC8B12921C573D3831232F31792D1C38E91A8562C047AAC6DFC8F9E549FA5F1DFD678F1EAAE6B3BCF0E353F3748F8390FC048330909068CB258BC7F6B12316CC1E7EE74805C78FBCAF62A854F5C962E16FBD7B221AECEB6F16AA712288A1F2C3B44275E98B394FFE10095D7F9ACFAB6E696A3D9FDF8B9733E0AB4DAA787AB9B671B47691B74C2095E27D27994C46A2A78008BF29CAF4DE0F31F455D3DE325189143D4E0761F9F0EC9BECED3E8AE80AF1A28C980C57CCE9E6C016EDEB55064CD1D605322AA892A228E92FBC76B514B610DECFEA8916F7E48C1D7ECE732C3C84A49861A926188D08A4CD002828C0729CD60ADA00132BA2E536ADF6DCE63C9BD0EB309A1001BEB29193244039FC0D99BE6BA20238C0A4E2AFD22C4A86A3031E9429BAB7538CD8A2AB6EE869A9A1BFF842CCA298437C73E6A9B08794C055ACD2AA9EF597F6779BC0B54E9ECA65752DE951E4682DE990D5895CC56CAA5595F58A0EFE6B189499541FAFFF333A29CA4FCA3F2B3782AEC695178777F428FEB1D0E0CFD73F9CFCB85EBD8C422FABF2ECD679625F884FA41B258E7DFE7D91389604DB8DD8DC3EFD6C0125CB8208483E5BACAD9A3BB00CAC67FF241223340CC23E4D2F4FB7D8F00CE0C7EA91DFB0206BB970FF41E8B47B3909DE7B794E524AAC37C59BF614D5F5AA60B9227B7FCB761B0DF8FA08C3F4213D57FF260EC8C3F9FABFCA362F566F3EDFD4CD9EADDEA5748E5FAC4E57FFDDA36BE62466DB7DDBD411052153AC2D1A5C7327541A6B5585C16D5298052C414899652B5801E5943CDC92624D123FCCCAD575AA81CE9E4F952B4291ABF560174563A8AABA8892F8BEB85B64C1E4E95E0B85BB087203B588A5D2778D0CB03898C04AEBDEAB864EDDB3C17B0E6B0A015CC7600C0FB8B2BB99C235E1435E48F55E189D6CEA0BC293A49C81C4349669B85DE328D28612694CBE5866D8D672814B126B2B1B98C603EEDD7D0622D8DD0F4116002966FB83375E9A9241EA9B5A91E6120CB6D77F53C402768DD6AFC20D4EE755E128031BA70A3730F505A0AB8AD93A30F411A3B4A19308E51D1E5C87C2E40AB33ED1354DDD35C6C392E7C3E8768D95DC8EEC552B8CE20E721049ED7AB072B0C912EBAA7B956962DD80548962DD6094B9621DC7D2258AEDAF7ED5596247D98A1589560F960D47D55D80708E6F8A5047BDC50648E50FEA8808EB0A7A54A396A346B1695A6D31685ABAEB71ACCBECE027E8A7AF241A0B7E3885EA51F61F653F02A4CBC33A9AE606A633FDA658D2DCE674BC021CF50A904D55DACBD27DF0F7700BB80665B3A8F63F6FB2D953FB43E9F2A63A380DD4B9902A087751E2F5180D9F2CD5F116E4F0EE59E57CA923213F5E1FC318FF0E56A1ED32A98EA3D8CA6EB7DFF8C6C8499D804EDFB630E03113F9FC278ABAEF15F0BEB3C691F1AEB4DB25DA862398A24117DB836583017C3898BCA8FDB70C2621AA1B364C365437408B643E34A5E9C132E0CCFE68B379CD1EEC1E3B8C91B64BC73ABCDB979CDBF46057C708BB74BFB3019322D5C5CD0BD07CCD171DD37880A55765539D7BDD196BF54D9255872362089CECCC4CF045332792B30959C7B3F11D0D578319AECCCF4450BAD16F9CEA83D9FA999CA5766BB66B69B16C8DE71CC91A7AB0B35EA5201D5464D729491D6D685C12D2D90D45F6FC01A5F43C582E9935C48EC9256ADB7DDBD45D696237F0811871C78274332019F3279EF5F36099934F1DDA5FEC48D9425D41C1373D96A0E494A0AE9770DF82D1C17C3DA0D93B0F763D3489401773EF0B24FE7490A3E64E984842CD839DD88569E84FD01BE7E889399627E6D10B71C243089828F31B177B6DCA4D476955E5DC745CD775CE4D47D7C1C459C00C223417B6FACC74A42A19A7B32AADD1F0CDA0C83AF1307661557643336980268C93AB6A5206EAA5C818617766AE1622E69677DE7CF3310E29701E43B32954A422349D6FFDDC759DD8D1AE69E7347F13310E365B4CB2B386A11AA9701320B19BAFE260F521293A92E2538A8C6227CCD7AB7D9487BB88FECC1FCFD7CF256274A02461548262BEF2A0FE2481A27C40D26293F6A28B24CEF2D40BE5A4BFEFD330F6C39D174903106A1AAA1705615B9862C925D991B8D01BA4219A75C6D051EEB5052E30BB8E0C5C7E3B534EA86F25503EE0432CD909144A96CE0F8A58D165F004FAC8C1241C01A5AA4679824A7C8E138ADFFCA49D9E9C2C9005E48CBBF34F3C9EFB76D25957A58DB69BFAE752A6D377F12589484E562FFD2AFFE48597F99EFCD07A99FB53D133A7350A58F06587CC3E9AE4DF87C044505A5876F563F3A89AC427CB56D6933D037F19E45D9F80D12AADDC874359BB2915E39ACBB9EC3E9A2B2ADCF9B784527F19850FE010DD7178007B1814EAA8A3DC8C933EE98165DA799FF4A06233F1731F524C9E3EB09FB591F691D614222100A84803718ECD64BA738DA9FAA37A636206AED1E822F329B47370CC442AAC15BFCCAABB56DC32831164DA3D6672E3878D689AD7F0C1A9B6399A968267062154BF6585F6BB8535ACCF616840B600873B0E53F438E970449D853FB824FC3744C31C3D8FB6387B808F2854AA2D5FF224CEA68A170FD00EE7658FB9F802608827C50987C702ECEB60CEB3A6B19F734163957DA3FA32CEDCDBCC85D3AC838FA8C11629D5C356134FBAEA9D961E73BFE0ED603246E8B511D4439F9D1FDAB7E0C616034DDE0B1650FBEDC0390079366F91C2808982BE211348012064BB84C47D3FF0F947D36AA0DDCDBAFE8B30AC1B1F484664BD69AB269E0DF62A21541FC6B98F30DE8B1D675ACE0D81F653136CBE19C693BD38ADCEA5CCB9FDA29B6AE639E2CD2EE4332086B6C74DC41225FC64970AF6BC5653714EFD2EA5077D0AA970C6C4B7783BE7A6459DF22D7DD6263CE277E49B73FE732CA789601F96E78DFDBC5C06C072B62C800358022EC0123CB12498F9E03FA55CE875F69F593C744F03DF0446D6A09EF3A96211F979E2121EFB791C07961EF3E5C420D84BE1686F0249E7E6908945C75C7C31A9D0B0E68905498CD14F137371C0646709EBD99FF32851A7679BC3EBA4C90CC719A19A6F4FC3F3044C7E8774C526739B851584AC5C375B248B5B378352D2A9720E99AFE6CC20A60403017E0685CD40CC8124AD1B87319419D0D02E19CA2E824346DF2BE6E78AC9768D7E1C31E7D6C166499BE4A6894BCBC682E20B0EFCAE094F3E87F637EB59826383D125C29C3C30992CE8C102730A822E87D82CCECB5D06338EB398CF4F4399C452B5A1BD4DE9CBFCAA4CFB5086678531499BD3451290D7619AE5975EEEDD7A996C62285A5D935C3A87AE57AFDA4412C009F1DAFF42B6DEF93A2813CE57E928D872895BF87E041B8CD495500EF5A634E3481DF29E95527F7C31D41D5F43D35B19B32175527E856017A129FA1174260A19FDAE0CC41DB36EC8F3D24579C973D29581F3810588C9D4E1258D4C27BE1CA4185F45D3612D9BA58EEAEF5007A038970077D19012ECAE08028F855182B46A1D5A414AB5A5189D107F5899C1B0C5A85A8586CBAF76D590A9547D07495439CFEA20B71E6E12ECB60482DE7AE5E9E07377EC521F5C29D48FC25341EAAA72E590FAA83E43C0AB12130EC2A6962D44F9C7708A1BCB913CC94D0938CD4DA1063C73F4963A60CAA02ED0533BDEC9674C644835941D5695F44CC6EBCE52A77C31D4235F43D71B97E456EE8D2B067B636AE807C72A82B208660A4139CC946BFA69F249CA9DB425500F6DA17E4FD72811520D64AF672B1990AF0D0285F72F54AB684AE52E181512D02F98F0FA1553535435B0287CEE6C20E913B43F85AA805D7A316D715D66C30FCB6AC8CDB1493960F06CA53A5D31682B159689870D65770206AE4D02C50FBDE3D06AC0C5EF850C534867A41CAB2AF591D38011F9D1B4559E2F86187C1DFA6E3478284C9E9F3D6C24AA61CC488ECA5CDE268B018820D4C0111775FE1263455A14C9FAC634834F197D87A794DB62957164F6D84394F27FA02355670AE983B4DC461401DDC7C1878BAF5EA4E670826B9AA12A7660BEC2B8BBEF780C8CA61680740EA33404D2E00543413B743C22D651A2F720031C410FD0C020D47EE02D09344A56C24F696BECC10BDAD14F386C60BC430F948D86C6078BC64CF74397DFB5590354B56543D1438E4314F8443D52A5A7A4F3802767663ED855337638287680610BE6C0B259FBCD79A840682730505D00E800C304AC92655395B9D17EB84C1823304C2CC8B1CFBAE3DAB076D0B20968E7EC391C8E42C8A014C1486E7330C930E5D0340D8F023E03CEFAF1340C0A445FE0820775B476B14B4CBD93322147F848B1B824596194115606D64C33543CB446AB268E3FC7D3EDAB6814094005B388932106C2C190DD054A000A470027326858C124A862303E9878E8A82057470E38CBF1298629BAC003A3547AC90F6E0410AE322BB505B9A7B41F2EEEE60D0CDCD0279C435FBA2A2D07A0F25D5638FC42103E837C330029502E37707C7666F569870E39EF0203D7FAF80E7098806E9FCBB6CA5B65C721A353AD7367759EE7A9860B786542C64D8DEFE6F0164EE93ABEA21B7ED18E0FBD796DAA753B6CCBCE36D59574FD81FECCE929FC9E5C250189B2F2EBD9E6C33E2E5EC9AB7E5D922CBCEF409C519831F13937C7B6CE9BF82E691C2E058C9A2AC2F35B57746C81977B2FD33CBCF3FC9C16FB24CBE87CAF57BF79D1BE583CDB5B12BC89DFEDF3DD3EA74326DBDBE8912546E1B5A9EAFF6C23E17CF66E57FCCA86180245332C1E167C17FFB20FA3A0C5FB35F00A1802A27007ADDFBC2CE6322FDEBEBC7F6C21BD4D62434035F95A2FD68F64BB8B28B0EC5D7C5D3E3D698FDBA78CFC8BDC7BFE23FDFE350C488A03D14F044FF6B3CBD0BB4FBD6D56C3E8DAD39F948783EDC3DFFE1F914838F2ADE30100, '6.1.3-40302');

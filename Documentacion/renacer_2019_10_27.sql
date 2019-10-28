/*
Navicat MySQL Data Transfer

Source Server         : MisEventos
Source Server Version : 50626
Source Host           : MYSQL5018.site4now.net:3306
Source Database       : db_a0fb0f_renacer

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2019-10-28 01:12:34
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
  KEY `IX_idSocio` (`idSocio`) USING BTREE,
  KEY `IX_idEncargado` (`idEncargado`) USING BTREE,
  KEY `IX_idDetalleEvento` (`idDetalleEvento`) USING BTREE,
  CONSTRAINT `FK_Asistencia_DetalleEvento_idDetalleEvento` FOREIGN KEY (`idDetalleEvento`) REFERENCES `detalleevento` (`id`),
  CONSTRAINT `FK_Asistencia_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_Asistencia_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asistencia
-- ----------------------------
INSERT INTO `asistencia` VALUES ('1', '0', '2019', '2', '2', '2000-01-23 00:00:00');
INSERT INTO `asistencia` VALUES ('2', '0', '2019', '11', '2', '2000-01-23 00:00:00');
INSERT INTO `asistencia` VALUES ('3', '0', '2019', '1', '2', '2000-01-23 00:00:00');
INSERT INTO `asistencia` VALUES ('4', '0', '2019', '4', '2', '2000-01-23 00:00:00');
INSERT INTO `asistencia` VALUES ('5', '0', '2019', '2', '2', '2000-01-24 00:00:00');
INSERT INTO `asistencia` VALUES ('6', '0', '2019', '4', '2', '2000-01-24 00:00:00');
INSERT INTO `asistencia` VALUES ('7', '0', '2019', '11', '2', '2000-01-24 00:00:00');
INSERT INTO `asistencia` VALUES ('8', '0', '2019', '1', '2', '2000-01-24 00:00:00');
INSERT INTO `asistencia` VALUES ('9', '0', '2019', '11', '2', '2000-01-26 00:00:00');
INSERT INTO `asistencia` VALUES ('10', '0', '2019', '1', '2', '2000-01-26 00:00:00');
INSERT INTO `asistencia` VALUES ('11', '0', '2019', '2', '2', '2000-01-26 00:00:00');
INSERT INTO `asistencia` VALUES ('12', '0', '2019', '4', '2', '2000-01-26 00:00:00');
INSERT INTO `asistencia` VALUES ('13', '0', '2019', '4', '1', '0000-00-00 00:00:00');
INSERT INTO `asistencia` VALUES ('14', '0', '2019', '4', '1', '0000-00-00 00:00:00');
INSERT INTO `asistencia` VALUES ('15', '0', '2019', '4', '1', '2000-01-27 00:00:00');
INSERT INTO `asistencia` VALUES ('16', '0', '2019', '3', '1', '2000-01-27 00:00:00');
INSERT INTO `asistencia` VALUES ('17', '0', '2019', '3', '1', '2000-01-28 00:00:00');
INSERT INTO `asistencia` VALUES ('18', '0', '2019', '4', '1', '2000-01-28 00:00:00');
INSERT INTO `asistencia` VALUES ('19', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('20', '0', '2019', '2', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('21', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('22', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('23', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('24', '0', '2019', '2', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('25', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('26', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('27', '0', '2019', '2', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('28', '0', '2019', '4', '1', '2000-01-30 00:00:00');
INSERT INTO `asistencia` VALUES ('29', '0', '2019', '3', '1', '2000-01-30 00:00:00');
INSERT INTO `asistencia` VALUES ('30', '0', '2019', '2', '1', '2000-01-30 00:00:00');
INSERT INTO `asistencia` VALUES ('31', '0', '2019', '3', '1', '0000-00-00 00:00:00');
INSERT INTO `asistencia` VALUES ('32', '0', '2019', '2', '1', '0000-00-00 00:00:00');
INSERT INTO `asistencia` VALUES ('33', '0', '2019', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `asistencia` VALUES ('34', '0', '2019', '3', '1', '0000-00-00 00:00:00');
INSERT INTO `asistencia` VALUES ('35', '0', '2019', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `asistencia` VALUES ('36', '0', '2019', '2', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('37', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('38', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('39', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('40', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('41', '0', '2019', '2', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('42', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('43', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('44', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('45', '0', '2019', '2', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('46', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('47', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('48', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('49', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('50', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('51', '0', '2019', '2', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('52', '0', '2019', '4', '1', '2000-01-30 00:00:00');
INSERT INTO `asistencia` VALUES ('53', '0', '2019', '2', '1', '2000-01-30 00:00:00');
INSERT INTO `asistencia` VALUES ('54', '0', '2019', '3', '1', '2000-01-30 00:00:00');
INSERT INTO `asistencia` VALUES ('55', '0', '2019', '2', '1', '2000-01-31 00:00:00');
INSERT INTO `asistencia` VALUES ('56', '0', '2019', '4', '1', '2000-01-31 00:00:00');
INSERT INTO `asistencia` VALUES ('57', '0', '2019', '3', '1', '2000-01-31 00:00:00');
INSERT INTO `asistencia` VALUES ('58', '0', '2019', '4', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('59', '0', '2019', '3', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('60', '0', '2019', '2', '1', '2000-01-29 00:00:00');
INSERT INTO `asistencia` VALUES ('61', '0', '2019', '2', '1', '2000-01-30 00:00:00');
INSERT INTO `asistencia` VALUES ('62', '0', '2019', '3', '1', '2000-01-30 00:00:00');
INSERT INTO `asistencia` VALUES ('63', '0', '2019', '2', '1', '0000-00-00 00:00:00');
INSERT INTO `asistencia` VALUES ('64', '0', '2019', '4', '1', '0000-00-00 00:00:00');
INSERT INTO `asistencia` VALUES ('65', '0', '2019', '3', '1', '0000-00-00 00:00:00');

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
  KEY `IX_tipoDoc_id` (`tipoDoc_id`) USING BTREE,
  CONSTRAINT `FK_Cliente_TipoDocumento_tipoDoc_id` FOREIGN KEY (`tipoDoc_id`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacto
-- ----------------------------
INSERT INTO `contacto` VALUES ('1', 'juan', 'jose', '3432324324', '242143134', 'juan@juan.com', 'Familiar');
INSERT INTO `contacto` VALUES ('2', '', '', '', '', '', '');
INSERT INTO `contacto` VALUES ('3', '', '', '', '', '', '');

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
  KEY `IX_Evento_id` (`Evento_id`) USING BTREE,
  CONSTRAINT `FK_Cuotas_Evento_Evento_id` FOREIGN KEY (`Evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cuotas
-- ----------------------------
INSERT INTO `cuotas` VALUES ('1', 'juan', '400.00', '1');
INSERT INTO `cuotas` VALUES ('2', 'Cuota 1', '150.00', '24');
INSERT INTO `cuotas` VALUES ('3', 'Cuota 2', '150.00', '24');
INSERT INTO `cuotas` VALUES ('4', 'Cuota 3', '150.00', '24');

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
  KEY `IX_idEncargado` (`idEncargado`) USING BTREE,
  KEY `IX_idEvento` (`idEvento`) USING BTREE,
  KEY `IX_idEspacio` (`idEspacio`) USING BTREE,
  CONSTRAINT `FK_DetalleEvento_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_DetalleEvento_EspacioComun_idEspacio` FOREIGN KEY (`idEspacio`) REFERENCES `espaciocomun` (`id`),
  CONSTRAINT `FK_DetalleEvento_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detalleevento
-- ----------------------------
INSERT INTO `detalleevento` VALUES ('1', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-07-01 08:00:00', '2019-07-01 10:00:00', null, null, '1');
INSERT INTO `detalleevento` VALUES ('2', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-07-04 08:00:00', '2019-07-04 10:00:00', null, null, '1');
INSERT INTO `detalleevento` VALUES ('3', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-07-08 08:00:00', '2019-07-08 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('4', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-07-11 08:00:00', '2019-07-11 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('5', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-07-15 08:00:00', '2019-07-15 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('6', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-07-18 08:00:00', '2019-07-18 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('7', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-07-22 08:00:00', '2019-07-22 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('8', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-07-25 08:00:00', '2019-07-25 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('9', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-07-29 08:00:00', '2019-07-29 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('10', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '1', '0000-00-00 00:00:00', '2019-08-01 08:00:00', '2019-08-01 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('11', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '3', '0000-00-00 00:00:00', '2019-08-05 08:00:00', '2019-08-05 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('12', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '3', '0000-00-00 00:00:00', '2019-08-08 08:00:00', '2019-08-08 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('13', 'Taller Pintura', 'Taller pintura adulto mayor', '1', '1', '3', '0000-00-00 00:00:00', '2019-08-12 08:00:00', '2019-08-12 10:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('14', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '3', '1', '0000-00-00 00:00:00', '2019-07-18 10:00:00', '2019-07-18 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('15', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '3', '1', '0000-00-00 00:00:00', '2019-07-22 10:00:00', '2019-07-22 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('16', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '3', '1', '0000-00-00 00:00:00', '2019-07-25 10:00:00', '2019-07-25 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('17', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '3', '1', '0000-00-00 00:00:00', '2019-07-29 10:00:00', '2019-07-29 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('18', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '3', '1', '0000-00-00 00:00:00', '2019-08-01 10:00:00', '2019-08-01 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('19', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '3', '1', '0000-00-00 00:00:00', '2019-08-05 10:00:00', '2019-08-05 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('20', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '4', '1', '0000-00-00 00:00:00', '2019-07-18 10:00:00', '2019-07-18 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('21', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '4', '1', '0000-00-00 00:00:00', '2019-07-22 10:00:00', '2019-07-22 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('22', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '4', '1', '0000-00-00 00:00:00', '2019-07-25 10:00:00', '2019-07-25 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('23', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '4', '1', '0000-00-00 00:00:00', '2019-07-29 10:00:00', '2019-07-29 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('24', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '4', '1', '0000-00-00 00:00:00', '2019-08-01 10:00:00', '2019-08-01 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('25', 'Taller Teatro', 'Taller teatro para gente mayor', '1', '4', '1', '0000-00-00 00:00:00', '2019-08-05 10:00:00', '2019-08-05 12:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('26', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-08-02 14:00:00', '2019-08-02 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('27', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-08-05 14:00:00', '2019-08-05 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('28', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-08-09 14:00:00', '2019-08-09 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('29', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-08-12 14:00:00', '2019-08-12 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('30', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-08-16 14:00:00', '2019-08-16 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('31', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-08-19 14:00:00', '2019-08-19 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('32', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-08-23 14:00:00', '2019-08-23 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('33', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-08-26 14:00:00', '2019-08-26 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('34', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-08-30 14:00:00', '2019-08-30 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('35', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-09-02 14:00:00', '2019-09-02 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('36', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-09-06 14:00:00', '2019-09-06 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('37', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-09-09 14:00:00', '2019-09-09 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('38', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-09-13 14:00:00', '2019-09-13 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('39', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-09-16 14:00:00', '2019-09-16 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('40', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-09-20 14:00:00', '2019-09-20 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('41', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-09-23 14:00:00', '2019-09-23 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('42', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-09-27 14:00:00', '2019-09-27 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('43', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '7', '1', '0000-00-00 00:00:00', '2019-09-30 14:00:00', '2019-09-30 16:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('44', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-01 19:00:00', '2019-08-01 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('45', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-02 19:00:00', '2019-08-02 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('46', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-08 19:00:00', '2019-08-08 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('47', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-09 19:00:00', '2019-08-09 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('48', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-15 19:00:00', '2019-08-15 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('49', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-16 19:00:00', '2019-08-16 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('50', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-22 19:00:00', '2019-08-22 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('51', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-23 19:00:00', '2019-08-23 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('52', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-29 19:00:00', '2019-08-29 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('53', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-08-30 19:00:00', '2019-08-30 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('54', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-09-05 19:00:00', '2019-09-05 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('55', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-09-06 19:00:00', '2019-09-06 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('56', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-09-12 19:00:00', '2019-09-12 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('57', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-09-13 19:00:00', '2019-09-13 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('58', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '8', '1', '0000-00-00 00:00:00', '2019-09-19 19:00:00', '2019-09-19 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('59', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-01 19:00:00', '2019-08-01 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('60', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-02 19:00:00', '2019-08-02 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('61', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-08 19:00:00', '2019-08-08 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('62', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-09 19:00:00', '2019-08-09 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('63', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-15 19:00:00', '2019-08-15 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('64', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-16 19:00:00', '2019-08-16 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('65', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-22 19:00:00', '2019-08-22 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('66', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-23 19:00:00', '2019-08-23 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('67', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-29 19:00:00', '2019-08-29 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('68', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-08-30 19:00:00', '2019-08-30 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('69', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-09-05 19:00:00', '2019-09-05 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('70', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-09-06 19:00:00', '2019-09-06 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('71', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-09-12 19:00:00', '2019-09-12 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('72', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-09-13 19:00:00', '2019-09-13 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('73', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '9', '1', '0000-00-00 00:00:00', '2019-09-19 19:00:00', '2019-09-19 21:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('74', 'Escarapelas', 'Curso armado de escarapelas', '1', '10', '1', '0000-00-00 00:00:00', '2019-08-05 12:00:00', '2019-08-05 14:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('75', 'Escarapelas', 'Curso armado de escarapelas', '1', '10', '1', '0000-00-00 00:00:00', '2019-08-12 12:00:00', '2019-08-12 14:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('76', 'Escarapelas', 'Curso armado de escarapelas', '1', '10', '1', '0000-00-00 00:00:00', '2019-08-19 12:00:00', '2019-08-19 14:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('77', 'Escarapelas', 'Curso armado de escarapelas', '1', '10', '1', '0000-00-00 00:00:00', '2019-08-26 12:00:00', '2019-08-26 14:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('78', 'Escarapelas', 'Curso armado de escarapelas', '1', '11', '1', '0000-00-00 00:00:00', '2019-08-05 12:00:00', '2019-08-05 14:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('79', 'Escarapelas', 'Curso armado de escarapelas', '1', '11', '1', '0000-00-00 00:00:00', '2019-08-12 12:00:00', '2019-08-12 14:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('80', 'Escarapelas', 'Curso armado de escarapelas', '1', '11', '1', '0000-00-00 00:00:00', '2019-08-19 12:00:00', '2019-08-19 14:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('81', 'Escarapelas', 'Curso armado de escarapelas', '1', '11', '1', '0000-00-00 00:00:00', '2019-08-26 12:00:00', '2019-08-26 14:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('82', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-08-12 15:00:00', '2019-08-12 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('83', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-08-13 15:00:00', '2019-08-13 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('84', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-08-19 15:00:00', '2019-08-19 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('85', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-08-20 15:00:00', '2019-08-20 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('86', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-08-26 15:00:00', '2019-08-26 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('87', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-08-27 15:00:00', '2019-08-27 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('88', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-09-02 15:00:00', '2019-09-02 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('89', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-09-03 15:00:00', '2019-09-03 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('90', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-09-09 15:00:00', '2019-09-09 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('91', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-09-10 15:00:00', '2019-09-10 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('92', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-09-16 15:00:00', '2019-09-16 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('93', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-09-17 15:00:00', '2019-09-17 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('94', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-09-23 15:00:00', '2019-09-23 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('95', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-09-24 15:00:00', '2019-09-24 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('96', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-09-30 15:00:00', '2019-09-30 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('97', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-10-01 15:00:00', '2019-10-01 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('98', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-10-07 15:00:00', '2019-10-07 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('99', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-10-08 15:00:00', '2019-10-08 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('100', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-10-14 15:00:00', '2019-10-14 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('101', 'Taller CBA ARTE', 'Pintura en tela', '1', '12', '1', '0000-00-00 00:00:00', '2019-10-15 15:00:00', '2019-10-15 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('102', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-08-09 15:00:00', '2019-08-09 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('103', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-08-14 15:00:00', '2019-08-14 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('104', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-08-16 15:00:00', '2019-08-16 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('105', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-08-21 15:00:00', '2019-08-21 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('106', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-08-23 15:00:00', '2019-08-23 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('107', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-08-28 15:00:00', '2019-08-28 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('108', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-08-30 15:00:00', '2019-08-30 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('109', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-09-04 15:00:00', '2019-09-04 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('110', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-09-06 15:00:00', '2019-09-06 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('111', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-09-11 15:00:00', '2019-09-11 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('112', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-09-13 15:00:00', '2019-09-13 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('113', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-09-18 15:00:00', '2019-09-18 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('114', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-09-20 15:00:00', '2019-09-20 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('115', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-09-25 15:00:00', '2019-09-25 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('116', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-09-27 15:00:00', '2019-09-27 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('117', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-10-02 15:00:00', '2019-10-02 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('118', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-10-04 15:00:00', '2019-10-04 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('119', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-10-09 15:00:00', '2019-10-09 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('120', 'Taller CBA ARTE2', 'Pintura en tela', '1', '13', '1', '0000-00-00 00:00:00', '2019-10-11 15:00:00', '2019-10-11 17:00:00', null, null, '0');
INSERT INTO `detalleevento` VALUES ('121', 'Taller de bordado', 'Aprendizaje de bordado sobre tela', '2', '14', '1', '0000-00-00 00:00:00', '2019-07-11 12:00:00', '2019-07-11 14:00:00', null, 'Jueves', '1');
INSERT INTO `detalleevento` VALUES ('122', 'Taller de bordado', 'Aprendizaje de bordado sobre tela', '2', '14', '1', '0000-00-00 00:00:00', '2019-07-15 10:00:00', '2019-07-15 12:00:00', null, 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('123', 'Taller de bordado', 'Aprendizaje de bordado sobre tela', '2', '14', '1', '0000-00-00 00:00:00', '2019-07-18 12:00:00', '2019-07-18 14:00:00', null, 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('124', 'Taller de bordado', 'Aprendizaje de bordado sobre tela', '2', '14', '1', '0000-00-00 00:00:00', '2019-07-22 10:00:00', '2019-07-22 12:00:00', null, 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('125', 'Taller de bordado', 'Aprendizaje de bordado sobre tela', '2', '14', '1', '0000-00-00 00:00:00', '2019-07-25 12:00:00', '2019-07-25 14:00:00', null, 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('126', 'Taller de bordado', 'Aprendizaje de bordado sobre tela', '2', '14', '1', '0000-00-00 00:00:00', '2019-07-29 10:00:00', '2019-07-29 12:00:00', null, 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('127', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-07-24 17:00:00', '2019-07-24 18:00:00', null, 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('128', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-07-26 17:00:00', '2019-07-26 18:00:00', null, 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('129', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-07-29 17:00:00', '2019-07-29 18:00:00', null, 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('130', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-07-31 17:00:00', '2019-07-31 18:00:00', null, 'Miercoles', '1');
INSERT INTO `detalleevento` VALUES ('131', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-02 17:00:00', '2019-08-02 18:00:00', null, 'Viernes', '1');
INSERT INTO `detalleevento` VALUES ('132', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-05 17:00:00', '2019-08-05 18:00:00', null, 'Lunes', '1');
INSERT INTO `detalleevento` VALUES ('133', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-07 17:00:00', '2019-08-07 18:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('134', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-09 17:00:00', '2019-08-09 18:00:00', null, 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('135', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-12 17:00:00', '2019-08-12 18:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('136', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-14 17:00:00', '2019-08-14 18:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('137', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-16 17:00:00', '2019-08-16 18:00:00', null, 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('138', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-19 17:00:00', '2019-08-19 18:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('139', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-21 17:00:00', '2019-08-21 18:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('140', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-23 17:00:00', '2019-08-23 18:00:00', null, 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('141', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-26 17:00:00', '2019-08-26 18:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('142', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-28 17:00:00', '2019-08-28 18:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('143', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '15', '1', '0000-00-00 00:00:00', '2019-08-30 17:00:00', '2019-08-30 18:00:00', null, 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('144', 'dsd', 'dsdsdsdsdsd', '1', '16', '1', '0000-00-00 00:00:00', '2019-08-12 10:00:00', '2019-08-12 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('145', 'dsd', 'dsdsdsdsdsd', '1', '16', '1', '0000-00-00 00:00:00', '2019-08-19 10:00:00', '2019-08-19 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('146', 'dsd', 'dsdsdsdsdsd', '1', '16', '1', '0000-00-00 00:00:00', '2019-08-26 10:00:00', '2019-08-26 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('147', 'dsd', 'dsdsdsdsdsd', '1', '16', '1', '0000-00-00 00:00:00', '2019-09-02 10:00:00', '2019-09-02 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('148', 'dsd', 'dsdsdsdsdsd', '1', '17', '2', '0000-00-00 00:00:00', '2019-08-12 10:00:00', '2019-08-12 12:00:00', '2019-08-17 21:13:07', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('149', 'dsd', 'dsdsdsdsdsd', '1', '17', '2', '0000-00-00 00:00:00', '2019-08-19 10:00:00', '2019-08-19 12:00:00', '2019-08-17 21:13:07', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('150', 'dsd', 'dsdsdsdsdsd', '1', '17', '2', '0000-00-00 00:00:00', '2019-08-26 10:00:00', '2019-08-26 12:00:00', '2019-08-17 21:13:07', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('151', 'dsd', 'dsdsdsdsdsd', '1', '17', '2', '0000-00-00 00:00:00', '2019-09-02 10:00:00', '2019-09-02 12:00:00', '2019-08-17 21:13:07', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('152', 'Taller de teatro', 'este es un taller de teatro', '1', '18', '3', '0000-00-00 00:00:00', '2019-08-07 10:00:00', '2019-08-07 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('153', 'Taller de teatro', 'este es un taller de teatro', '1', '18', '3', '0000-00-00 00:00:00', '2019-08-12 10:00:00', '2019-08-12 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('154', 'Taller de teatro', 'este es un taller de teatro', '1', '18', '3', '0000-00-00 00:00:00', '2019-08-14 10:00:00', '2019-08-14 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('155', 'Taller de teatro', 'este es un taller de teatro', '1', '18', '3', '0000-00-00 00:00:00', '2019-08-19 10:00:00', '2019-08-19 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('156', 'Taller de teatro', 'este es un taller de teatro', '1', '18', '3', '0000-00-00 00:00:00', '2019-08-21 10:00:00', '2019-08-21 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('157', 'Taller de teatro', 'este es un taller de teatro', '1', '18', '3', '0000-00-00 00:00:00', '2019-08-26 10:00:00', '2019-08-26 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('158', 'Taller de teatro', 'este es un taller de teatro', '1', '18', '3', '0000-00-00 00:00:00', '2019-08-28 10:00:00', '2019-08-28 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('159', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-09-18 11:00:00', '2019-09-18 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('160', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-09-23 11:00:00', '2019-09-23 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('161', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-09-25 11:00:00', '2019-09-25 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('162', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-09-30 11:00:00', '2019-09-30 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('163', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-10-02 11:00:00', '2019-10-02 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('164', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-10-07 11:00:00', '2019-10-07 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('165', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-10-09 11:00:00', '2019-10-09 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('166', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-10-14 11:00:00', '2019-10-14 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('167', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-10-16 11:00:00', '2019-10-16 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('168', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-10-21 11:00:00', '2019-10-21 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('169', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-10-23 11:00:00', '2019-10-23 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('170', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-10-28 11:00:00', '2019-10-28 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('171', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-10-30 11:00:00', '2019-10-30 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('172', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-11-04 11:00:00', '2019-11-04 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('173', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-11-06 11:00:00', '2019-11-06 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('174', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-11-11 11:00:00', '2019-11-11 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('175', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '3', '21', '1', '0000-00-00 00:00:00', '2019-11-13 11:00:00', '2019-11-13 12:00:00', null, 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('185', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-10-07 10:00:00', '2019-10-07 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('186', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-10-08 12:00:00', '2019-10-08 14:00:00', null, 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('187', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-10-14 10:00:00', '2019-10-14 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('188', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-10-15 12:00:00', '2019-10-15 14:00:00', null, 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('189', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-10-21 10:00:00', '2019-10-21 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('190', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-10-22 12:00:00', '2019-10-22 14:00:00', null, 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('191', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-10-28 10:00:00', '2019-10-28 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('192', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-10-29 12:00:00', '2019-10-29 14:00:00', null, 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('193', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-11-04 10:00:00', '2019-11-04 12:00:00', null, 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('194', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '22', '1', '0000-00-00 00:00:00', '2019-11-05 12:00:00', '2019-11-05 14:00:00', null, 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('195', 'sdsdf', 'sdfsdfsdfsd sd', '2', '23', '2', '2019-10-18 10:02:00', '2019-10-18 11:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('196', 'sdsdf', 'sdfsdfsdfsd sd', '2', '23', '2', '2019-10-21 10:02:00', '2019-10-21 11:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('197', 'sdsdf', 'sdfsdfsdfsd sd', '2', '23', '2', '2019-10-22 10:02:00', '2019-10-22 11:00:00', null, 'Nuevo', 'Martes', '0');
INSERT INTO `detalleevento` VALUES ('198', 'sdsdf', 'sdfsdfsdfsd sd', '2', '23', '2', '2019-10-23 10:02:00', '2019-10-23 11:00:00', null, 'Nuevo', 'Miercoles', '0');
INSERT INTO `detalleevento` VALUES ('199', 'sdsdf', 'sdfsdfsdfsd sd', '2', '23', '2', '2019-10-24 10:02:00', '2019-10-24 11:00:00', null, 'Nuevo', 'Jueves', '0');
INSERT INTO `detalleevento` VALUES ('200', 'sdsdf', 'sdfsdfsdfsd sd', '2', '23', '2', '2019-10-25 10:02:00', '2019-10-25 11:00:00', null, 'Nuevo', 'Viernes', '0');
INSERT INTO `detalleevento` VALUES ('201', 'Yoga', 'Clases de yoga durante el año', '1', '24', '3', '2019-10-28 20:00:00', '2019-10-28 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('202', 'Yoga', 'Clases de yoga durante el año', '1', '24', '3', '2019-11-04 20:00:00', '2019-11-04 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('203', 'Yoga', 'Clases de yoga durante el año', '1', '24', '3', '2019-11-11 20:00:00', '2019-11-11 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('204', 'Yoga', 'Clases de yoga durante el año', '1', '24', '3', '2019-11-18 20:00:00', '2019-11-18 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('205', 'Yoga', 'Clases de yoga durante el año', '1', '24', '3', '2019-11-25 20:00:00', '2019-11-25 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('206', 'Yoga', 'Clases de yoga durante el año', '1', '24', '3', '2019-12-02 20:00:00', '2019-12-02 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('207', 'Yoga', 'Clases de yoga durante el año', '1', '24', '3', '2019-12-09 20:00:00', '2019-12-09 21:00:00', null, 'Nuevo', 'Lunes', '0');
INSERT INTO `detalleevento` VALUES ('208', 'Limpieza dental', 'Enseñamos la importancia de la higiene bucal', '1', '25', '3', '2019-10-29 10:00:00', '2019-10-29 11:00:00', null, 'Nuevo', 'Martes', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of domicilio
-- ----------------------------
INSERT INTO `domicilio` VALUES ('1', 'Poeta Lugones', 'Juan del campillo', null, '50', '0', null);
INSERT INTO `domicilio` VALUES ('2', 'Los Paraisos', 'bernis', 'akakka', '3567', '5008', '1111ssss');
INSERT INTO `domicilio` VALUES ('3', '', 'San Martin', '4', '84', '5000', '');
INSERT INTO `domicilio` VALUES ('4', '', '', '', '', '0', '');

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
  KEY `IX_idTipoDoc` (`idTipoDoc`) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio`) USING BTREE,
  CONSTRAINT `FK_Encargado_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Encargado_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  KEY `IX_Encargado_id` (`Encargado_id`) USING BTREE,
  KEY `IX_Tag_id` (`Tag_id`) USING BTREE,
  CONSTRAINT `FK_EncargadoTags_Encargado_Encargado_id` FOREIGN KEY (`Encargado_id`) REFERENCES `encargado` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EncargadoTags_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  KEY `IX_idTipoEspacio` (`idTipoEspacio`) USING BTREE,
  CONSTRAINT `FK_EspacioComun_TipoEspacio_idTipoEspacio` FOREIGN KEY (`idTipoEspacio`) REFERENCES `tipoespacio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of espaciocomun
-- ----------------------------
INSERT INTO `espaciocomun` VALUES ('1', 'Aula 205', 'Usos Múltiples', '20', '1', '0', '2019-07-30 01:43:36', '2019-10-16 20:55:12', null);
INSERT INTO `espaciocomun` VALUES ('2', 'Sum', 'Espacio al aire libre ', '100', '2019', '0', '2019-10-17 20:59:39', '2019-10-22 20:56:46', null);
INSERT INTO `espaciocomun` VALUES ('3', 'Aula 209', 'Laboratorio de computación', '10', '2019', '0', '2019-08-01 01:59:55', '2019-10-07 20:55:57', null);
INSERT INTO `espaciocomun` VALUES ('4', 'Aula 205', 'assasdcds', '100', '1', '0', '2019-10-18 20:47:01', null, null);
INSERT INTO `espaciocomun` VALUES ('5', 'Aula 205', 'dsdsd', '100', '2', '0', '2019-10-18 20:51:15', null, null);
INSERT INTO `espaciocomun` VALUES ('6', 'Aula 205', 'dsd', '100', '2', '0', '2019-10-18 20:52:50', null, null);

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
  KEY `IX_idTipoEvento` (`idTipoEvento`) USING BTREE,
  KEY `IX_idEspacio` (`idEspacio`) USING BTREE,
  KEY `IX_idEncargado` (`idEncargado`) USING BTREE,
  CONSTRAINT `FK_Evento_Encargado_idEncargado` FOREIGN KEY (`idEncargado`) REFERENCES `encargado` (`id`),
  CONSTRAINT `FK_Evento_EspacioComun_idEspacio` FOREIGN KEY (`idEspacio`) REFERENCES `espaciocomun` (`id`),
  CONSTRAINT `FK_Evento_TipoEvento_idTipoEvento` FOREIGN KEY (`idTipoEvento`) REFERENCES `tipoevento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evento
-- ----------------------------
INSERT INTO `evento` VALUES ('1', 'Taller Pintura', 'Taller pintura adulto mayor', '2', '1', '1', '2', '18', '0', '500', '4', '2019-06-30 00:00:00', '2019-08-13 00:00:00', '2019-06-27 00:00:00', '2019-06-01 00:00:00', 'Finalizado', '2019-06-27 02:37:11', null);
INSERT INTO `evento` VALUES ('3', 'Taller Teatro', 'Taller teatro para gente mayor', '2', '1', '2', '2', '17', '0', '1200', '3', '2019-07-16 00:00:00', '2019-08-07 00:00:00', '2019-06-28 00:00:00', '2019-07-03 00:00:00', 'Finalizado', '2019-06-28 15:54:42', null);
INSERT INTO `evento` VALUES ('4', 'Taller Teatro', 'Taller teatro para gente mayor', '2', '1', '2', '2', '17', '0', '1200', '3', '2019-05-16 00:00:00', '2019-07-03 00:00:00', '2019-06-28 00:00:00', '2019-07-03 00:00:00', 'Finalizado', '2019-06-28 15:59:11', null);
INSERT INTO `evento` VALUES ('7', 'Taller Office', 'Es un taller para que las personas aprendan a usar el paquete Office', '1', '1', '1', '2', '20', '0', '1200', '3', '2019-06-30 00:00:00', '2019-09-30 00:00:00', '2019-07-02 00:00:00', '2019-07-30 00:00:00', 'Finalizado', '2019-07-02 21:22:51', null);
INSERT INTO `evento` VALUES ('8', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '1', '1', '3', '10', '0', '1200', '3', '2019-07-07 00:00:00', '2019-09-19 00:00:00', '2019-07-02 00:00:00', '2019-07-30 00:00:00', 'Finalizado', '2019-07-02 22:22:20', null);
INSERT INTO `evento` VALUES ('9', 'Curso Uso de celulares', 'Se aprende a usar el celular y sus aplicaciones mas importantes', '1', '1', '1', '3', '10', '0', '200', '5', '2019-07-31 00:00:00', '2019-09-19 00:00:00', '2019-05-02 00:00:00', '2019-07-03 00:00:00', 'Finalizado', '2019-07-02 22:22:59', null);
INSERT INTO `evento` VALUES ('10', 'Escarapelas', 'Curso armado de escarapelas', '1', '1', '1', '2', '5', '0', '1200', '3', '2019-07-31 00:00:00', '2019-08-31 00:00:00', '2019-07-02 00:00:00', '2019-07-23 00:00:00', 'Finalizado', '2019-07-02 23:45:25', null);
INSERT INTO `evento` VALUES ('11', 'Escarapelas', 'Curso armado de escarapelas', '1', '1', '1', '2', '5', '1', '0', '0', '2019-07-31 00:00:00', '2019-08-31 00:00:00', '2019-07-02 00:00:00', '2019-07-23 00:00:00', 'Finalizado', '2019-07-02 23:46:38', null);
INSERT INTO `evento` VALUES ('12', 'Taller CBA ARTE', 'Pintura en tela', '2', '1', '1', '3', '19', '0', '1500', '3', '2019-08-08 00:00:00', '2019-10-15 00:00:00', '2019-07-03 00:00:00', '2019-07-15 00:00:00', 'Finalizado', '2019-07-03 00:19:05', null);
INSERT INTO `evento` VALUES ('13', 'Taller CBA ARTE2', 'Pintura en tela', '2', '1', '1', '3', '19', '0', '1500', '3', '2019-08-08 00:00:00', '2019-10-15 00:00:00', '2019-07-03 00:00:00', '2019-07-15 00:00:00', 'Cancelado', '2019-07-03 00:21:05', null);
INSERT INTO `evento` VALUES ('14', 'Taller de bordado', 'Aprendizaje de bordado sobre tela', '2', '1', '2', '4', '10', '1', '0', '0', '2019-07-11 00:00:00', '2019-07-31 00:00:00', '2019-07-11 00:00:00', '2019-07-24 00:00:00', 'Finalizado', '2019-07-11 02:59:06', null);
INSERT INTO `evento` VALUES ('15', 'Curso de MEditacion', 'curso para aprender a meditar', '1', '1', '1', '5', '20', '0', '5000', '5', '2019-07-23 10:00:00', '2019-08-31 00:00:00', '2019-07-01 00:00:00', '2019-07-23 00:00:00', 'Finalizado', '2019-07-23 21:15:21', null);
INSERT INTO `evento` VALUES ('16', 'dsd', 'dsdsdsdsdsd', '2', '1', '1', '3', '10', '0', '1200', '3', '2019-08-07 00:00:00', '2019-09-05 00:00:00', '2019-07-30 00:00:00', '2019-08-02 00:00:00', 'Finalizado', '2019-07-30 17:04:31', null);
INSERT INTO `evento` VALUES ('17', 'dsd', 'dsdsdsdsdsd', '2', '1', '1', '3', '10', '0', '1200', '3', '2019-08-07 00:00:00', '2019-09-05 00:00:00', '2019-07-30 00:00:00', '2019-08-02 00:00:00', 'Cancelado', '2019-07-30 17:04:31', '2019-08-17 21:13:07');
INSERT INTO `evento` VALUES ('18', 'Taller de teatro', 'este es un taller de teatro', '2', '3', '1', '2', '10', '0', '1500', '3', '2019-08-06 00:00:00', '2019-08-30 00:00:00', '2019-08-05 00:00:00', '2019-08-13 00:00:00', 'Finalizado', '2019-08-05 20:09:02', null);
INSERT INTO `evento` VALUES ('19', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '2', '1', '3', '5', '20', '0', '200', '4', '2019-09-17 00:00:00', '2019-11-17 00:00:00', '2019-09-01 00:00:00', '2019-09-17 00:00:00', 'Cancelado', '2019-08-17 21:05:50', '2019-08-17 21:09:06');
INSERT INTO `evento` VALUES ('20', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '2', '1', '3', '5', '20', '0', '200', '4', '2019-09-17 00:00:00', '2019-11-17 00:00:00', '2019-09-01 00:00:00', '2019-09-17 00:00:00', 'Cancelado', '2019-08-17 21:05:54', '2019-08-17 21:09:35');
INSERT INTO `evento` VALUES ('21', 'Taller de Costura', 'Taller de Costura para personas de tercera edad', '2', '1', '3', '5', '20', '0', '200', '4', '2019-09-24 00:00:00', '2019-11-27 00:00:00', '2019-09-01 00:00:00', '2019-09-17 00:00:00', 'Progreso', '2019-08-17 21:06:29', null);
INSERT INTO `evento` VALUES ('22', 'Aprender a manejar el celular', 'Es un curso destinado al aprendizaje del uso del celular con las aplicaciones mas comunes.', '1', '1', '1', '5', '10', '0', '1200', '3', '2019-10-05 00:00:00', '2019-11-07 00:00:00', '2019-10-03 00:00:00', '2019-10-31 00:00:00', 'Progreso', '2019-10-03 17:17:22', null);
INSERT INTO `evento` VALUES ('23', 'sdsdf', 'sdfsdfsdfsd sd', '4', '2', '2', '10', '30', '1', '0', '0', '2019-10-18 00:00:00', '2019-10-25 00:00:00', '2019-10-13 00:00:00', '2019-10-21 00:00:00', 'Finalizado', '2019-10-18 21:02:37', null);
INSERT INTO `evento` VALUES ('24', 'Yoga', 'Clases de yoga durante el año', '1', '3', '1', '5', '10', '0', '450', '3', '2019-10-26 00:00:00', '2019-12-10 00:00:00', '2019-01-01 00:00:00', '2019-01-08 00:00:00', 'Progreso', '2019-10-26 05:48:51', null);
INSERT INTO `evento` VALUES ('25', 'Limpieza dental', 'Enseñamos la importancia de la higiene bucal', '2', '3', '1', '3', '10', '1', '0', '0', '2019-10-29 00:00:00', '2019-10-29 00:00:00', '2019-10-10 00:00:00', '2019-10-28 00:00:00', 'Nuevo', '2019-10-26 06:17:48', null);

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
  KEY `IX_Evento_id` (`Evento_id`) USING BTREE,
  CONSTRAINT `FK_Horarios_Evento_Evento_id` FOREIGN KEY (`Evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of horarios
-- ----------------------------
INSERT INTO `horarios` VALUES ('1', 'Lunes', '1', '10:02', '11:00', '23');
INSERT INTO `horarios` VALUES ('2', 'Martes', '2', '10:02', '11:00', '23');
INSERT INTO `horarios` VALUES ('3', 'Miercoles', '3', '10:02', '11:00', '23');
INSERT INTO `horarios` VALUES ('4', 'Jueves', '4', '10:02', '11:00', '23');
INSERT INTO `horarios` VALUES ('5', 'Viernes', '5', '10:02', '11:00', '23');
INSERT INTO `horarios` VALUES ('6', 'Lunes', '1', '20:00', '21:00', '24');
INSERT INTO `horarios` VALUES ('7', 'Martes', '2', '10:00', '11:00', '25');

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
  PRIMARY KEY (`id`),
  KEY `IX_idEvento` (`idEvento`) USING BTREE,
  KEY `IX_idSocio` (`idSocio`) USING BTREE,
  CONSTRAINT `FK_Inscripcion_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`),
  CONSTRAINT `FK_Inscripcion_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inscripcion
-- ----------------------------
INSERT INTO `inscripcion` VALUES ('2', '1', '4', '2019-06-30 18:11:17', null);
INSERT INTO `inscripcion` VALUES ('3', '4', '1', '2019-07-01 00:49:40', null);
INSERT INTO `inscripcion` VALUES ('9', '4', '2', '2019-07-01 01:58:28', null);
INSERT INTO `inscripcion` VALUES ('10', '4', '3', '2019-07-01 02:38:23', null);
INSERT INTO `inscripcion` VALUES ('11', '4', '4', '2019-07-01 02:38:23', null);
INSERT INTO `inscripcion` VALUES ('17', '3', '2', '2019-07-01 03:08:12', null);
INSERT INTO `inscripcion` VALUES ('18', '3', '4', '2019-07-01 03:08:12', null);
INSERT INTO `inscripcion` VALUES ('19', '3', '3', '2019-07-01 03:08:12', null);
INSERT INTO `inscripcion` VALUES ('20', '3', '1', '2019-07-02 21:18:04', null);
INSERT INTO `inscripcion` VALUES ('21', '7', '1', '2019-07-03 01:19:18', null);
INSERT INTO `inscripcion` VALUES ('22', '7', '2', '2019-07-03 01:44:01', null);
INSERT INTO `inscripcion` VALUES ('24', '10', '1', '2019-07-06 19:38:41', null);
INSERT INTO `inscripcion` VALUES ('25', '10', '11', '2019-07-06 19:39:14', null);
INSERT INTO `inscripcion` VALUES ('26', '10', '4', '2019-07-06 19:47:01', null);
INSERT INTO `inscripcion` VALUES ('27', '10', '2', '2019-07-06 19:48:47', null);
INSERT INTO `inscripcion` VALUES ('28', '10', '12', '2019-07-06 19:51:36', null);
INSERT INTO `inscripcion` VALUES ('29', '10', '3', '2019-07-06 19:52:56', null);
INSERT INTO `inscripcion` VALUES ('30', '13', '2', '2019-07-15 20:25:10', null);
INSERT INTO `inscripcion` VALUES ('31', '13', '1', '2019-07-15 20:25:10', null);
INSERT INTO `inscripcion` VALUES ('32', '14', '11', '2019-07-17 01:52:46', null);
INSERT INTO `inscripcion` VALUES ('33', '14', '4', '2019-07-17 01:52:46', null);
INSERT INTO `inscripcion` VALUES ('34', '14', '1', '2019-07-17 01:52:46', null);
INSERT INTO `inscripcion` VALUES ('35', '14', '2', '2019-07-17 01:52:46', null);
INSERT INTO `inscripcion` VALUES ('36', '15', '4', '2019-07-23 21:17:16', null);
INSERT INTO `inscripcion` VALUES ('37', '15', '3', '2019-07-23 21:17:16', null);
INSERT INTO `inscripcion` VALUES ('38', '15', '2', '2019-07-23 21:17:16', null);
INSERT INTO `inscripcion` VALUES ('39', '7', '12', '2019-07-30 17:07:07', null);
INSERT INTO `inscripcion` VALUES ('40', '18', '3', '2019-08-05 20:11:31', null);
INSERT INTO `inscripcion` VALUES ('41', '18', '1', '2019-08-05 20:11:31', null);
INSERT INTO `inscripcion` VALUES ('42', '18', '2', '2019-08-05 20:11:32', null);
INSERT INTO `inscripcion` VALUES ('43', '21', '3', '2019-08-17 21:24:21', null);
INSERT INTO `inscripcion` VALUES ('44', '21', '11', '2019-08-17 21:24:21', null);
INSERT INTO `inscripcion` VALUES ('45', '23', '2', '2019-10-18 21:12:02', null);
INSERT INTO `inscripcion` VALUES ('46', '23', '10', '2019-10-18 21:12:02', null);
INSERT INTO `inscripcion` VALUES ('47', '23', '3', '2019-10-18 21:12:02', null);
INSERT INTO `inscripcion` VALUES ('48', '23', '11', '2019-10-18 21:12:02', null);
INSERT INTO `inscripcion` VALUES ('49', '23', '1', '2019-10-18 21:12:02', null);
INSERT INTO `inscripcion` VALUES ('50', '23', '4', '2019-10-18 21:12:02', null);
INSERT INTO `inscripcion` VALUES ('51', '25', '1', '2019-10-26 06:26:12', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  KEY `IX_idSocio` (`idSocio`) USING BTREE,
  KEY `IX_idMatricula` (`idMatricula`) USING BTREE,
  CONSTRAINT `FK_MatriculaXSocios_Matricula_idMatricula` FOREIGN KEY (`idMatricula`) REFERENCES `matricula` (`id`),
  CONSTRAINT `FK_MatriculaXSocios_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matriculaxsocios
-- ----------------------------
INSERT INTO `matriculaxsocios` VALUES ('5', '1', '3', '2019-09-23 00:09:57', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('6', '4', '3', '2019-09-23 00:21:41', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('7', '10', '3', '2019-09-23 00:21:46', '1200.00');
INSERT INTO `matriculaxsocios` VALUES ('8', '2', '3', '2019-10-26 07:14:31', '1200.00');

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
  KEY `IX_idInscripcion` (`idInscripcion`) USING BTREE,
  KEY `IX_idCuota` (`idCuota`) USING BTREE,
  CONSTRAINT `FK_Pago_Cuotas_idCuota` FOREIGN KEY (`idCuota`) REFERENCES `cuotas` (`id`),
  CONSTRAINT `FK_Pago_Inscripcion_idInscripcion` FOREIGN KEY (`idInscripcion`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pago
-- ----------------------------

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
  KEY `IX_idEvento` (`idEvento`) USING BTREE,
  KEY `IX_idSocio` (`idSocio`) USING BTREE,
  CONSTRAINT `FK_RatingEvento_Evento_idEvento` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`id`),
  CONSTRAINT `FK_RatingEvento_Socio_idSocio` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ratingevento
-- ----------------------------
INSERT INTO `ratingevento` VALUES ('1', '4', '2', '3', 'Muy bueno', '4', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recordatorios
-- ----------------------------
INSERT INTO `recordatorios` VALUES ('1', 'Sacar la basura', 'Sacar la basura del patio', '2019-07-30 05:28:45');
INSERT INTO `recordatorios` VALUES ('2', 'Dejar papeles al contador', 'Dejar papeles afip al contador', '2019-07-30 05:29:11');
INSERT INTO `recordatorios` VALUES ('3', 'Avisar profesora computacion ', 'Llegada de nuevos mouses', '2019-08-01 00:00:00');
INSERT INTO `recordatorios` VALUES ('4', 'Contadora', 'dasdas', '2019-08-05 22:53:29');
INSERT INTO `recordatorios` VALUES ('5', 'Sacar el perro', 'asdasd', '2019-08-07 00:00:00');
INSERT INTO `recordatorios` VALUES ('6', 'recordando Lu', 'Es para prueba', '2019-10-26 14:28:25');

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
  KEY `IX_idTipoDoc` (`idTipoDoc`) USING BTREE,
  CONSTRAINT `FK_Secretario_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  KEY `IX_idTipoDoc` (`idTipoDoc`) USING BTREE,
  KEY `IX_idDomicilio` (`idDomicilio`) USING BTREE,
  KEY `IX_idContacto` (`idContacto`) USING BTREE,
  CONSTRAINT `FK_Socio_Contacto_idContacto` FOREIGN KEY (`idContacto`) REFERENCES `contacto` (`id`),
  CONSTRAINT `FK_Socio_Domicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_Socio_TipoDocumento_idTipoDoc` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of socio
-- ----------------------------
INSERT INTO `socio` VALUES ('1', 'Jose', 'Quinteros', '3543604130', null, 'juanjose@gmail.com', null, null, '1', '32972080', '1', '1', null, '1888-12-31 02:55:29', null, 'Activo');
INSERT INTO `socio` VALUES ('2', 'Augusto', 'galan', '3543604130', null, 'juanjose@gmail.com', null, null, '1', '32972081', '1', '1', null, '2019-10-18 21:11:12', null, 'Activo');
INSERT INTO `socio` VALUES ('3', 'Laura', 'Miguez', '3543604130', null, 'laura1Miguez@gmail.com', 'Femenino', 'Soltero', '1', '30992080', '1', '1', null, '2019-10-18 21:11:12', null, 'DebeMatricula');
INSERT INTO `socio` VALUES ('4', 'Maria', 'Del Valle', '3543604132', null, 'mariadelvalle@gmail.com', 'Femenino', 'Casado', '1', '40000001', '1', '1', null, '2019-10-18 21:11:12', null, 'Activo');
INSERT INTO `socio` VALUES ('10', 'Jorge', 'galan', '3543604130', null, 'juanjose@gmail.com', 'Masculino', 'Casado', '1', '40000002', '1', '1', '2019-07-03 01:12:28', '2019-10-18 21:11:12', null, 'Activo');
INSERT INTO `socio` VALUES ('11', 'Soledad', 'Miguez', '3543604130', null, 'laura1Miguez@gmail.com', 'Femenino', 'Soltero', '1', '40000003', '1', '1', '2019-07-03 01:12:28', '2019-10-18 21:11:12', null, 'DebeMatricula');
INSERT INTO `socio` VALUES ('12', 'Angelica', 'Valles', '3543604132', null, 'mariadelvalle@gmail.com', 'Femenino', 'Soltero', '1', '40000004', '1', '1', '2019-07-03 01:12:28', '2019-10-18 21:11:12', null, 'DebeMatricula');
INSERT INTO `socio` VALUES ('13', 'Federico', 'Caseres', '3252451257', '3252451257', 'fcaceres@gmail.com', 'Masculino', 'Soltero', '1', '45231544', '3', '2', null, '2019-10-24 05:41:07', null, 'DebeMatricula');
INSERT INTO `socio` VALUES ('14', 'Jose Luis', 'Tarabela', '', null, 'joseluis_tara@hotmail.com', 'Masculino', 'Soltero', '1', '565423224', '4', '3', null, '2019-10-24 07:46:55', null, 'DebeMatricula');

-- ----------------------------
-- Table structure for sociotags
-- ----------------------------
DROP TABLE IF EXISTS `sociotags`;
CREATE TABLE `sociotags` (
  `Socio_id` int(11) NOT NULL,
  `Tag_id` int(11) NOT NULL,
  PRIMARY KEY (`Socio_id`,`Tag_id`),
  KEY `IX_Socio_id` (`Socio_id`) USING BTREE,
  KEY `IX_Tag_id` (`Tag_id`) USING BTREE,
  CONSTRAINT `FK_SocioTags_Socio_Socio_id` FOREIGN KEY (`Socio_id`) REFERENCES `socio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SocioTags_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sociotags
-- ----------------------------
INSERT INTO `sociotags` VALUES ('1', '6');
INSERT INTO `sociotags` VALUES ('2', '1');
INSERT INTO `sociotags` VALUES ('2', '2');
INSERT INTO `sociotags` VALUES ('11', '1');
INSERT INTO `sociotags` VALUES ('12', '7');
INSERT INTO `sociotags` VALUES ('13', '4');
INSERT INTO `sociotags` VALUES ('13', '5');
INSERT INTO `sociotags` VALUES ('14', '4');

-- ----------------------------
-- Table structure for tagespaciocomuns
-- ----------------------------
DROP TABLE IF EXISTS `tagespaciocomuns`;
CREATE TABLE `tagespaciocomuns` (
  `Tag_id` int(11) NOT NULL,
  `EspacioComun_id` int(11) NOT NULL,
  PRIMARY KEY (`Tag_id`,`EspacioComun_id`),
  KEY `IX_Tag_id` (`Tag_id`) USING BTREE,
  KEY `IX_EspacioComun_id` (`EspacioComun_id`) USING BTREE,
  CONSTRAINT `FK_TagEspacioComuns_EspacioComun_EspacioComun_id` FOREIGN KEY (`EspacioComun_id`) REFERENCES `espaciocomun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TagEspacioComuns_Tags_Tag_id` FOREIGN KEY (`Tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tagespaciocomuns
-- ----------------------------
INSERT INTO `tagespaciocomuns` VALUES ('1', '2');
INSERT INTO `tagespaciocomuns` VALUES ('1', '4');
INSERT INTO `tagespaciocomuns` VALUES ('1', '5');
INSERT INTO `tagespaciocomuns` VALUES ('2', '2');
INSERT INTO `tagespaciocomuns` VALUES ('2', '4');
INSERT INTO `tagespaciocomuns` VALUES ('2', '5');
INSERT INTO `tagespaciocomuns` VALUES ('2', '6');
INSERT INTO `tagespaciocomuns` VALUES ('3', '3');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'Sum');
INSERT INTO `tags` VALUES ('2', 'aire libre');
INSERT INTO `tags` VALUES ('3', 'Laboratorio');
INSERT INTO `tags` VALUES ('4', 'Arte');
INSERT INTO `tags` VALUES ('5', 'Dibujo');
INSERT INTO `tags` VALUES ('6', 'Computación');
INSERT INTO `tags` VALUES ('7', 'Yoga');

-- ----------------------------
-- Table structure for tipodocumento
-- ----------------------------
DROP TABLE IF EXISTS `tipodocumento`;
CREATE TABLE `tipodocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipoespacio
-- ----------------------------
INSERT INTO `tipoespacio` VALUES ('1', 'Aula');
INSERT INTO `tipoespacio` VALUES ('2', 'SUM');
INSERT INTO `tipoespacio` VALUES ('3', 'Patio');
INSERT INTO `tipoespacio` VALUES ('4', 'Abierto');
INSERT INTO `tipoespacio` VALUES ('5', 'Cerrado');
INSERT INTO `tipoespacio` VALUES ('6', 'Galería');

-- ----------------------------
-- Table structure for tipoevento
-- ----------------------------
DROP TABLE IF EXISTS `tipoevento`;
CREATE TABLE `tipoevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext,
  `descripcion` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipoevento
-- ----------------------------
INSERT INTO `tipoevento` VALUES ('1', 'Curso', '---');
INSERT INTO `tipoevento` VALUES ('2', 'Taller', '---');
INSERT INTO `tipoevento` VALUES ('3', 'Conferencia', '---');
INSERT INTO `tipoevento` VALUES ('4', 'Campaña social', '---');
INSERT INTO `tipoevento` VALUES ('5', 'Festival', '---');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'Augusto', 'admin', '123456', 'assets/img/profile/users/augusto.png', 'ADMIN', 'admin@admin.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', 'e669f5398f10448f9152f532173754fa', '1', '2');
INSERT INTO `usuario` VALUES ('2', 'Laura', 'secre', '123456', 'assets/img/profile/users/augusto.png', 'SECRETARIO', 'secretario@secretario.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', 'fb536cce05054a06b393a54dbd124c87', null, '2');
INSERT INTO `usuario` VALUES ('3', 'Javier', 'socio', '123456', 'assets/img/profile/users/augusto.png', 'SOCIO', 'socio@socio.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '53e6ff44ad0045848f672978f108d0a0', null, '2');
INSERT INTO `usuario` VALUES ('4', 'Jose', 'encargado', '123456', 'assets/img/profile/users/augusto.png', 'ENCARGADO', 'encargado@encargado.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', 'fa86fc98e83a4c7c9ac2ab8649a35141', '1', '2');
INSERT INTO `usuario` VALUES ('5', 'DASH', 'dash', '123456', 'assets/img/profile/users/augusto.png', 'DASH', 'socio@socio.com', '0001-01-01 00:00:00', '0001-01-01 00:00:00', '71193aa3c6054719861cc71bc2c90395', '1', '2');

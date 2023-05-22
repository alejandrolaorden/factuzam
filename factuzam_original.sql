/*
 Navicat Premium Data Transfer

 Source Server         : localhost_mariadb
 Source Server Type    : MariaDB
 Source Server Version : 101002
 Source Host           : localhost:3306
 Source Schema         : factuzam

 Target Server Type    : MariaDB
 Target Server Version : 101002
 File Encoding         : 65001

 Date: 22/05/2023 14:52:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fza_articulos
-- ----------------------------
DROP TABLE IF EXISTS `fza_articulos`;
CREATE TABLE `fza_articulos`  (
  `CODIGO_ARTICULO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `ACTIVO_ARTICULO` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `ORDEN_ARTICULO` int(11) NULL DEFAULT NULL,
  `DESCRIPCION_ARTICULO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CODIGO_FAMILIA_ARTICULO` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TIPOIVA_ARTICULO` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ESACTIVO_FIJO_ARTICULO` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `TIPO_CANTIDAD_ARTICULO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'Uds',
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_ARTICULO`) USING BTREE,
  INDEX `CODIGO`(`CODIGO_ARTICULO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_articulos
-- ----------------------------
INSERT INTO `fza_articulos` VALUES ('ALFALFA', 'S', 1, 'Alfalfa', 'CER', 'N', 'N', 'Kgs', '2023-04-18 12:31:52', '2022-11-02 16:09:51', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos` VALUES ('CALABAZAS', 'S', 4, 'Calabazas', 'HUE', 'N', 'N', 'Kgs', '2023-04-18 12:31:55', '2022-11-02 16:10:47', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos` VALUES ('CEBADA', NULL, 3, 'CEBADA', 'CER', 'N', 'N', 'Uds', '2023-04-18 12:31:53', '2023-03-16 16:20:24', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos` VALUES ('MAIZ', 'S', 5, 'Maiz', 'CER', 'N', 'N', 'Kgs', '2023-04-18 12:32:00', '2022-11-02 16:07:27', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos` VALUES ('PATATAS', 'S', 6, 'Patatas', 'HUE', 'N', 'N', 'Kgs', '2023-04-18 12:32:02', '2022-11-02 16:10:18', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos` VALUES ('TRIGO', 'S', 2, 'Trigo', 'CER', 'N', 'N', 'Kgs', '2023-04-18 12:31:57', '2022-11-02 16:07:57', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_articulos_familias
-- ----------------------------
DROP TABLE IF EXISTS `fza_articulos_familias`;
CREATE TABLE `fza_articulos_familias`  (
  `CODIGO_FAMILIA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ACTIVO_FAMILIA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `ORDEN_FAMILIA` int(11) NULL DEFAULT NULL,
  `NOMBRE_FAMILIA` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DESCRIPCION_FAMILIA` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_articulos_familias
-- ----------------------------
INSERT INTO `fza_articulos_familias` VALUES ('CER', 'S', 1, 'CEREALES', 'Cereales como trigo, cebada, avena....', '2022-11-02 16:02:56', '2022-11-02 16:02:48', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos_familias` VALUES ('HUE', 'S', 2, 'HUERTA', 'Productos de la huerta como tomates, lechugas, espinacas....', '2022-11-02 16:03:46', '2022-11-02 16:03:39', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos_familias` VALUES ('APE', 'S', 3, 'APEROS', 'Aperos de labranza como empacadora, arados, susoladora', '2022-11-02 16:05:05', '2022-11-02 16:04:57', 'Adminstrador', 'Administrador');
INSERT INTO `fza_articulos_familias` VALUES ('MAQ', 'S', 4, 'MAQUINARIA', 'Maquinaria pesada para el cultivo como tractor, remolque', '2022-11-02 16:05:40', '2022-11-02 16:05:34', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos_familias` VALUES ('ANI', 'S', 5, 'ANIMALES', 'Animales de granja como gallinas, conejos, cerdos', '2022-11-02 16:06:06', '2022-11-02 16:05:59', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos_familias` VALUES ('OTR', 'S', 6, 'OTROS', 'Otros articulos agrícolas', '2022-11-02 16:06:36', '2022-11-02 16:06:31', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_articulos_proveedores
-- ----------------------------
DROP TABLE IF EXISTS `fza_articulos_proveedores`;
CREATE TABLE `fza_articulos_proveedores`  (
  `CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `CODIGO_ARTICULO_ARTICULO_PROVEEDOR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `PRECIO_ULT_COMPRA_ARTICULO_PROVEEDOR` decimal(19, 6) NULL DEFAULT NULL,
  `FECHA_VALIDEZ_ARTICULO_PROVEEDOR` datetime(0) NULL DEFAULT NULL,
  `ESPROVEEDORPRINCIPAL_ARTICULO_PROVEEDOR` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR`, `CODIGO_ARTICULO_ARTICULO_PROVEEDOR`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_articulos_proveedores
-- ----------------------------
INSERT INTO `fza_articulos_proveedores` VALUES ('10', 'CEBADA', 0.080000, '2023-03-16 00:00:00', NULL, '2023-03-16 15:34:56', '2023-03-16 15:34:56', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos_proveedores` VALUES ('11', 'ALFALFA', NULL, NULL, NULL, '2023-03-04 13:40:00', '2023-03-04 13:40:00', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos_proveedores` VALUES ('17', 'ALFALFA', NULL, NULL, NULL, '2023-03-03 14:30:45', '2023-03-03 14:30:45', 'Administrador', 'Administrador');
INSERT INTO `fza_articulos_proveedores` VALUES ('20', 'ALFALFA', 0.100000, '2023-03-02 00:00:00', 'S', '2023-03-04 18:14:28', '2023-03-03 14:02:47', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_articulos_tarifas
-- ----------------------------
DROP TABLE IF EXISTS `fza_articulos_tarifas`;
CREATE TABLE `fza_articulos_tarifas`  (
  `CODIGO_ARTICULO_TARIFA` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `CODIGO_VARIACION_TARIFA` int(11) NULL DEFAULT NULL,
  `CODIGO_UNICO_TARIFA` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO_TARIFA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ACTIVO_TARIFA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `PRECIOSALIDA_TARIFA` decimal(18, 6) NULL DEFAULT NULL,
  `PRECIOFINAL_TARIFA` decimal(18, 6) NULL DEFAULT 0,
  `PRECIO_DTO_TARIFA` decimal(18, 6) NULL DEFAULT NULL,
  `PORCEN_DTO_TARIFA` decimal(18, 6) NULL DEFAULT NULL,
  `FECHA_DESDE_TARIFA` date NULL DEFAULT NULL,
  `FECHA_HASTA_TARIFA` date NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_UNICO_TARIFA`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_articulos_tarifas
-- ----------------------------
INSERT INTO `fza_articulos_tarifas` VALUES ('ALFALFA', NULL, 1, '0', 'S', NULL, 0.200000, 22.000000, NULL, '2023-03-04', '2023-03-16', '2023-03-04 18:06:12', '2023-03-04 18:06:09', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_clientes
-- ----------------------------
DROP TABLE IF EXISTS `fza_clientes`;
CREATE TABLE `fza_clientes`  (
  `CODIGO_CLIENTE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `ACTIVO_CLIENTE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `ORDEN_CLIENTE` int(11) NULL DEFAULT NULL,
  `RAZONSOCIAL_CLIENTE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `NIF_CLIENTE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `MOVIL_CLIENTE` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `EMAIL_CLIENTE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION1_CLIENTE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION2_CLIENTE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `POBLACION_CLIENTE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PROVINCIA_CLIENTE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CPOSTAL_CLIENTE` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PAIS_CLIENTE` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `OBSERVACIONES_CLIENTE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `REFERENCIA_CLIENTE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CONTACTO_CLIENTE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TELEFONO_CONTACTO_CLIENTE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TELEFONO_CLIENTE` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `IBAN_CLIENTE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ESIVA_RECARGO_CLIENTE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `ESRETENCIONES_CLIENTE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `ESIVA_EXENTO_CLIENTE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `ESINTRACOMUNITARIO_CLIENTE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `ESREGIMENESPECIALAGRICOLA_CLIENTE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `CODIGO_FORMA_PAGO_CLIENTE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TARIFA_ARTICULO_CLIENTE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `SERIE_CONTADOR_CLIENTE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TEXTO_LEGAL_FACTURA_CLIENTE` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_CLIENTE`) USING BTREE,
  INDEX `IDX_CLIENTES_EMAIL`(`EMAIL_CLIENTE`) USING BTREE,
  INDEX `IDX_RAZONSOCIAL_CLIENTE`(`RAZONSOCIAL_CLIENTE`) USING BTREE,
  INDEX `IDX_NIF_CLIENTE`(`EMAIL_CLIENTE`) USING BTREE,
  INDEX `IDX_POBLACION_CLIENTE`(`NIF_CLIENTE`) USING BTREE,
  INDEX `IDX_REFERENCIA_CLIENTE`(`REFERENCIA_CLIENTE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_clientes
-- ----------------------------
INSERT INTO `fza_clientes` VALUES ('293', 'S', 5, 'PEDRO COJOS', '46589963j', NULL, 'pedro.cojos@gmail.com', 'CALLE CAIDOS ', NULL, 'VILLAVEZA DEL AGUA', 'ZAMORA', '49760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 'S', '60DIAS', '1', NULL, NULL, '2023-05-22 13:16:07', '2023-05-22 13:01:22', 'Administrador', 'Administrador');
INSERT INTO `fza_clientes` VALUES ('PUBLICO', 'S', 2, 'PUBLICO', 'NIF', 'TFNO', 'EMAIL', 'DIRECCION', NULL, 'POBLACION', 'PROVINCIA', 'CODPOSTAL', 'España', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'S', 'N', 'N', 'CONTADO', '0', NULL, NULL, '2023-05-15 12:54:52', '2022-11-02 20:28:28', 'Administrador', 'Administrador');
INSERT INTO `fza_clientes` VALUES ('TIENDA', 'S', 1, 'TIENDA', 'NIF', '658963325', 'EMAIL', 'DIRECCION', NULL, 'POBLACION', 'PROVINCIA', 'CODPOSTAL', 'España', '', NULL, NULL, NULL, NULL, NULL, 'N', 'S', 'N', 'N', 'N', 'CONTADO', '1', 'ATIE', '', '2023-05-22 13:53:34', '2022-11-02 16:13:41', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_contadores
-- ----------------------------
DROP TABLE IF EXISTS `fza_contadores`;
CREATE TABLE `fza_contadores`  (
  `TIPODOC_CONTADOR` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `SERIE_CONTADOR` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `CONTADOR_CONTADOR` bigint(20) NOT NULL,
  `DEFAULT_CONTADOR` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `NUMDIGIT_CONTADOR` int(11) NOT NULL DEFAULT 0,
  `ACTIVO_CONTADOR` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'S',
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`TIPODOC_CONTADOR`, `SERIE_CONTADOR`, `ACTIVO_CONTADOR`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_contadores
-- ----------------------------
INSERT INTO `fza_contadores` VALUES ('CL', '-', 294, 'S', 3, 'S', '2023-05-22 13:01:22', '0000-00-00 00:00:00', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('CO', '-', 6, 'S', 3, 'S', '2023-05-22 13:01:22', '2023-05-15 12:54:31', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('EM', '-', 10, 'S', 3, 'S', '2023-05-20 12:39:14', '0000-00-00 00:00:00', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('EO', '-', 4, 'S', 3, 'S', '2023-05-22 12:49:39', '2023-05-19 15:02:02', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('ES', '-', 4, 'S', 3, 'S', '2023-05-13 12:44:21', '2023-05-13 12:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('FC', 'A1', 25, 'S', 8, 'S', '2023-05-15 14:30:15', '2022-09-13 15:47:45', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('FC', 'A3', 0, 'N', 8, 'S', '2023-05-12 12:24:33', '2023-05-12 12:24:25', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('FC', 'ATIE', 2, 'N', 6, 'S', '2023-05-17 14:12:45', '2023-05-17 14:12:45', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('GP', '-', 7, 'S', 3, 'S', '2023-05-13 13:47:20', '2023-04-27 12:30:24', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('IG', '-', 3, 'S', 3, 'S', '2023-01-19 10:46:35', '2023-01-19 10:41:29', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('IV', '-', 17, 'S', 3, 'S', '2023-04-24 13:45:24', '2021-06-10 20:11:25', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('PV', '-', 25, 'S', 3, 'S', '2023-01-19 10:47:01', '2021-06-10 18:47:22', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('RE', '-', 12, 'S', 3, 'S', '2023-02-01 09:53:15', '2023-01-29 08:33:28', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('XX', '-', 1, 'S', 1, 'S', '2023-01-19 10:51:28', '2023-01-19 10:51:28', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('XY', '-', 4, 'S', 1, 'S', '2023-01-19 10:52:01', '2023-01-19 10:51:44', 'Administrador', 'Administrador');
INSERT INTO `fza_contadores` VALUES ('ZZ', '-', 2, 'S', 3, 'S', '2023-01-19 10:52:21', '2023-01-19 10:52:21', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_empresas
-- ----------------------------
DROP TABLE IF EXISTS `fza_empresas`;
CREATE TABLE `fza_empresas`  (
  `CODIGO_EMPRESA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `ORDEN_EMPRESA` int(11) NULL DEFAULT NULL,
  `ACTIVO_EMPRESA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `RAZONSOCIAL_EMPRESA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `NIF_EMPRESA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `MOVIL_EMPRESA` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `EMAIL_EMPRESA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION1_EMPRESA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION2_EMPRESA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CPOSTAL_EMPRESA` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `POBLACION_EMPRESA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PROVINCIA_EMPRESA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PAIS_EMPRESA` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `GRUPO_ZONA_IVA_EMPRESA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ESRETENCIONES_EMPRESA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `ESREGIMENESPECIALAGRICOLA_EMPRESA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `SERIE_CONTADOR_EMPRESA` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TEXTO_LEGAL_FACTURA_EMPRESA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_EMPRESA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_empresas
-- ----------------------------
INSERT INTO `fza_empresas` VALUES ('007', 3, 'S', 'AGENTE SECRETO', NULL, '658965235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'S', 'N', NULL, NULL, '2023-01-30 10:38:22', '2023-01-30 10:34:23', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas` VALUES ('008', 1, 'S', 'ANA MARTIN', '45684135Q', '66533256', 'ana@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '1', 'S', 'N', NULL, NULL, '2023-05-19 15:02:02', '2023-05-19 15:02:02', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas` VALUES ('009', 2, 'S', 'PEPITO GRILLO', NULL, '66999669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'S', 'N', NULL, NULL, '2023-05-20 12:39:14', '2023-05-20 12:39:14', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas` VALUES ('1', 1, 'S', 'AGRICULTOR', 'NIF', 'TFNO', 'EMAIL', 'DIRECCION', NULL, 'CODPOSTAL', 'POBLACION', 'PROVINCIA', NULL, '1', 'S', 'S', NULL, 'Empresario emisor acogido al régimen especial de agricultura ganadería y pesca', '2022-11-02 20:32:00', '2021-05-14 20:07:06', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_empresas_retenciones
-- ----------------------------
DROP TABLE IF EXISTS `fza_empresas_retenciones`;
CREATE TABLE `fza_empresas_retenciones`  (
  `CODIGO_RETENCION` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `CODIGO_EMPRESA_RETENCION` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `PORCENRETENCION_RETENCION` decimal(18, 6) NULL DEFAULT NULL,
  `FECHA_DESDE_RETENCION` date NULL DEFAULT NULL,
  `FECHA_HASTA_RETENCION` date NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_RETENCION`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_empresas_retenciones
-- ----------------------------
INSERT INTO `fza_empresas_retenciones` VALUES ('10', '1', 25.000000, '1999-01-01', NULL, '2023-01-29 10:31:19', '2023-01-29 10:31:19', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas_retenciones` VALUES ('11', '007', 18.000000, '2022-12-01', NULL, '2023-02-01 09:53:16', '2023-02-01 09:53:16', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas_retenciones` VALUES ('2', '1', 2.000000, '1988-01-01', '1998-12-31', '2022-10-17 16:19:29', '2021-05-14 19:57:40', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas_retenciones` VALUES ('3', '003', 25.000000, '1999-01-01', '2099-12-31', '2023-01-29 08:40:45', '2023-01-29 08:40:45', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas_retenciones` VALUES ('4', '0', 22.000000, NULL, NULL, '2023-01-29 10:20:56', '2023-01-29 10:20:56', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas_retenciones` VALUES ('5', '005', 25.000000, '1999-01-01', NULL, '2023-01-29 10:21:18', '2023-01-29 10:21:18', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas_retenciones` VALUES ('6', '0', 25.000000, '1999-01-01', NULL, '2023-01-29 10:21:58', '2023-01-29 10:21:58', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas_retenciones` VALUES ('8', '006', 2.000000, '1988-01-01', '1998-12-31', '2023-01-29 10:28:36', '2023-01-29 10:28:36', 'Administrador', 'Administrador');
INSERT INTO `fza_empresas_retenciones` VALUES ('9', '006', 25.000000, '1999-01-01', NULL, '2023-01-29 10:30:54', '2023-01-29 10:30:54', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_empresas_series
-- ----------------------------
DROP TABLE IF EXISTS `fza_empresas_series`;
CREATE TABLE `fza_empresas_series`  (
  `CODIGO_SERIE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `CODIGO_EMPRESA_SERIE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `SERIE_SERIE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `FECHA_DESDE_SERIE` date NULL DEFAULT NULL,
  `FECHA_HASTA_SERIE` date NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_SERIE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_empresas_series
-- ----------------------------
INSERT INTO `fza_empresas_series` VALUES ('003', '007', 'A7/2023', '2023-05-01', '2023-05-31', '2023-05-15 12:36:23', '2023-05-13 12:44:21', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_facturas
-- ----------------------------
DROP TABLE IF EXISTS `fza_facturas`;
CREATE TABLE `fza_facturas`  (
  `NRO_FACTURA` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `SERIE_FACTURA` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `FECHA_FACTURA` date NULL DEFAULT NULL,
  `CODIGO_EMPRESA_FACTURA` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `RAZONSOCIAL_EMPRESA_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `NIF_EMPRESA_FACTURA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `MOVIL_EMPRESA_FACTURA` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `EMAIL_EMPRESA_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION1_EMPRESA_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION2_EMPRESA_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `POBLACION_EMPRESA_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PROVINCIA_EMPRESA_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PAIS_EMPRESA_FACTURA` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CPOSTAL_EMPRESA_FACTURA` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ESRETENCIONES_EMPRESA_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S' COMMENT 'S o N si la empresa aplica retenciones como autónomos',
  `GRUPO_ZONA_IVA_EMPRESA_FACTURA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `CODIGO_CLIENTE_FACTURA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `RAZONSOCIAL_CLIENTE_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `NIF_CLIENTE_FACTURA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `MOVIL_CLIENTE_FACTURA` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `EMAIL_CLIENTE_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION1_CLIENTE_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION2_CLIENTE_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `POBLACION_CLIENTE_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PROVINCIA_CLIENTE_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CPOSTAL_CLIENTE_FACTURA` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PAIS_CLIENTE_FACTURA` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ESIVA_RECARGO_CLIENTE_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `ESIVA_EXENTO_CLIENTE_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `ESRETENCIONES_CLIENTE_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S' COMMENT 'S o N Si el cliente aplica retenciones',
  `TARIFA_ARTICULO_CLIENTE_FACTURA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL COMMENT 'Código de la tarifa que viene del cliente o configurada por el usuario',
  `ESIMP_INCL_TARIFA_CLIENTE_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S' COMMENT 'Si el precio de la tarifa del cliente es con impuestos incl o no',
  `ESINTRACOMUNITARIO_CLIENTE_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N' COMMENT 'Si la venta es hacia un país de la UE',
  `ESIRPF_IMP_INCL_ZONA_IVA_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N' COMMENT 'Si la base del cáculo del irpf se hace desde BI o BI con impuestos',
  `ESAPLICA_RE_ZONA_IVA_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S' COMMENT 'Si el tipo de IVA aplica Recargo de Equivalencia o no',
  `ESIVAAGRICOLA_ZONA_IVA_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N' COMMENT 'Si el tipo de IVA es compatible con REAGP',
  `PALABRA_REPORTS_ZONA_IVA_FACTURA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'IVA' COMMENT 'Palabra que sustituye a IVA desde la tabla de fza_ivas_grupos',
  `CODIGO_IVA_FACTURA` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL COMMENT 'Código de IVA de la tabla fza_ivas',
  `ESVENTA_ACTIVO_FIJO_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N' COMMENT 'Sólo REAGP cuando se vende activos fijos, exime irpf',
  `PORCEN_IVAN_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Porcentaje IVA Normal',
  `TOTAL_IVAN_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total IVA Normal',
  `PORCEN_REN_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Porcentaje RE Normal',
  `TOTAL_REN_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Total RE Normal',
  `TOTAL_BASEI_IVAN_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total Base Imponible IVA Normal',
  `PORCEN_IVAR_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Porcentaje IVA Reducido',
  `TOTAL_IVAR_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'TotaL IVA Reducido',
  `PORCEN_RER_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Porcentaje RE Reducido',
  `TOTAL_RER_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Total RE Reducido',
  `TOTAL_BASEI_IVAR_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total Base Imponible IVA Reducido',
  `PORCEN_IVAS_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Porcentaje IVA SuperReducido',
  `TOTAL_IVAS_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total IVA SuperReducido',
  `PORCEN_RES_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Porcentaje IVA SuperReducido',
  `TOTAL_RES_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Total RE SuperReducido',
  `TOTAL_BASEI_IVAS_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total sin IVA SuperReducido',
  `PORCEN_IVAE_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Porcentaje IVA Exento',
  `TOTAL_IVAE_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total IVA Exento',
  `PORCEN_REE_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Porcentaje IVA1 Exento',
  `TOTAL_REE_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Total RE Exento',
  `TOTAL_BASEI_IVAE_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total sin IVA Exento',
  `TOTAL_BASES_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total Todas las bases imponibles',
  `TOTAL_IMPUESTOS_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total de todos los impuestos iva + re',
  `FORMA_PAGO_FACTURA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL COMMENT 'Codigo Forma de Pago',
  `PORCEN_RETENCION_FACTURA` decimal(19, 6) NULL DEFAULT NULL COMMENT 'Porcentaje Retenciones',
  `TOTAL_RETENCION_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total Retenciones Factura',
  `TOTAL_LIQUIDO_FACTURA` decimal(18, 6) NULL DEFAULT NULL COMMENT 'Total Factura a pagar',
  `NRO_FACTURA_ABONO_FACTURA` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL COMMENT 'Nro Factura Abono',
  `SERIE_FACTURA_ABONO_FACTURA` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL COMMENT 'Serie Factura Abono',
  `TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT '',
  `TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT '',
  `DOCUMENTO_FACTURA` blob NULL DEFAULT NULL COMMENT 'Copia en PDF del documento final',
  `COMENTARIOS_FACTURA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT '',
  `CONTADOR_LINEAS_FACTURA` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL COMMENT 'Contador de lineas para lineas de factura',
  `ESCREARARTICULOS_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL COMMENT 'S o N si se crean articulos desde el detalle',
  `ESDESCRIPCIONES_AMP_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S' COMMENT 'S o N si la factura contiene una descripción larga',
  `ESFECHADEENTREGA_FACTURA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL COMMENT 'S o N si las descripciones tienen fecha de entrega',
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`SERIE_FACTURA`, `NRO_FACTURA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_facturas
-- ----------------------------
INSERT INTO `fza_facturas` VALUES ('00000021', 'A1', '2023-05-12', '1', 'AGRICULTOR', 'NIF', 'TFNO', 'EMAIL', 'DIRECCION', '', 'POBLACION', 'PROVINCIA', '', 'CODPOSTAL', 'S', '2', 'S', 'PUBLICO', 'PUBLICO', 'NIF', 'TFNO', 'EMAIL', 'DIRECCION', '', 'POBLACION', 'PROVINCIA', 'CODPOSTAL', 'España', 'N', 'S', 'N', 'N', '0', 'S', 'N', 'S', 'N', 'S', 'REAGP', '14', 'N', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 71.000000, 71.000000, 0.000000, 'CONTADO', 0.000000, 0.000000, 71.000000, NULL, NULL, '', 'Empresario emisor acogido al régimen especial de agricultura ganadería y pesca', NULL, '', '050', 'N', 'S', 'S', '2023-05-18 13:55:00', '2023-01-25 10:32:24', 'Administrador', 'Administrador');
INSERT INTO `fza_facturas` VALUES ('00000022', 'A1', '2023-01-28', '1', 'AGRICULTOR', 'NIF', 'TFNO', 'EMAIL', 'DIRECCION', '', 'POBLACION', 'PROVINCIA', '', 'CODPOSTAL', 'S', '2', 'S', 'PUBLICO', 'PUBLICO', 'NIF', 'TFNO', 'EMAIL', 'DIRECCION', '', 'POBLACION', 'PROVINCIA', 'CODPOSTAL', 'España', 'N', 'S', 'N', 'N', '0', 'S', 'N', 'S', 'N', 'S', 'REAGP', '2', 'N', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 22.000000, 22.000000, 0.000000, 'CONTADO', 0.000000, 0.000000, 22.000000, NULL, NULL, '', 'Empresario emisor acogido al régimen especial de agricultura ganadería y pesca', NULL, '', '020', 'N', 'N', 'N', '2023-05-12 12:25:06', '2023-01-28 10:24:06', 'Administrador', 'Administrador');
INSERT INTO `fza_facturas` VALUES ('000001', 'ATIE', '2023-04-25', '007', 'AGENTE SECRETO', '', '', '', '', '', '', '', '', '', 'S', '1', 'N', 'TIENDA', 'TIENDA', 'NIF', 'TFNO', 'EMAIL', 'DIRECCION', '', 'POBLACION', 'PROVINCIA', 'CODPOSTAL', 'España', 'N', 'N', 'N', 'S', '1', 'N', 'N', 'N', 'S', 'N', 'IVA', '1', 'N', 21.000000, 0.483000, 5.200000, 0.000000, 2.300000, 10.000000, 0.000000, 1.400000, 0.000000, 0.000000, 4.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.300000, 0.483000, 'CONTADO', 1.000000, 0.023000, 2.760000, NULL, NULL, '', '', NULL, '', '020', 'N', 'N', 'N', '2023-05-19 13:55:20', '2023-05-17 14:12:45', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_facturas_lineas
-- ----------------------------
DROP TABLE IF EXISTS `fza_facturas_lineas`;
CREATE TABLE `fza_facturas_lineas`  (
  `NRO_FACTURA_LINEA` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `SERIE_FACTURA_LINEA` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `LINEA_FACTURA_LINEA` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `CODIGO_ARTICULO_FACTURA_LINEA` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CODIGO_FAMILIA_FACTURA_LINEA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `NOMBRE_FAMILIA_FACTURA_LINEA` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `FECHA_ENTREGA_FACTURA_LINEA` datetime(0) NULL DEFAULT NULL,
  `TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'Uds',
  `ESIMP_INCL_TARIFA_FACTURA_LINEA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `TIPOIVA_ARTICULO_FACTURA_LINEA` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `DESCRIPCION_ARTICULO_FACTURA_LINEA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CODIGO_TARIFA_FACTURA_LINEA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CANTIDAD_FACTURA_LINEA` decimal(19, 6) NULL DEFAULT 1,
  `PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA` decimal(19, 6) NULL DEFAULT 0,
  `PORCEN_IVA_FACTURA_LINEA` decimal(19, 6) NULL DEFAULT 0,
  `PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA` decimal(19, 6) NULL DEFAULT 0,
  `TOTAL_FACTURA_LINEA` decimal(19, 6) NULL DEFAULT 0,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`SERIE_FACTURA_LINEA`, `NRO_FACTURA_LINEA`, `LINEA_FACTURA_LINEA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_facturas_lineas
-- ----------------------------
INSERT INTO `fza_facturas_lineas` VALUES ('00000021', 'A1', '010', 'CEBADA', NULL, NULL, '2023-05-09 14:11:34', 'KGS.', 'S', 'E', 'Cebada bonita para todos los niños que quieran comer\r\ny para todos los papis que quieran ', NULL, 1.000000, 21.000000, 0.000000, 21.000000, 21.000000, '2023-05-13 12:21:28', '2023-01-25 10:34:49', 'Administrador', 'Administrador');
INSERT INTO `fza_facturas_lineas` VALUES ('00000021', 'A1', '040', 'PETARDOS', NULL, NULL, NULL, 'UDS.', NULL, 'E', 'Los que escriben esto\r\nson unos cachondos \r\nde órdago', NULL, 1.000000, 50.000000, 0.000000, 50.000000, 50.000000, '2023-05-18 13:55:00', '2023-05-18 13:55:00', 'Administrador', 'Administrador');
INSERT INTO `fza_facturas_lineas` VALUES ('00000022', 'A1', '010', 'CEBADA', NULL, NULL, '2023-05-12 14:11:39', NULL, 'S', 'E', 'Cebada', NULL, 1.000000, 22.000000, 0.000000, 22.000000, 22.000000, '2023-05-09 14:11:46', '2023-01-28 10:24:06', 'Administrador', 'Administrador');
INSERT INTO `fza_facturas_lineas` VALUES ('00000024', 'A1', '010', 'ALFALFA', NULL, NULL, NULL, 'Kgs', 'S', 'N', 'Alfalfa', NULL, 1.000000, 16.528926, 21.000000, 20.000000, 20.000000, '2023-05-16 14:26:53', '2023-05-15 14:31:53', 'Administrador', 'Administrador');
INSERT INTO `fza_facturas_lineas` VALUES ('000001', 'ATIE', '010', 'CALABAZAS', NULL, NULL, NULL, 'Kgs', 'N', 'N', 'Calabazas para todos', NULL, 1.000000, 2.300000, 21.000000, 2.783000, 2.783000, '2023-05-17 14:28:15', '2023-05-17 14:28:07', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_formapago
-- ----------------------------
DROP TABLE IF EXISTS `fza_formapago`;
CREATE TABLE `fza_formapago`  (
  `CODIGO_FORMAPAGO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `ACTIVO_FORMAPAGO` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ORDEN_FORMAPAGO` int(11) NULL DEFAULT NULL,
  `DESCRIPCION_FORMAPAGO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `N_PLAZOS_FORMAPAGO` int(11) NULL DEFAULT 1,
  `N_DIAS_ENTRE_PLAZOS_FORMAPAGO` int(11) NULL DEFAULT 0,
  `PORCEN_ANTICIPO_FORMAPAGO` int(11) NULL DEFAULT NULL,
  `ESDEFAULT_FORMAPAGO` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_FORMAPAGO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_formapago
-- ----------------------------
INSERT INTO `fza_formapago` VALUES ('30DIAS', 'S', 2, 'PAGO A 30 DIAS', 1, 30, 0, 'N', '2023-04-25 14:51:44', '2022-11-02 16:13:08', 'Administrador', 'Administrador');
INSERT INTO `fza_formapago` VALUES ('60DIAS', 'S', 3, 'PAGO A 60 DIAS', 1, 60, 0, 'N', '2023-04-25 14:51:45', '2022-10-06 17:58:14', 'Administrador', 'Administrador');
INSERT INTO `fza_formapago` VALUES ('CONTADO', 'S', 1, 'PAGO AL CONTADO', 1, 0, 100, 'S', '2023-04-20 14:26:25', '2021-05-14 20:08:58', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_generadorprocesos
-- ----------------------------
DROP TABLE IF EXISTS `fza_generadorprocesos`;
CREATE TABLE `fza_generadorprocesos`  (
  `CODIGO_GENERADORPROCESO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `NOMBRE_GENERADORPROCESO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PROCESO_GENERADORPROCESO` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_GENERADORPROCESO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_generadorprocesos
-- ----------------------------
INSERT INTO `fza_generadorprocesos` VALUES ('001', 'INSERTAR CAMPOS GRID POR MTO', 'INSERT INTO fza_usuarios_perfiles \r\n\r\n  Select        USUARIO_GRUPO_PERFILES,\r\n                \'frmMtoFormasdePago\' AS KEY_PERFILES,\r\n                SUBKEY_PERFILES,\r\n                VALUE_PERFILES,\r\n                VALUE_TEXT_PERFILES,\r\n                TYPE_BLOB_PERFILES,\r\n                VALUE_BLOB_PERFILES,\r\n                INSTANTEMODIF,\r\n                INSTANTEALTA,\r\n                USUARIOMODIF,\r\n                USUARIOALTA\r\n	  from fza_usuarios_perfiles \r\n	 where KEY_PERFILES = \'frmMtoEmpresas\' \r\n	   and (SUBKEY_PERFILES like \'%tvFacturacion%\' or\r\n         SUBKEY_PERFILES like \'%tvLineasFacturacion%\') ', '2023-05-08 13:43:20', '2023-04-27 12:30:24', 'Administrador', 'Administrador');
INSERT INTO `fza_generadorprocesos` VALUES ('002', 'update cosas', 'UPDATE fza_ivas\r\n   SET PORCENEXENTO_RE_IVA = 0', '2023-04-28 21:13:07', '2023-04-28 12:28:56', 'Administrador', 'Administrador');
INSERT INTO `fza_generadorprocesos` VALUES ('003', 'ACTUALIZACION DE CAMPO FZA_IVAS', '           ALTER TABLE FZA_IVAS    MODIFY COLUMN   `GRUPO_ZONA_IVA` varchar(10) NOT NULL;', '2023-04-28 12:46:20', '2023-04-28 12:45:28', 'Administrador', 'Administrador');
INSERT INTO `fza_generadorprocesos` VALUES ('004', 'SELECT FACTURAS', 'SELECT * FROM FZA_USUARIOS_PERFILES\r\nWHERE KEY_PERFILES = \'frmMtoFormasdePago\'', '2023-05-08 13:44:52', '2023-04-29 12:04:43', 'Administrador', 'Administrador');
INSERT INTO `fza_generadorprocesos` VALUES ('005', 'borrado perfiles por mto', 'delete from fza_usuarios_perfiles where key_perfiles = \'frmMtoFormasdePago\'\r\nand subkey_perfiles like \'tvLineasFacturacion%\'', '2023-05-08 13:42:23', '2023-05-08 13:41:02', 'Administrador', 'Administrador');
INSERT INTO `fza_generadorprocesos` VALUES ('006', 'combo facturas', '   \r\nSELECT SERIE_CONTADOR_CLIENTE AS SERIE_CONTADOR \r\n  FROM vi_clientes                              \r\n WHERE SERIE_CONTADOR_CLIENTE IS NOT NULL       \r\n   AND CODIGO_CLIENTE = \'AGRICULTOR\'                \r\n UNION                                          \r\nSELECT SERIE_SERIE AS SERIE_CONTADOR            \r\n  FROM vi_empresas_series                       \r\n WHERE CODIGO_EMPRESA_SERIE = \'007\'          \r\n   AND (FECHA_DESDE_SERIE >= \'12-05-2023\'             \r\n        AND (FECHA_HASTA_SERIE <= \'12-05-2023\'        \r\n             OR FECHA_HASTA_SERIE IS NULL ))    \r\n UNION                                          \r\nSELECT SERIE_CONTADOR_EMPRESA AS SERIE_CONTADOR \r\n  FROM vi_empresas                              \r\n WHERE SERIE_CONTADOR_EMPRESA IS NOT NULL       \r\n   AND  CODIGO_EMPRESA = \'007\'               \r\n UNION                                          \r\n SELECT SERIE_CONTADOR                          \r\n   FROM vi_contadores                           \r\n  WHERE tipodoc_contador = \'FC\'\r\n  ', '2023-05-13 13:53:12', '2023-05-13 13:47:20', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_ivas
-- ----------------------------
DROP TABLE IF EXISTS `fza_ivas`;
CREATE TABLE `fza_ivas`  (
  `CODIGO_IVA` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `GRUPO_ZONA_IVA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `DESCRIPCION_ZONA_IVA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `PORCENEXENTO_IVA` decimal(18, 6) UNSIGNED NOT NULL DEFAULT 0,
  `PORCENEXENTO_RE_IVA` decimal(18, 6) UNSIGNED NOT NULL DEFAULT 0,
  `PORCENNORMAL_IVA` decimal(18, 6) UNSIGNED NOT NULL DEFAULT 0,
  `PORCENNORMAL_RE_IVA` decimal(18, 6) UNSIGNED NOT NULL DEFAULT 0,
  `PORCENREDUCIDO_IVA` decimal(18, 6) UNSIGNED NOT NULL DEFAULT 0,
  `PORCENREDUCIDO_RE_IVA` decimal(18, 6) UNSIGNED NOT NULL DEFAULT 0,
  `PORCENSUPERREDUCIDO_IVA` decimal(18, 6) UNSIGNED NOT NULL DEFAULT 0,
  `PORCENSUPERREDUCIDO_RE_IVA` decimal(18, 6) UNSIGNED NOT NULL DEFAULT 0,
  `FECHA_DESDE_IVA` date NOT NULL,
  `FECHA_HASTA_IVA` date NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_IVA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_ivas
-- ----------------------------
INSERT INTO `fza_ivas` VALUES ('014', '2', 'COMPENSACIÓN AGRARIA 2000', 0.000000, 0.000000, 13.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '2001-01-21', NULL, '2023-05-12 13:58:56', '2023-04-24 13:44:13', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas` VALUES ('1', '1', 'ESPAÑA PENINSULA', 0.000000, 0.000000, 21.000000, 5.200000, 10.000000, 1.400000, 4.000000, 0.000000, '1999-04-28', '2024-12-31', '2023-04-28 12:43:22', '2021-04-28 21:03:03', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas` VALUES ('2', '2', 'COMPENSACIÓN AGRARIA', 0.000000, 0.000000, 12.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '1999-08-01', '2001-01-01', '2023-04-28 12:43:22', '2022-05-27 20:04:13', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas` VALUES ('3', '3', 'IGIC CANARIAS', 0.000000, 0.000000, 5.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '1999-08-01', NULL, '2023-04-28 12:43:22', '2022-05-27 20:05:09', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas` VALUES ('4', '5', 'IPSI CEUTA Y MELILLA', 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '1999-08-01', NULL, '2023-05-12 13:58:57', '2023-01-19 10:27:01', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_ivas_grupos
-- ----------------------------
DROP TABLE IF EXISTS `fza_ivas_grupos`;
CREATE TABLE `fza_ivas_grupos`  (
  `GRUPO_ZONA_IVA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '0',
  `DESCRIPCION_ZONA_IVA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `ESIRPF_IMP_INCL_ZONA_IVA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `ESIVAAGRICOLA_ZONA_IVA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `ESAPLICA_RE_ZONA_IVA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S' COMMENT 'Cuando el grupo de iva no aplica RE en sus documentos',
  `ESDEFAULT_ZONA_IVA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `PALABRA_REPORTS_ZONA_IVA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'IVA',
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`GRUPO_ZONA_IVA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_ivas_grupos
-- ----------------------------
INSERT INTO `fza_ivas_grupos` VALUES ('1', 'ESPAÑA PENINSULA', 'N', 'N', 'S', 'S', 'IVA', '2023-01-29 10:01:39', '2022-08-31 15:18:11', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas_grupos` VALUES ('2', 'COMPENSACIÓN AGRARIA Y FORESTAL', 'S', 'S', 'N', 'N', 'REAGP', '2023-04-24 13:07:34', '2022-08-31 15:18:41', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas_grupos` VALUES ('3', 'IGIC CANARIAS', 'N', 'N', 'S', 'N', 'IGIC', '2022-10-26 15:03:54', '2022-08-31 15:19:52', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas_grupos` VALUES ('4', 'COMPENSACION GANADERA Y PESQUERA', 'S', 'S', 'N', 'N', 'REAGP', '2023-01-29 10:01:51', '2022-10-26 14:50:49', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas_grupos` VALUES ('5', 'CEUTA Y MELILLA', 'N', 'N', 'S', 'N', 'IPSI', '2023-01-27 10:05:22', '2023-01-19 10:24:36', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_ivas_tipos
-- ----------------------------
DROP TABLE IF EXISTS `fza_ivas_tipos`;
CREATE TABLE `fza_ivas_tipos`  (
  `CODIGO_ABREVIATURA_TIPO_IVA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `NOMBRE_TIPO_IVA` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_ivas_tipos
-- ----------------------------
INSERT INTO `fza_ivas_tipos` VALUES ('N', 'Normal', '2023-03-09 18:12:55', '2023-03-09 18:12:47', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas_tipos` VALUES ('R', 'Reducido', '2023-03-09 18:13:09', '2023-03-09 18:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas_tipos` VALUES ('S', 'Súper Reducido', '2023-03-09 18:13:31', '2023-03-09 18:13:24', 'Administrador', 'Administrador');
INSERT INTO `fza_ivas_tipos` VALUES ('E', 'Exento', '2023-03-09 18:13:48', '2023-03-09 18:13:40', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_ivas_zonas
-- ----------------------------
DROP TABLE IF EXISTS `fza_ivas_zonas`;
CREATE TABLE `fza_ivas_zonas`  (
  `CODIGO_ZONA_IVA` int(11) NOT NULL,
  `DESCRIPCION_ZONA_IVA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ESDEFAULT_ZONA_IVA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO_ZONA_IVA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_ivas_zonas
-- ----------------------------
INSERT INTO `fza_ivas_zonas` VALUES (0, 'ESPAÑA PENÍNSULA', 'S');
INSERT INTO `fza_ivas_zonas` VALUES (1, 'INTRACOMUNITARIA', 'N');

-- ----------------------------
-- Table structure for fza_log
-- ----------------------------
DROP TABLE IF EXISTS `fza_log`;
CREATE TABLE `fza_log`  (
  `FECHAHORA_LOG` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `FECHAHORA_MACHINE_LOG` datetime(0) NULL DEFAULT NULL,
  `USUARIO_LOG` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CLASS_ERROR_LOG` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TIPO_MENSAJE_LOG` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `MENSAJE_LOG` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `FORM_LOG` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fza_metadatos
-- ----------------------------
DROP TABLE IF EXISTS `fza_metadatos`;
CREATE TABLE `fza_metadatos`  (
  `CODIGO_METADATO` int(20) NOT NULL AUTO_INCREMENT,
  `NOMBRE_METADATO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `PARENT_METADATO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_METADATO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_metadatos
-- ----------------------------
INSERT INTO `fza_metadatos` VALUES (1, 'Tablas', '-1');
INSERT INTO `fza_metadatos` VALUES (2, 'Vistas', '-1');
INSERT INTO `fza_metadatos` VALUES (3, 'Procedimientos', '-1');
INSERT INTO `fza_metadatos` VALUES (4, 'fza_articulos', '1');
INSERT INTO `fza_metadatos` VALUES (5, 'fza_articulos_familias', '1');
INSERT INTO `fza_metadatos` VALUES (6, 'fza_articulos_proveedores', '1');
INSERT INTO `fza_metadatos` VALUES (7, 'fza_articulos_tarifas', '1');
INSERT INTO `fza_metadatos` VALUES (8, 'fza_clientes', '1');
INSERT INTO `fza_metadatos` VALUES (9, 'fza_contadores', '1');
INSERT INTO `fza_metadatos` VALUES (10, 'fza_empresas', '1');
INSERT INTO `fza_metadatos` VALUES (11, 'fza_empresas_retenciones', '1');
INSERT INTO `fza_metadatos` VALUES (12, 'fza_empresas_series', '1');
INSERT INTO `fza_metadatos` VALUES (13, 'fza_facturas', '1');
INSERT INTO `fza_metadatos` VALUES (14, 'fza_facturas_lineas', '1');
INSERT INTO `fza_metadatos` VALUES (15, 'fza_formapago', '1');
INSERT INTO `fza_metadatos` VALUES (16, 'fza_generadorprocesos', '1');
INSERT INTO `fza_metadatos` VALUES (17, 'fza_ivas', '1');
INSERT INTO `fza_metadatos` VALUES (18, 'fza_ivas_grupos', '1');
INSERT INTO `fza_metadatos` VALUES (19, 'fza_ivas_tipos', '1');
INSERT INTO `fza_metadatos` VALUES (20, 'fza_ivas_zonas', '1');
INSERT INTO `fza_metadatos` VALUES (21, 'fza_log', '1');
INSERT INTO `fza_metadatos` VALUES (22, 'fza_metadatos', '1');
INSERT INTO `fza_metadatos` VALUES (23, 'fza_proveedores', '1');
INSERT INTO `fza_metadatos` VALUES (24, 'fza_recibos', '1');
INSERT INTO `fza_metadatos` VALUES (25, 'fza_tarifas', '1');
INSERT INTO `fza_metadatos` VALUES (26, 'fza_tipos_documentos', '1');
INSERT INTO `fza_metadatos` VALUES (27, 'fza_usuarios', '1');
INSERT INTO `fza_metadatos` VALUES (28, 'fza_usuarios_grupos', '1');
INSERT INTO `fza_metadatos` VALUES (29, 'fza_usuarios_perfiles', '1');
INSERT INTO `fza_metadatos` VALUES (35, 'vi_articulos', '2');
INSERT INTO `fza_metadatos` VALUES (36, 'vi_articulos_familias', '2');
INSERT INTO `fza_metadatos` VALUES (37, 'vi_articulos_proveedores', '2');
INSERT INTO `fza_metadatos` VALUES (38, 'vi_articulos_tarifas', '2');
INSERT INTO `fza_metadatos` VALUES (39, 'vi_art_busquedas', '2');
INSERT INTO `fza_metadatos` VALUES (40, 'vi_clientes', '2');
INSERT INTO `fza_metadatos` VALUES (41, 'vi_cli_busquedas', '2');
INSERT INTO `fza_metadatos` VALUES (42, 'vi_contadores', '2');
INSERT INTO `fza_metadatos` VALUES (43, 'vi_empresas', '2');
INSERT INTO `fza_metadatos` VALUES (44, 'vi_empresas_retenciones', '2');
INSERT INTO `fza_metadatos` VALUES (45, 'vi_empresas_series', '2');
INSERT INTO `fza_metadatos` VALUES (46, 'vi_emp_busquedas', '2');
INSERT INTO `fza_metadatos` VALUES (47, 'vi_facturas', '2');
INSERT INTO `fza_metadatos` VALUES (48, 'vi_facturas_lineas', '2');
INSERT INTO `fza_metadatos` VALUES (49, 'vi_fac_busquedas', '2');
INSERT INTO `fza_metadatos` VALUES (50, 'vi_fac_comboseries', '2');
INSERT INTO `fza_metadatos` VALUES (51, 'vi_fac_lin_busquedas', '2');
INSERT INTO `fza_metadatos` VALUES (52, 'vi_formapago', '2');
INSERT INTO `fza_metadatos` VALUES (53, 'vi_fza_articulos', '2');
INSERT INTO `fza_metadatos` VALUES (54, 'vi_ivas', '2');
INSERT INTO `fza_metadatos` VALUES (55, 'vi_ivas_empresa', '2');
INSERT INTO `fza_metadatos` VALUES (56, 'vi_ivas_grupos', '2');
INSERT INTO `fza_metadatos` VALUES (57, 'vi_ivas_zonas', '2');
INSERT INTO `fza_metadatos` VALUES (58, 'vi_proveedores', '2');
INSERT INTO `fza_metadatos` VALUES (59, 'vi_proveedores_articulos', '2');
INSERT INTO `fza_metadatos` VALUES (60, 'vi_recibos', '2');
INSERT INTO `fza_metadatos` VALUES (61, 'vi_tarifas', '2');
INSERT INTO `fza_metadatos` VALUES (62, 'vi_usuarios', '2');
INSERT INTO `fza_metadatos` VALUES (63, 'vi_usuarios_grupos', '2');
INSERT INTO `fza_metadatos` VALUES (64, 'vi_usuarios_perfiles', '2');
INSERT INTO `fza_metadatos` VALUES (66, 'GET_NEXT_CONT', '3');
INSERT INTO `fza_metadatos` VALUES (67, 'PRC_CALCULAR_FACTURA_NETOS', '3');
INSERT INTO `fza_metadatos` VALUES (68, 'PRC_CREAR_ACTUALIZAR_CLIENTE', '3');
INSERT INTO `fza_metadatos` VALUES (69, 'PRC_CREAR_ACTUALIZAR_EMPRESA', '3');
INSERT INTO `fza_metadatos` VALUES (70, 'PRC_CREAR_ACTUALIZAR_KEY', '3');
INSERT INTO `fza_metadatos` VALUES (71, 'PRC_CREAR_FACTURA_ABONO', '3');
INSERT INTO `fza_metadatos` VALUES (72, 'PRC_CREAR_FACTURA_DUPLICADA', '3');
INSERT INTO `fza_metadatos` VALUES (73, 'PRC_CREAR_METADATOS', '3');
INSERT INTO `fza_metadatos` VALUES (74, 'PRC_CREAR_RECIBOS_FACTURA', '3');
INSERT INTO `fza_metadatos` VALUES (75, 'PRC_FNC_GET_NEXT_LINEA_FACTURA', '3');
INSERT INTO `fza_metadatos` VALUES (76, 'PRC_FNC_GET_NEXT_LINEA_PRESUPUESTO', '3');
INSERT INTO `fza_metadatos` VALUES (77, 'PRC_FNC_GET_NEXT_NRO_DOC', '3');
INSERT INTO `fza_metadatos` VALUES (78, 'PRC_FNC_GET_SERIE_TIPODOC', '3');
INSERT INTO `fza_metadatos` VALUES (79, 'PRC_GET_DATA_ARTICULO', '3');
INSERT INTO `fza_metadatos` VALUES (80, 'PRC_GET_DATA_CLIENTE', '3');
INSERT INTO `fza_metadatos` VALUES (81, 'PRC_GET_IVA_ZONA_FECHA', '3');
INSERT INTO `fza_metadatos` VALUES (82, 'PRC_GET_NEXT_CONT', '3');
INSERT INTO `fza_metadatos` VALUES (83, 'PRC_GET_NEXT_CONT_FACT_SERIE', '3');
INSERT INTO `fza_metadatos` VALUES (84, 'PRC_GET_NEXT_CONT_SERIE', '3');
INSERT INTO `fza_metadatos` VALUES (85, 'PRC_GET_NUMEROS_A_LETRAS', '3');
INSERT INTO `fza_metadatos` VALUES (86, 'PRC_GET_NUMERO_MENOR_MIL', '3');

-- ----------------------------
-- Table structure for fza_proveedores
-- ----------------------------
DROP TABLE IF EXISTS `fza_proveedores`;
CREATE TABLE `fza_proveedores`  (
  `CODIGO_PROVEEDOR` int(11) NOT NULL,
  `ACTIVO_PROVEEDOR` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `RAZONSOCIAL_PROVEEDOR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `NIF_PROVEEDOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `MOVIL_PROVEEDOR` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `EMAIL_PROVEEDOR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION1_PROVEEDOR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION2_PROVEEDOR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `POBLACION_PROVEEDOR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PROVINCIA_PROVEEDOR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CPOSTAL_PROVEEDOR` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PAIS_PROVEEDOR` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `OBSERVACIONES_PROVEEDOR` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `REFERENCIA_PROVEEDOR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CONTACTO_PROVEEDOR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TELEFONO_CONTACTO_PROVEEDOR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TELEFONO_PROVEEDOR` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `IBAN_PROVEEDOR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_PROVEEDOR`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_proveedores
-- ----------------------------
INSERT INTO `fza_proveedores` VALUES (3, 'S', 'Exotic Liquids', NULL, '(171) 555-2222', NULL, '49 Gilbert St.', NULL, 'London', '', 'EC1 4SD', 'UK', NULL, NULL, 'Charlotte Cooper', NULL, NULL, NULL, '2021-06-10 19:30:28', '2021-06-10 19:30:28', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (4, 'S', 'New Orleans Cajun Delights', NULL, '(100) 555-4822', NULL, 'P.O. Box 78934', NULL, 'New Orleans', 'LA', '70117', 'USA', NULL, NULL, 'Shelley Burke', NULL, NULL, NULL, '2021-06-10 19:30:28', '2021-06-10 19:30:28', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (5, 'S', 'Tokyo Traders', NULL, '(03) 3555-5011', NULL, '9-8 Sekimai Musashino-shi', NULL, 'Tokyo', '', '100', 'Japan', NULL, NULL, 'Yoshi Nagase', NULL, NULL, NULL, '2021-06-10 19:31:17', '2021-06-10 19:31:17', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (6, 'S', 'Mayumis', NULL, '(06) 431-7877', NULL, '92 Setsuko Chuo-ku', NULL, 'Osaka', '', '545', 'Japan', NULL, NULL, 'Mayumi Ohno', NULL, NULL, NULL, '2021-06-10 19:33:41', '2021-06-10 19:33:41', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (7, 'S', 'Pavlova, Ltd.', NULL, '(03) 444-2343', NULL, '74 Rose St. Moonie Ponds', NULL, 'Melbourne', 'Victoria', '3058', 'Australia', NULL, NULL, 'Ian Devling', NULL, NULL, NULL, '2021-06-10 19:33:48', '2021-06-10 19:33:48', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (8, 'S', 'Cooperativa de Quesos Las Cabras', NULL, '(98) 598 76 54', NULL, 'Calle del Rosal 4', NULL, 'Oviedo', 'Asturias', '33007', 'Spain', NULL, NULL, 'Antonio del Valle Saavedra', NULL, NULL, NULL, '2021-06-10 19:34:56', '2021-06-10 19:34:56', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (9, 'S', 'Forêts dérables', NULL, '(514) 555-2955', NULL, '148 rue Chasseur', NULL, 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canada', NULL, NULL, 'Chantal Goulet', NULL, NULL, NULL, '2021-06-10 19:36:14', '2021-06-10 19:36:14', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (10, 'S', 'Gai pâturage', NULL, '38.76.98.06', NULL, 'Bat. B 3, rue des Alpes', NULL, 'Annecy', '', '74000', 'France', NULL, NULL, 'Eliane Noz', NULL, NULL, NULL, '2021-06-10 19:36:20', '2021-06-10 19:36:20', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (11, 'S', 'Escargots Nouveaux', NULL, '85.57.00.07', NULL, '22, rue H. Voiron', NULL, 'Montceau', '', '71300', 'France', NULL, NULL, 'Marie Delamare', NULL, NULL, NULL, '2021-06-10 19:36:25', '2021-06-10 19:36:25', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (12, 'S', 'Pasta Buttini s.r.l.', NULL, '(089) 6547665', NULL, 'Via dei Gelsomini, 153', NULL, 'Salerno', '', '84100', 'Italy', NULL, NULL, 'Giovanni Giudici', NULL, NULL, NULL, '2021-06-10 19:36:35', '2021-06-10 19:36:35', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (13, 'S', 'Ma Maison', NULL, '(514) 555-9022', NULL, '2960 Rue St. Laurent', NULL, 'Montréal', 'Québec', 'H1J 1C3', 'Canada', NULL, NULL, 'Jean-Guy Lauzon', NULL, NULL, NULL, '2021-06-10 19:36:46', '2021-06-10 19:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (14, 'S', 'Karkki Oy', NULL, '(953) 10956', NULL, 'Valtakatu 12', NULL, 'Lappeenranta', '', '53120', 'Finland', NULL, NULL, 'Anne Heikkonen', NULL, NULL, NULL, '2021-06-10 19:37:22', '2021-06-10 19:37:22', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (15, 'S', 'Leka Trading', NULL, '555-8787', NULL, '471 Serangoon Loop, Suite #402', NULL, 'Singapore', '', '0512', 'Singapore', NULL, NULL, 'Chandra Leka', NULL, NULL, NULL, '2021-06-10 19:37:28', '2021-06-10 19:37:28', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (16, 'S', 'Lyngbysild', NULL, '43844108', NULL, 'Lyngbysild Fiskebakken 10', NULL, 'Lyngby', '', '2800', 'Denmark', NULL, NULL, 'Niels Petersen', NULL, NULL, NULL, '2021-06-10 19:37:28', '2021-06-10 19:37:28', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (17, 'S', 'Zaanse Snoepfabriek', NULL, '(12345) 1212', NULL, 'Verkoop Rijnweg 22', NULL, 'Zaandam', '', '9999 ZZ', 'Netherlands', NULL, NULL, 'Dirk Luchte', NULL, NULL, NULL, '2021-06-10 19:37:28', '2021-06-10 19:37:28', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (18, 'S', 'Formaggi Fortini s.r.l.', NULL, '(0544) 60323', NULL, 'Viale Dante, 75', NULL, 'Ravenna', '', '48100', 'Italy', NULL, NULL, 'Elio Rossi', NULL, NULL, NULL, '2021-06-10 19:37:39', '2021-06-10 19:37:39', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (19, 'S', 'Norske Meierier', NULL, '(0)2-953010', NULL, 'Hatlevegen 5', NULL, 'Sandvika', '', '1320', 'Norway', NULL, NULL, 'Beate Vileid', NULL, NULL, NULL, '2021-06-10 19:37:39', '2021-06-10 19:37:39', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (20, 'S', 'Bigfoot Breweries', NULL, '(503) 555-9931', NULL, '3400 - 8th Avenue Suite 210', NULL, 'Bend', 'OR', '97101', 'USA', NULL, NULL, 'Cheryl Saylor', NULL, NULL, NULL, '2021-06-10 19:37:39', '2021-06-10 19:37:39', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (21, 'S', 'Svensk Sjöföda AB', NULL, '08-123 45 67', NULL, 'Brovallavägen 231', NULL, 'Stockholm', '', 'S-123 45', 'Sweden', NULL, NULL, 'Michael Björn', NULL, NULL, NULL, '2021-06-10 19:37:39', '2021-06-10 19:37:39', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (22, 'S', 'Aux joyeux ecclésiastiques', NULL, '(1) 03.83.00.68', NULL, '203, Rue des Francs-Bourgeois', NULL, 'Paris', '', '75004', 'France', NULL, NULL, 'Guylène Nodier', NULL, NULL, NULL, '2021-06-10 19:37:39', '2021-06-10 19:37:39', 'Administrador', 'Administrador');
INSERT INTO `fza_proveedores` VALUES (23, 'S', 'New England Seafood Cannery', NULL, '(617) 555-3267', NULL, 'Order Processing Dept. 2100 Paul Revere Blvd.', NULL, 'Boston', 'MA', '02134', 'USA', NULL, NULL, 'Robb Merchant', NULL, NULL, NULL, '2021-06-15 19:40:07', '2021-06-10 19:37:39', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_recibos
-- ----------------------------
DROP TABLE IF EXISTS `fza_recibos`;
CREATE TABLE `fza_recibos`  (
  `NRO_FACTURA_RECIBO` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `SERIE_FACTURA_RECIBO` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `NRO_PLAZO_RECIBO` int(11) NOT NULL,
  `FORMA_PAGO_ORIGEN_RECIBO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `EUROS_RECIBO` decimal(18, 6) NULL DEFAULT NULL,
  `STADO_RECIBO` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `FECHA_EXPEDICION_RECIBO` date NULL DEFAULT NULL,
  `FECHA_VENCIMIENTO_RECIBO` date NULL DEFAULT NULL,
  `IBAN_CLIENTE_RECIBO` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `FECHA_PAGO_RECIBO` date NULL DEFAULT NULL,
  `LOCALIDAD_EXPEDICION_RECIBO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CODIGO_CLIENTE_RECIBO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `RAZONSOCIAL_CLIENTE_RECIBO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `DIRECCION1_CLIENTE_RECIBO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `POBLACION_CLIENTE_RECIBO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `PROVINCIA_CLIENTE_RECIBO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `CPOSTAL_CLIENTE_RECIBO` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `IMPORTE_LETRA_RECIBO` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`NRO_FACTURA_RECIBO`, `SERIE_FACTURA_RECIBO`, `NRO_PLAZO_RECIBO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_recibos
-- ----------------------------
INSERT INTO `fza_recibos` VALUES ('000001', 'ATIE', 1, 'CONTADO', 'CONTADO', 2.760000, 'Pagado', '2023-04-25', '2023-04-25', NULL, '2023-04-25', '', 'TIENDA', 'TIENDA', 'DIRECCION', 'POBLACION', 'PROVINCIA', 'CODPOSTAL', 'DOS CON SETENTA Y SEIS CÉNTIMOS ', '2023-05-20 13:09:46', '2023-01-25 10:32:24', 'Administrador', 'Administrador');
INSERT INTO `fza_recibos` VALUES ('21', 'A1', 1, 'CONTADO', 'CONTADO', 15.750000, 'Pagado', '2023-01-27', '2023-01-27', NULL, '2023-01-27', 'POBLACION', 'TIENDA', 'TIENDA', 'DIRECCION', 'POBLACION', 'PROVINCIA', 'CODPOSTAL', 'QUINCE CON SETENTA Y CINCO CÉNTIMOS ', '2023-05-12 14:01:10', '2023-05-12 14:01:09', 'Administrador', 'Administrador');
INSERT INTO `fza_recibos` VALUES ('24', 'A1', 1, 'CONTADO', 'CONTADO', 19.834711, 'Pagado', '2023-05-16', '2023-05-16', NULL, '2023-05-16', '', '291', 'PEDRO CACHAS', NULL, NULL, NULL, NULL, 'DIECINUEVE CON OCHENTA Y TRES CÉNTIMOS ', '2023-05-17 13:12:06', '2023-05-17 13:12:06', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_tarifas
-- ----------------------------
DROP TABLE IF EXISTS `fza_tarifas`;
CREATE TABLE `fza_tarifas`  (
  `CODIGO_TARIFA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `NOMBRE_TARIFA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ACTIVO_TARIFA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `FECHA_DESDE_TARIFA` date NULL DEFAULT NULL,
  `FECHA_HASTA_TARIFA` date NULL DEFAULT NULL,
  `ESIMP_INCL_TARIFA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'S',
  `ESDEFAULT_TARIFA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`CODIGO_TARIFA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_tarifas
-- ----------------------------
INSERT INTO `fza_tarifas` VALUES ('0', 'PVP', 'S', '2022-09-05', NULL, 'S', 'S', '2022-10-24 15:32:21', '2022-09-05 09:30:49', 'Administrador', 'Administrador');
INSERT INTO `fza_tarifas` VALUES ('1', 'VENTA MAYOR', 'S', '2022-09-05', NULL, 'N', NULL, '2022-09-05 09:31:36', '2022-09-05 09:31:19', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_tipos_documentos
-- ----------------------------
DROP TABLE IF EXISTS `fza_tipos_documentos`;
CREATE TABLE `fza_tipos_documentos`  (
  `CODIGO_TIPODOCUMENTO` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `DESCRIPCION_TIPODOCUMENTO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO_TIPODOCUMENTO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_tipos_documentos
-- ----------------------------
INSERT INTO `fza_tipos_documentos` VALUES ('AO', 'ORDEN ARTICULOS');
INSERT INTO `fza_tipos_documentos` VALUES ('AR', 'ARTICULOS');
INSERT INTO `fza_tipos_documentos` VALUES ('EM', 'EMPRESAS');
INSERT INTO `fza_tipos_documentos` VALUES ('EO', 'ORDEN EMPRESAS');
INSERT INTO `fza_tipos_documentos` VALUES ('ES', 'SERIE POR EMPRESA');
INSERT INTO `fza_tipos_documentos` VALUES ('FA', 'FAMILIAS');
INSERT INTO `fza_tipos_documentos` VALUES ('FC', 'FACTURAS DE CLIENTE');
INSERT INTO `fza_tipos_documentos` VALUES ('FO', 'ORDEN FAMILIAS');
INSERT INTO `fza_tipos_documentos` VALUES ('PO', 'ORDEN PROVEEDORES');
INSERT INTO `fza_tipos_documentos` VALUES ('PV', 'PROVEEDORES');
INSERT INTO `fza_tipos_documentos` VALUES ('RT', 'RETENCION POR EMPRESA');

-- ----------------------------
-- Table structure for fza_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `fza_usuarios`;
CREATE TABLE `fza_usuarios`  (
  `USUARIO_USUARIO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `PASSWORD_USUARIO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `GRUPO_USUARIO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `EMPRESADEF_USUARIO` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `ULTIMOLOGIN_USUARIO` timestamp(0) NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`USUARIO_USUARIO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_usuarios
-- ----------------------------
INSERT INTO `fza_usuarios` VALUES ('Administrador', '4F8239A5B05A0E22D3DD4D7853808AF3', 'Administradores', '1', '2023-05-22 14:46:10', '2023-05-22 14:46:10', '2021-05-14 19:54:29', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_usuarios_grupos
-- ----------------------------
DROP TABLE IF EXISTS `fza_usuarios_grupos`;
CREATE TABLE `fza_usuarios_grupos`  (
  `GRUPO_GRUPO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `ESGRUPOADMINISTRADOR_GRUPO` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT 'N',
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`GRUPO_GRUPO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_usuarios_grupos
-- ----------------------------
INSERT INTO `fza_usuarios_grupos` VALUES ('Administradores', 'S', '2023-01-21 08:29:44', '2021-05-14 19:55:13', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_grupos` VALUES ('Usuarios', 'N', '2021-05-24 20:53:04', '2021-05-24 20:52:52', 'Administrador', 'Administrador');

-- ----------------------------
-- Table structure for fza_usuarios_perfiles
-- ----------------------------
DROP TABLE IF EXISTS `fza_usuarios_perfiles`;
CREATE TABLE `fza_usuarios_perfiles`  (
  `USUARIO_GRUPO_PERFILES` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `KEY_PERFILES` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `SUBKEY_PERFILES` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `VALUE_PERFILES` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `VALUE_TEXT_PERFILES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `TYPE_BLOB_PERFILES` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `VALUE_BLOB_PERFILES` blob NULL DEFAULT NULL,
  `INSTANTEMODIF` timestamp(0) NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `INSTANTEALTA` timestamp(0) NOT NULL,
  `USUARIOALTA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `USUARIOMODIF` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`USUARIO_GRUPO_PERFILES`, `KEY_PERFILES`, `SUBKEY_PERFILES`) USING BTREE,
  INDEX `IDX_KEYPERFIL`(`KEY_PERFILES`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fza_usuarios_perfiles
-- ----------------------------
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmClientes', 'unqryFacturasClientes', 'SQL', 'select * from vi_fac_busquedas\r\n', NULL, NULL, '2023-05-22 14:50:50', '2023-01-31 09:49:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmClientes', 'unqryFacturasLineasClientes', 'SQL', 'select *\r\nfrom vi_fac_lin_busquedas l\r\ninner join vi_fac_busquedas f\r\non l.NRO_FACTURA_LINEA = F.NRO_FACTURA\r\nAND l.SERIE_FACTURA_LINEA = F.SERIE_FACTURA\r\n\r\n', NULL, NULL, '2023-05-22 14:51:07', '2023-01-31 09:49:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmClientes', 'unqryFormaPago', 'SQL', 'select * from vi_formapago\r\n\r\n', NULL, NULL, '2023-05-22 14:51:27', '2023-01-31 09:49:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmClientes', 'unqryPerfiles', 'SQL', 'SELECT *      FROM fza_usuarios_perfiles\r\nWHERE KEY_PERFILES = \'dmClientes\' OR KEY_PERFILES = \'frmMtoClientes\'\r\n', NULL, NULL, '2023-05-22 14:49:25', '2021-06-15 18:47:01', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmClientes', 'unqryTablaG', 'SQL', 'SELECT * FROM vi_clientes \r\nORDER BY EMAIL_CLIENTE\r\n', NULL, NULL, '2023-05-22 14:49:04', '2021-05-24 02:06:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmClientes', 'unqryTarifas', 'SQL', 'select * from vi_tarifas\r\n\r\n', NULL, NULL, '2023-02-01 10:40:17', '2023-01-31 09:49:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmClientes', 'unstrdprcContador', 'Procedure', 'GET_NEXT_CONT', NULL, NULL, '2023-02-01 10:40:18', '2021-06-15 18:47:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmEmpresas', 'unqryIvas', 'SQL', 'SELECT * \r\nFROM VI_IVAS_GRUPOS\r\n\r\n', NULL, NULL, '2023-05-22 12:48:39', '2023-01-29 10:38:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmEmpresas', 'unqryPerfiles', 'SQL', 'SELECT * FROM fza_usuarios_perfiles WHERE KEY_PERFILES =\'dmEmpresas\' OR KEY_PERFILES = \'frmMtoEmpresas\'', NULL, NULL, '2023-01-30 10:24:26', '2023-01-29 10:38:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmEmpresas', 'unqryRetenciones', 'SQL', 'SELECT * \r\nFROM vi_empresas_retenciones\r\nWHERE CODIGO_EMPRESA_RETENCION = :CODIGO_EMPRESA\r\n', NULL, NULL, '2023-02-01 09:51:52', '2021-06-18 18:42:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmEmpresas', 'unqryTablaG', 'SQL', 'SELECT *  \r\n  FROM vi_empresas \r\n ORDER BY orden_empresa\r\n', NULL, NULL, '2023-02-01 09:52:09', '2021-06-18 18:42:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmEmpresas', 'unstrdprcContador', 'Procedure', 'PRC_GET_NEXT_CONT', NULL, NULL, '2023-05-22 12:49:01', '2021-06-18 18:42:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryArtDataLinFac', 'SQL', 'select * from vi_art_busquedas\r\nwhere codigo_tarifa = :tarifa\r\nor codigo_tarifa is null\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryCliDataFac', 'SQL', 'select * from vi_cli_busquedas\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryDocDataFac', 'SQL', 'select * from fza_odontologos\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryEmpDataFac', 'SQL', 'SELECT * FROM VI_EMP_BUSQUEDAS\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryFacPrint', 'SQL', 'SELECT * \r\nfrom fza_FACTURAS\r\norder by NRO_FACTURA Asc\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryFormaPago', 'SQL', 'select * from fza_formapago\r\n\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryIvas', 'SQL', 'SELECT * \r\nFROM VI_IVAS\r\n\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryLinFac', 'SQL', 'SELECT *\r\nFROM FZA_FACTURAS_LINEAS\r\nwhere NRO_FACTURA_LINEA = :NRO_FACTURA\r\nAND SERIE_FACTURA_LINEA = :SERIE_FACTURA\r\norder by NRO_FACTURA_LINEA, SERIE_FACTURA_LINEA, LINEA_FACTURA_LINEA ASC\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryLinFacPrint', 'SQL', 'SELECT *\r\n FROM fza_FACTURAS_LINEAS\r\nWHERE NRO_FACTURA_LINEA = :NRO_FACTURA\r\n  AND SERIE_FACTURA_LINEA = :SERIE_FACTURA\r\nORDER BY LINEA_FACTURA_LINEA;\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryPerfiles', 'SQL', 'select *\r\nfrom fza_usuarios_perfiles\r\nwhere KEY_PERFILES IN (\'dmFacturas\', \'frmMtoFacturas\',\'frmMtoArtFacSearch\',\'frmMtoCliFacSearch\',\'frmMtoEmpFacSearch\')\r\n ', NULL, NULL, '2023-05-12 11:57:21', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryRecibos', 'SQL', 'select * from fza_recibos\r\n\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryRecibosPrint', 'SQL', 'SELECT * \r\nfrom fza_recibos\r\n\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqrySeries', 'SQL', 'SELECT DISTINCT SERIE_CONTADOR, DEFAULT_CONTADOR\r\nFROM fza_CONTADORES\r\nWHERE TIPODOC_CONTADOR=\'FC\' AND ACTIVO_CONTADOR = \'S\'\r\nORDER BY DEFAULT_CONTADOR DESC\r\n', NULL, NULL, '2023-05-11 15:25:00', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryTablaG', 'SQL', 'select * from fza_facturas\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unqryTarifas', 'SQL', 'SELECT *\r\nFROM vi_tarifas\r\n\r\n', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unstrdprcCrearCliente', 'Procedure', 'PRC_CREAR_ACTUALIZAR_CLIENTE', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unstrdprcCrearFacturaAbono', 'Procedure', 'PRC_CREAR_FACTURA_ABONO', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unstrdprcDuplicarFactura', 'Procedure', 'PRC_CREAR_FACTURA_DUPLICADA', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unstrdprcGetContador', 'Procedure', 'PRC_GET_NEXT_CONT', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unstrdprcGetContadorFactura', 'Procedure', 'PRC_GET_NEXT_CONT_FACT_SERIE', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unstrdprcGetDataArticulo', 'Procedure', 'PRC_GET_DATA_ARTICULO', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unstrdprcGetDataCliente', 'Procedure', 'PRC_GET_DATA_CLIENTE', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFacturas', 'unstrdprcGetRecibos', 'Procedure', 'PRC_CREAR_RECIBOS_FACTURA', NULL, NULL, '2023-02-01 14:08:58', '2023-01-30 18:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFormasdePago', 'unqryFacturas', 'SQL', 'select * from vi_fac_busquedas\r\n', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFormasdePago', 'unqryFacturasLineas', 'SQL', 'select *\r\nfrom vi_fac_lin_busquedas l\r\ninner join vi_fac_busquedas f\r\non l.NRO_FACTURA_LINEA = F.NRO_FACTURA\r\nAND l.SERIE_FACTURA_LINEA = F.SERIE_FACTURA\r\n\r\n', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFormasdePago', 'unqryPerfiles', 'SQL', 'select *\r\nfrom fza_usuarios_perfiles\r\nwhere (KEY_PERFILES = \'dmFormasdePago\' \r\nOR KEY_PERFILES=\'frmMtoFormasdePago\')\r\n', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFormasdePago', 'unqryTablaG', 'SQL', 'SELECT *  \r\n  FROM vi_formapago\r\n\r\n', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmFormasdePago', 'unstrdprcContador', 'Procedure', 'PRC_GET_NEXT_CONT', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmIvas', 'unqryPerfiles', 'SQL', 'SELECT *   FROM fza_usuarios_perfiles  WHERE (KEY_PERFILES = :NameDataModule)     OR (KEY_PERFILES = :NameFormModule)\r\n', NULL, NULL, '2023-04-23 14:04:14', '2023-04-23 14:04:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmIvas', 'unqryTablaG', 'SQL', 'select * from vi_ivas\r\n', NULL, NULL, '2023-04-23 14:04:14', '2023-04-23 14:04:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmIvas', 'unqryZonasIVA', 'SQL', 'select GRUPO_ZONA_IVA, DESCRIPCION_ZONA_IVA from fza_ivas_grupos\r\n', NULL, NULL, '2023-04-23 14:04:14', '2023-04-23 14:04:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmIvas', 'unstrdprcContador', 'Procedure', 'GET_NEXT_CONT', NULL, NULL, '2023-04-23 14:55:39', '2023-04-23 14:04:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmProveedores', 'unqryPerfiles', 'SQL', 'select * from fza_usuarios_perfiles \r\nwhere ( KEY_PERFILES = \'frmMtoProveedores\' OR\r\n        KEY_PERFILES = \'dmProveedores\'\r\n       )\r\n', NULL, NULL, '2021-06-15 19:29:49', '2021-06-15 19:29:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmProveedores', 'unqryTablaG', 'SQL', 'select * from fza_proveedores\r\n', NULL, NULL, '2021-06-15 19:34:58', '2021-06-15 19:29:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmProveedores', 'unstrdprcContador', 'Procedure', 'GET_NEXT_CONT', NULL, NULL, '2021-06-15 19:29:49', '2021-06-15 19:29:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmUsuarios', 'unqryPerfiles', 'SQL', 'SELECT *   FROM fza_usuarios_perfiles  WHERE (KEY_PERFILES = :NameDataModule)     OR (KEY_PERFILES = :NameFormModule)\r\n', NULL, NULL, '2023-04-25 12:23:31', '2023-04-25 12:23:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'dmUsuarios', 'unqryTablaG', 'SQL', 'SELECT *  \r\nFROM fza_usuarios\r\n\r\n', NULL, NULL, '2023-04-25 12:23:31', '2023-04-25 12:23:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'btnAceptar_Caption', '&Aceptar', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'btnCancelar_Caption', '&Cancelar', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'btnCancelar1_Caption', '&Cancelar', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'btnCargarCaptions_Caption', '&Cargar captions', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'btnCargarColumnas_Caption', '&Cargar columnas', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'btnCargarVblesGlob_Caption', '&Cargar Vbles Globales', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'btnGrabar_Caption', '&Grabar', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'btnSalir_Caption', '&Salir', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-16 13:10:31', '2023-05-16 13:10:23', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_ACTIVO_ARTICULO_Caption', 'ACTIVO_ARTICULO', '', NULL, NULL, '2022-10-26 19:35:37', '2022-10-26 19:35:37', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_ACTIVO_ARTICULO_Index', '1', '', NULL, NULL, '2022-10-26 19:35:37', '2022-10-26 19:35:37', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_ACTIVO_ARTICULO_Visible', 'False', '', NULL, NULL, '2023-01-25 13:19:33', '2022-10-26 19:35:37', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_ACTIVO_ARTICULO_Width', '153', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:37', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_ARTICULO_Caption', 'Código Artículo', '', NULL, NULL, '2023-01-25 13:19:54', '2022-10-26 19:35:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_ARTICULO_Index', '0', '', NULL, NULL, '2022-10-26 19:35:12', '2022-10-26 19:35:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_ARTICULO_Visible', 'True', '', NULL, NULL, '2022-10-26 19:35:07', '2022-10-26 19:35:07', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_ARTICULO_Width', '156', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_FAMILIA_ARTICULO_Caption', 'Código Familia', '', NULL, NULL, '2023-01-25 13:22:04', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_FAMILIA_ARTICULO_Index', '5', '', NULL, NULL, '2023-01-25 13:27:23', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_FAMILIA_ARTICULO_Visible', 'True', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_FAMILIA_ARTICULO_Width', '118', '', NULL, NULL, '2023-01-25 13:27:23', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_TARIFA_Caption', 'Tarifa', '', NULL, NULL, '2023-01-25 13:26:26', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_TARIFA_Index', '8', '', NULL, NULL, '2023-01-25 13:27:23', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_TARIFA_Visible', 'True', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_CODIGO_TARIFA_Width', '134', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_DESCRIPCION_ARTICULO_Caption', 'Descripción', '', NULL, NULL, '2023-01-25 13:20:18', '2022-10-26 19:35:40', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_DESCRIPCION_ARTICULO_Index', '2', '', NULL, NULL, '2022-10-26 19:35:40', '2022-10-26 19:35:40', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_DESCRIPCION_ARTICULO_Visible', 'True', '', NULL, NULL, '2022-10-26 19:35:40', '2022-10-26 19:35:40', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_DESCRIPCION_ARTICULO_Width', '197', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:40', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_DESCRIPCION_FAMILIA_Caption', 'Familia', '', NULL, NULL, '2023-01-25 13:22:11', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_DESCRIPCION_FAMILIA_Index', '6', '', NULL, NULL, '2023-01-25 13:27:23', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_DESCRIPCION_FAMILIA_Visible', 'True', '', NULL, NULL, '2022-10-26 19:35:45', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_DESCRIPCION_FAMILIA_Width', '438', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_IMP_INCL_TARIFA_Caption', 'Incluye IVA', '', NULL, NULL, '2023-01-25 13:24:27', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_IMP_INCL_TARIFA_Index', '9', '', NULL, NULL, '2022-10-26 19:35:45', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_IMP_INCL_TARIFA_Visible', 'True', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_IMP_INCL_TARIFA_Width', '143', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_INSTANTEALTA_Caption', 'INSTANTEALTA', '', NULL, NULL, '2022-10-26 19:35:46', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_INSTANTEALTA_Index', '11', '', NULL, NULL, '2022-10-26 19:35:46', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2023-01-25 13:20:37', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_INSTANTEALTA_Width', '161', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_INSTANTEMODIF_Caption', 'INSTANTEMODIF', '', NULL, NULL, '2022-10-26 19:35:46', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_INSTANTEMODIF_Index', '12', '', NULL, NULL, '2022-10-26 19:35:46', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2023-01-25 13:20:41', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_INSTANTEMODIF_Width', '161', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_PRECIOFINAL_Caption', 'Precio', '', NULL, NULL, '2023-01-25 13:23:38', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_PRECIOFINAL_Index', '3', '', NULL, NULL, '2023-01-25 13:27:23', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_PRECIOFINAL_Visible', 'True', '', NULL, NULL, '2022-10-26 19:35:45', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_PRECIOFINAL_Width', '107', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_TIPO_CANTIDAD_ARTICULO_Caption', 'Tipo Cantidad', '', NULL, NULL, '2023-01-25 13:22:57', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_TIPO_CANTIDAD_ARTICULO_Index', '4', '', NULL, NULL, '2023-01-25 13:27:23', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_TIPO_CANTIDAD_ARTICULO_Visible', 'True', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_TIPO_CANTIDAD_ARTICULO_Width', '113', '', NULL, NULL, '2023-01-25 13:27:23', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_TIPOIVA_ARTICULO_Caption', 'Tipo IVA', '', NULL, NULL, '2023-01-25 13:25:48', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_TIPOIVA_ARTICULO_Index', '7', '', NULL, NULL, '2023-01-25 13:27:23', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_TIPOIVA_ARTICULO_Visible', 'True', '', NULL, NULL, '2022-10-26 19:35:45', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_TIPOIVA_ARTICULO_Width', '158', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_USUARIOALTA_Caption', 'USUARIOALTA', '', NULL, NULL, '2022-10-26 19:35:46', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_USUARIOALTA_Index', '13', '', NULL, NULL, '2022-10-26 19:35:46', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2023-01-25 13:20:53', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_USUARIOALTA_Width', '117', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_USUARIOMODIF_Caption', 'USUARIOMODIF', '', NULL, NULL, '2022-10-26 19:35:45', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_USUARIOMODIF_Index', '10', '', NULL, NULL, '2022-10-26 19:35:45', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2023-01-25 13:20:56', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'cxGrdDBTabPrin_USUARIOMODIF_Width', '126', '', NULL, NULL, '2023-01-25 13:19:18', '2022-10-26 19:35:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'lblEditMode_Caption', 'Navegando', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'lblTablaOrigen_Caption', 'TablaOrigen', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'lblTextoaBuscar_Caption', 'Texto a buscar', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'lblTextoaBuscarPerfil_Caption', 'Texto a buscar', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'oApplySkin', 'False', '', NULL, NULL, '2022-10-26 19:51:03', '2022-10-26 19:51:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'oApplyWidth', 'True', '', NULL, NULL, '2023-01-25 13:21:22', '2022-10-26 19:51:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'oBusqGlobal', 'Grid', '', NULL, NULL, '2023-01-25 12:59:29', '2022-10-26 19:51:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'oCreateItems', 'True', '', NULL, NULL, '2023-01-25 13:19:10', '2022-10-26 19:51:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2022-10-26 19:51:03', '2022-10-26 19:51:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'tsFicha_Caption', '&Ficha', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'tsLista_Caption', '&Lista', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSearch', 'tsPerfil_Caption', 'Perfil', '', NULL, NULL, '2022-10-26 19:50:59', '2022-10-26 19:50:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoArtFacSerach', 'cxGrdDBTabPrin_PRECIOFINAL_PropertiesClass', 'TcxCurrencyEditProperties', NULL, NULL, NULL, '2022-10-26 20:39:55', '2022-10-26 20:37:01', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'btnCancelar_Caption', '&Cancelar', '', NULL, NULL, '2021-06-14 20:32:39', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'btnCargarCaptions_Caption', '&Cargar captions', '', NULL, NULL, '2023-01-31 09:49:12', '2021-06-14 19:41:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'btnCargarColumnas_Caption', '&Cargar columnas', '', NULL, NULL, '2023-01-31 09:49:12', '2021-06-14 19:41:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'btnCargarSettings_Caption', 'Cargar settings', '', NULL, NULL, '2021-06-14 19:41:52', '2021-06-14 19:41:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'btnCargarVblesGlob_Caption', '&Cargar Vbles Globales', '', NULL, NULL, '2023-01-31 09:49:12', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'btnGrabar_Caption', '&Grabar', '', NULL, NULL, '2021-06-14 19:41:57', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'btnIraArticulo_Caption', 'I&r a Artículo', '', NULL, NULL, '2023-05-22 14:48:05', '2023-05-22 14:48:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'btnNuevoCliente_Caption', '&Nuevo Cliente', '', NULL, NULL, '2023-02-04 10:18:59', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'btnSalir_Caption', '&Salir', '', NULL, NULL, '2022-10-26 16:25:11', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'Caption', 'Clientes', NULL, NULL, NULL, '2022-10-26 16:25:19', '2021-06-03 18:19:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'chkActivo_Caption', 'Activo', '', NULL, NULL, '2021-06-14 19:41:57', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'chkAplicaIVA_Caption', 'Factura Sin IVA', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'chkAplicaRE_Caption', 'Aplica Recargo de Equivalencia', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'chkEXTRANJERO_Caption', 'IVA Exento', '', NULL, NULL, '2023-01-31 09:49:12', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'chkIVA_EXENTO_CLIENTE_Caption', 'Es Intracomunitario', '', NULL, NULL, '2023-01-31 09:49:12', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'chkRECARGO_EQUIV_Caption', 'Factura con Recargo de Equivalencia', '', NULL, NULL, '2023-05-22 14:48:05', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'chkREGIMENAGRICOLA_Caption', 'Régimen especial agricola/ganadero/pesca', '', NULL, NULL, '2023-01-31 09:49:12', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'chkRETENCIONES_Caption', 'Aplicar Retenciones (Es profesional)', '', NULL, NULL, '2023-01-31 09:49:12', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-22 12:20:52', '2023-05-22 12:20:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ACTIVO_CLIENTE_Caption', 'Activo', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ACTIVO_CLIENTE_Index', '1', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ACTIVO_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ACTIVO_CLIENTE_Width', '59', '', NULL, NULL, '2023-05-22 14:25:23', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CODIGO_CLIENTE_Caption', 'Código Cliente', '', NULL, NULL, '2023-05-22 14:28:39', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CODIGO_CLIENTE_Index', '0', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CODIGO_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CODIGO_CLIENTE_Width', '76', '', NULL, NULL, '2023-05-22 14:25:23', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CODIGO_FORMA_PAGO_CLIENTE_Caption', 'Forma de pago por defecto', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CODIGO_FORMA_PAGO_CLIENTE_Index', '24', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CODIGO_FORMA_PAGO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CODIGO_FORMA_PAGO_CLIENTE_Width', '243', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CONTACTO_CLIENTE_Caption', 'Contacto Cliente', '', NULL, NULL, '2023-05-22 14:28:45', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CONTACTO_CLIENTE_Index', '15', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CONTACTO_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CONTACTO_CLIENTE_Width', '83', '', NULL, NULL, '2023-05-22 14:25:24', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_Caption', 'Código Postal Cliente', '', NULL, NULL, '2023-05-22 14:28:48', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_Index', '11', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_Width', '126', '', NULL, NULL, '2023-05-22 14:25:23', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_Caption', 'Dirección Cliente', '', NULL, NULL, '2023-05-22 14:28:51', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_Index', '7', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_Width', '131', '', NULL, NULL, '2023-05-22 14:25:23', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_Caption', 'Más Dirección Cliente', '', NULL, NULL, '2023-05-22 14:28:55', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_Index', '8', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_Width', '128', '', NULL, NULL, '2023-05-22 14:25:23', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_EMAIL_CLIENTE_Caption', 'Email Cliente', '', NULL, NULL, '2023-05-22 14:28:58', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_EMAIL_CLIENTE_Index', '6', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_EMAIL_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_EMAIL_CLIENTE_Width', '207', '', NULL, NULL, '2023-05-22 14:25:23', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_Caption', 'Es Intracomunitario Cliente', '', NULL, NULL, '2023-05-22 14:29:02', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_Index', '22', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_Width', '178', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_Caption', 'Tiene IVA exento', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_Index', '21', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_Width', '155', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESIVA_RECARGO_CLIENTE_Caption', 'Aplicar RE', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESIVA_RECARGO_CLIENTE_Index', '18', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESIVA_RECARGO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESIVA_RECARGO_CLIENTE_Width', '94', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_Caption', 'Es Agricultor Cliente', '', NULL, NULL, '2023-05-22 14:29:13', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_Index', '23', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_Width', '119', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_Caption', 'Aplicar Retenciones Cliente', '', NULL, NULL, '2023-05-22 14:29:17', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_Index', '20', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_Width', '178', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 13:09:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_IBAN_CLIENTE_Index', '17', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_IBAN_CLIENTE_Visible', 'False', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_INSTANTEALTA_Index', '22', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_INSTANTEMODIF_Index', '21', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_IVA_EXENTO_CLIENTE_Index', '18', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_IVA_EXENTO_CLIENTE_Visible', 'False', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_IVA_RECARGO_CLIENTE_Caption', 'Aplicar RE Cliente', '', NULL, NULL, '2023-05-22 14:29:23', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_IVA_RECARGO_CLIENTE_Index', '18', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_IVA_RECARGO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_IVA_RECARGO_CLIENTE_Width', '77', '', NULL, NULL, '2023-01-31 09:48:51', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_MOVIL_CLIENTE_Caption', 'Teléfono Móvil Cliente', '', NULL, NULL, '2023-05-22 14:29:27', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_MOVIL_CLIENTE_Index', '4', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_MOVIL_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_MOVIL_CLIENTE_Width', '135', '', NULL, NULL, '2023-05-22 14:25:23', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_NIF_CLIENTE_Caption', 'Nif Cif Cliente', '', NULL, NULL, '2023-05-22 14:29:31', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_NIF_CLIENTE_Index', '3', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_NIF_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_NIF_CLIENTE_Width', '99', '', NULL, NULL, '2023-05-22 14:25:23', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_OBSERVACIONES_CLIENTE_Caption', 'Observaciones Cliente', '', NULL, NULL, '2023-05-22 14:29:34', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_OBSERVACIONES_CLIENTE_Index', '13', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_OBSERVACIONES_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_OBSERVACIONES_CLIENTE_Width', '131', '', NULL, NULL, '2023-05-22 14:25:23', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_PAIS_CLIENTE_Caption', 'País Cliente', '', NULL, NULL, '2023-05-22 14:29:39', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_PAIS_CLIENTE_Index', '12', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_PAIS_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_PAIS_CLIENTE_Width', '66', '', NULL, NULL, '2023-05-22 14:25:23', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_POBLACION_CLIENTE_Caption', 'Población Cliente', '', NULL, NULL, '2023-05-22 14:29:43', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_POBLACION_CLIENTE_Index', '9', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_POBLACION_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_POBLACION_CLIENTE_Width', '183', '', NULL, NULL, '2023-05-22 14:25:23', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_Caption', 'Provincia Cliente', '', NULL, NULL, '2023-05-22 14:29:46', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_Index', '10', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_Width', '97', '', NULL, NULL, '2023-05-22 14:25:23', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_Caption', 'Razón Social Cliente', '', NULL, NULL, '2023-05-22 14:29:50', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_Index', '2', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_Visible', 'True', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_Width', '118', '', NULL, NULL, '2023-05-22 14:25:23', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_REFERENCIA_CLIENTE_Caption', 'Referencia Cliente', '', NULL, NULL, '2023-05-22 14:29:55', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_REFERENCIA_CLIENTE_Index', '14', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_REFERENCIA_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_REFERENCIA_CLIENTE_Width', '97', '', NULL, NULL, '2023-05-22 14:25:23', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_RETENCIONES_CLIENTE_Caption', 'Aplicar Retenciones Cliente', '', NULL, NULL, '2023-05-22 14:30:00', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_RETENCIONES_CLIENTE_Index', '20', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_RETENCIONES_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_RETENCIONES_CLIENTE_Width', '129', '', NULL, NULL, '2023-01-31 09:48:51', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TELEFONO_CLIENTE_Caption', 'Teléfono fijo Cliente', '', NULL, NULL, '2023-05-22 14:30:04', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TELEFONO_CLIENTE_Index', '5', '', NULL, NULL, '2021-06-14 20:06:56', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TELEFONO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:56', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TELEFONO_CLIENTE_Width', '118', '', NULL, NULL, '2023-05-22 14:25:23', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_CLIENTE_Caption', 'Teléfono de Contacto Cliente', '', NULL, NULL, '2023-05-22 14:30:08', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_CLIENTE_Index', '16', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_CLIENTE_Width', '193', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 09:48:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_Index', '19', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_Visible', 'False', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_USUARIOALTA_Index', '23', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_USUARIOMODIF_Index', '24', '', NULL, NULL, '2023-01-31 09:48:51', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'cxGrdDBTabPrin_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2021-06-14 20:06:57', '2021-06-14 20:06:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblCodigoCliente', 'Código de Cliente', NULL, NULL, NULL, '2021-06-02 20:01:46', '2021-06-02 20:01:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblCodigoCliente_Caption', 'Código', '', NULL, NULL, '2021-06-14 19:41:57', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblCodPostal_Caption', 'Código Postal', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblContacto_Caption', 'Contacto', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblcxlbl18_Caption', 'Forma de Pago', '', NULL, NULL, '2023-01-31 09:49:12', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblDireccion1_Caption', 'Dirección 1', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblDireccion2_Caption', 'Dirección 2', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblEditMode_Caption', 'Navegando', '', NULL, NULL, '2021-06-14 19:41:57', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblEmail_Caption', 'Email', '', NULL, NULL, '2021-06-14 19:41:57', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblInstanteAlta_Caption', 'Instante Alta', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblInstanteModif_Caption', 'Instante Modificación', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblNif_Caption', 'NIF/CIF', '', NULL, NULL, '2021-06-14 19:41:57', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblNroCuenta_Caption', 'IBAN Bancario', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblObservaciones_Caption', 'Observaciones', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblPais_Caption', 'País', '', NULL, NULL, '2023-01-31 09:49:12', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblPoblacion_Caption', 'Población', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblProvincia_Caption', 'Provincia', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblRazonSocial', 'Razón Social', NULL, NULL, NULL, '2021-06-02 20:01:46', '2021-06-02 20:01:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblRazonSocial_Caption', 'Razón Social Fiscal', '', NULL, NULL, '2021-06-14 19:41:57', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblReferencia_Caption', 'Referencia', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblTablaOrigen_Caption', 'fza_clientes', '', NULL, NULL, '2021-06-14 19:41:57', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblTelefonoContacto_Caption', 'Teléfono Contacto', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblTeléfonos_Caption', 'Teléfonos', '', NULL, NULL, '2021-06-14 19:41:57', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblTextoaBuscar_Caption', 'Texto a buscar', '', NULL, NULL, '2021-06-14 19:41:53', '2021-06-14 19:41:53', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblTextoaBuscarPerfil_Caption', 'Texto a buscar', '', NULL, NULL, '2021-06-14 19:41:44', '2021-06-14 19:41:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblTextoLegal_Caption', 'Texto legal en Factura de Cliente', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblTextoLegal1_Caption', 'Serie por defecto en Documentos', '', NULL, NULL, '2023-01-31 09:49:12', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblTextoLegal11_Caption', 'Orden en Listados', '', NULL, NULL, '2023-05-22 14:48:05', '2023-05-22 14:48:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblTextoLegal2_Caption', 'Tarifa por defecto', '', NULL, NULL, '2023-01-31 09:49:12', '2023-01-31 09:49:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblUsuarioAlta_Caption', 'Usuario Alta', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'lblUsuarioModif_Caption', 'Usuario Últ. ModiF.', '', NULL, NULL, '2023-05-22 14:48:05', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'MostrarPerfil', 'True', NULL, NULL, NULL, '2021-06-07 23:45:26', '2021-06-07 20:25:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'oApplySkin', 'False', '', NULL, NULL, '2021-06-15 18:36:45', '2021-05-24 01:17:00', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'oApplyWidth', 'True', '', NULL, NULL, '2023-01-31 09:49:09', '2021-05-24 01:17:00', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'oBusqGlobal', 'Grid', '', NULL, NULL, '2023-05-22 14:48:03', '2021-05-14 20:40:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'oCreateItems', 'False', '', NULL, NULL, '2023-05-22 14:48:03', '2021-05-24 01:17:00', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2021-06-15 18:36:45', '2021-05-24 01:17:00', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tsDomicilioFiscal_Caption', '&1_Domicilio fiscal', '', NULL, NULL, '2023-05-22 14:48:05', '2021-06-14 19:41:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tsFicha_Caption', '&Ficha', '', NULL, NULL, '2021-06-14 19:41:29', '2021-06-14 19:41:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tsHistoriaFacturacion_Caption', '&3_Historia Facturación', '', NULL, NULL, '2023-05-22 14:48:05', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tsLista_Caption', '&Lista', '', NULL, NULL, '2021-06-14 19:39:18', '2021-06-14 19:39:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tsMasDatos_Caption', '&2_Más datos', '', NULL, NULL, '2023-05-22 14:48:05', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tsOtros_Caption', '&4_Otros', '', NULL, NULL, '2023-05-22 14:48:05', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tsPerfil_Caption', 'Perfil', '', NULL, NULL, '2021-06-14 19:41:35', '2021-06-14 19:41:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tsPresupuestos_Caption', 'Historia Presupuestos', '', NULL, NULL, '2021-06-14 19:41:58', '2021-06-14 19:41:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-22 12:21:23', '2023-05-22 12:21:23', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Caption', 'CODIGO_CLIENTE_FACTURA', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Index', '49', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Width', '236', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CODIGO_EMPRESA_FACTURA_Caption', 'Código Empresa', '', NULL, NULL, '2023-02-04 10:13:35', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CODIGO_EMPRESA_FACTURA_Index', '9', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CODIGO_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CODIGO_EMPRESA_FACTURA_Width', '142', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_COMENTARIOS_FACTURA_Caption', 'Comentarios', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_COMENTARIOS_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_COMENTARIOS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_COMENTARIOS_FACTURA_Width', '180', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Caption', 'Código Postal Cliente', '', NULL, NULL, '2023-05-22 14:30:30', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Index', '58', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Width', '240', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CPOSTAL_EMPRESA_FACTURA_Caption', 'Código Postal Empresa', '', NULL, NULL, '2023-02-04 10:13:40', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CPOSTAL_EMPRESA_FACTURA_Index', '19', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CPOSTAL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_CPOSTAL_EMPRESA_FACTURA_Width', '197', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DESCRIPCION_ZONA_IVA_Caption', 'Zona de IVA Empresa', '', NULL, NULL, '2023-05-22 14:30:50', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DESCRIPCION_ZONA_IVA_EMPRESA_FACTURA_Caption', 'Zona de IVA Empresa', '', NULL, NULL, '2023-05-22 14:30:46', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DESCRIPCION_ZONA_IVA_EMPRESA_FACTURA_Index', '21', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DESCRIPCION_ZONA_IVA_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DESCRIPCION_ZONA_IVA_EMPRESA_FACTURA_Width', '378', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DESCRIPCION_ZONA_IVA_Index', '27', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DESCRIPCION_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DESCRIPCION_ZONA_IVA_Width', '209', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Caption', 'Dirección Cliente', '', NULL, NULL, '2023-05-22 14:30:55', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Index', '54', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Width', '273', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION1_EMPRESA_FACTURA_Caption', 'Dirección Empresa', '', NULL, NULL, '2023-02-04 10:13:45', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION1_EMPRESA_FACTURA_Index', '14', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION1_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION1_EMPRESA_FACTURA_Width', '161', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Caption', 'Dirección 2 Cliente', '', NULL, NULL, '2023-05-22 14:31:03', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Index', '55', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Width', '273', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION2_EMPRESA_FACTURA_Caption', 'Dirección 2 Empresa', '', NULL, NULL, '2023-05-22 14:31:09', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION2_EMPRESA_FACTURA_Index', '15', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION2_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_DIRECCION2_EMPRESA_FACTURA_Width', '201', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Caption', 'Email Cliente', '', NULL, NULL, '2023-05-22 14:31:12', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Index', '53', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Width', '219', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_EMAIL_EMPRESA_FACTURA_Caption', 'Email Empresa', '', NULL, NULL, '2023-02-04 10:15:08', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_EMAIL_EMPRESA_FACTURA_Index', '13', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_EMAIL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_EMAIL_EMPRESA_FACTURA_Width', '126', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESAPLICA_RE_ZONA_IVA_FACTURA_Caption', 'ESAPLICA_RE_ZONA_IVA_FACTURA', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESAPLICA_RE_ZONA_IVA_FACTURA_Index', '24', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESAPLICA_RE_ZONA_IVA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-22 14:31:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESAPLICA_RE_ZONA_IVA_FACTURA_Width', '286', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIMP_INCL_TARIFA_CLIENTE_FACTURA_Caption', 'Tarifa incluye impuestos', '', NULL, NULL, '2023-05-22 14:31:39', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIMP_INCL_TARIFA_CLIENTE_FACTURA_Index', '65', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIMP_INCL_TARIFA_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIMP_INCL_TARIFA_CLIENTE_FACTURA_Width', '332', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Caption', 'Es Cliente Intracomunitario', '', NULL, NULL, '2023-05-22 14:31:51', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Index', '66', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Width', '361', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIRPF_IMP_INCL_ZONA_IVA_FACTURA_Caption', 'ESIRPF_IMP_INCL_ZONA_IVA_FACTURA', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIRPF_IMP_INCL_ZONA_IVA_FACTURA_Index', '23', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIRPF_IMP_INCL_ZONA_IVA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-22 14:32:04', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIRPF_IMP_INCL_ZONA_IVA_FACTURA_Width', '324', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVA_EXENTO_CLIENTE_FACTURA_Caption', 'Iva Exento Cliente', '', NULL, NULL, '2023-05-22 14:32:10', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVA_EXENTO_CLIENTE_FACTURA_Index', '61', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVA_EXENTO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVA_EXENTO_CLIENTE_FACTURA_Width', '287', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVA_RECARGO_CLIENTE_FACTURA_Caption', 'ESIVA_RECARGO_CLIENTE_FACTURA', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVA_RECARGO_CLIENTE_FACTURA_Index', '60', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVA_RECARGO_CLIENTE_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-22 14:32:19', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVA_RECARGO_CLIENTE_FACTURA_Width', '300', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Caption', 'ESIVAAGRICOLA_ZONA_IVA_FACTURA', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Index', '25', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-22 14:32:24', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Width', '313', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Caption', 'Cliente es REAGP', '', NULL, NULL, '2023-05-22 14:32:33', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Index', '62', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:32:49', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Width', '421', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Caption', 'Empresa es REAGP', '', NULL, NULL, '2023-05-22 14:32:44', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Index', '22', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Width', '428', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESRETENCIONES_CLIENTE_FACTURA_Caption', 'Cliente aplica IRPF', '', NULL, NULL, '2023-05-22 14:32:56', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESRETENCIONES_CLIENTE_FACTURA_Index', '63', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESRETENCIONES_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESRETENCIONES_CLIENTE_FACTURA_Width', '299', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESRETENCIONES_EMPRESA_FACTURA_Caption', 'Empresa aplica IRPF', '', NULL, NULL, '2023-05-22 14:33:03', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESRETENCIONES_EMPRESA_FACTURA_Index', '20', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESRETENCIONES_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESRETENCIONES_EMPRESA_FACTURA_Width', '306', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESVENTA_ACTIVO_FIJO_FACTURA_Caption', 'Venta Activo Fijo REAGP', '', NULL, NULL, '2023-05-22 14:33:09', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESVENTA_ACTIVO_FIJO_FACTURA_Index', '28', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESVENTA_ACTIVO_FIJO_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-22 14:33:11', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_ESVENTA_ACTIVO_FIJO_FACTURA_Width', '277', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_FECHA_FACTURA_Caption', 'Fecha Factura', '', NULL, NULL, '2023-05-22 14:26:18', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_FECHA_FACTURA_Index', '0', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_FECHA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_FECHA_FACTURA_Width', '120', '', NULL, NULL, '2023-05-22 14:26:13', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_FORMA_PAGO_FACTURA_Caption', 'Forma de Pago', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_FORMA_PAGO_FACTURA_Index', '8', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_FORMA_PAGO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_FORMA_PAGO_FACTURA_Width', '128', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Caption', 'Teléfono Móvil Cliente', '', NULL, NULL, '2023-05-22 14:33:22', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Index', '52', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Width', '223', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_MOVIL_EMPRESA_FACTURA_Caption', 'Móvil Empresa', '', NULL, NULL, '2023-02-04 10:15:13', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_MOVIL_EMPRESA_FACTURA_Index', '12', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_MOVIL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_MOVIL_EMPRESA_FACTURA_Width', '129', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NIF_CLIENTE_FACTURA_Caption', 'Nif Cliente', '', NULL, NULL, '2023-05-22 14:33:28', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NIF_CLIENTE_FACTURA_Index', '51', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NIF_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NIF_CLIENTE_FACTURA_Width', '196', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NIF_EMPRESA_FACTURA_Caption', 'Nif Empresa', '', NULL, NULL, '2023-02-04 10:15:17', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NIF_EMPRESA_FACTURA_Index', '11', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NIF_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NIF_EMPRESA_FACTURA_Width', '105', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NOMBRE_TARIFA_CLIENTE_Caption', 'Tarifa Cliente', '', NULL, NULL, '2023-05-22 14:33:34', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NOMBRE_TARIFA_CLIENTE_Index', '64', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NOMBRE_TARIFA_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NOMBRE_TARIFA_CLIENTE_Width', '221', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NRO_FACTURA_Caption', 'Nro Factura', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NRO_FACTURA_Index', '1', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NRO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_NRO_FACTURA_Width', '102', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Caption', 'País Cliente', '', NULL, NULL, '2023-05-22 14:33:39', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Index', '59', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Width', '202', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PAIS_EMPRESA_FACTURA_Caption', 'País Empresa', '', NULL, NULL, '2023-02-04 10:15:21', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PAIS_EMPRESA_FACTURA_Index', '18', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PAIS_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PAIS_EMPRESA_FACTURA_Width', '113', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PALABRA_REPORTS_ZONA_IVA_FACTURA_Caption', 'Palabra IVA', '', NULL, NULL, '2023-05-22 14:33:52', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PALABRA_REPORTS_ZONA_IVA_FACTURA_Index', '26', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PALABRA_REPORTS_ZONA_IVA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PALABRA_REPORTS_ZONA_IVA_FACTURA_Width', '334', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Caption', 'Población Cliente', '', NULL, NULL, '2023-05-22 14:33:56', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Index', '56', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Width', '263', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_POBLACION_EMPRESA_FACTURA_Caption', 'Población Empresa', '', NULL, NULL, '2023-02-04 10:15:26', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_POBLACION_EMPRESA_FACTURA_Index', '16', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_POBLACION_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_POBLACION_EMPRESA_FACTURA_Width', '163', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAE_FACTURA_Caption', '% IVA Exento', '', NULL, NULL, '2023-05-22 14:34:04', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAE_FACTURA_Index', '44', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAE_FACTURA_Width', '203', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAN_FACTURA_Caption', '% IVA Normal', '', NULL, NULL, '2023-05-22 14:34:10', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAN_FACTURA_Index', '29', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAN_FACTURA_Width', '207', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAR_FACTURA_Caption', '% IVA Reducido', '', NULL, NULL, '2023-05-22 14:34:15', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAR_FACTURA_Index', '34', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAR_FACTURA_Width', '205', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAS_FACTURA_Caption', '% IVA SúperReducido', '', NULL, NULL, '2023-05-22 14:34:22', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAS_FACTURA_Index', '39', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_IVAS_FACTURA_Width', '203', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_REE_FACTURA_Caption', '% RE Exento', '', NULL, NULL, '2023-05-22 14:34:32', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_REE_FACTURA_Index', '46', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_REE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_REE_FACTURA_Width', '195', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_REN_FACTURA_Caption', '% RE Normal', '', NULL, NULL, '2023-05-22 14:34:39', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_REN_FACTURA_Index', '31', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_REN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_REN_FACTURA_Width', '199', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RER_FACTURA_Caption', '% RE Reducido', '', NULL, NULL, '2023-05-22 14:34:48', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RER_FACTURA_Index', '36', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RER_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RER_FACTURA_Width', '197', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RES_FACTURA_Caption', '% RE SúperReducido', '', NULL, NULL, '2023-05-22 14:34:56', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RES_FACTURA_Index', '41', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RES_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RES_FACTURA_Width', '195', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Caption', '% Retención IRPF', '', NULL, NULL, '2023-02-04 10:16:17', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Index', '4', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Width', '145', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Caption', 'Provincia Cliente', '', NULL, NULL, '2023-05-22 14:35:02', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Index', '57', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Width', '259', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PROVINCIA_EMPRESA_FACTURA_Caption', 'Provincia Empresa', '', NULL, NULL, '2023-02-04 10:15:31', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PROVINCIA_EMPRESA_FACTURA_Index', '17', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PROVINCIA_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_PROVINCIA_EMPRESA_FACTURA_Width', '157', '', NULL, NULL, '2023-05-22 14:25:25', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Caption', 'Razón Social Cliente', '', NULL, NULL, '2023-05-22 14:35:09', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Index', '50', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Width', '285', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_RAZONSOCIAL_EMPRESA_FACTURA_Caption', 'Razón Social Empresa', '', NULL, NULL, '2023-02-04 10:15:51', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_RAZONSOCIAL_EMPRESA_FACTURA_Index', '10', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_RAZONSOCIAL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_RAZONSOCIAL_EMPRESA_FACTURA_Width', '187', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_SERIE_FACTURA_Caption', 'Serie Factura', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_SERIE_FACTURA_Index', '2', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_SERIE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_SERIE_FACTURA_Width', '111', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAE_FACTURA_Caption', 'Total B.I. Exento', '', NULL, NULL, '2023-05-22 14:35:21', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAE_FACTURA_Index', '48', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAE_FACTURA_Width', '242', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAN_FACTURA_Caption', 'Total B.I. Normal', '', NULL, NULL, '2023-05-22 14:35:27', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAN_FACTURA_Index', '33', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAN_FACTURA_Width', '246', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAR_FACTURA_Caption', 'Total B.I. Reducido', '', NULL, NULL, '2023-05-22 14:35:33', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAR_FACTURA_Index', '38', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAR_FACTURA_Width', '244', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAS_FACTURA_Caption', 'Total B.I. SúperReducido', '', NULL, NULL, '2023-05-22 14:35:40', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAS_FACTURA_Index', '43', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASEI_IVAS_FACTURA_Width', '242', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASES_FACTURA_Caption', 'Total B.I.', '', NULL, NULL, '2023-05-22 14:36:05', '2023-05-22 14:25:24', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASES_FACTURA_Index', '7', '', NULL, NULL, '2023-05-22 14:25:24', '2023-05-22 14:25:24', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASES_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:24', '2023-05-22 14:25:24', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_BASES_FACTURA_Width', '200', '', NULL, NULL, '2023-05-22 14:25:24', '2023-05-22 14:25:24', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Caption', 'Total IVA', '', NULL, NULL, '2023-02-04 10:19:15', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Index', '6', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Width', '80', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAE_FACTURA_Caption', 'Total IVA Exento', '', NULL, NULL, '2023-05-22 14:36:13', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAE_FACTURA_Index', '45', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAE_FACTURA_Width', '189', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAN_FACTURA_Caption', 'Total IVA Normal', '', NULL, NULL, '2023-05-22 14:36:17', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAN_FACTURA_Index', '30', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAN_FACTURA_Width', '193', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAR_FACTURA_Caption', 'Total IVA Reducido', '', NULL, NULL, '2023-05-22 14:36:22', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAR_FACTURA_Index', '35', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAR_FACTURA_Width', '191', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAS_FACTURA_Caption', 'Total IVA SúperReducido', '', NULL, NULL, '2023-05-22 14:36:27', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAS_FACTURA_Index', '40', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_IVAS_FACTURA_Width', '189', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Caption', 'Total Líquido Factura', '', NULL, NULL, '2023-05-22 14:36:35', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Index', '3', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Width', '117', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_REE_FACTURA_Caption', 'Total RE Exento', '', NULL, NULL, '2023-05-22 14:36:42', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_REE_FACTURA_Index', '47', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_REE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_REE_FACTURA_Width', '181', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_REN_FACTURA_Caption', 'Total RE Normal', '', NULL, NULL, '2023-05-22 14:36:46', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_REN_FACTURA_Index', '32', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_REN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_REN_FACTURA_Width', '185', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RER_FACTURA_Caption', 'Total RE Reducido', '', NULL, NULL, '2023-05-22 14:36:52', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RER_FACTURA_Index', '37', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RER_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RER_FACTURA_Width', '183', '', NULL, NULL, '2023-05-22 14:25:25', '2023-05-22 14:25:25', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RES_FACTURA_Caption', 'Total RE SúperReducido', '', NULL, NULL, '2023-05-22 14:36:57', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RES_FACTURA_Index', '42', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RES_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RES_FACTURA_Width', '181', '', NULL, NULL, '2023-05-22 14:25:26', '2023-05-22 14:25:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Caption', 'Total Retención IRFPF', '', NULL, NULL, '2023-02-04 10:19:26', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Index', '5', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:13:03', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Width', '186', '', NULL, NULL, '2023-05-22 14:25:24', '2023-02-04 10:13:03', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-22 12:22:16', '2023-05-22 12:22:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Caption', 'Cantidad', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Index', '4', '', NULL, NULL, '2023-02-04 10:35:49', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Caption', 'Código Artículo', '', NULL, NULL, '2023-01-31 10:08:10', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Index', '1', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Width', '164', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Caption', 'Descripción Linea Factura', '', NULL, NULL, '2023-01-31 10:08:19', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Index', '2', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Width', '207', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Caption', 'Fecha de Entrega', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Index', '10', '', NULL, NULL, '2023-02-04 10:37:26', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Width', '148', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Caption', 'Nro Linea Factura', '', NULL, NULL, '2023-01-31 10:08:27', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Index', '0', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Width', '123', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_NOMBRE_TIPO_IVA_Caption', 'Nombre Tipo IVA', '', NULL, NULL, '2023-05-22 14:37:13', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_NOMBRE_TIPO_IVA_Index', '150', '', NULL, NULL, '2023-05-22 14:37:20', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_NOMBRE_TIPO_IVA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_NOMBRE_TIPO_IVA_Width', '64', '', NULL, NULL, '2023-05-22 14:25:27', '2023-05-22 14:25:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Caption', 'Porcentaje IVA', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Index', '6', '', NULL, NULL, '2023-02-04 10:36:07', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Width', '127', '', NULL, NULL, '2023-02-04 10:13:03', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio con IVA', '', NULL, NULL, '2023-01-31 10:08:43', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Index', '8', '', NULL, NULL, '2023-05-22 14:25:27', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Width', '115', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio sin IVA', '', NULL, NULL, '2023-02-04 10:34:39', '2023-02-04 10:32:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Index', '5', '', NULL, NULL, '2023-02-04 10:35:55', '2023-02-04 10:32:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 10:32:58', '2023-02-04 10:32:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Width', '126', '', NULL, NULL, '2023-02-04 10:32:58', '2023-02-04 10:32:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Caption', 'Tipo Cantidad', '', NULL, NULL, '2023-01-31 13:09:52', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Index', '3', '', NULL, NULL, '2023-02-04 10:35:43', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Width', '164', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Caption', 'Tipo IVA', '', NULL, NULL, '2023-02-04 10:35:09', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Index', '9', '', NULL, NULL, '2023-02-04 10:36:22', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:09:48', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Width', '70', '', NULL, NULL, '2023-01-31 13:09:41', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Caption', 'Total', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Index', '9', '', NULL, NULL, '2023-05-22 14:25:27', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_KEY_PERFILES_Caption', 'KEY_PERFILES', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_KEY_PERFILES_Index', '1', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_KEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_KEY_PERFILES_Width', '132', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_SUBKEY_PERFILES_Caption', 'SUBKEY_PERFILES', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_SUBKEY_PERFILES_Index', '2', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_SUBKEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_SUBKEY_PERFILES_Width', '190', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_TYPE_BLOB_PERFILES_Caption', 'TYPE_BLOB_PERFILES', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_TYPE_BLOB_PERFILES_Index', '5', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_TYPE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_TYPE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_USUARIO_GRUPO_PERFILES_Caption', 'USUARIO_GRUPO_PERFILES', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_USUARIO_GRUPO_PERFILES_Index', '0', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_USUARIO_GRUPO_PERFILES_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_USUARIO_GRUPO_PERFILES_Width', '167', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_BLOB_PERFILES_Caption', 'VALUE_BLOB_PERFILES', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_BLOB_PERFILES_Index', '6', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_PERFILES_Caption', 'VALUE_PERFILES', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_PERFILES_Index', '3', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_PERFILES_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_PERFILES_Width', '112', '', NULL, NULL, '2023-05-22 14:25:24', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_TEXT_PERFILES_Caption', 'VALUE_TEXT_PERFILES', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_TEXT_PERFILES_Index', '4', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_TEXT_PERFILES_Visible', 'True', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoClientes', 'tvPerfil_VALUE_TEXT_PERFILES_Width', '140', '', NULL, NULL, '2023-01-31 10:06:14', '2023-01-31 10:06:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'btnAceptar_Caption', '&Aceptar', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'btnCancelar_Caption', '&Cancelar', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'btnCancelar1_Caption', '&Cancelar', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'btnCargarCaptions_Caption', '&Cargar captions', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'btnCargarColumnas_Caption', '&Cargar columnas', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'btnCargarVblesGlob_Caption', '&Cargar Vbles Globales', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'btnGrabar_Caption', '&Grabar', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'btnSalir_Caption', '&Salir', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ACTIVO_CLIENTE_Caption', 'Activo', '', NULL, NULL, '2023-01-25 09:53:27', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ACTIVO_CLIENTE_Index', '1', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ACTIVO_CLIENTE_Visible', 'False', '', NULL, NULL, '2023-01-24 21:15:56', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ACTIVO_CLIENTE_Width', '20', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CODIGO_CLIENTE_Caption', 'Código Cliente', '', NULL, NULL, '2023-01-24 21:16:11', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CODIGO_CLIENTE_Index', '0', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CODIGO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CODIGO_CLIENTE_Width', '126', '', NULL, NULL, '2023-01-24 21:26:32', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CODIGO_FORMA_PAGO_CLIENTE_Caption', 'Forma de Pago', '', NULL, NULL, '2023-01-24 21:16:16', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CODIGO_FORMA_PAGO_CLIENTE_Index', '23', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CODIGO_FORMA_PAGO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CODIGO_FORMA_PAGO_CLIENTE_Width', '139', '', NULL, NULL, '2023-01-24 21:30:15', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CONTACTO_CLIENTE_Caption', 'Contacto', '', NULL, NULL, '2023-01-24 21:16:22', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CONTACTO_CLIENTE_Index', '14', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CONTACTO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CONTACTO_CLIENTE_Width', '164', '', NULL, NULL, '2023-01-24 21:26:33', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_Caption', 'Código Postal', '', NULL, NULL, '2023-01-24 21:16:27', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_Index', '10', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_Width', '141', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_Caption', 'Dirección 1', '', NULL, NULL, '2023-01-24 21:16:32', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_Index', '6', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_Width', '312', '', NULL, NULL, '2023-01-24 21:30:14', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_Caption', 'Dirección 2', '', NULL, NULL, '2023-01-24 21:16:36', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_Index', '7', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_Width', '86', '', NULL, NULL, '2023-01-24 21:26:33', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_EMAIL_CLIENTE_Caption', 'Email', '', NULL, NULL, '2023-01-24 21:16:39', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_EMAIL_CLIENTE_Index', '5', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_EMAIL_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_EMAIL_CLIENTE_Width', '249', '', NULL, NULL, '2023-01-24 21:30:14', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_Caption', 'Intracomunitario', '', NULL, NULL, '2023-01-25 09:53:44', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_Index', '22', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_Width', '256', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_Caption', 'IVA Exento', '', NULL, NULL, '2023-01-25 09:53:49', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_Index', '20', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_Width', '193', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESIVA_RECARGO_CLIENTE_Caption', 'Tiene Recargo', '', NULL, NULL, '2023-01-25 09:53:55', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESIVA_RECARGO_CLIENTE_Index', '18', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESIVA_RECARGO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESIVA_RECARGO_CLIENTE_Width', '206', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_Caption', 'Es Agricultor REAGP', '', NULL, NULL, '2023-01-25 09:54:06', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_Index', '21', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_Width', '315', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_Caption', 'Retiene IRPF', '', NULL, NULL, '2023-01-25 09:54:14', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_Index', '19', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_Width', '203', '', NULL, NULL, '2023-01-25 09:52:34', '2023-01-25 09:52:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_IBAN_CLIENTE_Caption', 'Nro Cuenta IBAN', '', NULL, NULL, '2023-01-24 21:16:49', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_IBAN_CLIENTE_Index', '17', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_IBAN_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_IBAN_CLIENTE_Width', '143', '', NULL, NULL, '2023-01-24 21:26:33', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_INSTANTEALTA_Caption', 'INSTANTEALTA', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_INSTANTEALTA_Index', '28', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2023-01-24 21:17:20', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_INSTANTEALTA_Width', '168', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_INSTANTEMODIF_Caption', 'INSTANTEMODIF', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_INSTANTEMODIF_Index', '27', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2023-01-24 21:17:24', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_INSTANTEMODIF_Width', '168', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_MOVIL_CLIENTE_Caption', 'Móvil', '', NULL, NULL, '2023-01-24 21:17:45', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_MOVIL_CLIENTE_Index', '4', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_MOVIL_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_MOVIL_CLIENTE_Width', '136', '', NULL, NULL, '2023-01-24 21:30:14', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_NIF_CLIENTE_Caption', 'Nif', '', NULL, NULL, '2023-01-24 21:17:47', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_NIF_CLIENTE_Index', '3', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_NIF_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_NIF_CLIENTE_Width', '142', '', NULL, NULL, '2023-01-24 21:30:14', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_OBSERVACIONES_CLIENTE_Caption', 'Observaciones', '', NULL, NULL, '2023-01-24 21:17:51', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_OBSERVACIONES_CLIENTE_Index', '12', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_OBSERVACIONES_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_OBSERVACIONES_CLIENTE_Width', '196', '', NULL, NULL, '2023-01-24 21:30:15', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_PAIS_CLIENTE_Caption', 'País', '', NULL, NULL, '2023-01-24 21:17:55', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_PAIS_CLIENTE_Index', '11', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_PAIS_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_PAIS_CLIENTE_Width', '56', '', NULL, NULL, '2023-01-24 21:26:33', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_POBLACION_CLIENTE_Caption', 'Población', '', NULL, NULL, '2023-01-24 21:18:00', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_POBLACION_CLIENTE_Index', '8', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_POBLACION_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_POBLACION_CLIENTE_Width', '227', '', NULL, NULL, '2023-01-24 21:30:14', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_Caption', 'Provincia', '', NULL, NULL, '2023-01-24 21:18:04', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_Index', '9', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_Width', '177', '', NULL, NULL, '2023-01-24 21:30:14', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_Caption', 'Razón Social', '', NULL, NULL, '2023-01-24 21:18:09', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_Index', '2', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_Width', '105', '', NULL, NULL, '2023-01-24 21:26:32', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_REFERENCIA_CLIENTE_Caption', 'Referencia', '', NULL, NULL, '2023-01-24 21:18:13', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_REFERENCIA_CLIENTE_Index', '13', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_REFERENCIA_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_REFERENCIA_CLIENTE_Width', '87', '', NULL, NULL, '2023-01-25 13:28:20', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_SERIE_CONTADOR_CLIENTE_Caption', 'Serie Particular de Facturación', '', NULL, NULL, '2023-01-24 21:27:53', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_SERIE_CONTADOR_CLIENTE_Index', '24', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_SERIE_CONTADOR_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_SERIE_CONTADOR_CLIENTE_Width', '227', '', NULL, NULL, '2023-01-24 21:30:15', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TARIFA_ARTICULO_CLIENTE_Caption', 'Tarifa Artículos', '', NULL, NULL, '2023-01-25 09:55:24', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TARIFA_ARTICULO_CLIENTE_Index', '25', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TARIFA_ARTICULO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TARIFA_ARTICULO_CLIENTE_Width', '209', '', NULL, NULL, '2023-01-24 21:30:15', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TELEFONO_CLIENTE_Caption', 'Teléfono', '', NULL, NULL, '2023-01-24 21:18:38', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TELEFONO_CLIENTE_Index', '16', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TELEFONO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TELEFONO_CLIENTE_Width', '161', '', NULL, NULL, '2023-01-25 13:28:20', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_CLIENTE_Caption', 'Teléfono Contacto', '', NULL, NULL, '2023-01-24 21:18:44', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_CLIENTE_Index', '15', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:08', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_CLIENTE_Width', '151', '', NULL, NULL, '2023-01-24 21:26:33', '2023-01-24 20:42:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_Caption', 'Texto en Factura', '', NULL, NULL, '2023-01-24 21:18:49', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_Index', '26', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_Width', '605', '', NULL, NULL, '2023-01-25 09:56:31', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_USUARIOALTA_Caption', 'USUARIOALTA', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_USUARIOALTA_Index', '29', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2023-01-24 21:18:55', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_USUARIOALTA_Width', '906', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_USUARIOMODIF_Caption', 'USUARIOMODIF', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_USUARIOMODIF_Index', '30', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2023-01-24 21:18:57', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'cxGrdDBTabPrin_USUARIOMODIF_Width', '906', '', NULL, NULL, '2023-01-24 20:42:09', '2023-01-24 20:42:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'lblEditMode_Caption', 'Navegando', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'lblTablaOrigen_Caption', 'vi_cli_busquedas', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'lblTextoaBuscar_Caption', 'Texto a buscar', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'lblTextoaBuscarPerfil_Caption', 'Texto a buscar', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'oApplySkin', 'False', '', NULL, NULL, '2023-01-24 21:08:27', '2023-01-24 21:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'oApplyWidth', 'True', '', NULL, NULL, '2023-01-24 21:08:27', '2023-01-24 21:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'oBusqGlobal', 'Grid', '', NULL, NULL, '2023-01-24 21:09:20', '2023-01-24 21:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'oCreateItems', 'True', '', NULL, NULL, '2023-01-24 21:12:01', '2023-01-24 21:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2023-01-24 21:08:27', '2023-01-24 21:08:27', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'tsFicha_Caption', '&Ficha', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'tsLista_Caption', '&Lista', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoCliFacSearch', 'tsPerfil_Caption', 'Perfil', '', NULL, NULL, '2023-01-24 19:26:16', '2023-01-24 19:26:16', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'btnCancelar_Caption', '&Cancelar', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'btnCargarCaptions_Caption', '&Cargar captions', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'btnCargarColumnas_Caption', '&Cargar columnas', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'btnCargarVblesGlob_Caption', '&Cargar Vbles Globales', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'btnGrabar_Caption', '&Grabar', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'btnSalir_Caption', '&Salir', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_ACTIVO_CONTADOR_Caption', 'EsActivo', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_ACTIVO_CONTADOR_Index', '4', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_ACTIVO_CONTADOR_Visible', 'True', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_ACTIVO_CONTADOR_Width', '88', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_CONTADOR_CONTADOR_Caption', 'Contador', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_CONTADOR_CONTADOR_Index', '2', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_CONTADOR_CONTADOR_Visible', 'True', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_CONTADOR_CONTADOR_Width', '218', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_DEFAULT_CONTADOR_Caption', 'Es contador por defecto', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_DEFAULT_CONTADOR_Index', '5', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_DEFAULT_CONTADOR_Visible', 'True', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_DEFAULT_CONTADOR_Width', '221', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_INSTANTEALTA_Index', '7', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_INSTANTEMODIF_Index', '6', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_NUMDIGIT_CONTADOR_Caption', 'Digitos Contador', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_NUMDIGIT_CONTADOR_Index', '3', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_NUMDIGIT_CONTADOR_Visible', 'True', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_NUMDIGIT_CONTADOR_Width', '146', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_SERIE_CONTADOR_Caption', 'Serie', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_SERIE_CONTADOR_Index', '1', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_SERIE_CONTADOR_Visible', 'True', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_SERIE_CONTADOR_Width', '160', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_TIPODOC_CONTADOR_Caption', 'Tipo de Documento', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_TIPODOC_CONTADOR_Index', '0', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_TIPODOC_CONTADOR_Visible', 'True', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_TIPODOC_CONTADOR_Width', '186', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_USUARIOALTA_Index', '8', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_USUARIOMODIF_Index', '9', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'cxGrdDBTabPrin_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2023-01-22 09:51:18', '2023-01-22 09:51:18', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'lblEditMode_Caption', 'Navegando', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'lblTablaOrigen_Caption', 'fza_contadores', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'lblTextoaBuscar_Caption', 'Texto a buscar', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'lblTextoaBuscarPerfil_Caption', 'Texto a buscar', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'oApplySkin', 'False', '', NULL, NULL, '2023-01-22 10:13:36', '2023-01-22 10:13:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'oApplyWidth', 'True', '', NULL, NULL, '2023-01-22 10:13:36', '2023-01-22 10:13:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'oBusqGlobal', 'Database', '', NULL, NULL, '2023-01-22 10:13:36', '2023-01-22 10:13:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'oCreateItems', 'False', '', NULL, NULL, '2023-01-22 10:13:36', '2023-01-22 10:13:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2023-01-22 10:13:36', '2023-01-22 10:13:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'tsFicha_Caption', '&Ficha', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'tsLista_Caption', '&Lista', '', NULL, NULL, '2023-01-22 10:13:26', '2023-01-22 10:13:26', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoContadores', 'tsPerfil_Caption', 'Perfil', '', NULL, NULL, '2023-01-22 10:13:32', '2023-01-22 10:13:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'btnAceptar_Caption', '&Aceptar', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'btnCancelar_Caption', '&Cancelar', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'btnCancelar1_Caption', '&Cancelar', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'btnCargarCaptions_Caption', '&Cargar captions', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'btnCargarColumnas_Caption', '&Cargar columnas', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'btnCargarVblesGlob_Caption', '&Cargar Vbles Globales', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'btnGrabar_Caption', '&Grabar', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'btnSalir_Caption', '&Salir', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-13 13:23:26', '2023-05-13 13:22:40', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_CODIGO_EMPRESA_Caption', 'Código Empresa', '', NULL, NULL, '2023-01-27 09:31:45', '2022-10-26 16:28:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_CODIGO_EMPRESA_Index', '0', '', NULL, NULL, '2022-10-26 16:28:51', '2022-10-26 16:28:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_CODIGO_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:51', '2022-10-26 16:28:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_CODIGO_EMPRESA_Width', '126', '', NULL, NULL, '2023-01-27 09:35:31', '2022-10-26 16:28:51', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_Caption', 'Código Postal', '', NULL, NULL, '2023-01-27 09:31:51', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_Index', '7', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_Width', '109', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_Caption', 'Dirección Principal', '', NULL, NULL, '2023-01-27 09:32:09', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_Index', '5', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_Width', '137', '', NULL, NULL, '2023-01-27 09:35:31', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_Caption', 'Dirección Complementaria', '', NULL, NULL, '2023-01-27 09:32:16', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_Index', '6', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_Width', '193', '', NULL, NULL, '2023-01-27 09:35:31', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_EMAIL_EMPRESA_Caption', 'Email', '', NULL, NULL, '2023-01-27 09:32:03', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_EMAIL_EMPRESA_Index', '4', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_EMAIL_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_EMAIL_EMPRESA_Width', '204', '', NULL, NULL, '2023-01-27 09:38:24', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA_Caption', 'Es Agricultor REAGP', '', NULL, NULL, '2023-01-28 10:17:46', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA_Index', '14', '', NULL, NULL, '2023-01-28 10:16:12', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA_Visible', 'True', '', NULL, NULL, '2023-01-28 10:16:12', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA_Width', '321', '', NULL, NULL, '2023-01-28 10:16:12', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_ESRETENCIONES_EMPRESA_Caption', 'Aplica retenciones IRPF', '', NULL, NULL, '2023-01-28 10:17:14', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_ESRETENCIONES_EMPRESA_Index', '13', '', NULL, NULL, '2023-01-28 10:16:12', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_ESRETENCIONES_EMPRESA_Visible', 'True', '', NULL, NULL, '2023-01-28 10:16:12', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_ESRETENCIONES_EMPRESA_Width', '209', '', NULL, NULL, '2023-01-28 10:16:12', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_EMPRESA_Caption', 'Grupo Iva', '', NULL, NULL, '2023-01-28 10:17:22', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_EMPRESA_Index', '12', '', NULL, NULL, '2023-01-28 10:16:12', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_EMPRESA_Visible', 'True', '', NULL, NULL, '2023-01-28 10:16:12', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_EMPRESA_Width', '226', '', NULL, NULL, '2023-01-28 10:16:12', '2023-01-28 10:16:12', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_MOVIL_EMPRESA_Caption', 'Teléfono Móvil', '', NULL, NULL, '2023-01-27 09:36:07', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_MOVIL_EMPRESA_Index', '3', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_MOVIL_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_MOVIL_EMPRESA_Width', '133', '', NULL, NULL, '2023-01-27 09:35:31', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_NIF_EMPRESA_Caption', 'Nif', '', NULL, NULL, '2023-01-27 09:36:09', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_NIF_EMPRESA_Index', '2', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_NIF_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_NIF_EMPRESA_Width', '110', '', NULL, NULL, '2023-01-27 09:35:31', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_PAIS_EMPRESA_Caption', 'País', '', NULL, NULL, '2023-01-27 09:36:12', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_PAIS_EMPRESA_Index', '10', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_PAIS_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_PAIS_EMPRESA_Width', '120', '', NULL, NULL, '2023-01-27 09:35:31', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_POBLACION_EMPRESA_Caption', 'Población', '', NULL, NULL, '2023-01-27 09:36:15', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_POBLACION_EMPRESA_Index', '8', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_POBLACION_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_POBLACION_EMPRESA_Width', '189', '', NULL, NULL, '2023-01-27 09:35:31', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_Caption', 'Provincia', '', NULL, NULL, '2023-01-27 09:36:19', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_Index', '9', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_Width', '170', '', NULL, NULL, '2023-01-27 09:35:31', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_Caption', 'Razón Social', '', NULL, NULL, '2023-01-27 09:36:24', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_Index', '1', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_Width', '248', '', NULL, NULL, '2023-01-27 09:38:24', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_REGIMENESPECIALAGRICOLA_EMPRESA_Caption', 'Es Agricultor o REAGP', '', NULL, NULL, '2023-01-27 09:36:36', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_REGIMENESPECIALAGRICOLA_EMPRESA_Index', '14', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_REGIMENESPECIALAGRICOLA_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_REGIMENESPECIALAGRICOLA_EMPRESA_Width', '176', '', NULL, NULL, '2023-01-27 09:38:24', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_Caption', 'Aplica retenciones', '', NULL, NULL, '2023-01-27 09:36:43', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_Index', '13', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_Width', '150', '', NULL, NULL, '2023-01-27 09:38:24', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_SERIE_CONTADOR_EMPRESA_Caption', 'Serie Documentos', '', NULL, NULL, '2023-01-27 09:36:50', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_SERIE_CONTADOR_EMPRESA_Index', '11', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_SERIE_CONTADOR_EMPRESA_Visible', 'True', '', NULL, NULL, '2022-10-26 16:28:52', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_SERIE_CONTADOR_EMPRESA_Width', '144', '', NULL, NULL, '2023-01-27 09:38:24', '2022-10-26 16:28:52', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_Caption', 'Texto legal facturas', '', NULL, NULL, '2023-01-27 09:37:00', '2023-01-27 09:35:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_Index', '15', '', NULL, NULL, '2023-01-27 09:35:31', '2023-01-27 09:35:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_Visible', 'True', '', NULL, NULL, '2023-01-27 09:35:31', '2023-01-27 09:35:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_Width', '572', '', NULL, NULL, '2023-01-27 09:38:54', '2023-01-27 09:35:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'lblEditMode_Caption', 'Navegando', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'lblTablaOrigen_Caption', 'VI_EMP_BUSQUEDAS', '', NULL, NULL, '2023-01-27 09:39:13', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'lblTextoaBuscar_Caption', 'Texto a buscar', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'lblTextoaBuscarPerfil_Caption', 'Texto a buscar', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'oApplySkin', 'False', '', NULL, NULL, '2022-10-26 16:29:04', '2022-10-26 16:29:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'oApplyWidth', 'True', '', NULL, NULL, '2022-10-26 16:29:04', '2022-10-26 16:29:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'oBusqGlobal', 'Database', '', NULL, NULL, '2022-10-26 16:29:04', '2022-10-26 16:29:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'oCreateItems', 'True', '', NULL, NULL, '2023-01-27 09:59:12', '2022-10-26 16:29:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2022-10-26 16:29:04', '2022-10-26 16:29:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'tsFicha_Caption', '&Ficha', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'tsLista_Caption', '&Lista', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpFacSearch', 'tsPerfil_Caption', 'Perfil', '', NULL, NULL, '2022-10-26 16:29:05', '2022-10-26 16:29:05', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'btnAddIRPF_Caption', 'Añadir IRPF', '', NULL, NULL, '2023-01-29 10:38:36', '2023-01-29 10:38:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'btnCancelar_Caption', '&Cancelar', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'btnCargarCaptions_Caption', '&Cargar captions', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'btnCargarColumnas_Caption', '&Cargar columnas', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'btnCargarVblesGlob_Caption', '&Cargar Vbles Globales', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'btnGrabar_Caption', '&Grabar', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'btnNuevaEmpresa_Caption', '&Nueva Empresa', '', NULL, NULL, '2023-05-22 14:47:25', '2023-01-29 10:38:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'btnSalir_Caption', '&Salir', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'chkActivo_Caption', 'Activo', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'chkAplicaRetenciones_Caption', 'Es Autónomo', '', NULL, NULL, '2023-01-29 10:38:36', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'chkIVAExento_Caption', 'IVA Exento', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'chkRegimenEspecial_Caption', 'Régimen especial agricola/ganadero/pesca', '', NULL, NULL, '2023-01-29 10:38:36', '2023-01-29 10:38:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-20 12:34:07', '2023-05-20 12:34:07', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ACTIVA_EMPRESA_Caption', 'Activo', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ACTIVA_EMPRESA_Index', '2', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ACTIVA_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ACTIVA_EMPRESA_Width', '52', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ACTIVO_EMPRESA_Caption', 'Activo', '', NULL, NULL, '2023-01-29 10:38:29', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ACTIVO_EMPRESA_Index', '2', '', NULL, NULL, '2023-01-29 10:38:29', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ACTIVO_EMPRESA_Visible', 'True', '', NULL, NULL, '2023-01-29 10:38:29', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ACTIVO_EMPRESA_Width', '59', '', NULL, NULL, '2023-05-22 14:43:03', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_CODIGO_EMPRESA_Caption', 'Código', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_CODIGO_EMPRESA_Index', '0', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_CODIGO_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_CODIGO_EMPRESA_Width', '67', '', NULL, NULL, '2023-05-22 14:43:03', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_Caption', 'Código Postal', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_Index', '11', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_Width', '126', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Caption', 'Zona de IVA principal', '', NULL, NULL, '2023-02-03 10:39:43', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Index', '12', '', NULL, NULL, '2023-05-20 12:36:44', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-02-03 10:39:43', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Width', '195', '', NULL, NULL, '2023-05-22 14:43:04', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_Caption', 'Direción', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_Index', '7', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_Width', '101', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_Caption', 'Más Dirección', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_Index', '8', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_Width', '128', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_EMAIL_EMPRESA_Caption', 'Email', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_EMAIL_EMPRESA_Index', '6', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_EMAIL_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_EMAIL_EMPRESA_Width', '155', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA_Caption', 'Es REAGP', '', NULL, NULL, '2023-01-29 10:38:29', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA_Index', '13', '', NULL, NULL, '2023-05-20 12:36:45', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA_Visible', 'True', '', NULL, NULL, '2023-01-29 10:38:29', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA_Width', '86', '', NULL, NULL, '2023-05-22 14:43:04', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ESRETENCIONES_EMPRESA_Caption', 'Aplica Retenciones', '', NULL, NULL, '2023-01-29 10:38:29', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ESRETENCIONES_EMPRESA_Index', '14', '', NULL, NULL, '2023-05-20 12:36:45', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ESRETENCIONES_EMPRESA_Visible', 'True', '', NULL, NULL, '2023-01-29 10:38:29', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ESRETENCIONES_EMPRESA_Width', '170', '', NULL, NULL, '2023-05-22 14:43:04', '2023-01-29 10:38:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_EMPRESA_Caption', 'GRUPO_ZONA_IVA_EMPRESA', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_EMPRESA_Index', '22', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_EMPRESA_Visible', 'False', '', NULL, NULL, '2023-02-03 10:40:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_EMPRESA_Width', '94', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_INSTANTEALTA_Caption', 'INSTANTEALTA', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_INSTANTEALTA_Index', '17', '', NULL, NULL, '2023-05-20 12:36:45', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2021-06-18 18:30:09', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_INSTANTEALTA_Width', '130', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_INSTANTEMODIF_Caption', 'INSTANTEMODIF', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_INSTANTEMODIF_Index', '16', '', NULL, NULL, '2023-05-20 12:36:45', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2021-06-18 18:30:05', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_INSTANTEMODIF_Width', '130', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_IVA_EXENTO_EMPRESA_Caption', 'Iva Exento', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_IVA_EXENTO_EMPRESA_Index', '12', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_IVA_EXENTO_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_IVA_EXENTO_EMPRESA_Width', '20', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_MOVIL_EMPRESA_Caption', 'Móvil', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_MOVIL_EMPRESA_Index', '5', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_MOVIL_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_MOVIL_EMPRESA_Width', '105', '', NULL, NULL, '2023-05-22 14:43:03', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_NIF_EMPRESA_Caption', 'Nif', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_NIF_EMPRESA_Index', '4', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_NIF_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_NIF_EMPRESA_Width', '107', '', NULL, NULL, '2023-05-22 14:43:03', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ORDEN_EMPRESA_Caption', 'Orden', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ORDEN_EMPRESA_Index', '1', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ORDEN_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_ORDEN_EMPRESA_Width', '58', '', NULL, NULL, '2023-05-22 14:43:03', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_PAIS_EMPRESA_Caption', 'PAIS_EMPRESA', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_PAIS_EMPRESA_Index', '21', '', NULL, NULL, '2023-02-03 10:39:43', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_PAIS_EMPRESA_Visible', 'False', '', NULL, NULL, '2023-02-03 10:40:54', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_PAIS_EMPRESA_Width', '1354', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_POBLACION_EMPRESA_Caption', 'Población', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_POBLACION_EMPRESA_Index', '9', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_POBLACION_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_POBLACION_EMPRESA_Width', '102', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_Caption', 'Provincia', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_Index', '10', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_Width', '98', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_Caption', 'Razón Social', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_Index', '3', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_Width', '148', '', NULL, NULL, '2023-05-22 14:43:03', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_Caption', 'Aplica Retenciones', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_Index', '13', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_Width', '115', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_SERIE_CONTADOR_EMPRESA_Caption', 'Serie por Defecto en Facturas', '', NULL, NULL, '2023-02-03 10:39:43', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_SERIE_CONTADOR_EMPRESA_Index', '20', '', NULL, NULL, '2023-02-03 10:39:43', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_SERIE_CONTADOR_EMPRESA_Visible', 'True', '', NULL, NULL, '2023-02-03 10:39:43', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_SERIE_CONTADOR_EMPRESA_Width', '265', '', NULL, NULL, '2023-05-22 14:43:04', '2023-02-03 10:39:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_Caption', 'Texto en Factura', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_Index', '15', '', NULL, NULL, '2023-05-20 12:36:45', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:38', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_Width', '678', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_USUARIOALTA_Caption', 'USUARIOALTA', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_USUARIOALTA_Index', '18', '', NULL, NULL, '2023-05-20 12:36:45', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2021-06-18 18:29:55', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_USUARIOALTA_Width', '88', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_USUARIOMODIF_Caption', 'USUARIOMODIF', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_USUARIOMODIF_Index', '19', '', NULL, NULL, '2023-05-20 12:36:45', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2021-06-18 18:29:52', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'cxGrdDBTabPrin_USUARIOMODIF_Width', '96', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lbl1_Caption', 'Canal de IVA', '', NULL, NULL, '2023-01-29 10:38:36', '2023-01-29 10:38:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblCodigo_Caption', 'Código', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblDireccion_Caption', 'Dirección', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblEditMode_Caption', 'Navegando', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblEmail_Caption', 'Email', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblInstanteAlta_Caption', 'Instante Alta', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblInstanteModif_Caption', 'Instante Modificación', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblMovil_Caption', 'Móvil', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblNif_Caption', 'Nif', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblNombre_Caption', 'Nombre', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblOrden_Caption', 'Orden en Listados', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblPoblacion_Caption', 'Población', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblProvincia_Caption', 'Provincia', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblTablaOrigen_Caption', 'fza_empresas', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblTextoaBuscar_Caption', 'Texto a buscar', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblTextoaBuscarPerfil_Caption', 'Texto a buscar', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblTextoLegal_Caption', 'Texto legal en Facturas', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblTextoLegal1_Caption', 'Serie por defecto en Documentos', '', NULL, NULL, '2023-01-29 10:38:36', '2023-01-29 10:38:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblUsuarioAlta_Caption', 'Usuario Alta', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'lblUsuarioModif_Caption', 'Usuario Última Modificación', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'oApplySkin', 'False', '', NULL, NULL, '2021-06-18 18:17:43', '2021-06-18 18:17:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'oApplyWidth', 'True', '', NULL, NULL, '2021-06-18 18:17:43', '2021-06-18 18:17:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'oBusqGlobal', 'Database', '', NULL, NULL, '2021-06-18 18:17:43', '2021-06-18 18:17:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'oCreateItems', 'True', '', NULL, NULL, '2023-02-05 08:36:42', '2021-06-18 18:17:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2021-06-18 18:17:43', '2021-06-18 18:17:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tsFicha_Caption', '&Ficha', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tsLista_Caption', '&Lista', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tsMasDatos_Caption', 'Más Datos', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tsOtros_Caption', 'Otros', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tsPerfil_Caption', 'Perfil', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tsRetenciones_Caption', 'Retenciones', '', NULL, NULL, '2021-06-18 18:17:42', '2021-06-18 18:17:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-20 12:34:36', '2023-05-20 12:34:36', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Caption', 'Código Cliente', '', NULL, NULL, '2023-05-20 13:30:02', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Index', '9', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Width', '131', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CODIGO_EMPRESA_FACTURA_Caption', 'Código Empresa', '', NULL, NULL, '2023-05-20 13:30:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CODIGO_EMPRESA_FACTURA_Index', '53', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CODIGO_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CODIGO_EMPRESA_FACTURA_Width', '142', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_COMENTARIOS_FACTURA_Caption', 'Comentarios', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_COMENTARIOS_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_COMENTARIOS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_COMENTARIOS_FACTURA_Width', '180', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Caption', 'Código Postal Cliente', '', NULL, NULL, '2023-05-20 13:30:13', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Index', '18', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Width', '186', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CPOSTAL_EMPRESA_FACTURA_Caption', 'Código Postal Empresa', '', NULL, NULL, '2023-05-20 13:30:18', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CPOSTAL_EMPRESA_FACTURA_Index', '63', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CPOSTAL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_CPOSTAL_EMPRESA_FACTURA_Width', '197', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DESCRIPCION_ZONA_IVA_Caption', 'Zona IVA', '', NULL, NULL, '2023-05-20 13:30:23', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DESCRIPCION_ZONA_IVA_EMPRESA_FACTURA_Caption', 'Zona IVA', '', NULL, NULL, '2023-05-20 13:30:55', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DESCRIPCION_ZONA_IVA_EMPRESA_FACTURA_Index', '65', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DESCRIPCION_ZONA_IVA_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DESCRIPCION_ZONA_IVA_EMPRESA_FACTURA_Width', '79', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DESCRIPCION_ZONA_IVA_Index', '31', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DESCRIPCION_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DESCRIPCION_ZONA_IVA_Width', '79', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Caption', 'Direccion Cliente', '', NULL, NULL, '2023-05-20 13:30:58', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Index', '14', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Width', '150', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION1_EMPRESA_FACTURA_Caption', 'Dirección Empresa', '', NULL, NULL, '2023-05-20 13:31:02', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION1_EMPRESA_FACTURA_Index', '58', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION1_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION1_EMPRESA_FACTURA_Width', '161', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Caption', 'Dirección Cliente 2', '', NULL, NULL, '2023-05-20 13:31:07', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Index', '15', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Width', '166', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION2_EMPRESA_FACTURA_Caption', 'Dirección Empresa 2', '', NULL, NULL, '2023-05-20 13:31:10', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION2_EMPRESA_FACTURA_Index', '59', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION2_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_DIRECCION2_EMPRESA_FACTURA_Width', '177', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Caption', 'Email Cliente', '', NULL, NULL, '2023-05-20 13:31:13', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Index', '13', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Width', '115', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_EMAIL_EMPRESA_FACTURA_Caption', 'Email Empresa', '', NULL, NULL, '2023-05-20 13:31:16', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_EMAIL_EMPRESA_FACTURA_Index', '57', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_EMAIL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_EMAIL_EMPRESA_FACTURA_Width', '126', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESAPLICA_RE_ZONA_IVA_FACTURA_Caption', 'Aplica RE', '', NULL, NULL, '2023-05-20 13:31:20', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESAPLICA_RE_ZONA_IVA_FACTURA_Index', '28', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESAPLICA_RE_ZONA_IVA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESAPLICA_RE_ZONA_IVA_FACTURA_Width', '82', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIMP_INCL_TARIFA_CLIENTE_FACTURA_Caption', 'Tarifa incl Imp.', '', NULL, NULL, '2023-05-20 13:31:28', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIMP_INCL_TARIFA_CLIENTE_FACTURA_Index', '25', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIMP_INCL_TARIFA_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIMP_INCL_TARIFA_CLIENTE_FACTURA_Width', '132', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Caption', 'Cliente Intracomunitario', '', NULL, NULL, '2023-05-20 13:31:36', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Index', '26', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Width', '211', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIRPF_IMP_INCL_ZONA_IVA_FACTURA_Caption', 'IRPF con Imp', '', NULL, NULL, '2023-05-20 13:31:48', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIRPF_IMP_INCL_ZONA_IVA_FACTURA_Index', '27', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIRPF_IMP_INCL_ZONA_IVA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIRPF_IMP_INCL_ZONA_IVA_FACTURA_Width', '115', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVA_EXENTO_CLIENTE_FACTURA_Caption', 'IVA Exento', '', NULL, NULL, '2023-05-20 13:31:52', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVA_EXENTO_CLIENTE_FACTURA_Index', '21', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVA_EXENTO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVA_EXENTO_CLIENTE_FACTURA_Width', '94', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVA_RECARGO_CLIENTE_FACTURA_Caption', 'Cliente RE', '', NULL, NULL, '2023-05-20 13:31:58', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVA_RECARGO_CLIENTE_FACTURA_Index', '20', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVA_RECARGO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVA_RECARGO_CLIENTE_FACTURA_Width', '89', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Caption', 'IVA Agricola', '', NULL, NULL, '2023-05-20 13:32:06', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Index', '29', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Width', '108', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Caption', 'RGEAP Cliente', '', NULL, NULL, '2023-05-20 13:32:12', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Index', '22', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Width', '121', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Caption', 'RGEAP Empresa', '', NULL, NULL, '2023-05-20 13:32:19', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Index', '66', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Width', '132', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESRETENCIONES_CLIENTE_FACTURA_Caption', 'Cliente Aplica IRPF', '', NULL, NULL, '2023-05-20 13:32:27', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESRETENCIONES_CLIENTE_FACTURA_Index', '23', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESRETENCIONES_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESRETENCIONES_CLIENTE_FACTURA_Width', '162', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESRETENCIONES_EMPRESA_FACTURA_Caption', 'Empresa Aplica IRPF', '', NULL, NULL, '2023-05-20 13:32:34', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESRETENCIONES_EMPRESA_FACTURA_Index', '64', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESRETENCIONES_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESRETENCIONES_EMPRESA_FACTURA_Width', '173', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESVENTA_ACTIVO_FIJO_FACTURA_Caption', 'Venta Activo Fijo REAGP', '', NULL, NULL, '2023-05-20 13:32:39', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESVENTA_ACTIVO_FIJO_FACTURA_Index', '32', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESVENTA_ACTIVO_FIJO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_ESVENTA_ACTIVO_FIJO_FACTURA_Width', '203', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_FECHA_FACTURA_Caption', 'Fecha Factura', '', NULL, NULL, '2023-05-20 13:32:43', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_FECHA_FACTURA_Index', '0', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_FECHA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_FECHA_FACTURA_Width', '120', '', NULL, NULL, '2023-05-22 14:43:04', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_FORMA_PAGO_FACTURA_Caption', 'Forma Pago', '', NULL, NULL, '2023-05-20 13:32:46', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_FORMA_PAGO_FACTURA_Index', '8', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_FORMA_PAGO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_FORMA_PAGO_FACTURA_Width', '103', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Caption', 'Telefono Cliente', '', NULL, NULL, '2023-05-20 13:32:50', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Index', '12', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Width', '142', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_MOVIL_EMPRESA_FACTURA_Caption', 'Telefono Empresa', '', NULL, NULL, '2023-05-20 13:32:55', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_MOVIL_EMPRESA_FACTURA_Index', '56', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_MOVIL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_MOVIL_EMPRESA_FACTURA_Width', '153', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NIF_CLIENTE_FACTURA_Caption', 'Nif Cliente', '', NULL, NULL, '2023-05-20 13:33:00', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NIF_CLIENTE_FACTURA_Index', '11', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NIF_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NIF_CLIENTE_FACTURA_Width', '94', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NIF_EMPRESA_FACTURA_Caption', 'Nif Empresa', '', NULL, NULL, '2023-05-20 13:33:03', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NIF_EMPRESA_FACTURA_Index', '55', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NIF_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NIF_EMPRESA_FACTURA_Width', '105', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NOMBRE_TARIFA_CLIENTE_Caption', 'Tarifa Cliente', '', NULL, NULL, '2023-05-20 13:33:07', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NOMBRE_TARIFA_CLIENTE_Index', '24', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NOMBRE_TARIFA_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NOMBRE_TARIFA_CLIENTE_Width', '116', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NRO_FACTURA_Caption', 'Nro Factura', '', NULL, NULL, '2023-05-20 13:33:10', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NRO_FACTURA_Index', '1', '', NULL, NULL, '2023-05-20 12:36:45', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NRO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_NRO_FACTURA_Width', '102', '', NULL, NULL, '2023-05-22 14:43:04', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Caption', 'Pais Cliente', '', NULL, NULL, '2023-05-20 13:33:13', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Index', '19', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Width', '102', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PAIS_EMPRESA_FACTURA_Caption', 'Pais Empresa', '', NULL, NULL, '2023-05-20 13:33:16', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PAIS_EMPRESA_FACTURA_Index', '62', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PAIS_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PAIS_EMPRESA_FACTURA_Width', '113', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PALABRA_REPORTS_ZONA_IVA_FACTURA_Caption', 'Palabra IVA', '', NULL, NULL, '2023-05-20 13:33:22', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PALABRA_REPORTS_ZONA_IVA_FACTURA_Index', '30', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PALABRA_REPORTS_ZONA_IVA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:46', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PALABRA_REPORTS_ZONA_IVA_FACTURA_Width', '98', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Caption', 'Población Cliente', '', NULL, NULL, '2023-05-20 13:33:27', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Index', '16', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Width', '152', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_POBLACION_EMPRESA_FACTURA_Caption', 'Población Empresa', '', NULL, NULL, '2023-05-20 13:33:31', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_POBLACION_EMPRESA_FACTURA_Index', '60', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_POBLACION_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_POBLACION_EMPRESA_FACTURA_Width', '163', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAE_FACTURA_Caption', '% IVA Exento', '', NULL, NULL, '2023-05-20 13:33:37', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAE_FACTURA_Index', '48', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAE_FACTURA_Width', '110', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAN_FACTURA_Caption', '% IVA Normal', '', NULL, NULL, '2023-05-20 13:33:42', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAN_FACTURA_Index', '33', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAN_FACTURA_Width', '116', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAR_FACTURA_Caption', '% IVA Reducido', '', NULL, NULL, '2023-05-20 13:33:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAR_FACTURA_Index', '38', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAR_FACTURA_Width', '133', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAS_FACTURA_Caption', '% IVA SúperReducido', '', NULL, NULL, '2023-05-20 13:33:54', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAS_FACTURA_Index', '43', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_IVAS_FACTURA_Width', '180', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_REE_FACTURA_Caption', '% RE Exento', '', NULL, NULL, '2023-05-20 13:34:04', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_REE_FACTURA_Index', '50', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_REE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_REE_FACTURA_Width', '102', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_REN_FACTURA_Caption', '% RE Normal', '', NULL, NULL, '2023-05-20 13:34:10', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_REN_FACTURA_Index', '35', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_REN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_REN_FACTURA_Width', '108', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RER_FACTURA_Caption', '% RE Reducido', '', NULL, NULL, '2023-05-20 13:34:17', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RER_FACTURA_Index', '40', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RER_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RER_FACTURA_Width', '125', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RES_FACTURA_Caption', '% RE SúperReducido', '', NULL, NULL, '2023-05-20 13:34:24', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RES_FACTURA_Index', '45', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RES_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RES_FACTURA_Width', '172', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Caption', '% IRPF', '', NULL, NULL, '2023-05-20 13:34:28', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Index', '4', '', NULL, NULL, '2023-05-20 12:36:45', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Width', '60', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Caption', 'Provincia Cliente', '', NULL, NULL, '2023-05-20 13:34:32', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Index', '17', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Width', '146', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PROVINCIA_EMPRESA_FACTURA_Caption', 'Provincia Empresa', '', NULL, NULL, '2023-05-20 13:34:38', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PROVINCIA_EMPRESA_FACTURA_Index', '61', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PROVINCIA_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_PROVINCIA_EMPRESA_FACTURA_Width', '157', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Caption', 'Razón Social Cliente', '', NULL, NULL, '2023-05-20 13:34:43', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Index', '10', '', NULL, NULL, '2023-05-20 12:36:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Width', '176', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_RAZONSOCIAL_EMPRESA_FACTURA_Caption', 'Razón Social Empresa', '', NULL, NULL, '2023-05-20 13:34:49', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_RAZONSOCIAL_EMPRESA_FACTURA_Index', '54', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_RAZONSOCIAL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:48', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_RAZONSOCIAL_EMPRESA_FACTURA_Width', '187', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_SERIE_FACTURA_Caption', 'Serie Factura', '', NULL, NULL, '2023-05-20 13:34:52', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_SERIE_FACTURA_Index', '2', '', NULL, NULL, '2023-05-20 12:36:45', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_SERIE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_SERIE_FACTURA_Width', '111', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAE_FACTURA_Caption', 'Total B.I. Exento', '', NULL, NULL, '2023-05-20 13:35:07', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAE_FACTURA_Index', '52', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAE_FACTURA_Width', '139', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAN_FACTURA_Caption', 'Total B.I. Normal', '', NULL, NULL, '2023-05-20 13:35:13', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAN_FACTURA_Index', '37', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAN_FACTURA_Width', '145', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAR_FACTURA_Caption', 'Total B.I. Reducido', '', NULL, NULL, '2023-05-20 13:35:19', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAR_FACTURA_Index', '42', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAR_FACTURA_Width', '162', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAS_FACTURA_Caption', 'Total B.I. SúperReducido', '', NULL, NULL, '2023-05-20 13:35:26', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAS_FACTURA_Index', '47', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASEI_IVAS_FACTURA_Width', '209', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASES_FACTURA_Caption', 'Total B.I. Todos', '', NULL, NULL, '2023-05-20 13:35:34', '2023-05-20 12:36:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASES_FACTURA_Index', '3', '', NULL, NULL, '2023-05-20 12:36:45', '2023-05-20 12:36:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASES_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:45', '2023-05-20 12:36:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_BASES_FACTURA_Width', '135', '', NULL, NULL, '2023-05-22 14:43:05', '2023-05-20 12:36:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Caption', 'Total Impuestos VA', '', NULL, NULL, '2023-05-20 13:35:43', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Index', '6', '', NULL, NULL, '2023-05-20 12:36:45', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Width', '167', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAE_FACTURA_Caption', 'Total IVA Exento', '', NULL, NULL, '2023-05-20 13:35:50', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAE_FACTURA_Index', '49', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAE_FACTURA_Width', '141', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAN_FACTURA_Caption', 'Total IVA Normal', '', NULL, NULL, '2023-05-20 13:35:54', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAN_FACTURA_Index', '34', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAN_FACTURA_Width', '147', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAR_FACTURA_Caption', 'Total IVA Reducido', '', NULL, NULL, '2023-05-20 13:35:59', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAR_FACTURA_Index', '39', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAR_FACTURA_Width', '164', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAS_FACTURA_Caption', 'Total IVA SúperReducido', '', NULL, NULL, '2023-05-20 13:36:05', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAS_FACTURA_Index', '44', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_IVAS_FACTURA_Width', '211', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Caption', 'Total Líquido Factura', '', NULL, NULL, '2023-05-20 13:36:16', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Index', '7', '', NULL, NULL, '2023-05-20 12:36:45', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Width', '183', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_REE_FACTURA_Caption', 'Total RE Exento', '', NULL, NULL, '2023-05-20 13:36:22', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_REE_FACTURA_Index', '51', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_REE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_REE_FACTURA_Width', '133', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_REN_FACTURA_Caption', 'Total RE Normal', '', NULL, NULL, '2023-05-20 13:36:26', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_REN_FACTURA_Index', '36', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_REN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_REN_FACTURA_Width', '139', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RER_FACTURA_Caption', 'Total RE Reducido', '', NULL, NULL, '2023-05-20 13:36:31', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RER_FACTURA_Index', '41', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RER_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RER_FACTURA_Width', '156', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RES_FACTURA_Caption', 'Total RE SúperReducido', '', NULL, NULL, '2023-05-20 13:36:37', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RES_FACTURA_Index', '46', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RES_FACTURA_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:47', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RES_FACTURA_Width', '203', '', NULL, NULL, '2023-05-22 14:43:06', '2023-05-20 12:36:47', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Caption', 'Total IRPF Factura', '', NULL, NULL, '2023-05-20 13:36:43', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Index', '5', '', NULL, NULL, '2023-05-20 12:36:45', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Width', '154', '', NULL, NULL, '2023-05-22 14:43:05', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-20 12:36:08', '2023-05-20 12:36:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Caption', 'Cantidad', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Index', '3', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Caption', 'Código Artículo', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Index', '1', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Width', '164', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Caption', 'Descripción', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Index', '2', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Width', '162', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Caption', 'Fecha de Entrega', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Index', '10', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Width', '202', '', NULL, NULL, '2023-05-20 12:36:49', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Caption', 'Nro Linea', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Index', '0', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Width', '118', '', NULL, NULL, '2023-05-22 14:47:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_NOMBRE_TIPO_IVA_Caption', 'Nombre Tipo IVA', '', NULL, NULL, '2023-05-22 14:43:22', '2023-05-22 14:43:07', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_NOMBRE_TIPO_IVA_Index', '7', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-22 14:43:07', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_NOMBRE_TIPO_IVA_Visible', 'True', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-22 14:43:07', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_NOMBRE_TIPO_IVA_Width', '224', '', NULL, NULL, '2023-05-22 14:43:07', '2023-05-22 14:43:07', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Caption', 'Porcentaje IVA', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Index', '6', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Width', '114', '', NULL, NULL, '2023-05-20 12:36:48', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio CIVA', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Index', '8', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-05-20 12:36:49', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio SIVA', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Index', '5', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Width', '114', '', NULL, NULL, '2023-05-20 12:36:48', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Caption', 'Tipo Cantidad', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Index', '4', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Width', '224', '', NULL, NULL, '2023-05-20 12:36:48', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Caption', 'Tipo IVA', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Index', '7', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Width', '26', '', NULL, NULL, '2023-05-20 12:36:48', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Caption', 'Total', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Index', '9', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_KEY_PERFILES_Caption', 'KEY_PERFILES', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_KEY_PERFILES_Index', '1', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_KEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_KEY_PERFILES_Width', '132', '', NULL, NULL, '2023-05-22 14:43:04', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_SUBKEY_PERFILES_Caption', 'SUBKEY_PERFILES', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_SUBKEY_PERFILES_Index', '2', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_SUBKEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_SUBKEY_PERFILES_Width', '190', '', NULL, NULL, '2023-05-22 14:43:04', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_TYPE_BLOB_PERFILES_Caption', 'TYPE_BLOB_PERFILES', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_TYPE_BLOB_PERFILES_Index', '5', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_TYPE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_TYPE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-05-20 12:36:45', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Caption', 'USUARIO_GRUPO_PERFILES', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Index', '0', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Visible', 'True', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Width', '167', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_BLOB_PERFILES_Caption', 'VALUE_BLOB_PERFILES', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_BLOB_PERFILES_Index', '6', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-05-20 12:36:45', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_PERFILES_Caption', 'VALUE_PERFILES', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_PERFILES_Index', '3', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_PERFILES_Visible', 'True', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_PERFILES_Width', '112', '', NULL, NULL, '2023-05-20 12:36:45', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_TEXT_PERFILES_Caption', 'VALUE_TEXT_PERFILES', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_TEXT_PERFILES_Index', '4', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_TEXT_PERFILES_Visible', 'True', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvPerfil_VALUE_TEXT_PERFILES_Width', '140', '', NULL, NULL, '2023-02-03 10:39:44', '2023-02-03 10:39:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-20 12:36:32', '2023-05-20 12:36:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_CODIGO_EMPRESA_RETENCION_Caption', 'CODIGO_EMPRESA_RETENCION', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_CODIGO_EMPRESA_RETENCION_Index', '1', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_CODIGO_EMPRESA_RETENCION_Visible', 'False', '', NULL, NULL, '2023-01-29 10:38:29', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_CODIGO_EMPRESA_RETENCION_Width', '122', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_CODIGO_RETENCION_Caption', 'Código Retención', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_CODIGO_RETENCION_Index', '0', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_CODIGO_RETENCION_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:45', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_CODIGO_RETENCION_Width', '155', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_FECHA_DESDE_RETENCION_Caption', 'Fecha Aplicación desde', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_FECHA_DESDE_RETENCION_Index', '3', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_FECHA_DESDE_RETENCION_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_FECHA_DESDE_RETENCION_Width', '201', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_FECHA_HASTA_RETENCION_Caption', 'Fecha Aplicación hasta', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_FECHA_HASTA_RETENCION_Index', '4', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_FECHA_HASTA_RETENCION_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_FECHA_HASTA_RETENCION_Width', '196', '', NULL, NULL, '2023-05-22 14:43:04', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_INSTANTEALTA_Caption', 'INSTANTEALTA', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_INSTANTEALTA_Index', '6', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2021-06-18 18:36:21', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_INSTANTEALTA_Width', '130', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_INSTANTEMODIF_Caption', 'INSTANTEMODIF', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_INSTANTEMODIF_Index', '5', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2021-06-18 18:36:19', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_INSTANTEMODIF_Width', '130', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_PORCENRETENCION_RETENCION_Caption', '% Retención', '', NULL, NULL, '2023-05-20 12:36:45', '2023-05-20 12:36:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_PORCENRETENCION_RETENCION_Index', '2', '', NULL, NULL, '2023-05-20 12:36:45', '2023-05-20 12:36:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_PORCENRETENCION_RETENCION_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:45', '2023-05-20 12:36:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_PORCENRETENCION_RETENCION_Width', '104', '', NULL, NULL, '2023-05-22 14:43:04', '2023-05-20 12:36:45', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_RETENCION_RETENCION_Caption', '% Retención', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_RETENCION_RETENCION_Index', '2', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_RETENCION_RETENCION_Visible', 'True', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_RETENCION_RETENCION_Width', '209', '', NULL, NULL, '2023-01-29 10:38:29', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_USUARIOALTA_Caption', 'USUARIOALTA', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_USUARIOALTA_Index', '7', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2021-06-18 18:36:16', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_USUARIOALTA_Width', '704', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_USUARIOMODIF_Caption', 'USUARIOMODIF', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_USUARIOMODIF_Index', '8', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2021-06-18 18:36:14', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvRetenciones_USUARIOMODIF_Width', '704', '', NULL, NULL, '2021-06-18 18:12:39', '2021-06-18 18:12:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_CODIGO_EMPRESA_SERIE_Index', '1', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_CODIGO_EMPRESA_SERIE_Visible', 'False', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_FECHA_DESDE_SERIE_Caption', 'Fecha Aplicación desde', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_FECHA_DESDE_SERIE_Index', '2', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_FECHA_DESDE_SERIE_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_FECHA_DESDE_SERIE_Width', '208', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_FECHA_HASTA_SERIE_Caption', 'Fecha Aplicación hasta', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_FECHA_HASTA_SERIE_Index', '3', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_FECHA_HASTA_SERIE_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_FECHA_HASTA_SERIE_Width', '199', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_INSTANTEALTA_Index', '5', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_INSTANTEMODIF_Index', '4', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_SERIE_SERIE_Caption', 'Serie', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_SERIE_SERIE_Index', '0', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_SERIE_SERIE_Visible', 'True', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_SERIE_SERIE_Width', '163', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_USUARIOALTA_Index', '6', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_USUARIOMODIF_Index', '7', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoEmpresas', 'tvSeries_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2023-05-20 12:36:49', '2023-05-20 12:36:49', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-09 13:13:48', '2023-05-09 13:13:48', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_APLICA_RE_ZONA_IVA_FACTURA_Caption', 'APLICA_RE_ZONA_IVA_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_APLICA_RE_ZONA_IVA_FACTURA_Index', '71', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_APLICA_RE_ZONA_IVA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:15:38', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_APLICA_RE_ZONA_IVA_FACTURA_Width', '268', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_CLIENTE_FACTURA_Caption', 'Código Cliente', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_CLIENTE_FACTURA_Index', '4', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_CLIENTE_FACTURA_Width', '131', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_EMPRESA_FACTURA_Caption', 'Código Empresa', '', NULL, NULL, '2023-05-09 13:15:45', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_EMPRESA_FACTURA_Index', '0', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_EMPRESA_FACTURA_Width', '243', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_IVA_FACTURA_Caption', 'CODIGO_IVA_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_IVA_FACTURA_Index', '74', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_IVA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:15:49', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_IVA_FACTURA_Width', '196', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_ZONA_IVA_CLIENTE_Caption', 'Zona IVA', '', NULL, NULL, '2023-05-09 13:15:54', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_ZONA_IVA_CLIENTE_Index', '6', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_ZONA_IVA_CLIENTE_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CODIGO_ZONA_IVA_CLIENTE_Width', '241', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_COMENTARIOS_FACTURA_Caption', 'Comentarios', '', NULL, NULL, '2023-05-09 13:15:56', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_COMENTARIOS_FACTURA_Index', '55', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_COMENTARIOS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_COMENTARIOS_FACTURA_Width', '215', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CONTADOR_LINEAS_FACTURA_Caption', 'Contador lineas', '', NULL, NULL, '2023-05-09 13:16:00', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CONTADOR_LINEAS_FACTURA_Index', '78', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CONTADOR_LINEAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CONTADOR_LINEAS_FACTURA_Width', '252', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_FACTURA_Caption', 'Código Postal Cliente', '', NULL, NULL, '2023-05-09 13:16:15', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_FACTURA_Index', '15', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CPOSTAL_CLIENTE_FACTURA_Width', '122', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_FACTURA_Caption', 'Código Postal Empresa', '', NULL, NULL, '2023-05-09 13:16:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_FACTURA_Index', '27', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_CPOSTAL_EMPRESA_FACTURA_Width', '247', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_FACTURA_Caption', 'Dirección 1', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_FACTURA_Index', '11', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION1_CLIENTE_FACTURA_Width', '102', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_FACTURA_Caption', 'Dirección 1 Empresa', '', NULL, NULL, '2023-05-09 13:16:28', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_FACTURA_Index', '22', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION1_EMPRESA_FACTURA_Width', '280', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_FACTURA_Caption', 'Dirección 2 Cliente', '', NULL, NULL, '2023-05-09 13:16:32', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_FACTURA_Index', '12', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION2_CLIENTE_FACTURA_Width', '102', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_FACTURA_Caption', 'Dirección 2 Empresa', '', NULL, NULL, '2023-05-09 13:16:36', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_FACTURA_Index', '23', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DIRECCION2_EMPRESA_FACTURA_Width', '280', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DOCUMENTO_FACTURA_Caption', 'DOCUMENTO_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DOCUMENTO_FACTURA_Index', '54', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DOCUMENTO_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:18:21', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_DOCUMENTO_FACTURA_Width', '204', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_EMAIL_CLIENTE_FACTURA_Caption', 'Email', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_EMAIL_CLIENTE_FACTURA_Index', '10', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_EMAIL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_EMAIL_CLIENTE_FACTURA_Width', '58', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_EMAIL_EMPRESA_FACTURA_Caption', 'Email Empresa', '', NULL, NULL, '2023-05-09 13:18:27', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_EMAIL_EMPRESA_FACTURA_Index', '21', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_EMAIL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_EMAIL_EMPRESA_FACTURA_Width', '226', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Caption', 'Es Cliente Intracomunitario', '', NULL, NULL, '2023-05-09 13:18:38', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Index', '67', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESINTRACOMUNITARIO_CLIENTE_FACTURA_Width', '361', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_FACTURA_Caption', 'Factura IVA Exento', '', NULL, NULL, '2023-05-09 13:18:45', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_FACTURA_Index', '64', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:17:56', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESIVA_EXENTO_CLIENTE_FACTURA_Width', '287', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Caption', 'Es IVA Agrícola', '', NULL, NULL, '2023-05-09 13:18:50', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Index', '72', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:17:50', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_FACTURA_Width', '313', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Caption', 'Cliente es Agricultor', '', NULL, NULL, '2023-05-09 13:18:57', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Index', '65', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA_Width', '421', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_FACTURA_Caption', 'Cliente retiene IRPF', '', NULL, NULL, '2023-05-09 13:19:05', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_FACTURA_Index', '66', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_ESRETENCIONES_CLIENTE_FACTURA_Width', '299', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_FECHA_FACTURA_Caption', 'Fecha', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_FECHA_FACTURA_Index', '3', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_FECHA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_FECHA_FACTURA_Width', '110', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_FORMA_PAGO_FACTURA_Caption', 'Forma Pago', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_FORMA_PAGO_FACTURA_Index', '17', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_FORMA_PAGO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_FORMA_PAGO_FACTURA_Width', '103', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_GRUPO_IVA_EMPRESA_FACTURA_Caption', 'IVA Empresa', '', NULL, NULL, '2023-05-09 13:19:19', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_GRUPO_IVA_EMPRESA_FACTURA_Index', '62', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_GRUPO_IVA_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_GRUPO_IVA_EMPRESA_FACTURA_Width', '268', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IMP_INCL_TARIFA_CLIENTE_FACTURA_Caption', 'IMP_INCL_TARIFA_CLIENTE_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IMP_INCL_TARIFA_CLIENTE_FACTURA_Index', '69', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IMP_INCL_TARIFA_CLIENTE_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:19:25', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IMP_INCL_TARIFA_CLIENTE_FACTURA_Width', '314', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_INSTANTEALTA_Caption', 'INSTANTEALTA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_INSTANTEALTA_Index', '59', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:19:28', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_INSTANTEALTA_Width', '193', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_INSTANTEMODIF_Caption', 'INSTANTEMODIF', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_INSTANTEMODIF_Index', '58', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2023-05-09 13:19:30', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_INSTANTEMODIF_Width', '193', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IRPF_IMP_INCL_ZONA_IVA_FACTURA_Caption', 'IRPF_IMP_INCL_ZONA_IVA_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IRPF_IMP_INCL_ZONA_IVA_FACTURA_Index', '70', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IRPF_IMP_INCL_ZONA_IVA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:19:34', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IRPF_IMP_INCL_ZONA_IVA_FACTURA_Width', '306', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IVA_RECARGO_CLIENTE_FACTURA_Caption', 'Cliente con R. E.', '', NULL, NULL, '2023-05-09 13:19:47', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IVA_RECARGO_CLIENTE_FACTURA_Index', '29', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IVA_RECARGO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_IVA_RECARGO_CLIENTE_FACTURA_Width', '282', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_MOVIL_CLIENTE_FACTURA_Caption', 'Móvil', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_MOVIL_CLIENTE_FACTURA_Index', '9', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_MOVIL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_MOVIL_CLIENTE_FACTURA_Width', '54', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_MOVIL_EMPRESA_FACTURA_Caption', 'Teléfono Empresa', '', NULL, NULL, '2023-05-09 13:19:53', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_MOVIL_EMPRESA_FACTURA_Index', '20', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_MOVIL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_MOVIL_EMPRESA_FACTURA_Width', '230', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NIF_CLIENTE_FACTURA_Caption', 'Nif', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NIF_CLIENTE_FACTURA_Index', '8', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NIF_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NIF_CLIENTE_FACTURA_Width', '35', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NIF_EMPRESA_FACTURA_Caption', 'Nif Empresa', '', NULL, NULL, '2023-05-09 13:20:00', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NIF_EMPRESA_FACTURA_Index', '19', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NIF_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NIF_EMPRESA_FACTURA_Width', '203', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NRO_FACTURA_ABONO_FACTURA_Caption', 'Nro Factura Abono', '', NULL, NULL, '2023-05-09 13:20:13', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NRO_FACTURA_ABONO_FACTURA_Index', '52', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NRO_FACTURA_ABONO_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:20:06', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NRO_FACTURA_ABONO_FACTURA_Width', '282', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NRO_FACTURA_Caption', 'Nro Factura', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NRO_FACTURA_Index', '1', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NRO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_NRO_FACTURA_Width', '102', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PAIS_CLIENTE_FACTURA_Caption', 'Pais', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PAIS_CLIENTE_FACTURA_Index', '16', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PAIS_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PAIS_CLIENTE_FACTURA_Width', '64', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PAIS_EMPRESA_FACTURA_Caption', 'Pais Empresa', '', NULL, NULL, '2023-05-09 13:20:22', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PAIS_EMPRESA_FACTURA_Index', '26', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PAIS_EMPRESA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:20:18', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PAIS_EMPRESA_FACTURA_Width', '209', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_FACTURA_Caption', 'Palabra IVA', '', NULL, NULL, '2023-05-09 13:20:31', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_FACTURA_Index', '73', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:20:27', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_FACTURA_Width', '334', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_POBLACION_CLIENTE_FACTURA_Caption', 'Población', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_POBLACION_CLIENTE_FACTURA_Index', '13', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_POBLACION_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_POBLACION_CLIENTE_FACTURA_Width', '102', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_POBLACION_EMPRESA_FACTURA_Caption', 'Población Empresa', '', NULL, NULL, '2023-05-09 13:20:37', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_POBLACION_EMPRESA_FACTURA_Index', '24', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_POBLACION_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_POBLACION_EMPRESA_FACTURA_Width', '270', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAE_FACTURA_Caption', '% IVA Exento', '', NULL, NULL, '2023-05-09 13:20:47', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAE_FACTURA_Index', '45', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAE_FACTURA_Width', '203', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAN_FACTURA_Caption', '% IVA Normal', '', NULL, NULL, '2023-05-09 13:20:53', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAN_FACTURA_Index', '30', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAN_FACTURA_Width', '207', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAR_FACTURA_Caption', '% IVA Reducido', '', NULL, NULL, '2023-05-09 13:20:59', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAR_FACTURA_Index', '35', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAR_FACTURA_Width', '205', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAS_FACTURA_Caption', '% IVA SuperReducido', '', NULL, NULL, '2023-05-09 13:21:07', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAS_FACTURA_Index', '40', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_IVAS_FACTURA_Width', '203', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_REE_FACTURA_Caption', '% R.E. Exento', '', NULL, NULL, '2023-05-09 13:21:36', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_REE_FACTURA_Index', '47', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_REE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_REE_FACTURA_Width', '195', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_REN_FACTURA_Caption', '% R.E. Normal', '', NULL, NULL, '2023-05-09 13:21:31', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_REN_FACTURA_Index', '32', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_REN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_REN_FACTURA_Width', '199', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RER_FACTURA_Caption', '% R.E. Reducido', '', NULL, NULL, '2023-05-09 13:21:44', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RER_FACTURA_Index', '37', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RER_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RER_FACTURA_Width', '197', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RES_FACTURA_Caption', '% RE SuperReducido', '', NULL, NULL, '2023-05-09 13:21:51', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RES_FACTURA_Index', '42', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RES_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RES_FACTURA_Width', '195', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RETENCION_FACTURA_Caption', '% IRPF', '', NULL, NULL, '2023-05-09 13:21:58', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RETENCION_FACTURA_Index', '50', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RETENCION_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PORCEN_RETENCION_FACTURA_Width', '262', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_FACTURA_Caption', 'Provincia Cliente', '', NULL, NULL, '2023-05-09 13:22:04', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_FACTURA_Index', '14', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PROVINCIA_CLIENTE_FACTURA_Width', '98', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_FACTURA_Caption', 'Provincia Empresa', '', NULL, NULL, '2023-05-09 13:22:08', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_FACTURA_Index', '25', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_PROVINCIA_EMPRESA_FACTURA_Width', '266', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_FACTURA_Caption', 'Razón Social Cliente', '', NULL, NULL, '2023-05-09 13:22:13', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_FACTURA_Index', '5', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RAZONSOCIAL_CLIENTE_FACTURA_Width', '112', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_FACTURA_Caption', 'Razón Social Empresa', '', NULL, NULL, '2023-05-09 13:22:19', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_FACTURA_Index', '18', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RAZONSOCIAL_EMPRESA_FACTURA_Width', '292', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_REGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Caption', 'REGIMENESPECIALAGRICOLA_EMPRESA_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_REGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Index', '63', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_REGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:22:23', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_REGIMENESPECIALAGRICOLA_EMPRESA_FACTURA_Width', '410', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_FACTURA_Caption', 'RETENCIONES_EMPRESA_FACTURA', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_FACTURA_Index', '28', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:22:30', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_RETENCIONES_EMPRESA_FACTURA_Width', '288', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_SERIE_FACTURA_ABONO_FACTURA_Caption', 'SERIE_FACTURA_ABONO_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_SERIE_FACTURA_ABONO_FACTURA_Index', '53', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_SERIE_FACTURA_ABONO_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:22:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_SERIE_FACTURA_ABONO_FACTURA_Width', '289', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_SERIE_FACTURA_Caption', 'Serie', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_SERIE_FACTURA_Index', '2', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_SERIE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_SERIE_FACTURA_Width', '45', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TARIFA_ARTICULO_CLIENTE_FACTURA_Caption', 'Tarifa Artículos Cliente', '', NULL, NULL, '2023-05-09 13:22:42', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TARIFA_ARTICULO_CLIENTE_FACTURA_Index', '68', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TARIFA_ARTICULO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TARIFA_ARTICULO_CLIENTE_FACTURA_Width', '319', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA_Caption', 'TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA_Index', '57', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:22:49', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA_Width', '365', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA_Caption', 'TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA_Index', '56', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:22:51', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA_Width', '678', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAE_FACTURA_Caption', 'Total B.I. Exento', '', NULL, NULL, '2023-05-09 13:23:00', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAE_FACTURA_Index', '49', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAE_FACTURA_Width', '242', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAN_FACTURA_Caption', 'Total B.I. Normal', '', NULL, NULL, '2023-05-09 13:23:06', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAN_FACTURA_Index', '34', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAN_FACTURA_Width', '246', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAR_FACTURA_Caption', 'Total B.I. Reducido', '', NULL, NULL, '2023-05-09 13:23:13', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAR_FACTURA_Index', '39', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAR_FACTURA_Width', '244', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAS_FACTURA_Caption', 'Total B.I. SuperReducido', '', NULL, NULL, '2023-05-09 13:23:21', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAS_FACTURA_Index', '44', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASEI_IVAS_FACTURA_Width', '242', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASES_FACTURA_Caption', 'Total B.I. Todos', '', NULL, NULL, '2023-05-09 13:23:46', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASES_FACTURA_Index', '76', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASES_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_BASES_FACTURA_Width', '200', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IMPUESTOS_FACTURA_Caption', 'Total Impuestos', '', NULL, NULL, '2023-05-09 13:23:52', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IMPUESTOS_FACTURA_Index', '77', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IMPUESTOS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IMPUESTOS_FACTURA_Width', '247', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAE_FACTURA_Caption', 'Total Exento', '', NULL, NULL, '2023-05-09 13:24:06', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAE_FACTURA_Index', '46', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAE_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:24:55', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAE_FACTURA_Width', '189', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAN_FACTURA_Caption', 'Total Normal', '', NULL, NULL, '2023-05-09 13:24:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAN_FACTURA_Index', '31', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAN_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:24:53', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAN_FACTURA_Width', '193', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAR_FACTURA_Caption', 'Total Reducido', '', NULL, NULL, '2023-05-09 13:24:16', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAR_FACTURA_Index', '36', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAR_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:24:51', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAR_FACTURA_Width', '191', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAS_FACTURA_Caption', 'Total SuperReducido', '', NULL, NULL, '2023-05-09 13:24:23', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAS_FACTURA_Index', '41', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAS_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:24:49', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_IVAS_FACTURA_Width', '189', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_LIQUIDO_FACTURA_Caption', 'Total Liquido', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_LIQUIDO_FACTURA_Index', '7', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_LIQUIDO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:31', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_LIQUIDO_FACTURA_Width', '117', '', NULL, NULL, '2023-05-09 13:15:09', '2023-04-21 12:47:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_REE_FACTURA_Caption', 'Total R.E. Exento', '', NULL, NULL, '2023-05-09 13:24:43', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_REE_FACTURA_Index', '48', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_REE_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:24:46', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_REE_FACTURA_Width', '181', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_REN_FACTURA_Caption', 'Total R.E. Normal', '', NULL, NULL, '2023-05-09 13:24:38', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_REN_FACTURA_Index', '33', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_REN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_REN_FACTURA_Width', '185', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RER_FACTURA_Caption', 'Total R.E. Reducido', '', NULL, NULL, '2023-05-09 13:25:08', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RER_FACTURA_Index', '38', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RER_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RER_FACTURA_Width', '183', '', NULL, NULL, '2023-05-09 13:15:10', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RES_FACTURA_Caption', 'Total R.E. SuperReducido', '', NULL, NULL, '2023-05-09 13:25:36', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RES_FACTURA_Index', '43', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RES_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RES_FACTURA_Width', '181', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RETENCION_FACTURA_Caption', 'Total IRPF Factura', '', NULL, NULL, '2023-05-09 13:25:43', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RETENCION_FACTURA_Index', '51', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RETENCION_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:32', '2023-04-21 12:47:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_TOTAL_RETENCION_FACTURA_Width', '248', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_USUARIOALTA_Caption', 'USUARIOALTA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_USUARIOALTA_Index', '60', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:25:48', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_USUARIOALTA_Width', '127', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_USUARIOMODIF_Caption', 'USUARIOMODIF', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_USUARIOMODIF_Index', '61', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2023-05-09 13:25:54', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_USUARIOMODIF_Width', '140', '', NULL, NULL, '2023-05-09 13:15:11', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_VENTA_ACTIVO_FIJO_FACTURA_Caption', 'VENTA_ACTIVO_FIJO_FACTURA', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_VENTA_ACTIVO_FIJO_FACTURA_Index', '75', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_VENTA_ACTIVO_FIJO_FACTURA_Visible', 'False', '', NULL, NULL, '2023-05-09 13:25:58', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'cxGrdDBTabPrin_VENTA_ACTIVO_FIJO_FACTURA_Width', '259', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'oApplySkin', 'False', '', NULL, NULL, '2023-05-11 14:58:08', '2023-05-11 14:58:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'oApplyWidth', 'True', '', NULL, NULL, '2023-05-11 14:58:08', '2023-04-21 13:22:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'oBusqGlobal', 'Grid', '', NULL, NULL, '2023-05-11 14:58:08', '2023-05-11 14:58:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'oCreateItems', 'False', '', NULL, NULL, '2023-05-11 14:58:08', '2023-05-11 14:58:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2023-05-11 14:58:08', '2023-05-11 14:58:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-09 13:26:55', '2023-05-09 13:26:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAE_FACTURA_Caption', '%IVA Exento', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAE_FACTURA_Index', '16', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAE_FACTURA_Width', '114', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAN_FACTURA_Caption', '%IVA Normal', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAN_FACTURA_Index', '1', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAN_FACTURA_Width', '114', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAR_FACTURA_Caption', '%IVA Reducido', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAR_FACTURA_Index', '6', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAR_FACTURA_Width', '140', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAS_FACTURA_Caption', '%IVA SúperReducido', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAS_FACTURA_Index', '11', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_IVAS_FACTURA_Width', '180', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_REE_FACTURA_Index', '18', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_REE_FACTURA_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_REN_FACTURA_Index', '3', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_REN_FACTURA_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_RER_FACTURA_Index', '8', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_RER_FACTURA_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_RES_FACTURA_Index', '12', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_PORCEN_RES_FACTURA_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAE_FACTURA_Caption', 'Base Neta Exenta', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAE_FACTURA_Index', '15', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAE_FACTURA_Width', '150', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAN_FACTURA_Caption', 'Base Neta Normal', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAN_FACTURA_Index', '0', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAN_FACTURA_Width', '155', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAR_FACTURA_Caption', 'Base Neta Reducida', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAR_FACTURA_Index', '5', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAR_FACTURA_Width', '170', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAS_FACTURA_Caption', 'Base Neta SúperReducida', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAS_FACTURA_Index', '10', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_BASEI_IVAS_FACTURA_Width', '230', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAE_FACTURA_Caption', 'Total IVA Exento', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAE_FACTURA_Index', '17', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAE_FACTURA_Width', '200', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAN_FACTURA_Caption', 'Total IVA Normal', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAN_FACTURA_Index', '2', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAN_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAN_FACTURA_Width', '150', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAR_FACTURA_Caption', 'Total IVA Reducido', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAR_FACTURA_Index', '7', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAR_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAR_FACTURA_Width', '170', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAS_FACTURA_Caption', 'Total IVA SúperReducido', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAS_FACTURA_Index', '14', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_IVAS_FACTURA_Width', '220', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_REE_FACTURA_Index', '19', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_REE_FACTURA_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_REN_FACTURA_Index', '4', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_REN_FACTURA_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_RER_FACTURA_Index', '9', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_RER_FACTURA_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_RES_FACTURA_Index', '13', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvIVA_TOTAL_RES_FACTURA_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_CANTIDAD_FACTURA_LINEA_Caption', 'Cantidad', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_CANTIDAD_FACTURA_LINEA_Index', '4', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_CANTIDAD_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_CANTIDAD_FACTURA_LINEA_Width', '81', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_CODIGO_ARTICULO_FACTURA_LINEA_Caption', 'Código Artículo', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_CODIGO_ARTICULO_FACTURA_LINEA_Index', '1', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_CODIGO_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_CODIGO_ARTICULO_FACTURA_LINEA_Width', '152', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_DESCRIPCION_ARTICULO_FACTURA_LINEA_Caption', 'Descripción', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_DESCRIPCION_ARTICULO_FACTURA_LINEA_Index', '2', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_DESCRIPCION_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_DESCRIPCION_ARTICULO_FACTURA_LINEA_Width', '300', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_IMP_INCL_TARIFA_FACTURA_LINEA_Caption', 'ImpIncl', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_IMP_INCL_TARIFA_FACTURA_LINEA_Index', '6', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_IMP_INCL_TARIFA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_IMP_INCL_TARIFA_FACTURA_LINEA_Width', '79', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_LINEA_FACTURA_LINEA_Caption', 'Nro Linea', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_LINEA_FACTURA_LINEA_Index', '0', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_LINEA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_LINEA_FACTURA_LINEA_Width', '87', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PORCEN_IVA_FACTURA_LINEA_Caption', '% IVA', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PORCEN_IVA_FACTURA_LINEA_Index', '8', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PORCEN_IVA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PORCEN_IVA_FACTURA_LINEA_Width', '79', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio con IVA', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Index', '9', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Width', '123', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio sin IVA', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Index', '5', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Width', '127', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Caption', 'Tipo de Cantidad', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Index', '3', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Width', '153', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TIPOIVA_ARTICULO_FACTURA_LINEA_Caption', 'Tipo de IVA', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TIPOIVA_ARTICULO_FACTURA_LINEA_Index', '7', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TIPOIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TIPOIVA_ARTICULO_FACTURA_LINEA_Width', '112', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TOTAL_FACTURA_LINEA_Caption', 'Total', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TOTAL_FACTURA_LINEA_Index', '10', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TOTAL_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvLineasFactura_TOTAL_FACTURA_LINEA_Width', '122', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_KEY_PERFILES_Caption', 'KEY_PERFILES', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_KEY_PERFILES_Index', '1', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_KEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_KEY_PERFILES_Width', '157', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_SUBKEY_PERFILES_Caption', 'SUBKEY_PERFILES', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_SUBKEY_PERFILES_Index', '2', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_SUBKEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_SUBKEY_PERFILES_Width', '639', '', NULL, NULL, '2023-05-09 13:15:12', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_TYPE_BLOB_PERFILES_Caption', 'TYPE_BLOB_PERFILES', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_TYPE_BLOB_PERFILES_Index', '5', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_TYPE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_TYPE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Caption', 'USUARIO_GRUPO_PERFILES', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Index', '0', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Width', '167', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_BLOB_PERFILES_Caption', 'VALUE_BLOB_PERFILES', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_BLOB_PERFILES_Index', '6', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_PERFILES_Caption', 'VALUE_PERFILES', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_PERFILES_Index', '3', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_PERFILES_Width', '112', '', NULL, NULL, '2023-04-21 12:47:33', '2023-04-21 12:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_TEXT_PERFILES_Caption', 'VALUE_TEXT_PERFILES', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_TEXT_PERFILES_Index', '4', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_TEXT_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvPerfil_VALUE_TEXT_PERFILES_Width', '140', '', NULL, NULL, '2023-04-21 12:47:34', '2023-04-21 12:47:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos__oApplyWidth', 'True', NULL, NULL, NULL, '2023-04-21 12:59:29', '2023-04-21 12:59:29', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_CODIGO_CLIENTE_RECIBO_Caption', 'Código Cliente', '', NULL, NULL, '2023-04-21 12:55:02', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_CODIGO_CLIENTE_RECIBO_Index', '12', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_CODIGO_CLIENTE_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_CODIGO_CLIENTE_RECIBO_Width', '131', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_CPOSTAL_CLIENTE_RECIBO_Caption', 'Código Postal', '', NULL, NULL, '2023-04-21 12:55:06', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_CPOSTAL_CLIENTE_RECIBO_Index', '17', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_CPOSTAL_CLIENTE_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_CPOSTAL_CLIENTE_RECIBO_Width', '122', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_DIRECCION1_CLIENTE_RECIBO_Caption', 'Dirección', '', NULL, NULL, '2023-04-21 12:55:11', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_DIRECCION1_CLIENTE_RECIBO_Index', '14', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_DIRECCION1_CLIENTE_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_DIRECCION1_CLIENTE_RECIBO_Width', '101', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_ESTADO_RECIBO_Caption', 'Estado Recibo', '', NULL, NULL, '2023-04-21 12:55:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_ESTADO_RECIBO_Index', '6', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_ESTADO_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_ESTADO_RECIBO_Width', '114', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_EUROS_RECIBO_Caption', 'Cantidad a Pagar', '', NULL, NULL, '2023-04-21 12:55:19', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_EUROS_RECIBO_Index', '5', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_EUROS_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_EUROS_RECIBO_Width', '144', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_EXPEDICION_RECIBO_Caption', 'Fecha Expedición', '', NULL, NULL, '2023-04-21 12:55:23', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_EXPEDICION_RECIBO_Index', '7', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_EXPEDICION_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_EXPEDICION_RECIBO_Width', '151', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_PAGO_RECIBO_Caption', 'Fecha Pago', '', NULL, NULL, '2023-04-21 12:55:27', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_PAGO_RECIBO_Index', '10', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_PAGO_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_PAGO_RECIBO_Width', '110', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_VENCIMIENTO_RECIBO_Caption', 'Fecha Vencimiento', '', NULL, NULL, '2023-04-21 12:55:31', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_VENCIMIENTO_RECIBO_Index', '8', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_VENCIMIENTO_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FECHA_VENCIMIENTO_RECIBO_Width', '163', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO_Caption', 'Forma de Pago', '', NULL, NULL, '2023-04-21 12:55:36', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO_Index', '4', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO_Width', '128', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FORMA_PAGO_ORIGEN_RECIBO_Caption', 'Forma de pago Factura', '', NULL, NULL, '2023-04-21 12:55:43', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FORMA_PAGO_ORIGEN_RECIBO_Index', '3', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FORMA_PAGO_ORIGEN_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_FORMA_PAGO_ORIGEN_RECIBO_Width', '196', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_IBAN_CLIENTE_RECIBO_Caption', 'Nro de Cuenta', '', NULL, NULL, '2023-04-21 12:55:52', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_IBAN_CLIENTE_RECIBO_Index', '9', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_IBAN_CLIENTE_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_IBAN_CLIENTE_RECIBO_Width', '124', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_IMPORTE_LETRA_RECIBO_Caption', 'Importe Letra', '', NULL, NULL, '2023-04-21 12:55:57', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_IMPORTE_LETRA_RECIBO_Index', '18', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_IMPORTE_LETRA_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_IMPORTE_LETRA_RECIBO_Width', '399', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_LOCALIDAD_EXPEDICION_RECIBO_Caption', 'Localidad Expedición', '', NULL, NULL, '2023-04-21 12:56:03', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_LOCALIDAD_EXPEDICION_RECIBO_Index', '11', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_LOCALIDAD_EXPEDICION_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_LOCALIDAD_EXPEDICION_RECIBO_Width', '184', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_NRO_FACTURA_RECIBO_Index', '0', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_NRO_FACTURA_RECIBO_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_NRO_PLAZO_RECIBO_Caption', 'Nro Plazo', '', NULL, NULL, '2023-04-21 12:56:08', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_NRO_PLAZO_RECIBO_Index', '2', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_NRO_PLAZO_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_NRO_PLAZO_RECIBO_Width', '86', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_POBLACION_CLIENTE_RECIBO_Caption', 'Población Cliente', '', NULL, NULL, '2023-04-21 12:56:13', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_POBLACION_CLIENTE_RECIBO_Index', '15', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_POBLACION_CLIENTE_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_POBLACION_CLIENTE_RECIBO_Width', '152', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_PROVINCIA_CLIENTE_RECIBO_Caption', 'Provincia Cliente', '', NULL, NULL, '2023-04-21 12:56:18', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_PROVINCIA_CLIENTE_RECIBO_Index', '16', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_PROVINCIA_CLIENTE_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_PROVINCIA_CLIENTE_RECIBO_Width', '146', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_RAZONSOCIAL_CLIENTE_RECIBO_Caption', 'Razón Social Cliente', '', NULL, NULL, '2023-04-21 12:56:23', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_RAZONSOCIAL_CLIENTE_RECIBO_Index', '13', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_RAZONSOCIAL_CLIENTE_RECIBO_Visible', 'True', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_RAZONSOCIAL_CLIENTE_RECIBO_Width', '176', '', NULL, NULL, '2023-05-09 13:15:14', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_SERIE_FACTURA_RECIBO_Index', '1', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_SERIE_FACTURA_RECIBO_Visible', 'False', '', NULL, NULL, '2023-04-21 12:47:35', '2023-04-21 12:47:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_STADO_RECIBO_Caption', 'STADO_RECIBO', '', NULL, NULL, '2023-05-09 13:15:14', '2023-05-09 13:15:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_STADO_RECIBO_Index', '6', '', NULL, NULL, '2023-05-09 13:15:14', '2023-05-09 13:15:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_STADO_RECIBO_Visible', 'True', '', NULL, NULL, '2023-05-09 13:15:14', '2023-05-09 13:15:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFacturas', 'tvRecibos_STADO_RECIBO_Width', '130', '', NULL, NULL, '2023-05-09 13:15:14', '2023-05-09 13:15:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_ACTIVO_FAMILIA_Caption', 'Es Familia activa', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_ACTIVO_FAMILIA_Index', '1', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_ACTIVO_FAMILIA_Visible', 'True', '', NULL, NULL, '2023-01-22 08:39:38', '2023-01-22 08:39:38', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_ACTIVO_FAMILIA_Width', '133', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_CODIGO_FAMILIA_Caption', 'Código Familia', '', NULL, NULL, '2023-01-22 08:39:35', '2023-01-22 08:39:35', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_CODIGO_FAMILIA_Index', '0', '', NULL, NULL, '2023-01-22 08:39:32', '2023-01-22 08:39:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_CODIGO_FAMILIA_Visible', 'True', '', NULL, NULL, '2023-01-22 08:39:31', '2023-01-22 08:39:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_CODIGO_FAMILIA_Width', '126', '', NULL, NULL, '2023-01-22 08:39:34', '2023-01-22 08:39:34', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_DESCRIPCION_FAMILIA_Caption', 'Descripción', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_DESCRIPCION_FAMILIA_Index', '4', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_DESCRIPCION_FAMILIA_Visible', 'True', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_DESCRIPCION_FAMILIA_Width', '440', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_NOMBRE_FAMILIA_Caption', 'Nombre Familia', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_NOMBRE_FAMILIA_Index', '3', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_NOMBRE_FAMILIA_Visible', 'True', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_NOMBRE_FAMILIA_Width', '215', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_ORDEN_FAMILIA_Caption', 'Orden en listados', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_ORDEN_FAMILIA_Index', '2', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_ORDEN_FAMILIA_Visible', 'True', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFamilias', 'cxGrdDBTabPrin_ORDEN_FAMILIA_Width', '140', '', NULL, NULL, '2023-01-22 08:39:39', '2023-01-22 08:39:39', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin__oApplyWidth', 'True', NULL, NULL, NULL, '2023-04-26 13:19:42', '2023-04-26 13:19:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ACTIVO_FORMAPAGO_Caption', 'Activo', '', NULL, NULL, '2023-04-26 13:18:22', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ACTIVO_FORMAPAGO_Index', '1', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ACTIVO_FORMAPAGO_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ACTIVO_FORMAPAGO_Width', '91', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_CODIGO_FORMAPAGO_Caption', 'Código', '', NULL, NULL, '2023-04-26 13:18:26', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_CODIGO_FORMAPAGO_Index', '0', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_CODIGO_FORMAPAGO_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_CODIGO_FORMAPAGO_Width', '196', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_DESCRIPCION_FORMAPAGO_Caption', 'Descripción', '', NULL, NULL, '2023-04-26 13:18:29', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_DESCRIPCION_FORMAPAGO_Index', '3', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_DESCRIPCION_FORMAPAGO_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_DESCRIPCION_FORMAPAGO_Width', '231', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_DIAS_ENTRE_PLAZOS_FORMAPAGO_Caption', 'Días entre plazos', '', NULL, NULL, '2023-04-26 13:18:33', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_DIAS_ENTRE_PLAZOS_FORMAPAGO_Index', '5', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_DIAS_ENTRE_PLAZOS_FORMAPAGO_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_DIAS_ENTRE_PLAZOS_FORMAPAGO_Width', '64', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ESDEFAULT_FORMAPAGO_Caption', 'PorDefecto', '', NULL, NULL, '2023-04-26 13:18:38', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ESDEFAULT_FORMAPAGO_Index', '6', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ESDEFAULT_FORMAPAGO_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ESDEFAULT_FORMAPAGO_Width', '159', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_N_PLAZOS_FORMAPAGO_Caption', 'Número de plazos', '', NULL, NULL, '2023-04-26 13:18:42', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_N_PLAZOS_FORMAPAGO_Index', '4', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_N_PLAZOS_FORMAPAGO_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_N_PLAZOS_FORMAPAGO_Width', '114', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ORDEN_FORMAPAGO_Caption', 'Orden en listados', '', NULL, NULL, '2023-04-26 13:18:46', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ORDEN_FORMAPAGO_Index', '2', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ORDEN_FORMAPAGO_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_ORDEN_FORMAPAGO_Width', '120', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_PORCEN_ANTICIPO_FORMAPAGO_Caption', 'Porcentaje Anticipo', '', NULL, NULL, '2023-04-26 13:18:51', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_PORCEN_ANTICIPO_FORMAPAGO_Index', '7', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_PORCEN_ANTICIPO_FORMAPAGO_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'cxGrdDBTabPrin_PORCEN_ANTICIPO_FORMAPAGO_Width', '114', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'oApplySkin', 'False', '', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'oApplyWidth', 'True', '', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'oBusqGlobal', 'Grid', '', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'oCreateItems', 'False', '', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2023-04-26 13:19:08', '2023-04-26 13:19:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion__oApplyWidth', 'True', NULL, NULL, NULL, '2023-05-08 13:47:44', '2023-05-08 13:47:33', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Caption', 'Código Cliente', '', NULL, NULL, '2023-02-04 09:30:11', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_CODIGO_CLIENTE_FACTURA_Width', '103', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_COMENTARIOS_FACTURA_Caption', 'Comentarios', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_COMENTARIOS_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_COMENTARIOS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_COMENTARIOS_FACTURA_Width', '180', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Caption', 'Código Postal Cliente', '', NULL, NULL, '2023-02-04 09:30:20', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_CPOSTAL_CLIENTE_FACTURA_Width', '139', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Caption', 'Dirección Cliente', '', NULL, NULL, '2023-02-04 09:30:26', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_DIRECCION1_CLIENTE_FACTURA_Width', '239', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Caption', 'Dirección Más Cliente', '', NULL, NULL, '2023-02-04 09:30:33', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_DIRECCION2_CLIENTE_FACTURA_Width', '239', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Caption', 'Email Cliente', '', NULL, NULL, '2023-02-04 09:30:37', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_EMAIL_CLIENTE_FACTURA_Width', '192', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_FECHA_FACTURA_Caption', 'Fecha', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_FECHA_FACTURA_Index', '0', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_FECHA_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_FECHA_FACTURA_Width', '94', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_FORMA_PAGO_FACTURA_Caption', 'Forma de Pago', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_FORMA_PAGO_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_FORMA_PAGO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_FORMA_PAGO_FACTURA_Width', '151', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Caption', 'Móvil Cliente', '', NULL, NULL, '2023-02-04 09:30:48', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_MOVIL_CLIENTE_FACTURA_Width', '196', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_NIF_CLIENTE_FACTURA_Caption', 'Nif Cliente', '', NULL, NULL, '2023-02-04 09:30:52', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_NIF_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_NIF_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_NIF_CLIENTE_FACTURA_Width', '184', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_NRO_FACTURA_Caption', 'Nro Factura', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_NRO_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_NRO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_NRO_FACTURA_Width', '99', '', NULL, NULL, '2023-02-05 08:21:26', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Caption', 'País Cliente', '', NULL, NULL, '2023-02-04 09:30:56', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PAIS_CLIENTE_FACTURA_Width', '191', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Caption', 'Población Cliente', '', NULL, NULL, '2023-02-04 09:31:02', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_POBLACION_CLIENTE_FACTURA_Width', '235', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Caption', '% Retención IRPF', '', NULL, NULL, '2023-02-04 09:27:21', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PORCEN_RETENCION_FACTURA_Width', '96', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Caption', 'Provincia Cliente', '', NULL, NULL, '2023-02-04 09:31:07', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_PROVINCIA_CLIENTE_FACTURA_Width', '241', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Caption', 'Razón Social Cliente', '', NULL, NULL, '2023-02-04 09:31:12', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_RAZONSOCIAL_CLIENTE_FACTURA_Width', '253', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_SERIE_FACTURA_Caption', 'Serie Factura', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_SERIE_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_SERIE_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_SERIE_FACTURA_Width', '107', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Caption', 'Total IVA', '', NULL, NULL, '2023-02-04 09:26:37', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_IMPUESTOS_FACTURA_Width', '122', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Caption', 'Total Líquido', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_LIQUIDO_FACTURA_Width', '104', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Caption', 'Total Retención IRPF', '', NULL, NULL, '2023-02-04 09:27:55', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Index', '0', '', NULL, NULL, '2023-02-05 10:02:31', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:25:46', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvFacturacion_TOTAL_RETENCION_FACTURA_Width', '168', '', NULL, NULL, '2023-02-05 08:21:26', '2023-02-04 09:25:46', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Caption', 'Cantidad', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Index', '3', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_CANTIDAD_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Caption', 'Código Artículo', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Index', '1', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_CODIGO_ARTICULO_FACTURA_LINEA_Width', '164', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Caption', 'Descripción', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Index', '2', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_DESCRIPCION_ARTICULO_FACTURA_LINEA_Width', '162', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Caption', 'Fecha de Entrega', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Index', '10', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_FECHA_ENTREGA_FACTURA_LINEA_Width', '166', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Caption', 'Nro Linea', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Index', '0', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_LINEA_FACTURA_LINEA_Width', '87', '', NULL, NULL, '2023-02-04 09:16:48', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Caption', 'Porcentaje IVA', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Index', '6', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PORCEN_IVA_FACTURA_LINEA_Width', '125', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio CIVA', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Index', '8', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Width', '99', '', NULL, NULL, '2023-02-04 09:20:11', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio SIVA', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Index', '5', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Width', '94', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Caption', 'Tipo Cantidad', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Index', '4', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Width', '184', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Caption', 'Tipo IVA', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Index', '7', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TIPOIVA_ARTICULO_FACTURA_LINEA_Width', '87', '', NULL, NULL, '2023-02-04 09:20:11', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Caption', 'Total', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Index', '9', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvLineasFacturacion_TOTAL_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-02-04 09:16:06', '2023-02-04 09:16:06', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_KEY_PERFILES_Caption', 'KEY_PERFILES', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_KEY_PERFILES_Index', '1', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_KEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_KEY_PERFILES_Width', '132', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_SUBKEY_PERFILES_Caption', 'SUBKEY_PERFILES', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_SUBKEY_PERFILES_Index', '2', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_SUBKEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_SUBKEY_PERFILES_Width', '190', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_TYPE_BLOB_PERFILES_Caption', 'TYPE_BLOB_PERFILES', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_TYPE_BLOB_PERFILES_Index', '5', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_TYPE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_TYPE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_USUARIO_GRUPO_PERFILES_Caption', 'USUARIO_GRUPO_PERFILES', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_USUARIO_GRUPO_PERFILES_Index', '0', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_USUARIO_GRUPO_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_USUARIO_GRUPO_PERFILES_Width', '167', '', NULL, NULL, '2023-04-26 12:24:58', '2023-04-26 12:24:58', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_BLOB_PERFILES_Caption', 'VALUE_BLOB_PERFILES', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_BLOB_PERFILES_Index', '6', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_PERFILES_Caption', 'VALUE_PERFILES', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_PERFILES_Index', '3', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_PERFILES_Width', '112', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_TEXT_PERFILES_Caption', 'VALUE_TEXT_PERFILES', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_TEXT_PERFILES_Index', '4', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_TEXT_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoFormasdePago', 'tvPerfil_VALUE_TEXT_PERFILES_Width', '140', '', NULL, NULL, '2023-04-26 12:24:59', '2023-04-26 12:24:59', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_CODIGO_GENERADORPROCESO_Caption', 'Código Proceso', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_CODIGO_GENERADORPROCESO_Index', '0', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_CODIGO_GENERADORPROCESO_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_CODIGO_GENERADORPROCESO_Width', '224', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_INSTANTEALTA_Index', '3', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_INSTANTEMODIF_Index', '2', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_NOMBRE_GENERADORPROCESO_Caption', 'Nombre Proceso', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_NOMBRE_GENERADORPROCESO_Index', '1', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_NOMBRE_GENERADORPROCESO_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_NOMBRE_GENERADORPROCESO_Width', '471', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_USUARIOALTA_Index', '4', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_USUARIOMODIF_Index', '5', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'cxGrdDBTabPrin_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_CANTIDAD_FACTURA_LINEA_Caption', 'Cantidad', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_CANTIDAD_FACTURA_LINEA_Index', '3', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_CANTIDAD_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_CANTIDAD_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_CODIGO_ARTICULO_FACTURA_LINEA_Caption', 'Código Artículo', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_CODIGO_ARTICULO_FACTURA_LINEA_Index', '1', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_CODIGO_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_CODIGO_ARTICULO_FACTURA_LINEA_Width', '164', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_DESCRIPCION_ARTICULO_FACTURA_LINEA_Caption', 'Descripción', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_DESCRIPCION_ARTICULO_FACTURA_LINEA_Index', '2', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_DESCRIPCION_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_DESCRIPCION_ARTICULO_FACTURA_LINEA_Width', '162', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_FECHA_ENTREGA_FACTURA_LINEA_Caption', 'Fecha de Entrega', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_FECHA_ENTREGA_FACTURA_LINEA_Index', '10', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_FECHA_ENTREGA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_FECHA_ENTREGA_FACTURA_LINEA_Width', '64', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_LINEA_FACTURA_LINEA_Caption', 'Nro Linea', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_LINEA_FACTURA_LINEA_Index', '0', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_LINEA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_LINEA_FACTURA_LINEA_Width', '28', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PORCEN_IVA_FACTURA_LINEA_Caption', 'Porcentaje IVA', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PORCEN_IVA_FACTURA_LINEA_Index', '6', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PORCEN_IVA_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PORCEN_IVA_FACTURA_LINEA_Width', '64', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio CIVA', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Index', '8', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Caption', 'Precio SIVA', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Index', '5', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA_Width', '64', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Caption', 'Tipo Cantidad', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Index', '4', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA_Width', '64', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TIPOIVA_ARTICULO_FACTURA_LINEA_Caption', 'Tipo IVA', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TIPOIVA_ARTICULO_FACTURA_LINEA_Index', '7', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TIPOIVA_ARTICULO_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TIPOIVA_ARTICULO_FACTURA_LINEA_Width', '64', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TOTAL_FACTURA_LINEA_Caption', 'Total', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TOTAL_FACTURA_LINEA_Index', '9', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TOTAL_FACTURA_LINEA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tv2_TOTAL_FACTURA_LINEA_Width', '84', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_INSTANTEALTA_Caption', 'INSTANTEALTA', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_INSTANTEALTA_Index', '15', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_INSTANTEALTA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_INSTANTEALTA_Width', '202', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_INSTANTEMODIF_Caption', 'INSTANTEMODIF', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_INSTANTEMODIF_Index', '14', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_INSTANTEMODIF_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_INSTANTEMODIF_Width', '202', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_KEY_PERFILES_Caption', 'KEY_PERFILES', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_KEY_PERFILES_Index', '8', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_KEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_KEY_PERFILES_Width', '112', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_SUBKEY_PERFILES_Caption', 'SUBKEY_PERFILES', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_SUBKEY_PERFILES_Index', '9', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_SUBKEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_SUBKEY_PERFILES_Width', '291', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_TYPE_BLOB_PERFILES_Caption', 'TYPE_BLOB_PERFILES', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_TYPE_BLOB_PERFILES_Index', '12', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_TYPE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_TYPE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIO_GRUPO_PERFILES_Caption', 'USUARIO_GRUPO_PERFILES', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIO_GRUPO_PERFILES_Index', '7', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIO_GRUPO_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIO_GRUPO_PERFILES_Width', '167', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIOALTA_Caption', 'USUARIOALTA', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIOALTA_Index', '16', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIOALTA_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIOALTA_Width', '88', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIOMODIF_Caption', 'USUARIOMODIF', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIOMODIF_Index', '17', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIOMODIF_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_USUARIOMODIF_Width', '96', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:42', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_BLOB_PERFILES_Caption', 'VALUE_BLOB_PERFILES', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_BLOB_PERFILES_Index', '13', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_PERFILES_Caption', 'VALUE_PERFILES', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_PERFILES_Index', '10', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_PERFILES_Width', '188', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_TEXT_PERFILES_Caption', 'VALUE_TEXT_PERFILES', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_TEXT_PERFILES_Index', '11', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_TEXT_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-27 12:29:41', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoGeneradorProcesos', 'tvPerfil_VALUE_TEXT_PERFILES_Width', '114', '', NULL, NULL, '2023-04-27 12:29:42', '2023-04-27 12:29:41', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'btnCancelar_Caption', '&Cancelar', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'btnCargarCaptions_Caption', '&Cargar captions', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'btnCargarColumnas_Caption', '&Cargar columnas', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'btnCargarVblesGlob_Caption', '&Cargar Vbles Globales', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'btnGrabar_Caption', '&Grabar', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'btnSalir_Caption', '&Salir', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin__oApplyWidth', 'True', NULL, NULL, NULL, '2023-04-23 14:04:57', '2023-04-23 14:04:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_CODIGO_IVA_Caption', 'Código', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_CODIGO_IVA_Index', '0', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_CODIGO_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_CODIGO_IVA_Width', '67', '', NULL, NULL, '2023-04-23 14:15:10', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Caption', 'Descripción Zona', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Index', '2', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Width', '239', '', NULL, NULL, '2023-04-23 14:47:17', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESAPLICA_RE_ZONA_IVA_Caption', 'IVA aplica % RE', '', NULL, NULL, '2023-04-23 14:52:18', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESAPLICA_RE_ZONA_IVA_Index', '13', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESAPLICA_RE_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESAPLICA_RE_ZONA_IVA_Width', '200', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESDEFAULT_ZONA_IVA_Caption', 'Es Zona por def.', '', NULL, NULL, '2023-04-23 14:52:24', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESDEFAULT_ZONA_IVA_Index', '15', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESDEFAULT_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESDEFAULT_ZONA_IVA_Width', '189', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESIRPF_IMP_INCL_ZONA_IVA_Caption', 'IRPF Incluye impuestos', '', NULL, NULL, '2023-04-23 14:52:31', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESIRPF_IMP_INCL_ZONA_IVA_Index', '16', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESIRPF_IMP_INCL_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESIRPF_IMP_INCL_ZONA_IVA_Width', '238', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_Caption', 'Es IVA Especial REAGP', '', NULL, NULL, '2023-04-23 14:53:55', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_Index', '14', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_Width', '227', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_EXENTO_IVA_Caption', '% IVA Exento', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_EXENTO_IVA_Index', '3', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_EXENTO_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_EXENTO_IVA_Width', '121', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_EXENTO_RE_IVA_Caption', '% RE IVA Exento', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_EXENTO_RE_IVA_Index', '4', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_EXENTO_RE_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_EXENTO_RE_IVA_Width', '133', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_FECHA_DESDE_IVA_Caption', 'Validez desde', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_FECHA_DESDE_IVA_Index', '11', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_FECHA_DESDE_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_FECHA_DESDE_IVA_Width', '121', '', NULL, NULL, '2023-04-23 14:15:10', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_FECHA_HASTA_IVA_Caption', 'Validez hasta', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_FECHA_HASTA_IVA_Index', '12', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_FECHA_HASTA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_FECHA_HASTA_IVA_Width', '116', '', NULL, NULL, '2023-04-23 14:15:11', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_Caption', 'Grupo Zona', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_Index', '1', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_Width', '103', '', NULL, NULL, '2023-04-23 14:15:10', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_INSTANTEALTA_Index', '14', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_INSTANTEMODIF_Index', '13', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_NORMAL_IVA_Caption', '% IVA Normal', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_NORMAL_IVA_Index', '5', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_NORMAL_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_NORMAL_IVA_Width', '113', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_NORMAL_RE_IVA_Caption', ' % RE IVA Normal', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_NORMAL_RE_IVA_Index', '6', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_NORMAL_RE_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_NORMAL_RE_IVA_Width', '153', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_Caption', 'Palabra en informes', '', NULL, NULL, '2023-04-23 15:10:32', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_Index', '17', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_Width', '248', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENEXENTO_IVA_Caption', '% Exento', '', NULL, NULL, '2023-04-23 14:31:40', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENEXENTO_IVA_Index', '9', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENEXENTO_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:10', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENEXENTO_IVA_Width', '77', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENEXENTO_RE_IVA_Caption', '% RE Exento', '', NULL, NULL, '2023-04-23 14:31:48', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENEXENTO_RE_IVA_Index', '10', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENEXENTO_RE_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:10', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENEXENTO_RE_IVA_Width', '102', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENNORMAL_IVA_Caption', '% Normal', '', NULL, NULL, '2023-04-23 14:31:52', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENNORMAL_IVA_Index', '3', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENNORMAL_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:10', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENNORMAL_IVA_Width', '83', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENNORMAL_RE_IVA_Caption', '% RE Normal', '', NULL, NULL, '2023-04-23 14:32:01', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENNORMAL_RE_IVA_Index', '4', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENNORMAL_RE_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:10', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENNORMAL_RE_IVA_Width', '108', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENREDUCIDO_IVA_Caption', '% Reducido', '', NULL, NULL, '2023-04-23 14:32:07', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENREDUCIDO_IVA_Index', '5', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENREDUCIDO_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:10', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENREDUCIDO_IVA_Width', '100', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENREDUCIDO_RE_IVA_Caption', '% RE Reducido', '', NULL, NULL, '2023-04-23 14:32:12', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENREDUCIDO_RE_IVA_Index', '6', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENREDUCIDO_RE_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:10', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENREDUCIDO_RE_IVA_Width', '125', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENSUPERREDUCIDO_IVA_Caption', '% SuperReducido', '', NULL, NULL, '2023-04-23 14:32:20', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENSUPERREDUCIDO_IVA_Index', '7', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENSUPERREDUCIDO_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:10', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENSUPERREDUCIDO_IVA_Width', '147', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENSUPERREDUCIDO_RE_IVA_Caption', '% RE SuperReducido', '', NULL, NULL, '2023-04-23 14:32:27', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENSUPERREDUCIDO_RE_IVA_Index', '8', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENSUPERREDUCIDO_RE_IVA_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:10', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_PORCENSUPERREDUCIDO_RE_IVA_Width', '172', '', NULL, NULL, '2023-04-23 14:47:17', '2023-04-23 14:15:10', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_REDUCIDO_IVA_Caption', '% IVA Reducido', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_REDUCIDO_IVA_Index', '7', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_REDUCIDO_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_REDUCIDO_IVA_Width', '129', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_REDUCIDO_RE_IVA_Caption', '% RE IVA Reducido', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_REDUCIDO_RE_IVA_Index', '8', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_REDUCIDO_RE_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_REDUCIDO_RE_IVA_Width', '153', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_SUPERREDUCIDO_IVA_Caption', '% IVA SúperReducido', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_SUPERREDUCIDO_IVA_Index', '9', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_SUPERREDUCIDO_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_SUPERREDUCIDO_IVA_Width', '183', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_SUPERREDUCIDO_RE_IVA_Caption', '% RE IVA SúperReducido', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_SUPERREDUCIDO_RE_IVA_Index', '10', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_SUPERREDUCIDO_RE_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_SUPERREDUCIDO_RE_IVA_Width', '194', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_USUARIOALTA_Index', '15', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_USUARIOMODIF_Index', '16', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'cxGrdDBTabPrin_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2023-01-27 10:20:32', '2023-01-27 10:20:32', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'lblEditMode_Caption', 'Navegando', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'lblTablaOrigen_Caption', 'vi_ivas', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'lblTextoaBuscar_Caption', 'Texto a buscar', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'lblTextoaBuscarPerfil_Caption', 'Texto a buscar', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'oApplySkin', 'False', '', NULL, NULL, '2023-04-23 14:04:14', '2023-04-23 14:04:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'oApplyWidth', 'True', '', NULL, NULL, '2023-04-23 14:04:14', '2023-04-23 14:04:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'oBusqGlobal', 'Grid', '', NULL, NULL, '2023-04-23 14:04:14', '2023-04-23 14:04:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'oCreateItems', 'False', '', NULL, NULL, '2023-04-23 14:04:14', '2023-04-23 14:04:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2023-04-23 14:04:14', '2023-04-23 14:04:14', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tsFicha_Caption', '&Ficha', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tsLista_Caption', '&Lista', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tsPerfil_Caption', 'Perfil', '', NULL, NULL, '2023-04-23 14:03:57', '2023-04-23 14:03:57', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_KEY_PERFILES_Caption', 'KEY_PERFILES', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_KEY_PERFILES_Index', '1', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_KEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_KEY_PERFILES_Width', '132', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_SUBKEY_PERFILES_Caption', 'SUBKEY_PERFILES', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_SUBKEY_PERFILES_Index', '2', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_SUBKEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_SUBKEY_PERFILES_Width', '190', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_TYPE_BLOB_PERFILES_Caption', 'TYPE_BLOB_PERFILES', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_TYPE_BLOB_PERFILES_Index', '5', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_TYPE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_TYPE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Caption', 'USUARIO_GRUPO_PERFILES', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Index', '0', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_USUARIO_GRUPO_PERFILES_Width', '167', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_BLOB_PERFILES_Caption', 'VALUE_BLOB_PERFILES', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_BLOB_PERFILES_Index', '6', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_PERFILES_Caption', 'VALUE_PERFILES', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_PERFILES_Index', '3', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_PERFILES_Width', '112', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_TEXT_PERFILES_Caption', 'VALUE_TEXT_PERFILES', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_TEXT_PERFILES_Index', '4', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_TEXT_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvas', 'tvPerfil_VALUE_TEXT_PERFILES_Width', '140', '', NULL, NULL, '2023-04-23 14:15:11', '2023-04-23 14:15:11', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_APLICA_RE_ZONA_IVA_Caption', 'Grupo permite Recargo de Equivalencia', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_APLICA_RE_ZONA_IVA_Index', '2', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_APLICA_RE_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_APLICA_RE_ZONA_IVA_Width', '298', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_DEFAULT_ZONA_IVA_Caption', 'Zona por defecto', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_DEFAULT_ZONA_IVA_Index', '3', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_DEFAULT_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_DEFAULT_ZONA_IVA_Width', '150', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Caption', 'Descripción Zona', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Index', '1', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_DESCRIPCION_ZONA_IVA_Width', '331', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_Caption', 'Es Iva REAGP', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_Index', '5', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_ESIVAAGRICOLA_ZONA_IVA_Width', '117', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_Caption', 'Código Grupo IVA', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_Index', '0', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_GRUPO_ZONA_IVA_Width', '143', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_IRPF_IMP_INCL_ZONA_IVA_Caption', 'Es IRPF calculado a partir de la suma de base imp e impuestos', '', NULL, NULL, '2023-04-23 14:48:43', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_IRPF_IMP_INCL_ZONA_IVA_Index', '4', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_IRPF_IMP_INCL_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_IRPF_IMP_INCL_ZONA_IVA_Width', '363', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_Caption', 'Palabra IVA en Documentos', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_Index', '6', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_Visible', 'True', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoIvasGrupos', 'cxGrdDBTabPrin_PALABRA_REPORTS_ZONA_IVA_Width', '96', '', NULL, NULL, '2023-01-27 10:19:55', '2023-01-27 10:19:55', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'btnCancelar_Caption', '&Cancelar', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'btnCargarCaptions_Caption', '&Cargar captions', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'btnCargarColumnas_Caption', '&Cargar columnas', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'btnCargarVblesGlob_Caption', '&Cargar Vbles Globales', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'btnGrabar_Caption', '&Grabar', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'btnSalir_Caption', '&Salir', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'chkActivo_Caption', 'Activo', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_ACTIVO_PROVEEDOR_Caption', 'Activo', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_ACTIVO_PROVEEDOR_Index', '1', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_ACTIVO_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_ACTIVO_PROVEEDOR_Width', '44', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CODIGO_PROVEEDOR_Caption', 'Código', '', NULL, NULL, '2021-06-15 19:22:08', '2021-06-15 19:22:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CODIGO_PROVEEDOR_Index', '0', '', NULL, NULL, '2021-06-15 19:22:08', '2021-06-15 19:22:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CODIGO_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:08', '2021-06-15 19:22:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CODIGO_PROVEEDOR_Width', '57', '', NULL, NULL, '2021-06-15 19:22:08', '2021-06-15 19:22:08', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CONTACTO_PROVEEDOR_Caption', 'Contacto', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CONTACTO_PROVEEDOR_Index', '4', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CONTACTO_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CONTACTO_PROVEEDOR_Width', '151', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CPOSTAL_PROVEEDOR_Caption', 'Código Postal', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CPOSTAL_PROVEEDOR_Index', '12', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CPOSTAL_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_CPOSTAL_PROVEEDOR_Width', '95', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_DIRECCION1_PROVEEDOR_Caption', 'Dirección', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_DIRECCION1_PROVEEDOR_Index', '8', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_DIRECCION1_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_DIRECCION1_PROVEEDOR_Width', '251', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_DIRECCION2_PROVEEDOR_Caption', 'Más Dirección', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_DIRECCION2_PROVEEDOR_Index', '9', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_DIRECCION2_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_DIRECCION2_PROVEEDOR_Width', '77', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_EMAIL_PROVEEDOR_Caption', 'Email', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_EMAIL_PROVEEDOR_Index', '7', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_EMAIL_PROVEEDOR_Visible', 'False', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_EMAIL_PROVEEDOR_Width', '196', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_IBAN_PROVEEDOR_Index', '17', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_IBAN_PROVEEDOR_Visible', 'False', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_INSTANTEALTA_Index', '19', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_INSTANTEALTA_Visible', 'False', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_INSTANTEMODIF_Index', '18', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_INSTANTEMODIF_Visible', 'False', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_MOVIL_PROVEEDOR_Caption', 'Teléfono Móvil', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_MOVIL_PROVEEDOR_Index', '5', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_MOVIL_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_MOVIL_PROVEEDOR_Width', '113', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_NIF_PROVEEDOR_Caption', 'Nif Cif', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_NIF_PROVEEDOR_Index', '3', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_NIF_PROVEEDOR_Visible', 'False', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_NIF_PROVEEDOR_Width', '104', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_OBSERVACIONES_PROVEEDOR_Caption', 'Observaciones', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_OBSERVACIONES_PROVEEDOR_Index', '14', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_OBSERVACIONES_PROVEEDOR_Visible', 'False', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_OBSERVACIONES_PROVEEDOR_Width', '192', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_PAIS_PROVEEDOR_Caption', 'País', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_PAIS_PROVEEDOR_Index', '13', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_PAIS_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_PAIS_PROVEEDOR_Width', '118', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_POBLACION_PROVEEDOR_Caption', 'Población', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_POBLACION_PROVEEDOR_Index', '10', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_POBLACION_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_POBLACION_PROVEEDOR_Width', '146', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_PROVINCIA_PROVEEDOR_Caption', 'Provincia', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_PROVINCIA_PROVEEDOR_Index', '11', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_PROVINCIA_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_PROVINCIA_PROVEEDOR_Width', '135', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_RAZONSOCIAL_PROVEEDOR_Caption', 'Razón Social', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_RAZONSOCIAL_PROVEEDOR_Index', '2', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_RAZONSOCIAL_PROVEEDOR_Visible', 'True', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_RAZONSOCIAL_PROVEEDOR_Width', '212', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_REFERENCIA_PROVEEDOR_Caption', 'Referencia', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_REFERENCIA_PROVEEDOR_Index', '15', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_REFERENCIA_PROVEEDOR_Visible', 'False', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_REFERENCIA_PROVEEDOR_Width', '184', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_PROVEEDOR_Caption', 'Teléfono de Contacto', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_PROVEEDOR_Index', '16', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_PROVEEDOR_Visible', 'False', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_TELEFONO_CONTACTO_PROVEEDOR_Width', '140', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_TELEFONO_PROVEEDOR_Caption', 'Teléfono Fijo', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_TELEFONO_PROVEEDOR_Index', '6', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_TELEFONO_PROVEEDOR_Visible', 'False', '', NULL, NULL, '2021-06-15 19:24:18', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_TELEFONO_PROVEEDOR_Width', '121', '', NULL, NULL, '2021-06-15 19:22:28', '2021-06-15 19:22:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_USUARIOALTA_Index', '20', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_USUARIOALTA_Visible', 'False', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_USUARIOMODIF_Index', '21', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'cxGrdDBTabPrin_USUARIOMODIF_Visible', 'False', '', NULL, NULL, '2021-06-15 19:22:09', '2021-06-15 19:22:09', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblCodigoCliente_Caption', 'Código', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblCodPostal_Caption', 'Código Postal', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblContacto_Caption', 'Contacto', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblDireccion1_Caption', 'Dirección 1', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblDireccion2_Caption', 'Dirección 2', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblEditMode_Caption', 'Navegando', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblEmail_Caption', 'Email', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblInstanteAlta_Caption', 'Instante Alta', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblInstanteModif_Caption', 'Instante Modificación', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblNif_Caption', 'NIF/CIF', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblNroCuenta_Caption', 'IBAN Bancario', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblObservaciones_Caption', 'Observaciones', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblPais_Caption', 'País', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblPoblacion_Caption', 'Población', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblProvincia_Caption', 'Provincia', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblRazonSocial_Caption', 'Razón Social Fiscal', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblReferencia_Caption', 'Referencia', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblTablaOrigen_Caption', 'fza_proveedores', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblTelefonoContacto_Caption', 'Teléfono Contacto', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblTeléfonos_Caption', 'Teléfonos', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblTextoaBuscar_Caption', 'Texto a buscar', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblTextoaBuscarPerfil_Caption', 'Texto a buscar', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblUsuarioAlta_Caption', 'Usuario Alta', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'lblUsuarioModif_Caption', 'Usuario Última Modificación', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'oApplySkin', 'False', '', NULL, NULL, '2021-06-15 19:23:02', '2021-06-15 19:23:02', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'oApplyWidth', 'True', '', NULL, NULL, '2021-06-15 19:23:02', '2021-06-15 19:23:02', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'oBusqGlobal', 'Database', '', NULL, NULL, '2021-06-15 19:23:02', '2021-06-15 19:23:02', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'oCreateItems', 'False', '', NULL, NULL, '2021-06-15 19:23:02', '2021-06-15 19:23:02', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'oSkin', 'cxPCPainter', '', NULL, NULL, '2021-06-15 19:23:02', '2021-06-15 19:23:02', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'tsDomicilioFiscal_Caption', 'Domicilio fiscal', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'tsFicha_Caption', '&Ficha', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'tsHistoriaFacturacion_Caption', 'Historia Facturación', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'tsLista_Caption', '&Lista', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'tsMasDatos_Caption', 'Más datos', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'tsOtros_Caption', 'Otros', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'tsPerfil_Caption', 'Perfil', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoProveedores', 'tsPresupuestos_Caption', 'Historia Presupuestos', '', NULL, NULL, '2021-06-15 19:23:04', '2021-06-15 19:23:04', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin__oApplyWidth', 'True', NULL, NULL, NULL, '2023-04-25 12:23:28', '2023-04-25 12:23:28', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_EMPRESADEF_USUARIO_Caption', 'Empresa por defecto', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_EMPRESADEF_USUARIO_Index', '3', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_EMPRESADEF_USUARIO_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_EMPRESADEF_USUARIO_Width', '175', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_GRUPO_USUARIO_Caption', 'Grupo', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_GRUPO_USUARIO_Index', '2', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_GRUPO_USUARIO_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_GRUPO_USUARIO_Width', '197', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_PASSWORD_USUARIO_Caption', 'Password Encriptado', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_PASSWORD_USUARIO_Index', '1', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_PASSWORD_USUARIO_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_PASSWORD_USUARIO_Width', '230', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_ULTIMOLOGIN_USUARIO_Caption', 'Última Conexión', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_ULTIMOLOGIN_USUARIO_Index', '4', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_ULTIMOLOGIN_USUARIO_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_ULTIMOLOGIN_USUARIO_Width', '190', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_USUARIO_USUARIO_Caption', 'Nombre de Usuario', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_USUARIO_USUARIO_Index', '0', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_USUARIO_USUARIO_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'cxGrdDBTabPrin_USUARIO_USUARIO_Width', '168', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'oApplySkin', 'True', '', NULL, NULL, '2023-04-25 12:27:08', '2023-04-25 12:23:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'oApplyWidth', 'True', '', NULL, NULL, '2023-04-25 12:23:31', '2023-04-25 12:23:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'oBusqGlobal', 'Grid', '', NULL, NULL, '2023-04-25 12:23:31', '2023-04-25 12:23:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'oCreateItems', 'False', '', NULL, NULL, '2023-04-25 12:23:31', '2023-04-25 12:23:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'oSkin', 'Summer2008', '', NULL, NULL, '2023-04-25 12:31:49', '2023-04-25 12:23:31', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_KEY_PERFILES_Caption', 'KEY_PERFILES', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_KEY_PERFILES_Index', '1', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_KEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_KEY_PERFILES_Width', '132', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_SUBKEY_PERFILES_Caption', 'SUBKEY_PERFILES', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_SUBKEY_PERFILES_Index', '2', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_SUBKEY_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_SUBKEY_PERFILES_Width', '190', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_TYPE_BLOB_PERFILES_Caption', 'TYPE_BLOB_PERFILES', '', NULL, NULL, '2023-04-25 12:22:44', '2023-04-25 12:22:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_TYPE_BLOB_PERFILES_Index', '5', '', NULL, NULL, '2023-04-25 12:22:44', '2023-04-25 12:22:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_TYPE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:44', '2023-04-25 12:22:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_TYPE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-25 12:22:44', '2023-04-25 12:22:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_USUARIO_GRUPO_PERFILES_Caption', 'USUARIO_GRUPO_PERFILES', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_USUARIO_GRUPO_PERFILES_Index', '0', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_USUARIO_GRUPO_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_USUARIO_GRUPO_PERFILES_Width', '167', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_BLOB_PERFILES_Caption', 'VALUE_BLOB_PERFILES', '', NULL, NULL, '2023-04-25 12:22:44', '2023-04-25 12:22:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_BLOB_PERFILES_Index', '6', '', NULL, NULL, '2023-04-25 12:22:44', '2023-04-25 12:22:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_BLOB_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:44', '2023-04-25 12:22:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_BLOB_PERFILES_Width', '114', '', NULL, NULL, '2023-04-25 12:22:44', '2023-04-25 12:22:44', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_PERFILES_Caption', 'VALUE_PERFILES', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_PERFILES_Index', '3', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_PERFILES_Width', '112', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_TEXT_PERFILES_Caption', 'VALUE_TEXT_PERFILES', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_TEXT_PERFILES_Index', '4', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_TEXT_PERFILES_Visible', 'True', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmMtoUsuarios', 'tvPerfil_VALUE_TEXT_PERFILES_Width', '140', '', NULL, NULL, '2023-04-25 12:22:43', '2023-04-25 12:22:43', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmPrintFac', 'frxrprt1_Descripciones Ampliadas', 'Descripciones Ampliadas', NULL, NULL, 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574662D3822207374616E64616C6F6E653D226E6F223F3E0D0A3C546672785265706F72742056657273696F6E3D22362E392E332220446F744D61747269785265706F72743D2246616C73652220496E6946696C653D225C536F6674776172655C46617374205265706F7274732220507265766965774F7074696F6E732E427574746F6E733D22343039352220507265766965774F7074696F6E732E5A6F6F6D3D223122205072696E744F7074696F6E732E5072696E7465723D22506F72206465666563746F22205072696E744F7074696F6E732E5072696E744F6E53686565743D223022205265706F72744F7074696F6E732E417574686F723D2246616374755A616D22205265706F72744F7074696F6E732E437265617465446174653D2234323438312C3633343637353734303722205265706F72744F7074696F6E732E4465736372697074696F6E2E546578743D2222205265706F72744F7074696F6E732E4C6173744368616E67653D2234353036352C3537393138363732343522205363726970744C616E67756167653D2250617363616C5363726970742220536372697074546578742E546578743D2270726F63656475726520526574656E63696F6E546F74616C4F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B2020696620262336303B46616374757261732E262333343B544F54414C5F524554454E43494F4E5F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B20202020526574656E63696F6E546F74616C2E56697369626C65203A3D20547275653B262331333B262331303B20202020526574656E63696F6E2E56697369626C653A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B20202020526574656E63696F6E546F74616C2E56697369626C65203A3D2046616C73653B262331333B262331303B20202020526574656E63696F6E2E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F63656475726520496D70756573746F73546F74616C4F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B2020696620262336303B46616374757261732E262333343B544F54414C5F494D50554553544F535F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B20202020496D70756573746F73546F74616C2E56697369626C65203A3D20547275653B262331333B262331303B20202020496D70756573746F732E56697369626C653A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B20202020496D70756573746F73546F74616C2E56697369626C65203A3D2046616C73653B262331333B262331303B20202020496D70756573746F732E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F6365647572652042617365496D706F6E69626C654E4F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B2020696620262336303B46616374757261732E262333343B544F54414C5F42415345495F4956414E5F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B2020202042617365496D706F6E69626C654E2E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F4956414E5F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173504F5243454E5F4956414E5F464143545552412E56697369626C653A3D20547275653B262331333B262331303B202020204661637475726173504F5243454E5F52454E5F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F52454E5F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B2020202042617365496D706F6E69626C654E2E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F4956414E5F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173504F5243454E5F4956414E5F464143545552412E56697369626C653A3D2046616C73653B262331333B262331303B202020204661637475726173504F5243454E5F52454E5F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F52454E5F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F6365647572652042617365496D706F6E69626C65524F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B2020696620262336303B46616374757261732E262333343B544F54414C5F42415345495F495641525F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B2020202042617365496D706F6E69626C65522E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F495641525F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173504F5243454E5F495641525F464143545552412E56697369626C653A3D20547275653B262331333B262331303B202020204661637475726173504F5243454E5F5245525F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F5245525F46414354555241312E56697369626C65203A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B2020202042617365496D706F6E69626C65522E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F495641525F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173504F5243454E5F495641525F464143545552412E56697369626C653A3D2046616C73653B262331333B262331303B202020204661637475726173504F5243454E5F5245525F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F5245525F46414354555241312E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F6365647572652042617365496D706F6E69626C65534F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B2020696620262336303B46616374757261732E262333343B544F54414C5F42415345495F495641535F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B2020202042617365496D706F6E69626C65532E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F495641535F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173504F5243454E5F495641535F464143545552412E56697369626C653A3D20547275653B262331333B262331303B202020204661637475726173504F5243454E5F5245535F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F5245535F46414354555241312E56697369626C65203A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B2020202042617365496D706F6E69626C65532E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F495641535F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173504F5243454E5F495641535F464143545552412E56697369626C653A3D2046616C73653B262331333B262331303B202020204661637475726173504F5243454E5F5245535F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F5245535F46414354555241312E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F6365647572652042617365496D706F6E69626C65454F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B20202020696620262336303B46616374757261732E262333343B544F54414C5F42415345495F495641455F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B2020202042617365496D706F6E69626C65452E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F495641455F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173504F5243454E5F495641455F464143545552412E56697369626C653A3D20547275653B262331333B262331303B202020204661637475726173504F5243454E5F5245455F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F5245455F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B2020202042617365496D706F6E69626C65452E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F495641455F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173504F5243454E5F495641455F464143545552412E56697369626C653A3D2046616C73653B262331333B262331303B202020204661637475726173504F5243454E5F5245455F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F5245455F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B202069662028262336303B46616374757261732E262333343B544F54414C5F42415345495F495641455F46414354555241262333343B262336323B203D20262336303B46616374757261732E262333343B544F54414C5F42415345535F46414354555241262333343B262336323B29207468656E262331333B262331303B2020626567696E262331333B262331303B2020202043616A614956412E56697369626C65203A3D2046616C73653B262331333B262331303B2020202043616A61546974756C6F734956412E56697369626C65203A3D2046616C73653B262331333B262331303B2020202042617365496D706F6E69626C65452E56697369626C65203A3D2046616C73653B262331333B262331303B20202020546974756C6F506F7263656E43616A614956412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173504F5243454E5F495641455F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F495641455F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B2020202042617365496D706F6E69626C6543616A614956412E56697369626C65203A3D2046616C73653B262331333B262331303B20202020546974756C6F546F74616C43616A614956412E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F636564757265204661637475726173544F54414C5F52454E5F464143545552414F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B2020696620262336303B46616374757261732E262333343B544F54414C5F52454E5F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B202020204661637475726173504F5243454E5F52454E5F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F52454E5F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B202020204661637475726173504F5243454E5F52454E5F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F52454E5F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F636564757265204661637475726173544F54414C5F5245525F464143545552414F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B2020696620262336303B46616374757261732E262333343B544F54414C5F5245525F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B202020204661637475726173504F5243454E5F5245525F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F5245525F46414354555241312E56697369626C65203A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B202020204661637475726173504F5243454E5F5245525F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F5245525F46414354555241312E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F636564757265204661637475726173544F54414C5F5245535F464143545552414F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B2020696620262336303B46616374757261732E262333343B544F54414C5F5245535F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B202020204661637475726173504F5243454E5F5245535F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F5245535F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B202020204661637475726173504F5243454E5F5245535F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F5245535F46414354555241312E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F636564757265204661637475726173544F54414C5F5245455F464143545552414F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B20202020696620262336303B46616374757261732E262333343B544F54414C5F5245455F46414354555241262333343B262336323B20262336303B262336323B2030207468656E262331333B262331303B2020626567696E262331333B262331303B202020204661637475726173504F5243454E5F5245455F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B202020204661637475726173544F54414C5F5245455F464143545552412E56697369626C65203A3D20547275653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B202020204661637475726173504F5243454E5F5245455F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B202020204661637475726173544F54414C5F5245455F464143545552412E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E643B262331333B262331303B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F63656475726520526574656E63696F6E506F72634F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B2020496620282820262336303B46616374757261732E262333343B544F54414C5F5245455F46414354555241262333343B262336323B202B262331333B262331303B2020202020202020262336303B46616374757261732E262333343B544F54414C5F5245535F46414354555241262333343B262336323B202B262331333B262331303B2020202020202020262336303B46616374757261732E262333343B544F54414C5F5245525F46414354555241262333343B262336323B202B262331333B262331303B2020202020202020262336303B46616374757261732E262333343B544F54414C5F52454E5F46414354555241262333343B262336323B2029203D203029207468656E262331333B262331303B2020626567696E262331333B262331303B20202020526574656E63696F6E506F72632E56697369626C65203A3D2046616C73653B262331333B262331303B20202020526574656E63696F6E546F742E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B20202020526574656E63696F6E506F72632E56697369626C65203A3D20547275653B262331333B262331303B20202020526574656E63696F6E546F742E56697369626C65203A3D20547275653B262331333B262331303B2020656E643B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F6365647572652050616765466F6F746572314F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B202020456E67696E652E43757259203A3D202832302E35202A20667231636D293B262331333B262331303B656E643B262331333B262331303B262331333B262331303B70726F6365647572652044657461696C44617461314F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B202049662028262336303B46616374757261732E262333343B455346454348414445454E54524547415F46414354555241262333343B262336323B20262336303B262336323B2027532729207468656E262331333B262331303B202020626567696E262331333B262331303B202020204C696E65617346616374757261734445534352495043494F4E5F4152544943554C4F5F464143545552415F4C494E45412E5769647468203A3D2039383B262331333B262331303B202020204C696E656173466163747572617346454348415F454E54524547415F464143545552415F4C494E45412E56697369626C65203A3D2046616C73653B262331333B262331303B2020656E64262331333B262331303B2020656C7365262331333B262331303B2020626567696E262331333B262331303B202020204C696E65617346616374757261734445534352495043494F4E5F4152544943554C4F5F464143545552415F4C494E45412E5769647468203A3D2037363B262331333B262331303B202020204C696E656173466163747572617346454348415F454E54524547415F464143545552415F4C494E45412E56697369626C65203A3D20547275653B262331333B262331303B2020656E643B262331333B262331303B656E643B262331333B262331303B70726F636564757265204665636861456E7472656761546974746C654F6E4265666F72655072696E742853656E6465723A2054667278436F6D706F6E656E74293B262331333B262331303B626567696E262331333B262331303B202049662028262336303B46616374757261732E262333343B455346454348414445454E54524547415F46414354555241262333343B262336323B20262336303B262336323B2027532729207468656E262331333B262331303B202020204665636861456E7472656761546974746C652E56697369626C65203A3D2046616C7365262331333B262331303B2020656C7365262331333B262331303B202020204665636861456E7472656761546974746C652E56697369626C65203A3D20547275653B262331333B262331303B656E643B262331333B262331303B262331333B262331303B626567696E262331333B262331303B656E642E223E0D0A20203C44617461736574733E0D0A202020203C6974656D20446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D224661637475726173222F3E0D0A202020203C6974656D20446174615365743D22646D46616374757261732E66786473745072696E744C696E4661632220446174615365744E616D653D224C696E656173204661637475726173222F3E0D0A20203C2F44617461736574733E0D0A20203C546672784461746150616765204E616D653D22446174612220484775696465732E546578743D222220564775696465732E546578743D2222204865696768743D223130303022204C6566743D22302220546F703D2230222057696474683D2231303030223E0D0A202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F5245525F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223339382C34303937312220546F703D223530342C3033313534222057696474683D2236342C323532303122204865696768743D2231382C383937363522204F6E4265666F72655072696E743D224661637475726173544F54414C5F5245525F464143545552414F6E4265666F72655072696E742220446174614669656C643D22544F54414C5F5245525F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F5245525F46414354555241262333343B5D222F3E0D0A202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F5245535F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223339382C34303937312220546F703D223533302C3438383235222057696474683D2236342C323532303122204865696768743D2231382C383937363522204F6E4265666F72655072696E743D224661637475726173544F54414C5F5245535F464143545552414F6E4265666F72655072696E742220446174614669656C643D22544F54414C5F5245535F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F5245535F46414354555241262333343B5D222F3E0D0A20203C2F5466727844617461506167653E0D0A20203C546672785265706F727450616765204E616D653D2250616765312220484775696465732E546578743D222220564775696465732E546578743D222220506170657257696474683D22323130222050617065724865696768743D223239372220506170657253697A653D223922204C6566744D617267696E3D2235222052696768744D617267696E3D22352220546F704D617267696E3D2232302220426F74746F6D4D617267696E3D2232302220436F6C756D6E57696474683D22302220436F6C756D6E506F736974696F6E732E546578743D2222204672616D652E5479703D223022204D6972726F724D6F64653D2230223E0D0A202020203C546672784D617374657244617461204E616D653D224D61737465724461746131222046696C6C547970653D2266744272757368222046696C6C4761702E546F703D2230222046696C6C4761702E4C6566743D2230222046696C6C4761702E426F74746F6D3D2230222046696C6C4761702E52696768743D223022204672616D652E5479703D223022204865696768743D223335312C343936323922204C6566743D22302220546F703D2231382C3839373635222057696474683D223735352C3930362220436F6C756D6E57696474683D22302220436F6C756D6E4761703D22302220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220526F77436F756E743D2230223E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223333322C35393836342220546F703D22332C3737393533222057696474683D2239302C373038373222204865696768743D2232322C36373731382220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31392220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D2246414354555241222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F322220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2231362C36373731382220546F703D223137302C3037383835222057696474683D223335352C323735383222204865696768743D223133362C30363330382220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F332220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223338392C32393135392220546F703D223137302C3037383835222057696474683D223335352C323735383222204865696768743D223133362C30363330382220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617352415A4F4E534F4349414C5F454D50524553415F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2231382C38393736352220546F703D223137332C3835383338222057696474683D223334302C3135373722204865696768743D2231382C38393736352220446174614669656C643D2252415A4F4E534F4349414C5F454D50524553415F464143545552412220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B52415A4F4E534F4349414C5F454D50524553415F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173444952454343494F4E315F454D50524553415F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2231382C38393736352220546F703D223139362C3533353536222057696474683D223334302C3135373722204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B444952454343494F4E315F454D50524553415F46414354555241262333343B5D205B46616374757261732E262333343B444952454343494F4E325F454D50524553415F46414354555241262333343B5D223E0D0A20202020202020203C466F726D6174733E0D0A202020202020202020203C6974656D2F3E0D0A202020202020202020203C6974656D2F3E0D0A20202020202020203C2F466F726D6174733E0D0A2020202020203C2F546672784D656D6F566965773E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617343504F5354414C5F454D50524553415F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2231382C38393736352220546F703D223231372C3838393932222057696474683D223334302C3135373722204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B43504F5354414C5F454D50524553415F46414354555241262333343B5D2020205B46616374757261732E262333343B504F424C4143494F4E5F454D50524553415F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617350524F56494E4349415F454D50524553415F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2231382C38393736352220546F703D223234302C35363731222057696474683D223334302C3135373722204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D2228205B46616374757261732E262333343B50524F56494E4349415F454D50524553415F46414354555241262333343B5D2029222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2246616374757261734D4F56494C5F454D50524553415F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2231382C38393736352220546F703D223236332C3234343238222057696474683D223131372C313635343322204865696768743D2231382C38393736352220446174614669656C643D224D4F56494C5F454D50524553415F464143545552412220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B4D4F56494C5F454D50524553415F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173454D41494C5F454D50524553415F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223134332C36323231342220546F703D223236332C3234343238222057696474683D223231352C343333323122204865696768743D2231382C38393736352220446174614669656C643D22454D41494C5F454D50524553415F464143545552412220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B454D41494C5F454D50524553415F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F342220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232322C36373731382220546F703D223133392C3834323631222057696474683D2235322C393133343222204865696768743D2232322C36373731382220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31362220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D22456D69736F72222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F352220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223636382C39373638312220546F703D223133392C3834323631222057696474683D2237352C3539303622204865696768743D2232322C36373731382220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31362220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225265636570746F72222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617352415A4F4E534F4349414C5F434C49454E54455F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223430322C30373131322220546F703D223137332C3835383338222057696474683D223334372C373136373622204865696768743D2231382C38393736352220446174614669656C643D2252415A4F4E534F4349414C5F434C49454E54455F464143545552412220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B52415A4F4E534F4349414C5F434C49454E54455F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173444952454343494F4E315F454D50524553415F46414354555241312220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223430312C38353036352220546F703D223139372C3331353039222057696474683D223334372C373136373622204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B444952454343494F4E315F434C49454E54455F46414354555241262333343B5D205B46616374757261732E262333343B444952454343494F4E325F434C49454E54455F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617343504F5354414C5F434C49454E54455F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223430322C30373131322220546F703D223231352C3433333231222057696474683D223330322C3336323422204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B43504F5354414C5F434C49454E54455F46414354555241262333343B5D2020205B46616374757261732E262333343B504F424C4143494F4E5F434C49454E54455F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617350524F56494E4349415F454D50524553415F46414354555241312220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223430322C30373131322220546F703D223233342C3333303836222057696474683D223334372C373136373622204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D2228205B46616374757261732E262333343B50524F56494E4349415F434C49454E54455F46414354555241262333343B5D2029222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504149535F434C49454E54455F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223537342C34383835362220546F703D223235372C3030383034222057696474683D223136362C323939333222204865696768743D2231382C38393736352220446174614669656C643D22504149535F434C49454E54455F464143545552412220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B504149535F434C49454E54455F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2246616374757261734D4F56494C5F434C49454E54455F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223430322C30373131322220546F703D223237352C3930353639222057696474683D223132382C353034303222204865696768743D2231382C38393736352220446174614669656C643D224D4F56494C5F434C49454E54455F464143545552412220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B4D4F56494C5F434C49454E54455F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173454D41494C5F434C49454E54455F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223533362C36393332362220546F703D223237352C3930353639222057696474683D223230342C303934363222204865696768743D2231382C38393736352220446174614669656C643D22454D41494C5F434C49454E54455F464143545552412220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B454D41494C5F434C49454E54455F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F362220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232322C36373731382220546F703D2235322C3931333432222057696474683D223233382C313130333922204865696768743D2232322C36373731382220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D2246656368613A205B46616374757261732E262333343B46454348415F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2246616374757261734E524F5F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232322C36373731382220546F703D2238332C3134393636222057696474683D223233382C313130333922204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D224EC3BA6D65726F20646520466163747572613A205B46616374757261732E262333343B53455249455F46414354555241262333343B5D2E5B46616374757261732E262333343B4E524F5F46414354555241262333343B5D223E0D0A20202020202020203C466F726D6174733E0D0A202020202020202020203C6974656D2F3E0D0A202020202020202020203C6974656D2F3E0D0A20202020202020203C2F466F726D6174733E0D0A2020202020203C2F546672784D656D6F566965773E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F372220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232322C36373731382220546F703D223332352C3033393538222057696474683D223732392C343439323922204865696768743D2232362C34353637312220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F382220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232362C38393736352220546F703D223332382C3831393131222057696474683D2237392C333730313322204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22446573637269706369C3B36E222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F392220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223635332C38353836392220546F703D223332382C3831393131222057696474683D223134332C363232313422204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22546F74616C222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31302220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223432372C3935332220546F703D223332382C3831393131222057696474683D2237352C3539303622204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220546578743D22437464222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223530332C33323331332220546F703D223332382C3831393131222057696474683D2238332C313439363622204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D2250726563696F222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22546974756C6F497661436F6C756D6E612220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223539332C33383632312220546F703D223332382C3831393131222057696474683D2234392C313333383922204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D2225205B46616374757261732E262333343B50414C414252415F5245504F5254535F5A4F4E415F4956415F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224665636861456E7472656761546974746C652220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223335352C32343432382220546F703D223332382C3831393131222057696474683D2239302C373038373222204865696768743D2231382C383937363522204F6E4265666F72655072696E743D224665636861456E7472656761546974746C654F6E4265666F72655072696E742220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22466563686120456E7472656761222F3E0D0A202020203C2F546672784D6173746572446174613E0D0A202020203C5466727844657461696C44617461204E616D653D2244657461696C4461746131222046696C6C547970653D2266744272757368222046696C6C4761702E546F703D2230222046696C6C4761702E4C6566743D2230222046696C6C4761702E426F74746F6D3D2230222046696C6C4761702E52696768743D223022204672616D652E5479703D223022204865696768743D2234352C333534333622204C6566743D22302220546F703D223339332C3037313132222057696474683D223735352C39303622204F6E4265666F72655072696E743D2244657461696C44617461314F6E4265666F72655072696E742220436F6C756D6E57696474683D22302220436F6C756D6E4761703D22302220446174615365743D22646D46616374757261732E66786473745072696E744C696E4661632220446174615365744E616D653D224C696E6561732046616374757261732220526F77436F756E743D2230223E0D0A2020202020203C546672784D656D6F56696577204E616D653D224C696E6561734661637475726173544F54414C5F4C494E45412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223635332C38353836392220546F703D22342C3333383539222057696474683D2237392C333730313322204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B4C696E6561732046616374757261732E262333343B544F54414C5F464143545552415F4C494E4541262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224C696E656173466163747572617343414E54494441445F464143545552415F4C494E45412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223432372C3935332220546F703D22332C3737393533303030303030303032222057696474683D2237392C333730313322204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220546578743D225B4C696E6561732046616374757261732E262333343B43414E54494441445F464143545552415F4C494E4541262333343B5D205B4C696E6561732046616374757261732E262333343B5449504F5F43414E54494441445F4152544943554C4F5F464143545552415F4C494E4541262333343B5D223E0D0A20202020202020203C466F726D6174733E0D0A202020202020202020203C6974656D2F3E0D0A202020202020202020203C6974656D2F3E0D0A20202020202020203C2F466F726D6174733E0D0A2020202020203C2F546672784D656D6F566965773E0D0A2020202020203C546672784D656D6F56696577204E616D653D224C696E656173466163747572617350524543494F56454E54415F534956415F4152544943554C4F5F464143545552415F4C494E45412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223530332C33323331332220546F703D22332C3737393533303030303030303032222057696474683D2237392C333730313322204865696768743D2231382C38393736352220446174614669656C643D2250524543494F56454E54415F534956415F4152544943554C4F5F464143545552415F4C494E45412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D6572696322204672616D652E5479703D22302220546578743D225B4C696E6561732046616374757261732E262333343B50524543494F56454E54415F534956415F4152544943554C4F5F464143545552415F4C494E4541262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224C696E6561734661637475726173504F5243454E5F4956415F464143545552415F4C494E45412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223539332C33383632312220546F703D22332C3737393533303030303030303032222057696474683D2234352C333534333622204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D22256720252220446973706C6179466F726D61742E4B696E643D22666B4E756D6572696322204672616D652E5479703D22302220546578743D225B4C696E6561732046616374757261732E262333343B504F5243454E5F4956415F464143545552415F4C494E4541262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224C696E656173466163747572617346454348415F454E54524547415F464143545552415F4C494E45412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223335352C32343432382220546F703D22332C3737393533303030303030303032222057696474683D2236342C323532303122204865696768743D2231382C38393736352220446174614669656C643D2246454348415F454E54524547415F464143545552415F4C494E45412220446174615365743D22646D46616374757261732E66786473745072696E744C696E4661632220446174615365744E616D653D224C696E6561732046616374757261732220446973706C6179466F726D61742E466F726D61745374723D2264642F6D6D2F797979792220446973706C6179466F726D61742E4B696E643D22666B4461746554696D652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D222D31363737373230382220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B4C696E6561732046616374757261732E262333343B46454348415F454E54524547415F464143545552415F4C494E4541262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224C696E65617346616374757261734445534352495043494F4E5F4152544943554C4F5F464143545552415F4C494E45412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232362C34353637312220546F703D22342C3333383539303030303030303031222057696474683D223235372C303038303422204865696768743D2231382C38393736352220537472657463684D6F64653D22736D4D617848656967687422204175746F57696474683D22547275652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B4C696E6561732046616374757261732E262333343B4445534352495043494F4E5F4152544943554C4F5F464143545552415F4C494E4541262333343B5D222F3E0D0A202020203C2F5466727844657461696C446174613E0D0A202020203C546672784D656D6F56696577204E616D653D224D656D6F31392220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223837362C38353039373436352220546F703D223631392C3834323932222057696474683D2237392C333730313322204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F4C49515549444F5F46414354555241262333343B5D222F3E0D0A202020203C546672784D656D6F56696577204E616D653D224D656D6F32312220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223837362C38353039373436352220546F703D223538322C3034373632222057696474683D2237392C333730313322204865696768743D2231382C383937363522204F6E4265666F72655072696E743D22526574656E63696F6E546F74616C4F6E4265666F72655072696E742220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B262336303B46616374757261732E262333343B544F54414C5F524554454E43494F4E5F46414354555241262333343B262336323B202A20282D31295D222F3E0D0A202020203C546672784D656D6F56696577204E616D653D224D656D6F32332220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223837372C39363930393436352220546F703D223535332C373031313435222057696474683D2237392C333730313322204865696768743D2231382C383937363522204F6E4265666F72655072696E743D22496D70756573746F73546F74616C4F6E4265666F72655072696E742220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F494D50554553544F535F46414354555241262333343B5D222F3E0D0A202020203C546672784D656D6F56696577204E616D653D224D656D6F32352220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223837372C39363930393436352220546F703D223532352C3335343637222057696474683D2237392C333730313322204865696768743D2231382C383937363522204F6E4265666F72655072696E743D22496D70756573746F73546F74616C4F6E4265666F72655072696E742220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F42415345535F46414354555241262333343B5D222F3E0D0A202020203C5466727850616765466F6F746572204E616D653D2250616765466F6F74657231222046696C6C547970653D2266744272757368222046696C6C4761702E546F703D2230222046696C6C4761702E4C6566743D2230222046696C6C4761702E426F74746F6D3D2230222046696C6C4761702E52696768743D223022204672616D652E5479703D223022204865696768743D223235372C303038303422204C6566743D22302220546F703D223439382C3839373936222057696474683D223735352C39303622204F6E4265666F72655072696E743D2250616765466F6F746572314F6E4265666F72655072696E74223E0D0A2020202020203C546672784D656D6F56696577204E616D653D2243616A614956412220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232322C36373731393436352220546F703D22332C3737393533222057696474683D223436382C363631373222204865696768743D223134332C36323231342220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2243616A61546974756C6F734956412220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232322C36373731382220546F703D22332C3737393533222057696474683D223436382C363631343137333222204865696768743D2232362C34353637312220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31332220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223635332C38353837303436352220546F703D223133322C3238333535222057696474683D2237392C333730313322204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F4C49515549444F5F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22526574656E63696F6E2220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223531322C38393739373436352220546F703D2239342C3438383235222057696474683D223134332C363232313422204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D22526574656E6369C3B36E2049525046205B46616374757261732E262333343B504F5243454E5F524554454E43494F4E5F46414354555241262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22526574656E63696F6E546F74616C2220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223635332C38353837303436352220546F703D2239342C3438383235222057696474683D2237392C333730313322204865696768743D2231382C383937363522204F6E4265666F72655072696E743D22526574656E63696F6E546F74616C4F6E4265666F72655072696E742220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B262336303B46616374757261732E262333343B544F54414C5F524554454E43494F4E5F46414354555241262333343B262336323B202A20282D31295D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31342220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223531322C38393739373436352220546F703D223133322C3238333535222057696474683D223134332C363232313422204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D22546F74616C2046616374757261222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22496D70756573746F73546F74616C2220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223635342C39373638323436352220546F703D2236362C313431373735222057696474683D2237392C333730313322204865696768743D2231382C383937363522204F6E4265666F72655072696E743D22496D70756573746F73546F74616C4F6E4265666F72655072696E742220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F494D50554553544F535F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22496D70756573746F732220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223531342C30313630393436352220546F703D2236362C313431373735222057696474683D223134332C363232313422204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D22546F74616C20496D70756573746F73222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22546F74616C42617365732220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223635342C39373638323436352220546F703D2233372C37393533222057696474683D2237392C333730313322204865696768743D2231382C383937363522204F6E4265666F72655072696E743D22496D70756573746F73546F74616C4F6E4265666F72655072696E742220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F42415345535F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31372220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223531342C30313630393436352220546F703D2233372C37393533222057696474683D223134332C363232313422204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D22546F74616C204261736520496D706F6E69626C65222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2242617365496D706F6E69626C654E2220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2233302C32333632353436352220546F703D2233342C3031353737222057696474683D2239302C373038373222204865696768743D2231352C313138313222204F6E4265666F72655072696E743D2242617365496D706F6E69626C654E4F6E4265666F72655072696E742220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F42415345495F4956414E5F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2242617365496D706F6E69626C6543616A614956412220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2233302C32333632353436352220546F703D22372C3535393036222057696474683D223130322C303437333122204865696768743D2231352C31313831322220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D224261736520496D706F6E69626C65222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2242617365496D706F6E69626C65452220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2233302C32333632353436352220546F703D223131332C33383539222057696474683D2239342C343838323522204865696768743D2231382C383937363522204F6E4265666F72655072696E743D2242617365496D706F6E69626C65454F6E4265666F72655072696E742220446174614669656C643D22544F54414C5F42415345495F495641455F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F42415345495F495641455F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22546974756C6F506F7263656E43616A614956412220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223135312C31383132313436352220546F703D22372C3535393036222057696474683D2236382C303331353422204865696768743D2231352C31313831322220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D2225205B46616374757261732E262333343B50414C414252415F5245504F5254535F5A4F4E415F4956415F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22546974756C6F546F74616C43616A614956412220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223232362C37373138313436352220546F703D22372C3535393036222057696474683D2238362C393239313922204865696768743D2231352C31313831322220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22546F74616C205B46616374757261732E262333343B50414C414252415F5245504F5254535F5A4F4E415F4956415F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22526574656E63696F6E506F72632220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223331372C34383035333436352220546F703D22372C3535393036222057696474683D2237312C383131303722204865696768743D2231352C313138313222204F6E4265666F72655072696E743D22526574656E63696F6E506F72634F6E4265666F72655072696E742220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D222520522E452E222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22526574656E63696F6E546F742220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223339382C34303937323436352220546F703D22372C3535393036222057696474683D2237312C383131303722204865696768743D2231352C31313831322220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22546F74616C20522E452E222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F4956414E5F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223232362C37373138313436352220546F703D2233342C3031353737222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F4956414E5F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504F5243454E5F4956414E5F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223135312C31383132313436352220546F703D2233342C3031353737222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B504F5243454E5F4956414E5F46414354555241262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504F5243454E5F495641525F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223135312C31383132313436352220546F703D2236302C3437323438222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B504F5243454E5F495641525F46414354555241262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504F5243454E5F495641535F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223135312C31383132313436352220546F703D2238362C3932393139222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B504F5243454E5F495641535F46414354555241262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504F5243454E5F495641455F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223135312C31383132313436352220546F703D223131332C33383539222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B504F5243454E5F495641455F46414354555241262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F495641525F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223232362C37373138313436352220546F703D2236302C3437323438222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446174614669656C643D22544F54414C5F495641525F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F495641525F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F495641535F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223232362C37373138313436352220546F703D2238362C3932393139222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446174614669656C643D22544F54414C5F495641535F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F495641535F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F495641455F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223232362C37373138313436352220546F703D223131332C33383539222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446174614669656C643D22544F54414C5F495641455F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F495641455F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504F5243454E5F52454E5F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223331372C34383035333436352220546F703D2233342C3031353737222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B504F5243454E5F52454E5F46414354555241262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504F5243454E5F5245525F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223331372C34383035333436352220546F703D2236302C3437323438222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B504F5243454E5F5245525F46414354555241262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504F5243454E5F5245455F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223331372C34383035333436352220546F703D223131332C33383539222057696474683D2235362C363932393522204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B504F5243454E5F5245455F46414354555241262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504F5243454E5F5245535F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223331372C34383035333436352220546F703D2238362C3932393139222057696474683D2235322C393133343222204865696768743D2231382C38393736352220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225672220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B504F5243454E5F5245535F46414354555241262333343B5D25222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F52454E5F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223339382C34303937323436352220546F703D2233342C3031353737222057696474683D2236342C323532303122204865696768743D2231382C383937363522204F6E4265666F72655072696E743D224661637475726173544F54414C5F52454E5F464143545552414F6E4265666F72655072696E742220446174614669656C643D22544F54414C5F52454E5F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F52454E5F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F5245455F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223339382C34303937323436352220546F703D223131332C33383539222057696474683D2236342C323532303122204865696768743D2231382C383937363522204F6E4265666F72655072696E743D224661637475726173544F54414C5F5245455F464143545552414F6E4265666F72655072696E742220446174614669656C643D22544F54414C5F5245455F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F5245455F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2242617365496D706F6E69626C65522220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2233302C32333632353436352220546F703D2236302C3437323438222057696474683D2239342C343838323522204865696768743D2231382C383937363522204F6E4265666F72655072696E743D2242617365496D706F6E69626C65524F6E4265666F72655072696E742220446174614669656C643D22544F54414C5F42415345495F495641525F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F42415345495F495641525F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2242617365496D706F6E69626C65532220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2233302C32333632353436352220546F703D2238362C3932393139222057696474683D2239342C343838323522204865696768743D2231382C383937363522204F6E4265666F72655072696E743D2242617365496D706F6E69626C65534F6E4265666F72655072696E742220446174614669656C643D22544F54414C5F42415345495F495641535F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F42415345495F495641535F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F5245525F46414354555241312220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223339382C34303937323436352220546F703D2236302C3437323438222057696474683D2236382C303331353422204865696768743D2231382C38393736352220446174614669656C643D22544F54414C5F5245525F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F5245525F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173544F54414C5F5245535F46414354555241312220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223339382C34303937323436352220546F703D2238362C3932393139222057696474683D2236382C303331353422204865696768743D2231382C38393736352220446174614669656C643D22544F54414C5F5245535F464143545552412220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E336D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B46616374757261732E262333343B544F54414C5F5245535F46414354555241262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173434F4D454E544152494F535F464143545552412220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232332C36373731393436352220546F703D223137382C3430313637222057696474683D223731302C353531363422204865696768743D2233302C32333632342220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D222D31363737373230382220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B566172546F53747228262336303B46616374757261732E262333343B544558544F5F4C4547414C5F464143545552415F434C49454E54455F46414354555241262333343B262336323B292B272020272B262331333B262331303B20566172546F53747228262336303B46616374757261732E262333343B544558544F5F4C4547414C5F464143545552415F454D50524553415F46414354555241262333343B262336323B29202B272020272B262331333B262331303B20566172546F53747228262336303B46616374757261732E262333343B434F4D454E544152494F535F46414354555241262333343B262336323B295D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31352220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232362C34353637323436352220546F703D223135342C3936303733222057696474683D223730362C373732313122204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22466F726D61206465205061676F3A205B46616374757261732E262333343B4445534352495043494F4E5F464F524D415041474F262333343B5D222F3E0D0A202020203C2F5466727850616765466F6F7465723E0D0A20203C2F546672785265706F7274506167653E0D0A3C2F546672785265706F72743E0D0A, '2023-05-19 13:54:07', '2023-05-19 13:54:07', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'frmPrintRecFac', 'frxrprt1_Buena', 'Buena', NULL, NULL, 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574662D3822207374616E64616C6F6E653D226E6F223F3E0D0A3C546672785265706F72742056657273696F6E3D22362E392E332220446F744D61747269785265706F72743D2246616C73652220496E6946696C653D225C536F6674776172655C46617374205265706F7274732220507265766965774F7074696F6E732E427574746F6E733D22343039352220507265766965774F7074696F6E732E5A6F6F6D3D223122205072696E744F7074696F6E732E5072696E7465723D22506F72206465666563746F22205072696E744F7074696F6E732E5072696E744F6E53686565743D223022205265706F72744F7074696F6E732E417574686F723D2246616374755A616D22205265706F72744F7074696F6E732E437265617465446174653D2234323438312C3633343637353734303722205265706F72744F7074696F6E732E4465736372697074696F6E2E546578743D2222205265706F72744F7074696F6E732E4C6173744368616E67653D2234353033372C35353634323037303622205363726970744C616E67756167653D2250617363616C5363726970742220536372697074546578742E546578743D22626567696E262331333B262331303B262331333B262331303B656E642E223E0D0A20203C44617461736574733E0D0A202020203C6974656D20446174615365743D22646D46616374757261732E6678647352656369626F732220446174615365744E616D653D2252656369626F73222F3E0D0A20203C2F44617461736574733E0D0A20203C546672784461746150616765204E616D653D22446174612220484775696465732E546578743D222220564775696465732E546578743D2222204865696768743D223130303022204C6566743D22302220546F703D2230222057696474683D2231303030222F3E0D0A20203C546672785265706F727450616765204E616D653D2250616765312220484775696465732E546578743D222220564775696465732E546578743D222220506170657257696474683D22323130222050617065724865696768743D223239372220506170657253697A653D223922204C6566744D617267696E3D2235222052696768744D617267696E3D22352220546F704D617267696E3D2232302220426F74746F6D4D617267696E3D2232302220436F6C756D6E57696474683D22302220436F6C756D6E506F736974696F6E732E546578743D2222204672616D652E5479703D223022204D6972726F724D6F64653D2230223E0D0A202020203C546672784D617374657244617461204E616D653D224D61737465724461746131222046696C6C547970653D2266744272757368222046696C6C4761702E546F703D2230222046696C6C4761702E4C6566743D2230222046696C6C4761702E426F74746F6D3D2230222046696C6C4761702E52696768743D223022204672616D652E5479703D223022204865696768743D223334332C393337323322204C6566743D22302220546F703D2231382C3839373635222057696474683D223735352C3930362220436F6C756D6E57696474683D22302220436F6C756D6E4761703D22302220446174615365743D22646D46616374757261732E6678647352656369626F732220446174615365744E616D653D2252656369626F732220526F77436F756E743D2230223E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31302220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232302C32333632342220546F703D2235392C3235323031222057696474683D223334332C393337323322204865696768743D2234392C31333338392220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232302C32333632342220546F703D22392C3839373635222057696474683D223135382C373430323622204865696768743D2234392C31333338392220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F322220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2233352C33353433362220546F703D2233362C3335343336222057696474683D223132342C373234343922204865696768743D2231352C31313831322220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220546578743D225B262336303B52656369626F732E262333343B53455249455F464143545552415F52454349424F262333343B262336323B5D5C5B262336303B52656369626F732E262333343B4E524F5F464143545552415F52454349424F262333343B262336323B5D5C5B496E74546F53747228262336303B52656369626F732E262333343B4E524F5F504C415A4F5F52454349424F262333343B262336323B295D223E0D0A20202020202020203C466F726D6174733E0D0A202020202020202020203C6974656D2F3E0D0A202020202020202020203C6974656D2F3E0D0A202020202020202020203C6974656D2F3E0D0A20202020202020203C2F466F726D6174733E0D0A2020202020203C2F546672784D656D6F566965773E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F332220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232372C373935332220546F703D2231332C3637373138222057696474683D223131332C3338353922204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D2252454349424F204E524F222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F342220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223137382C393736352220546F703D22392C3839373635222057696474683D223332312C323630303522204865696768743D2234392C31333338392220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F352220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223232302C35353133332220546F703D2233362C3335343336222057696474683D223232362C3737313822204865696768743D2231352C31313831322220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B52656369626F732E262333343B4C4F43414C494441445F45585045444943494F4E5F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F362220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223139302C33313530392220546F703D2231332C3637373138222057696474683D223137332C383538333822204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D224C4F43414C49444144204445204558504544494349C3934E222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F372220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223530302C32333635352220546F703D22392C3839373635222057696474683D223232322C393932323722204865696768743D2234392C31333338392220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F382220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223532322C39313337332220546F703D2231332C3637373138222057696474683D223137332C383538333822204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22494D504F5254452052454349424F222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31322220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232372C373935332220546F703D2236362C35393036222057696474683D223138312C343137343422204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D224645434841204445204558504544494349C3934E222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223336342C31373334372220546F703D2235392C3033313534222057696474683D223335392C303535333522204865696768743D2234392C31333338392220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31332220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223337392C32393135392220546F703D2236362C3337303133222057696474683D223138312C343137343422204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D2246454348412044452056454E43494D49454E544F222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31342220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2233352C33353433362220546F703D223131332C33383539222057696474683D2237392C333730313322204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D22534F4E2045553A222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31352220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232302C32333632342220546F703D223135382C3231323734222057696474683D223730322C393932353822204865696768743D2233302C32333632342220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31362220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232372C373935332220546F703D223136322C37373138222057696474683D223138312C343137343422204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22504147414445524F20454E202020262336303B4942414E262336323B20203A222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31382220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232302C32333632342220546F703D223139352C3032333831222057696474683D223436382C363631373222204865696768743D223132342C37323434392220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220506172656E74466F6E743D2246616C73652220546578743D22222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F31392220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232372C373935332220546F703D223230322C33363234222057696474683D223234312C383839393222204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22444F4D4943494C494F2059204E4F4D4252452044454C204C49425241444F3A222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617352415A4F4E534F4349414C5F434C49454E54452220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232372C373935332220546F703D223232352C3236303035222057696474683D223430302C363330313822204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B52656369626F732E262333343B52415A4F4E534F4349414C5F434C49454E54455F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173444952454343494F4E315F434C49454E54452220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232372C373935332220546F703D223234372C3933373233222057696474683D223430302C363330313822204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D22466163747572617322204672616D652E5479703D22302220546578743D225B52656369626F732E262333343B444952454343494F4E315F434C49454E54455F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617343504F5354414C5F434C49454E54452220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232372C373935332220546F703D223236362C3833343838222057696474683D223132302C393434393622204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D22466163747572617322204672616D652E5479703D22302220546578743D225B52656369626F732E262333343B43504F5354414C5F434C49454E54455F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173504F424C4143494F4E5F434C49454E54452220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223135362C32393933322220546F703D223236362C3833343838222057696474683D223237322C313236313622204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D22466163747572617322204672616D652E5479703D22302220546578743D225B52656369626F732E262333343B504F424C4143494F4E5F434C49454E54455F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617350524F56494E4349415F434C49454E54452220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D2232372C373935332220546F703D223238392C3531323036222057696474683D223332382C383139313122204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D225B52656369626F732E262333343B50524F56494E4349415F434C49454E54455F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173434F4449474F5F434C49454E54452220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223430352C373438332220546F703D223139382C3830333334222057696474683D2237392C333730313322204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B52656369626F732E262333343B434F4449474F5F434C49454E54455F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224D656D6F32302220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223530362C34353730322220546F703D223139382C3433333231222057696474683D223138382C3937363522204865696768743D2231382C38393736352220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22302220506172656E74466F6E743D2246616C73652220546578743D22434F4E464F524D452C20454C204C49425241444F222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D224661637475726173494D504F5254455F4C45545241312220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223132302C39343439362220546F703D223131332C33383539222057696474683D223531342C303136303822204865696768743D2233372C373935332220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D22466163747572617322204672616D652E5479703D22302220546578743D225B52656369626F732E262333343B494D504F5254455F4C455452415F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2246616374757261734942414E2220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223232322C39393232372220546F703D223136322C37373138222057696474683D223237322C313236313622204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D22466163747572617322204672616D652E5479703D22302220546578743D225B52656369626F732E262333343B4942414E5F434C49454E54455F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617346454348415F45585045444943494F4E2220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223232322C39393232372220546F703D2238312C35393036222057696474683D223130392C363036333722204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220446973706C6179466F726D61742E466F726D61745374723D2264642F6D6D2F797979792220446973706C6179466F726D61742E4B696E643D22666B4461746554696D6522204672616D652E5479703D22302220546578743D225B52656369626F732E262333343B46454348415F45585045444943494F4E5F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D22466163747572617346454348415F56454E43494D49454E544F2220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223537342C34383835362220546F703D2238312C35393036222057696474683D223130322C303437333122204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220446973706C6179466F726D61742E466F726D61745374723D2264642F6D6D2F797979792220446973706C6179466F726D61742E4B696E643D22666B4461746554696D6522204672616D652E5479703D22302220546578743D225B52656369626F732E262333343B46454348415F56454E43494D49454E544F5F52454349424F262333343B5D222F3E0D0A2020202020203C546672784D656D6F56696577204E616D653D2246616374757261734555524F535F52454349424F2220496E6465785461673D22312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D223532312C35373531342220546F703D2233322C3435363731222057696474683D223137332C383538333822204865696768743D2231382C38393736352220446174615365743D22646D46616374757261732E667864735072696E744661632220446174615365744E616D653D2246616374757261732220446973706C6179466F726D61742E446563696D616C536570617261746F723D222C2220446973706C6179466F726D61742E466F726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479703D2230222048416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73652220546578743D225B52656369626F732E262333343B4555524F535F52454349424F262333343B5D222F3E0D0A2020202020203C546672784C696E6556696577204E616D653D224C696E65312220416C6C6F77566563746F724578706F72743D225472756522204C6566743D22302220546F703D223333342C3831393131222057696474683D223735392C363835353322204865696768743D22302220436F6C6F723D223022204672616D652E5374796C653D2266734461736822204672616D652E5479703D2234222F3E0D0A202020203C2F546672784D6173746572446174613E0D0A20203C2F546672785265706F7274506167653E0D0A3C2F546672785265706F72743E0D0A, '2023-04-21 13:21:21', '2023-04-21 13:21:21', 'Administrador', 'Administrador');
INSERT INTO `fza_usuarios_perfiles` VALUES ('Todos', 'inLibtb', 'oSimbolosProhibidos', ',\"\'+-€%*', NULL, NULL, NULL, '2023-04-26 11:50:56', '2023-04-26 11:50:48', 'Administrador', 'Administrador');

-- ----------------------------
-- View structure for vi_articulos
-- ----------------------------
DROP VIEW IF EXISTS `vi_articulos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_articulos` AS SELECT
	`fza_articulos`.`CODIGO_ARTICULO` AS `CODIGO_ARTICULO`,
	`fza_articulos`.`ACTIVO_ARTICULO` AS `ACTIVO_ARTICULO`,
	`fza_articulos`.`ORDEN_ARTICULO` AS `ORDEN_ARTICULO`,
	`fza_articulos`.`DESCRIPCION_ARTICULO` AS `DESCRIPCION_ARTICULO`,
	`fza_articulos`.`CODIGO_FAMILIA_ARTICULO` AS `CODIGO_FAMILIA_ARTICULO`,
	`fza_articulos_familias`.`DESCRIPCION_FAMILIA` AS `DESCRIPCION_FAMILIA`,
	`fza_articulos`.`TIPOIVA_ARTICULO` AS `TIPOIVA_ARTICULO`,
	`fza_articulos`.`ESACTIVO_FIJO_ARTICULO` AS `ESACTIVO_FIJO_ARTICULO`,
	`fza_articulos`.`TIPO_CANTIDAD_ARTICULO` AS `TIPO_CANTIDAD_ARTICULO`,
	`vi_articulos_proveedores`.`RAZONSOCIAL_PROVEEDOR` AS `RAZONSOCIAL_PROVEEDOR`,
	`fza_articulos`.`INSTANTEMODIF` AS `INSTANTEMODIF`,
	`fza_articulos`.`INSTANTEALTA` AS `INSTANTEALTA`,
	`fza_articulos`.`USUARIOALTA` AS `USUARIOALTA`,
	`fza_articulos`.`USUARIOMODIF` AS `USUARIOMODIF` 
FROM
	(
		( `fza_articulos` LEFT JOIN `fza_articulos_familias` ON ( ( `fza_articulos`.`CODIGO_FAMILIA_ARTICULO` = `fza_articulos_familias`.`CODIGO_FAMILIA` ) ) )
		LEFT JOIN `vi_articulos_proveedores` ON ( ( ( `fza_articulos`.`CODIGO_ARTICULO` = `vi_articulos_proveedores`.`CODIGO_ARTICULO` ) AND ( `vi_articulos_proveedores`.`ESPROVEEDORPRINCIPAL` = 'S' ) ) ) 
	) 
ORDER BY
	`fza_articulos`.`ORDEN_ARTICULO` ;

-- ----------------------------
-- View structure for vi_articulos_familias
-- ----------------------------
DROP VIEW IF EXISTS `vi_articulos_familias`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_articulos_familias` AS select `fza_articulos_familias`.`CODIGO_FAMILIA` AS `CODIGO_FAMILIA`,`fza_articulos_familias`.`ACTIVO_FAMILIA` AS `ACTIVO_FAMILIA`,`fza_articulos_familias`.`ORDEN_FAMILIA` AS `ORDEN_FAMILIA`,`fza_articulos_familias`.`NOMBRE_FAMILIA` AS `NOMBRE_FAMILIA`,`fza_articulos_familias`.`DESCRIPCION_FAMILIA` AS `DESCRIPCION_FAMILIA`,`fza_articulos_familias`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_articulos_familias`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_articulos_familias`.`USUARIOALTA` AS `USUARIOALTA`,`fza_articulos_familias`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_articulos_familias` ;

-- ----------------------------
-- View structure for vi_articulos_proveedores
-- ----------------------------
DROP VIEW IF EXISTS `vi_articulos_proveedores`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_articulos_proveedores` AS select `fza_articulos_proveedores`.`CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` AS `CODIGO_PROVEEDOR`,`fza_proveedores`.`RAZONSOCIAL_PROVEEDOR` AS `RAZONSOCIAL_PROVEEDOR`,`fza_articulos_proveedores`.`CODIGO_ARTICULO_ARTICULO_PROVEEDOR` AS `CODIGO_ARTICULO`,`fza_articulos_proveedores`.`PRECIO_ULT_COMPRA_ARTICULO_PROVEEDOR` AS `PRECIO_ULT_COMPRA`,`fza_articulos_proveedores`.`FECHA_VALIDEZ_ARTICULO_PROVEEDOR` AS `FECHA_VALIDEZ`,`fza_articulos_proveedores`.`ESPROVEEDORPRINCIPAL_ARTICULO_PROVEEDOR` AS `ESPROVEEDORPRINCIPAL`,`fza_articulos_proveedores`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_articulos_proveedores`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_articulos_proveedores`.`USUARIOALTA` AS `USUARIOALTA`,`fza_articulos_proveedores`.`USUARIOMODIF` AS `USUARIOMODIF` from (`fza_articulos_proveedores` left join `fza_proveedores` on((`fza_articulos_proveedores`.`CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` = `fza_proveedores`.`CODIGO_PROVEEDOR`))) ;

-- ----------------------------
-- View structure for vi_articulos_tarifas
-- ----------------------------
DROP VIEW IF EXISTS `vi_articulos_tarifas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_articulos_tarifas` AS select `fza_articulos_tarifas`.`CODIGO_ARTICULO_TARIFA` AS `CODIGO_ARTICULO_TARIFA`,`fza_articulos`.`DESCRIPCION_ARTICULO` AS `DESCRIPCION_ARTICULO`,`fza_articulos`.`TIPO_CANTIDAD_ARTICULO` AS `TIPO_CANTIDAD_ARTICULO`,`fza_ivas_tipos`.`NOMBRE_TIPO_IVA` AS `TIPO_IVA_ARTICULO`,`fza_articulos_tarifas`.`ACTIVO_TARIFA` AS `ACTIVO_TARIFA`,`fza_articulos_tarifas`.`CODIGO_TARIFA` AS `CODIGO_TARIFA`,`fza_tarifas`.`NOMBRE_TARIFA` AS `NOMBRE_TARIFA`,`fza_articulos_tarifas`.`FECHA_DESDE_TARIFA` AS `FECHA_DESDE_TARIFA`,`fza_articulos_tarifas`.`FECHA_HASTA_TARIFA` AS `FECHA_HASTA_TARIFA`,`fza_articulos_tarifas`.`PRECIOFINAL_TARIFA` AS `PRECIOFINAL`,`fza_articulos_tarifas`.`PRECIOSALIDA_TARIFA` AS `PRECIOSALIDA`,`fza_articulos_tarifas`.`PORCEN_DTO_TARIFA` AS `PORCEN_DTO_TARIFA`,`fza_articulos_tarifas`.`PRECIO_DTO_TARIFA` AS `PRECIO_DTO_TARIFA`,`fza_articulos_proveedores`.`CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` AS `CODIGO_PROVEEDOR`,`fza_proveedores`.`RAZONSOCIAL_PROVEEDOR` AS `RAZONSOCIAL_PROVEEDOR`,`fza_articulos_proveedores`.`PRECIO_ULT_COMPRA_ARTICULO_PROVEEDOR` AS `PRECIO_ULT_COMPRA`,`fza_articulos_proveedores`.`FECHA_VALIDEZ_ARTICULO_PROVEEDOR` AS `FECHA_VALIDEZ`,`fza_articulos`.`CODIGO_FAMILIA_ARTICULO` AS `CODIGO_FAMILIA_ARTICULO`,`fza_articulos_familias`.`DESCRIPCION_FAMILIA` AS `DESCRIPCION_FAMILIA`,`fza_articulos_tarifas`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_articulos_tarifas`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_articulos_tarifas`.`USUARIOALTA` AS `USUARIOALTA`,`fza_articulos_tarifas`.`USUARIOMODIF` AS `USUARIOMODIF` from ((((((`fza_articulos_tarifas` left join `fza_articulos_proveedores` on(((`fza_articulos_tarifas`.`CODIGO_ARTICULO_TARIFA` = `fza_articulos_proveedores`.`CODIGO_ARTICULO_ARTICULO_PROVEEDOR`) and (`fza_articulos_proveedores`.`ESPROVEEDORPRINCIPAL_ARTICULO_PROVEEDOR` = 'S')))) left join `fza_tarifas` on((`fza_articulos_tarifas`.`CODIGO_TARIFA` = `fza_tarifas`.`CODIGO_TARIFA`))) left join `fza_articulos` on((`fza_articulos_tarifas`.`CODIGO_ARTICULO_TARIFA` = `fza_articulos`.`CODIGO_ARTICULO`))) left join `fza_articulos_familias` on((`fza_articulos`.`CODIGO_FAMILIA_ARTICULO` = `fza_articulos_familias`.`CODIGO_FAMILIA`))) left join `fza_proveedores` on((`fza_articulos_proveedores`.`CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` = `fza_proveedores`.`CODIGO_PROVEEDOR`))) left join `fza_ivas_tipos` on((`fza_articulos`.`TIPOIVA_ARTICULO` = `fza_ivas_tipos`.`CODIGO_ABREVIATURA_TIPO_IVA`))) ;

-- ----------------------------
-- View structure for vi_art_busquedas
-- ----------------------------
DROP VIEW IF EXISTS `vi_art_busquedas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_art_busquedas` AS SELECT
	`fza_articulos`.`CODIGO_ARTICULO` AS `CODIGO_ARTICULO`,
	`fza_articulos`.`ACTIVO_ARTICULO` AS `ACTIVO_ARTICULO`,
	`fza_articulos`.`DESCRIPCION_ARTICULO` AS `DESCRIPCION_ARTICULO`,
	`fza_articulos`.`CODIGO_FAMILIA_ARTICULO` AS `CODIGO_FAMILIA_ARTICULO`,
	`fza_articulos_familias`.`DESCRIPCION_FAMILIA` AS `DESCRIPCION_FAMILIA`,
	`fza_articulos_proveedores`.`CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` AS `CODIGO_PROVEEDOR_PRINCIPAL`,
	`fza_proveedores`.`RAZONSOCIAL_PROVEEDOR` AS `RAZON_SOCIAL_PROVEEDOR_PRINCIPAL`,
	`fza_articulos_tarifas`.`CODIGO_TARIFA` AS `CODIGO_TARIFA`,
	`fza_tarifas`.`NOMBRE_TARIFA` AS `NOMBRE_TARIFA`,
	`fza_articulos_tarifas`.`PRECIOFINAL_TARIFA` AS `PRECIOFINAL_TARIFA`,
	`fza_tarifas`.`ESIMP_INCL_TARIFA` AS `ESIMP_INCL_TARIFA`,
	`fza_ivas_tipos`.`NOMBRE_TIPO_IVA` AS `NOMBRE_TIPO_IVA`,
	`fza_articulos`.TIPOIVA_ARTICULO AS TIPOIVA_ARTICULO,
	`fza_articulos`.`TIPO_CANTIDAD_ARTICULO` AS `TIPO_CANTIDAD_ARTICULO`,
	`fza_articulos`.`USUARIOMODIF` AS `USUARIOMODIF`,
	`fza_articulos`.`INSTANTEALTA` AS `INSTANTEALTA`,
	`fza_articulos`.`INSTANTEMODIF` AS `INSTANTEMODIF`,
	`fza_articulos`.`USUARIOALTA` AS `USUARIOALTA`,
	`fza_articulos`.`ESACTIVO_FIJO_ARTICULO` AS `ESACTIVO_FIJO_ARTICULO` 
FROM
	(
		(
			(
				(
					(
						( `fza_articulos` LEFT JOIN `fza_articulos_familias` ON ( ( `fza_articulos`.`CODIGO_FAMILIA_ARTICULO` = `fza_articulos_familias`.`CODIGO_FAMILIA` ) ) )
						LEFT JOIN `fza_articulos_tarifas` ON ( ( `fza_articulos`.`CODIGO_ARTICULO` = `fza_articulos_tarifas`.`CODIGO_ARTICULO_TARIFA` ) ) 
					)
					LEFT JOIN `fza_tarifas` ON ( ( ( `fza_articulos_tarifas`.`CODIGO_TARIFA` = `fza_tarifas`.`CODIGO_TARIFA` ) AND ( `fza_tarifas`.`ESDEFAULT_TARIFA` = 'S' ) ) ) 
				)
				LEFT JOIN `fza_ivas_tipos` ON ( ( `fza_articulos`.`TIPOIVA_ARTICULO` = `fza_ivas_tipos`.`CODIGO_ABREVIATURA_TIPO_IVA` ) ) 
			)
			LEFT JOIN `fza_articulos_proveedores` ON ( ( ( `fza_articulos`.`CODIGO_ARTICULO` = `fza_articulos_proveedores`.`CODIGO_ARTICULO_ARTICULO_PROVEEDOR` ) AND ( `fza_articulos_proveedores`.`ESPROVEEDORPRINCIPAL_ARTICULO_PROVEEDOR` = 'S' ) ) ) 
		)
		LEFT JOIN `fza_proveedores` ON ( ( `fza_proveedores`.`CODIGO_PROVEEDOR` = `fza_articulos_proveedores`.`CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` ) ) 
	) 
WHERE
	( `fza_articulos`.`ACTIVO_ARTICULO` = 'S' ) 
ORDER BY
	`fza_articulos`.`ORDEN_ARTICULO` ;

-- ----------------------------
-- View structure for vi_clientes
-- ----------------------------
DROP VIEW IF EXISTS `vi_clientes`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_clientes` AS select `fza_clientes`.`CODIGO_CLIENTE` AS `CODIGO_CLIENTE`,`fza_clientes`.`ACTIVO_CLIENTE` AS `ACTIVO_CLIENTE`,`fza_clientes`.`RAZONSOCIAL_CLIENTE` AS `RAZONSOCIAL_CLIENTE`,`fza_clientes`.`NIF_CLIENTE` AS `NIF_CLIENTE`,`fza_clientes`.`MOVIL_CLIENTE` AS `MOVIL_CLIENTE`,`fza_clientes`.`EMAIL_CLIENTE` AS `EMAIL_CLIENTE`,`fza_clientes`.`DIRECCION1_CLIENTE` AS `DIRECCION1_CLIENTE`,`fza_clientes`.`DIRECCION2_CLIENTE` AS `DIRECCION2_CLIENTE`,`fza_clientes`.`POBLACION_CLIENTE` AS `POBLACION_CLIENTE`,`fza_clientes`.`PROVINCIA_CLIENTE` AS `PROVINCIA_CLIENTE`,`fza_clientes`.`CPOSTAL_CLIENTE` AS `CPOSTAL_CLIENTE`,`fza_clientes`.`PAIS_CLIENTE` AS `PAIS_CLIENTE`,`fza_clientes`.`OBSERVACIONES_CLIENTE` AS `OBSERVACIONES_CLIENTE`,`fza_clientes`.`REFERENCIA_CLIENTE` AS `REFERENCIA_CLIENTE`,`fza_clientes`.`CONTACTO_CLIENTE` AS `CONTACTO_CLIENTE`,`fza_clientes`.`TELEFONO_CONTACTO_CLIENTE` AS `TELEFONO_CONTACTO_CLIENTE`,`fza_clientes`.`TELEFONO_CLIENTE` AS `TELEFONO_CLIENTE`,`fza_clientes`.`IBAN_CLIENTE` AS `IBAN_CLIENTE`,`fza_clientes`.`ESIVA_RECARGO_CLIENTE` AS `ESIVA_RECARGO_CLIENTE`,`fza_clientes`.`ESRETENCIONES_CLIENTE` AS `ESRETENCIONES_CLIENTE`,`fza_clientes`.`ESIVA_EXENTO_CLIENTE` AS `ESIVA_EXENTO_CLIENTE`,`fza_clientes`.`ESINTRACOMUNITARIO_CLIENTE` AS `ESINTRACOMUNITARIO_CLIENTE`,`fza_clientes`.`ESREGIMENESPECIALAGRICOLA_CLIENTE` AS `ESREGIMENESPECIALAGRICOLA_CLIENTE`,`fza_clientes`.`CODIGO_FORMA_PAGO_CLIENTE` AS `CODIGO_FORMA_PAGO_CLIENTE`,`fza_clientes`.`TARIFA_ARTICULO_CLIENTE` AS `TARIFA_ARTICULO_CLIENTE`,`fza_clientes`.`SERIE_CONTADOR_CLIENTE` AS `SERIE_CONTADOR_CLIENTE`,`fza_clientes`.`TEXTO_LEGAL_FACTURA_CLIENTE` AS `TEXTO_LEGAL_FACTURA_CLIENTE`,`fza_clientes`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_clientes`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_clientes`.`USUARIOALTA` AS `USUARIOALTA`,`fza_clientes`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_clientes` ;

-- ----------------------------
-- View structure for vi_cli_busquedas
-- ----------------------------
DROP VIEW IF EXISTS `vi_cli_busquedas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_cli_busquedas` AS select `fza_clientes`.`CODIGO_CLIENTE` AS `CODIGO_CLIENTE`,`fza_clientes`.`ACTIVO_CLIENTE` AS `ACTIVO_CLIENTE`,`fza_clientes`.`RAZONSOCIAL_CLIENTE` AS `RAZONSOCIAL_CLIENTE`,`fza_clientes`.`NIF_CLIENTE` AS `NIF_CLIENTE`,`fza_clientes`.`MOVIL_CLIENTE` AS `MOVIL_CLIENTE`,`fza_clientes`.`EMAIL_CLIENTE` AS `EMAIL_CLIENTE`,`fza_clientes`.`DIRECCION1_CLIENTE` AS `DIRECCION1_CLIENTE`,`fza_clientes`.`DIRECCION2_CLIENTE` AS `DIRECCION2_CLIENTE`,`fza_clientes`.`POBLACION_CLIENTE` AS `POBLACION_CLIENTE`,`fza_clientes`.`PROVINCIA_CLIENTE` AS `PROVINCIA_CLIENTE`,`fza_clientes`.`CPOSTAL_CLIENTE` AS `CPOSTAL_CLIENTE`,`fza_clientes`.`PAIS_CLIENTE` AS `PAIS_CLIENTE`,`fza_clientes`.`OBSERVACIONES_CLIENTE` AS `OBSERVACIONES_CLIENTE`,`fza_clientes`.`REFERENCIA_CLIENTE` AS `REFERENCIA_CLIENTE`,`fza_clientes`.`CONTACTO_CLIENTE` AS `CONTACTO_CLIENTE`,`fza_clientes`.`TELEFONO_CONTACTO_CLIENTE` AS `TELEFONO_CONTACTO_CLIENTE`,`fza_clientes`.`TELEFONO_CLIENTE` AS `TELEFONO_CLIENTE`,`fza_clientes`.`IBAN_CLIENTE` AS `IBAN_CLIENTE`,`fza_clientes`.`ESIVA_RECARGO_CLIENTE` AS `ESIVA_RECARGO_CLIENTE`,`fza_clientes`.`ESRETENCIONES_CLIENTE` AS `ESRETENCIONES_CLIENTE`,`fza_clientes`.`ESIVA_EXENTO_CLIENTE` AS `ESIVA_EXENTO_CLIENTE`,`fza_clientes`.`ESREGIMENESPECIALAGRICOLA_CLIENTE` AS `ESREGIMENESPECIALAGRICOLA_CLIENTE`,`fza_clientes`.`ESINTRACOMUNITARIO_CLIENTE` AS `ESINTRACOMUNITARIO_CLIENTE`,`fza_clientes`.`CODIGO_FORMA_PAGO_CLIENTE` AS `CODIGO_FORMA_PAGO_CLIENTE`,`fza_clientes`.`SERIE_CONTADOR_CLIENTE` AS `SERIE_CONTADOR_CLIENTE`,`fza_clientes`.`TARIFA_ARTICULO_CLIENTE` AS `TARIFA_ARTICULO_CLIENTE`,`fza_clientes`.`TEXTO_LEGAL_FACTURA_CLIENTE` AS `TEXTO_LEGAL_FACTURA_CLIENTE`,`fza_clientes`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_clientes`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_clientes`.`USUARIOALTA` AS `USUARIOALTA`,`fza_clientes`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_clientes` where `fza_clientes`.`ACTIVO_CLIENTE` = 'S' order by `fza_clientes`.`CODIGO_CLIENTE` desc ;

-- ----------------------------
-- View structure for vi_contadores
-- ----------------------------
DROP VIEW IF EXISTS `vi_contadores`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_contadores` AS SELECT
	`fza_contadores`.`TIPODOC_CONTADOR` AS `TIPODOC_CONTADOR`,
	`fza_contadores`.`SERIE_CONTADOR` AS `SERIE_CONTADOR`,
	`fza_contadores`.`CONTADOR_CONTADOR` AS `CONTADOR_CONTADOR`,
	`fza_tipos_documentos`.`DESCRIPCION_TIPODOCUMENTO` AS `DESCRIPCION_TIPODOCUMENTO`,
	`fza_contadores`.`DEFAULT_CONTADOR` AS `DEFAULT_CONTADOR`,
	`fza_contadores`.`NUMDIGIT_CONTADOR` AS `NUMDIGIT_CONTADOR`,
	`fza_contadores`.`ACTIVO_CONTADOR` AS `ACTIVO_CONTADOR`,
	`fza_contadores`.`INSTANTEMODIF` AS `INSTANTEMODIF`,
	`fza_contadores`.`INSTANTEALTA` AS `INSTANTEALTA`,
	`fza_contadores`.`USUARIOALTA` AS `USUARIOALTA`,
	`fza_contadores`.`USUARIOMODIF` AS `USUARIOMODIF` 
FROM
	( `fza_contadores` LEFT JOIN `fza_tipos_documentos` ON ( ( `fza_contadores`.`TIPODOC_CONTADOR` = `fza_tipos_documentos`.`CODIGO_TIPODOCUMENTO` ) ) ) ;

-- ----------------------------
-- View structure for vi_empresas
-- ----------------------------
DROP VIEW IF EXISTS `vi_empresas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_empresas` AS SELECT
	`fza_empresas`.`CODIGO_EMPRESA` AS `CODIGO_EMPRESA`,
	`fza_empresas`.`ORDEN_EMPRESA` AS `ORDEN_EMPRESA`,
	`fza_empresas`.`ACTIVO_EMPRESA` AS `ACTIVO_EMPRESA`,
	`fza_empresas`.`RAZONSOCIAL_EMPRESA` AS `RAZONSOCIAL_EMPRESA`,
	`fza_empresas`.`NIF_EMPRESA` AS `NIF_EMPRESA`,
	`fza_empresas`.`MOVIL_EMPRESA` AS `MOVIL_EMPRESA`,
	`fza_empresas`.`EMAIL_EMPRESA` AS `EMAIL_EMPRESA`,
	`fza_empresas`.`DIRECCION1_EMPRESA` AS `DIRECCION1_EMPRESA`,
	`fza_empresas`.`DIRECCION2_EMPRESA` AS `DIRECCION2_EMPRESA`,
	`fza_empresas`.`CPOSTAL_EMPRESA` AS `CPOSTAL_EMPRESA`,
	`fza_empresas`.`POBLACION_EMPRESA` AS `POBLACION_EMPRESA`,
	`fza_empresas`.`PROVINCIA_EMPRESA` AS `PROVINCIA_EMPRESA`,
	`fza_empresas`.`PAIS_EMPRESA` AS `PAIS_EMPRESA`,
	`fza_empresas`.`GRUPO_ZONA_IVA_EMPRESA` AS `GRUPO_ZONA_IVA_EMPRESA`,
	`fza_ivas_grupos`.`DESCRIPCION_ZONA_IVA` AS `DESCRIPCION_ZONA_IVA`,
	`fza_empresas`.`ESRETENCIONES_EMPRESA` AS `ESRETENCIONES_EMPRESA`,
	`fza_empresas`.`ESREGIMENESPECIALAGRICOLA_EMPRESA` AS `ESREGIMENESPECIALAGRICOLA_EMPRESA`,
	`fza_empresas`.`SERIE_CONTADOR_EMPRESA` AS `SERIE_CONTADOR_EMPRESA`,
	`fza_empresas`.`TEXTO_LEGAL_FACTURA_EMPRESA` AS `TEXTO_LEGAL_FACTURA_EMPRESA`,
	`fza_empresas`.`INSTANTEMODIF` AS `INSTANTEMODIF`,
	`fza_empresas`.`INSTANTEALTA` AS `INSTANTEALTA`,
	`fza_empresas`.`USUARIOALTA` AS `USUARIOALTA`,
	`fza_empresas`.`USUARIOMODIF` AS `USUARIOMODIF` 
FROM
	( `fza_empresas` LEFT JOIN `fza_ivas_grupos` ON ( `fza_empresas`.`GRUPO_ZONA_IVA_EMPRESA` = `fza_ivas_grupos`.`GRUPO_ZONA_IVA` ) ) ;

-- ----------------------------
-- View structure for vi_empresas_retenciones
-- ----------------------------
DROP VIEW IF EXISTS `vi_empresas_retenciones`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_empresas_retenciones` AS select `fza_empresas_retenciones`.`CODIGO_RETENCION` AS `CODIGO_RETENCION`,`fza_empresas_retenciones`.`CODIGO_EMPRESA_RETENCION` AS `CODIGO_EMPRESA_RETENCION`,`fza_empresas_retenciones`.`PORCENRETENCION_RETENCION` AS `PORCENRETENCION_RETENCION`,`fza_empresas_retenciones`.`FECHA_DESDE_RETENCION` AS `FECHA_DESDE_RETENCION`,`fza_empresas_retenciones`.`FECHA_HASTA_RETENCION` AS `FECHA_HASTA_RETENCION`,`fza_empresas_retenciones`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_empresas_retenciones`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_empresas_retenciones`.`USUARIOALTA` AS `USUARIOALTA`,`fza_empresas_retenciones`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_empresas_retenciones` ;

-- ----------------------------
-- View structure for vi_empresas_series
-- ----------------------------
DROP VIEW IF EXISTS `vi_empresas_series`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_empresas_series` AS select * from fza_empresas_series ;

-- ----------------------------
-- View structure for vi_emp_busquedas
-- ----------------------------
DROP VIEW IF EXISTS `vi_emp_busquedas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_emp_busquedas` AS SELECT
	`fza_empresas`.`CODIGO_EMPRESA` AS `CODIGO_EMPRESA`,
	`fza_empresas`.`RAZONSOCIAL_EMPRESA` AS `RAZONSOCIAL_EMPRESA`,
	`fza_empresas`.`NIF_EMPRESA` AS `NIF_EMPRESA`,
	`fza_empresas`.`MOVIL_EMPRESA` AS `MOVIL_EMPRESA`,
	`fza_empresas`.`EMAIL_EMPRESA` AS `EMAIL_EMPRESA`,
	`fza_empresas`.`DIRECCION1_EMPRESA` AS `DIRECCION1_EMPRESA`,
	`fza_empresas`.`DIRECCION2_EMPRESA` AS `DIRECCION2_EMPRESA`,
	`fza_empresas`.`CPOSTAL_EMPRESA` AS `CPOSTAL_EMPRESA`,
	`fza_empresas`.`POBLACION_EMPRESA` AS `POBLACION_EMPRESA`,
	`fza_empresas`.`PROVINCIA_EMPRESA` AS `PROVINCIA_EMPRESA`,
	`fza_empresas`.`PAIS_EMPRESA` AS `PAIS_EMPRESA`,
	`fza_empresas`.`SERIE_CONTADOR_EMPRESA` AS `SERIE_CONTADOR_EMPRESA`,
	`fza_empresas`.`GRUPO_ZONA_IVA_EMPRESA` AS `GRUPO_ZONA_IVA_EMPRESA`,
	`fza_empresas`.`ESRETENCIONES_EMPRESA` AS `ESRETENCIONES_EMPRESA`,
	`fza_empresas`.`ESREGIMENESPECIALAGRICOLA_EMPRESA` AS `ESREGIMENESPECIALAGRICOLA_EMPRESA`,
	`fza_empresas`.`TEXTO_LEGAL_FACTURA_EMPRESA` AS `TEXTO_LEGAL_FACTURA_EMPRESA` 
FROM
	`fza_empresas` 
WHERE
	`fza_empresas`.`ACTIVO_EMPRESA` = 'S' 
ORDER BY
	`fza_empresas`.`ORDEN_EMPRESA` ;

-- ----------------------------
-- View structure for vi_facturas
-- ----------------------------
DROP VIEW IF EXISTS `vi_facturas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_facturas` AS SELECT
	`fza_facturas`.`FECHA_FACTURA` AS `FECHA_FACTURA`,
	`fza_facturas`.`NRO_FACTURA` AS `NRO_FACTURA`,
	`fza_facturas`.`SERIE_FACTURA` AS `SERIE_FACTURA`,
	`fza_facturas`.`TOTAL_LIQUIDO_FACTURA` AS `TOTAL_LIQUIDO_FACTURA`,
	`fza_facturas`.`PORCEN_RETENCION_FACTURA` AS `PORCEN_RETENCION_FACTURA`,
	`fza_facturas`.`TOTAL_RETENCION_FACTURA` AS `TOTAL_RETENCION_FACTURA`,
	`fza_facturas`.`TOTAL_IMPUESTOS_FACTURA` AS `TOTAL_IMPUESTOS_FACTURA`,
	`fza_facturas`.`TOTAL_BASES_FACTURA` AS `TOTAL_BASES_FACTURA`,
	`fza_facturas`.`FORMA_PAGO_FACTURA` AS `FORMA_PAGO_FACTURA`,
	`fza_facturas`.`CODIGO_EMPRESA_FACTURA` AS `CODIGO_EMPRESA_FACTURA`,
	`fza_facturas`.`RAZONSOCIAL_EMPRESA_FACTURA` AS `RAZONSOCIAL_EMPRESA_FACTURA`,
	`fza_facturas`.`NIF_EMPRESA_FACTURA` AS `NIF_EMPRESA_FACTURA`,
	`fza_facturas`.`MOVIL_EMPRESA_FACTURA` AS `MOVIL_EMPRESA_FACTURA`,
	`fza_facturas`.`EMAIL_EMPRESA_FACTURA` AS `EMAIL_EMPRESA_FACTURA`,
	`fza_facturas`.`DIRECCION1_EMPRESA_FACTURA` AS `DIRECCION1_EMPRESA_FACTURA`,
	`fza_facturas`.`DIRECCION2_EMPRESA_FACTURA` AS `DIRECCION2_EMPRESA_FACTURA`,
	`fza_facturas`.`POBLACION_EMPRESA_FACTURA` AS `POBLACION_EMPRESA_FACTURA`,
	`fza_facturas`.`PROVINCIA_EMPRESA_FACTURA` AS `PROVINCIA_EMPRESA_FACTURA`,
	`fza_facturas`.`PAIS_EMPRESA_FACTURA` AS `PAIS_EMPRESA_FACTURA`,
	`fza_facturas`.`CPOSTAL_EMPRESA_FACTURA` AS `CPOSTAL_EMPRESA_FACTURA`,
	`fza_facturas`.`ESRETENCIONES_EMPRESA_FACTURA` AS `ESRETENCIONES_EMPRESA_FACTURA`,
	`fza_facturas`.`GRUPO_ZONA_IVA_EMPRESA_FACTURA` AS `GRUPO_ZONA_IVA_EMPRESA_FACTURA`,
	`fza_facturas`.`ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA` AS `ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA`,
	`fza_facturas`.`CODIGO_CLIENTE_FACTURA` AS `CODIGO_CLIENTE_FACTURA`,
	`fza_facturas`.`RAZONSOCIAL_CLIENTE_FACTURA` AS `RAZONSOCIAL_CLIENTE_FACTURA`,
	`fza_facturas`.`NIF_CLIENTE_FACTURA` AS `NIF_CLIENTE_FACTURA`,
	`fza_facturas`.`MOVIL_CLIENTE_FACTURA` AS `MOVIL_CLIENTE_FACTURA`,
	`fza_facturas`.`EMAIL_CLIENTE_FACTURA` AS `EMAIL_CLIENTE_FACTURA`,
	`fza_facturas`.`DIRECCION1_CLIENTE_FACTURA` AS `DIRECCION1_CLIENTE_FACTURA`,
	`fza_facturas`.`DIRECCION2_CLIENTE_FACTURA` AS `DIRECCION2_CLIENTE_FACTURA`,
	`fza_facturas`.`POBLACION_CLIENTE_FACTURA` AS `POBLACION_CLIENTE_FACTURA`,
	`fza_facturas`.`PROVINCIA_CLIENTE_FACTURA` AS `PROVINCIA_CLIENTE_FACTURA`,
	`fza_facturas`.`CPOSTAL_CLIENTE_FACTURA` AS `CPOSTAL_CLIENTE_FACTURA`,
	`fza_facturas`.`PAIS_CLIENTE_FACTURA` AS `PAIS_CLIENTE_FACTURA`,
	`fza_facturas`.`ESIVA_RECARGO_CLIENTE_FACTURA` AS `ESIVA_RECARGO_CLIENTE_FACTURA`,
	`fza_facturas`.`ESIVA_EXENTO_CLIENTE_FACTURA` AS `ESIVA_EXENTO_CLIENTE_FACTURA`,
	`fza_facturas`.`ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA` AS `ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA`,
	`fza_facturas`.`ESRETENCIONES_CLIENTE_FACTURA` AS `ESRETENCIONES_CLIENTE_FACTURA`,
	`fza_facturas`.`TARIFA_ARTICULO_CLIENTE_FACTURA` AS `TARIFA_ARTICULO_CLIENTE_FACTURA`,
	`fza_facturas`.`ESIMP_INCL_TARIFA_CLIENTE_FACTURA` AS `ESIMP_INCL_TARIFA_CLIENTE_FACTURA`,
	`fza_facturas`.`ESINTRACOMUNITARIO_CLIENTE_FACTURA` AS `ESINTRACOMUNITARIO_CLIENTE_FACTURA`,
	`fza_facturas`.`ESIRPF_IMP_INCL_ZONA_IVA_FACTURA` AS `ESIRPF_IMP_INCL_ZONA_IVA_FACTURA`,
	`fza_facturas`.`ESAPLICA_RE_ZONA_IVA_FACTURA` AS `ESAPLICA_RE_ZONA_IVA_FACTURA`,
	`fza_facturas`.`ESIVAAGRICOLA_ZONA_IVA_FACTURA` AS `ESIVAAGRICOLA_ZONA_IVA_FACTURA`,
	`fza_facturas`.`PALABRA_REPORTS_ZONA_IVA_FACTURA` AS `PALABRA_REPORTS_ZONA_IVA_FACTURA`,
	`fza_facturas`.`CODIGO_IVA_FACTURA` AS `CODIGO_IVA_FACTURA`,
	`fza_facturas`.`ESVENTA_ACTIVO_FIJO_FACTURA` AS `ESVENTA_ACTIVO_FIJO_FACTURA`,
	`fza_facturas`.`PORCEN_IVAN_FACTURA` AS `PORCEN_IVAN_FACTURA`,
	`fza_facturas`.`TOTAL_IVAN_FACTURA` AS `TOTAL_IVAN_FACTURA`,
	`fza_facturas`.`PORCEN_REN_FACTURA` AS `PORCEN_REN_FACTURA`,
	`fza_facturas`.`TOTAL_REN_FACTURA` AS `TOTAL_REN_FACTURA`,
	`fza_facturas`.`TOTAL_BASEI_IVAN_FACTURA` AS `TOTAL_BASEI_IVAN_FACTURA`,
	`fza_facturas`.`PORCEN_IVAR_FACTURA` AS `PORCEN_IVAR_FACTURA`,
	`fza_facturas`.`TOTAL_IVAR_FACTURA` AS `TOTAL_IVAR_FACTURA`,
	`fza_facturas`.`PORCEN_RER_FACTURA` AS `PORCEN_RER_FACTURA`,
	`fza_facturas`.`TOTAL_RER_FACTURA` AS `TOTAL_RER_FACTURA`,
	`fza_facturas`.`TOTAL_BASEI_IVAR_FACTURA` AS `TOTAL_BASEI_IVAR_FACTURA`,
	`fza_facturas`.`PORCEN_IVAS_FACTURA` AS `PORCEN_IVAS_FACTURA`,
	`fza_facturas`.`TOTAL_IVAS_FACTURA` AS `TOTAL_IVAS_FACTURA`,
	`fza_facturas`.`PORCEN_RES_FACTURA` AS `PORCEN_RES_FACTURA`,
	`fza_facturas`.`TOTAL_RES_FACTURA` AS `TOTAL_RES_FACTURA`,
	`fza_facturas`.`TOTAL_BASEI_IVAS_FACTURA` AS `TOTAL_BASEI_IVAS_FACTURA`,
	`fza_facturas`.`PORCEN_IVAE_FACTURA` AS `PORCEN_IVAE_FACTURA`,
	`fza_facturas`.`TOTAL_IVAE_FACTURA` AS `TOTAL_IVAE_FACTURA`,
	`fza_facturas`.`PORCEN_REE_FACTURA` AS `PORCEN_REE_FACTURA`,
	`fza_facturas`.`TOTAL_REE_FACTURA` AS `TOTAL_REE_FACTURA`,
	`fza_facturas`.`TOTAL_BASEI_IVAE_FACTURA` AS `TOTAL_BASEI_IVAE_FACTURA`,
	`fza_facturas`.`NRO_FACTURA_ABONO_FACTURA` AS `NRO_FACTURA_ABONO_FACTURA`,
	`fza_facturas`.`SERIE_FACTURA_ABONO_FACTURA` AS `SERIE_FACTURA_ABONO_FACTURA`,
	`fza_facturas`.`TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA` AS `TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA`,
	`fza_facturas`.`TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA` AS `TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA`,
	`fza_facturas`.`DOCUMENTO_FACTURA` AS `DOCUMENTO_FACTURA`,
	`fza_facturas`.`COMENTARIOS_FACTURA` AS `COMENTARIOS_FACTURA`,
	`fza_facturas`.`CONTADOR_LINEAS_FACTURA` AS `CONTADOR_LINEAS_FACTURA`,
	`fza_facturas`.`ESCREARARTICULOS_FACTURA`	AS `ESCREARARTICULOS_FACTURA`,
  `fza_facturas`.`ESDESCRIPCIONES_AMP_FACTURA` AS `ESDESCRIPCIONES_AMP_FACTURA`,	 
  `fza_facturas`.`ESFECHADEENTREGA_FACTURA`	AS `ESFECHADEENTREGA_FACTURA`,
	`fza_facturas`.`INSTANTEMODIF` AS `INSTANTEMODIF`,
	`fza_facturas`.`INSTANTEALTA` AS `INSTANTEALTA`,
	`fza_facturas`.`USUARIOALTA` AS `USUARIOALTA`,
	`fza_facturas`.`USUARIOMODIF` AS `USUARIOMODIF`,
	fza_formapago.DESCRIPCION_FORMAPAGO as DESCRIPCION_FORMAPAGO
FROM
	`fza_facturas` 
LEFT JOIN fza_formapago ON fza_facturas.FORMA_PAGO_FACTURA = fza_formapago.CODIGO_FORMAPAGO 
ORDER BY FECHA_FACTURA DESC ;

-- ----------------------------
-- View structure for vi_facturas_lineas
-- ----------------------------
DROP VIEW IF EXISTS `vi_facturas_lineas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_facturas_lineas` AS select `fza_facturas_lineas`.`NRO_FACTURA_LINEA` AS `NRO_FACTURA_LINEA`,`fza_facturas_lineas`.`SERIE_FACTURA_LINEA` AS `SERIE_FACTURA_LINEA`,`fza_facturas_lineas`.`LINEA_FACTURA_LINEA` AS `LINEA_FACTURA_LINEA`,`fza_facturas_lineas`.`CODIGO_ARTICULO_FACTURA_LINEA` AS `CODIGO_ARTICULO_FACTURA_LINEA`,`fza_facturas_lineas`.`CODIGO_FAMILIA_FACTURA_LINEA` AS `CODIGO_FAMILIA_FACTURA_LINEA`,`fza_facturas_lineas`.`NOMBRE_FAMILIA_FACTURA_LINEA` AS `NOMBRE_FAMILIA_FACTURA_LINEA`,`fza_facturas_lineas`.`FECHA_ENTREGA_FACTURA_LINEA` AS `FECHA_ENTREGA_FACTURA_LINEA`,`fza_facturas_lineas`.`TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA` AS `TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA`,`fza_facturas_lineas`.`ESIMP_INCL_TARIFA_FACTURA_LINEA` AS `ESIMP_INCL_TARIFA_FACTURA_LINEA`,`fza_facturas_lineas`.`TIPOIVA_ARTICULO_FACTURA_LINEA` AS `TIPOIVA_ARTICULO_FACTURA_LINEA`,`fza_facturas_lineas`.`DESCRIPCION_ARTICULO_FACTURA_LINEA` AS `DESCRIPCION_ARTICULO_FACTURA_LINEA`,`fza_facturas_lineas`.`CODIGO_TARIFA_FACTURA_LINEA` AS `CODIGO_TARIFA_FACTURA_LINEA`,`fza_facturas_lineas`.`CANTIDAD_FACTURA_LINEA` AS `CANTIDAD_FACTURA_LINEA`,`fza_facturas_lineas`.`PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA` AS `PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA`,`fza_facturas_lineas`.`PORCEN_IVA_FACTURA_LINEA` AS `PORCEN_IVA_FACTURA_LINEA`,`fza_facturas_lineas`.`PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA` AS `PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA`,`fza_facturas_lineas`.`TOTAL_FACTURA_LINEA` AS `TOTAL_FACTURA_LINEA`,`fza_facturas_lineas`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_facturas_lineas`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_facturas_lineas`.`USUARIOALTA` AS `USUARIOALTA`,`fza_facturas_lineas`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_facturas_lineas` ;

-- ----------------------------
-- View structure for vi_fac_busquedas
-- ----------------------------
DROP VIEW IF EXISTS `vi_fac_busquedas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_fac_busquedas` AS select `fza_facturas`.`FECHA_FACTURA` AS `FECHA_FACTURA`,`fza_facturas`.`NRO_FACTURA` AS `NRO_FACTURA`,`fza_facturas`.`SERIE_FACTURA` AS `SERIE_FACTURA`,`fza_facturas`.`TOTAL_LIQUIDO_FACTURA` AS `TOTAL_LIQUIDO_FACTURA`,`fza_facturas`.`PORCEN_RETENCION_FACTURA` AS `PORCEN_RETENCION_FACTURA`,`fza_facturas`.`TOTAL_RETENCION_FACTURA` AS `TOTAL_RETENCION_FACTURA`,`fza_facturas`.`TOTAL_IMPUESTOS_FACTURA` AS `TOTAL_IMPUESTOS_FACTURA`,`fza_facturas`.`TOTAL_BASES_FACTURA` AS `TOTAL_BASES_FACTURA`,`fza_facturas`.`FORMA_PAGO_FACTURA` AS `FORMA_PAGO_FACTURA`,`fza_facturas`.`CODIGO_EMPRESA_FACTURA` AS `CODIGO_EMPRESA_FACTURA`,`fza_facturas`.`RAZONSOCIAL_EMPRESA_FACTURA` AS `RAZONSOCIAL_EMPRESA_FACTURA`,`fza_facturas`.`NIF_EMPRESA_FACTURA` AS `NIF_EMPRESA_FACTURA`,`fza_facturas`.`MOVIL_EMPRESA_FACTURA` AS `MOVIL_EMPRESA_FACTURA`,`fza_facturas`.`EMAIL_EMPRESA_FACTURA` AS `EMAIL_EMPRESA_FACTURA`,`fza_facturas`.`DIRECCION1_EMPRESA_FACTURA` AS `DIRECCION1_EMPRESA_FACTURA`,`fza_facturas`.`DIRECCION2_EMPRESA_FACTURA` AS `DIRECCION2_EMPRESA_FACTURA`,`fza_facturas`.`POBLACION_EMPRESA_FACTURA` AS `POBLACION_EMPRESA_FACTURA`,`fza_facturas`.`PROVINCIA_EMPRESA_FACTURA` AS `PROVINCIA_EMPRESA_FACTURA`,`fza_facturas`.`PAIS_EMPRESA_FACTURA` AS `PAIS_EMPRESA_FACTURA`,`fza_facturas`.`CPOSTAL_EMPRESA_FACTURA` AS `CPOSTAL_EMPRESA_FACTURA`,`fza_facturas`.`ESRETENCIONES_EMPRESA_FACTURA` AS `ESRETENCIONES_EMPRESA_FACTURA`,`fza_facturas`.`GRUPO_ZONA_IVA_EMPRESA_FACTURA` AS `GRUPO_ZONA_IVA_EMPRESA_FACTURA`,`fza_facturas`.`ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA` AS `ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA`,`fza_facturas`.`CODIGO_CLIENTE_FACTURA` AS `CODIGO_CLIENTE_FACTURA`,`fza_facturas`.`RAZONSOCIAL_CLIENTE_FACTURA` AS `RAZONSOCIAL_CLIENTE_FACTURA`,`fza_facturas`.`NIF_CLIENTE_FACTURA` AS `NIF_CLIENTE_FACTURA`,`fza_facturas`.`MOVIL_CLIENTE_FACTURA` AS `MOVIL_CLIENTE_FACTURA`,`fza_facturas`.`EMAIL_CLIENTE_FACTURA` AS `EMAIL_CLIENTE_FACTURA`,`fza_facturas`.`DIRECCION1_CLIENTE_FACTURA` AS `DIRECCION1_CLIENTE_FACTURA`,`fza_facturas`.`DIRECCION2_CLIENTE_FACTURA` AS `DIRECCION2_CLIENTE_FACTURA`,`fza_facturas`.`POBLACION_CLIENTE_FACTURA` AS `POBLACION_CLIENTE_FACTURA`,`fza_facturas`.`PROVINCIA_CLIENTE_FACTURA` AS `PROVINCIA_CLIENTE_FACTURA`,`fza_facturas`.`CPOSTAL_CLIENTE_FACTURA` AS `CPOSTAL_CLIENTE_FACTURA`,`fza_facturas`.`PAIS_CLIENTE_FACTURA` AS `PAIS_CLIENTE_FACTURA`,`fza_facturas`.`ESIVA_RECARGO_CLIENTE_FACTURA` AS `ESIVA_RECARGO_CLIENTE_FACTURA`,`fza_facturas`.`ESIVA_EXENTO_CLIENTE_FACTURA` AS `ESIVA_EXENTO_CLIENTE_FACTURA`,`fza_facturas`.`ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA` AS `ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA`,`fza_facturas`.`ESRETENCIONES_CLIENTE_FACTURA` AS `ESRETENCIONES_CLIENTE_FACTURA`,`fza_facturas`.`TARIFA_ARTICULO_CLIENTE_FACTURA` AS `TARIFA_ARTICULO_CLIENTE_FACTURA`,`fza_facturas`.`ESIMP_INCL_TARIFA_CLIENTE_FACTURA` AS `ESIMP_INCL_TARIFA_CLIENTE_FACTURA`,`fza_facturas`.`ESINTRACOMUNITARIO_CLIENTE_FACTURA` AS `ESINTRACOMUNITARIO_CLIENTE_FACTURA`,`fza_facturas`.`ESIRPF_IMP_INCL_ZONA_IVA_FACTURA` AS `ESIRPF_IMP_INCL_ZONA_IVA_FACTURA`,`fza_facturas`.`ESAPLICA_RE_ZONA_IVA_FACTURA` AS `ESAPLICA_RE_ZONA_IVA_FACTURA`,`fza_facturas`.`ESIVAAGRICOLA_ZONA_IVA_FACTURA` AS `ESIVAAGRICOLA_ZONA_IVA_FACTURA`,`fza_facturas`.`PALABRA_REPORTS_ZONA_IVA_FACTURA` AS `PALABRA_REPORTS_ZONA_IVA_FACTURA`,`fza_facturas`.`CODIGO_IVA_FACTURA` AS `CODIGO_IVA_FACTURA`,`fza_facturas`.`ESVENTA_ACTIVO_FIJO_FACTURA` AS `ESVENTA_ACTIVO_FIJO_FACTURA`,`fza_facturas`.`PORCEN_IVAN_FACTURA` AS `PORCEN_IVAN_FACTURA`,`fza_facturas`.`TOTAL_IVAN_FACTURA` AS `TOTAL_IVAN_FACTURA`,`fza_facturas`.`PORCEN_REN_FACTURA` AS `PORCEN_REN_FACTURA`,`fza_facturas`.`TOTAL_REN_FACTURA` AS `TOTAL_REN_FACTURA`,`fza_facturas`.`TOTAL_BASEI_IVAN_FACTURA` AS `TOTAL_BASEI_IVAN_FACTURA`,`fza_facturas`.`PORCEN_IVAR_FACTURA` AS `PORCEN_IVAR_FACTURA`,`fza_facturas`.`TOTAL_IVAR_FACTURA` AS `TOTAL_IVAR_FACTURA`,`fza_facturas`.`PORCEN_RER_FACTURA` AS `PORCEN_RER_FACTURA`,`fza_facturas`.`TOTAL_RER_FACTURA` AS `TOTAL_RER_FACTURA`,`fza_facturas`.`TOTAL_BASEI_IVAR_FACTURA` AS `TOTAL_BASEI_IVAR_FACTURA`,`fza_facturas`.`PORCEN_IVAS_FACTURA` AS `PORCEN_IVAS_FACTURA`,`fza_facturas`.`TOTAL_IVAS_FACTURA` AS `TOTAL_IVAS_FACTURA`,`fza_facturas`.`PORCEN_RES_FACTURA` AS `PORCEN_RES_FACTURA`,`fza_facturas`.`TOTAL_RES_FACTURA` AS `TOTAL_RES_FACTURA`,`fza_facturas`.`TOTAL_BASEI_IVAS_FACTURA` AS `TOTAL_BASEI_IVAS_FACTURA`,`fza_facturas`.`PORCEN_IVAE_FACTURA` AS `PORCEN_IVAE_FACTURA`,`fza_facturas`.`TOTAL_IVAE_FACTURA` AS `TOTAL_IVAE_FACTURA`,`fza_facturas`.`PORCEN_REE_FACTURA` AS `PORCEN_REE_FACTURA`,`fza_facturas`.`TOTAL_REE_FACTURA` AS `TOTAL_REE_FACTURA`,`fza_facturas`.`TOTAL_BASEI_IVAE_FACTURA` AS `TOTAL_BASEI_IVAE_FACTURA` from `fza_facturas` ;

-- ----------------------------
-- View structure for vi_fac_comboseries
-- ----------------------------
DROP VIEW IF EXISTS `vi_fac_comboseries`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_fac_comboseries` AS SELECT SERIE_CONTADOR_CLIENTE AS SERIE_CONTADOR   FROM vi_clientes                               WHERE SERIE_CONTADOR_CLIENTE IS NOT NULL          AND CODIGO_CLIENTE = 'TIENDA'                 UNION                                          SELECT SERIE_SERIE AS SERIE_CONTADOR              FROM vi_empresas_series                        WHERE CODIGO_EMPRESA_SERIE = '007'             AND (FECHA_DESDE_SERIE <= '2023-04-25 00:00:00'                     AND (FECHA_HASTA_SERIE >= '2023-04-25 00:00:00'                     OR FECHA_HASTA_SERIE IS NULL ))     UNION                                          SELECT SERIE_CONTADOR_EMPRESA AS SERIE_CONTADOR   FROM vi_empresas                               WHERE SERIE_CONTADOR_EMPRESA IS NOT NULL          AND  CODIGO_EMPRESA = '007'                UNION                                           SELECT SERIE_CONTADOR                             FROM vi_contadores                             WHERE tipodoc_contador = 'FC'    AND ACTIVO_CONTADOR = 'S' ;

-- ----------------------------
-- View structure for vi_fac_lin_busquedas
-- ----------------------------
DROP VIEW IF EXISTS `vi_fac_lin_busquedas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_fac_lin_busquedas` AS SELECT
	`fza_facturas_lineas`.`NRO_FACTURA_LINEA` AS `NRO_FACTURA_LINEA`,
	`fza_facturas_lineas`.`SERIE_FACTURA_LINEA` AS `SERIE_FACTURA_LINEA`,
	`fza_facturas_lineas`.`LINEA_FACTURA_LINEA` AS `LINEA_FACTURA_LINEA`,
	`fza_facturas_lineas`.`CODIGO_ARTICULO_FACTURA_LINEA` AS `CODIGO_ARTICULO_FACTURA_LINEA`,
	`fza_facturas_lineas`.`CODIGO_FAMILIA_FACTURA_LINEA` AS `CODIGO_FAMILIA_FACTURA_LINEA`,
	`fza_facturas_lineas`.`NOMBRE_FAMILIA_FACTURA_LINEA` AS `NOMBRE_FAMILIA_FACTURA_LINEA`,
	`fza_facturas_lineas`.`FECHA_ENTREGA_FACTURA_LINEA` AS `FECHA_ENTREGA_FACTURA_LINEA`,
	`fza_facturas_lineas`.`TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA` AS `TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA`,
	`fza_facturas_lineas`.`ESIMP_INCL_TARIFA_FACTURA_LINEA` AS `ESIMP_INCL_TARIFA_FACTURA_LINEA`,
	`fza_facturas_lineas`.`TIPOIVA_ARTICULO_FACTURA_LINEA` AS `TIPOIVA_ARTICULO_FACTURA_LINEA`,
	`fza_ivas_tipos`.`NOMBRE_TIPO_IVA` AS `NOMBRE_TIPO_IVA`,
	`fza_facturas_lineas`.`DESCRIPCION_ARTICULO_FACTURA_LINEA` AS `DESCRIPCION_ARTICULO_FACTURA_LINEA`,
	`fza_facturas_lineas`.`CODIGO_TARIFA_FACTURA_LINEA` AS `CODIGO_TARIFA_FACTURA_LINEA`,
	`fza_facturas_lineas`.`CANTIDAD_FACTURA_LINEA` AS `CANTIDAD_FACTURA_LINEA`,
	`fza_facturas_lineas`.`PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA` AS `PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA`,
	`fza_facturas_lineas`.`PORCEN_IVA_FACTURA_LINEA` AS `PORCEN_IVA_FACTURA_LINEA`,
	`fza_facturas_lineas`.`PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA` AS `PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA`,
	`fza_facturas_lineas`.`TOTAL_FACTURA_LINEA` AS `TOTAL_FACTURA_LINEA` 
FROM
	`fza_facturas_lineas`
LEFT JOIN fza_ivas_tipos ON
fza_facturas_lineas.TIPOIVA_ARTICULO_FACTURA_LINEA = fza_ivas_tipos.CODIGO_ABREVIATURA_TIPO_IVA ;

-- ----------------------------
-- View structure for vi_formapago
-- ----------------------------
DROP VIEW IF EXISTS `vi_formapago`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_formapago` AS SELECT
	`fza_formapago`.*
FROM
	`fza_formapago` ;

-- ----------------------------
-- View structure for vi_fza_articulos
-- ----------------------------
DROP VIEW IF EXISTS `vi_fza_articulos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_fza_articulos` AS select `a`.`CODIGO_ARTICULO` AS `CODIGO_ARTICULO`,`a`.`ACTIVO_ARTICULO` AS `ACTIVO_ARTICULO`,`a`.`DESCRIPCION_ARTICULO` AS `DESCRIPCION_ARTICULO`,`f`.`DESCRIPCION_FAMILIA` AS `DESCRIPCION_FAMILIA`,`a`.`CODIGO_FAMILIA_ARTICULO` AS `CODIGO_FAMILIA_ARTICULO`,`a`.`TIPOIVA_ARTICULO` AS `TIPOIVA_ARTICULO`,`a`.`TIPO_CANTIDAD_ARTICULO` AS `TIPO_CANTIDAD_ARTICULO`,`a`.`ESACTIVO_FIJO_ARTICULO` AS `ESACTIVO_FIJO_ARTICULO`,`a`.`USUARIOMODIF` AS `USUARIOMODIF`,`a`.`INSTANTEALTA` AS `INSTANTEALTA`,`a`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`a`.`USUARIOALTA` AS `USUARIOALTA` from (`fza_articulos` `a` left join `fza_articulos_familias` `f` on(`a`.`CODIGO_FAMILIA_ARTICULO` = `f`.`CODIGO_FAMILIA`)) ;

-- ----------------------------
-- View structure for vi_ivas
-- ----------------------------
DROP VIEW IF EXISTS `vi_ivas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_ivas` AS SELECT
	`fza_ivas`.`CODIGO_IVA` AS `CODIGO_IVA`,
	`fza_ivas`.`GRUPO_ZONA_IVA` AS `GRUPO_ZONA_IVA`,
	`fza_ivas`.`DESCRIPCION_ZONA_IVA` AS `DESCRIPCION_ZONA_IVA`,
	`fza_ivas`.`PORCENEXENTO_IVA` AS `PORCENEXENTO_IVA`,
	`fza_ivas`.`PORCENEXENTO_RE_IVA` AS `PORCENEXENTO_RE_IVA`,
	`fza_ivas`.`PORCENNORMAL_IVA` AS `PORCENNORMAL_IVA`,
	`fza_ivas`.`PORCENNORMAL_RE_IVA` AS `PORCENNORMAL_RE_IVA`,
	`fza_ivas`.`PORCENREDUCIDO_IVA` AS `PORCENREDUCIDO_IVA`,
	`fza_ivas`.`PORCENREDUCIDO_RE_IVA` AS `PORCENREDUCIDO_RE_IVA`,
	`fza_ivas`.`PORCENSUPERREDUCIDO_IVA` AS `PORCENSUPERREDUCIDO_IVA`,
	`fza_ivas`.`PORCENSUPERREDUCIDO_RE_IVA` AS `PORCENSUPERREDUCIDO_RE_IVA`,
	`fza_ivas`.`FECHA_DESDE_IVA` AS `FECHA_DESDE_IVA`,
	`fza_ivas`.`FECHA_HASTA_IVA` AS `FECHA_HASTA_IVA`,
	`fza_ivas`.`INSTANTEMODIF` AS `INSTANTEMODIF`,
	`fza_ivas`.`INSTANTEALTA` AS `INSTANTEALTA`,
  `fza_ivas`.`USUARIOALTA` AS `USUARIOALTA`,
	`fza_ivas`.`USUARIOMODIF` AS `USUARIOMODIF`,	
  `fza_ivas_grupos`.`ESAPLICA_RE_ZONA_IVA` AS `ESAPLICA_RE_ZONA_IVA`,
	`fza_ivas_grupos`.`ESIVAAGRICOLA_ZONA_IVA` AS `ESIVAAGRICOLA_ZONA_IVA`,
	`fza_ivas_grupos`.`ESDEFAULT_ZONA_IVA` AS `ESDEFAULT_ZONA_IVA`,
	`fza_ivas_grupos`.`ESIRPF_IMP_INCL_ZONA_IVA` AS `ESIRPF_IMP_INCL_ZONA_IVA`,
	`fza_ivas_grupos`.`PALABRA_REPORTS_ZONA_IVA` AS `PALABRA_REPORTS_ZONA_IVA` 
FROM
	( `fza_ivas` JOIN `fza_ivas_grupos` ON ( ( `fza_ivas`.`GRUPO_ZONA_IVA` = `fza_ivas_grupos`.`GRUPO_ZONA_IVA` ) ) ) ;

-- ----------------------------
-- View structure for vi_ivas_empresa
-- ----------------------------
DROP VIEW IF EXISTS `vi_ivas_empresa`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_ivas_empresa` AS select `i`.`CODIGO_IVA` AS `CODIGO_IVA`,`i`.`GRUPO_ZONA_IVA` AS `GRUPO_ZONA_IVA`,`i`.`DESCRIPCION_ZONA_IVA` AS `DESCRIPCION_ZONA_IVA`,`i`.`PORCENEXENTO_IVA` AS `PORCENEXENTO_IVA`,`i`.`PORCENEXENTO_RE_IVA` AS `PORCENEXENTO_RE_IVA`,`i`.`PORCENNORMAL_IVA` AS `PORCENNORMAL_IVA`,`i`.`PORCENNORMAL_RE_IVA` AS `PORCENNORMAL_RE_IVA`,`i`.`PORCENREDUCIDO_IVA` AS `PORCENREDUCIDO_IVA`,`i`.`PORCENREDUCIDO_RE_IVA` AS `PORCENREDUCIDO_RE_IVA`,`i`.`PORCENSUPERREDUCIDO_IVA` AS `PORCENSUPERREDUCIDO_IVA`,`i`.`PORCENSUPERREDUCIDO_RE_IVA` AS `PORCENSUPERREDUCIDO_RE_IVA`,`i`.`FECHA_DESDE_IVA` AS `FECHA_DESDE_IVA`,`i`.`FECHA_HASTA_IVA` AS `FECHA_HASTA_IVA`,`ig`.`ESAPLICA_RE_ZONA_IVA` AS `ESAPLICA_RE_ZONA_IVA`,`ig`.`ESIVAAGRICOLA_ZONA_IVA` AS `ESIVAAGRICOLA_ZONA_IVA`,`ig`.`ESDEFAULT_ZONA_IVA` AS `ESDEFAULT_ZONA_IVA`,`em`.`CODIGO_EMPRESA` AS `CODIGO_EMPRESA`,`ig`.`ESIRPF_IMP_INCL_ZONA_IVA` AS `ESIRPF_IMP_INCL_ZONA_IVA`,`ig`.`PALABRA_REPORTS_ZONA_IVA` AS `PALABRA_REPORTS_ZONA_IVA` from ((`fza_ivas` `i` join `fza_ivas_grupos` `ig` on(`i`.`GRUPO_ZONA_IVA` = `ig`.`GRUPO_ZONA_IVA`)) join `fza_empresas` `em` on(`em`.`GRUPO_ZONA_IVA_EMPRESA` = `ig`.`GRUPO_ZONA_IVA`)) ;

-- ----------------------------
-- View structure for vi_ivas_grupos
-- ----------------------------
DROP VIEW IF EXISTS `vi_ivas_grupos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_ivas_grupos` AS select `fza_ivas_grupos`.`GRUPO_ZONA_IVA` AS `GRUPO_ZONA_IVA`,`fza_ivas_grupos`.`DESCRIPCION_ZONA_IVA` AS `DESCRIPCION_ZONA_IVA`,`fza_ivas_grupos`.`ESIRPF_IMP_INCL_ZONA_IVA` AS `ESIRPF_IMP_INCL_ZONA_IVA`,`fza_ivas_grupos`.`ESIVAAGRICOLA_ZONA_IVA` AS `ESIVAAGRICOLA_ZONA_IVA`,`fza_ivas_grupos`.`ESAPLICA_RE_ZONA_IVA` AS `ESAPLICA_RE_ZONA_IVA`,`fza_ivas_grupos`.`ESDEFAULT_ZONA_IVA` AS `ESDEFAULT_ZONA_IVA`,`fza_ivas_grupos`.`PALABRA_REPORTS_ZONA_IVA` AS `PALABRA_REPORTS_ZONA_IVA`,`fza_ivas_grupos`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_ivas_grupos`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_ivas_grupos`.`USUARIOALTA` AS `USUARIOALTA`,`fza_ivas_grupos`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_ivas_grupos` ;

-- ----------------------------
-- View structure for vi_ivas_zonas
-- ----------------------------
DROP VIEW IF EXISTS `vi_ivas_zonas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_ivas_zonas` AS select `fza_ivas_zonas`.`CODIGO_ZONA_IVA` AS `CODIGO_ZONA_IVA`,`fza_ivas_zonas`.`DESCRIPCION_ZONA_IVA` AS `DESCRIPCION_ZONA_IVA`,`fza_ivas_zonas`.`ESDEFAULT_ZONA_IVA` AS `ESDEFAULT_ZONA_IVA` from `fza_ivas_zonas` ;

-- ----------------------------
-- View structure for vi_proveedores
-- ----------------------------
DROP VIEW IF EXISTS `vi_proveedores`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_proveedores` AS select `fza_proveedores`.`CODIGO_PROVEEDOR` AS `CODIGO_PROVEEDOR`,`fza_proveedores`.`ACTIVO_PROVEEDOR` AS `ACTIVO_PROVEEDOR`,`fza_proveedores`.`RAZONSOCIAL_PROVEEDOR` AS `RAZONSOCIAL_PROVEEDOR`,`fza_proveedores`.`NIF_PROVEEDOR` AS `NIF_PROVEEDOR`,`fza_proveedores`.`MOVIL_PROVEEDOR` AS `MOVIL_PROVEEDOR`,`fza_proveedores`.`EMAIL_PROVEEDOR` AS `EMAIL_PROVEEDOR`,`fza_proveedores`.`DIRECCION1_PROVEEDOR` AS `DIRECCION1_PROVEEDOR`,`fza_proveedores`.`DIRECCION2_PROVEEDOR` AS `DIRECCION2_PROVEEDOR`,`fza_proveedores`.`POBLACION_PROVEEDOR` AS `POBLACION_PROVEEDOR`,`fza_proveedores`.`PROVINCIA_PROVEEDOR` AS `PROVINCIA_PROVEEDOR`,`fza_proveedores`.`CPOSTAL_PROVEEDOR` AS `CPOSTAL_PROVEEDOR`,`fza_proveedores`.`PAIS_PROVEEDOR` AS `PAIS_PROVEEDOR`,`fza_proveedores`.`OBSERVACIONES_PROVEEDOR` AS `OBSERVACIONES_PROVEEDOR`,`fza_proveedores`.`REFERENCIA_PROVEEDOR` AS `REFERENCIA_PROVEEDOR`,`fza_proveedores`.`CONTACTO_PROVEEDOR` AS `CONTACTO_PROVEEDOR`,`fza_proveedores`.`TELEFONO_CONTACTO_PROVEEDOR` AS `TELEFONO_CONTACTO_PROVEEDOR`,`fza_proveedores`.`TELEFONO_PROVEEDOR` AS `TELEFONO_PROVEEDOR`,`fza_proveedores`.`IBAN_PROVEEDOR` AS `IBAN_PROVEEDOR`,`fza_proveedores`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_proveedores`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_proveedores`.`USUARIOALTA` AS `USUARIOALTA`,`fza_proveedores`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_proveedores` ;

-- ----------------------------
-- View structure for vi_proveedores_articulos
-- ----------------------------
DROP VIEW IF EXISTS `vi_proveedores_articulos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_proveedores_articulos` AS select `fza_articulos_proveedores`.`CODIGO_PROVEEDOR_ARTICULO_PROVEEDOR` AS `CODIGO_PROVEEDOR`,`fza_articulos_proveedores`.`CODIGO_ARTICULO_ARTICULO_PROVEEDOR` AS `CODIGO_ARTICULO`,`vi_articulos`.`DESCRIPCION_ARTICULO` AS `DESCRIPCION_ARTICULO`,`vi_articulos`.`CODIGO_FAMILIA_ARTICULO` AS `CODIGO_FAMILIA`,`vi_articulos`.`DESCRIPCION_FAMILIA` AS `DESCRIPCION_FAMILIA`,`vi_articulos`.`TIPO_CANTIDAD_ARTICULO` AS `TIPO_CATNTIDAD_ARTICULO`,`vi_articulos`.`ESACTIVO_FIJO_ARTICULO` AS `ESACTIVO_FIJO_ARTICULO`,`fza_articulos_proveedores`.`PRECIO_ULT_COMPRA_ARTICULO_PROVEEDOR` AS `PRECIO_ULT_COMPRA`,`fza_articulos_proveedores`.`FECHA_VALIDEZ_ARTICULO_PROVEEDOR` AS `FECHA_VALIDEZ`,`fza_articulos_proveedores`.`ESPROVEEDORPRINCIPAL_ARTICULO_PROVEEDOR` AS `ESPROVEEDORPRINCIPAL`,`fza_articulos_proveedores`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_articulos_proveedores`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_articulos_proveedores`.`USUARIOALTA` AS `USUARIOALTA`,`fza_articulos_proveedores`.`USUARIOMODIF` AS `USUARIOMODIF` from (`fza_articulos_proveedores` left join `vi_articulos` on((`fza_articulos_proveedores`.`CODIGO_ARTICULO_ARTICULO_PROVEEDOR` = `vi_articulos`.`CODIGO_ARTICULO`))) ;

-- ----------------------------
-- View structure for vi_recibos
-- ----------------------------
DROP VIEW IF EXISTS `vi_recibos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_recibos` AS SELECT
	* 
FROM
	fza_recibos 
ORDER BY
	SERIE_FACTURA_RECIBO,
	NRO_FACTURA_RECIBO,
	NRO_PLAZO_RECIBO ;

-- ----------------------------
-- View structure for vi_tarifas
-- ----------------------------
DROP VIEW IF EXISTS `vi_tarifas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_tarifas` AS select `fza_tarifas`.`CODIGO_TARIFA` AS `CODIGO_TARIFA`,`fza_tarifas`.`NOMBRE_TARIFA` AS `NOMBRE_TARIFA`,`fza_tarifas`.`ACTIVO_TARIFA` AS `ACTIVO_TARIFA`,`fza_tarifas`.`FECHA_DESDE_TARIFA` AS `FECHA_DESDE_TARIFA`,`fza_tarifas`.`FECHA_HASTA_TARIFA` AS `FECHA_HASTA_TARIFA`,`fza_tarifas`.`ESIMP_INCL_TARIFA` AS `ESIMP_INCL_TARIFA`,`fza_tarifas`.`ESDEFAULT_TARIFA` AS `ESDEFAULT_TARIFA`,`fza_tarifas`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_tarifas`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_tarifas`.`USUARIOALTA` AS `USUARIOALTA`,`fza_tarifas`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_tarifas` where `fza_tarifas`.`ACTIVO_TARIFA` = 'S' ;

-- ----------------------------
-- View structure for vi_usuarios
-- ----------------------------
DROP VIEW IF EXISTS `vi_usuarios`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_usuarios` AS SELECT
	`fza_usuarios`.`USUARIO_USUARIO` AS `USUARIO_USUARIO`,
	`fza_usuarios`.`PASSWORD_USUARIO` AS `PASSWORD_USUARIO`,
	`fza_usuarios`.`GRUPO_USUARIO` AS `GRUPO_USUARIO`,
	`fza_usuarios`.`EMPRESADEF_USUARIO` AS `EMPRESADEF_USUARIO`,
	vi_empresas.RAZONSOCIAL_EMPRESA AS RAZONSOCIAL_EMPRESA,
	`fza_usuarios`.`ULTIMOLOGIN_USUARIO` AS `ULTIMOLOGIN_USUARIO`,
	`fza_usuarios_grupos`.`GRUPO_GRUPO` AS `GRUPO_GRUPO`,
	`fza_usuarios_grupos`.`ESGRUPOADMINISTRADOR_GRUPO` AS `ESGRUPOADMINISTRADOR_GRUPO` 
FROM
	( `fza_usuarios` JOIN `fza_usuarios_grupos` ON ( `fza_usuarios`.`GRUPO_USUARIO` = `fza_usuarios_grupos`.`GRUPO_GRUPO` ) ) 
	LEFT JOIN vi_empresas ON fza_usuarios.EMPRESADEF_USUARIO = vi_empresas.CODIGO_EMPRESA ;

-- ----------------------------
-- View structure for vi_usuarios_grupos
-- ----------------------------
DROP VIEW IF EXISTS `vi_usuarios_grupos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_usuarios_grupos` AS select `fza_usuarios_grupos`.`GRUPO_GRUPO` AS `GRUPO_GRUPO`,`fza_usuarios_grupos`.`ESGRUPOADMINISTRADOR_GRUPO` AS `ESGRUPOADMINISTRADOR_GRUPO`,`fza_usuarios_grupos`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_usuarios_grupos`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_usuarios_grupos`.`USUARIOALTA` AS `USUARIOALTA`,`fza_usuarios_grupos`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_usuarios_grupos` ;

-- ----------------------------
-- View structure for vi_usuarios_perfiles
-- ----------------------------
DROP VIEW IF EXISTS `vi_usuarios_perfiles`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vi_usuarios_perfiles` AS select `fza_usuarios_perfiles`.`USUARIO_GRUPO_PERFILES` AS `USUARIO_GRUPO_PERFILES`,`fza_usuarios_perfiles`.`KEY_PERFILES` AS `KEY_PERFILES`,`fza_usuarios_perfiles`.`SUBKEY_PERFILES` AS `SUBKEY_PERFILES`,`fza_usuarios_perfiles`.`VALUE_PERFILES` AS `VALUE_PERFILES`,`fza_usuarios_perfiles`.`VALUE_TEXT_PERFILES` AS `VALUE_TEXT_PERFILES`,`fza_usuarios_perfiles`.`TYPE_BLOB_PERFILES` AS `TYPE_BLOB_PERFILES`,`fza_usuarios_perfiles`.`VALUE_BLOB_PERFILES` AS `VALUE_BLOB_PERFILES`,`fza_usuarios_perfiles`.`INSTANTEMODIF` AS `INSTANTEMODIF`,`fza_usuarios_perfiles`.`INSTANTEALTA` AS `INSTANTEALTA`,`fza_usuarios_perfiles`.`USUARIOALTA` AS `USUARIOALTA`,`fza_usuarios_perfiles`.`USUARIOMODIF` AS `USUARIOMODIF` from `fza_usuarios_perfiles` ;

-- ----------------------------
-- Procedure structure for GET_NEXT_CONT
-- ----------------------------
DROP PROCEDURE IF EXISTS `GET_NEXT_CONT`;
delimiter ;;
CREATE PROCEDURE `GET_NEXT_CONT`(IN pTipoDoc varchar(2), 
                                                            IN pUSUARIO_MODIF varchar(100),
                                                            OUT pcont varchar(20))
BEGIN
DECLARE pPADD bigint;

START TRANSACTION;
  

  IF( NOT( EXISTS(
             SELECT *
             FROM fza_contadores
             WHERE `TIPODOC_CONTADOR` =  pTipoDoc) ) ) THEN
	BEGIN
	  INSERT INTO fza_contadores (TIPODOC_CONTADOR, 
		                            SERIE_CONTADOR, 
																CONTADOR_CONTADOR, 
																DEFAULT_CONTADOR,
																NUMDIGIT_CONTADOR,
																INSTANTEALTA, 
																USUARIOALTA,
																USUARIOMODIF) 
												VALUES
																(pTipoDoc, 
																 '-', 
																 1, 
																 'S', 
																 3,
																 CURRENT_TIMESTAMP,
																 pUSUARIO_MODIF, 
																 pUSUARIO_MODIF);
	END;
	END IF;
	SET pPADD = (SELECT NUMDIGIT_CONTADOR 
										FROM fza_contadores 
									 WHERE TIPODOC_CONTADOR = pTipoDoc 
									   AND DEFAULT_CONTADOR = 'S' 
										 LIMIT 1);
	 
	 UPDATE fza_contadores 
	    SET CONTADOR_CONTADOR = CONTADOR_CONTADOR + 1,
				 USUARIOMODIF = pUSUARIO_MODIF
      WHERE TIPODOC_CONTADOR = pTipoDoc;
			
	  SELECT LPAD( (SELECT CONTADOR_CONTADOR - 1 
                                FROM fza_contadores 		
                               WHERE TIPODOC_CONTADOR = pTipoDoc 
															 LIMIT 1) , pPADD, '0') INTO pcont;
COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_CALCULAR_FACTURA_NETOS
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_CALCULAR_FACTURA_NETOS`;
delimiter ;;
CREATE PROCEDURE `PRC_CALCULAR_FACTURA_NETOS`(IN `pSERIE_FACTURA` VARCHAR(8), 
                                              IN `pNRO_FACTURA` VARCHAR(12))
BEGIN
  DECLARE pPRECIOSIVA decimal(19,6);
  DECLARE pPRECIOCIVA decimal(19,6);
  DECLARE pPORCEN decimal(19,6);
  DECLARE pTIPO VARCHAR(2);
  DECLARE pIVA_RECARGO varchar(1) DEFAULT '';
  DECLARE pAPLICA_RECARGO varchar(1) DEFAULT '';
  DECLARE pIVA_EXENTO varchar(1) DEFAULT '';
  DECLARE pREG_AG_EMP varchar(1) DEFAULT '';
  DECLARE pREG_AG_CLI varchar(1) DEFAULT '';
  DECLARE pINTRACOMUNITARIO varchar(1) DEFAULT '';
  DECLARE pAPLICA_RETENCIONES_CLI varchar(1) DEFAULT '';
  DECLARE pAPLICA_RETENCIONES_EMP varchar(1) DEFAULT '';
  DECLARE pPORCENREN decimal(19,6) DEFAULT 0;
  DECLARE pPORCENRER decimal(19,6) DEFAULT 0;
  DECLARE pPORCENRES decimal(19,6) DEFAULT 0;
  DECLARE pPORCENREE decimal(19,6) DEFAULT 0;
  DECLARE pSUMBASEN decimal(19,6) DEFAULT 0;
  DECLARE pSUMBASER decimal(19,6) DEFAULT 0;
  DECLARE pSUMBASES decimal(19,6) DEFAULT 0;
  DECLARE pSUMBASEE decimal(19,6) DEFAULT 0;
  DECLARE pTOTN decimal(19,6) DEFAULT 0;
  DECLARE pTOTR decimal(19,6) DEFAULT 0;
  DECLARE pTOTS decimal(19,6) DEFAULT 0;
  DECLARE pTOTE decimal(19,6) DEFAULT 0;
  DECLARE pTOTRECN decimal(19,6) DEFAULT 0;
  DECLARE pTOTRECR decimal(19,6) DEFAULT 0;
  DECLARE pTOTRECS decimal(19,6) DEFAULT 0;
  DECLARE pTOTRECE decimal(19,6) DEFAULT 0;
  DECLARE pSUMTOTREC decimal(19,6) DEFAULT 0;
  DECLARE pSUMTOT decimal(19,6) DEFAULT 0;
  DECLARE pPORCENN decimal(19,6) DEFAULT 0;
  DECLARE pTOTBASES decimal(19,6) DEFAULT 0;
  DECLARE pPORCENR decimal(19,6) DEFAULT 0;
  DECLARE pPORCENS decimal(19,6) DEFAULT 0;
  DECLARE pPORCENE decimal(19,6) DEFAULT 0;
  DECLARE pPORCENRET decimal(19,6) DEFAULT 0;
  DECLARE pGRUPO_ZONA_IVA int;
  DECLARE pCODIGO_IVA int;
  DECLARE pTOTALRET decimal(19,6) DEFAULT 0;
  DECLARE pFECHA datetime;
  DECLARE pLINEA varchar(3);
  DECLARE pIMP_INCL varchar(1);
  DECLARE pCANTIDAD decimal(19,6) DEFAULT 0;
  DECLARE pCODART varchar(20);
  DECLARE pTIPOIVAF varchar(1) DEFAULT 'X';
  DECLARE pIRPF_IMP_INCL VARCHAR(1);
  DECLARE pVENTA_ACT_FIJ VARCHAR(1);
  DECLARE finished INTEGER DEFAULT 0;
  DECLARE pCODEMPRESA varchar(8);
  DECLARE CUR_LINEAS 
          CURSOR FOR 
              SELECT LINEA_FACTURA_LINEA,
                     CODIGO_ARTICULO_FACTURA_LINEA,
                     PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA AS PRECIOSIVA,
                     PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA AS PRECIOCIVA,
                     PORCEN_IVA_FACTURA_LINEA AS PORCEN,
                     TIPOIVA_ARTICULO_FACTURA_LINEA AS TIPO,
                     ESIMP_INCL_TARIFA_FACTURA_LINEA AS IMP_INCL,
                     CANTIDAD_FACTURA_LINEA as CANTIDAD
                FROM FZA_FACTURAS_LINEAS 
               WHERE SERIE_FACTURA_LINEA = pSERIE_FACTURA 
                 AND NRO_FACTURA_LINEA = pNRO_FACTURA;
  DECLARE CONTINUE HANDLER 
          FOR NOT FOUND SET finished = 1;
  SELECT PORCEN_IVAN_FACTURA,
         PORCEN_IVAR_FACTURA,
         PORCEN_IVAS_FACTURA,
         PORCEN_IVAE_FACTURA,
         PORCEN_RETENCION_FACTURA,
         ESAPLICA_RE_ZONA_IVA_FACTURA,
				 ESIVA_RECARGO_CLIENTE_FACTURA,
         ESIVA_EXENTO_CLIENTE_FACTURA,
         ESRETENCIONES_CLIENTE_FACTURA,
         ESRETENCIONES_EMPRESA_FACTURA,
         ESIRPF_IMP_INCL_ZONA_IVA_FACTURA,
         PORCEN_REN_FACTURA,
         PORCEN_RER_FACTURA,
         PORCEN_RES_FACTURA,
         PORCEN_REE_FACTURA,
         ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA,
         ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA,
         GRUPO_ZONA_IVA_EMPRESA_FACTURA,
         CODIGO_IVA_FACTURA,
         ESINTRACOMUNITARIO_CLIENTE_FACTURA,
         FECHA_FACTURA,
         CODIGO_EMPRESA_FACTURA,
         ESVENTA_ACTIVO_FIJO_FACTURA
    INTO pPORCENN,
         pPORCENR,
         pPORCENS,
         pPORCENE,
         pPORCENRET,
         pIVA_RECARGO,
         pAPLICA_RECARGO,
         pIVA_EXENTO,
         pAPLICA_RETENCIONES_CLI,
         pAPLICA_RETENCIONES_EMP,
         pIRPF_IMP_INCL,
         pPORCENREN,
         pPORCENRER,
         pPORCENRES,
         pPORCENREE,
         pREG_AG_EMP,
         pREG_AG_CLI,
         pGRUPO_ZONA_IVA,
         pCODIGO_IVA,
         pINTRACOMUNITARIO,
         pFECHA,
         pCODEMPRESA,
         pVENTA_ACT_FIJ
    FROM fza_facturas
   WHERE SERIE_FACTURA = pSERIE_FACTURA
     AND NRO_FACTURA = pNRO_FACTURA;
  IF (pREG_AG_EMP = 'S') THEN
    SET pAPLICA_RETENCIONES_EMP = 'S';
    SET pAPLICA_RECARGO = 'N';
    IF ( EXISTS(SELECT CODIGO_EMPRESA 
                  FROM vi_ivas_empresa 
                 WHERE CODIGO_EMPRESA = pcodempresa 
                   AND ESIVAAGRICOLA_ZONA_IVA = 'S') ) THEN
      SELECT GRUPO_ZONA_IVA,
             CODIGO_IVA, 
             PORCENNORMAL_IVA,
             PORCENEXENTO_IVA,
             PORCENREDUCIDO_IVA,
             PORCENSUPERREDUCIDO_IVA
        INTO pGRUPO_ZONA_IVA,
             pCODIGO_IVA,
             pPORCENN,
             pPORCENE,
             pPORCENR,
             pPORCENS
        FROM vi_ivas_empresa 
       WHERE ESIVAAGRICOLA_ZONA_IVA ='S'
         AND CODIGO_EMPRESA = pCODEMPRESA
         AND FECHA_DESDE_IVA <= pFECHA
         AND (FECHA_HASTA_IVA IS NULL 
              OR FECHA_HASTA_IVA >= pFECHA);
    ELSE
      SELECT GRUPO_ZONA_IVA,
             CODIGO_IVA, 
             PORCENNORMAL_IVA,
             PORCENEXENTO_IVA,
             PORCENREDUCIDO_IVA,
             SUPERREDUCIDO_IVA
        INTO pGRUPO_ZONA_IVA,
             pCODIGO_IVA,
             pPORCENN,
             pPORCENE,
             pPORCENR,
             pPORCENS
        FROM vi_ivas 
       WHERE ESIVAAGRICOLA_ZONA_IVA ='S'
         AND ESDEFAULT_ZONA_IVA = 'S'
         AND FECHA_DESDE_IVA <= pFECHA
         AND (FECHA_HASTA_IVA IS NULL 
             OR FECHA_HASTA_IVA >= pFECHA);
    END IF;
  END IF;
  IF (pINTRACOMUNITARIO = 'S') THEN
    SET pIVA_EXENTO = 'S';
    SET pAPLICA_RETENCIONES_CLI = 'N';
    SET pREG_AG_CLI = 'N';
  END IF;
  IF ((pVENTA_ACT_FIJ = 'S') AND (pREG_AG_EMP = 'S')) THEN
    SET pIVA_EXENTO = 'S';
  END IF;    
  IF ((pREG_AG_EMP = 'S') AND (pREG_AG_CLI = 'S')) THEN
    SET pAPLICA_RETENCIONES_CLI = 'S';
    SET pIVA_EXENTO = 'S';
  END IF;
  IF ((pREG_AG_EMP = 'S') AND (pREG_AG_CLI = 'N') AND 
      (pAPLICA_RETENCIONES_CLI='N' )) THEN
    SET pIVA_EXENTO = 'S';
  END IF;    
  IF ((pREG_AG_EMP = 'S') AND (pREG_AG_CLI = 'N') AND 
      (pAPLICA_RETENCIONES_CLI='S' )) THEN
    SET pTIPOIVAF = 'N';
  END IF;
  IF (pIVA_EXENTO = 'S') THEN
    SET pPORCENN = pPORCENE;
    SET pPORCENR = pPORCENE;
    SET pPORCENS = pPORCENE;
    SET pPORCENE = pPORCENE;
    SET pPORCENREN = 0;
    SET pPORCENRER = 0;
    SET pPORCENRES = 0;
    SET pPORCENREE = 0;
    SET pTIPOIVAF = 'E';
    SET pSUMBASEN = 0;
    SET pSUMBASER = 0;
    SET pSUMBASES = 0;
    SET pSUMBASEE = pSUMBASEE +
                    pSUMBASEN +
                    pSUMBASER +
                    pSUMBASES;
  END IF;
  OPEN CUR_LINEAS;
  GETLINEAS: LOOP
    FETCH CUR_LINEAS INTO pLINEA, 
                          pCODART, 
                          pPRECIOSIVA, 
                          pPRECIOCIVA, 
                          pPORCEN, 
                          pTIPO, 
                          pIMP_INCL, 
                          pCANTIDAD ;
    IF finished = 1 THEN 
      LEAVE GETLINEAS;
    END IF;
    IF (pTIPOIVAF <> 'X') THEN
      SET pTIPO = pTIPOIVAF;
    ELSE
      IF (EXISTS( SELECT * 
                    FROM fza_articulos 
                   WHERE CODIGO_ARTICULO = pCODART ) ) THEN
        SET pTIPO = (SELECT TIPOIVA_ARTICULO 
                       FROM fza_articulos 
                      WHERE CODIGO_ARTICULO = pCODART);
      END IF;
    END IF;
    CASE pTIPO
    WHEN  'N' THEN
      SET pPORCEN = pPORCENN;
      IF (pIMP_INCL = 'S') THEN
        SET pPRECIOSIVA = pPRECIOCIVA/(1+pPORCEN/100)*pCANTIDAD;
      END IF;
      SET pSUMBASEN = PSUMBASEN + pPRECIOSIVA;
    WHEN 'R' THEN
      SET pPORCEN = pPORCENR;
      IF (pIMP_INCL = 'S') THEN
        SET pPRECIOSIVA = pPRECIOCIVA/(1+pPORCEN/100)*pCANTIDAD;
      END IF;
      SET pSUMBASER = PSUMBASER + pPRECIOSIVA;
    WHEN 'S' THEN
      SET pPORCEN = pPORCENS;
      IF (pIMP_INCL = 'S') THEN
        SET pPRECIOSIVA = pPRECIOCIVA/(1+pPORCEN/100)*pCANTIDAD;
      END IF;
      SET pSUMBASES = PSUMBASES + pPRECIOSIVA;
    WHEN 'E' THEN
       SET pPORCEN = pPORCENE;
        IF (pIMP_INCL = 'S') THEN
          SET pPRECIOSIVA = pPRECIOCIVA/(1+pPORCEN/100)*pCANTIDAD;
        END IF;
        SET pSUMBASEE = PSUMBASEE + pPRECIOSIVA;
    END CASE;
    IF (pIMP_INCL = 'S') THEN
      UPDATE FZA_FACTURAS_LINEAS 
         SET PORCEN_IVA_FACTURA_LINEA = pPORCEN,
             TIPOIVA_ARTICULO_FACTURA_LINEA = pTIPO,
             PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA = 
                       PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA/(1+pPORCEN/100),
             TOTAL_FACTURA_LINEA = 
               CANTIDAD_FACTURA_LINEA * PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA
       WHERE SERIE_FACTURA_LINEA = pSERIE_FACTURA 
         AND NRO_FACTURA_LINEA = pNRO_FACTURA
             AND LINEA_FACTURA_LINEA = pLINEA; 
    ELSE
      UPDATE FZA_FACTURAS_LINEAS 
         SET PORCEN_IVA_FACTURA_LINEA = pPORCEN,
             TIPOIVA_ARTICULO_FACTURA_LINEA = pTIPO,
             PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA = 
                      PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA*(1+pPORCEN/100) ,
             TOTAL_FACTURA_LINEA = 
               CANTIDAD_FACTURA_LINEA * PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA
        WHERE SERIE_FACTURA_LINEA = pSERIE_FACTURA 
          AND NRO_FACTURA_LINEA = pNRO_FACTURA
          AND LINEA_FACTURA_LINEA = pLINEA; 
    END IF;
  END LOOP GETLINEAS;
  SET PTOTBASES = pSUMBASEN + pSUMBASER + pSUMBASES + pSUMBASEE;
  SET pTOTN = pSUMBASEN * (1 + pPORCENN/100) - pSUMBASEN;
  SET pTOTR = pSUMBASER * (1 + pPORCENR/100) - pSUMBASER;
  SET pTOTS = pSUMBASES * (1 + pPORCENS/100) - pSUMBASES;
  SET pTOTE = pSUMBASEE * (1 + pPORCENE/100) - pSUMBASEE;
  SET pSUMTOT = pTOTN + pTOTR + pTOTS + pTOTE;
  IF ( (pIVA_RECARGO ='S') AND (pAPLICA_RECARGO = 'S') ) THEN
    SET pTOTRECN = pSUMBASEN * (1 + pPORCENREN/100) - pSUMBASEN;
    SET pTOTRECS = pSUMBASES * (1 + pPORCENRES/100) - pSUMBASES;
    SET pTOTRECE = pSUMBASEE * (1 + pPORCENREE/100) - pSUMBASEE;
    SET pSUMTOTREC = pTOTRECN + pTOTRECR + pTOTRECS + pTOTRECE;
  ELSE 
    SET pTOTRECN = 0;
    SET pTOTRECR = 0;
    SET pTOTRECS = 0;
    SET pTOTRECE = 0;
    SET pSUMTOTREC = 0;
  END IF;
  IF ( (pAPLICA_RETENCIONES_CLI = 'S') AND
       (pAPLICA_RETENCIONES_EMP = 'S') 			 
		 ) THEN 
		IF (pPORCENRET = 0) THEN 
			SET pPORCENRET = (SELECT PORCENRETENCION_RETENCION 
													FROM fza_empresas_retenciones 
												 WHERE CODIGO_EMPRESA_RETENCION = pCODEMPRESA
													 AND FECHA_DESDE_RETENCION <= pFECHA
													 AND (    FECHA_HASTA_RETENCION >= pFECHA
																OR FECHA_HASTA_RETENCION IS NULL) LIMIT 1); 
		END IF;
    IF (pIRPF_IMP_INCL = 'S') THEN
      SET pTOTALRET = (pTOTBASES + pSUMTOT ) * (pPORCENRET/100);
    ELSE
      SET pTOTALRET = pTOTBASES * (pPORCENRET/100);
	  END IF;
    IF ((pVENTA_ACT_FIJ = 'S') AND (pREG_AG_EMP = 'S')) THEN
      SET pPORCENRET = 0;
      SET PTOTALRET = 0;
    END IF;
  ELSE
    SET pPORCENRET = 0;
    SET PTOTALRET = 0;
  END IF;
  UPDATE fza_facturas 
     SET TOTAL_BASEI_IVAN_FACTURA = pSUMBASEN,
         TOTAL_BASEI_IVAR_FACTURA = pSUMBASER,
         TOTAL_BASEI_IVAS_FACTURA = pSUMBASES,
         TOTAL_BASEI_IVAE_FACTURA = pSUMBASEE,
         TOTAL_IVAN_FACTURA = pTOTN,
         TOTAL_IVAR_FACTURA = pTOTR,
         TOTAL_IVAS_FACTURA = pTOTS,
         TOTAL_IVAE_FACTURA = pTOTE,
         TOTAL_REN_FACTURA = PTOTRECN,
         TOTAL_RER_FACTURA = PTOTRECR,
         TOTAL_RES_FACTURA = PTOTRECS,
         TOTAL_REE_FACTURA = PTOTRECE,
         TOTAL_BASES_FACTURA = pTOTBASES,
         TOTAL_RETENCION_FACTURA = pTOTALRET,
         TOTAL_LIQUIDO_FACTURA = pTOTBASES + 
                                 pSUMTOT - 
                                 PTOTALRET + 
                                 pSUMTOTREC,
         ESIVA_EXENTO_CLIENTE_FACTURA = pIVA_EXENTO,
         ESRETENCIONES_CLIENTE_FACTURA = pAPLICA_RETENCIONES_CLI,
         ESRETENCIONES_EMPRESA_FACTURA = pAPLICA_RETENCIONES_EMP,
         ESIVA_RECARGO_CLIENTE_FACTURA = pAPLICA_RECARGO,
         TOTAL_IMPUESTOS_FACTURA = pSUMTOTREC + pSUMTOT,
         GRUPO_ZONA_IVA_EMPRESA_FACTURA = pGRUPO_ZONA_IVA,
         CODIGO_IVA_FACTURA = pCODIGO_IVA,
         PORCEN_IVAN_FACTURA = pPORCENN,
         PORCEN_IVAE_FACTURA = pPORCENE,
         PORCEN_IVAR_FACTURA = pPORCENR,
         PORCEN_IVAS_FACTURA = pPORCENS,
         PORCEN_RETENCION_FACTURA = pPORCENRET
   WHERE NRO_FACTURA = pNRO_FACTURA 
     AND SERIE_FACTURA = pSERIE_FACTURA;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_CREAR_ACTUALIZAR_CLIENTE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_CREAR_ACTUALIZAR_CLIENTE`;
delimiter ;;
CREATE PROCEDURE `PRC_CREAR_ACTUALIZAR_CLIENTE`(IN `pCODIGO_CLIENTE`                       int(10),
                            IN `pRAZONSOCIAL_CLIENTE`             varchar(200),
                            IN `pNIF_CLIENTE`                      varchar(50),
                            IN `pMOVIL_CLIENTE`                    varchar(40),
                            IN `pEMAIL_CLIENTE`                   varchar(200),
                            IN `pDIRECCION1_CLIENTE`              varchar(200),
                            IN `pDIRECCION2_CLIENTE`              varchar(200),
                            IN `pPOBLACION_CLIENTE`               varchar(200),
                            IN `pPROVINCIA_CLIENTE`               varchar(200),
                            IN `pCPOSTAL_CLIENTE`                  varchar(15),
                            IN `pPAIS_CLIENTE`                    varchar(150),
                            IN `pESIVA_EXENTO_CLIENTE`              varchar(1),
                            IN `pESRETENCIONES_CLIENTE`             varchar(1),
                            IN `pESIVA_RECARGO_CLIENTE`             varchar(1),
                            IN `pESINTRACOMUNITARIO_CLIENTE`        varchar(1),
                            IN `pESREGIMENESPECIALAGRICOLA_CLIENTE` varchar(1),
                            IN `pTARIFA_ARTICULO_CLIENTE`          varchar(10),
                            IN `pUSUARIO`                         varchar(100),
                            IN `pINSTANTEMODIF`                      TIMESTAMP)
BEGIN
START TRANSACTION;
 IF( EXISTS( SELECT *
               FROM fza_clientes
              WHERE `CODIGO_CLIENTE` =  pcodigo_cliente) ) THEN
 BEGIN
   UPDATE fza_clientes
      SET RAZONSOCIAL_CLIENTE               = pRAZONSOCIAL_CLIENTE ,
          NIF_CLIENTE                       = pNIF_CLIENTE         ,
          MOVIL_CLIENTE                     = pMOVIL_CLIENTE       ,
          EMAIL_CLIENTE                     = pEMAIL_CLIENTE       ,
          DIRECCION1_CLIENTE                = pDIRECCION1_CLIENTE  ,
          DIRECCION2_CLIENTE                = pDIRECCION2_CLIENTE  ,
          POBLACION_CLIENTE                 = pPOBLACION_CLIENTE   ,
          PROVINCIA_CLIENTE                 = pPROVINCIA_CLIENTE   ,
          CPOSTAL_CLIENTE                   = pCPOSTAL_CLIENTE     ,
          PAIS_CLIENTE                      = pPAIS_CLIENTE        ,
          ESIVA_EXENTO_CLIENTE              = pIVA_EXENTO_CLIENTE  ,
          ESRETENCIONES_CLIENTE             = pRETENCIONES_CLIENTE ,
          ESIVA_RECARGO_CLIENTE             = pIVA_RECARGO_CLIENTE ,
          ESREGIMENESPECIALAGRICOLA_CLIENTE = pREGIMENESPECIALAGRICOLA_CLIENTE,
          ESINTRACOMUNITARIO_CLIENTE        = pESINTRACOMUNITARIO_CLIENTE,
          TARIFA_ARTICULO_CLIENTE           = pTARIFA_ARTICULO_CLIENTE,
          USUARIOMODIF                      = pUSUARIO             
    WHERE CODIGO_cliente = pCODIGO_CLIENTE;
  END;
  ELSE
  BEGIN
    INSERT INTO fza_clientes (CODIGO_CLIENTE                    ,
                              RAZONSOCIAL_CLIENTE               ,
                              NIF_CLIENTE                       ,
                              MOVIL_CLIENTE                     ,
                              EMAIL_CLIENTE                     ,
                              DIRECCION1_CLIENTE                ,
                              DIRECCION2_CLIENTE                ,
                              POBLACION_CLIENTE                 ,
                              PROVINCIA_CLIENTE                 ,
                              CPOSTAL_CLIENTE                   ,
                              PAIS_CLIENTE                      ,
                              ESIVA_EXENTO_CLIENTE              ,
                              ESRETENCIONES_CLIENTE             ,
                              ESIVA_RECARGO_CLIENTE             ,
                              ESREGIMENESPECIALAGRICOLA_CLIENTE ,
                              ESINTRACOMUNITARIO_CLIENTE        ,
                              TARIFA_ARTICULO_CLIENTE           ,
                              USUARIOMODIF                      ,
                              USUARIOALTA                       ,
                              INSTANTEALTA                      ,
                              INSTANTEMODIF
                      ) VALUES
                             (pCODIGO_CLIENTE                   ,
                              pRAZONSOCIAL_CLIENTE              ,
                              pNIF_CLIENTE                      ,
                              pMOVIL_CLIENTE                    ,
                              pEMAIL_CLIENTE                    ,
                              pDIRECCION1_CLIENTE               ,
                              pDIRECCION2_CLIENTE               ,
                              pPOBLACION_CLIENTE                ,
                              pPROVINCIA_CLIENTE                ,
                              pCPOSTAL_CLIENTE                  ,
                              pPAIS_CLIENTE                     ,
                              pESIVA_EXENTO_CLIENTE             ,
                              pESRETENCIONES_CLIENTE            ,
                              pESIVA_RECARGO_CLIENTE            ,
                              pESREGIMENESPECIALAGRICOLA_CLIENTE,
                              pESINTRACOMUNITARIO_CLIENTE       ,
                              pTARIFA_ARTICULO_CLIENTE          ,
                              pUSUARIO                          ,
                              pUSUARIO                          ,
                              pINSTANTEMODIF                    ,
                              pINSTANTEMODIF           
                              );
  END;
  END IF;
  COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_CREAR_ACTUALIZAR_EMPRESA
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_CREAR_ACTUALIZAR_EMPRESA`;
delimiter ;;
CREATE PROCEDURE `PRC_CREAR_ACTUALIZAR_EMPRESA`(IN `pCODIGO_EMPRESA`                     int(10), 
                              IN `pRAZONSOCIAL_EMPRESA`           varchar(200),
                              IN `pNIF_EMPRESA`                    varchar(50),
                              IN `pMOVIL_EMPRESA`                  varchar(40),
                              IN `pEMAIL_EMPRESA`                 varchar(200),
                              IN `pDIRECCION1_EMPRESA`            varchar(200),
                              IN `pDIRECCION2_EMPRESA`            varchar(200),
                              IN `pPOBLACION_EMPRESA`             varchar(200),
                              IN `pPROVINCIA_EMPRESA`             varchar(200),
                              IN `pCPOSTAL_EMPRESA`                varchar(15),
                              IN `pPAIS_EMPRESA`                  varchar(150),
                              IN `pRETENCIONES_EMPRESA`             varchar(1),
                              IN `pIVA_RECARGO_EMPRESA`             varchar(1),
                              IN `pREGIMENESPECIALAGRICOLA_EMPRESA` varchar(1),
                              IN `pGRUPO_ZONA_IVA_EMPRESA`         varchar(10),
                              IN `pUSUARIO`                       varchar(100),
                              IN `pINSTANTEMODIF`                    TIMESTAMP)
BEGIN
START TRANSACTION;
 IF( EXISTS(
             SELECT *
             FROM fza_empresas
             WHERE `CODIGO_EMPRESA` =  pcodigo_empresa) ) THEN
  UPDATE fza_EMPRESAs
    SET  RAZONSOCIAL_EMPRESA               = pRAZONSOCIAL_EMPRESA            ,
         NIF_EMPRESA                       = pNIF_EMPRESA                    ,
         MOVIL_EMPRESA                     = pMOVIL_EMPRESA                  ,
         EMAIL_EMPRESA                     = pEMAIL_EMPRESA                  ,
         DIRECCION1_EMPRESA                = pDIRECCION1_EMPRESA             ,
         DIRECCION2_EMPRESA                = pDIRECCION2_EMPRESA             ,
         POBLACION_EMPRESA                 = pPOBLACION_EMPRESA              ,
         PROVINCIA_EMPRESA                 = pPROVINCIA_EMPRESA              ,
         CPOSTAL_EMPRESA                   = pCPOSTAL_EMPRESA                ,
         PAIS_EMPRESA                      = pPAIS_EMPRESA                   ,
         ESRETENCIONES_EMPRESA             = pRETENCIONES_EMPRESA            ,
         ESREGIMENESPECIALAGRICOLA_EMPRESA = pREGIMENESPECIALAGRICOLA_EMPRESA,
         GRUPO_ZONA_IVA_EMRPESA            = pGRUPO_ZONA_IVA_EMPRESA,
         USUARIOMODIF                      = pUSUARIO             
  WHERE CODIGO_EMPRESA = pCODIGO_EMPRESA;
  ELSE
  INSERT INTO fza_EMPRESAs (CODIGO_EMPRESA                     ,
                            RAZONSOCIAL_EMPRESA               ,
                            NIF_EMPRESA                       ,
                            MOVIL_EMPRESA                     ,
                            EMAIL_EMPRESA                     ,
                            DIRECCION1_EMPRESA                ,
                            DIRECCION2_EMPRESA                ,
                            POBLACION_EMPRESA                 ,
                            PROVINCIA_EMPRESA                 ,
                            CPOSTAL_EMPRESA                   ,
                            PAIS_EMPRESA                      ,
                            ESRETENCIONES_EMPRESA             ,
                            ESREGIMENESPECIALAGRICOLA_EMPRESA ,
                            GRUPO_ZONA_IVA_EMPRESA            ,
                            USUARIOMODIF                      ,
                            USUARIOALTA                       ,
                            INSTANTEALTA  
                    ) VALUES
                           (pCODIGO_EMPRESA      ,
                            pRAZONSOCIAL_EMPRESA ,
                            pNIF_EMPRESA         ,
                            pMOVIL_EMPRESA       ,
                            pEMAIL_EMPRESA       ,
                            pDIRECCION1_EMPRESA  ,
                            pDIRECCION2_EMPRESA  ,
                            pPOBLACION_EMPRESA   ,
                            pPROVINCIA_EMPRESA   ,
                            pCPOSTAL_EMPRESA     ,
                            pPAIS_EMPRESA        ,
                            pRETENCIONES_EMPRESA ,
                            pREGIMENESPECIALAGRICOLA_EMPRESA,
                            pGRUPO_ZONA_IVA_EMPRESA,
                            pUSUARIO             ,
                            pUSUARIO             ,
                            pINSTANTEMODIF       
                            );
  END IF;
  COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_CREAR_ACTUALIZAR_KEY
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_CREAR_ACTUALIZAR_KEY`;
delimiter ;;
CREATE PROCEDURE `PRC_CREAR_ACTUALIZAR_KEY`(IN `pUSUARIO`       varchar(200),
                                              IN `pKEY`           varchar(100),
                                              IN `pSUBKEY`        varchar(100),
                                              IN `pVALUE`         varchar(200),
                                              IN `pVALUE_TEXT`    text,
                                              IN `pUSUARIO_MODIF` varchar(100))
BEGIN
START TRANSACTION;
 IF( EXISTS(
             SELECT *
               FROM `fza_usuarios_perfiles`
              WHERE `USUARIO_GRUPO_PERFILES` = `pUSUARIO`
                AND `KEY_PERFILES`           = `pKEY` 
                AND `SUBKEY_PERFILES`        = `pSUBKEY` )) THEN
  BEGIN
    UPDATE `fza_usuarios_perfiles`
      SET `VALUE_PERFILES`      = `pVALUE`,
          `VALUE_TEXT_PERFILES` = `pVALUE_TEXT`,
          `USUARIOMODIF`        = `pUSUARIO_MODIF`
    WHERE `USUARIO_GRUPO_PERFILES` = `pUSUARIO`
      AND `KEY_PERFILES`           = `pKEY` 
      AND `SUBKEY_PERFILES`        = `pSUBKEY`;
  END;
  ELSE
  BEGIN
    INSERT INTO fza_usuarios_perfiles (`USUARIO_GRUPO_PERFILES`, 
                                       `KEY_PERFILES`          , 
                                       `SUBKEY_PERFILES`       , 
                                       `VALUE_PERFILES`        , 
                                       `VALUE_TEXT_PERFILES`   , 
                                       `INSTANTEALTA`          , 
                                       `USUARIOALTA`           , 
                                       `USUARIOMODIF`
                                      ) VALUES
                             (`pUSUARIO`         ,
                              `pKEY`             ,
                              `pSUBKEY`          ,
                              `pVALUE`           ,
                              `pVALUE_TEXT`      ,
                              CURRENT_TIMESTAMP  ,
                              `pUSUARIO_MODIF`   ,
                              `pUSUARIO_MODIF`
                             );
  END;
  END IF;
  COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_CREAR_FACTURA_ABONO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_CREAR_FACTURA_ABONO`;
delimiter ;;
CREATE PROCEDURE `PRC_CREAR_FACTURA_ABONO`(IN `pidseriefactura`      varchar(200),
                                      IN `pidnumfactura`        varchar(200),
                                      IN `pidseriefacturaabono` varchar(200),
                                      IN `pfechafacturaabono`   date,
                                     OUT `pidnumfacturaabono`   varchar(200),
                                      IN `pUSUARIO`             varchar(100),
                                      IN `pINSTANTEMODIF`       TIMESTAMP)
BEGIN
   DECLARE contadorped varchar(200);
   START TRANSACTION;
   CALL PRC_GET_NEXT_CONT_FACT_SERIE(pidseriefacturaabono, 'FC', @cont);   
   SET @pFecha = (SELECT DATE_FORMAT(pfechafacturaabono, '%Y-%m-%d'));
   SET contadorped = @cont;     
   SET pidnumfacturaabono = contadorped;
   INSERT INTO fza_facturas  (`NRO_FACTURA`                                  ,
                              `SERIE_FACTURA`                                ,
                              `FECHA_FACTURA`                                ,
                              `CODIGO_EMPRESA_FACTURA`                       ,
                              `RAZONSOCIAL_EMPRESA_FACTURA`                  ,
                              `NIF_EMPRESA_FACTURA`                          ,
                              `MOVIL_EMPRESA_FACTURA`                        ,
                              `EMAIL_EMPRESA_FACTURA`                        ,
                              `DIRECCION1_EMPRESA_FACTURA`                   ,
                              `DIRECCION2_EMPRESA_FACTURA`                   ,
                              `POBLACION_EMPRESA_FACTURA`                    ,
                              `PROVINCIA_EMPRESA_FACTURA`                    ,
                              `PAIS_EMPRESA_FACTURA`                         ,
                              `CPOSTAL_EMPRESA_FACTURA`                      ,
                              `ESRETENCIONES_EMPRESA_FACTURA`                ,
                              `GRUPO_ZONA_IVA_EMPRESA_FACTURA`               ,
                              `ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA`    ,
                              `CODIGO_CLIENTE_FACTURA`                       ,
                              `RAZONSOCIAL_CLIENTE_FACTURA`                  ,
                              `NIF_CLIENTE_FACTURA`                          ,
                              `MOVIL_CLIENTE_FACTURA`                        ,
                              `EMAIL_CLIENTE_FACTURA`                        ,
                              `DIRECCION1_CLIENTE_FACTURA`                   ,
                              `DIRECCION2_CLIENTE_FACTURA`                   ,
                              `POBLACION_CLIENTE_FACTURA`                    ,
                              `PROVINCIA_CLIENTE_FACTURA`                    ,
                              `CPOSTAL_CLIENTE_FACTURA`                      ,
                              `PAIS_CLIENTE_FACTURA`                         ,
                              `ESIVA_RECARGO_CLIENTE_FACTURA`                ,
                              `ESIVA_EXENTO_CLIENTE_FACTURA`                 ,
                              `ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA`    ,
                              `ESRETENCIONES_CLIENTE_FACTURA`                ,
                              `TARIFA_ARTICULO_CLIENTE_FACTURA`              ,
                              `ESIMP_INCL_TARIFA_CLIENTE_FACTURA`            ,
                              `ESINTRACOMUNITARIO_CLIENTE_FACTURA`           ,
                              `ESIRPF_IMP_INCL_ZONA_IVA_FACTURA`             ,
                              `ESAPLICA_RE_ZONA_IVA_FACTURA`                 ,
                              `ESIVAAGRICOLA_ZONA_IVA_FACTURA`               ,
                              `PALABRA_REPORTS_ZONA_IVA_FACTURA`             ,
                              `CODIGO_IVA_FACTURA`                           ,
                              `ESVENTA_ACTIVO_FIJO_FACTURA`                  ,
                              `PORCEN_IVAN_FACTURA`                          ,
                              `TOTAL_IVAN_FACTURA`                           ,
                              `PORCEN_REN_FACTURA`                           ,
                              `TOTAL_REN_FACTURA`                            ,
                              `TOTAL_BASEI_IVAN_FACTURA`                     ,
                              `PORCEN_IVAR_FACTURA`                          ,
                              `TOTAL_IVAR_FACTURA`                           ,
                              `PORCEN_RER_FACTURA`                           ,
                              `TOTAL_RER_FACTURA`                            ,
                              `TOTAL_BASEI_IVAR_FACTURA`                     ,
                              `PORCEN_IVAS_FACTURA`                          ,
                              `TOTAL_IVAS_FACTURA`                           ,
                              `PORCEN_RES_FACTURA`                           ,
                              `TOTAL_RES_FACTURA`                            ,
                              `TOTAL_BASEI_IVAS_FACTURA`                     ,
                              `PORCEN_IVAE_FACTURA`                          ,
                              `TOTAL_IVAE_FACTURA`                           ,
                              `PORCEN_REE_FACTURA`                           ,
                              `TOTAL_REE_FACTURA`                            ,
                              `TOTAL_BASEI_IVAE_FACTURA`                     ,
                              `TOTAL_BASES_FACTURA`                          ,
                              `TOTAL_IMPUESTOS_FACTURA`                      ,
                              `FORMA_PAGO_FACTURA`                           ,
                              `PORCEN_RETENCION_FACTURA`                     ,
                              `TOTAL_RETENCION_FACTURA`                      ,
                              `TOTAL_LIQUIDO_FACTURA`                        ,
                              `NRO_FACTURA_ABONO_FACTURA`                    ,
                              `SERIE_FACTURA_ABONO_FACTURA`                  ,
                              `TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA`          ,
                              `TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA`          ,
                              `DOCUMENTO_FACTURA`                            ,
                              `COMENTARIOS_FACTURA`                          ,
                              `CONTADOR_LINEAS_FACTURA`                      ,
															`ESCREARARTICULOS_FACTURA`										 ,	
                              `ESDESCRIPCIONES_AMP_FACTURA`	                 ,
                              `ESFECHADEENTREGA_FACTURA`	                   ,
                              `INSTANTEMODIF`                                ,
                              `INSTANTEALTA`                                 ,
                              `USUARIOALTA`                                  ,                        
                              `USUARIOMODIF`
                             )                                 
                     SELECT `contadorped`                                    ,
                            `pidseriefacturaabono`                           ,
                            `@pFecha`                                        ,
                            `CODIGO_EMPRESA_FACTURA`                         ,
                            `RAZONSOCIAL_EMPRESA_FACTURA`                    ,
                            `NIF_EMPRESA_FACTURA`                            ,
                            `MOVIL_EMPRESA_FACTURA`                          ,
                            `EMAIL_EMPRESA_FACTURA`                          ,
                            `DIRECCION1_EMPRESA_FACTURA`                     ,
                            `DIRECCION2_EMPRESA_FACTURA`                     ,
                            `POBLACION_EMPRESA_FACTURA`                      ,
                            `PROVINCIA_EMPRESA_FACTURA`                      ,
                            `PAIS_EMPRESA_FACTURA`                           ,
                            `CPOSTAL_EMPRESA_FACTURA`                        ,
                            `ESRETENCIONES_EMPRESA_FACTURA`                  ,
                            `GRUPO_ZONA_IVA_EMPRESA_FACTURA`                 ,
                            `ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA`      ,
                            `CODIGO_CLIENTE_FACTURA`                         ,
                            `RAZONSOCIAL_CLIENTE_FACTURA`                    ,
                            `NIF_CLIENTE_FACTURA`                            ,
                            `MOVIL_CLIENTE_FACTURA`                          ,
                            `EMAIL_CLIENTE_FACTURA`                          ,
                            `DIRECCION1_CLIENTE_FACTURA`                     ,
                            `DIRECCION2_CLIENTE_FACTURA`                     ,
                            `POBLACION_CLIENTE_FACTURA`                      ,
                            `PROVINCIA_CLIENTE_FACTURA`                      ,
                            `CPOSTAL_CLIENTE_FACTURA`                        ,
                            `PAIS_CLIENTE_FACTURA`                           ,
                            `ESIVA_RECARGO_CLIENTE_FACTURA`                  ,
                            `ESIVA_EXENTO_CLIENTE_FACTURA`                   ,
                            `ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA`      ,
                            `ESRETENCIONES_CLIENTE_FACTURA`                  ,
                            `TARIFA_ARTICULO_CLIENTE_FACTURA`                ,
                            `ESIMP_INCL_TARIFA_CLIENTE_FACTURA`              ,
                            `ESINTRACOMUNITARIO_CLIENTE_FACTURA`             ,
                            `ESIRPF_IMP_INCL_ZONA_IVA_FACTURA`               ,
                            `ESAPLICA_RE_ZONA_IVA_FACTURA`                   ,
                            `ESIVAAGRICOLA_ZONA_IVA_FACTURA`                 ,
                            `PALABRA_REPORTS_ZONA_IVA_FACTURA`               ,
                            `CODIGO_IVA_FACTURA`                             ,
                            `ESVENTA_ACTIVO_FIJO_FACTURA`                    ,
                            `PORCEN_IVAN_FACTURA`                            ,
                            `TOTAL_IVAN_FACTURA`                             ,
                            `PORCEN_REN_FACTURA`                             ,
                            `TOTAL_REN_FACTURA`                              ,
                            `TOTAL_BASEI_IVAN_FACTURA`                       ,
                            `PORCEN_IVAR_FACTURA`                            ,
                            `TOTAL_IVAR_FACTURA`                             ,
                            `PORCEN_RER_FACTURA`                             ,
                            `TOTAL_RER_FACTURA`                              ,
                            `TOTAL_BASEI_IVAR_FACTURA`                       ,
                            `PORCEN_IVAS_FACTURA`                            ,
                            `TOTAL_IVAS_FACTURA`                             ,
                            `PORCEN_RES_FACTURA`                             ,
                            `TOTAL_RES_FACTURA`                              ,
                            `TOTAL_BASEI_IVAS_FACTURA`                       ,
                            `PORCEN_IVAE_FACTURA`                            ,
                            `TOTAL_IVAE_FACTURA`                             ,
                            `PORCEN_REE_FACTURA`                             ,
                            `TOTAL_REE_FACTURA`                              ,
                            `TOTAL_BASEI_IVAE_FACTURA`                       ,
                            `TOTAL_BASES_FACTURA`                            ,
                            `TOTAL_IMPUESTOS_FACTURA`                        ,
                            `FORMA_PAGO_FACTURA`                             ,
                            `PORCEN_RETENCION_FACTURA`                       ,
                            `TOTAL_RETENCION_FACTURA`                        ,
                            `TOTAL_LIQUIDO_FACTURA`                          ,
                            `NRO_FACTURA_ABONO_FACTURA`                      ,
                            `SERIE_FACTURA_ABONO_FACTURA`                    ,
                            `TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA`            ,
                            `TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA`            ,
                            `DOCUMENTO_FACTURA`                              ,
                            `COMENTARIOS_FACTURA`                            ,
                            `CONTADOR_LINEAS_FACTURA`                        ,
														`ESCREARARTICULOS_FACTURA`											 ,	
                            `ESDESCRIPCIONES_AMP_FACTURA`	                   ,
                            `ESFECHADEENTREGA_FACTURA`	                     , 
                            `pINSTANTEMODIF`                                 ,
                            `pINSTANTEMODIF`                                 ,
                            `pUSUARIO`                                       ,
                            `pUSUARIO`
                       FROM `fza_facturas` 
                      WHERE `NRO_FACTURA`   = `pidnumfactura` 
                        AND `SERIE_FACTURA` = `pidseriefactura`;  
  INSERT INTO `fza_facturas_lineas` (`NRO_FACTURA_LINEA`                      ,
                                     `SERIE_FACTURA_LINEA`                    ,
                                     `LINEA_FACTURA_LINEA`                    ,
                                     `CODIGO_ARTICULO_FACTURA_LINEA`          ,
                                     `TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA`   ,
                                     `ESIMP_INCL_TARIFA_FACTURA_LINEA`        ,
                                     `TIPOIVA_ARTICULO_FACTURA_LINEA`         ,
                                     `DESCRIPCION_ARTICULO_FACTURA_LINEA`     ,
                                     `CANTIDAD_FACTURA_LINEA`                 ,
                                     `PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA`,
                                     `PORCEN_IVA_FACTURA_LINEA`               ,
                                     `PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA`,
                                     `TOTAL_FACTURA_LINEA`                    ,
                                     `INSTANTEMODIF`                          ,
                                     `INSTANTEALTA`                           ,
                                     `USUARIOALTA`                            ,                        
                                     `USUARIOMODIF`                  
                                      ) 
                              SELECT `contadorped`                             ,
                                     `pidseriefacturaabono`                    ,
                                     `LINEA_FACTURA_LINEA`                     ,
                                     `CODIGO_ARTICULO_FACTURA_LINEA`           ,
                                     `TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA`    ,
                                     `ESIMP_INCL_TARIFA_FACTURA_LINEA`         ,
                                     `TIPOIVA_ARTICULO_FACTURA_LINEA`          ,
                                     `DESCRIPCION_ARTICULO_FACTURA_LINEA`      ,
                                     (`CANTIDAD_FACTURA_LINEA`*-1)             ,
                                     `PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA` ,
                                     `PORCEN_IVA_FACTURA_LINEA`                ,
                                     `PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA` ,
                                     (`TOTAL_FACTURA_LINEA` * -1)              ,
                                     `pINSTANTEMODIF`                          ,
                                     `pINSTANTEMODIF`                          ,
                                     `pUSUARIO`                                ,
                                     `pUSUARIO`
                               FROM  `fza_facturas_lineas` 
                              WHERE  `SERIE_FACTURA_LINEA`  = `pidseriefactura`
                                AND  `NRO_FACTURA_LINEA`    = `pidnumfactura`  ;                 
   CALL `PRC_CALCULAR_FACTURA_NETOS`(`pidseriefacturaabono`, `contadorped`);
   COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_CREAR_FACTURA_DUPLICADA
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_CREAR_FACTURA_DUPLICADA`;
delimiter ;;
CREATE PROCEDURE `PRC_CREAR_FACTURA_DUPLICADA`(IN `pidseriefactura`      varchar(200),
                                        IN `pidnumfactura`        varchar(200),
                                        IN `pidseriefacturaabono` varchar(200),
                                        IN `pfechafacturaabono`   date,
                                        IN `pUSUARIO`             varchar(100),
                                        IN `pINSTANTEMODIF`       TIMESTAMP,
                                       OUT `pidnumfacturaabono`   varchar(200))
BEGIN
   DECLARE `contadorped` varchar(200);
   DECLARE `pfecha` date;
   START TRANSACTION;
   CALL PRC_GET_NEXT_CONT_FACT_SERIE(`pidseriefacturaabono`, 
                                     'FC', 
                                     `contadorped`);
   SET pFecha = (SELECT DATE_FORMAT(`pfechafacturaabono`, '%Y-%m-%d'));
   SET pidnumfacturaabono = contadorped;
   INSERT INTO fza_facturas (`NRO_FACTURA`                                  ,
                             `SERIE_FACTURA`                                ,
                             `FECHA_FACTURA`                                ,
                             `CODIGO_EMPRESA_FACTURA`                       ,
                             `RAZONSOCIAL_EMPRESA_FACTURA`                  ,
                             `NIF_EMPRESA_FACTURA`                          ,
                             `MOVIL_EMPRESA_FACTURA`                        ,
                             `EMAIL_EMPRESA_FACTURA`                        ,
                             `DIRECCION1_EMPRESA_FACTURA`                   ,
                             `DIRECCION2_EMPRESA_FACTURA`                   ,
                             `POBLACION_EMPRESA_FACTURA`                    ,
                             `PROVINCIA_EMPRESA_FACTURA`                    ,
                             `PAIS_EMPRESA_FACTURA`                         ,
                             `CPOSTAL_EMPRESA_FACTURA`                      ,
                             `ESRETENCIONES_EMPRESA_FACTURA`                ,
                             `GRUPO_ZONA_IVA_EMPRESA_FACTURA`               ,
                             `ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA`    ,
                             `CODIGO_CLIENTE_FACTURA`                       ,
                             `RAZONSOCIAL_CLIENTE_FACTURA`                  ,
                             `NIF_CLIENTE_FACTURA`                          ,
                             `MOVIL_CLIENTE_FACTURA`                        ,
                             `EMAIL_CLIENTE_FACTURA`                        ,
                             `DIRECCION1_CLIENTE_FACTURA`                   ,
                             `DIRECCION2_CLIENTE_FACTURA`                   ,
                             `POBLACION_CLIENTE_FACTURA`                    ,
                             `PROVINCIA_CLIENTE_FACTURA`                    ,
                             `CPOSTAL_CLIENTE_FACTURA`                      ,
                             `PAIS_CLIENTE_FACTURA`                         ,
                             `ESIVA_RECARGO_CLIENTE_FACTURA`                ,
                             `ESIVA_EXENTO_CLIENTE_FACTURA`                 ,
                             `ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA`    ,
                             `ESRETENCIONES_CLIENTE_FACTURA`                ,
                             `TARIFA_ARTICULO_CLIENTE_FACTURA`              ,
                             `ESIMP_INCL_TARIFA_CLIENTE_FACTURA`            ,
                             `ESINTRACOMUNITARIO_CLIENTE_FACTURA`           ,
                             `ESIRPF_IMP_INCL_ZONA_IVA_FACTURA`             ,
                             `ESAPLICA_RE_ZONA_IVA_FACTURA`                 ,
                             `ESIVAAGRICOLA_ZONA_IVA_FACTURA`               ,
                             `PALABRA_REPORTS_ZONA_IVA_FACTURA`             ,
                             `CODIGO_IVA_FACTURA`                           ,
                             `ESVENTA_ACTIVO_FIJO_FACTURA`                  ,
                             `PORCEN_IVAN_FACTURA`                          ,
                             `TOTAL_IVAN_FACTURA`                           ,
                             `PORCEN_REN_FACTURA`                           ,
                             `TOTAL_REN_FACTURA`                            ,
                             `TOTAL_BASEI_IVAN_FACTURA`                     ,
                             `PORCEN_IVAR_FACTURA`                          ,
                             `TOTAL_IVAR_FACTURA`                           ,
                             `PORCEN_RER_FACTURA`                           ,
                             `TOTAL_RER_FACTURA`                            ,
                             `TOTAL_BASEI_IVAR_FACTURA`                     ,
                             `PORCEN_IVAS_FACTURA`                          ,
                             `TOTAL_IVAS_FACTURA`                           ,
                             `PORCEN_RES_FACTURA`                           ,
                             `TOTAL_RES_FACTURA`                            ,
                             `TOTAL_BASEI_IVAS_FACTURA`                     ,
                             `PORCEN_IVAE_FACTURA`                          ,
                             `TOTAL_IVAE_FACTURA`                           ,
                             `PORCEN_REE_FACTURA`                           ,
                             `TOTAL_REE_FACTURA`                            ,
                             `TOTAL_BASEI_IVAE_FACTURA`                     ,
                             `TOTAL_BASES_FACTURA`                          ,
                             `TOTAL_IMPUESTOS_FACTURA`                      ,
                             `FORMA_PAGO_FACTURA`                           ,
                             `PORCEN_RETENCION_FACTURA`                     ,
                             `TOTAL_RETENCION_FACTURA`                      ,
                             `TOTAL_LIQUIDO_FACTURA`                        ,
                             `NRO_FACTURA_ABONO_FACTURA`                    ,
                             `SERIE_FACTURA_ABONO_FACTURA`                  ,
                             `TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA`          ,
                             `TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA`          ,
                             `DOCUMENTO_FACTURA`                            ,
                             `COMENTARIOS_FACTURA`                          ,
                             `CONTADOR_LINEAS_FACTURA`                      ,
														 `ESCREARARTICULOS_FACTURA`											,	
                             `ESDESCRIPCIONES_AMP_FACTURA`	                ,
                             `ESFECHADEENTREGA_FACTURA`	                    ,
                             `INSTANTEMODIF`                                ,
                             `INSTANTEALTA`                                 ,
                             `USUARIOALTA`                                  ,
                             `USUARIOMODIF`
                        )
                          SELECT `contadorped`                                ,
                                 `pidseriefacturaabono`                       ,
                                 `pFecha`                                     ,
                                 `CODIGO_EMPRESA_FACTURA`                     ,
                                 `RAZONSOCIAL_EMPRESA_FACTURA`                ,
                                 `NIF_EMPRESA_FACTURA`                        ,
                                 `MOVIL_EMPRESA_FACTURA`                      ,
                                 `EMAIL_EMPRESA_FACTURA`                      ,
                                 `DIRECCION1_EMPRESA_FACTURA`                 ,
                                 `DIRECCION2_EMPRESA_FACTURA`                 ,
                                 `POBLACION_EMPRESA_FACTURA`                  ,
                                 `PROVINCIA_EMPRESA_FACTURA`                  ,
                                 `PAIS_EMPRESA_FACTURA`                       ,
                                 `CPOSTAL_EMPRESA_FACTURA`                    ,
                                 `ESRETENCIONES_EMPRESA_FACTURA`              ,
                                 `GRUPO_ZONA_IVA_EMPRESA_FACTURA`             ,
                                 `ESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA`  ,
                                 `CODIGO_CLIENTE_FACTURA`                     ,
                                 `RAZONSOCIAL_CLIENTE_FACTURA`                ,
                                 `NIF_CLIENTE_FACTURA`                        ,
                                 `MOVIL_CLIENTE_FACTURA`                      ,
                                 `EMAIL_CLIENTE_FACTURA`                      ,
                                 `DIRECCION1_CLIENTE_FACTURA`                 ,
                                 `DIRECCION2_CLIENTE_FACTURA`                 ,
                                 `POBLACION_CLIENTE_FACTURA`                  ,
                                 `PROVINCIA_CLIENTE_FACTURA`                  ,
                                 `CPOSTAL_CLIENTE_FACTURA`                    ,
                                 `PAIS_CLIENTE_FACTURA`                       ,
                                 `ESIVA_RECARGO_CLIENTE_FACTURA`              ,
                                 `ESIVA_EXENTO_CLIENTE_FACTURA`               ,
                                 `ESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA`  ,
                                 `ESRETENCIONES_CLIENTE_FACTURA`              ,
                                 `TARIFA_ARTICULO_CLIENTE_FACTURA`            ,
                                 `ESIMP_INCL_TARIFA_CLIENTE_FACTURA`          ,
                                 `ESINTRACOMUNITARIO_CLIENTE_FACTURA`         ,
                                 `ESIRPF_IMP_INCL_ZONA_IVA_FACTURA`           ,
                                 `ESAPLICA_RE_ZONA_IVA_FACTURA`               ,
                                 `ESIVAAGRICOLA_ZONA_IVA_FACTURA`             ,
                                 `PALABRA_REPORTS_ZONA_IVA_FACTURA`           ,
                                 `CODIGO_IVA_FACTURA`                         ,
                                 `ESVENTA_ACTIVO_FIJO_FACTURA`                ,
                                 `PORCEN_IVAN_FACTURA`                        ,
                                 `TOTAL_IVAN_FACTURA`                         ,
                                 `PORCEN_REN_FACTURA`                         ,
                                 `TOTAL_REN_FACTURA`                          ,
                                 `TOTAL_BASEI_IVAN_FACTURA`                   ,
                                 `PORCEN_IVAR_FACTURA`                        ,
                                 `TOTAL_IVAR_FACTURA`                         ,
                                 `PORCEN_RER_FACTURA`                         ,
                                 `TOTAL_RER_FACTURA`                          ,
                                 `TOTAL_BASEI_IVAR_FACTURA`                   ,
                                 `PORCEN_IVAS_FACTURA`                        ,
                                 `TOTAL_IVAS_FACTURA`                         ,
                                 `PORCEN_RES_FACTURA`                         ,
                                 `TOTAL_RES_FACTURA`                          ,
                                 `TOTAL_BASEI_IVAS_FACTURA`                   ,
                                 `PORCEN_IVAE_FACTURA`                        ,
                                 `TOTAL_IVAE_FACTURA`                         ,
                                 `PORCEN_REE_FACTURA`                         ,
                                 `TOTAL_REE_FACTURA`                          ,
                                 `TOTAL_BASEI_IVAE_FACTURA`                   ,
                                 `TOTAL_BASES_FACTURA`                        ,
                                 `TOTAL_IMPUESTOS_FACTURA`                    ,
                                 `FORMA_PAGO_FACTURA`                         ,
                                 `PORCEN_RETENCION_FACTURA`                   ,
                                 `TOTAL_RETENCION_FACTURA`                    ,
                                 `TOTAL_LIQUIDO_FACTURA`                      ,
                                 `NRO_FACTURA_ABONO_FACTURA`                  ,
                                 `SERIE_FACTURA_ABONO_FACTURA`                ,
                                 `TEXTO_LEGAL_FACTURA_CLIENTE_FACTURA`        ,
                                 `TEXTO_LEGAL_FACTURA_EMPRESA_FACTURA`        ,
                                 `DOCUMENTO_FACTURA`                          ,
                                 `COMENTARIOS_FACTURA`                        ,
                                 `CONTADOR_LINEAS_FACTURA`                    ,
																 `ESCREARARTICULOS_FACTURA`										,	
                                 `ESDESCRIPCIONES_AMP_FACTURA`	              ,
                                 `ESFECHADEENTREGA_FACTURA`	                  ,
                                 `pINSTANTEMODIF`                             ,
                                 `pINSTANTEMODIF`                             ,
                                 `pUSUARIO`                                   ,
                                 `pUSUARIO`
                            FROM `fza_facturas` 
                           WHERE `NRO_FACTURA`   = `pidnumfactura` 
                             AND `SERIE_FACTURA` = `pidseriefactura`;  
  INSERT INTO fza_facturas_lineas (`NRO_FACTURA_LINEA`                        ,
                                   `SERIE_FACTURA_LINEA`                      ,
                                   `LINEA_FACTURA_LINEA`                      ,
                                   `CODIGO_ARTICULO_FACTURA_LINEA`            ,
                                   `TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA`     ,
                                   `ESIMP_INCL_TARIFA_FACTURA_LINEA`          ,
                                   `TIPOIVA_ARTICULO_FACTURA_LINEA`           ,
                                   `DESCRIPCION_ARTICULO_FACTURA_LINEA`       ,
                                   `CANTIDAD_FACTURA_LINEA`                   ,
                                   `PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA`  ,
                                   `PORCEN_IVA_FACTURA_LINEA`                 ,
                                   `PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA`  ,
                                   `TOTAL_FACTURA_LINEA`                      ,
                                   `INSTANTEMODIF`                            ,
                                   `INSTANTEALTA`                             ,
                                   `USUARIOALTA`                              ,
                                   `USUARIOMODIF`
                                  )
                           SELECT `contadorped`                               ,
                                  `pidseriefacturaabono`                      ,
                                  `LINEA_FACTURA_LINEA`                       ,
                                  `CODIGO_ARTICULO_FACTURA_LINEA`             ,
                                  `TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA`      ,
                                  `ESIMP_INCL_TARIFA_FACTURA_LINEA`           ,
                                  `TIPOIVA_ARTICULO_FACTURA_LINEA`            ,
                                  `DESCRIPCION_ARTICULO_FACTURA_LINEA`        ,
                                  `CANTIDAD_FACTURA_LINEA`                    ,
                                  `PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA`   ,
                                  `PORCEN_IVA_FACTURA_LINEA`                  ,
                                  `PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA`   ,
                                  `TOTAL_FACTURA_LINEA`                       ,
                                  `pINSTANTEMODIF`                            ,
                                  `pINSTANTEMODIF`                            ,
                                  `pUSUARIO`                                  ,
                                  `pUSUARIO`
                             FROM `fza_facturas_lineas`
                            WHERE `SERIE_FACTURA_LINEA`      = `pidseriefactura`
                              AND `NRO_FACTURA_LINEA`        = `pidnumfactura` ;
    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_CREAR_METADATOS
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_CREAR_METADATOS`;
delimiter ;;
CREATE PROCEDURE `PRC_CREAR_METADATOS`(IN `pDATABASENAME` varchar(100))
BEGIN
START TRANSACTION;
  DROP TABLE IF EXISTS `fza_metadatos`;
  CREATE TABLE `fza_metadatos`  (
    `CODIGO_METADATO` int(20) NOT NULL AUTO_INCREMENT,
    `NOMBRE_METADATO` varchar(100) CHARACTER SET utf8mb4 
                               COLLATE utf8mb4_spanish_ci NOT NULL,
    `PARENT_METADATO` varchar(20) CHARACTER SET utf8mb4 
                               COLLATE utf8mb4_spanish_ci NOT NULL,
    PRIMARY KEY (`CODIGO_METADATO`) USING BTREE
  ) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 
             COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;
  INSERT INTO `fza_metadatos` (`PARENT_METADATO`, `NOMBRE_METADATO`)
  SELECT '1' AS `PARENT_METADATO`,
         `table_name` as `NOMBRE_METADATO`
    FROM `information_schema`.`TABLES` 
   WHERE `table_schema` = `pDATABASENAME`  
     AND `table_type` = 'BASE TABLE';
  INSERT INTO `fza_metadatos` (`PARENT_METADATO`, `NOMBRE_METADATO`)    
  SELECT '2' AS `PARENT_METADATO`,
         `table_name` as `NOMBRE_METADATO`
    FROM `information_schema`.`TABLES` 
   WHERE `table_schema` = `pDATABASENAME`
     AND `table_type` = 'VIEW';
   INSERT INTO `fza_metadatos` (`PARENT_METADATO`, `NOMBRE_METADATO`) 
   SELECT '3' AS `PARENT_METADATO`,
          `SPECIFIC_NAME` AS `NOMBRE_METADATO`
     FROM `information_schema`.`ROUTINES` 
    WHERE `ROUTINE_SCHEMA` = pDATABASENAME  
      AND `ROUTINE_TYPE` = 'PROCEDURE';     
   
   INSERT INTO `fza_metadatos` (`CODIGO_METADATO`, 
                                `PARENT_METADATO`, 
                                `NOMBRE_METADATO`) 
                        VALUES (1, '-1','Tablas');  
   INSERT INTO `fza_metadatos` (`CODIGO_METADATO`, 
                                `PARENT_METADATO`, 
                                `NOMBRE_METADATO`) 
                        VALUES (2, '-1','Vistas');
   INSERT INTO `fza_metadatos` (`CODIGO_METADATO`, 
                                `PARENT_METADATO`, 
                                `NOMBRE_METADATO`) 
                        VALUES (3, '-1','Procedimientos');
COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_CREAR_RECIBOS_FACTURA
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_CREAR_RECIBOS_FACTURA`;
delimiter ;;
CREATE PROCEDURE `PRC_CREAR_RECIBOS_FACTURA`(IN `pSERIE_FACTURA` varchar(8),
	                                        IN `pNRO_FACTURA` varchar(12),
																					IN `pUSUARIO`             varchar(100),
                                          IN `pINSTANTEMODIF`       TIMESTAMP)
BEGIN
  DECLARE pCODIGO_FORMAPAGO VARCHAR(10);
	DECLARE pFORMA_PAGO_FACTURA VARCHAR(100);
	DECLARE pN_PLAZOS int(10); 
	DECLARE I int(10);
	DECLARE pDIAS_ENTRE_PLAZOS int(10);
	DECLARE pPORCEN_ANTICIPO decimal(5,2);
	DECLARE pCODIGO_CLIENTE  varchar(20);
	DECLARE pIBAN varchar(34);
	DECLARE pRAZONSOCIAL_CLIENTE varchar(200);
	DECLARE pDIRECCION1_CLIENTE  varchar(200);
	DECLARE pPOBLACION_CLIENTE  varchar(200);
	DECLARE pPOBLACION_EMPRESA varchar(200);
	DECLARE pPROVINCIA_CLIENTE  varchar(200);
	DECLARE pCPOSTAL_CLIENTE  varchar(15);
	DECLARE pIMPORTE_LETRA  varchar(150);
	DECLARE pTOTAL_LIQUIDO_FACTURA decimal(18,6);
	DECLARE pIMPORTE_RECIBO decimal(18,6);
	DECLARE pIMPORTE_RESTO decimal(18,6);
	DECLARE pIMPORTE_ANTICIPO decimal(18,6);
	DECLARE pFECHA_VENCIMIENTO date;
	DECLARE pFECHA_FACTURA date;
	DECLARE finished INTEGER DEFAULT 0;
	-- DECLARE pTRATAMIENTO_LINEA VARCHAR(100);
  -- DECLARE pTRATAMIENTOS varchar(1000) DEFAULT "";
  /* DECLARE curTratamientos 
        CURSOR FOR 
            SELECT DESCRIPCION_ARTICULO_LINEA 
						  FROM suboc_facturas_lineas 
						 WHERE SERIE_FACTURA_LINEA = pSERIE_FACTURA 
						   AND NRO_FACTURA_LINEA = pNRO_FACTURA;
  DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1; */
	START TRANSACTION;
	DELETE FROM fza_recibos 
   WHERE NRO_FACTURA_RECIBO = pNRO_FACTURA
	   AND SERIE_FACTURA_RECIBO = pSERIE_FACTURA;	
  /* OPEN curTratamientos;
  getTratamientos: LOOP
		FETCH curTratamientos INTO pTRATAMIENTO_LINEA;
		IF finished = 1 THEN 
				LEAVE getTratamientos;
		END IF;
		-- build email list
		SET pTRATAMIENTOS = CONCAT(pTRATAMIENTOS,'\n',pTRATAMIENTO_LINEA);
  END LOOP getTratamientos;
	*/
	SELECT FORMA_PAGO_FACTURA, 
				 CODIGO_CLIENTE_FACTURA,
				 TOTAL_LIQUIDO_FACTURA,
				 RAZONSOCIAL_CLIENTE_FACTURA,
				 DIRECCION1_CLIENTE_FACTURA,
				 POBLACION_CLIENTE_FACTURA,
				 PROVINCIA_CLIENTE_FACTURA,
				 CPOSTAL_CLIENTE_FACTURA,
				 FECHA_FACTURA,
				 POBLACION_EMPRESA_FACTURA
		INTO pFORMA_PAGO_FACTURA,
				 pCODIGO_CLIENTE,
				 pTOTAL_LIQUIDO_FACTURA,
				 pRAZONSOCIAL_CLIENTE,
				 pDIRECCION1_CLIENTE,
				 pPOBLACION_CLIENTE,
				 pPROVINCIA_CLIENTE,
				 pCPOSTAL_CLIENTE,
				 pFECHA_FACTURA,
				 pPOBLACION_EMPRESA
		FROM fza_facturas
   WHERE SERIE_FACTURA = pSERIE_FACTURA
	   AND NRO_FACTURA = pNRO_FACTURA;
		 
		 SELECT IBAN_CLIENTE 
		  INTO pIBAN
		 FROM fza_clientes
		 WHERE CODIGO_CLIENTE = pCODIGO_CLIENTE;
		 
		 IF( EXISTS(
							 SELECT *
							 FROM fza_formapago
							 WHERE CODIGO_FORMAPAGO =  pFORMA_PAGO_FACTURA) ) THEN
		BEGIN
			SELECT CODIGO_FORMAPAGO, 
			       N_PLAZOS_FORMAPAGO, 
						 N_DIAS_ENTRE_PLAZOS_FORMAPAGO, 
						 PORCEN_ANTICIPO_FORMAPAGO 
				INTO pCODIGO_FORMAPAGO,
				     pN_PLAZOS, 
						 pDIAS_ENTRE_PLAZOS,  
						 pPORCEN_ANTICIPO
				FROM fza_formapago
				WHERE CODIGO_FORMAPAGO = pFORMA_PAGO_FACTURA;
				
			IF ((pPORCEN_ANTICIPO = 100)) THEN
			BEGIN
				CALL PRC_GET_NUMEROS_A_LETRAS(pTOTAL_LIQUIDO_FACTURA, pIMPORTE_LETRA);
				INSERT INTO  fza_recibos 
				       (NRO_FACTURA_RECIBO					        ,
								SERIE_FACTURA_RECIBO                ,
								NRO_PLAZO_RECIBO                    ,
								FORMA_PAGO_ORIGEN_RECIBO            ,
								FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO,								
								EUROS_RECIBO                        ,
								STADO_RECIBO                       ,
								FECHA_EXPEDICION_RECIBO             ,
								FECHA_VENCIMIENTO_RECIBO            ,
								IBAN_CLIENTE_RECIBO                 ,
								FECHA_PAGO_RECIBO                   ,
								LOCALIDAD_EXPEDICION_RECIBO         ,
								CODIGO_CLIENTE_RECIBO               ,
								RAZONSOCIAL_CLIENTE_RECIBO          ,
								DIRECCION1_CLIENTE_RECIBO           ,
								POBLACION_CLIENTE_RECIBO            ,
								PROVINCIA_CLIENTE_RECIBO            ,
								CPOSTAL_CLIENTE_RECIBO              ,
								IMPORTE_LETRA_RECIBO                ,
								INSTANTEALTA,
								USUARIOALTA,
								USUARIOMODIF	)
				VALUES( pNRO_FACTURA                        ,
				        pSERIE_FACTURA                      ,
								1                                   ,
								pCODIGO_FORMAPAGO                   ,
								pFORMA_PAGO_FACTURA                 ,
								pTOTAL_LIQUIDO_FACTURA              ,
								'Pagado'                            ,
								pFECHA_FACTURA                      ,
								pFECHA_FACTURA                      ,
								pIBAN                               ,
								pFECHA_FACTURA                      ,
								pPOBLACION_EMPRESA                  ,
								pCODIGO_CLIENTE                     ,
								pRAZONSOCIAL_CLIENTE                ,
								pDIRECCION1_CLIENTE                 ,
								pPOBLACION_CLIENTE                  ,
								pPROVINCIA_CLIENTE                  ,
								pCPOSTAL_CLIENTE                    ,
								pIMPORTE_LETRA                      ,
								pINSTANTEMODIF                      ,
								pUSUARIO                            ,
								pUSUARIO
							);
			END;
			ELSE 
			  IF (pN_PLAZOS >= 1) THEN
				BEGIN
			    SET I = 1;
					WHILE (I<=pN_PLAZOS) DO
					BEGIN
					      IF I = 1 THEN 
								BEGIN
								  SET pFECHA_VENCIMIENTO  = pFECHA_FACTURA;
								  SET pIMPORTE_ANTICIPO = pTOTAL_LIQUIDO_FACTURA * (pPORCEN_ANTICIPO/100);
									SET pIMPORTE_RESTO = (pTOTAL_LIQUIDO_FACTURA - pIMPORTE_ANTICIPO);
								END;
								END IF;									
								IF ((I= 1) AND (pPORCEN_ANTICIPO > 0)) THEN
									SET pIMPORTE_RECIBO = pIMPORTE_ANTICIPO;
								ELSE
								  IF pN_PLAZOS > 1 THEN 
									  SET pIMPORTE_RECIBO = pIMPORTE_RESTO / (pN_PLAZOS - 1);
									ELSE
										SET pIMPORTE_RECIBO = pIMPORTE_RESTO;
									END IF;
								END IF;
							  CALL PRC_GET_NUMEROS_A_LETRAS(pIMPORTE_RECIBO, pIMPORTE_LETRA);	
								IF (I <> 1) THEN
								  SET pFECHA_VENCIMIENTO = ADDDATE(pFECHA_VENCIMIENTO, INTERVAL pDIAS_ENTRE_PLAZOS DAY);
								END IF;
								INSERT INTO  fza_recibos 
												 (NRO_FACTURA_RECIBO					        ,
													SERIE_FACTURA_RECIBO                ,
													NRO_PLAZO_RECIBO                    ,
													FORMA_PAGO_ORIGEN_RECIBO            ,													
													FORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO,
													EUROS_RECIBO                        ,
													STADO_RECIBO                       ,
													FECHA_EXPEDICION_RECIBO             ,
													FECHA_VENCIMIENTO_RECIBO            ,
													IBAN_CLIENTE_RECIBO                 ,
													FECHA_PAGO_RECIBO                   ,
													LOCALIDAD_EXPEDICION_RECIBO         ,
													CODIGO_CLIENTE_RECIBO               ,
													RAZONSOCIAL_CLIENTE_RECIBO          ,
													DIRECCION1_CLIENTE_RECIBO           ,
													POBLACION_CLIENTE_RECIBO            ,
													PROVINCIA_CLIENTE_RECIBO            ,
													CPOSTAL_CLIENTE_RECIBO              ,
													IMPORTE_LETRA_RECIBO                ,	
													INSTANTEALTA                        ,
          								USUARIOALTA                         ,
					          			USUARIOMODIF	)
								VALUES(   pNRO_FACTURA,
													pSERIE_FACTURA,
													I,
													pCODIGO_FORMAPAGO,										
													pFORMA_PAGO_FACTURA,
													pIMPORTE_RECIBO,
													'Emitido',
													pFECHA_FACTURA,
													pFECHA_VENCIMIENTO,
													pIBAN,
													NULL,
													pPOBLACION_EMPRESA,
													pCODIGO_CLIENTE,
													pRAZONSOCIAL_CLIENTE,
													pDIRECCION1_CLIENTE,
													pPOBLACION_CLIENTE,
													pPROVINCIA_CLIENTE,
													pCPOSTAL_CLIENTE,
													pIMPORTE_LETRA,
													pINSTANTEMODIF,
													pUSUARIO,
													PUSUARIO
												);
								SET I = I + 1;
					END;
					END WHILE;
				END;
				END IF;
			END IF;
		END;
		END IF;
		COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_FNC_GET_NEXT_LINEA_FACTURA
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_FNC_GET_NEXT_LINEA_FACTURA`;
delimiter ;;
CREATE PROCEDURE `PRC_FNC_GET_NEXT_LINEA_FACTURA`(IN  `pnumfac` VARCHAR(8), 
                                                   IN  `pserie`  VARCHAR(8), 
                                                   OUT `presul`  VARCHAR(3))
BEGIN
  DECLARE `pnextnum` varchar(3);
  START TRANSACTION;
  SET `pnextnum` = ( SELECT lpad(((`CONTADOR_LINEAS_FACTURA`)),3,'0' )
                       FROM `fza_facturas`
                      WHERE `NRO_FACTURA`   = `pnumfac`
                        AND `SERIE_FACTURA` = `pserie`);
  IF (`pnextnum` IS NULL) THEN
    SET `presul` = '010';
  ELSE
    SET `presul` = `pnextnum`;
  END IF;
    UPDATE `fza_facturas`
       SET `CONTADOR_LINEAS_FACTURA` = LPAD(((`presul`)+10),3,'0' )
     WHERE `SERIE_FACTURA` = `pserie`
       AND `NRO_FACTURA` = `pnumfac`;
  COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_FNC_GET_NEXT_LINEA_PRESUPUESTO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_FNC_GET_NEXT_LINEA_PRESUPUESTO`;
delimiter ;;
CREATE PROCEDURE `PRC_FNC_GET_NEXT_LINEA_PRESUPUESTO`(`pnumfac` VARCHAR(8), `pserie` VARCHAR(8), `presul` VARCHAR(3))
BEGIN
DECLARE pnextnum varchar(3);
SET pnextnum = (select lpad((max(LINEA_PRESUPUESTO_LINEA)+10),3,'0' )
                   from suboc_presupuestos_lineas
                  where NRO_PRESUPUESTO = pnumfac
                    AND SERIE_PRESUPUESTO = pserie);
IF (pnextnum IS NULL) THEN
   SET presul = '010';
ELSE
   SET presul = pnextnum;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_FNC_GET_NEXT_NRO_DOC
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_FNC_GET_NEXT_NRO_DOC`;
delimiter ;;
CREATE PROCEDURE `PRC_FNC_GET_NEXT_NRO_DOC`(IN  `ptipodoc` VARCHAR(8), 
                                             OUT `presul`   BIGINT)
BEGIN
DECLARE `ppresul` BIGINT;
UPDATE `fza_contadores`
   SET `CONTADOR_CONTADOR` = CONTADOR_CONTADOR + 1
 WHERE `SERIE_CONTADOR` = '-'
   AND `TIPODOC_CONTADOR` = `pTipoDoc`;
  SET `ppresul` = (SELECT `CONTADOR_CONTADOR` - 1
                     FROM `fza_contadores`
                    WHERE `SERIE_CONTADOR` = '-'
                      AND `DEFAULT_CONTADOR` = 'S'
                      AND `TIPODOC_CONTADOR` = `pTipoDoc` 
                    LIMIT 1);
IF (`ppresul` IS NULL) THEN
   SET `ppresul` = 0;
END IF;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_FNC_GET_SERIE_TIPODOC
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_FNC_GET_SERIE_TIPODOC`;
delimiter ;;
CREATE PROCEDURE `PRC_FNC_GET_SERIE_TIPODOC`(IN `ptipodoc` VARCHAR(8), 
                                                OUT `presul` VARCHAR(3))
BEGIN


DECLARE pserie varchar(3);
SET pserie = (select SERIE_CONTADOR
FROM fza_contadores
  where DEFAULT_CONTADOR = 'S'
and TIPODOC_CONTADOR = ptipodoc);
IF (pserie IS NULL) THEN
   SET presul = '-';
ELSE
   SET presul = pserie;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_GET_DATA_ARTICULO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_GET_DATA_ARTICULO`;
delimiter ;;
CREATE PROCEDURE `PRC_GET_DATA_ARTICULO`(IN `pidcodarticulo` varchar(200), 
                                         OUT `pidnomarticulo` varchar(200), 
                                         OUT `ptipoiva` varchar(2))
BEGIN
   IF( EXISTS(
             SELECT *
               FROM `fza_articulos`
              WHERE `CODIGO_ARTICULO` =  `pidcodarticulo`) ) THEN
  BEGIN
    SELECT `DESCRIPCION_ARTICULO`, `TIPOIVA_ARTICULO` 
      INTO `pidnomarticulo`, `ptipoiva`
      FROM `fza_articulos`
     WHERE `CODIGO_ARTICULO` = `pidcodarticulo`;
  END;
  ELSE
  BEGIN
    SET `pidnomarticulo` = 'NO EXISTE';
    SET `ptipoiva` = 'N';
  END;
  END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_GET_DATA_CLIENTE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_GET_DATA_CLIENTE`;
delimiter ;;
CREATE PROCEDURE `PRC_GET_DATA_CLIENTE`(IN `pCODIGO_CLIENTE`                    varchar(10),
                         OUT `pRAZONSOCIAL_CLIENTE`               varchar(200),
                         OUT `pNIF_CLIENTE`                       varchar(50),
                         OUT `pCODIGO_ZONA_IVA_CLIENTE`           int,
                         OUT `pMOVIL_CLIENTE`                     varchar(40),
                         OUT `pESIVA_RECARGO_CLIENTE`             varchar(1),
                         OUT `pESRETENCIONES_CLIENTE`             varchar(1),
                         OUT `pESIVA_EXENTO_CLIENTE`              varchar(1),
                         OUT `pESINTRACOMUNITARIO_CLIENTE`        varchar(1),
                         OUT `pESREGIMENESPECIALAGRICOLA_CLIENTE` varchar(1),
                         OUT `pEMAIL_CLIENTE`                     varchar(200),
                         OUT `pDIRECCION1_CLIENTE`                varchar(200),
                         OUT `pDIRECCION2_CLIENTE`                varchar(200),
                         OUT `pPOBLACION_CLIENTE`                 varchar(200),
                         OUT `pPROVINCIA_CLIENTE`                 varchar(200),
                         OUT `pCPOSTAL_CLIENTE`                   varchar(15),
                         OUT `pTARIFA_ARTICULO_CLIENTE`           varchar(10),
                         OUT `pTEXTO_LEGAL_FACTURA_CLIENTE`       varchar(1000),
                         OUT `pPAIS_CLIENTE`                      varchar(150))
BEGIN
   IF( EXISTS(
             SELECT *
             FROM `fza_clientes`
             WHERE `CODIGO_CLIENTE` =  `pCODIGO_CLIENTE`) ) THEN
  BEGIN
    SELECT  `RAZONSOCIAL_CLIENTE`               ,
            `NIF_CLIENTE`                       ,
            `CODIGO_ZONA_IVA_CLIENTE`           ,
            `ESIVA_RECARGO_CLIENTE`             ,
            `ESRETENCIONES_CLIENTE`             ,
            `ESIVA_EXENTO_CLIENTE`              ,
            `ESINTRACOMUNITARIO_CLIENTE`        ,
            `ESREGIMENESPECIALAGRICOLA_CLIENTE` ,
            `MOVIL_CLIENTE`                     ,
            `EMAIL_CLIENTE`                     ,
            `DIRECCION1_CLIENTE`                ,
            `DIRECCION2_CLIENTE`                ,
            `POBLACION_CLIENTE`                 ,
            `PROVINCIA_CLIENTE`                 ,
            `CPOSTAL_CLIENTE`                   ,
            `TARIFA_ARTICULO_CLIENTE`           ,
            `TEXTO_LEGAL_FACTURA_CLIENTE`       ,
            `PAIS_CLIENTE`        
      INTO  `pRAZONSOCIAL_CLIENTE`              ,
            `pNIF_CLIENTE`                      ,
            `pCODIGO_ZONA_IVA_CLIENTE`          ,
            `pESIVA_RECARGO_CLIENTE`            ,
            `pESRETENCIONES_CLIENTE`            ,
            `pESIVA_EXENTO_CLIENTE`             ,
            `pESINTRACOMUNITARIO_CLIENTE`       ,
            `pESREGIMENESPECIALAGRICOLA_CLIENTE`,
            `pMOVIL_CLIENTE`                    ,
            `pEMAIL_CLIENTE`                    ,
            `pDIRECCION1_CLIENTE`               ,
            `pDIRECCION2_CLIENTE`               ,
            `pPOBLACION_CLIENTE`                ,
            `pPROVINCIA_CLIENTE`                ,
            `pCPOSTAL_CLIENTE`                  ,
            `pTARIFA_ARTICULO_CLIENTE`          ,
            `pTEXTO_LEGAL_FACTURA_CLIENTE`      ,
            `pPAIS_CLIENTE`
      FROM `fza_clientes`
     WHERE `CODIGO_CLIENTE` =  `pCODIGO_CLIENTE`;
  END;
  ELSE
  BEGIN
    SET `pRAZONSOCIAL_CLIENTE` = 'CLIENTE NO ENCONTRADO';
  END;
  END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_GET_IVA_ZONA_FECHA
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_GET_IVA_ZONA_FECHA`;
delimiter ;;
CREATE PROCEDURE `PRC_GET_IVA_ZONA_FECHA`(IN `pFECHA` DATE, 
                                       IN `pZONA` INT, 
                                       OUT `pRESUL` INT, 
                                       OUT `pEXENTO_IVA` DECIMAL(18,6), 
                                       OUT `pEXENTO_RE_IVA` DECIMAL(18,6), 
                                       OUT `pNORMAL_IVA` DECIMAL(18,6), 
                                       OUT `pNORMAL_RE_IVA` DECIMAL(18,6), 
                                       OUT `pREDUCIDO_IVA` DECIMAL(18,6), 
                                       OUT `pREDUCIDO_RE_IVA` DECIMAL(18,6), 
                                       OUT `pSUPERREDUCIDO_IVA` DECIMAL(18,6), 
                                       OUT `pSUPERREDUCIDO_RE_IVA` DECIMAL(18,6))
BEGIN
    IF( EXISTS(
             SELECT *
               FROM fza_ivas
              WHERE FECHA_DESDE_IVA >=  FECHA
                AND (FECHA_HASTA_IVA <= FECHA 
                 OR FECHA_HASTA_IVA IS NULL)
                AND  GRUPO_ZONA_IVA = pZONA)) THEN
  SELECT `PORCENEXENTO_IVA` ,
         `PORCENEXENTO_RE_IVA`,
         `PORCENNORMAL_IVA` ,
         `PORCENNORMAL_RE_IVA`,
         `PORCENREDUCIDO_IVA` ,
         `PORCENREDUCIDO_RE_IVA` ,
         `PORCENSUPERREDUCIDO_IVA` ,
         `PORCENSUPERREDUCIDO_RE_IVA`
    INTO
         pEXENTO_IVA,
         pEXENTO_RE_IVA,
         pNORMAL_IVA ,
         pNORMAL_RE_IVA,
         pREDUCIDO_IVA,
         pREDUCIDO_RE_IVA ,
         pSUPERREDUCIDO_IVA,
         pSUPERREDUCIDO_RE_IVA
    FROM fza_ivas
   WHERE (FECHA_DESDE_IVA >=  FECHA
     AND (FECHA_HASTA_IVA <= FECHA OR 
          FECHA_HASTA_IVA IS NULL))
     AND CODIGO_ZONA_IVA = pZONA;
ELSE
    SELECT `PORCENEXENTO_IVA` ,
           `PORCENEXENTO_RE_IVA`,
           `PORCENNORMAL_IVA` ,
           `PORCENNORMAL_RE_IVA`,
           `PORCENREDUCIDO_IVA` ,
           `PORCENREDUCIDO_RE_IVA` ,
           `PORCENSUPERREDUCIDO_IVA` ,
           `PORCENSUPERREDUCIDO_RE_IVA`
       INTO
            pEXENTO_IVA,
            pEXENTO_RE_IVA,
            pNORMAL_IVA ,
            pNORMAL_RE_IVA,
            pREDUCIDO_IVA,
            pREDUCIDO_RE_IVA ,
            pSUPERREDUCIDO_IVA,
            pSUPERREDUCIDO_RE_IVA
      FROM  fza_ivas
     WHERE (FECHA_DESDE_IVA >=  FECHA
       AND FECHA_HASTA_IVA IS NULL )
       AND CODIGO_ZONA_IVA = pZONA;
  END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_GET_NEXT_CONT
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_GET_NEXT_CONT`;
delimiter ;;
CREATE PROCEDURE `PRC_GET_NEXT_CONT`(IN  pTipoDoc varchar(2), 
                                         IN  pUSUARIO_MODIF varchar(100),
                                         OUT pcont varchar(20))
BEGIN
DECLARE pPADD bigint;

START TRANSACTION;
  

  IF( NOT( EXISTS(
             SELECT *
             FROM fza_contadores
             WHERE `TIPODOC_CONTADOR` =  pTipoDoc) ) ) THEN
    BEGIN
      INSERT INTO fza_contadores (TIPODOC_CONTADOR, 
                                  SERIE_CONTADOR, 
                                  CONTADOR_CONTADOR, 
                                  DEFAULT_CONTADOR,
                                  NUMDIGIT_CONTADOR,
                                  INSTANTEALTA, 
                                  USUARIOALTA,
                                  USUARIOMODIF) 
                          VALUES
                                 (pTipoDoc, 
                                  '-', 
                                   1, 
                                  'S', 
                                   3,
                                  CURRENT_TIMESTAMP,
                                  pUSUARIO_MODIF, 
                                  pUSUARIO_MODIF);
    END;
    END IF;
    SET pPADD = (SELECT NUMDIGIT_CONTADOR 
                   FROM fza_contadores 
                  WHERE TIPODOC_CONTADOR = pTipoDoc 
                    AND DEFAULT_CONTADOR = 'S' 
                  LIMIT 1);
     
     UPDATE fza_contadores 
        SET CONTADOR_CONTADOR = CONTADOR_CONTADOR + 1,
            USUARIOMODIF = pUSUARIO_MODIF
      WHERE TIPODOC_CONTADOR = pTipoDoc;            
      SELECT LPAD( (SELECT CONTADOR_CONTADOR - 1 
                      FROM fza_contadores         
                     WHERE TIPODOC_CONTADOR = pTipoDoc 
                     LIMIT 1) , pPADD, '0') INTO pcont;
COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_GET_NEXT_CONT_FACT_SERIE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_GET_NEXT_CONT_FACT_SERIE`;
delimiter ;;
CREATE PROCEDURE `PRC_GET_NEXT_CONT_FACT_SERIE`(IN `pserie` VARCHAR(10), 
                                                                           IN `pTipoDoc` VARCHAR(2), 
																																					 IN `pUSUARIOMODIF` varchar(100),
																																					 OUT `pcont` varchar(12))
BEGIN
DECLARE pNUMDIGIT varchar(12);
START TRANSACTION;

  IF( NOT( EXISTS(
             SELECT *
             FROM fza_contadores
             WHERE `TIPODOC_CONTADOR` =  pTipoDoc
						   AND `SERIE_CONTADOR` = pserie) ) ) THEN
	BEGIN
	   INSERT INTO fza_contadores (TIPODOC_CONTADOR, 
		                            SERIE_CONTADOR, 
																CONTADOR_CONTADOR, 
																DEFAULT_CONTADOR,
																NUMDIGIT_CONTADOR,
																INSTANTEALTA, 
																USUARIOALTA,
																USUARIOMODIF) 
												VALUES
																(pTipoDoc, 
																 pserie, 
																 1, 
																 'N', 
																 6,
																 CURRENT_TIMESTAMP,
																 pUSUARIOMODIF, 
																 pUSUARIOMODIF);
	END;
	END IF;

UPDATE fza_contadores
    SET CONTADOR_CONTADOR = CONTADOR_CONTADOR + 1
  WHERE SERIE_CONTADOR = pserie
      AND TIPODOC_CONTADOR = pTipoDoc;
  
	SELECT CONTADOR_CONTADOR - 1 , 
 	 			 NUMDIGIT_CONTADOR
		INTO pcont,
				 pNUMDIGIT
	  from fza_contadores
	 where SERIE_CONTADOR = pserie
		 and TIPODOC_CONTADOR = pTipoDoc LIMIT 1;
		 
 IF (NOT(pNUMDIGIT IS NULL) AND (pNUMDIGIT <> 0)) THEN
   SET pcont = LPAD(pcont, pNUMDIGIT, '0');
 END IF;								 

COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_GET_NEXT_CONT_SERIE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_GET_NEXT_CONT_SERIE`;
delimiter ;;
CREATE PROCEDURE `PRC_GET_NEXT_CONT_SERIE`(IN `pserie`   VARCHAR(10), 
                                                   IN `pTipoDoc` VARCHAR(2), 
                                                  OUT `pcont`    VARCHAR(12))
BEGIN
DECLARE `pNUMDIGIT` VARCHAR(12);
START TRANSACTION;
 UPDATE `fza_contadores`
    SET `CONTADOR_CONTADOR` = `CONTADOR_CONTADOR` + 1
  WHERE `SERIE_CONTADOR` = `pserie`
    AND `TIPODOC_CONTADOR` = `pTipoDoc`;
  SELECT `CONTADOR_CONTADOR` - 1 , 
         `NUMDIGIT_CONTADOR`
    INTO `pcont`,
         `pNUMDIGIT`
    FROM `fza_contadores`
   WHERE `SERIE_CONTADOR` = `pserie`
     AND `TIPODOC_CONTADOR` = `pTipoDoc` 
   LIMIT 1;  
 IF (NOT(`pNUMDIGIT` IS NULL) AND (`pNUMDIGIT` <> 0)) THEN
   SET `pcont` = LPAD(`pcont`, `pNUMDIGIT`, '0');
 END IF;                 

COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_GET_NUMEROS_A_LETRAS
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_GET_NUMEROS_A_LETRAS`;
delimiter ;;
CREATE PROCEDURE `PRC_GET_NUMEROS_A_LETRAS`(IN NUMERO DECIMAL(12,2), OUT pResul varchar(200))
BEGIN
	DECLARE MILLARES INT;
	DECLARE CENTENAS INT;
	DECLARE CENTIMOS INT;
	DECLARE CENTIMO_AUX VARCHAR(200);
	DECLARE CENTIMO_AUX_CON VARCHAR(200);
	DECLARE MIL_AUX VARCHAR(200);
	DECLARE EN_LETRAS VARCHAR(200);
	DECLARE ENTERO INT;
	DECLARE AUX VARCHAR(15);
	DECLARE INTER VARCHAR(200);
	
	SET EN_LETRAS = '';
	SET CENTIMO_AUX_CON = '';
	SET ENTERO = TRUNCATE(NUMERO,0);
	SET MILLARES = TRUNCATE(ENTERO / 1000,0);
	SET CENTENAS = ENTERO MOD 1000;
	SET CENTIMOS = (TRUNCATE(NUMERO,2) * 100) MOD 100;
	
	IF ((MILLARES = 1)) THEN
		SET EN_LETRAS = 'MIL ';
	ELSE 
		IF (MILLARES > 0) THEN
        CALL PRC_GET_NUMERO_MENOR_MIL(MILLARES, INTER); 
				SET EN_LETRAS = CONCAT(EN_LETRAS , INTER ,'MIL ');
				SET EN_LETRAS = REPLACE(EN_LETRAS,'UNO ','UN ');
		END IF;
	END IF;
	
	IF ((CENTENAS > 0) OR ((ENTERO = 0) AND (CENTIMOS = 0))) THEN
		BEGIN
      CALL PRC_GET_NUMERO_MENOR_MIL(CENTENAS, INTER);
			SET EN_LETRAS = CONCAT(EN_LETRAS, INTER);			
		END;
	END IF;
	IF (CENTIMOS > 0) THEN
	BEGIN
		IF (CENTIMOS = 1) THEN
			SET  AUX = 'CÉNTIMO ';
		ELSE
			SET AUX = 'CÉNTIMOS ';
		END IF;	
		IF (CENTIMOS > 0) THEN
            CALL PRC_GET_NUMERO_MENOR_MIL(CENTIMOS, INTER);
			SET CENTIMO_AUX = INTER;
			SET CENTIMO_AUX = REPLACE(CENTIMO_AUX,'UNO ','UN '); 
			IF ENTERO <> 0 THEN 
			  SET CENTIMO_AUX_CON = 'CON ' ; 
			END IF;
			SET EN_LETRAS = CONCAT(EN_LETRAS, CENTIMO_AUX_CON, CENTIMO_AUX , AUX);
		ELSE
			SET EN_LETRAS = CONCAT(EN_LETRAS, CENTIMO_AUX, AUX);		
		END IF;
	END;
	END IF;
	SET pResul = EN_LETRAS;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PRC_GET_NUMERO_MENOR_MIL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRC_GET_NUMERO_MENOR_MIL`;
delimiter ;;
CREATE PROCEDURE `PRC_GET_NUMERO_MENOR_MIL`(IN NUMERO DECIMAL(4), OUT pResul varchar(100))
BEGIN
       DECLARE CENTENAS INT;
       DECLARE DECENAS INT;
       DECLARE UNIDADES INT;
       DECLARE EN_LETRAS VARCHAR(100);
       DECLARE UNIR VARCHAR(2);
			 SET EN_LETRAS = '';
        IF (NUMERO = 100) THEN
            SET pResul = ('CIEN ');
        ELSEIF NUMERO = 0 THEN
            SET pResul = ('CERO ');
        ELSEIF NUMERO = 1 THEN
            SET pResul = ('UNO ');
        ELSE
            SET CENTENAS = TRUNCATE(NUMERO / 100,0);
            SET DECENAS  = TRUNCATE((NUMERO MOD 100)/10,0);
            SET UNIDADES = NUMERO MOD 10;
            SET UNIR = 'Y ';
            
						IF CENTENAS = 1 THEN
                SET EN_LETRAS = 'CIENTO ';
            ELSEIF CENTENAS = 2 THEN
                SET EN_LETRAS = 'DOSCIENTOS ';
            ELSEIF CENTENAS = 3 THEN
                SET EN_LETRAS = 'TRESCIENTOS ';
            ELSEIF CENTENAS = 4 THEN
                SET EN_LETRAS = 'CUATROCIENTOS ';
            ELSEIF CENTENAS = 5 THEN
                SET EN_LETRAS = 'QUINIENTOS ';
            ELSEIF CENTENAS = 6 THEN
                SET EN_LETRAS = 'SEISCIENTOS ';
            ELSEIF CENTENAS = 7 THEN
                SET EN_LETRAS = 'SETECIENTOS ';
            ELSEIF CENTENAS = 8 THEN
                SET EN_LETRAS = 'OCHOCIENTOS ';
            ELSEIF CENTENAS = 9 THEN
                SET EN_LETRAS = 'NOVECIENTOS ';
            END IF;
            
						IF DECENAS = 3 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'TREINTA ');
            ELSEIF DECENAS = 4 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'CUARENTA ');
            ELSEIF DECENAS = 5 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'CINCUENTA ');
            ELSEIF DECENAS = 6 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'SESENTA ');
            ELSEIF DECENAS = 7 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'SETENTA ');
            ELSEIF DECENAS = 8 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'OCHENTA ');
            ELSEIF DECENAS = 9 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , 'NOVENTA ');
            ELSEIF DECENAS = 1 THEN
                IF UNIDADES < 6 THEN
                    IF UNIDADES = 0 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'DIEZ ');
                    ELSEIF UNIDADES = 1 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'ONCE ');
                    ELSEIF UNIDADES = 2 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'DOCE ');
                    ELSEIF UNIDADES = 3 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'TRECE ');
                    ELSEIF UNIDADES = 4 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'CATORCE ');
                    ELSEIF UNIDADES = 5 THEN
                        SET EN_LETRAS = CONCAT(EN_LETRAS , 'QUINCE ');
                    END IF;
                    SET UNIDADES = 0;
                ELSE
                    SET EN_LETRAS = CONCAT(EN_LETRAS, 'DIECI');
                    SET UNIR = '';
                END IF;
            ELSEIF (DECENAS = 2) THEN
                IF (UNIDADES = 0) THEN
                    SET EN_LETRAS = CONCAT(EN_LETRAS, 'VEINTE ');
                ELSE
                    SET EN_LETRAS = CONCAT(EN_LETRAS, 'VEINTI');
                END IF;
                SET UNIR = '';
            ELSEIF (DECENAS = 0) THEN
                SET UNIR = '';
            END IF;
						
            IF (UNIDADES = 1) THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'UNO ');
            ELSEIF UNIDADES = 2 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'DOS ');
            ELSEIF UNIDADES = 3 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'TRES ');
            ELSEIF UNIDADES = 4 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'CUATRO ');
            ELSEIF UNIDADES = 5 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'CINCO ');
            ELSEIF UNIDADES = 6 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'SEIS ');
            ELSEIF UNIDADES = 7 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'SIETE ');
            ELSEIF UNIDADES = 8 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS, UNIR, 'OCHO ');
            ELSEIF UNIDADES = 9 THEN
                SET EN_LETRAS = CONCAT(EN_LETRAS , UNIR , 'NUEVE ');
            END IF;
        END IF;
        SET pResul = EN_LETRAS;
    END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;

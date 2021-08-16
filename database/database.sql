-- --------------------------------------------------------
-- Host:                         192.168.1.219
-- Server version:               10.2.40-MariaDB-1:10.2.40+maria~bionic - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for presupuestos_viaje
CREATE DATABASE IF NOT EXISTS `presupuestos_viaje` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `presupuestos_viaje`;

-- Dumping structure for table presupuestos_viaje.casetas
CREATE TABLE IF NOT EXISTS `casetas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.casetas: ~6 rows (approximately)
/*!40000 ALTER TABLE `casetas` DISABLE KEYS */;
INSERT INTO `casetas` (`id`, `nombre`, `creado`, `actualizado`) VALUES
	(1, 'La Rumorosa ', '2021-08-15 20:32:53', '2021-08-15 20:32:53'),
	(2, 'El Hongo ', '2021-08-15 20:33:08', '2021-08-15 20:33:09'),
	(3, 'Tijuana ', '2021-08-15 20:33:22', '2021-08-15 20:33:22'),
	(4, 'Playas de Tijuana ', '2021-08-15 20:35:13', '2021-08-15 20:35:14'),
	(5, 'Rosarito ', '2021-08-15 20:35:26', '2021-08-15 20:35:26'),
	(6, 'Ensenada ', '2021-08-15 20:35:32', '2021-08-15 20:35:33');
/*!40000 ALTER TABLE `casetas` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.casetas_tarifas
CREATE TABLE IF NOT EXISTS `casetas_tarifas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_caseta` int(11) unsigned NOT NULL,
  `tipo_transporte` varchar(4) NOT NULL COMMENT 'misma clave que la del sitio traza tu ruta http://app.sct.gob.mx/sibuac_internet/ControllerUI?action=cmdEscogeRuta',
  `precio` decimal(14,4) NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_caseta` (`id_caseta`),
  CONSTRAINT `fk_id_caseta` FOREIGN KEY (`id_caseta`) REFERENCES `casetas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.casetas_tarifas: ~96 rows (approximately)
/*!40000 ALTER TABLE `casetas_tarifas` DISABLE KEYS */;
INSERT INTO `casetas_tarifas` (`id`, `id_caseta`, `tipo_transporte`, `precio`, `creado`, `actualizado`) VALUES
	(1, 1, '1', 12.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(2, 1, '10', 113.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(3, 1, '11', 113.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(4, 1, '12', 166.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(5, 1, '13', 166.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(6, 1, '14', 184.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(7, 1, '15', 184.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(8, 1, '16', 184.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(9, 1, '2', 25.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(10, 1, '3', 38.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(11, 1, '4', 51.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(12, 1, '5', 25.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(13, 1, '6', 113.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(14, 1, '7', 113.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(15, 1, '8', 113.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(16, 1, '9', 113.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(17, 2, '1', 113.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(18, 2, '10', 244.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(19, 2, '11', 280.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(20, 2, '12', 280.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(21, 2, '13', 403.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(22, 2, '14', 403.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(23, 2, '15', 403.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(24, 2, '16', 403.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(25, 2, '2', 87.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(26, 2, '3', 131.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(27, 2, '4', 175.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(28, 2, '5', 87.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(29, 2, '6', 158.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(30, 2, '7', 158.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(31, 2, '8', 158.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(32, 2, '9', 158.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(33, 3, '1', 158.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(34, 3, '10', 244.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(35, 3, '11', 244.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(36, 3, '12', 350.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(37, 3, '13', 350.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(38, 3, '14', 447.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(39, 3, '15', 447.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(40, 3, '16', 447.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(41, 3, '2', 127.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(42, 3, '3', 190.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(43, 3, '4', 253.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(44, 3, '5', 127.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(45, 3, '6', 188.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(46, 3, '7', 188.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(47, 3, '8', 188.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(48, 3, '9', 188.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(49, 4, '1', 20.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(50, 4, '10', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(51, 4, '11', 103.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(52, 4, '12', 103.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(53, 4, '13', 117.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(54, 4, '14', 117.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(55, 4, '15', 117.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(56, 4, '16', 117.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(57, 4, '2', 40.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(58, 4, '3', 60.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(59, 4, '4', 80.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(60, 4, '5', 40.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(61, 4, '6', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(62, 4, '7', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(63, 4, '8', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(64, 4, '9', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(65, 5, '1', 20.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(66, 5, '10', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(67, 5, '11', 103.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(68, 5, '12', 103.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(69, 5, '13', 117.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(70, 5, '14', 117.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(71, 5, '15', 117.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(72, 5, '16', 117.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(73, 5, '2', 40.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(74, 5, '3', 60.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(75, 5, '4', 80.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(76, 5, '5', 40.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(77, 5, '6', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(78, 5, '7', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(79, 5, '8', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(80, 5, '9', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(81, 6, '1', 22.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(82, 6, '10', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(83, 6, '11', 106.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(84, 6, '12', 106.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(85, 6, '13', 122.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(86, 6, '14', 122.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(87, 6, '15', 122.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(88, 6, '16', 122.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(89, 6, '2', 44.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(90, 6, '3', 66.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(91, 6, '4', 88.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(92, 6, '5', 44.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(93, 6, '6', 88.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(94, 6, '7', 88.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(95, 6, '8', 88.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34'),
	(96, 6, '9', 84.0000, '2021-08-15 20:37:34', '2021-08-15 20:37:34');
/*!40000 ALTER TABLE `casetas_tarifas` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.combustibles
CREATE TABLE IF NOT EXISTS `combustibles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `precio_litro` decimal(14,4) NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.combustibles: ~3 rows (approximately)
/*!40000 ALTER TABLE `combustibles` DISABLE KEYS */;
INSERT INTO `combustibles` (`id`, `nombre`, `precio_litro`, `creado`, `actualizado`) VALUES
	(1, 'Gasolina Magna', 18.0000, '2021-08-15 20:15:03', '2021-08-15 20:15:03'),
	(2, 'Gasolina Premium', 20.0000, '2021-08-15 20:15:33', '2021-08-15 20:15:34'),
	(3, 'Diesel', 24.0000, '2021-08-15 20:15:47', '2021-08-15 20:15:48');
/*!40000 ALTER TABLE `combustibles` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.configuraciones
CREATE TABLE IF NOT EXISTS `configuraciones` (
  `salario_minimo` decimal(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.configuraciones: ~1 rows (approximately)
/*!40000 ALTER TABLE `configuraciones` DISABLE KEYS */;
INSERT INTO `configuraciones` (`salario_minimo`) VALUES
	(213.3900);
/*!40000 ALTER TABLE `configuraciones` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.destinos
CREATE TABLE IF NOT EXISTS `destinos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `id_caseta` int(10) unsigned DEFAULT NULL,
  `kilometros` decimal(14,4) unsigned NOT NULL,
  `tiempo_min` int(10) unsigned NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `if_id_caseta_destino` (`id_caseta`),
  CONSTRAINT `if_id_caseta_destino` FOREIGN KEY (`id_caseta`) REFERENCES `casetas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.destinos: ~0 rows (approximately)
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` (`id`, `nombre`, `id_caseta`, `kilometros`, `tiempo_min`, `creado`, `actualizado`) VALUES
	(1, 'Mexicali - Flor del Desierto ', NULL, 48.2710, 38, '2021-08-15 21:36:45', '2021-08-15 21:36:45'),
	(2, 'Flor del Desierto - Entronque La Rumorosa ', 1, 20.8410, 17, '2021-08-15 21:37:27', '2021-08-15 21:37:27'),
	(3, 'Entronque La Rumorosa - Libramiento de Tecate (Ent. Sandoval) ', 2, 55.3360, 30, '2021-08-15 21:37:53', '2021-08-15 21:37:53'),
	(4, 'Libramiento de Tecate (Ent. Sandoval) - Ent. Tijuana ', 3, 27.2200, 16, '2021-08-15 21:38:55', '2021-08-15 21:38:55'),
	(5, 'Entronque Tijuana - Tijuana ', NULL, 19.8910, 19, '2021-08-15 21:39:25', '2021-08-15 21:39:25'),
	(6, 'Tijuana - Entronque Rosarito ', 4, 27.1530, 16, '2021-08-15 21:40:08', '2021-08-15 21:40:08'),
	(7, 'Entronque Rosarito - Entronque La Misión ', 5, 37.8960, 20, '2021-08-15 21:40:34', '2021-08-15 21:40:35'),
	(8, 'Entronque La Misión - San Miguel ', 6, 31.1530, 16, '2021-08-15 21:41:00', '2021-08-15 21:41:00'),
	(9, 'San Miguel - Ensenada ', NULL, 15.0350, 11, '2021-08-15 21:41:25', '2021-08-15 21:41:26'),
	(10, 'Libramiento de Tecate (Ent. Sandoval) - Tecate ', NULL, 5.3020, 6, '2021-08-15 21:46:31', '2021-08-15 21:46:31'),
	(11, 'Tecate - Entronque Esperanza ', NULL, 5.6820, 8, '2021-08-15 21:51:59', '2021-08-15 21:51:59'),
	(12, 'Entronque Tijuana - Entronque La Misión ', NULL, 68.6850, 41, '2021-08-15 21:54:40', '2021-08-15 21:54:40');
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.presupuestos
CREATE TABLE IF NOT EXISTS `presupuestos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_viaje` tinyint(4) NOT NULL COMMENT '1=una direccion, 2=redondeo',
  `id_ruta_ida` int(10) unsigned NOT NULL,
  `id_ruta_vuelta` int(10) unsigned DEFAULT NULL,
  `num_pasajeros` int(10) unsigned NOT NULL,
  `cost_combust` decimal(14,4) unsigned NOT NULL,
  `cost_peajes` decimal(14,4) unsigned NOT NULL,
  `cost_viaticos` decimal(14,4) unsigned NOT NULL,
  `cost_total` decimal(14,4) unsigned NOT NULL,
  `fecha_ida` datetime NOT NULL,
  `fecha_vuelta` datetime DEFAULT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_ruta_ida` (`id_ruta_ida`),
  KEY `fk_id_ruta_vuelta` (`id_ruta_vuelta`),
  CONSTRAINT `fk_id_ruta_ida` FOREIGN KEY (`id_ruta_ida`) REFERENCES `presupuestos_rutas` (`id`),
  CONSTRAINT `fk_id_ruta_vuelta` FOREIGN KEY (`id_ruta_vuelta`) REFERENCES `presupuestos_rutas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.presupuestos: ~0 rows (approximately)
/*!40000 ALTER TABLE `presupuestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestos` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.presupuestos_rutas
CREATE TABLE IF NOT EXISTS `presupuestos_rutas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.presupuestos_rutas: ~0 rows (approximately)
/*!40000 ALTER TABLE `presupuestos_rutas` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestos_rutas` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.presupuestos_rutas_itinerarios
CREATE TABLE IF NOT EXISTS `presupuestos_rutas_itinerarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_presu_rutas` int(11) unsigned NOT NULL,
  `cost_peaje` decimal(14,4) unsigned DEFAULT NULL,
  `lugar` varchar(256) NOT NULL,
  `fecha` datetime NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_presu_rutas` (`id_presu_rutas`),
  CONSTRAINT `fk_id_presu_rutas` FOREIGN KEY (`id_presu_rutas`) REFERENCES `presupuestos_rutas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.presupuestos_rutas_itinerarios: ~0 rows (approximately)
/*!40000 ALTER TABLE `presupuestos_rutas_itinerarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestos_rutas_itinerarios` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.presupuestos_unidades_transporte
CREATE TABLE IF NOT EXISTS `presupuestos_unidades_transporte` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_presupuesto` int(10) unsigned NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `tipo_transporte` varchar(4) NOT NULL COMMENT 'misma clave que la del sitio traza tu ruta http://app.sct.gob.mx/sibuac_internet/ControllerUI?action=cmdEscogeRuta',
  `capacidad` int(10) unsigned NOT NULL,
  `num_pasajeros` int(10) unsigned NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_presupuesto` (`id_presupuesto`),
  CONSTRAINT `fk_id_presupuesto` FOREIGN KEY (`id_presupuesto`) REFERENCES `presupuestos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.presupuestos_unidades_transporte: ~0 rows (approximately)
/*!40000 ALTER TABLE `presupuestos_unidades_transporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestos_unidades_transporte` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.rutas
CREATE TABLE IF NOT EXISTS `rutas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `cve_municipio` varchar(36) NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cve_municipio` (`cve_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.rutas: ~4 rows (approximately)
/*!40000 ALTER TABLE `rutas` DISABLE KEYS */;
INSERT INTO `rutas` (`id`, `nombre`, `cve_municipio`, `creado`, `actualizado`) VALUES
	(1, 'Mexicali, Tecate Tijuana, Rosarito, Ensenada', '84C0F2E6-99C0-4DD7-8015-289F6D5903FF', '2021-08-15 20:26:47', '2021-08-15 20:26:48'),
	(2, 'Mexicali, Tecate', '54FA9CC4-D993-442E-BCE2-443396B6C838', '2021-08-15 20:26:47', '2021-08-15 20:26:48'),
	(3, 'Mexicali, Tecate, Ensenada', '84C0F2E6-99C0-4DD7-8015-289F6D5903FF', '2021-08-15 20:26:47', '2021-08-15 20:26:48'),
	(4, 'Mexicali, Tijuana', 'C3C2196E-1DFF-48C5-BE9F-35FAF00D6801', '2021-08-15 20:26:47', '2021-08-15 20:26:48');
/*!40000 ALTER TABLE `rutas` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.rutas_destinos
CREATE TABLE IF NOT EXISTS `rutas_destinos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_ruta` int(10) unsigned NOT NULL,
  `id_destino` int(10) unsigned NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_ruta` (`id_ruta`),
  KEY `fk_id_destino` (`id_destino`),
  CONSTRAINT `fk_id_destino` FOREIGN KEY (`id_destino`) REFERENCES `destinos` (`id`),
  CONSTRAINT `fk_id_ruta` FOREIGN KEY (`id_ruta`) REFERENCES `rutas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.rutas_destinos: ~0 rows (approximately)
/*!40000 ALTER TABLE `rutas_destinos` DISABLE KEYS */;
INSERT INTO `rutas_destinos` (`id`, `id_ruta`, `id_destino`, `creado`, `actualizado`) VALUES
	(1, 1, 1, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(2, 1, 2, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(3, 1, 3, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(4, 1, 4, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(5, 1, 5, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(6, 1, 6, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(7, 1, 7, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(8, 1, 8, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(9, 1, 9, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(10, 2, 1, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(11, 2, 2, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(12, 2, 3, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(13, 2, 10, '2021-08-15 21:43:22', '2021-08-15 21:43:22'),
	(14, 3, 1, '2021-08-15 21:49:31', '2021-08-15 21:49:31'),
	(15, 3, 2, '2021-08-15 21:49:31', '2021-08-15 21:49:31'),
	(16, 3, 3, '2021-08-15 21:49:31', '2021-08-15 21:49:31'),
	(17, 3, 10, '2021-08-15 21:49:31', '2021-08-15 21:49:31'),
	(18, 3, 11, '2021-08-15 21:49:31', '2021-08-15 21:49:31'),
	(19, 3, 4, '2021-08-15 21:49:31', '2021-08-15 21:49:31'),
	(20, 3, 12, '2021-08-15 21:49:31', '2021-08-15 21:49:31'),
	(21, 3, 8, '2021-08-15 21:49:31', '2021-08-15 21:49:31'),
	(22, 3, 9, '2021-08-15 21:49:31', '2021-08-15 21:49:31'),
	(23, 4, 1, '2021-08-15 21:57:44', '2021-08-15 21:57:45'),
	(24, 4, 2, '2021-08-15 21:57:44', '2021-08-15 21:57:45'),
	(25, 4, 3, '2021-08-15 21:57:44', '2021-08-15 21:57:45'),
	(26, 4, 4, '2021-08-15 21:57:44', '2021-08-15 21:57:45'),
	(27, 4, 5, '2021-08-15 21:57:44', '2021-08-15 21:57:45');
/*!40000 ALTER TABLE `rutas_destinos` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.unidaides_transporte
CREATE TABLE IF NOT EXISTS `unidaides_transporte` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_combustible` int(10) unsigned NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `placas` varchar(16) NOT NULL,
  `tipo_transporte` varchar(4) NOT NULL COMMENT 'misma clave que la del sitio traza tu ruta http://app.sct.gob.mx/sibuac_internet/ControllerUI?action=cmdEscogeRuta',
  `cap_pasajeros` int(11) NOT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_combustible` (`id_combustible`),
  CONSTRAINT `fk_id_combustible` FOREIGN KEY (`id_combustible`) REFERENCES `combustibles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.unidaides_transporte: ~5 rows (approximately)
/*!40000 ALTER TABLE `unidaides_transporte` DISABLE KEYS */;
INSERT INTO `unidaides_transporte` (`id`, `id_combustible`, `nombre`, `placas`, `tipo_transporte`, `cap_pasajeros`, `creado`, `actualizado`) VALUES
	(1, 1, 'Camión Verde', 'A1', '6', 40, '2021-08-15 20:18:15', '2021-08-15 20:18:16'),
	(2, 1, 'Camión Rojo', 'A2', '6', 40, '2021-08-15 20:18:15', '2021-08-15 20:18:16'),
	(3, 1, 'Camión Amarillo', 'A3', '6', 40, '2021-08-15 20:18:15', '2021-08-15 20:18:16'),
	(4, 3, 'Camión Negro', 'A3', '8', 40, '2021-08-15 20:18:15', '2021-08-15 20:18:16'),
	(5, 3, 'Camión Blanco', 'A3', '8', 40, '2021-08-15 20:18:15', '2021-08-15 20:18:16');
/*!40000 ALTER TABLE `unidaides_transporte` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(256) NOT NULL,
  `correo` varchar(256) NOT NULL,
  `pswd_checksum` varchar(256) DEFAULT NULL,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`),
  KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.usuarios: ~1 rows (approximately)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `usuario`, `correo`, `pswd_checksum`, `creado`, `actualizado`) VALUES
	(1, 'sergio', 'sergio950607@gmail.com', '7ecc6949e7e2590c93c7c94b1102d9ed2ae414f701c9f141f15d0dc3504fc3f3', '2021-08-15 19:11:40', '2021-08-15 19:11:42');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Dumping structure for table presupuestos_viaje.usuarios_accesos
CREATE TABLE IF NOT EXISTS `usuarios_accesos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_usuario` (`id_usuario`),
  CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table presupuestos_viaje.usuarios_accesos: ~0 rows (approximately)
/*!40000 ALTER TABLE `usuarios_accesos` DISABLE KEYS */;
INSERT INTO `usuarios_accesos` (`id`, `id_usuario`, `fecha`) VALUES
	(1, 1, '2021-08-15 19:16:22');
/*!40000 ALTER TABLE `usuarios_accesos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

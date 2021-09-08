-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: maestro
-- ------------------------------------------------------
-- Server version	10.3.29-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CDR`
--

DROP TABLE IF EXISTS `CDR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CDR` (
  `cdrCodigo` int(11) NOT NULL AUTO_INCREMENT,
  `cdrAno` int(11) DEFAULT NULL,
  `cdrMes` int(11) DEFAULT NULL,
  `cdrDia` int(11) DEFAULT NULL,
  `cdrOrigem` varchar(20) DEFAULT NULL,
  `cdrDestino` varchar(20) DEFAULT NULL,
  `cdrFila` varchar(20) DEFAULT NULL,
  `cdrUniqueID` varchar(45) DEFAULT NULL,
  `cdrCodigoParceiro` varchar(4) DEFAULT NULL,
  `cdrCodigoCliente` varchar(4) DEFAULT NULL,
  `cdrTipo` varchar(15) DEFAULT NULL,
  `cdrStatusFila` int(11) DEFAULT -1,
  `cdrMix` varchar(300) DEFAULT NULL,
  `cdrEspera` datetime DEFAULT '0000-00-00 00:00:00',
  `cdrFim` datetime DEFAULT '0000-00-00 00:00:00',
  `cdrInicio` datetime DEFAULT '0000-00-00 00:00:00',
  `cdrNaoAtendida` int(11) DEFAULT 0,
  `cdrUsuarioCodigo` int(11) DEFAULT NULL,
  `cdrInicioTransbordo` datetime DEFAULT '0000-00-00 00:00:00',
  `cdrClienteClienteID` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`cdrCodigo`),
  KEY `UNIQUEID` (`cdrUniqueID`),
  KEY `codigoCliente` (`cdrClienteClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-08  9:07:32

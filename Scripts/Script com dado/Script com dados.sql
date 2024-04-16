-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospitalcarro
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carro` (
  `idCarro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `ano` int(4) NOT NULL,
  `tipoCarro_idtipoCarro` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idCarro`),
  KEY `fk_Carro_tipoCarro_idx` (`tipoCarro_idtipoCarro`),
  KEY `fk_Carro_Cliente1_idx` (`Cliente_idCliente`),
  CONSTRAINT `fk_Carro_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carro_tipoCarro` FOREIGN KEY (`tipoCarro_idtipoCarro`) REFERENCES `tipocarro` (`idtipoCarro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES (1,'Golf','VolksWagen',2024,2,2),(2,'Corola','Toyota',2024,3,3),(5,'Chevett','Chevrolet',1910,3,2),(6,'Gol','VolksWagen',2019,2,2),(7,'Voyage','VolksWagen',2024,2,3),(8,'Virtus','VolksWagen',2024,2,3),(9,'Opala','Chevrolet',1950,1,2),(10,'Brasilia','VolksWagen',1925,1,3),(11,'Fusca','VolksWagen',1905,1,2);
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `carro_cliente`
--

DROP TABLE IF EXISTS `carro_cliente`;
/*!50001 DROP VIEW IF EXISTS `carro_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `carro_cliente` AS SELECT 
 1 AS `Nome_Cliente`,
 1 AS `Nome_Carro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `carro_tipocarro`
--

DROP TABLE IF EXISTS `carro_tipocarro`;
/*!50001 DROP VIEW IF EXISTS `carro_tipocarro`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `carro_tipocarro` AS SELECT 
 1 AS `Tipo_Carro`,
 1 AS `Nome_Carro`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `dataNascimento` varchar(10) NOT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `nomeRetira` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (2,'Enrique Rocha','21/04/2004','Nado','Ana'),(3,'Pedro','08/01/2005','MATA','Felipe');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL AUTO_INCREMENT,
  `curso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Eletrico'),(3,'Hibrido');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `curso_funcionario`
--

DROP TABLE IF EXISTS `curso_funcionario`;
/*!50001 DROP VIEW IF EXISTS `curso_funcionario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `curso_funcionario` AS SELECT 
 1 AS `Nome`,
 1 AS `Curso`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `CPF` int(30) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,1041,'Gregorio'),(3,1041,'Carlos'),(4,2058555458,'Douflas');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_has_curso`
--

DROP TABLE IF EXISTS `funcionario_has_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario_has_curso` (
  `funcionario_idFuncionario` int(11) NOT NULL,
  `curso_idCuso` int(11) NOT NULL,
  PRIMARY KEY (`funcionario_idFuncionario`,`curso_idCuso`),
  KEY `fk_funcionario_has_curso_curso1_idx` (`curso_idCuso`),
  KEY `fk_funcionario_has_curso_funcionario1_idx` (`funcionario_idFuncionario`),
  CONSTRAINT `fk_funcionario_has_curso_curso1` FOREIGN KEY (`curso_idCuso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_has_curso_funcionario1` FOREIGN KEY (`funcionario_idFuncionario`) REFERENCES `funcionario` (`idFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_has_curso`
--

LOCK TABLES `funcionario_has_curso` WRITE;
/*!40000 ALTER TABLE `funcionario_has_curso` DISABLE KEYS */;
INSERT INTO `funcionario_has_curso` VALUES (1,1),(1,2),(1,3),(3,3),(4,1);
/*!40000 ALTER TABLE `funcionario_has_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_has_servico`
--

DROP TABLE IF EXISTS `funcionario_has_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario_has_servico` (
  `Funcionario_idFuncionario` int(11) NOT NULL,
  `Servico_idServico` int(11) NOT NULL,
  PRIMARY KEY (`Funcionario_idFuncionario`,`Servico_idServico`),
  KEY `fk_Funcionario_has_Servico_Servico1_idx` (`Servico_idServico`),
  KEY `fk_Funcionario_has_Servico_Funcionario1_idx` (`Funcionario_idFuncionario`),
  CONSTRAINT `fk_Funcionario_has_Servico_Funcionario1` FOREIGN KEY (`Funcionario_idFuncionario`) REFERENCES `funcionario` (`idFuncionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_has_Servico_Servico1` FOREIGN KEY (`Servico_idServico`) REFERENCES `servico` (`idServico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_has_servico`
--

LOCK TABLES `funcionario_has_servico` WRITE;
/*!40000 ALTER TABLE `funcionario_has_servico` DISABLE KEYS */;
INSERT INTO `funcionario_has_servico` VALUES (1,2),(1,3),(2,1);
/*!40000 ALTER TABLE `funcionario_has_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacoes`
--

DROP TABLE IF EXISTS `informacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacoes` (
  `idInfo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `telefone` int(9) NOT NULL,
  PRIMARY KEY (`idInfo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacoes`
--

LOCK TABLES `informacoes` WRITE;
/*!40000 ALTER TABLE `informacoes` DISABLE KEYS */;
INSERT INTO `informacoes` VALUES (2,'Hospital de Carro','Rua Bahia, 320, Centro - Belo Horizonte/MG',999887744);
/*!40000 ALTER TABLE `informacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pecas`
--

DROP TABLE IF EXISTS `pecas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pecas` (
  `idpecas` int(11) NOT NULL AUTO_INCREMENT,
  `nomePeca` varchar(45) NOT NULL,
  `precoPeca` varchar(45) NOT NULL,
  PRIMARY KEY (`idpecas`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pecas`
--

LOCK TABLES `pecas` WRITE;
/*!40000 ALTER TABLE `pecas` DISABLE KEYS */;
INSERT INTO `pecas` VALUES (2,'Vela','180.05'),(3,'Farol','500.00'),(4,'Rolamento','200.00'),(5,'Cabeçote','300.00'),(6,'Parabrisa','1000.00'),(7,'Resistor','2.50'),(8,'Parafuso','0.50');
/*!40000 ALTER TABLE `pecas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pecas_has_servico`
--

DROP TABLE IF EXISTS `pecas_has_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pecas_has_servico` (
  `pecas_idpecas` int(11) NOT NULL,
  `Servico_idServico` int(11) NOT NULL,
  PRIMARY KEY (`pecas_idpecas`,`Servico_idServico`),
  KEY `fk_pecas_has_Servico_Servico1_idx` (`Servico_idServico`),
  KEY `fk_pecas_has_Servico_pecas1_idx` (`pecas_idpecas`),
  CONSTRAINT `fk_pecas_has_Servico_Servico1` FOREIGN KEY (`Servico_idServico`) REFERENCES `servico` (`idServico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pecas_has_Servico_pecas1` FOREIGN KEY (`pecas_idpecas`) REFERENCES `pecas` (`idpecas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pecas_has_servico`
--

LOCK TABLES `pecas_has_servico` WRITE;
/*!40000 ALTER TABLE `pecas_has_servico` DISABLE KEYS */;
INSERT INTO `pecas_has_servico` VALUES (2,2),(3,1);
/*!40000 ALTER TABLE `pecas_has_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `idServico` int(11) NOT NULL AUTO_INCREMENT,
  `precoServico` double NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `Carro_idCarro` int(11) NOT NULL,
  PRIMARY KEY (`idServico`),
  KEY `fk_Servico_Carro1_idx` (`Carro_idCarro`),
  CONSTRAINT `fk_Servico_Carro1` FOREIGN KEY (`Carro_idCarro`) REFERENCES `carro` (`idCarro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,700,'Troca de Farol',5),(3,300,'Troca de Vela',2),(4,1300,'Troca de Parabrisa',5),(5,5,'Troca de Parafuso',1),(6,1,'Troca de Resistor',1),(7,360,'Troca de Cabeçote',5);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `servico_com_carro`
--

DROP TABLE IF EXISTS `servico_com_carro`;
/*!50001 DROP VIEW IF EXISTS `servico_com_carro`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `servico_com_carro` AS SELECT 
 1 AS `Nome`,
 1 AS `Descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `servico_funcionario`
--

DROP TABLE IF EXISTS `servico_funcionario`;
/*!50001 DROP VIEW IF EXISTS `servico_funcionario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `servico_funcionario` AS SELECT 
 1 AS `Nome`,
 1 AS `Descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `servico_pecas`
--

DROP TABLE IF EXISTS `servico_pecas`;
/*!50001 DROP VIEW IF EXISTS `servico_pecas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `servico_pecas` AS SELECT 
 1 AS `Nome_Peca`,
 1 AS `Descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipocarro`
--

DROP TABLE IF EXISTS `tipocarro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocarro` (
  `idtipoCarro` int(11) NOT NULL AUTO_INCREMENT,
  `tipoCarro` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipoCarro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocarro`
--

LOCK TABLES `tipocarro` WRITE;
/*!40000 ALTER TABLE `tipocarro` DISABLE KEYS */;
INSERT INTO `tipocarro` VALUES (1,'Antigo'),(2,'Moderno'),(3,'Eletrico'),(5,'Hibrido');
/*!40000 ALTER TABLE `tipocarro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hospitalcarro'
--

--
-- Final view structure for view `carro_cliente`
--

/*!50001 DROP VIEW IF EXISTS `carro_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `carro_cliente` AS select `cl`.`nome` AS `Nome_Cliente`,`ca`.`nome` AS `Nome_Carro` from (`cliente` `cl` join `carro` `ca` on(`ca`.`Cliente_idCliente` = `cl`.`idCliente`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `carro_tipocarro`
--

/*!50001 DROP VIEW IF EXISTS `carro_tipocarro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `carro_tipocarro` AS select `t`.`tipoCarro` AS `Tipo_Carro`,`ca`.`nome` AS `Nome_Carro` from (`tipocarro` `t` join `carro` `ca` on(`ca`.`tipoCarro_idtipoCarro` = `t`.`idtipoCarro`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `curso_funcionario`
--

/*!50001 DROP VIEW IF EXISTS `curso_funcionario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `curso_funcionario` AS select `f`.`nome` AS `Nome`,`c`.`curso` AS `Curso` from ((`funcionario` `f` join `funcionario_has_curso` `fc` on(`f`.`idFuncionario` = `fc`.`funcionario_idFuncionario`)) join `curso` `c` on(`fc`.`curso_idCuso` = `c`.`idCurso`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `servico_com_carro`
--

/*!50001 DROP VIEW IF EXISTS `servico_com_carro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `servico_com_carro` AS select `c`.`nome` AS `Nome`,`s`.`descricao` AS `Descricao` from (`carro` `c` join `servico` `s` on(`s`.`Carro_idCarro` = `c`.`idCarro`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `servico_funcionario`
--

/*!50001 DROP VIEW IF EXISTS `servico_funcionario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `servico_funcionario` AS select `f`.`nome` AS `Nome`,`s`.`descricao` AS `Descricao` from ((`funcionario` `f` join `funcionario_has_servico` `fs` on(`f`.`idFuncionario` = `fs`.`Funcionario_idFuncionario`)) join `servico` `s` on(`fs`.`Servico_idServico` = `s`.`idServico`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `servico_pecas`
--

/*!50001 DROP VIEW IF EXISTS `servico_pecas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `servico_pecas` AS select `p`.`nomePeca` AS `Nome_Peca`,`s`.`descricao` AS `Descricao` from ((`pecas` `p` join `pecas_has_servico` `ps` on(`p`.`idpecas` = `ps`.`pecas_idpecas`)) join `servico` `s` on(`ps`.`Servico_idServico` = `s`.`idServico`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15 23:34:41

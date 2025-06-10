CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cadastro
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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(30) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('F','M','O') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(30) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Bruno Henrique','','1996-10-16','M',71.20,1.73,'Brasil'),(2,'Taylor Swift','','1989-12-13','F',69.20,1.84,'Estados Unidos'),(3,'Gabriel Coutinho','','2004-08-29','M',61.60,1.72,'Alemanha'),(4,'Erica Viana','','1993-02-27','F',58.50,1.57,'Brasil'),(5,'Elen Grecco','','1984-05-30','F',64.00,1.59,'Grecia'),(6,'Andressa Urach','','1985-11-10','F',75.00,1.70,'Brasil');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) unsigned DEFAULT NULL,
  `totaulas` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT 2025,
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Algoritmos','Lógica de programação. Você aprenderá sobre o desenvolvimento de soluções com aplicação da lógica de programação, que permite a criação de softwares amigáveis, seguros e funcionais.',40,10,2025),(2,'Excel Essencial','Você aprenderá a criar planilhas e tabelas, fazer gráficos simples, além de salvar arquivos em nuvem e realizar cálculos usando fórmulas e funções de Excel básico.',40,10,2025),(3,'Excel Avançado I','Você aprofundará conhecimentos em funções do Excel avançado para otimizar cálculos e facilitar a construção de planilhas, banco de dados, relatórios e gráficos.',24,6,2025),(4,'Excel Avançado II','Você saberá mais sobre ferramentas avançadas e em recursos de banco de dados no Excel para automatizar tarefas e aprimorar consultas, relatórios, gráficos e cálculos.',24,6,2025),(5,'Formação Excel: do básico ao avançado','Você aprenderá a inserir informações em planilhas, usando recursos, funções e ferramentas avançadas do Excel 365 para criar gráficos, fazer cálculos e manipular dados.',72,18,2025),(6,'Desenvolvedor Web Front-End 1','Você aprenderá a planejar e desenvolver sites responsivos com imagens.',60,15,2025),(7,'Desenvolvedor Web Front-End 2: JavaScript','Você aprenderá como utilizar a codificação JavaScript para criar e usar recursos básicos de interatividade em um site.',40,12,2025),(8,'PHP com MySQL','Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP e do gerenciador de banco de dados MySQL.',40,12,2025),(9,'Lógica de Programação Direcionada a PHP','Você aprenderá a criar algoritmos e desenvolver aplicações e sistemas web com a linguagem de programação PHP.',40,12,2025),(10,'PHP','Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',24,6,2025),(11,'PHP4','Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',32,8,2025),(12,'Photoshop','Você aprenderá como tratar, manipular e editar imagens, utilizando filtros, cores, efeitos de camada e demais recursos do Adobe Photoshop.',36,9,2025),(13,'Photoshop para Mídias Sociais','Você aprenderá técnicas de criação, edição, composição e exportação de conteúdo gráfico para mídias sociais, utilizando recursos e ferramentas do Adobe Photoshop.',36,9,2025),(14,'Python','Você aprenderá a desenvolver programação web por meio da linguagem Python.',32,8,2025),(15,'Python I - fundamentos','Você aprenderá a desenvolver programação web por meio da linguagem Python, que possibilita a pesquisa e a extração de dados de páginas da internet.',44,11,2025),(16,'Python II - desenvolvendo aplicações web','Você aprenderá a desenvolver soluções para a web aplicando linguagem Python em framework de projetos de software e a manipular banco de dados.',60,15,2025),(17,'Introdução à Linguagem Java','Você aprenderá a programar aplicações básicas com a linguagem Java.',40,10,2025),(18,'Formação Front-end','Você aprenderá a planejar e produzir site com imagens, linguagem HTML5, CSS3 e Web Semântica usando codificação JavaScript.',108,27,2025),(19,'Desenvolvedor Web Back-end: NodeJs','Você aprenderá a configurar ambiente Node.js, desenvolvendo código JavaScript e executando no back-end. Também criará APTI Rest para acessar banco de dados e atender requisições HTTPs.',48,12,2025),(20,'POO','Curso de Programação Orientada ao Objeto',60,15,2022),(21,'C++','Curso de C++',40,10,2023),(22,'C#','Curso de C#',24,6,2023),(23,'PowerPoint','Curso completo de PowerPoint',24,6,2023),(24,'Word','Curso completo de Word',24,6,2023),(25,'Pacote Office','Curso de Word, PowerPoint e Excel',60,15,2024),(26,'Hardware','Curso de Montagem e Manutenção de Computadores',36,9,2025),(27,'Redes','Curso de Redes para Iniciantes0',40,10,2021),(28,'Segurança da Informação','Curso de Segurança',16,4,2021);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-07 20:43:12

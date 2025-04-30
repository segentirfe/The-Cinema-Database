CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Temporary view structure for view `actor_dir_sal`
--

DROP TABLE IF EXISTS `actor_dir_sal`;
/*!50001 DROP VIEW IF EXISTS `actor_dir_sal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `actor_dir_sal` AS SELECT 
 1 AS `Actor ID`,
 1 AS `Actor Name`,
 1 AS `Director Name`,
 1 AS `Actor Salary`,
 1 AS `Director Salary`,
 1 AS `Mean Salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `actor_has_movies`
--

DROP TABLE IF EXISTS `actor_has_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_has_movies` (
  `actor_id` int NOT NULL,
  `movie_id` int NOT NULL,
  PRIMARY KEY (`actor_id`,`movie_id`),
  KEY `fk_Lead Actor_has_Movies_Movies1_idx` (`movie_id`),
  KEY `fk_Lead Actor_has_Movies_Lead Actor1_idx` (`actor_id`),
  CONSTRAINT `fk_Lead Actor_has_Movies_Lead Actor1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`),
  CONSTRAINT `fk_Lead Actor_has_Movies_Movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_has_movies`
--

LOCK TABLES `actor_has_movies` WRITE;
/*!40000 ALTER TABLE `actor_has_movies` DISABLE KEYS */;
INSERT INTO `actor_has_movies` VALUES (1,1),(1,2),(2,2),(3,3),(13,3),(4,4),(5,5),(5,6),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(6,18),(18,18),(9,19),(19,19),(20,20);
/*!40000 ALTER TABLE `actor_has_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `actor_salary` varchar(45) NOT NULL,
  `director_id` int NOT NULL,
  PRIMARY KEY (`actor_id`),
  UNIQUE KEY `actor_id_UNIQUE` (`actor_id`),
  KEY `director_id` (`director_id`),
  CONSTRAINT `director_id` FOREIGN KEY (`director_id`) REFERENCES `Director` (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,' Christian','Bale','110,312,888',1),(2,'Leonardo','DiCaprio','50,000,000',2),(3,'Ben','Affleck','50,032,500',3),(4,'Tom ','Hardy','45900000',4),(5,'Elijah','Wood','60,043,265',5),(6,' Daniel','Radcliffe','43,245,565',6),(7,'Will','Smith','43,231,276',7),(8,'Bradley','Cooper','33,321,376',8),(9,'Colin','Firth','80,080,066',9),(10,'Ryan','Reynolds','89,990,055',10),(11,'Robin','Williams','15,000,044',11),(12,'Zachary','Gordon','1,213,221',12),(13,'Jason','Lee','7,655,551',13),(14,'Billy','Crystal','8,767,651',14),(15,'Emilia ','Clarke','7,653,451',15),(16,'Amandla','Stenberg','5,433,551',16),(17,'Bradley','Cooper','7,657,664',17),(18,'Jessica','Biel','65,465,489',18),(19,'Patrick','Wilson','45,500,067',19),(20,'Bill','Skargard','50,000,043',20);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director`
--

DROP TABLE IF EXISTS `Director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Director` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `director_salary` int NOT NULL,
  PRIMARY KEY (`director_id`),
  UNIQUE KEY `director_id_UNIQUE` (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director`
--

LOCK TABLES `Director` WRITE;
/*!40000 ALTER TABLE `Director` DISABLE KEYS */;
INSERT INTO `Director` VALUES (1,'Christopher','Nolan',832000000),(2,' Zack','Snyder',1000000),(3,'George','Miller',99988900),(4,' Peter','Jackson',678987000),(5,'David','Yates',876768),(6,' Francis','Lawrence',879987000),(7,'Todd','Phillips',90076800),(8,' Matthew','Vaughn',98777700),(9,'David','Leitch',87657600),(10,'Shawn','Levy',86576800),(11,'David','Bowers',89965400),(12,'Tim','Hill',765465000),(13,'Pete','Docter',668876000),(14,'Thea','Sharrock',567876000),(15,'Stella','Meghie',788765000),(16,'Bradley','Cooper',456765000),(17,'Marcus','Nispel',765445000),(18,'James','Wan',654678000),(19,'Andy','Muschietti',765576000),(20,'Ryan','Jackson',243657000);
/*!40000 ALTER TABLE `Director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genre` (
  `Genre_id` int NOT NULL AUTO_INCREMENT,
  `Genre_title` varchar(45) NOT NULL,
  PRIMARY KEY (`Genre_id`),
  UNIQUE KEY `Genre_id_UNIQUE` (`Genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'Action'),(2,'Comedy'),(3,'Romance'),(4,'Horror'),(5,'Drama');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lastfiveyears`
--

DROP TABLE IF EXISTS `lastfiveyears`;
/*!50001 DROP VIEW IF EXISTS `lastfiveyears`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lastfiveyears` AS SELECT 
 1 AS `Movie ID`,
 1 AS `Movie Name`,
 1 AS `Genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lowest_rated`
--

DROP TABLE IF EXISTS `lowest_rated`;
/*!50001 DROP VIEW IF EXISTS `lowest_rated`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lowest_rated` AS SELECT 
 1 AS `Genre`,
 1 AS `Lowest Rated Movie Name`,
 1 AS `Rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mg_action`
--

DROP TABLE IF EXISTS `mg_action`;
/*!50001 DROP VIEW IF EXISTS `mg_action`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mg_action` AS SELECT 
 1 AS `Movie ID`,
 1 AS `Movie name`,
 1 AS `Genre name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genre` (
  `movie_id` int NOT NULL,
  `Genre_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`Genre_id`),
  KEY `fk_movies_has_Genre Table_Genre Table1_idx` (`Genre_id`),
  KEY `fk_movies_has_Genre Table_movies1_idx` (`movie_id`),
  CONSTRAINT `fk_movies_has_Genre Table_Genre Table1` FOREIGN KEY (`Genre_id`) REFERENCES `Genre` (`Genre_id`),
  CONSTRAINT `fk_movies_has_Genre Table_movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (1,1),(2,1),(3,1),(4,1),(7,1),(9,1),(10,1),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,3),(16,3),(18,4),(19,4),(20,4),(2,5),(5,5),(6,5),(15,5),(16,5),(17,5);
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `Year` int NOT NULL,
  `Durations` int NOT NULL,
  `company_id` int NOT NULL,
  `director_id` int NOT NULL,
  `Rating_id` int NOT NULL,
  PRIMARY KEY (`movie_id`),
  UNIQUE KEY `movie_id_UNIQUE` (`movie_id`),
  KEY `fk_Movies_Director1_idx` (`director_id`),
  KEY `Rating_id` (`Rating_id`),
  KEY `fk_Movies_Production Company` (`company_id`),
  CONSTRAINT `fk_Movies_Director1` FOREIGN KEY (`director_id`) REFERENCES `Director` (`director_id`),
  CONSTRAINT `fk_Movies_Production Company` FOREIGN KEY (`company_id`) REFERENCES `ProductionCompany` (`company_id`),
  CONSTRAINT `Rating_id` FOREIGN KEY (`Rating_id`) REFERENCES `Rating` (`Rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Dark Knight ',2008,152,1,1,1),(2,'Inception',2010,162,3,2,2),(3,'Batman Vs Superman: Dawn of Justice ',2016,183,3,3,20),(4,'Mad Max Fury Road ',2015,120,2,4,18),(5,'The Lord of the Rings: The Return of the King',2003,201,4,5,3),(6,'Harry Potter and the Order of the Phoenix',2007,142,5,6,4),(7,'I Am Legend ',2007,104,6,7,5),(8,'The Hangover II',2011,108,3,8,9),(9,'Kingsman: The Secret Service ',2014,130,1,9,10),(10,'Deadpool 2 ',2018,134,1,10,11),(11,'Night at the Museum: Secret of the Tomb',2014,98,2,11,12),(12,'Diary of a Wimpy Kid: Rodrick Rules',2011,100,7,12,15),(13,'Alvin and the Chipmunks',2007,92,7,13,16),(14,'Monsters, Inc.',2001,96,5,14,17),(15,'Me Before You ',2016,111,8,15,8),(16,'Everything, Everything',2017,96,8,16,7),(17,'A Star is Born',2018,134,8,17,13),(18,'The Texas Chainsaw Massacre',2003,113,9,18,19),(19,'The Conjuring',2013,152,9,19,6),(20,'It',2017,135,9,20,14);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductionCompany`
--

DROP TABLE IF EXISTS `ProductionCompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductionCompany` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) NOT NULL,
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `company_id_UNIQUE` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductionCompany`
--

LOCK TABLES `ProductionCompany` WRITE;
/*!40000 ALTER TABLE `ProductionCompany` DISABLE KEYS */;
INSERT INTO `ProductionCompany` VALUES (1,'Warner Bros.'),(2,'New Line Cinema'),(3,'Twentieth Century Fox'),(4,'Fox 2000 Pictures'),(5,'Pixar Animation Studios'),(6,'Metro-Goldwyn-Mayer (MGM)'),(7,'Alloy Entertainment'),(8,'Warner Bros. Pictures'),(9,'New Line Cinema');
/*!40000 ALTER TABLE `ProductionCompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rating`
--

DROP TABLE IF EXISTS `Rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rating` (
  `Rating_id` int NOT NULL AUTO_INCREMENT,
  `rating_number` decimal(9,2) NOT NULL,
  PRIMARY KEY (`Rating_id`),
  UNIQUE KEY `Rating_id_UNIQUE` (`Rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rating`
--

LOCK TABLES `Rating` WRITE;
/*!40000 ALTER TABLE `Rating` DISABLE KEYS */;
INSERT INTO `Rating` VALUES (1,0.50),(2,1.00),(3,1.50),(4,2.00),(5,2.50),(6,3.00),(7,3.50),(8,4.00),(9,4.50),(10,5.00),(11,5.50),(12,6.00),(13,6.50),(14,7.00),(15,7.50),(16,8.00),(17,8.50),(18,9.00),(19,9.50),(20,10.00);
/*!40000 ALTER TABLE `Rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sameproductioncompany`
--

DROP TABLE IF EXISTS `sameproductioncompany`;
/*!50001 DROP VIEW IF EXISTS `sameproductioncompany`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sameproductioncompany` AS SELECT 
 1 AS `Company ID`,
 1 AS `Company Name`,
 1 AS `Movie Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `actor_dir_sal`
--

/*!50001 DROP VIEW IF EXISTS `actor_dir_sal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `actor_dir_sal` AS select `actors`.`actor_id` AS `Actor ID`,concat(`actors`.`first_name`,' ',`actors`.`last_name`) AS `Actor Name`,concat(`director`.`first_name`,' ',`director`.`last_name`) AS `Director Name`,`actors`.`actor_salary` AS `Actor Salary`,`director`.`director_salary` AS `Director Salary`,(`actors`.`actor_salary` + (`director`.`director_salary` / 2)) AS `Mean Salary` from (`actors` left join `director` on(((`actors`.`actor_id` = `director`.`director_id`) and (0 <> `director`.`director_salary`)))) order by `actors`.`actor_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lastfiveyears`
--

/*!50001 DROP VIEW IF EXISTS `lastfiveyears`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lastfiveyears` AS select `movies`.`movie_id` AS `Movie ID`,`movies`.`Title` AS `Movie Name`,group_concat(`genre`.`Genre_title` separator ', ') AS `Genre` from ((`movies` join `genre`) join `movie_genre`) where ((`movies`.`Year` < 2020) and (`movies`.`Year` > 2015) and (`genre`.`Genre_id` = `movie_genre`.`Genre_id`) and (`movies`.`movie_id` = `movie_genre`.`movie_id`)) group by `movies`.`movie_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lowest_rated`
--

/*!50001 DROP VIEW IF EXISTS `lowest_rated`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lowest_rated` AS select `genre`.`Genre_title` AS `Genre`,`movies`.`Title` AS `Lowest Rated Movie Name`,`rating`.`rating_number` AS `Rating` from (((`genre` join `movies`) join `movie_genre`) join `rating`) where ((`genre`.`Genre_id` = `movie_genre`.`Genre_id`) and (`movies`.`movie_id` = `movie_genre`.`movie_id`) and (`movies`.`Rating_id` = `rating`.`Rating_id`) and (`genre`.`Genre_title`,`movies`.`Rating_id`) in (select `genre`.`Genre_title`,min(`movies`.`Rating_id`) from ((`genre` join `movies`) join `movie_genre`) where ((`genre`.`Genre_id` = `movie_genre`.`Genre_id`) and (`movies`.`movie_id` = `movie_genre`.`movie_id`)) group by `genre`.`Genre_title`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mg_action`
--

/*!50001 DROP VIEW IF EXISTS `mg_action`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mg_action` AS select `movies`.`movie_id` AS `Movie ID`,`movies`.`Title` AS `Movie name`,`genre`.`Genre_title` AS `Genre name` from ((`movies` join `movie_genre` on((`movies`.`movie_id` = `movie_genre`.`movie_id`))) join `genre` on((`movie_genre`.`Genre_id` = `genre`.`Genre_id`))) where (`genre`.`Genre_id` = 1) order by `movies`.`movie_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sameproductioncompany`
--

/*!50001 DROP VIEW IF EXISTS `sameproductioncompany`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sameproductioncompany` AS select `movies`.`company_id` AS `Company ID`,`productioncompany`.`company_name` AS `Company Name`,group_concat(`movies`.`Title` separator ', ') AS `Movie Name` from (`movies` join `productioncompany` on((`movies`.`company_id` = `productioncompany`.`company_id`))) where `movies`.`company_id` in (select `movies`.`company_id` from `movies` group by `movies`.`company_id` having (count(0) > 1)) group by `movies`.`company_id` */;
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

-- Dump completed on 2020-12-14 20:19:36

-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: artisan_db
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artisan_app_blogcategory`
--

DROP TABLE IF EXISTS `artisan_app_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_blogcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_blogcategory`
--

LOCK TABLES `artisan_app_blogcategory` WRITE;
/*!40000 ALTER TABLE `artisan_app_blogcategory` DISABLE KEYS */;
INSERT INTO `artisan_app_blogcategory` VALUES (1,'retete'),(2,'children');
/*!40000 ALTER TABLE `artisan_app_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_blogpost`
--

DROP TABLE IF EXISTS `artisan_app_blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_blogpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `text` longtext,
  `featured` tinyint(1) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artisan_app_blogpost_author_id_f2ecddea_fk_auth_user_id` (`author_id`),
  KEY `artisan_app_blogpost_category_id_6aa7ae3c_fk_artisan_a` (`category_id`),
  KEY `artisan_app_blogpost_slug_d1e89ae4` (`slug`),
  CONSTRAINT `artisan_app_blogpost_author_id_f2ecddea_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `artisan_app_blogpost_category_id_6aa7ae3c_fk_artisan_a` FOREIGN KEY (`category_id`) REFERENCES `artisan_app_blogcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_blogpost`
--

LOCK TABLES `artisan_app_blogpost` WRITE;
/*!40000 ALTER TABLE `artisan_app_blogpost` DISABLE KEYS */;
INSERT INTO `artisan_app_blogpost` VALUES (1,'Noua reteta de Pavlova cu ciocolata','menu/97327014_1406630899527408_6540423567543107584_o.jpg','<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>',1,'noua-reteta-de-pavlova-cu-ciocolata','2021-03-18 21:18:40.492923','Published',1,1),(2,'Sourdough Bread','menu/Paine_cu_dovleac_ii.JPG','<p>Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;Bread bread bread&nbsp;</p>',1,'sourdough-bread','2021-03-19 09:36:31.869943','Published',1,1),(3,'Croissanti si bebelusi','menu/_MG_9240.jpg','<p>Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...Bebelusi si croissanti si inca ceva...</p>',1,'croissanti-si-bebelusi','2021-03-19 09:37:55.625966','Published',1,2),(4,'Cozonacii cei de toate zilele','menu/85009995_1334071020116730_6217350647159717888_o.jpg','<p>Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...Cozonaci si iar cozonaci...</p>',1,'cozonacii-cei-de-toate-zilele','2021-03-19 09:38:42.263735','Published',1,1),(5,'Kids','menu/_MG_9413.jpg','<p>Kids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raiseKids are wonderful and hard to raise</p>',1,'kids','2021-03-19 09:39:57.976288','Published',1,2);
/*!40000 ALTER TABLE `artisan_app_blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_blogpost_likes`
--

DROP TABLE IF EXISTS `artisan_app_blogpost_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_blogpost_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogpost_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `artisan_app_blogpost_likes_blogpost_id_user_id_f5361b68_uniq` (`blogpost_id`,`user_id`),
  KEY `artisan_app_blogpost_likes_user_id_792bfe3e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `artisan_app_blogpost_blogpost_id_38e220e7_fk_artisan_a` FOREIGN KEY (`blogpost_id`) REFERENCES `artisan_app_blogpost` (`id`),
  CONSTRAINT `artisan_app_blogpost_likes_user_id_792bfe3e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_blogpost_likes`
--

LOCK TABLES `artisan_app_blogpost_likes` WRITE;
/*!40000 ALTER TABLE `artisan_app_blogpost_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `artisan_app_blogpost_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_comment`
--

DROP TABLE IF EXISTS `artisan_app_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `text` longtext NOT NULL,
  `active` tinyint(1) NOT NULL,
  `post_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artisan_app_comment_post_id_52199a71_fk_artisan_app_blogpost_id` (`post_id`),
  KEY `artisan_app_comment_parent_id_08c8b5c2_fk_artisan_app_comment_id` (`parent_id`),
  CONSTRAINT `artisan_app_comment_parent_id_08c8b5c2_fk_artisan_app_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `artisan_app_comment` (`id`),
  CONSTRAINT `artisan_app_comment_post_id_52199a71_fk_artisan_app_blogpost_id` FOREIGN KEY (`post_id`) REFERENCES `artisan_app_blogpost` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_comment`
--

LOCK TABLES `artisan_app_comment` WRITE;
/*!40000 ALTER TABLE `artisan_app_comment` DISABLE KEYS */;
INSERT INTO `artisan_app_comment` VALUES (1,'daniel','2021-04-02 12:17:34.729454','contact@artisanbakery.ro','fuck you',1,4,NULL),(2,'alex','2021-04-02 12:17:43.175378','contact@artisanbakery.ro','fuck you',1,4,NULL),(6,'george','2021-04-02 12:26:25.366039','contact@artisanbakery.ro','i don\'t like this website',1,4,NULL),(9,'ioana','2021-04-02 16:07:58.866295','ioanad.ungureanu@gmail.com','fuck you',1,5,NULL),(10,'alina','2021-04-02 16:09:38.949135','ioanad.ungureanu@gmail.com','fuck you',1,5,NULL),(11,'bulina','2021-04-02 16:10:14.716035','ioanad.ungureanu@gmail.com','fuck you',1,5,NULL),(12,'basina','2021-04-02 16:11:55.893433','ioanad.ungureanu@gmail.com','fuck you',1,5,NULL),(13,'golana','2021-04-02 16:12:08.421385','ioanad.ungureanu@gmail.com','fuck you',1,5,NULL),(14,'ion','2021-04-02 19:33:26.876967','ionion@gmail.com','Imi plac bebelusii!',1,3,NULL),(24,'paul','2021-04-02 20:50:05.475983','paul@cuc.rp','salut! ',1,4,NULL),(25,'paul','2021-04-02 21:09:03.804804','paul@cuc.rp','salut! ',1,4,NULL),(26,'paul','2021-04-02 21:10:13.423505','paul@cuc.rp','salut! ',1,4,NULL);
/*!40000 ALTER TABLE `artisan_app_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_event`
--

DROP TABLE IF EXISTS `artisan_app_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `tax` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_event`
--

LOCK TABLES `artisan_app_event` WRITE;
/*!40000 ALTER TABLE `artisan_app_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `artisan_app_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_gallery`
--

DROP TABLE IF EXISTS `artisan_app_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) NOT NULL,
  `type` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_gallery`
--

LOCK TABLES `artisan_app_gallery` WRITE;
/*!40000 ALTER TABLE `artisan_app_gallery` DISABLE KEYS */;
INSERT INTO `artisan_app_gallery` VALUES (4,'interior/Artisan_Bakery-1475.jpg','Interior','Ioana-glove'),(5,'interior/DSC00465.JPG','Interior','Oven-ioana'),(6,'interior/DSC00542.JPG','Interior','Ioana and ioana and lots of cake'),(7,'interior/Ambient_artisan_B_VOD9nrq.jpg','Interior','Ambient'),(8,'interior/54432863_1074361532754348_3030287216183083008_o.jpg','Interior','Workshop-kindergarden'),(9,'interior/_MG_9642.jpg','Recipes','Trio-cake'),(10,'interior/_MG_9921rs.jpg','Recipes','Cookies-tarts'),(11,'interior/_MG_9904rs.jpg','Recipes','Dart-vader'),(12,'interior/_MG_9734.jpg','Recipes','Maria-birthday1'),(13,'interior/100560139_1415210148669483_4567463020808110080_o.jpg','Recipes','Chocolate-strawberries'),(14,'interior/DSC00544.JPG','Interior','many-cakes'),(15,'interior/Saratele_cu_parmezan_si_susan.jpg','Recipes','Saratele');
/*!40000 ALTER TABLE `artisan_app_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_menu`
--

DROP TABLE IF EXISTS `artisan_app_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_name` varchar(150) NOT NULL,
  `description` longtext,
  `price_tag` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `type` varchar(150) NOT NULL,
  `measurement` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `artisan_app_menu_slug_8af2c878` (`slug`),
  KEY `artisan_app_menu_category_id_37be50b4_fk_artisan_a` (`category_id`),
  CONSTRAINT `artisan_app_menu_category_id_37be50b4_fk_artisan_a` FOREIGN KEY (`category_id`) REFERENCES `artisan_app_recipecategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_menu`
--

LOCK TABLES `artisan_app_menu` WRITE;
/*!40000 ALTER TABLE `artisan_app_menu` DISABLE KEYS */;
INSERT INTO `artisan_app_menu` VALUES (3,'Tort Medovik cu miere','<p>Foi multe si pufoase insiropate cu miere si straturi de crema, o simbioza perfecta, insa nu foarte dulce si usor acrisor, datorita catinei sau portocalelor. Garantam o experienta de neuitat!</p>',75,'menu/Tort_Medovik_IIR_1epczwo.jpg',4,'tort-medovik-cu-miere',1,'menu_torturi','LEI/KG'),(4,'Placinte sarate cu umplutura','<p>Placinte simple dar foarte gustoase, din ingrediente 100 % naturale, cu foi asa cum se fac la tara. Le umplem cu telemea de vaca, ciuperci sau varza proaspata.</p>',55,'menu/_MG_9197r_DNBYfFb.JPG',6,'placinte-sarate-cu-umplutura',0,'.menu_breakfast','LEI/KG'),(5,'Tarta cu spanac si branza','<p>O tarta potrivita pentru gusturile care prefera sare cat mai putina, branza Ricotta nefiind sarata. Combinatia cu spanac o face si foarte sanatoasa!</p>',50,'menu/DSC09038_2_4gsYH2q.jpg',6,'tarta-cu-spanac-si-branza',0,'.menu_breakfast','LEI/KG'),(6,'Biscuiti cu parmezan si mac','<p>Biscuiti usor sarati datorita parmezanului, condimentati cu diverse seminte, printre care si mac, susan, dovleac etc.</p>',65,'menu/20190218214754__MG_8009.JPG',7,'biscuiti-cu-parmezan-si-mac',0,'.menu_breakfast','LEI/KG'),(8,'Paine integrala cu in','<p>Paine dospita 100% cu maia. Contine doar faina ecologica de la Moara cu Pietre, apa, sare de salina, seminte de in.</p>',11,'menu/integrala_I0US0wC.JPG',3,'paine-integrala-cu-in',0,'.menu_breakfast','LEI/KG'),(9,'Cheesecake cu caise','<p>Mascarponele proaspat si caisele sunt cu siguranta o combinatie interesanta!</p>',65,'menu/_MG_9628.jpg',10,'cheesecake-cu-caise',1,'.menu_breakfast','LEI/KG'),(10,'Tort cu zmeura si ciocolata','<p>Ciocolata neagra si cu lapte, Callebaut, de calitate belgiana, cu zmeura. Ce combinatie mai buna ar exista?</p>',80,'menu/_MG_0527.jpg',4,'tort-cu-zmeura-si-ciocolata',1,'torturi','LEI/KG'),(11,'Cheesecake cu fructe de padure','<p>Branza de vaci de calitate si multe fructe de padure, intr-o combinatie oarecum clasica, dar niciodata demodata!</p>',60,'menu/Cheesecake_cu_fructe_de_padure_Z47swWe.jpg',10,'cheesecake-cu-fructe-de-padure',1,'menu_cheesecake','LEI/KG'),(12,'Tarta cu pere si ciocolata','<p>Pere cu ciocolata? Daca nu ati mai auzit de combinatia asta va incurajam sa o testati la noi!</p>',68,'menu/69363593_1190203527836814_991632623509962752_o_1.jpg',5,'tarta-cu-pere-si-ciocolata',1,'tarte','LEI/KG'),(13,'Minitarte cu caramel si arahide','<p>Caramel usor sarat, arahide, migdale, caju si nuci. Delicios e putin spus.</p>',10,'menu/minitarte_cu_caramel.jpg',5,'minitarte-cu-caramel-si-arahide',1,'menu_tarte','LEI/BUC'),(14,'Paine intermediara cu seminte','<p>Paine dospita ca la noi, doar cu maia. Contine faina integrala, faina alba, apa, sare, seminte diverse.</p>',12,'menu/DSC00351.JPG',3,'paine-intermediara-cu-seminte',1,'.menu_breakfast','LEI/KG'),(15,'Paine intermediara cu sfecla si chimen','<p>Faina integrala si faina alba, sfecla rosie, chimen, apa si sare de salina.</p>',12,'menu/Paine_cu_sfecla_GQ7cgwr.JPG',3,'paine-intermediara-cu-sfecla-si-chimen',0,'.menu_breakfast','LEI/KG'),(16,'Paine intermediara cu turmeric, mac si ceapa','<p>Faina integrala si faina alba, mac, fulgi de ceapa, turmeric, apa si sare de salina.</p>',12,'menu/Paine_cu_turmeric_mac_ceapa.JPG',3,'paine-intermediara-cu-turmeric-mac-si-ceapa',0,'.menu_breakfast','LEI/KG'),(17,'Tort cu capsuni si ciocolata','<p>Muulta ciocolata sub forma de mousse, multa energie, dar cu zahar putin si capsuni delicioase! O combinatie perfecta!</p>',82,'menu/100560139_1415210148669483_4567463020808110080_o.jpg',4,'tort-cu-capsuni-si-ciocolata',1,'.menu_breakfast','LEI/KG'),(18,'Tort cu piersici si fructe de padure','<p>Racoritor si aromat, acest tort se potriveste oricarei ocazii dar mai ales in sezonul cald, atunci cand piersicile se coc in mod natural. Combinatia de piersici proaspete, crema de branza, vanilie din pastai si fructe de padure lasa gura apa oricarui pofticios, mic sau mare.</p>',75,'menu/tort_cu_piersici.JPG',4,'tort-cu-piersici-si-fructe-de-padure',0,'.menu_breakfast','LEI/KG'),(19,'Tort cu mascarpone si fr de padure','<p>Invelis de ciocolata cu lapte, de calitate belgiana, mascarpone, smantana si fructe de padure, o combinatie de neuitat!</p>',80,'menu/_MG_9145.JPG',4,'tort-cu-mascarpone-si-fr-de-padure',0,'.menu_breakfast','LEI/KG'),(20,'Tort Trio de ciocolata','<p>Mousse de ciocolata alba, mousse de ciocolata cu lapte si mousse de ciocolata neagra, blat de cacao. O nebunie de ciocolata care a intrat deja in notorietate!</p>',69,'menu/MInitorturi_trio_de_ciocolata.jpg',4,'tort-trio-de-ciocolata',1,'.menu_breakfast','LEI/KG'),(21,'Tort cu lemon curd, fistic si zmeura','<p>Lemonul curd acrisor plus aromele fisticului si a zmeurei fac acest tort atat delicios, echilibrat, cu textura cremoasa si nu prea dulce, cat si atragator vizual.</p>',85,'menu/_MG_9588.jpg',4,'tort-cu-lemon-curd-fistic-si-zmeura',0,'.menu_breakfast','LEI/KG'),(22,'Tort Padurea Neagra','<p>O reteta germana clasica, foarte indragita si de romani, cu multa ciocolata si sos de cirese proaspete. Cand se gasesc...</p>',68,'menu/Tort_padurea_neagra.JPG',4,'tort-padurea-neagra',0,'.menu_breakfast','LEI/KG'),(23,'Tort cu piersici si iaurt','<p>Ciocolata cu lapte de calitate belgiana Callebaut, piersici proaspete si muuult iaurt grecesc 10% grasime. Nu va convinge?</p>',70,'menu/Tort_cu_piersici_si_iaurt.jpg',4,'tort-cu-piersici-si-iaurt',1,'.menu_breakfast','LEI/KG'),(24,'Tort cu iaurt si coacaze negre','<p>Un tort aerat, cu straturi de coacaze negre, iaurt grecesc 10% si crema de lapte...o combinatie care il face cel mai bun tort cu coacaze negre din lume! Mai rezisti? Majoritatea clientilor nu reusesc.</p>',75,'menu/Tort_cu_coacaze_negre.JPG',4,'tort-cu-iaurt-si-coacaze-negre',0,'.menu_breakfast','LEI/KG'),(25,'Tort cu caise si lavanda','<p>O cascada de caise si frisca din smantana. Va invitam sa incercati acest tort cu caise, smantana de calitate Olympus, flori de lavanda si alte ingrediente din surse sigure si de calitate.</p>',79,'menu/Tort_cu_caise_si_lavanda.jpg',4,'tort-cu-caise-si-lavanda',0,'.menu_breakfast','LEI/KG'),(26,'Tort cu mousse de ghimbir si mango','<p>Un desert foarte aromat si special, unde ghimbirul confiat se intrepatrunde cu ciocolata alba, smantana dulce, si mango. Mmm...cu siguranta va va lasa gura apa!</p>',79,'menu/Tort_cu_mango_si_ghimbir.JPG',4,'tort-cu-mousse-de-ghimbir-si-mango',0,'.menu_breakfast','LEI/KG'),(27,'Tort cu mango, lamaie si mac','<p>Este un tort unde aromele principale sunt mango si lamaie, cu o tenta usoara de vanilie, extrasa de noi traditional, din pastai. Semintele de mac sunt o pereche perfecta pentru zeama de lamaie, impreuna aducand un gust echilibrat. Aportul caloric nu este chiar mic.</p>',85,'menu/Tort_cu_mousse_de_mango_si_mac.jpg',4,'tort-cu-mango-lamaie-si-mac',0,'.menu_breakfast','LEI/KG'),(28,'Tort Fraisier','<p>Un tort plin de capsuni gustoase, alaturi de migdale si vanilie extrasa traditional din pastai adevarate. Este putin dulce si racoros!</p>',72,'menu/Tort_Fraisier.jpg',4,'tort-fraisier',1,'.menu_breakfast','LEI/KG'),(29,'Tort de gutui si ciocolata','<p>O veritabila reteta de toamna! Gutuile pentru a ne aminti de ce iubim toamna, iar ciocolata pentru a ne da energie in zilele ploioase si friguroase de toamna.</p>',72,'menu/Tort_de_gutui.jpg',4,'tort-de-gutui-si-ciocolata',0,'.menu_breakfast','LEI/KG'),(30,'Tort cu orez si fructe de padure','<p>Un tort unde granulatia maricica a budincii de orez creeaza un contrast placut cu stratul de mousse de fructe de padure. Nu prea dulce, blat aromat, topping de cioco alba sau alt tip la cerere.</p>',80,'menu/tort_cu_orez.JPG',4,'tort-cu-orez-si-fructe-de-padure',0,'.menu_breakfast','LEI/KG'),(31,'Tort cu zmeura si pannacotta','<p>Mousse racoritor de zmeura, panna cotta, jeleu de zmeura topping, in contrast cu un blat crocant si insertia de blat de ciocolata belgiana fina.</p>',78,'menu/Tort_cu_zmeura_si_pannacotta.jpg',4,'tort-cu-zmeura-si-pannacotta',0,'.menu_breakfast','LEI/KG'),(32,'Tort cu zmeura si sampanie','<p>Ceva deosebit, potrivit pentru momentele cele mai speciale, dar si cand doar doriti ceva racoritor, acrisor.</p>',75,'menu/Tort_cu_sampanie.jpg',4,'tort-cu-zmeura-si-sampanie',0,'.menu_breakfast','LEI/KG'),(33,'Tort cu mango si lime','<p>O combinatie de texturi si desavarsite: aroma racoritoare de lime, dulceata subtila de ciocolata alba, textura de nuca glazurata si un blat pufos din miere si cacao.</p>',81,'menu/Tort_cu_mango_si_lime.jpg',4,'tort-cu-mango-si-lime',0,'.menu_breakfast','LEI/KG'),(34,'Tort Egiptean','<p>Desi denumirea duce cu gandul la Egipt, este putin probabil sa fie o reteta de origine egipteana. Insa este un tort foarte cautat, foarte cremos si foarte aromat, nu foarte dulce insa!</p>',69,'menu/96688098_1406630242860807_1901802464877740032_o.jpg',4,'tort-egiptean',0,'.menu_breakfast','LEI/KG'),(35,'Biscuiti digestivi','<p>Biscuiti 100% artizanali, naturali, simpli, cu lapte, faina integrala premium, unt, fulgi de ovaz si putin zahar brun.</p>',35,'menu/digestivi.JPG',7,'biscuiti-digestivi',0,'.menu_breakfast','LEI/KG'),(36,'Fursecuri fine cu nuci si gem','<p>Fursecuri care se topesc in gura la propriu, invelite in nuca si cu putin magium.</p>',65,'menu/fursecuri_fine_cu_nuca.jpg',7,'fursecuri-fine-cu-nuci-si-gem',0,'.menu_breakfast','LEI/KG'),(37,'Biscuiti Anzac cu miere','<p>Biscuiti consistenti, cu nuca de cocos, miere, stafide, faina premium, cum v-am obisnuit.</p>',60,'menu/biscuiti_Anzac.jpg',7,'biscuiti-anzac-cu-miere',0,'.menu_breakfast','LEI/KG'),(38,'Biscuiti Linzer','<p>Biscuiti aratosi dar si deliciosi, cu dulceata de zmeura de calitate. Incercati si va veti convinge!</p>',64,'menu/Biscuiti_linzer.JPG',7,'biscuiti-linzer',0,'.menu_breakfast','LEI/KG');
/*!40000 ALTER TABLE `artisan_app_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_newsletteruser`
--

DROP TABLE IF EXISTS `artisan_app_newsletteruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_newsletteruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `conf_num` varchar(15) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_newsletteruser`
--

LOCK TABLES `artisan_app_newsletteruser` WRITE;
/*!40000 ALTER TABLE `artisan_app_newsletteruser` DISABLE KEYS */;
INSERT INTO `artisan_app_newsletteruser` VALUES (1,'proba15@gmail.com','497226868278',0,'2021-03-28 20:15:23.250131'),(2,'proba15@gmail.com','933778226261',0,'2021-03-28 20:15:51.078902'),(3,'proba15@gmail.com','312096297820',0,'2021-03-28 20:16:05.498522'),(4,'proba15@gmail.com','008166793749',0,'2021-03-28 20:17:14.738563'),(5,'proba15@gmail.com','249797200474',0,'2021-03-28 20:17:21.248913'),(6,'proba16@gmail.com','',0,'2021-03-28 21:11:03.104449'),(7,'proba16@gmail.com','478528070518',0,'2021-03-28 21:16:41.021336'),(8,'proba17@gmail.com','900204539148',0,'2021-03-28 21:17:36.757028'),(9,'ungureanu.daniel86@gmail.com','194702510395',0,'2021-03-28 21:17:59.192180'),(10,'proba18@gmail.com','277743880626',0,'2021-03-28 21:28:49.608600'),(11,'proba19@testemail.com','086143463759',0,'2021-03-29 05:11:20.439350'),(12,'None','336938220098',0,'2021-03-29 10:01:13.380502'),(13,'None','966116695830',0,'2021-03-29 10:03:00.078164'),(14,'None','431213448030',0,'2021-03-29 10:05:07.029634');
/*!40000 ALTER TABLE `artisan_app_newsletteruser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_ourfact`
--

DROP TABLE IF EXISTS `artisan_app_ourfact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_ourfact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_en` varchar(20) NOT NULL,
  `category_ro` varchar(20) NOT NULL,
  `figures` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_ourfact`
--

LOCK TABLES `artisan_app_ourfact` WRITE;
/*!40000 ALTER TABLE `artisan_app_ourfact` DISABLE KEYS */;
INSERT INTO `artisan_app_ourfact` VALUES (1,'Opening','Deschidere','2018'),(2,'Clients','Clienti','15.636'),(3,'Hours in kitchen','Ore in bucatarie','5.795'),(4,'Kg of cookies','Kg de prajiturele','10.402'),(5,'Kg of cake','Kg de tort','2.562');
/*!40000 ALTER TABLE `artisan_app_ourfact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_postviews`
--

DROP TABLE IF EXISTS `artisan_app_postviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_postviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IPAddres` char(39) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `artisan_app_postview_post_id_6c8d8bc8_fk_artisan_a` (`post_id`),
  CONSTRAINT `artisan_app_postview_post_id_6c8d8bc8_fk_artisan_a` FOREIGN KEY (`post_id`) REFERENCES `artisan_app_blogpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_postviews`
--

LOCK TABLES `artisan_app_postviews` WRITE;
/*!40000 ALTER TABLE `artisan_app_postviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `artisan_app_postviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_quote`
--

DROP TABLE IF EXISTS `artisan_app_quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `author` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_quote`
--

LOCK TABLES `artisan_app_quote` WRITE;
/*!40000 ALTER TABLE `artisan_app_quote` DISABLE KEYS */;
/*!40000 ALTER TABLE `artisan_app_quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_recipecategory`
--

DROP TABLE IF EXISTS `artisan_app_recipecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_recipecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artisan_app_recipecategory_slug_cf461de1` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_recipecategory`
--

LOCK TABLES `artisan_app_recipecategory` WRITE;
/*!40000 ALTER TABLE `artisan_app_recipecategory` DISABLE KEYS */;
INSERT INTO `artisan_app_recipecategory` VALUES (3,'paine cu maia','paine-cu-maia'),(4,'torturi','torturi'),(5,'tarte','tarte'),(6,'sarate','sarate'),(7,'fursecuri','fursecuri'),(8,'cafea','cafea'),(9,'prajituri diverse','prajituri-diverse'),(10,'cheesecake','cheesecake');
/*!40000 ALTER TABLE `artisan_app_recipecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_review`
--

DROP TABLE IF EXISTS `artisan_app_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_review`
--

LOCK TABLES `artisan_app_review` WRITE;
/*!40000 ALTER TABLE `artisan_app_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `artisan_app_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_sendemail`
--

DROP TABLE IF EXISTS `artisan_app_sendemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_sendemail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `body` longtext,
  `timestamp` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `footer_id` int(11) DEFAULT NULL,
  `subscribers_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artisan_app_sendemail_author_id_ebf0e932_fk_auth_user_id` (`author_id`),
  KEY `artisan_app_sendemai_footer_id_13489a7d_fk_artisan_a` (`footer_id`),
  KEY `artisan_app_sendemai_subscribers_id_a30c53bc_fk_artisan_a` (`subscribers_id`),
  CONSTRAINT `artisan_app_sendemai_footer_id_13489a7d_fk_artisan_a` FOREIGN KEY (`footer_id`) REFERENCES `artisan_app_sendemailfooter` (`id`),
  CONSTRAINT `artisan_app_sendemai_subscribers_id_a30c53bc_fk_artisan_a` FOREIGN KEY (`subscribers_id`) REFERENCES `artisan_app_newsletteruser` (`id`),
  CONSTRAINT `artisan_app_sendemail_author_id_ebf0e932_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_sendemail`
--

LOCK TABLES `artisan_app_sendemail` WRITE;
/*!40000 ALTER TABLE `artisan_app_sendemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `artisan_app_sendemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_sendemailfooter`
--

DROP TABLE IF EXISTS `artisan_app_sendemailfooter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_sendemailfooter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_sendemailfooter`
--

LOCK TABLES `artisan_app_sendemailfooter` WRITE;
/*!40000 ALTER TABLE `artisan_app_sendemailfooter` DISABLE KEYS */;
INSERT INTO `artisan_app_sendemailfooter` VALUES (1,'<h3 style=\"color:#aaaaaa; font-style:italic\"><span style=\"color:#000000\"><code><tt>Cu drag!</tt></code></span></h3>\r\n\r\n<p><big><strong><em>Ioana Ungureanu</em></strong></big></p>\r\n\r\n<h6 style=\"color:#aaaaaa; font-style:italic\"><q><big><em>Before you print, think about the environment!</em></big></q></h6>');
/*!40000 ALTER TABLE `artisan_app_sendemailfooter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_slogan`
--

DROP TABLE IF EXISTS `artisan_app_slogan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_slogan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(200) NOT NULL,
  `text` longtext,
  `timestamp` datetime(6) NOT NULL,
  `motto` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_slogan`
--

LOCK TABLES `artisan_app_slogan` WRITE;
/*!40000 ALTER TABLE `artisan_app_slogan` DISABLE KEYS */;
INSERT INTO `artisan_app_slogan` VALUES (2,'The Artisan Bakery','<p>Prajituri de casa, naturale, din retete simple, traditionale, realizate cu pasiune, utilizand ingrediente locale.</p>','2021-02-28 20:00:17.275362','Cake & Coffee Shop');
/*!40000 ALTER TABLE `artisan_app_slogan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_story`
--

DROP TABLE IF EXISTS `artisan_app_story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `our_story` longtext,
  `traditions` longtext,
  `service` longtext,
  `history` longtext,
  `history_image` varchar(100) NOT NULL,
  `service_image` varchar(100) NOT NULL,
  `traditions_image` varchar(100) NOT NULL,
  `about_us_page` longtext,
  `motto` varchar(200) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `about_us_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_story`
--

LOCK TABLES `artisan_app_story` WRITE;
/*!40000 ALTER TABLE `artisan_app_story` DISABLE KEYS */;
INSERT INTO `artisan_app_story` VALUES (1,'<p>Suntem o echipa&nbsp;mica&nbsp;de pasionati de gustari sarate si prajituri simple. Iubim bunul gust, acela simplu in care poti identifica usor ingredientele de valoare, dar in acelasi timp delicat si subtil. Acest loc s-a nascut din dorinta de oferi acces tuturor la prajiturelele pe care noi le gatim acasa&nbsp;pentru familia si copiii nostri. Toate produsele noastre sunt facute cu multa&nbsp;dragoste, grija, atentie si cu multa&nbsp;pasiune. Ne place ciocolata, ne plac branzeturile si iaurturile, fructele si legumele, dar mai ales, ne place sa&nbsp;le combinam in retete delicioase si hranitoare. Ne dorim ca pasiunea noastra sa&nbsp;aduca&nbsp;un plus de valoare placintelor si prajiturelelor cu care suntem obisnuiti si sa&nbsp;descoperiti ca in fiecare produs isi&nbsp;gasesc locul ingrediente sanatoase si hranitoare, legume/fructe de sezon, lactate de la producatori locali si pe cat posibil un strop de indrazneala&nbsp;cu produse bio. Nu folosim coloranti artificiali, nu folosim aditivi, nu folosim amelioratori si nici potentiatori de gust. Suntem mereu deschisi dorintelor si propunerilor d-voastra, suntem aici sa va facem viata mai gustoasa!</p>','','<p>Adauga ceva despre&nbsp;</p>','','Artisan_Bakery-1445.jpg','Artisan_Bakery-1748.jpg','DSC01121.JPG','<p>Suntem o echipa&nbsp;mica&nbsp;de pasionati de gustari sarate si prajituri simple. Iubim bunul gust, acela simplu in care poti identifica usor ingredientele de valoare, dar in acelasi timp delicat si subtil. Acest loc s-a nascut din dorinta de oferi acces tuturor la prajiturelele pe care noi le gatim acasa&nbsp;pentru familia si copiii nostri. Toate produsele noastre sunt facute cu multa&nbsp;dragoste, grija, atentie si cu multa&nbsp;pasiune. Ne place ciocolata, ne plac branzeturile si iaurturile, fructele si legumele, dar mai ales, ne place sa&nbsp;le combinam in retete delicioase si hranitoare. Ne dorim ca pasiunea noastra sa&nbsp;aduca&nbsp;un plus de valoare placintelor si prajiturelelor cu care suntem obisnuiti si sa&nbsp;descoperiti ca in fiecare produs isi&nbsp;gasesc locul ingrediente sanatoase si hranitoare, legume/fructe de sezon, lactate de la producatori locali si pe cat posibil un strop de indrazneala&nbsp;cu produse bio. Nu folosim coloranti artificiali, nu folosim aditivi, nu folosim amelioratori si nici potentiatori de gust. Suntem mereu deschisi dorintelor si propunerilor d-voastra, suntem aici sa va facem viata mai gustoasa!</p>','Cake for later as a way of life','static/img/about_3.jpg','static/img/info_img2.jpg');
/*!40000 ALTER TABLE `artisan_app_story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_app_team`
--

DROP TABLE IF EXISTS `artisan_app_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_app_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `job` varchar(60) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `insta` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_app_team`
--

LOCK TABLES `artisan_app_team` WRITE;
/*!40000 ALTER TABLE `artisan_app_team` DISABLE KEYS */;
INSERT INTO `artisan_app_team` VALUES (1,'Ioana','Ungureanu','static/img/DSC00465.JPG','cofetar-patiser','https://www.facebook.com/ioanadorina.buzatu','https://www.instagram.com/ioanadorinaungureanu29/','#'),(2,'Ioana','Onea','static/img/DSC00464.JPG','cofetar-patiser','https://www.facebook.com/ioana.onea.146','https://www.instagram.com/oneaioana2/','#');
/*!40000 ALTER TABLE `artisan_app_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add team',7,'add_team'),(26,'Can change team',7,'change_team'),(27,'Can delete team',7,'delete_team'),(28,'Can view team',7,'view_team'),(29,'Can add gallery',8,'add_gallery'),(30,'Can change gallery',8,'change_gallery'),(31,'Can delete gallery',8,'delete_gallery'),(32,'Can view gallery',8,'view_gallery'),(33,'Can add recipe category',9,'add_recipecategory'),(34,'Can change recipe category',9,'change_recipecategory'),(35,'Can delete recipe category',9,'delete_recipecategory'),(36,'Can view recipe category',9,'view_recipecategory'),(37,'Can add menu',10,'add_menu'),(38,'Can change menu',10,'change_menu'),(39,'Can delete menu',10,'delete_menu'),(40,'Can view menu',10,'view_menu'),(41,'Can add slogan',11,'add_slogan'),(42,'Can change slogan',11,'change_slogan'),(43,'Can delete slogan',11,'delete_slogan'),(44,'Can view slogan',11,'view_slogan'),(45,'Can add comments',12,'add_comments'),(46,'Can change comments',12,'change_comments'),(47,'Can delete comments',12,'delete_comments'),(48,'Can view comments',12,'view_comments'),(49,'Can add events',13,'add_events'),(50,'Can change events',13,'change_events'),(51,'Can delete events',13,'delete_events'),(52,'Can view events',13,'view_events'),(53,'Can add event',14,'add_event'),(54,'Can change event',14,'change_event'),(55,'Can delete event',14,'delete_event'),(56,'Can view event',14,'view_event'),(57,'Can add blog categories',15,'add_blogcategories'),(58,'Can change blog categories',15,'change_blogcategories'),(59,'Can delete blog categories',15,'delete_blogcategories'),(60,'Can view blog categories',15,'view_blogcategories'),(61,'Can add blog post',16,'add_blogpost'),(62,'Can change blog post',16,'change_blogpost'),(63,'Can delete blog post',16,'delete_blogpost'),(64,'Can view blog post',16,'view_blogpost'),(65,'Can add story',17,'add_story'),(66,'Can change story',17,'change_story'),(67,'Can delete story',17,'delete_story'),(68,'Can view story',17,'view_story'),(69,'Can add tag',18,'add_tag'),(70,'Can change tag',18,'change_tag'),(71,'Can delete tag',18,'delete_tag'),(72,'Can view tag',18,'view_tag'),(73,'Can add tagged item',19,'add_taggeditem'),(74,'Can change tagged item',19,'change_taggeditem'),(75,'Can delete tagged item',19,'delete_taggeditem'),(76,'Can view tagged item',19,'view_taggeditem'),(77,'Can add facts',20,'add_facts'),(78,'Can change facts',20,'change_facts'),(79,'Can delete facts',20,'delete_facts'),(80,'Can view facts',20,'view_facts'),(81,'Can add fact',20,'add_fact'),(82,'Can change fact',20,'change_fact'),(83,'Can delete fact',20,'delete_fact'),(84,'Can view fact',20,'view_fact'),(85,'Can add blog category',15,'add_blogcategory'),(86,'Can change blog category',15,'change_blogcategory'),(87,'Can delete blog category',15,'delete_blogcategory'),(88,'Can view blog category',15,'view_blogcategory'),(89,'Can add comment',12,'add_comment'),(90,'Can change comment',12,'change_comment'),(91,'Can delete comment',12,'delete_comment'),(92,'Can view comment',12,'view_comment'),(93,'Can add review',21,'add_review'),(94,'Can change review',21,'change_review'),(95,'Can delete review',21,'delete_review'),(96,'Can view review',21,'view_review'),(97,'Can add quote',22,'add_quote'),(98,'Can change quote',22,'change_quote'),(99,'Can delete quote',22,'delete_quote'),(100,'Can view quote',22,'view_quote'),(101,'Can add newsletter users',23,'add_newsletterusers'),(102,'Can change newsletter users',23,'change_newsletterusers'),(103,'Can delete newsletter users',23,'delete_newsletterusers'),(104,'Can view newsletter users',23,'view_newsletterusers'),(105,'Can add newsletter user',23,'add_newsletteruser'),(106,'Can change newsletter user',23,'change_newsletteruser'),(107,'Can delete newsletter user',23,'delete_newsletteruser'),(108,'Can view newsletter user',23,'view_newsletteruser'),(109,'Can add send email',24,'add_sendemail'),(110,'Can change send email',24,'change_sendemail'),(111,'Can delete send email',24,'delete_sendemail'),(112,'Can view send email',24,'view_sendemail'),(113,'Can add send email footer',25,'add_sendemailfooter'),(114,'Can change send email footer',25,'change_sendemailfooter'),(115,'Can delete send email footer',25,'delete_sendemailfooter'),(116,'Can view send email footer',25,'view_sendemailfooter'),(117,'Can add post views',26,'add_postviews'),(118,'Can change post views',26,'change_postviews'),(119,'Can delete post views',26,'delete_postviews'),(120,'Can view post views',26,'view_postviews'),(121,'Can add our fact',27,'add_ourfact'),(122,'Can change our fact',27,'change_ourfact'),(123,'Can delete our fact',27,'delete_ourfact'),(124,'Can view our fact',27,'view_ourfact');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$kX4nFpZ9a7S0$ljtr92cgJLkCczXQvbTk74OHYqXqkpsYKCkEXAcAKw4=','2021-04-05 10:45:57.326641',1,'ioana','Ioana','Ungureanu','contact@artisanbakery.ro',1,1,'2021-02-23 21:33:30.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-02-24 11:52:08.204470','1','Team object (1)',1,'[{\"added\": {}}]',7,1),(2,'2021-02-24 12:00:01.002813','2','Team object (2)',1,'[{\"added\": {}}]',7,1),(3,'2021-02-25 09:50:36.820950','1','Team object (1)',2,'[{\"changed\": {\"fields\": [\"Photo\"]}}]',7,1),(4,'2021-02-25 09:51:15.058065','2','Team object (2)',2,'[{\"changed\": {\"fields\": [\"Photo\"]}}]',7,1),(5,'2021-02-25 10:01:46.438810','2','Team object (2)',2,'[{\"changed\": {\"fields\": [\"Facebook\", \"Insta\", \"Twitter\"]}}]',7,1),(6,'2021-02-25 10:02:04.405466','1','Team object (1)',2,'[{\"changed\": {\"fields\": [\"Facebook\", \"Insta\", \"Twitter\"]}}]',7,1),(7,'2021-02-25 23:21:04.923641','1','Gallery object (1)',1,'[{\"added\": {}}]',8,1),(8,'2021-02-25 23:21:16.330088','2','Gallery object (2)',1,'[{\"added\": {}}]',8,1),(9,'2021-02-25 23:21:33.045615','3','Gallery object (3)',1,'[{\"added\": {}}]',8,1),(10,'2021-02-25 23:21:47.567579','4','Gallery object (4)',1,'[{\"added\": {}}]',8,1),(11,'2021-02-25 23:22:04.721184','5','Gallery object (5)',1,'[{\"added\": {}}]',8,1),(12,'2021-02-25 23:22:20.685516','6','Gallery object (6)',1,'[{\"added\": {}}]',8,1),(13,'2021-02-25 23:22:45.553728','7','Gallery object (7)',1,'[{\"added\": {}}]',8,1),(14,'2021-02-25 23:22:54.410788','2','Gallery object (2)',3,'',8,1),(15,'2021-02-25 23:23:03.172594','8','Gallery object (8)',1,'[{\"added\": {}}]',8,1),(16,'2021-02-25 23:32:32.912190','9','Gallery object (9)',1,'[{\"added\": {}}]',8,1),(17,'2021-02-25 23:33:24.344628','10','Gallery object (10)',1,'[{\"added\": {}}]',8,1),(18,'2021-02-25 23:48:19.389231','1','Gallery object (1)',1,'[{\"added\": {}}]',8,1),(19,'2021-02-25 23:48:39.541424','1','Gallery object (1)',3,'',8,1),(20,'2021-02-25 23:48:53.915766','2','Gallery object (2)',1,'[{\"added\": {}}]',8,1),(21,'2021-02-25 23:49:26.616541','3','Gallery object (3)',1,'[{\"added\": {}}]',8,1),(22,'2021-02-26 11:44:14.987544','1','Torturi',1,'[{\"added\": {}}]',9,1),(23,'2021-02-26 11:44:21.236288','2','Paine',1,'[{\"added\": {}}]',9,1),(24,'2021-02-26 11:44:31.034625','2','Paine',3,'',9,1),(25,'2021-02-26 11:44:31.037895','1','Torturi',3,'',9,1),(26,'2021-02-26 11:44:41.429824','3','Sourdough Bread',1,'[{\"added\": {}}]',9,1),(27,'2021-02-26 11:44:47.556359','4','Cake',1,'[{\"added\": {}}]',9,1),(28,'2021-02-26 11:44:55.610917','5','Sweet tarts',1,'[{\"added\": {}}]',9,1),(29,'2021-02-26 11:45:02.361976','6','Salty Tarts',1,'[{\"added\": {}}]',9,1),(30,'2021-02-26 11:45:07.520257','5','Sweet Tarts',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(31,'2021-02-26 11:45:18.681266','7','Biscuits',1,'[{\"added\": {}}]',9,1),(32,'2021-02-26 11:45:36.385052','8','Coffee',1,'[{\"added\": {}}]',9,1),(33,'2021-02-26 11:55:05.549673','3','Tort Medovik cu miere',1,'[{\"added\": {}}]',10,1),(34,'2021-02-26 11:58:01.999060','6','Tarte / Placinte Sarate',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(35,'2021-02-26 11:58:10.445496','7','Biscuiti',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(36,'2021-02-26 11:58:17.339429','4','Torturi',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(37,'2021-02-26 11:58:29.912760','5','Tarte',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(38,'2021-02-26 11:58:36.371371','3','Paine cu maia',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(39,'2021-02-26 11:58:44.474504','8','Cafea',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(40,'2021-02-26 11:59:04.927837','9','Prajituri diverse',1,'[{\"added\": {}}]',9,1),(41,'2021-02-26 12:01:52.115250','4','Placinte sarate cu umplutura',1,'[{\"added\": {}}]',10,1),(42,'2021-02-26 12:10:40.977405','5','Tarta cu spanac si branza Ricotta',1,'[{\"added\": {}}]',10,1),(43,'2021-02-26 12:19:23.864920','6','Biscuiti cu parmezan si mac',1,'[{\"added\": {}}]',10,1),(44,'2021-02-26 12:27:08.893229','7','Paine integrala cu in',1,'[{\"added\": {}}]',10,1),(45,'2021-02-26 12:43:13.035015','6','Sarate',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(46,'2021-02-26 12:43:27.057428','5','Tarte Dulci',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(47,'2021-02-26 18:35:36.702748','9','prajituri-diverse',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]',9,1),(48,'2021-02-26 18:35:46.734791','8','cafea',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(49,'2021-02-26 18:35:55.652069','7','biscuiti',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(50,'2021-02-26 18:36:02.542304','6','sarate',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(51,'2021-02-26 18:36:08.869895','5','tarte-dulci',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(52,'2021-02-26 18:36:14.702333','4','torturi',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(53,'2021-02-26 18:36:21.845097','3','paine-cu-maia',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(54,'2021-02-26 18:37:53.325663','7','Paine integrala cu in',3,'',10,1),(55,'2021-02-26 18:38:42.780798','8','Paine integrala cu in',1,'[{\"added\": {}}]',10,1),(56,'2021-02-26 18:38:49.455861','6','Biscuiti cu parmezan si mac',2,'[]',10,1),(57,'2021-02-26 18:38:52.001956','5','Tarta cu spanac si branza Ricotta',2,'[]',10,1),(58,'2021-02-26 18:38:54.421935','4','Placinte sarate cu umplutura',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(59,'2021-02-26 18:38:56.750783','3','Tort Medovik cu miere',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(60,'2021-02-28 20:00:17.278717','2','The Artisan Bakery',1,'[{\"added\": {}}]',11,1),(61,'2021-02-28 20:28:33.972300','2','<p>Best bakery in Brasov!</p>',1,'[{\"added\": {}}]',12,1),(62,'2021-03-01 10:58:42.417008','4','Ioana-glove',1,'[{\"added\": {}}]',8,1),(63,'2021-03-01 10:59:15.649165','5','Oven-ioana',1,'[{\"added\": {}}]',8,1),(64,'2021-03-01 10:59:50.136888','6','Ioana and ioana and lots of cake',1,'[{\"added\": {}}]',8,1),(65,'2021-03-01 11:00:06.444099','3','Gallery',3,'',8,1),(66,'2021-03-01 11:00:06.447092','2','Gallery',3,'',8,1),(67,'2021-03-01 11:00:17.696000','7','Ambient',1,'[{\"added\": {}}]',8,1),(68,'2021-03-01 11:00:43.408244','8','Workshop-kindergarden',1,'[{\"added\": {}}]',8,1),(69,'2021-03-01 11:01:14.692128','9','Trio-cake',1,'[{\"added\": {}}]',8,1),(70,'2021-03-01 11:01:48.764980','10','Cookies-tarts',1,'[{\"added\": {}}]',8,1),(71,'2021-03-01 11:02:05.411257','11','Dart-vader',1,'[{\"added\": {}}]',8,1),(72,'2021-03-01 11:02:34.629001','12','Maria-birthday1',1,'[{\"added\": {}}]',8,1),(73,'2021-03-01 11:03:24.903753','13','Chocolate-strawberries',1,'[{\"added\": {}}]',8,1),(74,'2021-03-01 11:03:58.123901','14','many-cakes',1,'[{\"added\": {}}]',8,1),(75,'2021-03-01 11:05:06.306957','15','Saratele',1,'[{\"added\": {}}]',8,1),(76,'2021-03-01 11:12:30.719389','3','Tort Medovik cu miere',2,'[{\"changed\": {\"fields\": [\"Featured\"]}}]',10,1),(77,'2021-03-01 11:14:36.122823','10','cheesecake',1,'[{\"added\": {}}]',9,1),(78,'2021-03-01 11:14:52.196549','9','Cheesecake cu caise',1,'[{\"added\": {}}]',10,1),(79,'2021-03-01 11:16:47.548089','10','Tort cu mousse de zmeura si ciocolata',1,'[{\"added\": {}}]',10,1),(80,'2021-03-01 11:18:23.329586','11','Cheesecake cu fructe de padure',1,'[{\"added\": {}}]',10,1),(81,'2021-03-01 11:20:59.797309','12','Tarta cu pere si ciocolata',1,'[{\"added\": {}}]',10,1),(82,'2021-03-01 11:23:35.900183','13','Minitarte cu caramel si arahide',1,'[{\"added\": {}}]',10,1),(83,'2021-03-09 21:43:38.487211','1','Workshop cu copii',1,'[{\"added\": {}}]',13,1),(84,'2021-03-09 22:20:59.884994','1','Workshop cu copii',2,'[]',13,1),(85,'2021-03-09 22:22:47.132147','1','Workshop cu copii',3,'',13,1),(86,'2021-03-10 10:51:01.436189','1','Martisoare 20 Martie',1,'[{\"added\": {}}]',14,1),(87,'2021-03-10 10:52:39.890774','2','Iepurasi de pasti',1,'[{\"added\": {}}]',14,1),(88,'2021-03-10 10:53:21.958023','1','Martisoare 20 Martie',2,'[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]',14,1),(89,'2021-03-10 12:21:46.335649','1','retete',1,'[{\"added\": {}}]',15,1),(90,'2021-03-10 21:04:00.112980','1','Story object (1)',1,'[{\"added\": {}}]',17,1),(91,'2021-03-10 21:04:54.423210','1','Story object (1)',2,'[{\"changed\": {\"fields\": [\"Traditions\", \"Service\", \"History\"]}}]',17,1),(92,'2021-03-10 21:33:52.780709','3','Daniel Ungureanu',1,'[{\"added\": {}}]',7,1),(93,'2021-03-11 10:06:55.515414','1','Story object (1)',2,'[{\"changed\": {\"fields\": [\"Traditions image\", \"Service image\", \"History image\"]}}]',17,1),(94,'2021-03-11 16:03:19.786227','2','<p>Best bakery in Brasov!</p>',3,'',12,1),(95,'2021-03-11 16:05:38.148257','3','<p>Mmmm....de-a dreptul delicios!!!&nbsp;<img alt=\"smiley\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /',1,'[{\"added\": {}}]',12,1),(96,'2021-03-11 16:08:06.408952','4','<p>Sunteti o echipa&nbsp;minunata! Va multumesc din suflet pentru deliciosul tort Pavlova! Iubesc prajitura asta! Recomand!&nbsp;<img alt=\"heart\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/pl',1,'[{\"added\": {}}]',12,1),(97,'2021-03-11 16:11:30.581935','5','<p>&quot;<img alt=\"heart\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />Recomand cu mare drag! Produse proaspete ',1,'[{\"added\": {}}]',12,1),(98,'2021-03-11 16:11:35.999716','5','<p>&quot;<img alt=\"heart\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />Recomand cu mare drag! Produse proaspete ',2,'[]',12,1),(99,'2021-03-11 16:11:46.892295','4','<p>&quot;Sunteti o echipa&nbsp;minunata! Va multumesc din suflet pentru deliciosul tort Pavlova! Iubesc prajitura asta! Recomand!&nbsp;<img alt=\"heart\" src=\"http://127.0.0.1:8000/static/ckeditor/ckedi',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',12,1),(100,'2021-03-11 16:11:59.605700','3','<p>&quot;Mmmm....de-a dreptul delicios!!!&nbsp;<img alt=\"heart\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" />&qu',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',12,1),(101,'2021-03-11 16:15:32.574634','5','Andreea Macarie',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(102,'2021-03-11 16:16:13.394717','5','Andreea Macarie',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(103,'2021-03-11 16:16:43.730083','5','Andreea Macarie',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(104,'2021-03-11 16:16:51.040907','5','Andreea Macarie',2,'[]',12,1),(105,'2021-03-11 16:17:27.022697','3','Cristina Daniela',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(106,'2021-03-11 16:17:31.756656','3','Cristina Daniela',2,'[]',12,1),(107,'2021-03-11 21:19:24.787097','13','Minitarte cu caramel si arahide',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',10,1),(108,'2021-03-11 21:19:41.990935','12','Tarta cu pere si ciocolata',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',10,1),(109,'2021-03-11 21:19:53.780003','11','Cheesecake cu fructe de padure',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',10,1),(110,'2021-03-11 21:23:52.041305','7','fursecuri',2,'[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]',9,1),(111,'2021-03-11 21:23:59.586282','10','cheesecake',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(112,'2021-03-11 21:24:04.391513','8','cafea',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(113,'2021-03-11 21:24:12.664096','6','sarate',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(114,'2021-03-11 21:24:25.888476','9','prajituri-diverse',2,'[]',9,1),(115,'2021-03-11 21:24:45.238394','5','tarte-dulci',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(116,'2021-03-11 21:24:52.676414','4','torturi',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(117,'2021-03-11 21:24:58.220864','3','paine',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(118,'2021-03-11 21:25:07.346011','3','paine',2,'[]',9,1),(119,'2021-03-11 21:25:10.810184','4','torturi',2,'[]',9,1),(120,'2021-03-11 21:25:17.630258','3','paine-cu-maia',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(121,'2021-03-11 21:42:09.592920','10','Tort cu mousse de zmeura si ciocolata',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',10,1),(122,'2021-03-11 21:42:19.766209','3','Tort Medovik cu miere',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',10,1),(123,'2021-03-11 21:44:59.972463','10','Tort cu mousse de zmeura si ciocolata',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',10,1),(124,'2021-03-11 21:45:48.487185','5','tarte',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',9,1),(125,'2021-03-11 21:46:04.971416','12','Tarta cu pere si ciocolata',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',10,1),(126,'2021-03-12 21:47:41.320281','10','Tort cu zmeura si ciocolata',2,'[{\"changed\": {\"fields\": [\"Recipe name\"]}}]',10,1),(127,'2021-03-12 21:47:52.613871','5','Tarta cu spanac si branza',2,'[{\"changed\": {\"fields\": [\"Recipe name\"]}}]',10,1),(128,'2021-03-12 21:53:40.901248','5','Tarta cu spanac si \\n branza',2,'[{\"changed\": {\"fields\": [\"Recipe name\"]}}]',10,1),(129,'2021-03-12 21:54:16.348399','5','Tarta cu spanac si branza de vaci',2,'[{\"changed\": {\"fields\": [\"Recipe name\"]}}]',10,1),(130,'2021-03-12 21:54:36.561222','5','Tarta cu spanac si branza',2,'[{\"changed\": {\"fields\": [\"Recipe name\"]}}]',10,1),(131,'2021-03-12 21:59:55.616342','13','Minitarte cu caramel si arahide',2,'[]',10,1),(132,'2021-03-12 22:03:09.926497','13','Minitarte cu caramel si arahide',2,'[{\"changed\": {\"fields\": [\"Measurement\"]}}]',10,1),(133,'2021-03-12 22:03:15.156856','12','Tarta cu pere si ciocolata',2,'[]',10,1),(134,'2021-03-12 22:58:50.486314','1','kg_flour',1,'[{\"added\": {}}]',20,1),(135,'2021-03-12 22:59:14.820436','1','Kg of flour',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',20,1),(136,'2021-03-12 23:00:10.175350','2','Hours worked',1,'[{\"added\": {}}]',20,1),(137,'2021-03-12 23:00:40.762360','3','Kg of chocolate',1,'[{\"added\": {}}]',20,1),(138,'2021-03-12 23:01:33.494825','4','Clients',1,'[{\"added\": {}}]',20,1),(139,'2021-03-12 23:02:14.120134','5','Kg of cake sold',1,'[{\"added\": {}}]',20,1),(140,'2021-03-12 23:04:18.576781','5','Kg de tort vandute',2,'[{\"changed\": {\"fields\": [\"Category ro\"]}}]',20,1),(141,'2021-03-12 23:04:28.306203','4','Clienti',2,'[{\"changed\": {\"fields\": [\"Category ro\"]}}]',20,1),(142,'2021-03-12 23:04:36.538353','3','Kg de ciocolata',2,'[{\"changed\": {\"fields\": [\"Category ro\"]}}]',20,1),(143,'2021-03-12 23:04:43.120624','2','Ore lucrate',2,'[{\"changed\": {\"fields\": [\"Category ro\"]}}]',20,1),(144,'2021-03-12 23:05:15.857249','2','Ore in bucatarie',2,'[{\"changed\": {\"fields\": [\"Category en\", \"Category ro\"]}}]',20,1),(145,'2021-03-12 23:05:23.143077','1','Kg de faina',2,'[{\"changed\": {\"fields\": [\"Category ro\"]}}]',20,1),(146,'2021-03-14 20:08:16.123594','14','Paine intermediara cu seminte',1,'[{\"added\": {}}]',10,1),(147,'2021-03-14 20:11:20.977888','15','Paine intermediara cu sfecla si chimen',1,'[{\"added\": {}}]',10,1),(148,'2021-03-14 20:11:27.990483','14','Paine intermediara cu seminte',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',10,1),(149,'2021-03-14 20:32:00.214066','16','Paine intermediara cu turmeric, mac si ceapa',1,'[{\"added\": {}}]',10,1),(150,'2021-03-18 21:18:40.529036','1','Noua reteta de Pavlova cu ciocolata',1,'[{\"added\": {}}]',16,1),(151,'2021-03-19 09:36:31.910946','2','Sourdough Bread',1,'[{\"added\": {}}]',16,1),(152,'2021-03-19 09:37:55.659406','3','Croissanti si bebelusi',1,'[{\"added\": {}}]',16,1),(153,'2021-03-19 09:38:42.285365','4','Cozonacii cei de toate zilele',1,'[{\"added\": {}}]',16,1),(154,'2021-03-19 09:39:57.994311','5','Kids',1,'[{\"added\": {}}]',16,1),(155,'2021-03-19 09:40:11.025192','2','children',1,'[{\"added\": {}}]',15,1),(156,'2021-03-19 09:40:14.521893','5','Kids',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',16,1),(157,'2021-03-19 09:40:20.591602','3','Croissanti si bebelusi',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',16,1),(158,'2021-03-19 14:36:03.776311','1','daniel',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(159,'2021-03-20 21:17:00.707184','3','Daniel Ungureanu',3,'',7,1),(160,'2021-03-20 23:04:38.215109','1','Story object (1)',2,'[{\"changed\": {\"fields\": [\"Motto\", \"Traditions\", \"Service\", \"History\"]}}]',17,1),(161,'2021-03-20 23:04:46.930696','1','Story object (1)',2,'[{\"changed\": {\"fields\": [\"About us page\"]}}]',17,1),(162,'2021-03-25 20:03:47.912055','2','Iepurasi de pasti',3,'',14,1),(163,'2021-03-25 20:03:47.915206','1','Martisoare 20 Martie',3,'',14,1),(164,'2021-03-27 23:10:08.670883','1','<p>Cu drag!</p>\r\n\r\n<p>Ioana Ungureanu</p>\r\n\r\n<p>&quot;Before you print, think about the environment!&quot;</p>',1,'[{\"added\": {}}]',25,1),(165,'2021-03-27 23:12:48.584877','1','<h3 style=\"color:#aaaaaa; font-style:italic\"><span style=\"color:#000000\"><code><tt>Cu drag!</tt></code></span></h3>\r\n\r\n<p><big><strong><em>Ioana Ungureanu</em></strong></big></p>\r\n\r\n<h6 style=\"color:#',2,'[{\"changed\": {\"fields\": [\"Version\"]}}]',25,1),(166,'2021-03-27 23:18:17.895285','1','daniel',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(167,'2021-03-29 09:11:22.815083','1','ioana',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',4,1),(168,'2021-03-29 10:53:30.772320','1','ioana',2,'[]',4,1),(169,'2021-03-30 21:04:59.145714','5','Kg de tort vandute',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',20,1),(170,'2021-03-30 21:12:23.625668','3','Kg de ciocolata',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',20,1),(171,'2021-03-30 21:13:00.162975','5','Kg de tort vandute',3,'',20,1),(172,'2021-03-30 21:13:26.396788','6','Tone de tort vandute',1,'[{\"added\": {}}]',20,1),(173,'2021-03-30 21:13:39.648498','3','Kg de ciocolata',3,'',20,1),(174,'2021-03-30 21:13:39.650818','1','Kg de faina',3,'',20,1),(175,'2021-03-30 21:19:19.421980','7','Kg tarte',1,'[{\"added\": {}}]',20,1),(176,'2021-03-30 21:20:13.002543','8','Kg de tort',1,'[{\"added\": {}}]',20,1),(177,'2021-03-30 21:21:24.855830','4','Clienti',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',20,1),(178,'2021-03-30 21:21:34.905884','6','Tone de tort vandute',3,'',20,1),(179,'2021-03-30 21:21:57.659360','9','Kg de faina',1,'[{\"added\": {}}]',20,1),(180,'2021-03-30 21:26:49.843146','10','Kg prajiturele',1,'[{\"added\": {}}]',20,1),(181,'2021-03-30 21:27:27.051328','10','Prajiturele vandute',2,'[{\"changed\": {\"fields\": [\"Category en\", \"Category ro\"]}}]',20,1),(182,'2021-03-30 21:27:44.373972','9','Faina utilizata',2,'[{\"changed\": {\"fields\": [\"Category en\", \"Category ro\"]}}]',20,1),(183,'2021-03-30 21:28:15.148334','10','Kg de prajiturele',2,'[{\"changed\": {\"fields\": [\"Category en\", \"Category ro\"]}}]',20,1),(184,'2021-03-30 21:28:31.309607','9','Kg de faina',2,'[{\"changed\": {\"fields\": [\"Category en\", \"Category ro\"]}}]',20,1),(185,'2021-03-30 21:28:34.853066','8','Kg de tort',2,'[]',20,1),(186,'2021-03-30 21:28:40.323663','4','Clienti',2,'[]',20,1),(187,'2021-03-31 20:24:35.097110','15','Paine intermediara cu sfecla si chimen',2,'[]',10,1),(188,'2021-03-31 20:24:47.422615','10','Tort cu zmeura si ciocolata',2,'[]',10,1),(189,'2021-03-31 20:25:03.005165','5','Tarta cu spanac si branza',2,'[]',10,1),(190,'2021-03-31 20:25:18.101666','5','Tarta cu spanac si branza',2,'[]',10,1),(191,'2021-03-31 20:25:54.613725','5','Tarta cu spanac si branza',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(192,'2021-03-31 20:26:34.131983','5','Tarta cu spanac si branza',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(193,'2021-03-31 20:26:58.162608','15','Paine intermediara cu sfecla si chimen',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(194,'2021-03-31 20:27:22.129406','15','Paine intermediara cu sfecla si chimen',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(195,'2021-03-31 20:27:29.158994','16','Paine intermediara cu turmeric, mac si ceapa',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(196,'2021-03-31 20:27:49.431039','16','Paine intermediara cu turmeric, mac si ceapa',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(197,'2021-03-31 20:28:30.450347','16','Paine intermediara cu turmeric, mac si ceapa',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(198,'2021-03-31 20:29:30.357555','16','Paine intermediara cu turmeric, mac si ceapa',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(199,'2021-03-31 20:30:03.743385','15','Paine intermediara cu sfecla si chimen',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(200,'2021-03-31 20:30:39.152430','14','Paine intermediara cu seminte',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(201,'2021-03-31 20:31:09.222768','13','Minitarte cu caramel si arahide',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(202,'2021-03-31 20:31:40.123050','12','Tarta cu pere si ciocolata',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(203,'2021-03-31 20:32:18.693826','11','Cheesecake cu fructe de padure',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(204,'2021-03-31 20:33:14.016359','10','Tort cu zmeura si ciocolata',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(205,'2021-03-31 20:33:57.903509','6','Biscuiti cu parmezan si mac',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(206,'2021-03-31 20:45:24.999115','17','Tort cu capsuni si ciocolata',1,'[{\"added\": {}}]',10,1),(207,'2021-03-31 20:53:30.338673','18','Tort cu piersici si fructe de padure',1,'[{\"added\": {}}]',10,1),(208,'2021-03-31 20:55:59.615157','19','Tort cu mascarpone si fr de padure',1,'[{\"added\": {}}]',10,1),(209,'2021-03-31 21:05:23.166747','20','Tort Trio de ciocolata',1,'[{\"added\": {}}]',10,1),(210,'2021-03-31 21:13:59.294483','21','Tort cu lemon curd, fistic si zmeura',1,'[{\"added\": {}}]',10,1),(211,'2021-03-31 21:24:42.320891','22','Tort Padurea Neagra',1,'[{\"added\": {}}]',10,1),(212,'2021-03-31 21:30:54.100933','23','Tort cu piersici si iaurt',1,'[{\"added\": {}}]',10,1),(213,'2021-03-31 21:37:15.368096','24','Tort cu iaurt si coacaze negre',1,'[{\"added\": {}}]',10,1),(214,'2021-03-31 21:41:49.690588','25','Tort cu caise si lavanda',1,'[{\"added\": {}}]',10,1),(215,'2021-03-31 21:47:08.198955','26','Tort cu mousse de ghimbir si mango',1,'[{\"added\": {}}]',10,1),(216,'2021-03-31 21:52:25.745852','27','Tort cu mango, lamaie si mac',1,'[{\"added\": {}}]',10,1),(217,'2021-03-31 21:54:52.405278','23','Tort cu piersici si iaurt',2,'[{\"changed\": {\"fields\": [\"Featured\"]}}]',10,1),(218,'2021-03-31 21:55:04.800746','20','Tort Trio de ciocolata',2,'[{\"changed\": {\"fields\": [\"Featured\"]}}]',10,1),(219,'2021-03-31 21:58:29.064749','2','Marea deschidere',2,'[{\"changed\": {\"fields\": [\"Category en\", \"Category ro\", \"Figures\"]}}]',20,1),(220,'2021-03-31 21:58:46.793127','11','Ore in bucatarie',1,'[{\"added\": {}}]',20,1),(221,'2021-03-31 22:00:12.158355','2','Marea deschidere',2,'[]',20,1),(222,'2021-03-31 22:00:17.920724','11','Ore in bucatarie',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',20,1),(223,'2021-03-31 22:00:22.657735','10','Kg de prajiturele',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',20,1),(224,'2021-03-31 22:00:28.089699','9','Kg de faina',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',20,1),(225,'2021-03-31 22:00:33.509369','9','Kg de faina',2,'[]',20,1),(226,'2021-03-31 22:00:39.105611','8','Kg de tort',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',20,1),(227,'2021-03-31 22:00:44.085981','7','Kg tarte',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',20,1),(228,'2021-03-31 22:00:49.138179','4','Clienti',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',20,1),(229,'2021-03-31 22:01:40.755316','12','Marea deschidere',1,'[{\"added\": {}}]',20,1),(230,'2021-03-31 22:03:07.162657','12','Marea deschidere',3,'',20,1),(231,'2021-03-31 22:03:07.165551','11','Ore in bucatarie',3,'',20,1),(232,'2021-03-31 22:03:07.167522','10','Kg de prajiturele',3,'',20,1),(233,'2021-03-31 22:03:07.170869','9','Kg de faina',3,'',20,1),(234,'2021-03-31 22:03:07.172286','8','Kg de tort',3,'',20,1),(235,'2021-03-31 22:03:07.173612','7','Kg tarte',3,'',20,1),(236,'2021-03-31 22:03:07.175615','4','Clienti',3,'',20,1),(237,'2021-03-31 22:03:07.176911','2','Marea deschidere',3,'',20,1),(238,'2021-03-31 22:05:40.744128','1','Marea deschidere',1,'[{\"added\": {}}]',20,1),(239,'2021-04-01 05:50:37.705942','28','Tort Fraisier',1,'[{\"added\": {}}]',10,1),(240,'2021-04-01 05:54:18.186772','29','Tort de gutui si ciocolata',1,'[{\"added\": {}}]',10,1),(241,'2021-04-01 05:59:10.487187','30','Tort cu orez si fructe de padure',1,'[{\"added\": {}}]',10,1),(242,'2021-04-01 06:07:35.183638','31','Tort cu zmeura si pannacotta',1,'[{\"added\": {}}]',10,1),(243,'2021-04-01 06:11:26.737973','32','Tort cu zmeura si sampanie',1,'[{\"added\": {}}]',10,1),(244,'2021-04-01 06:13:27.104731','30','Tort cu orez si fructe de padure',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(245,'2021-04-01 06:13:33.585417','30','Tort cu orez si fructe de padure',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(246,'2021-04-01 06:13:52.065842','30','Tort cu orez si fructe de padure',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(247,'2021-04-01 06:14:01.268079','30','Tort cu orez si fructe de padure',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(248,'2021-04-01 06:14:09.242218','31','Tort cu zmeura si pannacotta',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(249,'2021-04-01 06:14:38.112756','31','Tort cu zmeura si pannacotta',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(250,'2021-04-01 06:14:54.544242','31','Tort cu zmeura si pannacotta',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(251,'2021-04-01 06:15:06.188212','31','Tort cu zmeura si pannacotta',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(252,'2021-04-01 06:15:19.966191','31','Tort cu zmeura si pannacotta',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(253,'2021-04-01 06:15:38.222050','28','Tort Fraisier',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(254,'2021-04-01 06:31:23.948666','33','Tort cu mango si lime',1,'[{\"added\": {}}]',10,1),(255,'2021-04-01 06:33:14.394920','34','Tort Egiptean',1,'[{\"added\": {}}]',10,1),(256,'2021-04-01 20:42:33.702109','35','Biscuiti digestivi',1,'[{\"added\": {}}]',10,1),(257,'2021-04-01 20:50:19.511264','36','Fursecuri fine cu nuci si gem',1,'[{\"added\": {}}]',10,1),(258,'2021-04-01 20:52:18.348176','37','Biscuiti Anzac cu miere',1,'[{\"added\": {}}]',10,1),(259,'2021-04-01 20:53:55.244662','38','Biscuiti Linzer',1,'[{\"added\": {}}]',10,1),(260,'2021-04-01 20:54:35.309932','35','Biscuiti digestivi',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',10,1),(261,'2021-04-02 12:19:16.312112','1','Cozonacii cei de toate zilele - daniel',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',12,1),(262,'2021-04-02 12:19:22.684175','2','Cozonacii cei de toate zilele - daniel',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',12,1),(263,'2021-04-02 16:08:14.283126','9','Kids - ioana',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',12,1),(264,'2021-04-02 16:09:32.064374','6','Cozonacii cei de toate zilele - daniel',2,'[{\"changed\": {\"fields\": [\"Text\", \"Active\"]}}]',12,1),(265,'2021-04-02 20:26:34.648630','2','Cozonacii cei de toate zilele - alex',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,1),(266,'2021-04-02 20:27:54.844555','15','Croissanti si bebelusi - ion',3,'',12,1),(267,'2021-04-02 20:27:54.846733','16','Croissanti si bebelusi - ion',3,'',12,1),(268,'2021-04-02 20:27:54.847959','17','Croissanti si bebelusi - ion',3,'',12,1),(269,'2021-04-02 20:27:54.849662','18','Croissanti si bebelusi - ion',3,'',12,1),(270,'2021-04-02 20:27:54.850793','19','Croissanti si bebelusi - ion',3,'',12,1),(271,'2021-04-02 20:27:54.852088','20','Croissanti si bebelusi - ion',3,'',12,1),(272,'2021-04-02 20:27:54.853873','21','Croissanti si bebelusi - ion',3,'',12,1),(273,'2021-04-02 20:27:54.855192','22','Croissanti si bebelusi - ion',3,'',12,1),(274,'2021-04-02 20:27:54.856466','23','Croissanti si bebelusi - ion',3,'',12,1),(275,'2021-04-02 20:28:03.750419','6','Cozonacii cei de toate zilele - george',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,1),(276,'2021-04-02 20:28:11.939238','10','Kids - alina',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,1),(277,'2021-04-02 20:29:23.446496','11','Kids - bulina',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,1),(278,'2021-04-02 20:29:29.163396','12','Kids - basina',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,1),(279,'2021-04-02 20:30:17.963356','13','Kids - golana',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,1),(280,'2021-04-02 20:33:13.907697','3','Cozonacii cei de toate zilele - daniel',3,'',12,1),(281,'2021-04-02 20:33:13.909855','4','Cozonacii cei de toate zilele - daniel',3,'',12,1),(282,'2021-04-02 20:33:13.911155','5','Cozonacii cei de toate zilele - daniel',3,'',12,1),(283,'2021-04-02 20:33:13.912367','7','Cozonacii cei de toate zilele - daniel',3,'',12,1),(284,'2021-04-02 20:33:13.914094','8','Cozonacii cei de toate zilele - daniel',3,'',12,1),(285,'2021-04-05 10:24:27.238612','2','Ore in bucatarie',1,'[{\"added\": {}}]',20,1),(286,'2021-04-05 10:25:09.894875','3','Clienti',1,'[{\"added\": {}}]',20,1),(287,'2021-04-05 10:36:46.075646','1','Deschidere',1,'[{\"added\": {}}]',27,1),(288,'2021-04-05 10:40:13.181770','1','Deschidere',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',27,1),(289,'2021-04-05 10:46:19.736140','1','Deschidere',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',27,1),(290,'2021-04-05 10:46:58.946846','1','Deschidere',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',27,1),(291,'2021-04-05 10:47:17.415744','2','Clienti',1,'[{\"added\": {}}]',27,1),(292,'2021-04-05 10:49:40.681357','3','Ore in bucatarie',1,'[{\"added\": {}}]',27,1),(293,'2021-04-05 10:49:53.167146','2','Clienti',2,'[{\"changed\": {\"fields\": [\"Figures\"]}}]',27,1),(294,'2021-04-05 10:50:21.827466','4','Kg de prajiturele',1,'[{\"added\": {}}]',27,1),(295,'2021-04-05 10:51:00.966841','5','Kg de tort',1,'[{\"added\": {}}]',27,1),(296,'2021-04-05 11:03:41.784952','1','Cadouri de iepuras',1,'[{\"added\": {}}]',14,1),(297,'2021-04-05 11:11:31.232085','1','Cadouri de iepuras',2,'[]',14,1),(298,'2021-04-05 11:37:48.135831','1','Cadouri de iepuras',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',14,1),(299,'2021-04-05 12:10:37.593325','1','Cadouri de iepuras',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,1),(300,'2021-04-05 12:13:44.563319','1','Cadouri de iepuras',3,'',14,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(15,'artisan_app','blogcategory'),(16,'artisan_app','blogpost'),(12,'artisan_app','comment'),(14,'artisan_app','event'),(13,'artisan_app','events'),(20,'artisan_app','fact'),(8,'artisan_app','gallery'),(10,'artisan_app','menu'),(23,'artisan_app','newsletteruser'),(27,'artisan_app','ourfact'),(26,'artisan_app','postviews'),(22,'artisan_app','quote'),(9,'artisan_app','recipecategory'),(21,'artisan_app','review'),(24,'artisan_app','sendemail'),(25,'artisan_app','sendemailfooter'),(11,'artisan_app','slogan'),(17,'artisan_app','story'),(7,'artisan_app','team'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(18,'taggit','tag'),(19,'taggit','taggeditem');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-02-23 21:32:49.962784'),(2,'auth','0001_initial','2021-02-23 21:32:50.060791'),(3,'admin','0001_initial','2021-02-23 21:32:50.251172'),(4,'admin','0002_logentry_remove_auto_add','2021-02-23 21:32:50.307826'),(5,'admin','0003_logentry_add_action_flag_choices','2021-02-23 21:32:50.319940'),(6,'contenttypes','0002_remove_content_type_name','2021-02-23 21:32:50.377430'),(7,'auth','0002_alter_permission_name_max_length','2021-02-23 21:32:50.395335'),(8,'auth','0003_alter_user_email_max_length','2021-02-23 21:32:50.411252'),(9,'auth','0004_alter_user_username_opts','2021-02-23 21:32:50.423563'),(10,'auth','0005_alter_user_last_login_null','2021-02-23 21:32:50.452125'),(11,'auth','0006_require_contenttypes_0002','2021-02-23 21:32:50.454791'),(12,'auth','0007_alter_validators_add_error_messages','2021-02-23 21:32:50.467650'),(13,'auth','0008_alter_user_username_max_length','2021-02-23 21:32:50.483569'),(14,'auth','0009_alter_user_last_name_max_length','2021-02-23 21:32:50.498853'),(15,'auth','0010_alter_group_name_max_length','2021-02-23 21:32:50.516758'),(16,'auth','0011_update_proxy_permissions','2021-02-23 21:32:50.528023'),(17,'auth','0012_alter_user_first_name_max_length','2021-02-23 21:32:50.543028'),(18,'sessions','0001_initial','2021-02-23 21:32:50.558740'),(19,'artisan_app','0001_initial','2021-02-24 11:39:07.217405'),(20,'artisan_app','0002_team_job','2021-02-25 09:53:22.389803'),(21,'artisan_app','0003_auto_20210225_1200','2021-02-25 10:00:25.965344'),(22,'artisan_app','0004_auto_20210226_0116','2021-02-25 23:16:10.719349'),(23,'artisan_app','0005_delete_gallery','2021-02-25 23:37:20.062667'),(24,'artisan_app','0006_gallery','2021-02-25 23:38:15.473788'),(25,'artisan_app','0007_delete_gallery','2021-02-25 23:41:33.927534'),(26,'artisan_app','0008_gallery','2021-02-25 23:42:52.056540'),(27,'artisan_app','0009_auto_20210226_1339','2021-02-26 11:39:55.727076'),(28,'artisan_app','0010_auto_20210226_1353','2021-02-26 11:53:13.624084'),(29,'artisan_app','0011_auto_20210226_1400','2021-02-26 12:00:39.617375'),(30,'artisan_app','0012_auto_20210226_1405','2021-02-26 12:05:45.929855'),(31,'artisan_app','0013_auto_20210226_2017','2021-02-26 18:18:01.539375'),(32,'artisan_app','0014_auto_20210226_2035','2021-02-26 18:35:29.694136'),(33,'artisan_app','0015_auto_20210226_2204','2021-02-26 20:04:43.953744'),(34,'artisan_app','0016_slogan','2021-02-28 19:34:24.746455'),(35,'artisan_app','0017_auto_20210228_2154','2021-02-28 19:54:22.643901'),(36,'artisan_app','0018_auto_20210228_2158','2021-02-28 19:58:37.900999'),(37,'artisan_app','0019_gallery_title','2021-02-28 20:09:42.832890'),(38,'artisan_app','0020_comments','2021-02-28 20:23:55.845188'),(39,'artisan_app','0021_menu_featured','2021-03-01 11:08:28.167933'),(40,'artisan_app','0022_events','2021-03-09 21:18:23.558359'),(41,'artisan_app','0023_auto_20210310_0025','2021-03-09 22:25:10.982852'),(42,'artisan_app','0022_event','2021-03-10 10:49:09.905006'),(43,'artisan_app','0023_blogcategories_blogpost','2021-03-10 12:17:50.490028'),(44,'artisan_app','0024_story','2021-03-10 21:00:35.307566'),(45,'artisan_app','0025_auto_20210310_2325','2021-03-10 21:25:42.710811'),(46,'artisan_app','0026_auto_20210311_1103','2021-03-11 09:03:32.642925'),(47,'artisan_app','0027_event_type','2021-03-11 10:19:24.620011'),(48,'artisan_app','0028_event_image','2021-03-11 10:25:37.036486'),(49,'artisan_app','0029_comments_author','2021-03-11 16:04:27.837332'),(50,'taggit','0001_initial','2021-03-11 16:14:51.971563'),(51,'taggit','0002_auto_20150616_2121','2021-03-11 16:14:52.112277'),(52,'taggit','0003_taggeditem_add_unique_index','2021-03-11 16:14:52.126086'),(53,'artisan_app','0030_comments_tags','2021-03-11 16:14:52.142783'),(54,'artisan_app','0031_slogan_motto','2021-03-11 17:24:43.166298'),(55,'artisan_app','0032_menu_type','2021-03-11 21:11:31.872869'),(56,'artisan_app','0033_auto_20210312_2359','2021-03-12 21:59:30.798166'),(57,'artisan_app','0034_auto_20210313_0002','2021-03-12 22:02:25.599005'),(58,'artisan_app','0035_facts','2021-03-12 22:50:57.170035'),(59,'artisan_app','0036_auto_20210313_0052','2021-03-12 22:52:56.488539'),(60,'artisan_app','0037_auto_20210313_0058','2021-03-12 22:58:12.951627'),(61,'artisan_app','0038_auto_20210313_0103','2021-03-12 23:03:58.763065'),(62,'artisan_app','0039_blogpost_tags','2021-03-14 21:05:49.087494'),(63,'artisan_app','0040_auto_20210314_2349','2021-03-14 21:49:46.860492'),(64,'artisan_app','0041_comment','2021-03-14 21:56:25.188000'),(65,'artisan_app','0042_auto_20210318_2314','2021-03-18 21:14:21.124815'),(66,'artisan_app','0043_auto_20210321_0043','2021-03-20 22:43:38.763785'),(67,'artisan_app','0044_story_about_us_page','2021-03-20 22:48:29.373840'),(68,'artisan_app','0045_auto_20210321_0051','2021-03-20 22:51:27.657082'),(69,'artisan_app','0046_story_about_us_image','2021-03-20 23:02:58.826598'),(70,'artisan_app','0047_newsletterusers','2021-03-22 21:57:28.915701'),(71,'artisan_app','0048_auto_20210323_0748','2021-03-23 05:48:35.932217'),(72,'artisan_app','0049_auto_20210324_1314','2021-03-24 11:14:27.460115'),(73,'artisan_app','0050_auto_20210325_2218','2021-03-25 20:18:38.749691'),(74,'artisan_app','0051_auto_20210325_2221','2021-03-25 20:21:20.603381'),(75,'artisan_app','0052_sendemail','2021-03-25 21:02:35.924196'),(76,'artisan_app','0053_sendemailfooter','2021-03-27 11:34:15.818873'),(77,'artisan_app','0054_auto_20210328_0116','2021-03-27 23:16:20.097328'),(78,'artisan_app','0055_auto_20210328_0117','2021-03-27 23:17:33.230088'),(79,'artisan_app','0056_auto_20210328_1223','2021-03-28 09:23:25.108889'),(80,'artisan_app','0057_newsletteruser','2021-03-28 09:23:53.364624'),(81,'artisan_app','0058_auto_20210328_1225','2021-03-28 09:25:36.985069'),(82,'artisan_app','0059_sendemail','2021-03-29 08:55:10.847664'),(83,'artisan_app','0060_auto_20210329_1300','2021-03-29 10:00:44.693413'),(84,'artisan_app','0061_auto_20210329_1320','2021-03-29 10:21:10.247695'),(85,'artisan_app','0062_auto_20210401_0059','2021-03-31 21:59:59.488995'),(86,'artisan_app','0063_delete_fact','2021-03-31 22:04:18.274411'),(87,'artisan_app','0064_fact','2021-03-31 22:04:36.208669'),(88,'artisan_app','0065_auto_20210402_2030','2021-04-02 17:30:06.006613'),(89,'artisan_app','0066_remove_blogpost_comment_count','2021-04-02 19:22:42.803948'),(90,'artisan_app','0067_blogpost_likes','2021-04-02 19:39:59.054021'),(91,'artisan_app','0068_blogpost_views_count','2021-04-02 19:48:45.837195'),(92,'artisan_app','0069_comment_parent','2021-04-02 20:49:29.134704'),(93,'artisan_app','0070_auto_20210403_1421','2021-04-03 11:21:42.255940'),(94,'artisan_app','0071_delete_fact','2021-04-05 10:28:43.906541'),(95,'artisan_app','0072_ourfact','2021-04-05 10:34:34.183428'),(96,'artisan_app','0073_auto_20210405_1411','2021-04-05 11:11:23.829120'),(97,'artisan_app','0074_auto_20210405_1437','2021-04-05 11:37:35.876412');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('34xjbslzd0ldjaemull9zlf828u9rcxu','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lJxq5:Ie7dSHdK4xtfqVj-gCEed_0CvXxql8kl0dMKKQTUPso','2021-03-24 12:21:21.753789'),('3ws4f0kngtfcndhobzf28bakhyb4cxpe','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lKpd1:quez60ogo--DozHS80zRxlqD3597920mp3AZkG07OP0','2021-03-26 21:47:27.750395'),('6khxpbtiwiq3wftf8nbkspv0sjtiq5gm','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lKpJX:Qi5rd25qgdNNlQq2MOf01soiqx8Oj2NrtwuTHubj7k0','2021-03-26 21:27:19.516015'),('b3ctbxna5rt6ieayvnl9r0mtszzguc0t','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lTMMg:7553Nq1wJxRV8K8kXoKJ36bK6wjPXdHCa0u5_IAJK4A','2021-04-19 10:21:50.304449'),('emopjf58cnuhfi6lrtlx8j5j3wkoc7om','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lTMk1:hGRKZek_E1g3oiKK5kB6ksg5_ZuCBEMGfUg_B-AebyI','2021-04-19 10:45:57.329716'),('gwypg6xy27erqw13df0nu5zvi6xh601u','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lRfQ2:tqlR3V7p6sw3ZMXCCAQb1QxfYMKipUGII3qSfkHPtyE','2021-04-14 18:18:18.556659'),('oanat9kqqa0b9iphzpwaa8ijy5id8jgm','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lEscj:9iY0FOaE1y9MVCulIDmy46X6DRcsWpVl91IN9kjglsg','2021-03-10 11:46:33.952433'),('pxqjayph9wr9ew62tpdnimmkannd9qga','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lSeTt:H1mIW4FkHjUhn4t_WrHSu_1dVNE4wHkOkpP9K5nZwNI','2021-04-17 11:30:21.653000'),('q6c9rk0n7ntj7xvrl00hfrna50wzkqeo','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lQ6Jz:q3vjb8o32PMbJbMK5zAXPTXnsotZAbyy-gF_kAM1py4','2021-04-10 10:37:35.874765'),('v0eochxoicb259g6ndo4lohgi6lhxvs0','.eJxVjMsOwiAQRf-FtSEDlEdduu83kGEGpWogKe3K-O_apAvd3nPOfYmI21ri1vMSZxZnocTpd0tIj1x3wHestyap1XWZk9wVedAup8b5eTncv4OCvXxr0BrJKuIRtYFgkh8CGQZPyYzW2RTUFQZWGtFScsoBMSMPTJl8ziDeH9mdOGw:1lKqco:xpc336muGF0roHrhp9yHyCksxtW5BX5zKapIggzEBDE','2021-03-26 22:51:18.116345');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
INSERT INTO `taggit_tag` VALUES (1,'for','for'),(2,'Great','great'),(3,'children-Ciocolata','children-ciocolata'),(4,'gourmet','gourmet'),(5,'GreatForChildren-CiocolataGfor','greatforchildren-ciocolatagfor'),(6,'Ciocolata gourmet','ciocolata-gourmet'),(7,'Great for Children','great-for-children'),(8,'Produse de patiserie delicioase','produse-de-patiserie-delicioase'),(9,'prajituri','prajituri'),(10,'pavlova','pavlova'),(11,'sourdough','sourdough'),(12,'bread','bread'),(13,'flour','flour'),(14,'kids','kids'),(15,'baby','baby'),(16,'croissant','croissant'),(17,'cozonaci','cozonaci'),(18,'traditional','traditional'),(19,'raise','raise');
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
INSERT INTO `taggit_taggeditem` VALUES (8,3,12,8),(6,5,12,6),(7,5,12,7),(9,1,16,9),(10,1,16,10),(11,2,16,11),(12,2,16,12),(13,2,16,13),(15,3,16,14),(16,3,16,15),(14,3,16,16),(17,4,16,17),(18,4,16,18),(20,5,16,14),(19,5,16,19);
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-07 12:26:51

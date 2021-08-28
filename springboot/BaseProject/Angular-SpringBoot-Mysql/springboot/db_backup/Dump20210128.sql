CREATE DATABASE  IF NOT EXISTS `realnet_rest` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `realnet_rest`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: realnet_rest
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `text` longtext,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh4c7lvsc298whoyd4w9ta25cr` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_orders` AS SELECT 
 1 AS `order_date`,
 1 AS `order_status`,
 1 AS `paid_date`,
 1 AS `payment_type`,
 1 AS `shipping_fee`,
 1 AS `customer_id`,
 1 AS `customer_first_name`,
 1 AS `customer_last_name`,
 1 AS `customer_phone`,
 1 AS `customer_email`,
 1 AS `company`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'02937 Merrick Avenue',NULL,'Fort Wayne','Jetpulse','United States','cgray0@rambler.ru','Clarence','Gray','1-(260)615-5114','46805','Indiana'),(2,'60 Forster Crossing',NULL,'Mobile','Skippad','United States','ecooper1@macromedia.com','Emily','Cooper','1-(251)614-5034','36605','Alabama'),(3,'52 Browning Center',NULL,'Memphis','Riffpath','United States','gwilson2@xinhuanet.com','George','Wilson','1-(901)445-9881','38181','Tennessee'),(4,'85093 Jackson Park',NULL,'Toledo','Feedfire','United States','mmcdonald3@twitter.com','Michael','Mcdonald','1-(419)743-7314','43610','Ohio'),(5,'0706 Heffernan Pass',NULL,'Washington','Oyondu','United States','ltucker4@etsy.com','Lori','Tucker','1-(202)381-2663','20380','District of Columbia'),(6,'2 Ruskin Pass',NULL,'Syracuse','Yozio','United States','lhansen5@stumbleupon.com','Lois','Hansen','1-(315)385-6866','13251','New York'),(7,'61402 Morning Court',NULL,'Lakeland','Eire','United States','fgrant6@yale.edu','Frances','Grant','1-(863)799-9068','33811','Florida'),(8,'775 Messerschmidt Junction',NULL,'El Paso','Realpoint','United States','clewis7@unesco.org','Catherine','Lewis','1-(915)208-4997','88563','Texas'),(9,'7074 Montana Place',NULL,'Portland','Quinu','United States','erogers8@guardian.co.uk','Edward','Rogers','1-(971)934-2404','97271','Oregon'),(10,'59039 Sachtjen Street',NULL,'Sioux City','Blogtag','United States','towens9@earthlink.net','Tina','Owens','1-(712)989-9002','51105','Iowa'),(11,'55 Knutson Street',NULL,'Washington','Meedoo','United States','fpetersona@home.pl','Fred','Peterson','1-(202)228-9380','20099','District of Columbia'),(12,'19 Hoffman Avenue',NULL,'Saint Paul','Tagcat','United States','jcoxb@slashdot.org','Jason','Cox','1-(651)991-0172','55114','Minnesota'),(13,'6336 Continental Circle',NULL,'Oklahoma City','Kazu','United States','pperezc@ask.com','Paul','Perez','1-(405)290-7944','73167','Oklahoma'),(14,'17794 Northport Point',NULL,'Clearwater','Aibox','United States','aduncand@disqus.com','Anthony','Duncan','1-(727)705-8400','33763','Florida'),(15,'47493 Reinke Drive',NULL,'Memphis','Tekfly','United States','sgrahame@google.com.br','Sean','Graham','1-(901)443-0731','38131','Tennessee'),(16,'498 Carey Lane',NULL,'Albany','Youspan','United States','jsimpsonf@youtube.com','Jose','Simpson','1-(518)381-4659','12262','New York'),(17,'44102 Montana Crossing',NULL,'Mobile','Feednation','United States','fsimmonsg@webster.com','Frances','Simmons','1-(251)473-1327','36641','Alabama'),(18,'384 Goodland Pass',NULL,'Washington','Topicblab','United States','jschmidth@vinaora.com','John','Schmidt','1-(202)945-2079','20210','District of Columbia'),(19,'74 Nancy Pass',NULL,'Buffalo','Skilith','United States','rwesti@cornell.edu','Roger','West','1-(716)707-3907','14215','New York'),(20,'602 Laurel Park',NULL,'Boston','Vinte','United States','jfieldsj@shop-pro.jp','Jesse','Fields','1-(617)810-9493','02203','Massachusetts'),(21,'67063 Spenser Junction',NULL,'Amarillo','Brainverse','United States','kpattersonk@machines.org','Kathy','Patterson','1-(806)803-9725','79188','Texas'),(22,'05 Gina Crossing',NULL,'Salt Lake City','DabZ','United States','sbelll@gravatar.com','Stephanie','Bell','1-(801)924-1975','84145','Utah'),(23,'97789 Scofield Point',NULL,'Baton Rouge','Yadel','United States','mturnerm@hp.com','Martha','Turner','1-(225)880-9134','70894','Louisiana'),(24,'19 Briar Crest Alley',NULL,'San Francisco','Voolith','United States','rrossn@weebly.com','Richard','Ross','1-(415)690-1916','94164','California'),(25,'63291 Huxley Drive',NULL,'North Little Rock','BlogXS','United States','sstephenso@times.co.uk','Stephanie','Stephens','1-(501)827-1408','72118','Arkansas'),(26,'13 Oneill Junction',NULL,'Syracuse','Tagtune','United States','dsanchezp@sun.com','Diane','Sanchez','1-(315)979-6793','13224','New York'),(27,'83224 Mallard Center',NULL,'Philadelphia','Browsetype','United States','dlawrenceq@flickr.com','Douglas','Lawrence','1-(610)622-4045','19109','Pennsylvania'),(28,'48410 Westport Circle',NULL,'El Paso','Einti','United States','lhansenr@patch.com','Lori','Hansen','1-(915)266-1989','88546','Texas'),(29,'0562 Muir Trail',NULL,'Cleveland','Tambee','United States','rmedinas@uiuc.edu','Robert','Medina','1-(216)752-7216','44197','Ohio'),(30,'20 Mayer Center',NULL,'Birmingham','Youopia','United States','sharrisont@webnode.com','Shawn','Harrison','1-(205)595-8085','35205','Alabama'),(31,'61859 West Point',NULL,'Greenville','Oodoo','United States','jalexanderu@netsol.com','Julia','Alexander','1-(864)349-2185','29610','South Carolina'),(32,'08229 Glacier Hill Avenue',NULL,'Boynton Beach','Centimia','United States','vstanleyv@wikipedia.org','Victor','Stanley','1-(561)507-7317','33436','Florida'),(33,'409 American Ash Plaza',NULL,'Lima','Dynabox','United States','dwheelerw@indiatimes.com','Dennis','Wheeler','1-(419)889-2883','45807','Ohio'),(34,'7 Waxwing Court',NULL,'Saint Louis','Skivee','United States','rfrazierx@sfgate.com','Rachel','Frazier','1-(314)249-1796','63131','Missouri'),(35,'614 Monica Terrace',NULL,'Portland','Omba','United States','sbrooksy@mediafire.com','Shawn','Brooks','1-(971)854-8478','97240','Oregon'),(36,'4 Browning Park',NULL,'Shreveport','Agimba','United States','fcolemanz@un.org','Frank','Coleman','1-(318)446-4337','71151','Louisiana'),(37,'03446 Sheridan Trail',NULL,'New Orleans','Meedoo','United States','fwright10@flickr.com','Frank','Wright','1-(504)852-2553','70183','Louisiana'),(38,'62 Grayhawk Lane',NULL,'Fairfax','Rhybox','United States','tperkins11@va.gov','Tina','Perkins','1-(571)497-0755','22036','Virginia'),(39,'29701 Jenifer Junction',NULL,'Metairie','Trudoo','United States','rgriffin12@pcworld.com','Ruth','Griffin','1-(504)312-7448','70033','Louisiana'),(40,'10 Stuart Road',NULL,'Wichita','Chatterpoint','United States','ssanchez13@bandcamp.com','Sean','Sanchez','1-(316)535-7647','67260','Kansas'),(41,'17635 Elka Alley',NULL,'Shawnee Mission','Blogpad','United States','lharris14@ask.com','Linda','Harris','1-(913)258-6547','66205','Kansas'),(42,'210 Anhalt Drive',NULL,'Knoxville','Feednation','United States','gwood15@imdb.com','George','Wood','1-(865)482-7169','37924','Tennessee'),(43,'97861 Harper Pass',NULL,'San Antonio','Yodo','United States','nbennett16@netsol.com','Nancy','Bennett','1-(210)749-3167','78260','Texas'),(44,'0 Columbus Terrace',NULL,'Little Rock','Divanoodle','United States','jpierce17@cyberchimps.com','Jesse','Pierce','1-(501)518-2300','72231','Arkansas'),(45,'0422 Merry Court',NULL,'Sacramento','Kazu','United States','jlarson18@ustream.tv','Jerry','Larson','1-(916)702-0977','95852','California'),(46,'5779 Burning Wood Crossing',NULL,'Long Beach','Yacero','United States','nwilliams19@spiegel.de','Norma','Williams','1-(562)631-4036','90847','California'),(47,'04321 Northport Pass',NULL,'Odessa','Linkbuzz','United States','lkelley1a@wsj.com','Louis','Kelley','1-(432)286-2200','79764','Texas'),(48,'99219 5th Place',NULL,'Monticello','Trudeo','United States','rmason1b@census.gov','Ruby','Mason','1-(763)835-7627','55565','Minnesota'),(49,'41 Monica Parkway',NULL,'Youngstown','Plajo','United States','ncarr1c@yellowbook.com','Nicole','Carr','1-(330)154-9245','44511','Ohio'),(50,'62 Rutledge Alley',NULL,'Oklahoma City','Wikivu','United States','mfranklin1d@ucoz.com','Michelle','Franklin','1-(405)751-8906','73147','Oklahoma'),(51,'48 Columbus Road',NULL,'Hagerstown','Tagpad','United States','lhawkins1e@typepad.com','Larry','Hawkins','1-(240)796-9270','21747','Maryland'),(52,'69708 West Avenue',NULL,'Toledo','Avamm','United States','ladams1f@smugmug.com','Lillian','Adams','1-(419)394-2363','43605','Ohio'),(53,'311 Clemons Crossing',NULL,'New York City','Wordware','United States','jwilliamson1g@sbwire.com','Janice','Williamson','1-(212)576-0309','10090','New York'),(54,'17242 Eagan Terrace',NULL,'Baton Rouge','Trudoo','United States','lmitchell1h@live.com','Lisa','Mitchell','1-(225)794-6979','70820','Louisiana'),(55,'51241 Tennessee Point',NULL,'Santa Monica','Pixope','United States','alawrence1i@manage.com','Anna','Lawrence','1-(818)505-8262','90405','California'),(56,'117 Arapahoe Crossing',NULL,'Washington','Mynte','United States','mscott1j@arizona.edu','Margaret','Scott','1-(202)265-0994','20051','District of Columbia'),(57,'137 Commercial Court',NULL,'New York City','Trudoo','United States','tharper1k@loc.gov','Timothy','Harper','1-(212)348-5025','10175','New York'),(58,'281 Briar Crest Way',NULL,'Garland','Photobug','United States','mfrazier1l@mapy.cz','Mary','Frazier','1-(214)939-0299','75049','Texas'),(59,'537 Memorial Way',NULL,'Shreveport','Realmix','United States','myoung1m@ehow.com','Margaret','Young','1-(318)144-2666','71105','Louisiana'),(60,'117 Onsgard Crossing',NULL,'Albany','Demivee','United States','psullivan1n@jiathis.com','Phyllis','Sullivan','1-(518)361-7505','12227','New York'),(61,'60 Kinsman Drive',NULL,'Macon','Meezzy','United States','rknight1o@qq.com','Roy','Knight','1-(478)438-2599','31210','United Kingdom'),(62,'55455 Heffernan Plaza',NULL,'San Francisco','Fivespan','United States','aruiz1p@domainmarket.com','Andrea','Ruiz','1-(415)374-7204','94142','California'),(63,'31 Banding Plaza',NULL,'Jackson','Twitternation','United States','hhayes1q@odnoklasniki.ru','Heather','Hayes','1-(615)919-6350','39296','Mississippi'),(64,'27487 Fair Oaks Crossing',NULL,'Sarasota','BlogXS','United States','rchapman1r@theguardian.com','Roy','Chapman','1-(941)329-4488','34233','Florida'),(65,'52377 Everett Court',NULL,'San Jose','Twitterbridge','United States','dmoore1s@google.co.uk','Daniel','Moore','1-(408)838-8747','95194','California'),(66,'50107 Northport Circle',NULL,'Winston Salem','Brainverse','United States','aday1t@indiegogo.com','Amy','Day','1-(336)903-6679','27157','North Carolina'),(67,'31740 Bayside Trail',NULL,'Huntington','Zoomzone','United States','jkelley1u@who.int','Jesse','Kelley','1-(304)183-6041','25711','West Virginia'),(68,'544 Lakewood Gardens Alley',NULL,'Seattle','Fanoodle','United States','aandrews1v@patch.com','Andrea','Andrews','1-(206)996-3516','98148','Washington'),(69,'0998 Bellgrove Circle',NULL,'Duluth','Tazz','United States','rwillis1w@si.edu','Robert','Willis','1-(678)738-3382','30195','United Kingdom'),(70,'2 New Castle Avenue',NULL,'Miami','Babbleblab','United States','dreid1x@miitbeian.gov.cn','Daniel','Reid','1-(786)539-0220','33111','Florida'),(71,'598 Mayfield Road',NULL,'Wichita','Skippad','United States','lroberts1y@cpanel.net','Louise','Roberts','1-(316)418-5043','67210','Kansas'),(72,'636 Maple Point',NULL,'Reno','Zoovu','United States','mharrison1z@globe.ne.jp','Margaret','Harrison','1-(775)625-5357','89550','Nevada'),(73,'1 Vermont Plaza',NULL,'South Bend','Linkbuzz','United States','pchapman20@eventbrite.com','Peter','Chapman','1-(574)707-4449','46620','Indiana'),(74,'3 Dryden Trail',NULL,'Erie','Eazzy','United States','wtucker21@hubpages.com','Willie','Tucker','1-(814)593-2963','16505','Pennsylvania'),(75,'15 Veith Center',NULL,'Tyler','Yabox','United States','abradley22@cnet.com','Adam','Bradley','1-(903)334-0845','75705','Texas'),(76,'95 Claremont Crossing',NULL,'Sacramento','Gevee','United States','jarmstrong23@archive.org','Juan','Armstrong','1-(916)285-8157','95865','California'),(77,'75 Beilfuss Court',NULL,'Alpharetta','Skinte','United States','kpayne24@com.com','Kenneth','Payne','1-(770)150-8423','30022','United Kingdom'),(78,'542 Browning Park',NULL,'Atlanta','Photolist','United States','ljacobs25@intel.com','Louis','Jacobs','1-(404)386-3449','30343','United Kingdom'),(79,'03 Transport Point',NULL,'Tucson','Yotz','United States','mcooper26@whitehouse.gov','Marilyn','Cooper','1-(520)875-3539','85710','Arizona'),(80,'0316 La Follette Drive',NULL,'Colorado Springs','Brightbean','United States','wwatkins27@pbs.org','William','Watkins','1-(719)568-3678','80920','Colorado'),(81,'99 Kedzie Terrace',NULL,'Chula Vista','Voonix','United States','dbaker28@exblog.jp','Douglas','Baker','1-(619)121-6070','91913','California'),(82,'53540 Hallows Place',NULL,'San Diego','Leexo','United States','dcunningham29@oakley.com','Daniel','Cunningham','1-(619)609-6206','92137','California'),(83,'3 Jana Junction',NULL,'Louisville','Jatri','United States','emitchell2a@amazon.com','Edward','Mitchell','1-(502)427-5275','40280','Kentucky'),(84,'5 Arapahoe Plaza',NULL,'Wichita','Muxo','United States','amatthews2b@live.com','Adam','Matthews','1-(316)764-9074','67220','Kansas'),(85,'6 Moose Street',NULL,'Richmond','Youspan','United States','djacobs2c@jimdo.com','Diane','Jacobs','1-(804)398-4775','23285','Virginia'),(86,'713 Continental Trail',NULL,'Buffalo','Zoomdog','United States','mfrazier2d@forbes.com','Mary','Frazier','1-(716)502-4243','14210','New York'),(87,'006 Elka Center',NULL,'Bakersfield','Katz','United States','ahoward2e@disqus.com','Anthony','Howard','1-(805)800-7968','93311','California'),(88,'292 Browning Circle',NULL,'Richmond','Trilia','United States','akelly2f@unc.edu','Anna','Kelly','1-(804)117-9707','23228','Virginia'),(89,'45 Walton Parkway',NULL,'Salinas','Gigabox','United States','kclark2g@businesswire.com','Kathy','Clark','1-(831)755-4869','93907','California'),(90,'84560 Stephen Parkway',NULL,'Los Angeles','Yakidoo','United States','gcarpenter2h@foxnews.com','Gerald','Carpenter','1-(213)344-9608','90055','California'),(91,'0 Washington Place',NULL,'Oakland','Jaloo','United States','ahart2i@scribd.com','Albert','Hart','1-(415)201-5281','94611','California'),(92,'0623 Gale Drive',NULL,'Jackson','Oloo','United States','jyoung2j@craigslist.org','Julia','Young','1-(615)660-1203','39210','Mississippi'),(93,'501 Leroy Parkway',NULL,'Washington','Ntags','United States','tpierce2k@psu.edu','Tammy','Pierce','1-(703)772-3155','20041','District of Columbia'),(94,'6220 Del Sol Alley',NULL,'Washington','Livetube','United States','rwashington2l@drupal.org','Ronald','Washington','1-(202)828-6093','20551','District of Columbia'),(95,'043 Sunnyside Center',NULL,'Young America','Centizu','United States','acarter2m@simplemachines.org','Alan','Carter','1-(952)234-1678','55551','Minnesota'),(96,'1120 Veith Parkway',NULL,'New Orleans','Feednation','United States','sfreeman2n@redcross.org','Stephanie','Freeman','1-(504)126-8245','70165','Louisiana'),(97,'96394 Bonner Hill',NULL,'San Francisco','Izio','United States','sprice2o@irs.gov','Sara','Price','1-(415)668-5714','94116','California'),(98,'0 Old Shore Center',NULL,'Akron','Skalith','United States','eparker2p@4shared.com','Emily','Parker','1-(330)637-4894','44310','Ohio'),(99,'8584 Jay Street',NULL,'Des Moines','Topicware','United States','jchavez2q@businessweek.com','Jeremy','Chavez','1-(515)769-2045','50335','Iowa'),(100,'3688 Gerald Trail',NULL,'Sacramento','Photolist','United States','pkim2r@stumbleupon.com','Pamela','Kim','1-(510)144-4318','95823','California');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employee_orders`
--

DROP TABLE IF EXISTS `employee_orders`;
/*!50001 DROP VIEW IF EXISTS `employee_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_orders` AS SELECT 
 1 AS `order_date`,
 1 AS `order_status`,
 1 AS `paid_date`,
 1 AS `payment_type`,
 1 AS `shipping_fee`,
 1 AS `employee_id`,
 1 AS `employee_first_name`,
 1 AS `employee_last_name`,
 1 AS `employee_email`,
 1 AS `department`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (201,'2 Bayside Drive',NULL,'https://robohash.org/modilaboriosammolestiae.bmp?size=50x50&set=set1','San Antonio','United States','Toys','gharris0@pagesperso-orange.fr','George','Administrative Assistant I','Harris',NULL,'1-(210)270-8536','78240','Texas'),(202,'30 Anhalt Street',NULL,'https://robohash.org/seddistinctiodolorem.jpg?size=50x50&set=set1','Portland','United States','Books','rhayes1@si.edu','Rachel','Design Engineer','Hayes',NULL,'1-(971)797-2729','97232','Oregon'),(203,'02809 4th Pass',NULL,'https://robohash.org/vitaererumdolore.png?size=50x50&set=set1','North Las Vegas','United States','Toys','apalmer2@posterous.com','Anthony','Health Coach II','Palmer',NULL,'1-(702)984-2108','89036','Nevada'),(204,'647 Lakeland Road',NULL,'https://robohash.org/nobisplaceatquisquam.jpg?size=50x50&set=set1','Albany','United States','Health','lalvarez3@time.com','Laura','Computer Systems Analyst II','Alvarez',NULL,'1-(518)328-2658','12210','New York'),(205,'163 Carey Street',NULL,'https://robohash.org/praesentiumdoloremrerum.png?size=50x50&set=set1','Reno','United States','Kids','areynolds4@nasa.gov','Annie','Senior Quality Engineer','Reynolds',NULL,'1-(775)838-2203','89550','Nevada'),(206,'1 Harper Circle',NULL,'https://robohash.org/earumiurevoluptas.jpg?size=50x50&set=set1','Fort Worth','United States','Electronics','jhenry5@bbb.org','Joe','Chief Design Engineer','Henry',NULL,'1-(682)563-2229','76178','Texas'),(207,'641 Kropf Parkway',NULL,'https://robohash.org/suntsitnecessitatibus.png?size=50x50&set=set1','Indianapolis','United States','Shoes','wwillis6@berkeley.edu','Willie','Structural Analysis Engineer','Willis',NULL,'1-(317)654-6888','46216','Indiana'),(208,'2184 Melby Crossing',NULL,'https://robohash.org/delenitiomnisconsequatur.jpg?size=50x50&set=set1','Little Rock','United States','Outdoors','klawrence7@discovery.com','Keith','VP Quality Control','Lawrence',NULL,'1-(501)583-8851','72222','Arkansas'),(209,'72 Hauk Road',NULL,'https://robohash.org/voluptasautmaiores.png?size=50x50&set=set1','Memphis','United States','Electronics','tjohnston8@alexa.com','Tina','Assistant Media Planner','Johnston',NULL,'1-(901)128-9976','38114','Tennessee'),(210,'99 Manufacturers Drive',NULL,'https://robohash.org/illumsinttempore.jpg?size=50x50&set=set1','Rochester','United States','Industrial','lburns9@taobao.com','Lisa','Operator','Burns',NULL,'1-(585)113-8402','14624','New York'),(211,'03 Anthes Center',NULL,'https://robohash.org/eautet.bmp?size=50x50&set=set1','Washington','United States','Electronics','hstonea@ucsd.edu','Howard','Account Executive','Stone',NULL,'1-(202)958-2516','20425','District of Columbia'),(212,'37574 4th Drive',NULL,'https://robohash.org/laborumtotameveniet.png?size=50x50&set=set1','Springfield','United States','Electronics','jbrownb@squidoo.com','Julie','Analog Circuit Design manager','Brown',NULL,'1-(217)741-6449','62705','Illinois'),(213,'3 Bultman Circle',NULL,'https://robohash.org/sedutporro.png?size=50x50&set=set1','Fargo','United States','Computers','eturnerc@theatlantic.com','Edward','Structural Engineer','Turner',NULL,'1-(701)353-1996','58122','North Dakota'),(214,'5150 Holmberg Way',NULL,'https://robohash.org/blanditiiscommodiet.png?size=50x50&set=set1','Wilmington','United States','Outdoors','dnicholsd@fda.gov','Douglas','Editor','Nichols',NULL,'1-(302)771-6486','19805','Delaware'),(215,'32 Summit Park',NULL,'https://robohash.org/providentaccusamussed.bmp?size=50x50&set=set1','Saint Cloud','United States','Baby','jgilberte@infoseek.co.jp','Jessica','Account Executive','Gilbert',NULL,'1-(320)607-0289','56372','Minnesota'),(216,'24 Merrick Way',NULL,'https://robohash.org/utfaciliset.png?size=50x50&set=set1','San Antonio','United States','Movies','khernandezf@shinystat.com','Kathy','Junior Executive','Hernandez',NULL,'1-(210)733-3380','78225','Texas'),(217,'42 Manufacturers Pass',NULL,'https://robohash.org/quiaetaut.jpg?size=50x50&set=set1','Jacksonville','United States','Sports','lsullivang@flavors.me','Lillian','Engineer I','Sullivan',NULL,'1-(904)885-2053','32215','Florida'),(218,'69255 Dakota Plaza',NULL,'https://robohash.org/voluptatemnamaliquam.bmp?size=50x50&set=set1','Austin','United States','Baby','fjenkinsh@huffingtonpost.com','Frances','Developer IV','Jenkins',NULL,'1-(512)764-3809','78769','Texas'),(219,'3 Eagle Crest Place',NULL,'https://robohash.org/consequaturutquo.png?size=50x50&set=set1','Gilbert','United States','Beauty','rmyersi@alexa.com','Roger','Account Executive','Myers',NULL,'1-(480)583-9583','85297','Arizona'),(220,'99 Arapahoe Terrace',NULL,'https://robohash.org/etfacilisquo.bmp?size=50x50&set=set1','Saint Cloud','United States','Baby','bhunterj@ucsd.edu','Bonnie','Analog Circuit Design manager','Hunter',NULL,'1-(320)933-5140','56372','Minnesota');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `user_id` bigint(20) NOT NULL,
  `dated` varchar(255) DEFAULT NULL,
  `lavel` varchar(255) DEFAULT NULL,
  `logger` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naming_convension`
--

DROP TABLE IF EXISTS `naming_convension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `naming_convension` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variable_name` varchar(45) DEFAULT NULL,
  `object_name_dynamic_string` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naming_convension`
--

LOCK TABLES `naming_convension` WRITE;
/*!40000 ALTER TABLE `naming_convension` DISABLE KEYS */;
INSERT INTO `naming_convension` VALUES (1,'table_name_lower','rn_nil_final'),(2,'table_name_upper','RN_NIL_FINAL'),(3,'table_name_first_upper','Rn_nil_final'),(4,'dao_name_first_upper','Nil_final_dao'),(5,'dao_name_lower','nil_final_dao'),(6,'dao_impl_name_first_upper','Nil_final_daoimpl'),(7,'service_name_lower','nil_final_service'),(8,'service_name_first_upper','Nil_final_service'),(9,'service_impl_name_first_upper','Nil_final_serviceimpl'),(10,'repository_name_lower',NULL),(11,'repository_name_first_upper',NULL),(12,'controller_name_first_upper','Nil_final_controller');
/*!40000 ALTER TABLE `naming_convension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!50001 DROP VIEW IF EXISTS `order_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_details` AS SELECT 
 1 AS `order_id`,
 1 AS `product_id`,
 1 AS `quantity`,
 1 AS `unit_price`,
 1 AS `discount`,
 1 AS `date_allocated`,
 1 AS `order_item_status`,
 1 AS `order_date`,
 1 AS `order_status`,
 1 AS `paid_date`,
 1 AS `payment_type`,
 1 AS `shipped_date`,
 1 AS `shipping_fee`,
 1 AS `ship_name`,
 1 AS `ship_address1`,
 1 AS `ship_address2`,
 1 AS `ship_city`,
 1 AS `ship_state`,
 1 AS `ship_postal_code`,
 1 AS `ship_country`,
 1 AS `product_code`,
 1 AS `product_name`,
 1 AS `category`,
 1 AS `description`,
 1 AS `list_price`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `customer_phone`,
 1 AS `customer_email`,
 1 AS `customer_company`,
 1 AS `employee_id`,
 1 AS `employee_name`,
 1 AS `employee_department`,
 1 AS `employee_job_title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!50001 DROP VIEW IF EXISTS `order_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_info` AS SELECT 
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `order_status`,
 1 AS `paid_date`,
 1 AS `payment_type`,
 1 AS `shipped_date`,
 1 AS `shipping_fee`,
 1 AS `ship_name`,
 1 AS `ship_address1`,
 1 AS `ship_address2`,
 1 AS `ship_city`,
 1 AS `ship_state`,
 1 AS `ship_postal_code`,
 1 AS `ship_country`,
 1 AS `customer_id`,
 1 AS `employee_id`,
 1 AS `customer_name`,
 1 AS `customer_phone`,
 1 AS `customer_email`,
 1 AS `customer_company`,
 1 AS `employee_name`,
 1 AS `employee_department`,
 1 AS `employee_job_title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_allocated` datetime DEFAULT NULL,
  `discount` decimal(19,2) DEFAULT NULL,
  `order_item_status` varchar(255) DEFAULT NULL,
  `quantity` decimal(19,2) DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (4001,608,'2017-01-15 00:00:00',8.73,'Allocated',1.00,97.34),(4001,611,'2016-09-21 00:00:00',4.36,'No Stock',2.00,58.46),(4001,616,'2016-09-21 00:00:00',4.36,'No Stock',2.00,58.46),(4001,613,'2016-09-21 00:00:00',4.36,'No Stock',2.00,58.46),(4001,615,'2016-09-21 00:00:00',4.36,'No Stock',2.00,58.46),(4002,604,'2016-12-15 00:00:00',2.86,'On Order',3.00,88.97),(4002,610,'2016-10-12 00:00:00',8.65,'Allocated',4.00,37.19),(4002,615,'2016-10-12 00:00:00',8.65,'Allocated',4.00,37.19),(4003,609,'2016-06-15 00:00:00',4.01,'No Stock',8.00,92.87),(4003,612,'2017-02-09 00:00:00',3.54,'No Stock',7.00,87.15),(4004,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4004,620,'2016-12-14 00:00:00',1.00,'On Order',2.00,10.00),(4004,611,'2016-12-14 00:00:00',1.00,'On Order',4.00,10.00),(4004,612,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4005,618,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4005,619,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4005,620,'2016-12-14 00:00:00',1.00,'No Stock',2.00,10.00),(4006,617,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4006,618,'2016-12-14 00:00:00',1.00,'No Stock',2.00,10.00),(4006,607,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4007,617,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4007,610,'2016-12-14 00:00:00',1.00,'Allocated',2.00,10.00),(4007,612,'2016-12-14 00:00:00',1.00,'Allocated',5.00,10.00),(4008,612,'2017-01-13 00:00:00',8.94,'Allocated',1.00,57.20),(4008,615,'2017-01-13 00:00:00',8.94,'Allocated',3.00,57.20),(4008,611,'2017-01-13 00:00:00',8.94,'Allocated',1.00,57.20),(4009,605,'2017-02-13 00:00:00',5.68,'No Stock',6.00,62.16),(4009,610,'2016-09-16 00:00:00',5.00,'No Stock',6.00,19.31),(4009,615,'2016-10-18 00:00:00',4.48,'Allocated',9.00,51.21),(4010,601,'2016-03-17 00:00:00',9.41,'On Order',1.00,32.18),(4010,602,'2016-12-30 00:00:00',7.18,'No Stock',1.00,31.35),(4010,603,'2016-07-05 00:00:00',2.76,'Allocated',10.00,24.24),(4010,610,'2016-07-17 00:00:00',3.02,'On Order',6.00,9.09),(4011,604,'2016-04-04 00:00:00',9.30,'No Stock',10.00,58.25),(4011,606,'2016-06-30 00:00:00',1.76,'Allocated',5.00,73.34),(4011,608,'2016-06-04 00:00:00',4.60,'On Order',3.00,95.07),(4011,615,'2016-06-10 00:00:00',3.93,'Allocated',9.00,20.84),(4012,604,'2016-09-21 00:00:00',9.97,'No Stock',5.00,19.82),(4012,601,'2016-09-21 00:00:00',9.97,'No Stock',3.00,19.82),(4012,610,'2016-09-21 00:00:00',9.97,'No Stock',3.00,19.82),(4013,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4013,604,'2016-09-21 00:00:00',9.97,'No Stock',2.00,19.82),(4013,606,'2016-09-21 00:00:00',9.97,'No Stock',5.00,19.82),(4014,601,'2016-08-21 00:00:00',4.99,'Allocated',3.00,37.57),(4015,611,'2017-03-13 00:00:00',6.62,'Allocated',8.00,95.27),(4015,612,'2016-04-07 00:00:00',4.14,'Allocated',2.00,89.63),(4015,615,'2016-08-15 00:00:00',1.11,'On Order',8.00,69.03),(4016,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4016,611,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4016,612,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4017,605,'2017-02-15 00:00:00',2.10,'On Order',6.00,75.88),(4017,610,'2016-04-30 00:00:00',7.18,'On Order',4.00,26.43),(4017,619,'2016-04-02 00:00:00',9.26,'No Stock',6.00,77.91),(4018,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4019,615,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4020,614,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4021,604,'2016-06-26 00:00:00',8.54,'No Stock',3.00,20.14),(4022,614,'2016-09-09 00:00:00',4.62,'On Order',7.00,41.61),(4022,619,'2016-10-18 00:00:00',2.56,'On Order',1.00,10.45),(4023,607,'2016-11-15 00:00:00',5.59,'On Order',6.00,7.68),(4023,611,'2016-04-03 00:00:00',1.71,'No Stock',7.00,89.40),(4024,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4024,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4024,608,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4024,609,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4025,612,'2016-04-25 00:00:00',3.52,'Allocated',6.00,81.24),(4025,614,'2016-09-11 00:00:00',2.58,'On Order',4.00,14.07),(4026,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4026,618,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4027,611,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4027,612,'2016-12-14 00:00:00',1.00,'No Stock',3.00,10.00),(4027,613,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4028,605,'2016-07-24 00:00:00',7.82,'On Order',5.00,95.04),(4028,615,'2016-12-09 00:00:00',1.78,'Allocated',8.00,74.56),(4029,604,'2016-11-26 00:00:00',5.37,'On Order',1.00,11.06),(4029,603,'2016-11-26 00:00:00',5.37,'On Order',1.00,11.06),(4029,607,'2016-11-26 00:00:00',5.37,'On Order',1.00,11.06),(4030,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4030,620,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4030,619,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4031,605,'2017-02-12 00:00:00',2.92,'No Stock',7.00,75.42),(4031,608,'2017-02-12 00:00:00',2.92,'No Stock',7.00,75.42),(4031,609,'2017-02-12 00:00:00',2.92,'No Stock',7.00,75.42),(4031,615,'2017-02-12 00:00:00',2.92,'No Stock',7.00,75.42),(4032,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4032,612,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4032,611,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4032,619,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4033,615,'2016-05-09 00:00:00',6.19,'Allocated',4.00,45.55),(4033,609,'2016-05-09 00:00:00',6.19,'Allocated',3.00,45.55),(4033,620,'2016-05-09 00:00:00',6.19,'Allocated',1.00,45.55),(4034,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4034,620,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4034,609,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4035,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4035,614,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4035,619,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4036,604,'2016-05-04 00:00:00',4.25,'No Stock',1.00,46.63),(4036,605,'2017-02-25 00:00:00',9.97,'Allocated',6.00,66.75),(4037,615,'2017-03-01 00:00:00',7.22,'On Order',2.00,44.76),(4037,612,'2017-03-01 00:00:00',7.22,'On Order',2.00,44.76),(4038,602,'2016-07-13 00:00:00',7.66,'On Order',2.00,13.25),(4038,620,'2016-07-13 00:00:00',7.66,'On Order',3.00,13.25),(4039,609,'2016-07-24 00:00:00',6.09,'No Stock',1.00,99.68),(4039,619,'2016-07-24 00:00:00',6.09,'No Stock',3.00,99.68),(4039,620,'2016-07-24 00:00:00',6.09,'No Stock',1.00,99.68),(4040,612,'2016-04-24 00:00:00',6.72,'Allocated',2.00,79.64),(4040,620,'2016-04-24 00:00:00',6.72,'Allocated',2.00,79.64),(4041,615,'2016-03-31 00:00:00',8.92,'No Stock',9.00,42.79),(4041,612,'2016-03-31 00:00:00',8.92,'No Stock',2.00,42.79),(4041,620,'2016-03-31 00:00:00',8.92,'No Stock',1.00,42.79),(4042,617,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4042,613,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4042,620,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4043,611,'2016-06-18 00:00:00',8.57,'No Stock',7.00,87.95),(4043,619,'2016-06-18 00:00:00',8.57,'No Stock',3.00,87.95),(4043,620,'2016-06-18 00:00:00',8.57,'No Stock',1.00,87.95),(4044,602,'2016-11-05 00:00:00',3.26,'On Order',8.00,47.30),(4044,612,'2017-02-11 00:00:00',6.56,'On Order',3.00,79.42),(4045,603,'2016-11-11 00:00:00',7.20,'No Stock',3.00,31.01),(4045,604,'2016-11-13 00:00:00',6.80,'Allocated',10.00,43.54),(4045,608,'2017-01-18 00:00:00',3.58,'Allocated',7.00,15.20),(4046,611,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4047,619,'2016-06-17 00:00:00',8.77,'No Stock',2.00,81.11),(4047,620,'2016-05-05 00:00:00',6.85,'No Stock',8.00,1.54),(4048,605,'2016-07-06 00:00:00',2.44,'On Order',7.00,13.52),(4049,603,'2017-02-22 00:00:00',5.77,'Allocated',7.00,40.99),(4049,609,'2017-01-26 00:00:00',2.75,'Allocated',10.00,90.45),(4049,612,'2016-10-01 00:00:00',9.85,'No Stock',10.00,24.28),(4050,606,'2016-12-18 00:00:00',1.49,'No Stock',4.00,27.84),(4050,607,'2016-04-24 00:00:00',3.08,'On Order',2.00,72.72),(4050,612,'2017-02-25 00:00:00',5.15,'No Stock',2.00,76.85),(4051,603,'2016-07-02 00:00:00',1.77,'Allocated',1.00,57.60),(4052,605,'2016-05-22 00:00:00',6.47,'No Stock',9.00,50.74),(4053,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4054,601,'2016-07-12 00:00:00',9.19,'On Order',10.00,55.48),(4055,606,'2016-11-20 00:00:00',3.06,'No Stock',10.00,57.17),(4056,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4057,609,'2016-10-01 00:00:00',9.42,'On Order',1.00,79.30),(4057,610,'2016-07-20 00:00:00',5.55,'No Stock',5.00,41.21),(4057,618,'2016-08-19 00:00:00',6.42,'On Order',3.00,68.99),(4058,604,'2016-05-20 00:00:00',6.96,'Allocated',6.00,36.78),(4058,619,'2016-06-19 00:00:00',4.30,'Allocated',6.00,79.01),(4059,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4060,603,'2017-02-05 00:00:00',2.10,'On Order',10.00,40.38),(4060,604,'2017-01-17 00:00:00',1.46,'Allocated',9.00,41.98),(4061,605,'2016-09-05 00:00:00',2.51,'On Order',1.00,41.12),(4061,602,'2016-09-05 00:00:00',2.51,'On Order',1.00,41.12),(4061,603,'2016-09-05 00:00:00',2.51,'On Order',1.00,41.12),(4062,604,'2016-11-20 00:00:00',4.91,'No Stock',1.00,71.77),(4062,605,'2016-09-05 00:00:00',2.51,'On Order',2.00,41.12),(4062,607,'2016-09-05 00:00:00',2.51,'On Order',1.00,41.12),(4063,608,'2016-03-25 00:00:00',4.62,'Allocated',1.00,62.85),(4063,605,'2016-09-05 00:00:00',2.51,'On Order',4.00,41.12),(4063,607,'2016-09-05 00:00:00',2.51,'On Order',1.00,41.12),(4064,615,'2016-07-06 00:00:00',6.79,'No Stock',1.00,68.27),(4064,602,'2016-09-05 00:00:00',2.51,'On Order',2.00,41.12),(4064,603,'2016-09-05 00:00:00',2.51,'On Order',5.00,41.12),(4064,605,'2016-09-05 00:00:00',2.51,'On Order',1.00,41.12),(4065,610,'2016-09-23 00:00:00',1.78,'Allocated',5.00,99.76),(4066,605,'2016-09-05 00:00:00',2.51,'On Order',1.00,41.12),(4066,604,'2016-08-12 00:00:00',7.42,'Allocated',9.00,2.63),(4066,615,'2016-03-27 00:00:00',7.22,'No Stock',7.00,25.14),(4067,618,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4068,602,'2016-08-30 00:00:00',5.17,'Allocated',4.00,12.67),(4068,603,'2016-10-12 00:00:00',1.02,'On Order',1.00,87.81),(4069,620,'2017-02-22 00:00:00',3.49,'Allocated',7.00,89.85),(4070,615,'2017-01-31 00:00:00',4.09,'On Order',5.00,94.08),(4071,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4072,601,'2016-11-25 00:00:00',9.61,'No Stock',3.00,89.95),(4072,612,'2016-05-25 00:00:00',5.99,'No Stock',5.00,34.51),(4073,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4074,606,'2016-04-30 00:00:00',3.63,'On Order',10.00,98.20),(4075,605,'2016-07-19 00:00:00',9.16,'On Order',8.00,69.36),(4075,606,'2016-04-09 00:00:00',8.66,'On Order',1.00,3.95),(4076,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4077,602,'2016-06-23 00:00:00',5.92,'No Stock',10.00,90.58),(4077,609,'2016-12-07 00:00:00',3.74,'No Stock',1.00,8.25),(4077,615,'2017-03-10 00:00:00',4.50,'Allocated',9.00,86.20),(4078,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4078,612,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4078,618,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4079,615,'2017-03-04 00:00:00',1.76,'On Order',7.00,1.95),(4079,613,'2016-12-14 00:00:00',1.00,'No Stock',2.00,10.00),(4079,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4080,608,'2016-11-13 00:00:00',9.03,'On Order',5.00,26.84),(4080,609,'2016-09-10 00:00:00',4.08,'Allocated',3.00,41.76),(4081,604,'2016-10-21 00:00:00',8.45,'On Order',9.00,5.49),(4082,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4083,602,'2016-09-16 00:00:00',5.16,'No Stock',1.00,44.85),(4084,604,'2016-08-12 00:00:00',4.09,'Allocated',4.00,58.27),(4085,605,'2016-11-24 00:00:00',7.49,'On Order',8.00,93.54),(4086,615,'2016-09-01 00:00:00',1.63,'No Stock',2.00,94.02),(4087,601,'2016-07-13 00:00:00',3.86,'No Stock',2.00,79.39),(4088,615,'2016-11-15 00:00:00',3.74,'Allocated',3.00,14.03),(4089,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4090,611,'2016-07-25 00:00:00',1.53,'No Stock',4.00,46.11),(4091,613,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4092,602,'2016-09-09 00:00:00',7.92,'On Order',5.00,42.68),(4093,615,'2016-07-09 00:00:00',5.92,'No Stock',8.00,75.27),(4094,605,'2017-02-21 00:00:00',4.52,'On Order',7.00,91.05),(4095,602,'2017-02-26 00:00:00',9.62,'On Order',6.00,58.50),(4095,604,'2016-12-01 00:00:00',4.11,'No Stock',3.00,80.13),(4095,608,'2016-03-27 00:00:00',5.54,'No Stock',1.00,23.96),(4096,601,'2016-04-18 00:00:00',5.33,'No Stock',4.00,9.84),(4097,605,'2016-05-13 00:00:00',5.61,'On Order',4.00,45.03),(4097,606,'2016-11-29 00:00:00',3.59,'On Order',3.00,41.39),(4098,607,'2016-11-23 00:00:00',2.74,'No Stock',8.00,11.86),(4099,606,'2016-10-08 00:00:00',5.84,'On Order',2.00,54.09),(4100,608,'2016-11-16 00:00:00',1.25,'Allocated',3.00,6.62),(4101,617,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4102,608,'2016-10-01 00:00:00',9.62,'On Order',1.00,2.54),(4102,609,'2016-10-14 00:00:00',5.98,'On Order',9.00,92.56),(4102,610,'2016-08-20 00:00:00',5.90,'On Order',10.00,26.81),(4103,606,'2016-09-10 00:00:00',9.88,'No Stock',6.00,71.32),(4103,608,'2016-12-26 00:00:00',9.79,'No Stock',1.00,73.91),(4104,603,'2017-03-02 00:00:00',4.08,'Allocated',9.00,33.85),(4105,601,'2016-11-11 00:00:00',1.99,'On Order',5.00,49.17),(4105,606,'2017-01-06 00:00:00',4.48,'Allocated',9.00,93.80),(4106,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4107,603,'2016-07-20 00:00:00',3.71,'On Order',2.00,24.95),(4107,604,'2017-01-03 00:00:00',1.39,'No Stock',5.00,43.75),(4107,608,'2016-12-19 00:00:00',8.72,'Allocated',1.00,49.09),(4107,616,'2016-09-23 00:00:00',1.21,'On Order',8.00,26.78),(4108,604,'2017-01-01 00:00:00',3.04,'On Order',8.00,36.89),(4108,619,'2016-05-03 00:00:00',6.66,'Allocated',1.00,6.43),(4109,604,'2016-10-21 00:00:00',9.43,'No Stock',9.00,89.19),(4109,609,'2016-10-23 00:00:00',9.12,'No Stock',2.00,3.71),(4110,605,'2016-08-05 00:00:00',7.86,'On Order',3.00,61.65),(4110,606,'2016-06-07 00:00:00',7.40,'Allocated',2.00,63.62),(4111,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4111,612,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4111,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4112,607,'2017-01-01 00:00:00',9.44,'On Order',5.00,63.70),(4112,610,'2016-04-09 00:00:00',8.30,'On Order',1.00,22.54),(4113,604,'2017-01-05 00:00:00',4.40,'Allocated',6.00,86.01),(4113,611,'2017-02-26 00:00:00',4.58,'Allocated',5.00,39.64),(4113,615,'2016-08-24 00:00:00',3.61,'Allocated',3.00,22.49),(4113,619,'2016-05-01 00:00:00',6.63,'On Order',6.00,7.60),(4114,610,'2017-01-18 00:00:00',4.79,'Allocated',6.00,3.77),(4114,608,'2017-01-18 00:00:00',4.79,'Allocated',2.00,3.77),(4114,609,'2017-01-18 00:00:00',4.79,'Allocated',3.00,3.77),(4115,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4115,620,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4116,610,'2016-05-11 00:00:00',9.53,'On Order',5.00,54.21),(4116,620,'2016-05-11 00:00:00',9.53,'On Order',3.00,54.21),(4116,615,'2016-05-11 00:00:00',9.53,'On Order',1.00,54.21),(4117,603,'2016-04-18 00:00:00',4.35,'On Order',7.00,91.81),(4117,610,'2017-02-09 00:00:00',6.80,'Allocated',9.00,79.15),(4118,611,'2016-08-18 00:00:00',8.73,'On Order',8.00,1.55),(4118,615,'2016-08-18 00:00:00',8.73,'On Order',3.00,1.55),(4118,612,'2016-08-18 00:00:00',8.73,'On Order',1.00,1.55),(4119,611,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4119,615,'2016-08-18 00:00:00',8.73,'On Order',8.00,1.55),(4119,612,'2016-08-18 00:00:00',8.73,'On Order',4.00,1.55),(4120,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4120,612,'2016-08-18 00:00:00',8.73,'On Order',2.00,1.55),(4120,611,'2016-08-18 00:00:00',8.73,'On Order',8.00,1.55),(4121,602,'2016-06-03 00:00:00',6.48,'No Stock',3.00,7.09),(4121,612,'2016-08-18 00:00:00',8.73,'On Order',2.00,1.55),(4121,611,'2016-08-18 00:00:00',8.73,'On Order',1.00,1.55),(4122,606,'2016-05-08 00:00:00',1.66,'No Stock',5.00,44.99),(4122,611,'2016-08-18 00:00:00',8.73,'On Order',2.00,1.55),(4122,612,'2016-08-18 00:00:00',8.73,'On Order',6.00,1.55),(4123,607,'2016-12-28 00:00:00',1.32,'Allocated',10.00,4.78),(4124,604,'2017-01-05 00:00:00',6.75,'On Order',1.00,18.79),(4125,605,'2016-07-24 00:00:00',1.61,'On Order',9.00,59.37),(4125,608,'2016-08-22 00:00:00',2.72,'On Order',1.00,72.49),(4126,610,'2016-09-29 00:00:00',1.15,'On Order',10.00,13.83),(4126,615,'2017-02-24 00:00:00',9.08,'No Stock',10.00,71.77),(4127,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4128,605,'2017-02-09 00:00:00',7.16,'No Stock',6.00,94.61),(4128,616,'2016-04-06 00:00:00',2.72,'On Order',3.00,4.67),(4129,610,'2016-04-30 00:00:00',8.17,'On Order',5.00,73.89),(4130,608,'2017-02-27 00:00:00',8.39,'No Stock',6.00,47.42),(4131,602,'2016-03-21 00:00:00',6.07,'No Stock',5.00,28.62),(4132,602,'2016-06-21 00:00:00',3.58,'Allocated',7.00,38.86),(4132,604,'2016-12-20 00:00:00',2.36,'No Stock',4.00,89.39),(4132,605,'2016-08-03 00:00:00',9.78,'No Stock',5.00,29.97),(4133,611,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4133,613,'2016-12-14 00:00:00',1.00,'No Stock',2.00,10.00),(4133,615,'2016-12-14 00:00:00',1.00,'No Stock',4.00,10.00),(4134,606,'2016-04-07 00:00:00',3.21,'Allocated',1.00,73.57),(4134,608,'2017-01-14 00:00:00',8.68,'On Order',1.00,65.61),(4135,603,'2017-01-02 00:00:00',2.61,'Allocated',2.00,7.24),(4135,607,'2016-12-16 00:00:00',6.23,'No Stock',6.00,15.99),(4135,609,'2016-11-25 00:00:00',2.90,'On Order',6.00,26.55),(4135,612,'2016-03-25 00:00:00',9.59,'No Stock',8.00,17.99),(4136,606,'2016-06-22 00:00:00',8.15,'On Order',10.00,16.82),(4137,605,'2016-05-22 00:00:00',6.08,'On Order',2.00,39.96),(4138,620,'2016-09-17 00:00:00',3.68,'Allocated',6.00,4.60),(4139,601,'2016-11-25 00:00:00',7.37,'No Stock',4.00,87.74),(4140,603,'2016-05-23 00:00:00',6.80,'On Order',10.00,90.31),(4140,615,'2016-12-24 00:00:00',2.49,'On Order',8.00,82.86),(4141,609,'2017-02-10 00:00:00',1.51,'Allocated',7.00,20.28),(4142,608,'2016-07-07 00:00:00',8.32,'No Stock',7.00,55.47),(4142,619,'2016-08-02 00:00:00',1.64,'Allocated',5.00,75.63),(4143,606,'2016-10-25 00:00:00',4.90,'No Stock',3.00,99.61),(4144,604,'2016-09-09 00:00:00',3.90,'Allocated',6.00,80.75),(4145,603,'2016-06-17 00:00:00',8.04,'On Order',3.00,57.97),(4146,611,'2016-04-15 00:00:00',6.14,'On Order',8.00,69.70),(4147,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4148,602,'2016-03-26 00:00:00',1.73,'Allocated',4.00,67.89),(4149,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4150,615,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4151,617,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4151,618,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4152,608,'2016-07-11 00:00:00',9.97,'No Stock',10.00,97.82),(4152,620,'2016-07-11 00:00:00',9.97,'No Stock',10.00,97.82),(4153,615,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4153,618,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4153,601,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4153,613,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4154,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4154,604,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4155,606,'2017-02-11 00:00:00',2.57,'No Stock',7.00,42.62),(4155,607,'2016-09-01 00:00:00',5.25,'On Order',2.00,83.04),(4155,610,'2016-10-18 00:00:00',6.31,'On Order',6.00,90.56),(4156,615,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4156,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4156,601,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4157,603,'2016-08-03 00:00:00',5.35,'Allocated',9.00,93.09),(4157,607,'2017-01-13 00:00:00',3.90,'On Order',6.00,40.05),(4158,612,'2016-04-14 00:00:00',6.29,'Allocated',1.00,17.50),(4158,611,'2016-04-14 00:00:00',6.29,'Allocated',1.00,17.50),(4159,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4159,612,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4160,610,'2017-01-04 00:00:00',5.88,'No Stock',8.00,42.67),(4160,620,'2016-11-20 00:00:00',4.28,'Allocated',10.00,87.78),(4161,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4161,611,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4162,613,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4162,620,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4163,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4163,612,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4163,611,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4164,607,'2016-08-17 00:00:00',4.32,'On Order',6.00,80.56),(4164,608,'2016-08-17 00:00:00',4.32,'On Order',6.00,80.56),(4164,617,'2016-08-17 00:00:00',4.32,'On Order',6.00,80.56),(4165,604,'2016-08-09 00:00:00',7.56,'On Order',8.00,72.67),(4165,603,'2016-08-09 00:00:00',7.56,'On Order',8.00,72.67),(4165,614,'2016-08-09 00:00:00',7.56,'On Order',8.00,72.67),(4166,601,'2016-09-01 00:00:00',9.92,'No Stock',3.00,34.36),(4166,602,'2016-05-26 00:00:00',5.76,'Allocated',10.00,33.99),(4167,603,'2016-06-20 00:00:00',1.14,'Allocated',5.00,58.20),(4167,608,'2017-01-05 00:00:00',6.24,'No Stock',1.00,20.01),(4168,601,'2016-09-06 00:00:00',7.44,'On Order',1.00,59.45),(4168,605,'2016-09-06 00:00:00',7.44,'On Order',1.00,59.45),(4169,604,'2017-01-16 00:00:00',2.26,'No Stock',2.00,93.43),(4169,609,'2017-01-16 00:00:00',2.26,'No Stock',2.00,93.43),(4169,607,'2017-01-16 00:00:00',2.26,'No Stock',2.00,93.43),(4170,607,'2017-02-11 00:00:00',9.02,'No Stock',10.00,68.27),(4170,620,'2017-02-11 00:00:00',9.02,'No Stock',10.00,68.27),(4171,610,'2016-04-25 00:00:00',3.71,'Allocated',10.00,49.38),(4171,601,'2016-04-25 00:00:00',3.71,'Allocated',10.00,49.38),(4171,611,'2016-04-25 00:00:00',3.71,'Allocated',10.00,49.38),(4171,613,'2016-04-25 00:00:00',3.71,'Allocated',10.00,49.38),(4171,615,'2016-04-25 00:00:00',3.71,'Allocated',10.00,49.38),(4172,606,'2016-04-11 00:00:00',2.95,'No Stock',6.00,88.26),(4172,609,'2016-10-14 00:00:00',1.12,'Allocated',7.00,60.97),(4173,601,'2017-01-26 00:00:00',9.03,'On Order',10.00,11.22),(4173,603,'2017-01-26 00:00:00',9.03,'On Order',10.00,11.22),(4173,605,'2017-01-26 00:00:00',9.03,'On Order',10.00,11.22),(4174,607,'2016-04-30 00:00:00',6.31,'No Stock',8.00,53.95),(4174,612,'2016-07-08 00:00:00',7.15,'No Stock',2.00,13.56),(4175,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4175,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4175,620,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4176,615,'2017-01-21 00:00:00',1.09,'Allocated',2.00,70.24),(4176,616,'2017-01-21 00:00:00',1.09,'Allocated',2.00,70.24),(4177,601,'2016-05-07 00:00:00',2.99,'Allocated',2.00,17.86),(4177,604,'2016-04-05 00:00:00',6.73,'On Order',8.00,18.39),(4178,605,'2016-09-11 00:00:00',8.82,'Allocated',9.00,23.59),(4178,607,'2016-04-18 00:00:00',7.88,'No Stock',9.00,62.59),(4179,614,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4180,602,'2016-11-30 00:00:00',6.05,'Allocated',7.00,48.19),(4180,603,'2016-11-30 00:00:00',6.05,'Allocated',1.00,48.19),(4181,602,'2016-08-16 00:00:00',4.74,'Allocated',2.00,64.20),(4181,603,'2016-04-18 00:00:00',2.49,'Allocated',3.00,41.45),(4181,604,'2016-05-03 00:00:00',6.42,'No Stock',5.00,86.42),(4182,611,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4183,615,'2016-12-22 00:00:00',8.16,'On Order',1.00,68.34),(4184,601,'2016-09-16 00:00:00',2.74,'Allocated',2.00,95.18),(4184,603,'2016-07-01 00:00:00',9.44,'No Stock',9.00,99.41),(4184,604,'2016-04-02 00:00:00',3.48,'Allocated',1.00,29.52),(4185,602,'2016-10-20 00:00:00',5.50,'On Order',2.00,22.84),(4185,611,'2017-02-05 00:00:00',4.27,'Allocated',10.00,34.57),(4185,612,'2017-03-14 00:00:00',5.03,'Allocated',4.00,85.32),(4185,619,'2016-10-19 00:00:00',1.57,'No Stock',9.00,64.97),(4186,605,'2017-01-31 00:00:00',7.63,'On Order',2.00,80.08),(4187,602,'2016-11-13 00:00:00',7.74,'On Order',9.00,87.92),(4187,616,'2016-09-15 00:00:00',6.52,'On Order',3.00,73.39),(4188,604,'2016-06-05 00:00:00',1.97,'No Stock',8.00,30.36),(4188,605,'2016-03-31 00:00:00',6.11,'On Order',5.00,70.95),(4188,611,'2016-03-30 00:00:00',8.76,'On Order',3.00,23.18),(4189,608,'2016-04-12 00:00:00',3.08,'No Stock',4.00,52.23),(4190,602,'2016-03-29 00:00:00',4.18,'No Stock',10.00,17.30),(4190,615,'2016-11-01 00:00:00',9.45,'Allocated',6.00,34.29),(4191,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4192,602,'2017-02-14 00:00:00',5.09,'Allocated',4.00,90.29),(4192,605,'2017-02-14 00:00:00',1.28,'On Order',8.00,1.03),(4192,615,'2016-08-11 00:00:00',7.49,'No Stock',1.00,11.61),(4193,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4194,618,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4195,617,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4196,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4197,608,'2016-10-30 00:00:00',3.99,'On Order',10.00,60.36),(4198,606,'2016-06-26 00:00:00',2.32,'No Stock',1.00,58.71),(4199,602,'2016-04-16 00:00:00',9.45,'Allocated',8.00,12.59),(4199,603,'2016-11-28 00:00:00',2.26,'No Stock',7.00,5.50),(4200,605,'2017-03-07 00:00:00',1.00,'No Stock',10.00,92.81),(4201,606,'2016-12-15 00:00:00',5.94,'Allocated',3.00,46.48),(4201,608,'2016-09-12 00:00:00',5.87,'No Stock',2.00,97.29),(4202,609,'2017-03-11 00:00:00',2.07,'No Stock',4.00,56.70),(4202,608,'2017-03-11 00:00:00',2.07,'No Stock',4.00,56.70),(4203,610,'2016-10-27 00:00:00',6.46,'No Stock',2.00,29.12),(4203,609,'2017-03-11 00:00:00',2.07,'No Stock',4.00,56.70),(4204,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4204,609,'2017-03-11 00:00:00',2.07,'No Stock',4.00,56.70),(4205,610,'2016-06-21 00:00:00',5.95,'No Stock',4.00,78.23),(4205,609,'2017-03-11 00:00:00',2.07,'No Stock',4.00,56.70),(4206,603,'2017-02-23 00:00:00',6.94,'On Order',2.00,40.49),(4206,619,'2017-01-21 00:00:00',3.28,'No Stock',6.00,80.19),(4207,604,'2016-08-17 00:00:00',7.01,'No Stock',9.00,84.48),(4207,605,'2016-06-27 00:00:00',1.55,'On Order',9.00,41.79),(4207,610,'2016-05-17 00:00:00',9.51,'On Order',5.00,12.30),(4208,603,'2016-03-30 00:00:00',3.68,'Allocated',7.00,37.26),(4208,605,'2016-12-11 00:00:00',2.76,'On Order',5.00,82.65),(4208,607,'2016-04-28 00:00:00',8.67,'No Stock',1.00,84.88),(4208,609,'2016-10-04 00:00:00',1.98,'Allocated',1.00,88.01),(4208,610,'2016-04-19 00:00:00',4.20,'No Stock',6.00,88.85),(4209,606,'2016-04-20 00:00:00',8.98,'Allocated',6.00,46.31),(4210,603,'2016-12-11 00:00:00',8.78,'No Stock',2.00,92.12),(4210,609,'2016-06-23 00:00:00',6.89,'Allocated',7.00,70.37),(4211,614,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4212,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4213,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4214,608,'2016-05-15 00:00:00',5.18,'Allocated',3.00,37.43),(4214,610,'2017-02-13 00:00:00',7.16,'On Order',9.00,35.48),(4214,611,'2016-07-08 00:00:00',8.17,'No Stock',7.00,84.99),(4215,610,'2016-07-24 00:00:00',2.65,'Allocated',5.00,4.35),(4216,606,'2016-05-02 00:00:00',8.92,'Allocated',3.00,79.91),(4216,608,'2017-02-24 00:00:00',3.70,'Allocated',8.00,45.75),(4216,615,'2016-05-06 00:00:00',8.94,'No Stock',1.00,55.11),(4217,605,'2016-11-09 00:00:00',3.31,'On Order',5.00,40.67),(4217,610,'2016-07-27 00:00:00',8.58,'On Order',5.00,20.00),(4218,615,'2016-11-12 00:00:00',8.03,'Allocated',7.00,34.14),(4218,619,'2016-11-08 00:00:00',5.74,'On Order',9.00,62.61),(4219,604,'2016-10-31 00:00:00',2.42,'No Stock',9.00,46.24),(4219,613,'2016-12-04 00:00:00',3.90,'No Stock',7.00,26.63),(4219,619,'2016-08-06 00:00:00',7.38,'No Stock',1.00,98.58),(4220,604,'2016-10-09 00:00:00',9.28,'No Stock',5.00,66.78),(4220,609,'2016-04-06 00:00:00',9.71,'No Stock',6.00,62.82),(4221,602,'2016-11-25 00:00:00',1.85,'Allocated',8.00,8.44),(4222,601,'2016-06-25 00:00:00',2.59,'No Stock',10.00,84.14),(4222,604,'2016-09-27 00:00:00',8.12,'No Stock',9.00,39.15),(4223,602,'2016-04-18 00:00:00',9.94,'Allocated',2.00,74.35),(4223,611,'2017-03-04 00:00:00',6.75,'No Stock',4.00,58.85),(4224,618,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4225,605,'2016-11-13 00:00:00',8.69,'On Order',7.00,88.08),(4226,606,'2017-01-19 00:00:00',3.54,'On Order',1.00,84.22),(4226,608,'2016-04-25 00:00:00',4.73,'On Order',4.00,97.10),(4227,606,'2016-12-19 00:00:00',1.85,'On Order',9.00,74.37),(4227,607,'2016-12-19 00:00:00',1.85,'On Order',9.00,74.37),(4228,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4228,618,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4228,610,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4229,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4229,618,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4230,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4230,618,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4230,619,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4231,611,'2017-02-12 00:00:00',2.56,'On Order',6.00,36.05),(4231,618,'2017-02-12 00:00:00',2.56,'On Order',6.00,36.05),(4232,615,'2016-11-28 00:00:00',7.26,'No Stock',8.00,16.99),(4232,618,'2016-11-28 00:00:00',7.26,'No Stock',8.00,16.99),(4233,608,'2016-09-29 00:00:00',1.75,'Allocated',6.00,70.71),(4233,610,'2016-09-29 00:00:00',1.75,'Allocated',6.00,70.71),(4233,618,'2016-09-29 00:00:00',1.75,'Allocated',6.00,70.71),(4234,604,'2016-04-06 00:00:00',9.54,'No Stock',5.00,15.26),(4234,619,'2016-04-06 00:00:00',9.54,'No Stock',5.00,15.26),(4235,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4235,619,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4236,607,'2017-02-16 00:00:00',4.90,'Allocated',8.00,46.97),(4236,617,'2017-02-16 00:00:00',4.90,'Allocated',8.00,46.97),(4236,620,'2017-02-16 00:00:00',4.90,'Allocated',8.00,46.97),(4237,602,'2016-11-07 00:00:00',8.84,'No Stock',1.00,27.79),(4237,620,'2016-11-07 00:00:00',8.84,'No Stock',1.00,27.79),(4238,602,'2016-04-09 00:00:00',2.63,'No Stock',3.00,32.50),(4238,608,'2016-08-18 00:00:00',7.59,'On Order',8.00,88.30),(4239,606,'2017-03-04 00:00:00',2.31,'Allocated',7.00,99.65),(4239,616,'2017-03-04 00:00:00',2.31,'Allocated',7.00,99.65),(4240,606,'2017-02-05 00:00:00',2.48,'No Stock',10.00,43.66),(4240,609,'2016-11-15 00:00:00',2.11,'No Stock',2.00,56.95),(4241,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4241,618,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4241,620,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4242,605,'2016-06-10 00:00:00',8.56,'No Stock',6.00,52.37),(4242,606,'2016-06-10 00:00:00',8.56,'No Stock',6.00,52.37),(4242,607,'2016-06-10 00:00:00',8.56,'No Stock',6.00,52.37),(4243,604,'2016-04-09 00:00:00',1.16,'No Stock',2.00,6.33),(4243,614,'2016-04-09 00:00:00',1.16,'No Stock',2.00,6.33),(4243,610,'2016-04-09 00:00:00',1.16,'No Stock',2.00,6.33),(4244,609,'2016-09-03 00:00:00',7.49,'On Order',4.00,67.62),(4244,619,'2016-09-03 00:00:00',7.49,'On Order',4.00,67.62),(4244,620,'2016-09-03 00:00:00',7.49,'On Order',4.00,67.62),(4245,608,'2017-03-14 00:00:00',9.90,'Allocated',1.00,32.47),(4245,618,'2017-03-14 00:00:00',9.90,'Allocated',1.00,32.47),(4245,620,'2017-03-14 00:00:00',9.90,'Allocated',1.00,32.47),(4246,603,'2016-06-04 00:00:00',3.85,'No Stock',10.00,53.94),(4246,606,'2016-07-05 00:00:00',9.37,'No Stock',7.00,6.16),(4246,607,'2016-11-15 00:00:00',1.97,'Allocated',3.00,27.34),(4246,611,'2017-02-28 00:00:00',1.26,'No Stock',4.00,73.06),(4247,601,'2017-02-26 00:00:00',4.54,'On Order',4.00,66.41),(4247,605,'2016-12-15 00:00:00',5.90,'Allocated',2.00,61.24),(4248,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4248,620,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4249,615,'2016-06-09 00:00:00',3.88,'On Order',2.00,74.52),(4249,620,'2016-06-09 00:00:00',3.88,'On Order',2.00,74.52),(4249,609,'2016-06-09 00:00:00',3.88,'On Order',2.00,74.52),(4250,606,'2016-12-31 00:00:00',3.39,'On Order',7.00,63.89),(4250,612,'2016-06-26 00:00:00',4.19,'Allocated',8.00,75.06),(4251,602,'2016-12-07 00:00:00',1.73,'No Stock',1.00,1.75),(4251,604,'2016-07-28 00:00:00',1.58,'Allocated',8.00,43.98),(4252,606,'2017-03-14 00:00:00',1.31,'No Stock',4.00,94.24),(4252,619,'2017-03-03 00:00:00',4.18,'No Stock',10.00,41.46),(4252,620,'2016-12-28 00:00:00',4.91,'On Order',3.00,29.91),(4253,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4253,610,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4254,610,'2017-02-03 00:00:00',9.93,'On Order',3.00,5.01),(4254,620,'2017-02-03 00:00:00',9.93,'On Order',2.00,5.01),(4254,612,'2017-02-03 00:00:00',9.93,'On Order',3.00,5.01),(4255,610,'2016-08-01 00:00:00',8.00,'Allocated',7.00,45.49),(4255,611,'2016-08-01 00:00:00',8.00,'Allocated',7.00,45.49),(4256,604,'2016-06-13 00:00:00',1.84,'No Stock',9.00,6.74),(4256,612,'2016-09-19 00:00:00',2.86,'Allocated',4.00,42.02),(4256,620,'2016-10-02 00:00:00',4.97,'Allocated',2.00,31.71),(4257,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4257,610,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4257,611,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4258,605,'2016-06-02 00:00:00',8.41,'On Order',7.00,22.45),(4258,615,'2017-02-27 00:00:00',3.65,'Allocated',3.00,69.12),(4258,619,'2017-02-20 00:00:00',2.23,'Allocated',4.00,62.32),(4259,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4260,603,'2016-09-20 00:00:00',1.99,'Allocated',1.00,27.68),(4260,604,'2016-12-31 00:00:00',3.05,'No Stock',3.00,59.65),(4261,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4262,602,'2017-01-17 00:00:00',3.06,'Allocated',4.00,51.73),(4263,612,'2016-08-12 00:00:00',7.86,'Allocated',4.00,18.46),(4263,615,'2016-08-12 00:00:00',7.86,'Allocated',4.00,18.46),(4263,616,'2016-08-12 00:00:00',7.86,'Allocated',4.00,18.46),(4264,604,'2016-11-28 00:00:00',9.19,'Allocated',8.00,82.02),(4264,614,'2016-11-28 00:00:00',9.19,'Allocated',8.00,82.02),(4265,618,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4265,620,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4266,601,'2016-09-19 00:00:00',6.27,'Allocated',2.00,66.57),(4266,602,'2016-09-19 00:00:00',6.27,'Allocated',2.00,66.57),(4267,601,'2016-09-27 00:00:00',6.86,'No Stock',4.00,44.78),(4267,610,'2016-12-24 00:00:00',6.41,'No Stock',4.00,19.08),(4268,611,'2016-06-08 00:00:00',8.14,'Allocated',1.00,24.72),(4268,612,'2016-06-08 00:00:00',8.14,'Allocated',1.00,24.72),(4269,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4269,617,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4269,618,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4270,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4270,612,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4270,620,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4271,603,'2016-05-25 00:00:00',4.81,'Allocated',2.00,80.47),(4271,604,'2016-05-09 00:00:00',4.02,'No Stock',8.00,38.65),(4272,610,'2016-09-17 00:00:00',2.85,'No Stock',7.00,66.28),(4273,612,'2016-12-19 00:00:00',8.44,'No Stock',10.00,85.38),(4274,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4275,610,'2016-10-28 00:00:00',8.65,'Allocated',8.00,1.12),(4275,615,'2016-12-30 00:00:00',5.55,'No Stock',1.00,24.01),(4276,603,'2016-12-28 00:00:00',7.28,'No Stock',3.00,44.76),(4277,610,'2016-11-10 00:00:00',8.62,'No Stock',9.00,40.01),(4278,603,'2016-12-23 00:00:00',1.23,'Allocated',6.00,32.00),(4278,608,'2016-10-05 00:00:00',9.45,'Allocated',4.00,38.01),(4278,609,'2016-10-23 00:00:00',5.41,'No Stock',5.00,31.99),(4279,613,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4280,606,'2016-05-27 00:00:00',2.76,'Allocated',5.00,7.52),(4280,609,'2016-08-10 00:00:00',4.44,'On Order',4.00,37.09),(4281,610,'2016-12-28 00:00:00',8.70,'On Order',9.00,37.07),(4281,611,'2016-12-28 00:00:00',8.70,'On Order',2.00,37.07),(4281,612,'2016-12-28 00:00:00',8.70,'On Order',1.00,37.07),(4282,601,'2016-11-09 00:00:00',3.98,'On Order',1.00,19.14),(4282,606,'2016-09-29 00:00:00',6.79,'On Order',3.00,88.94),(4282,609,'2016-10-05 00:00:00',5.22,'Allocated',6.00,25.35),(4283,601,'2016-10-07 00:00:00',3.31,'On Order',1.00,14.78),(4284,606,'2016-08-24 00:00:00',7.22,'On Order',5.00,32.57),(4285,604,'2016-12-09 00:00:00',3.77,'No Stock',5.00,47.88),(4285,615,'2016-03-27 00:00:00',2.13,'Allocated',8.00,9.28),(4286,620,'2016-12-06 00:00:00',7.62,'Allocated',5.00,63.24),(4287,602,'2016-10-06 00:00:00',9.50,'On Order',6.00,2.90),(4287,605,'2016-08-22 00:00:00',2.78,'Allocated',5.00,7.63),(4287,611,'2016-07-18 00:00:00',3.39,'Allocated',1.00,8.98),(4287,614,'2017-03-04 00:00:00',7.12,'On Order',3.00,34.40),(4288,604,'2016-05-18 00:00:00',3.25,'Allocated',6.00,57.67),(4289,601,'2017-01-21 00:00:00',7.31,'On Order',7.00,19.32),(4289,615,'2016-06-03 00:00:00',2.08,'No Stock',10.00,89.16),(4290,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4291,601,'2016-11-05 00:00:00',2.58,'Allocated',1.00,68.50),(4291,603,'2016-06-10 00:00:00',5.56,'Allocated',5.00,11.27),(4291,606,'2016-09-27 00:00:00',3.31,'Allocated',1.00,76.82),(4292,608,'2016-05-12 00:00:00',4.80,'On Order',10.00,27.45),(4292,610,'2016-05-05 00:00:00',5.96,'No Stock',9.00,16.78),(4293,612,'2016-08-23 00:00:00',2.07,'Allocated',4.00,69.21),(4294,619,'2017-01-20 00:00:00',9.13,'Allocated',4.00,81.50),(4295,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4296,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4297,604,'2016-08-20 00:00:00',1.70,'Allocated',4.00,19.21),(4297,606,'2016-10-11 00:00:00',5.74,'No Stock',4.00,71.24),(4298,613,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4299,603,'2016-07-06 00:00:00',5.69,'Allocated',8.00,81.70),(4300,601,'2016-12-23 00:00:00',8.38,'On Order',5.00,35.51),(4300,607,'2016-07-29 00:00:00',6.82,'No Stock',5.00,46.94),(4301,605,'2016-09-02 00:00:00',1.22,'Allocated',6.00,99.32),(4301,620,'2016-11-24 00:00:00',6.90,'Allocated',7.00,96.67),(4302,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4303,605,'2016-04-09 00:00:00',5.62,'On Order',8.00,31.92),(4304,615,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4305,606,'2016-12-03 00:00:00',1.15,'On Order',1.00,2.53),(4305,609,'2016-07-05 00:00:00',7.87,'Allocated',6.00,76.41),(4305,612,'2016-10-01 00:00:00',5.53,'On Order',3.00,31.58),(4306,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4307,601,'2016-09-16 00:00:00',3.90,'On Order',7.00,36.63),(4307,606,'2017-02-25 00:00:00',8.96,'No Stock',10.00,56.47),(4308,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4309,606,'2016-04-07 00:00:00',2.28,'On Order',6.00,84.25),(4310,605,'2017-02-17 00:00:00',2.48,'Allocated',7.00,15.88),(4311,603,'2016-05-06 00:00:00',6.18,'No Stock',2.00,67.26),(4312,619,'2017-03-14 00:00:00',6.57,'Allocated',4.00,87.50),(4313,602,'2016-08-30 00:00:00',4.45,'On Order',3.00,87.01),(4313,610,'2017-01-20 00:00:00',8.87,'No Stock',7.00,54.92),(4314,602,'2016-07-24 00:00:00',2.67,'Allocated',9.00,49.19),(4314,607,'2016-11-23 00:00:00',8.12,'On Order',10.00,32.19),(4315,602,'2017-01-04 00:00:00',3.78,'On Order',7.00,9.25),(4316,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4317,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4318,609,'2016-11-28 00:00:00',3.35,'No Stock',5.00,29.17),(4318,610,'2016-09-09 00:00:00',3.70,'On Order',4.00,41.75),(4318,620,'2016-04-16 00:00:00',1.49,'On Order',5.00,81.63),(4319,614,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4320,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4321,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4322,603,'2016-11-29 00:00:00',9.37,'No Stock',2.00,21.09),(4323,608,'2016-08-12 00:00:00',9.49,'On Order',8.00,24.05),(4324,607,'2016-07-10 00:00:00',1.48,'On Order',7.00,83.23),(4325,608,'2016-09-01 00:00:00',1.80,'Allocated',10.00,35.28),(4326,602,'2016-07-31 00:00:00',4.43,'No Stock',8.00,69.18),(4326,610,'2016-03-29 00:00:00',8.10,'No Stock',2.00,24.44),(4327,608,'2016-03-23 00:00:00',4.64,'Allocated',3.00,22.57),(4328,604,'2016-12-14 00:00:00',3.16,'On Order',1.00,55.53),(4328,605,'2017-03-04 00:00:00',6.97,'Allocated',2.00,38.78),(4328,607,'2016-08-01 00:00:00',3.59,'Allocated',5.00,28.94),(4329,603,'2016-10-25 00:00:00',2.86,'On Order',6.00,65.93),(4330,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4331,602,'2016-03-19 00:00:00',6.39,'No Stock',5.00,37.37),(4332,606,'2016-08-09 00:00:00',3.31,'No Stock',5.00,93.96),(4332,610,'2016-06-23 00:00:00',6.74,'Allocated',5.00,3.77),(4333,608,'2016-06-16 00:00:00',3.95,'On Order',7.00,14.29),(4334,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4335,609,'2016-08-31 00:00:00',9.30,'Allocated',6.00,63.15),(4336,613,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4337,610,'2016-03-19 00:00:00',5.68,'Allocated',1.00,52.98),(4338,610,'2016-11-03 00:00:00',3.56,'Allocated',1.00,83.94),(4339,604,'2016-11-19 00:00:00',5.32,'No Stock',10.00,78.06),(4340,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4341,609,'2016-11-25 00:00:00',7.63,'No Stock',6.00,52.04),(4341,615,'2016-09-06 00:00:00',8.66,'No Stock',1.00,9.44),(4342,615,'2016-08-28 00:00:00',8.50,'Allocated',6.00,67.41),(4343,615,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4344,610,'2016-04-30 00:00:00',5.36,'On Order',10.00,61.53),(4345,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4346,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4347,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4348,608,'2016-05-14 00:00:00',4.57,'On Order',1.00,96.42),(4348,610,'2016-05-30 00:00:00',5.74,'On Order',3.00,38.00),(4348,611,'2016-08-16 00:00:00',6.70,'On Order',6.00,38.59),(4349,613,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4350,602,'2016-08-18 00:00:00',7.57,'Allocated',8.00,81.72),(4350,604,'2016-12-29 00:00:00',9.43,'On Order',6.00,95.31),(4350,608,'2016-08-24 00:00:00',6.54,'No Stock',9.00,43.57),(4351,602,'2016-08-26 00:00:00',3.31,'No Stock',1.00,37.63),(4351,607,'2016-04-11 00:00:00',2.44,'No Stock',9.00,83.22),(4352,602,'2016-10-03 00:00:00',3.98,'No Stock',3.00,13.09),(4352,603,'2017-03-05 00:00:00',4.87,'On Order',9.00,88.58),(4352,614,'2016-05-30 00:00:00',5.05,'Allocated',4.00,47.62),(4353,612,'2016-03-28 00:00:00',1.77,'Allocated',9.00,28.80),(4354,618,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4355,607,'2016-04-27 00:00:00',3.18,'No Stock',4.00,20.25),(4355,608,'2016-12-08 00:00:00',5.95,'Allocated',9.00,73.30),(4355,609,'2016-12-09 00:00:00',6.88,'Allocated',7.00,26.16),(4356,614,'2016-06-14 00:00:00',2.88,'No Stock',8.00,93.97),(4357,605,'2016-07-31 00:00:00',5.53,'No Stock',6.00,24.39),(4357,612,'2016-07-08 00:00:00',1.94,'No Stock',4.00,71.28),(4358,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4359,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4360,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4361,601,'2016-03-29 00:00:00',1.05,'Allocated',6.00,45.27),(4361,609,'2016-07-15 00:00:00',1.28,'On Order',10.00,39.75),(4362,603,'2016-09-24 00:00:00',5.17,'No Stock',4.00,42.92),(4363,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4364,602,'2017-02-09 00:00:00',4.20,'On Order',8.00,90.01),(4365,601,'2016-06-10 00:00:00',3.73,'Allocated',2.00,92.96),(4365,603,'2016-07-31 00:00:00',9.60,'On Order',7.00,86.67),(4366,604,'2016-09-23 00:00:00',2.02,'No Stock',6.00,52.01),(4366,605,'2016-08-10 00:00:00',3.68,'On Order',9.00,88.21),(4366,609,'2016-05-07 00:00:00',3.99,'No Stock',8.00,80.78),(4367,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4368,604,'2016-09-07 00:00:00',4.56,'No Stock',4.00,53.46),(4369,612,'2017-01-20 00:00:00',3.86,'Allocated',2.00,8.50),(4370,603,'2016-09-02 00:00:00',8.20,'On Order',9.00,46.22),(4370,604,'2016-06-03 00:00:00',2.29,'Allocated',10.00,10.38),(4371,610,'2016-08-25 00:00:00',4.07,'On Order',10.00,23.33),(4372,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4373,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4374,604,'2017-03-07 00:00:00',2.34,'No Stock',3.00,29.51),(4375,618,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4376,608,'2016-09-14 00:00:00',3.21,'No Stock',10.00,5.55),(4377,602,'2016-08-26 00:00:00',8.57,'On Order',9.00,91.62),(4378,603,'2016-04-11 00:00:00',5.38,'On Order',8.00,74.83),(4379,605,'2016-10-29 00:00:00',5.65,'On Order',9.00,53.70),(4380,618,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4381,619,'2016-07-27 00:00:00',3.78,'Allocated',1.00,35.54),(4382,602,'2016-11-05 00:00:00',7.95,'Allocated',8.00,33.64),(4382,606,'2017-01-22 00:00:00',6.06,'On Order',4.00,68.17),(4383,613,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4384,615,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4385,609,'2016-03-25 00:00:00',8.94,'On Order',1.00,18.13),(4386,613,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4387,602,'2016-12-01 00:00:00',9.74,'Allocated',8.00,86.06),(4387,606,'2016-06-12 00:00:00',7.53,'No Stock',8.00,87.31),(4387,610,'2016-10-06 00:00:00',5.20,'Allocated',3.00,47.55),(4388,602,'2016-05-09 00:00:00',3.52,'On Order',4.00,5.86),(4388,603,'2016-09-22 00:00:00',6.18,'Allocated',8.00,24.25),(4388,606,'2016-09-11 00:00:00',2.93,'Allocated',6.00,29.46),(4388,619,'2016-12-29 00:00:00',7.37,'No Stock',1.00,36.76),(4389,602,'2016-06-13 00:00:00',9.35,'Allocated',1.00,94.23),(4389,603,'2016-08-09 00:00:00',8.39,'No Stock',2.00,40.15),(4390,609,'2016-11-29 00:00:00',5.61,'On Order',4.00,7.02),(4391,607,'2016-07-10 00:00:00',8.97,'On Order',1.00,48.41),(4392,603,'2016-04-07 00:00:00',8.23,'No Stock',8.00,74.91),(4393,611,'2016-04-13 00:00:00',4.56,'Allocated',4.00,55.83),(4394,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4395,610,'2016-09-27 00:00:00',5.09,'No Stock',7.00,82.73),(4395,617,'2016-07-24 00:00:00',6.29,'On Order',6.00,26.05),(4396,605,'2017-02-05 00:00:00',1.32,'No Stock',9.00,66.19),(4396,619,'2016-07-08 00:00:00',1.04,'On Order',4.00,3.15),(4397,619,'2016-08-19 00:00:00',7.64,'No Stock',9.00,78.52),(4398,618,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4399,610,'2016-05-04 00:00:00',4.71,'No Stock',7.00,85.03),(4400,612,'2016-10-31 00:00:00',6.54,'On Order',9.00,36.85),(4400,620,'2016-06-18 00:00:00',5.62,'On Order',2.00,15.90),(4401,602,'2016-09-27 00:00:00',4.13,'No Stock',1.00,91.01),(4401,604,'2016-06-03 00:00:00',5.27,'Allocated',10.00,98.70),(4402,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4403,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4404,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4405,604,'2016-09-08 00:00:00',9.31,'No Stock',3.00,46.99),(4405,610,'2016-11-15 00:00:00',1.68,'On Order',10.00,4.94),(4406,602,'2016-10-28 00:00:00',7.67,'On Order',7.00,25.84),(4406,606,'2016-11-14 00:00:00',5.64,'No Stock',2.00,96.43),(4406,607,'2016-06-18 00:00:00',3.88,'No Stock',10.00,14.91),(4407,606,'2016-10-08 00:00:00',6.82,'No Stock',9.00,20.82),(4407,608,'2016-12-15 00:00:00',7.26,'No Stock',4.00,29.19),(4408,605,'2016-11-20 00:00:00',9.29,'No Stock',4.00,12.83),(4408,615,'2017-03-07 00:00:00',2.70,'No Stock',4.00,89.77),(4408,619,'2016-12-17 00:00:00',8.86,'No Stock',3.00,36.44),(4409,602,'2016-08-19 00:00:00',9.73,'Allocated',2.00,36.96),(4409,611,'2016-05-17 00:00:00',4.11,'On Order',7.00,94.98),(4410,603,'2016-09-28 00:00:00',5.05,'No Stock',7.00,13.79),(4410,604,'2016-10-27 00:00:00',4.07,'No Stock',10.00,70.24),(4410,607,'2016-03-21 00:00:00',7.80,'No Stock',6.00,26.39),(4411,602,'2017-03-14 00:00:00',3.86,'No Stock',7.00,3.47),(4411,611,'2016-12-27 00:00:00',3.67,'On Order',3.00,10.43),(4412,605,'2017-02-16 00:00:00',6.78,'Allocated',10.00,26.07),(4412,607,'2016-11-26 00:00:00',5.67,'No Stock',7.00,76.81),(4412,610,'2016-09-29 00:00:00',3.34,'On Order',3.00,98.77),(4413,617,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4414,606,'2016-03-23 00:00:00',4.54,'On Order',5.00,26.01),(4415,605,'2016-09-18 00:00:00',1.68,'No Stock',5.00,74.86),(4416,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4417,601,'2016-07-07 00:00:00',5.22,'No Stock',6.00,66.38),(4417,604,'2016-09-30 00:00:00',4.89,'No Stock',7.00,96.99),(4418,609,'2016-09-03 00:00:00',5.52,'Allocated',8.00,59.88),(4419,604,'2017-01-05 00:00:00',4.95,'On Order',4.00,54.04),(4420,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4421,605,'2016-06-10 00:00:00',1.70,'On Order',2.00,96.34),(4422,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4423,602,'2016-04-19 00:00:00',5.34,'Allocated',3.00,25.88),(4423,605,'2016-06-21 00:00:00',2.22,'On Order',5.00,4.06),(4423,608,'2016-08-17 00:00:00',4.26,'On Order',9.00,20.40),(4424,605,'2016-11-06 00:00:00',4.23,'Allocated',8.00,44.66),(4425,607,'2016-11-28 00:00:00',6.75,'On Order',7.00,18.91),(4425,608,'2017-02-15 00:00:00',4.46,'No Stock',4.00,60.11),(4426,606,'2016-11-13 00:00:00',6.50,'On Order',8.00,44.98),(4426,607,'2017-01-26 00:00:00',2.91,'Allocated',4.00,78.46),(4427,604,'2016-09-01 00:00:00',3.08,'On Order',2.00,61.91),(4427,607,'2016-11-09 00:00:00',8.17,'No Stock',10.00,53.82),(4428,603,'2016-12-01 00:00:00',5.94,'Allocated',2.00,81.15),(4428,605,'2016-07-08 00:00:00',5.26,'On Order',9.00,48.38),(4429,606,'2017-03-03 00:00:00',2.75,'Allocated',10.00,28.80),(4430,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4431,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4432,603,'2016-09-03 00:00:00',4.42,'No Stock',9.00,52.12),(4433,601,'2016-04-18 00:00:00',9.94,'No Stock',4.00,34.09),(4433,605,'2016-04-04 00:00:00',7.32,'On Order',1.00,65.04),(4434,601,'2016-03-18 00:00:00',1.15,'On Order',2.00,61.28),(4434,605,'2016-03-18 00:00:00',1.15,'On Order',2.00,61.28),(4434,607,'2016-03-18 00:00:00',1.15,'On Order',2.00,61.28),(4435,610,'2016-12-08 00:00:00',7.18,'On Order',10.00,9.19),(4435,612,'2016-12-08 00:00:00',7.18,'On Order',10.00,9.19),(4435,614,'2016-12-08 00:00:00',7.18,'On Order',10.00,9.19),(4436,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4436,618,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4436,620,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4437,601,'2016-05-05 00:00:00',9.07,'Allocated',7.00,56.48),(4437,602,'2017-03-16 00:00:00',8.08,'On Order',1.00,98.71),(4437,609,'2016-12-16 00:00:00',5.56,'On Order',7.00,12.69),(4438,604,'2016-10-22 00:00:00',5.43,'Allocated',1.00,97.24),(4438,605,'2016-10-22 00:00:00',5.43,'Allocated',1.00,97.24),(4438,606,'2016-10-22 00:00:00',5.43,'Allocated',1.00,97.24),(4439,615,'2016-06-10 00:00:00',3.07,'Allocated',5.00,11.46),(4439,618,'2016-10-22 00:00:00',5.43,'Allocated',1.00,97.24),(4439,620,'2016-10-22 00:00:00',5.43,'Allocated',1.00,97.24),(4440,603,'2016-11-08 00:00:00',8.70,'No Stock',9.00,66.05),(4440,616,'2016-10-22 00:00:00',5.43,'Allocated',1.00,97.24),(4440,620,'2016-10-22 00:00:00',5.43,'Allocated',1.00,97.24),(4441,602,'2017-02-19 00:00:00',2.54,'Allocated',4.00,79.49),(4441,609,'2016-06-06 00:00:00',9.63,'Allocated',4.00,88.86),(4442,608,'2016-09-08 00:00:00',2.52,'Allocated',1.00,55.66),(4443,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4444,602,'2017-01-18 00:00:00',9.83,'On Order',4.00,52.60),(4444,605,'2017-01-27 00:00:00',9.58,'On Order',8.00,81.63),(4445,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4445,601,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4445,607,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4446,602,'2017-02-17 00:00:00',1.52,'On Order',3.00,76.28),(4446,606,'2016-06-28 00:00:00',2.13,'On Order',5.00,18.52),(4447,609,'2016-07-08 00:00:00',4.47,'Allocated',9.00,54.61),(4447,608,'2016-07-08 00:00:00',4.47,'Allocated',9.00,54.61),(4447,607,'2016-07-08 00:00:00',4.47,'Allocated',9.00,54.61),(4448,605,'2016-09-17 00:00:00',2.05,'No Stock',2.00,69.71),(4448,606,'2016-09-17 00:00:00',2.05,'No Stock',2.00,69.71),(4448,607,'2016-09-17 00:00:00',2.05,'No Stock',2.00,69.71),(4449,618,'2016-04-15 00:00:00',5.23,'On Order',6.00,35.62),(4449,619,'2016-09-29 00:00:00',4.63,'No Stock',10.00,86.97),(4450,619,'2016-12-09 00:00:00',4.87,'On Order',8.00,26.14),(4450,620,'2016-12-09 00:00:00',4.87,'On Order',8.00,26.14),(4450,601,'2016-12-09 00:00:00',4.87,'On Order',8.00,26.14),(4451,604,'2016-09-12 00:00:00',1.40,'Allocated',3.00,47.48),(4452,615,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4453,606,'2016-12-10 00:00:00',8.07,'On Order',2.00,4.03),(4454,619,'2016-10-07 00:00:00',9.00,'On Order',7.00,55.92),(4455,602,'2017-01-11 00:00:00',9.33,'On Order',10.00,50.30),(4455,603,'2016-12-09 00:00:00',7.77,'Allocated',1.00,7.68),(4455,605,'2016-07-07 00:00:00',3.73,'Allocated',1.00,98.23),(4456,607,'2016-08-16 00:00:00',9.57,'No Stock',8.00,54.83),(4456,612,'2016-05-13 00:00:00',1.24,'Allocated',7.00,97.34),(4457,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4458,615,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4459,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4460,602,'2017-01-03 00:00:00',8.36,'No Stock',8.00,37.95),(4461,620,'2016-03-27 00:00:00',2.02,'Allocated',6.00,73.77),(4462,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4463,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4464,606,'2016-09-05 00:00:00',1.18,'On Order',1.00,31.60),(4465,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4466,620,'2016-12-14 00:00:00',1.76,'Allocated',10.00,37.79),(4467,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4468,610,'2016-12-30 00:00:00',6.87,'Allocated',3.00,80.77),(4469,602,'2016-08-11 00:00:00',5.21,'No Stock',3.00,19.99),(4469,612,'2017-02-19 00:00:00',4.85,'On Order',3.00,73.21),(4470,607,'2016-04-22 00:00:00',5.78,'No Stock',4.00,7.70),(4471,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4472,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4473,609,'2016-05-12 00:00:00',1.84,'Allocated',2.00,97.60),(4474,611,'2016-04-18 00:00:00',6.31,'Allocated',7.00,12.50),(4475,603,'2017-03-10 00:00:00',7.21,'No Stock',2.00,44.42),(4476,603,'2016-09-17 00:00:00',5.63,'No Stock',4.00,43.47),(4477,603,'2016-09-10 00:00:00',4.46,'No Stock',4.00,24.99),(4478,606,'2017-03-04 00:00:00',4.59,'On Order',1.00,29.13),(4478,619,'2017-01-26 00:00:00',2.90,'Allocated',4.00,58.05),(4479,603,'2016-03-21 00:00:00',7.79,'On Order',10.00,93.20),(4479,609,'2017-02-03 00:00:00',9.01,'Allocated',4.00,70.36),(4479,610,'2017-03-01 00:00:00',6.79,'Allocated',6.00,49.48),(4480,608,'2016-12-10 00:00:00',6.26,'On Order',9.00,11.03),(4481,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4482,603,'2016-05-27 00:00:00',8.10,'No Stock',10.00,28.92),(4482,607,'2016-04-29 00:00:00',5.74,'On Order',6.00,90.11),(4482,610,'2017-01-12 00:00:00',2.89,'On Order',4.00,7.12),(4482,611,'2016-08-16 00:00:00',8.56,'No Stock',1.00,12.48),(4482,614,'2016-07-09 00:00:00',1.63,'On Order',10.00,55.93),(4482,618,'2016-07-11 00:00:00',2.46,'Allocated',1.00,33.90),(4483,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4484,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4485,605,'2016-05-11 00:00:00',1.31,'No Stock',7.00,99.92),(4486,615,'2016-06-24 00:00:00',3.61,'Allocated',7.00,4.39),(4487,602,'2016-12-29 00:00:00',7.96,'No Stock',9.00,69.78),(4487,607,'2016-08-15 00:00:00',8.97,'On Order',5.00,24.92),(4487,615,'2016-07-28 00:00:00',8.97,'On Order',4.00,72.16),(4488,601,'2016-03-30 00:00:00',1.52,'On Order',9.00,64.29),(4488,609,'2016-07-11 00:00:00',5.30,'On Order',10.00,66.79),(4489,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4490,615,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4491,602,'2016-09-16 00:00:00',5.22,'On Order',3.00,16.80),(4492,607,'2017-03-04 00:00:00',2.45,'On Order',4.00,99.59),(4493,615,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4494,615,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4495,607,'2016-10-03 00:00:00',5.40,'Allocated',7.00,86.05),(4496,603,'2016-07-06 00:00:00',3.71,'Allocated',10.00,55.12),(4497,607,'2017-01-29 00:00:00',4.26,'Allocated',7.00,27.30),(4498,604,'2016-03-19 00:00:00',1.25,'Allocated',10.00,89.58),(4498,610,'2016-06-24 00:00:00',2.48,'No Stock',10.00,69.32),(4499,601,'2017-02-21 00:00:00',6.73,'No Stock',4.00,56.58),(4499,602,'2017-02-21 00:00:00',6.73,'No Stock',4.00,56.58),(4499,603,'2017-02-21 00:00:00',6.73,'No Stock',4.00,56.58),(4500,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4500,620,'2016-11-30 00:00:00',7.02,'No Stock',10.00,54.41),(4500,619,'2016-11-30 00:00:00',7.02,'No Stock',10.00,54.41),(4501,620,'2016-11-30 00:00:00',7.02,'No Stock',10.00,54.41),(4501,619,'2016-11-30 00:00:00',7.02,'No Stock',10.00,54.41),(4501,618,'2016-11-30 00:00:00',7.02,'No Stock',10.00,54.41),(4502,603,'2016-07-27 00:00:00',1.12,'No Stock',2.00,27.21),(4502,605,'2016-11-21 00:00:00',3.20,'On Order',9.00,39.93),(4503,615,'2016-05-03 00:00:00',8.26,'No Stock',6.00,85.10),(4503,611,'2016-05-03 00:00:00',8.26,'No Stock',6.00,85.10),(4503,612,'2016-05-03 00:00:00',8.26,'No Stock',6.00,85.10),(4504,615,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4504,618,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4504,619,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4505,612,'2016-09-04 00:00:00',1.62,'Allocated',3.00,10.99),(4505,609,'2016-09-04 00:00:00',1.62,'Allocated',3.00,10.99),(4505,601,'2016-09-04 00:00:00',1.62,'Allocated',3.00,10.99),(4506,602,'2016-09-23 00:00:00',1.00,'On Order',7.00,88.03),(4506,603,'2017-02-03 00:00:00',1.18,'Allocated',9.00,66.78),(4506,606,'2016-10-03 00:00:00',2.21,'Allocated',10.00,85.37),(4506,609,'2016-12-08 00:00:00',4.06,'Allocated',9.00,84.30),(4507,617,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4508,611,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4509,611,'2016-08-12 00:00:00',8.51,'Allocated',2.00,99.24),(4509,612,'2016-08-30 00:00:00',3.81,'On Order',8.00,2.41),(4510,614,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4511,610,'2016-12-06 00:00:00',8.40,'Allocated',3.00,73.48),(4511,611,'2016-12-23 00:00:00',6.91,'Allocated',4.00,7.29),(4511,616,'2016-12-09 00:00:00',6.26,'On Order',5.00,26.16),(4512,614,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4513,614,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4514,605,'2017-01-25 00:00:00',7.08,'No Stock',6.00,86.17),(4514,610,'2017-01-23 00:00:00',6.30,'No Stock',6.00,71.51),(4515,617,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4516,618,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4517,604,'2016-10-23 00:00:00',7.34,'Allocated',10.00,55.76),(4517,619,'2016-08-19 00:00:00',7.07,'Allocated',2.00,1.09),(4518,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4519,609,'2016-07-01 00:00:00',7.83,'On Order',9.00,61.39),(4520,619,'2016-10-08 00:00:00',9.55,'No Stock',9.00,72.61),(4521,610,'2016-12-08 00:00:00',3.54,'Allocated',10.00,19.38),(4521,615,'2017-01-31 00:00:00',7.77,'No Stock',8.00,54.35),(4522,602,'2016-11-28 00:00:00',6.79,'No Stock',9.00,68.98),(4523,606,'2016-05-25 00:00:00',1.63,'No Stock',9.00,79.86),(4524,602,'2017-03-12 00:00:00',3.46,'On Order',9.00,91.58),(4525,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4526,603,'2016-10-14 00:00:00',7.64,'On Order',9.00,56.56),(4526,604,'2016-07-29 00:00:00',2.83,'No Stock',4.00,80.67),(4526,610,'2017-02-25 00:00:00',2.86,'On Order',5.00,88.80),(4527,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4528,605,'2017-01-26 00:00:00',8.81,'Allocated',4.00,73.64),(4528,609,'2016-10-03 00:00:00',4.09,'On Order',4.00,64.56),(4529,616,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4530,602,'2016-12-07 00:00:00',4.73,'On Order',9.00,70.97),(4531,606,'2016-03-25 00:00:00',2.83,'No Stock',10.00,26.53),(4531,615,'2016-08-04 00:00:00',6.82,'Allocated',5.00,79.05),(4531,619,'2016-03-26 00:00:00',7.09,'No Stock',4.00,36.14),(4532,605,'2017-03-13 00:00:00',9.94,'No Stock',5.00,6.28),(4532,610,'2016-05-28 00:00:00',3.68,'Allocated',8.00,17.25),(4533,615,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4534,606,'2016-07-15 00:00:00',9.33,'Allocated',8.00,60.95),(4534,607,'2016-04-24 00:00:00',8.32,'No Stock',10.00,49.84),(4535,610,'2017-03-01 00:00:00',1.81,'On Order',6.00,17.67),(4535,619,'2016-07-11 00:00:00',3.12,'Allocated',3.00,88.00),(4536,615,'2016-12-04 00:00:00',4.93,'Allocated',5.00,88.08),(4537,611,'2016-03-25 00:00:00',4.04,'No Stock',2.00,14.77),(4538,603,'2016-04-21 00:00:00',4.54,'Allocated',6.00,3.51),(4539,603,'2016-05-14 00:00:00',4.80,'Allocated',7.00,6.58),(4540,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4540,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4540,618,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4541,603,'2016-04-07 00:00:00',2.89,'On Order',5.00,37.47),(4541,607,'2017-01-07 00:00:00',5.44,'No Stock',4.00,35.17),(4541,615,'2016-11-22 00:00:00',4.01,'Allocated',2.00,83.62),(4542,605,'2017-01-23 00:00:00',3.27,'On Order',10.00,92.43),(4542,601,'2017-01-23 00:00:00',3.27,'On Order',10.00,92.43),(4542,603,'2017-01-23 00:00:00',3.27,'On Order',10.00,92.43),(4543,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4543,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4543,619,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4544,611,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4544,610,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4544,609,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4545,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4545,604,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4545,606,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4546,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4546,606,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4546,608,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4547,606,'2016-05-14 00:00:00',9.44,'No Stock',4.00,81.81),(4547,602,'2016-05-14 00:00:00',9.44,'No Stock',4.00,81.81),(4547,603,'2016-05-14 00:00:00',9.44,'No Stock',4.00,81.81),(4548,614,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4548,611,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4548,615,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4549,605,'2016-08-22 00:00:00',7.26,'No Stock',9.00,24.12),(4549,606,'2016-09-02 00:00:00',4.68,'Allocated',7.00,6.19),(4550,609,'2016-06-10 00:00:00',7.62,'On Order',8.00,49.04),(4550,610,'2017-02-24 00:00:00',4.84,'No Stock',10.00,92.51),(4551,601,'2016-07-08 00:00:00',2.45,'Allocated',3.00,85.10),(4551,602,'2017-03-15 00:00:00',1.31,'No Stock',3.00,69.43),(4551,610,'2016-11-09 00:00:00',8.43,'No Stock',1.00,19.38),(4552,601,'2016-06-03 00:00:00',8.12,'On Order',2.00,91.69),(4552,613,'2016-04-11 00:00:00',6.38,'No Stock',3.00,41.15),(4553,603,'2016-10-28 00:00:00',8.43,'On Order',1.00,5.22),(4554,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4555,607,'2016-04-29 00:00:00',3.07,'No Stock',6.00,77.16),(4555,612,'2017-01-24 00:00:00',9.81,'On Order',9.00,81.31),(4556,615,'2016-11-07 00:00:00',7.25,'Allocated',10.00,65.81),(4557,603,'2016-09-05 00:00:00',4.57,'No Stock',1.00,5.01),(4557,606,'2016-09-14 00:00:00',8.67,'On Order',3.00,29.35),(4558,601,'2016-11-06 00:00:00',7.16,'No Stock',3.00,29.62),(4559,620,'2016-11-09 00:00:00',7.93,'On Order',2.00,87.83),(4560,610,'2016-08-22 00:00:00',8.01,'On Order',7.00,9.51),(4561,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4562,610,'2016-08-27 00:00:00',6.80,'Allocated',9.00,15.10),(4562,611,'2016-07-12 00:00:00',1.26,'No Stock',3.00,71.09),(4563,618,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4564,602,'2016-03-19 00:00:00',6.29,'Allocated',2.00,6.68),(4565,603,'2017-03-06 00:00:00',2.82,'Allocated',7.00,81.01),(4565,606,'2016-04-27 00:00:00',6.28,'No Stock',8.00,99.68),(4566,614,'2016-11-02 00:00:00',4.48,'No Stock',7.00,57.79),(4567,604,'2016-05-18 00:00:00',5.46,'No Stock',7.00,94.42),(4567,605,'2016-04-14 00:00:00',1.31,'Allocated',1.00,61.75),(4567,608,'2016-05-01 00:00:00',4.85,'On Order',10.00,25.99),(4567,620,'2016-06-11 00:00:00',4.66,'Allocated',9.00,62.17),(4568,606,'2016-10-02 00:00:00',1.10,'Allocated',8.00,66.92),(4568,607,'2016-05-04 00:00:00',9.17,'On Order',10.00,95.60),(4568,608,'2017-01-24 00:00:00',6.24,'No Stock',6.00,81.57),(4569,601,'2016-07-22 00:00:00',6.33,'Allocated',10.00,96.56),(4570,610,'2016-06-28 00:00:00',2.57,'No Stock',6.00,98.15),(4571,604,'2016-07-11 00:00:00',2.51,'No Stock',8.00,5.15),(4572,603,'2016-11-18 00:00:00',2.46,'Allocated',2.00,59.21),(4573,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4574,615,'2016-05-04 00:00:00',9.61,'On Order',3.00,14.81),(4575,608,'2016-11-19 00:00:00',7.08,'On Order',10.00,79.25),(4575,611,'2016-11-19 00:00:00',7.08,'On Order',10.00,79.25),(4575,615,'2016-11-19 00:00:00',7.08,'On Order',10.00,79.25),(4576,607,'2016-03-17 00:00:00',2.05,'On Order',7.00,31.78),(4576,608,'2016-03-17 00:00:00',2.05,'On Order',7.00,31.78),(4576,610,'2016-03-17 00:00:00',2.05,'On Order',7.00,31.78),(4577,604,'2016-04-22 00:00:00',6.26,'On Order',5.00,92.54),(4577,603,'2016-04-22 00:00:00',6.26,'On Order',5.00,92.54),(4577,601,'2016-04-22 00:00:00',6.26,'On Order',5.00,92.54),(4578,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4578,602,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4578,603,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4579,615,'2016-09-11 00:00:00',5.85,'No Stock',10.00,70.19),(4579,616,'2016-09-11 00:00:00',5.85,'No Stock',10.00,70.19),(4579,620,'2016-09-11 00:00:00',5.85,'No Stock',10.00,70.19),(4580,601,'2016-04-08 00:00:00',3.76,'No Stock',1.00,15.44),(4580,603,'2016-04-08 00:00:00',3.76,'No Stock',1.00,15.44),(4580,605,'2016-04-08 00:00:00',3.76,'No Stock',1.00,15.44),(4580,609,'2016-04-08 00:00:00',3.76,'No Stock',1.00,15.44),(4581,607,'2016-06-04 00:00:00',9.73,'On Order',8.00,42.40),(4581,610,'2016-04-20 00:00:00',3.87,'On Order',9.00,79.73),(4581,611,'2016-03-17 00:00:00',3.65,'On Order',5.00,78.01),(4581,616,'2016-07-06 00:00:00',5.24,'No Stock',5.00,50.56),(4582,609,'2016-05-22 00:00:00',9.40,'No Stock',7.00,65.99),(4582,607,'2016-05-22 00:00:00',9.40,'No Stock',7.00,65.99),(4582,606,'2016-05-22 00:00:00',9.40,'No Stock',7.00,65.99),(4583,604,'2016-04-13 00:00:00',6.51,'Allocated',9.00,19.92),(4583,610,'2016-12-08 00:00:00',8.30,'On Order',1.00,19.40),(4584,617,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4584,620,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4584,613,'2016-12-14 00:00:00',1.00,'No Stock',1.00,10.00),(4585,602,'2016-05-22 00:00:00',2.52,'Allocated',2.00,90.57),(4585,610,'2016-12-27 00:00:00',3.84,'On Order',10.00,44.26),(4586,604,'2017-02-23 00:00:00',9.64,'Allocated',2.00,56.61),(4586,612,'2016-04-04 00:00:00',7.68,'On Order',7.00,24.24),(4587,615,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4587,611,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4587,612,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4588,616,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4588,601,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4588,602,'2016-12-14 00:00:00',1.00,'Allocated',1.00,10.00),(4589,601,'2016-07-02 00:00:00',4.47,'Allocated',5.00,52.25),(4589,603,'2016-04-03 00:00:00',4.97,'On Order',9.00,72.27),(4590,610,'2016-12-16 00:00:00',6.71,'Allocated',3.00,46.20),(4590,615,'2016-06-01 00:00:00',5.26,'On Order',5.00,52.00),(4591,601,'2017-01-16 00:00:00',2.39,'No Stock',1.00,96.52),(4591,605,'2016-09-15 00:00:00',9.68,'On Order',8.00,19.56),(4592,609,'2016-05-02 00:00:00',3.20,'No Stock',10.00,30.76),(4592,619,'2016-07-19 00:00:00',6.13,'On Order',1.00,48.47),(4593,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4593,619,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4593,620,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4594,616,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4594,617,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4594,618,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4594,620,'2016-12-14 00:00:00',1.00,'On Order',1.00,10.00),(4595,605,'2017-02-19 00:00:00',8.15,'Allocated',1.00,50.28),(4595,601,'2017-02-19 00:00:00',8.15,'Allocated',1.00,50.28),(4595,602,'2017-02-19 00:00:00',8.15,'Allocated',1.00,50.28),(4596,605,'2016-09-11 00:00:00',7.53,'On Order',6.00,95.17),(4596,609,'2016-11-17 00:00:00',4.38,'No Stock',10.00,82.11),(4597,608,'2016-07-02 00:00:00',4.80,'No Stock',9.00,96.25),(4597,605,'2016-07-02 00:00:00',4.80,'No Stock',9.00,96.25),(4597,601,'2016-07-02 00:00:00',4.80,'No Stock',9.00,96.25),(4598,603,'2016-12-23 00:00:00',6.10,'No Stock',5.00,69.02),(4598,608,'2016-12-23 00:00:00',6.10,'No Stock',5.00,69.02),(4598,610,'2016-12-23 00:00:00',6.10,'No Stock',5.00,69.02),(4599,603,'2016-12-27 00:00:00',6.68,'On Order',9.00,40.91),(4599,607,'2016-12-27 00:00:00',6.68,'On Order',9.00,40.91),(4599,609,'2016-12-27 00:00:00',6.68,'On Order',9.00,40.91),(4600,611,'2016-06-16 00:00:00',8.87,'Allocated',5.00,22.93),(4600,615,'2016-06-16 00:00:00',8.87,'Allocated',5.00,22.93),(4600,612,'2016-06-16 00:00:00',8.87,'Allocated',5.00,22.93);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `ship_address1` varchar(255) DEFAULT NULL,
  `ship_address2` varchar(255) DEFAULT NULL,
  `ship_city` varchar(255) DEFAULT NULL,
  `ship_country` varchar(255) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `ship_postal_code` varchar(255) DEFAULT NULL,
  `ship_state` varchar(255) DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `shipping_fee` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4001,40,204,'2016-04-05 00:00:00','On Hold','2016-10-12 00:00:00','Card','93 Spohn Place',NULL,'Manggekompo','Indonesia','Jean Fuller',NULL,NULL,'2016-11-06 00:00:00',8.14),(4002,95,204,'2017-01-29 00:00:00','Shipped','2016-06-27 00:00:00','Check','46 Eliot Trail',NULL,'Virginia Beach','United States','Diane Holmes','23459','Virginia','2016-05-28 00:00:00',1.55),(4003,54,218,'2016-08-19 00:00:00','On Hold','2016-09-27 00:00:00','Cash','23 Sundown Junction',NULL,'Obodivka','Ukraine','Jerry Frazier',NULL,NULL,'2016-12-08 00:00:00',2.29),(4004,69,204,'2016-09-25 00:00:00','New','2016-07-04 00:00:00','Check','4909 Beilfuss Hill',NULL,'Nova Venécia','Brazil','Denise Freeman','29830-000',NULL,'2016-12-24 00:00:00',4.77),(4005,10,215,'2017-03-14 00:00:00','On Hold','2016-03-22 00:00:00','Check','7 Ludington Court',NULL,'Sukamaju','Indonesia','Jonathan Gordon',NULL,NULL,'2016-03-19 00:00:00',8.78),(4006,23,211,'2016-08-14 00:00:00','New','2016-08-21 00:00:00','Cash','859 Dahle Plaza',NULL,'Dayou','China','Sean Carter',NULL,NULL,'2016-12-05 00:00:00',9.43),(4007,92,204,'2017-01-02 00:00:00','Shipped','2016-03-24 00:00:00','Cash','5 Fuller Center',NULL,'Log pri Brezovici','India','Alice Warren','1358',NULL,'2016-07-09 00:00:00',3.25),(4008,20,205,'2016-05-15 00:00:00','On Hold','2016-09-02 00:00:00','Check','99 Blue Bill Park Junction',NULL,'Liangshui','China','Andrea Hamilton',NULL,NULL,'2016-09-12 00:00:00',7.04),(4009,58,219,'2016-11-27 00:00:00','On Hold','2016-09-27 00:00:00','Cash','907 Sundown Court',NULL,'Pedra Azul','Brazil','Wanda Hill','39970-000',NULL,'2017-03-02 00:00:00',4.35),(4010,57,218,'2016-09-11 00:00:00','Complete','2016-08-09 00:00:00','Cash','0 Charing Cross Court',NULL,'Chicago','United States','Carolyn Foster','60609','Illinois','2017-02-26 00:00:00',1.23),(4011,3,207,'2017-03-01 00:00:00','Complete','2016-05-08 00:00:00','Card','19 John Wall Parkway',NULL,'Lyon','France','Timothy Warren','69362 CEDEX 07','Rhône-Alpes','2016-08-04 00:00:00',9.57),(4012,59,210,'2016-12-31 00:00:00','On Hold','2016-04-23 00:00:00','Cash','2 Swallow Circle',NULL,'Cunliji','China','Kathleen Marshall',NULL,NULL,'2016-08-08 00:00:00',9.03),(4013,57,204,'2017-01-11 00:00:00','Shipped','2016-10-26 00:00:00','Check','1136 Kedzie Alley',NULL,'Eirado','Portugal','Jane Ortiz','4990-540','Viana do Castelo','2017-02-13 00:00:00',8.90),(4014,26,212,'2016-09-23 00:00:00','New','2016-09-11 00:00:00','Card','954 Kropf Court',NULL,'Ibitinga','Brazil','Carolyn Martinez','14940-000',NULL,'2016-05-13 00:00:00',4.57),(4015,86,201,'2016-11-04 00:00:00','New','2016-10-05 00:00:00','Card','89 Grasskamp Road',NULL,'San Francisco','Philippines','Debra Willis','8501',NULL,'2016-10-03 00:00:00',3.53),(4016,17,208,'2016-04-17 00:00:00','Complete','2017-01-08 00:00:00','Card','27501 Sommers Junction',NULL,'San Juan Opico','India','Sharon Little',NULL,NULL,'2016-03-22 00:00:00',6.87),(4017,73,205,'2016-07-03 00:00:00','New','2017-02-01 00:00:00','Check','1 John Wall Avenue',NULL,'La Libertad','Argentina','Nancy Hughes',NULL,NULL,'2016-09-26 00:00:00',4.67),(4018,16,213,'2016-12-01 00:00:00','New','2016-08-06 00:00:00','Card','98248 Tony Pass',NULL,'Val-d\'Or','Canada','Sara Knight','J9P','Québec','2016-06-08 00:00:00',9.52),(4019,10,209,'2016-04-18 00:00:00','On Hold','2017-01-20 00:00:00','Card','3 Commercial Point',NULL,'Rokietnica','Poland','Russell Wood','62-090',NULL,'2016-04-25 00:00:00',6.80),(4020,1,216,'2016-07-23 00:00:00','Complete','2016-08-11 00:00:00','Cash','15477 Farwell Circle',NULL,'Yongyang','China','Aaron Grant',NULL,NULL,'2017-02-23 00:00:00',3.17),(4021,38,209,'2016-12-16 00:00:00','On Hold','2016-06-21 00:00:00','Cash','9218 Leroy Avenue',NULL,'Mogapinyana','India','Ryan Foster',NULL,NULL,'2017-02-14 00:00:00',3.34),(4022,91,207,'2016-07-18 00:00:00','New','2016-10-27 00:00:00','Card','570 Londonderry Pass',NULL,'Mathakola','India','Peter Montgomery',NULL,NULL,'2016-04-06 00:00:00',8.11),(4023,39,209,'2016-07-15 00:00:00','Complete','2016-10-27 00:00:00','Cash','371 Acker Drive',NULL,'Mesa','United States','Lawrence Schmidt','85205','Arizona','2017-02-02 00:00:00',1.39),(4024,51,219,'2016-12-08 00:00:00','Complete','2016-05-13 00:00:00','Card','4608 Farmco Point',NULL,'Gemblengmulyo','Indonesia','Eric Gray',NULL,NULL,'2017-01-03 00:00:00',8.76),(4025,77,204,'2016-09-24 00:00:00','On Hold','2017-02-06 00:00:00','Cash','62 Sunnyside Park',NULL,'Itararé','Brazil','Gloria Green','18460-000',NULL,'2017-01-20 00:00:00',7.75),(4026,73,215,'2016-09-15 00:00:00','On Hold','2016-07-22 00:00:00','Card','5672 Ruskin Hill',NULL,'Maimará','Argentina','Nicholas Price','4624',NULL,'2016-12-24 00:00:00',9.11),(4027,98,208,'2016-05-31 00:00:00','Complete','2016-10-08 00:00:00','Cash','133 Gina Street',NULL,'Bantiran','Indonesia','Doris Watson',NULL,NULL,'2016-07-14 00:00:00',3.00),(4028,39,217,'2016-05-10 00:00:00','Complete','2016-09-11 00:00:00','Cash','40382 4th Terrace',NULL,'Agrelo','Portugal','Linda Foster','4730-300','Braga','2016-04-07 00:00:00',2.39),(4029,52,212,'2016-09-14 00:00:00','Shipped','2016-09-23 00:00:00','Check','02 Esker Junction',NULL,'El Ocotón','Canada','Anthony Spencer',NULL,NULL,'2016-12-21 00:00:00',7.72),(4030,74,218,'2016-05-08 00:00:00','Shipped','2016-11-27 00:00:00','Cash','7460 Westport Hill',NULL,'Köln','Germany','James Kennedy','51107','Nordrhein-Westfalen','2016-07-21 00:00:00',6.16),(4031,4,214,'2016-05-31 00:00:00','New','2017-03-15 00:00:00','Check','44 Havey Way',NULL,'Qingtong','China','Theresa Robinson',NULL,NULL,'2017-03-03 00:00:00',5.02),(4032,81,201,'2016-07-05 00:00:00','New','2016-10-16 00:00:00','Check','68 Derek Hill',NULL,'Azogues','Argentina','Jesse Ray',NULL,NULL,'2016-11-18 00:00:00',5.41),(4033,15,203,'2016-09-07 00:00:00','Complete','2016-03-30 00:00:00','Check','2 Vermont Terrace',NULL,'Mogocha','Russia','Harold Fields','673732',NULL,'2016-06-09 00:00:00',2.38),(4034,11,217,'2016-08-19 00:00:00','On Hold','2016-07-01 00:00:00','Cash','629 Waxwing Avenue',NULL,'Krasnyy Oktyabr’','Russia','Larry Watkins','398526',NULL,'2016-12-08 00:00:00',5.23),(4035,51,205,'2016-11-29 00:00:00','Shipped','2016-06-17 00:00:00','Card','23578 Arizona Junction',NULL,'Juhut','Indonesia','Debra Marshall',NULL,NULL,'2016-09-02 00:00:00',1.59),(4036,56,217,'2016-10-21 00:00:00','New','2016-04-25 00:00:00','Cash','63633 Columbus Avenue',NULL,'Paccho','Peru','Todd Stephens',NULL,NULL,'2017-02-13 00:00:00',5.09),(4037,60,219,'2016-09-22 00:00:00','Shipped','2016-09-30 00:00:00','Cash','0916 Grover Way',NULL,'Kuršėnai','Denmark','Jean Webb','81001',NULL,'2016-11-08 00:00:00',8.66),(4038,3,213,'2016-06-01 00:00:00','Complete','2016-06-30 00:00:00','Cash','44 Grayhawk Court',NULL,'Haenam','Finland','Heather Snyder',NULL,NULL,'2016-10-07 00:00:00',5.33),(4039,28,201,'2017-02-19 00:00:00','On Hold','2017-03-16 00:00:00','Check','5351 Barby Trail',NULL,'Shanghu','China','Janet Howard',NULL,NULL,'2016-11-25 00:00:00',9.18),(4040,74,215,'2016-09-14 00:00:00','New','2017-03-05 00:00:00','Card','08 Burrows Avenue',NULL,'Tân Sơn','Vietnam','Aaron Wheeler',NULL,NULL,'2016-06-23 00:00:00',3.36),(4041,79,204,'2016-09-27 00:00:00','New','2016-08-12 00:00:00','Card','3 Pennsylvania Court',NULL,'Victoria','India','Lori Watkins','VCT',NULL,'2017-02-15 00:00:00',9.41),(4042,92,205,'2016-11-03 00:00:00','Shipped','2016-08-06 00:00:00','Cash','7895 Amoth Avenue',NULL,'Mae Lao','Thailand','Alice Miller','57250',NULL,'2016-05-11 00:00:00',2.11),(4043,82,212,'2016-11-17 00:00:00','On Hold','2016-05-07 00:00:00','Cash','25203 Meadow Ridge Plaza',NULL,'Nine','Portugal','Marilyn Nguyen','4775-446','Braga','2016-04-19 00:00:00',6.03),(4044,55,218,'2016-06-26 00:00:00','New','2016-12-17 00:00:00','Cash','08621 Porter Lane',NULL,'Kingsport','United States','Ashley West','37665','Tennessee','2016-08-15 00:00:00',8.23),(4045,53,217,'2016-05-07 00:00:00','Complete','2016-10-27 00:00:00','Check','91519 Harbort Way',NULL,'Issoire','France','Julia Fernandez','63504 CEDEX','Auvergne','2017-02-25 00:00:00',1.14),(4046,78,211,'2016-12-11 00:00:00','On Hold','2017-02-13 00:00:00','Card','683 Caliangt Parkway',NULL,'Balazar','Portugal','Willie Sims','4805-005','Braga','2017-02-15 00:00:00',6.57),(4047,77,201,'2016-05-20 00:00:00','New','2016-08-12 00:00:00','Cash','25 Grover Lane',NULL,'Housuo','China','Samuel Burke',NULL,NULL,'2017-02-19 00:00:00',6.99),(4048,72,217,'2016-11-06 00:00:00','Complete','2016-03-24 00:00:00','Check','29791 Thierer Street',NULL,'Campamento','Argentina','Patricia Green','052027',NULL,'2016-09-29 00:00:00',3.33),(4049,98,210,'2016-08-24 00:00:00','Complete','2016-04-30 00:00:00','Check','68 Monica Point',NULL,'Cikaung','Indonesia','Nicole Washington',NULL,NULL,'2016-04-16 00:00:00',5.78),(4050,26,215,'2016-10-07 00:00:00','Complete','2016-07-29 00:00:00','Check','36611 Schlimgen Place',NULL,'Villa Francisca','Canada','Marie Bryant','10215',NULL,'2016-11-03 00:00:00',4.11),(4051,51,212,'2016-05-19 00:00:00','Shipped','2016-11-28 00:00:00','Check','5 Duke Center',NULL,'Soutinho','Portugal','Brandon Lane','4650-530','Porto','2017-03-16 00:00:00',9.62),(4052,9,205,'2016-07-19 00:00:00','Shipped','2016-12-08 00:00:00','Card','0 Mockingbird Crossing',NULL,'Jefferson City','United States','Pamela Ferguson','65105','Missouri','2016-09-05 00:00:00',9.98),(4053,42,210,'2016-04-09 00:00:00','On Hold','2016-11-10 00:00:00','Cash','8275 Sage Plaza',NULL,'Yilkiqi','China','Gloria Edwards',NULL,NULL,'2017-02-05 00:00:00',5.21),(4054,70,211,'2017-02-28 00:00:00','Complete','2017-01-06 00:00:00','Card','4679 Trailsway Circle',NULL,'Sanlanbahai','China','John Cole',NULL,NULL,'2017-02-11 00:00:00',4.42),(4055,65,208,'2017-01-11 00:00:00','Shipped','2017-03-15 00:00:00','Cash','314 Jenna Crossing',NULL,'Malusac','Philippines','Bobby Butler','2005',NULL,'2017-02-14 00:00:00',7.37),(4056,15,220,'2016-07-12 00:00:00','On Hold','2016-11-21 00:00:00','Card','1 Packers Avenue',NULL,'Batambak','Indonesia','Anthony Lane',NULL,NULL,'2016-09-06 00:00:00',5.41),(4057,76,220,'2016-05-05 00:00:00','On Hold','2017-02-11 00:00:00','Cash','891 Raven Street',NULL,'Chinju','Finland','Karen Ray',NULL,NULL,'2016-04-19 00:00:00',4.71),(4058,90,216,'2017-01-26 00:00:00','On Hold','2017-03-16 00:00:00','Card','8695 Mandrake Place',NULL,'Maythalūn','India','Martha Gonzalez',NULL,NULL,'2016-12-19 00:00:00',1.75),(4059,43,212,'2016-09-20 00:00:00','On Hold','2016-11-09 00:00:00','Check','154 Lukken Court',NULL,'Luoqiao','China','Judy Daniels',NULL,NULL,'2017-02-11 00:00:00',4.63),(4060,80,207,'2016-04-29 00:00:00','On Hold','2016-09-02 00:00:00','Cash','43 Kingsford Pass',NULL,'Dobruševo','Denmark','Jane Stevens','7514',NULL,'2016-07-01 00:00:00',1.96),(4061,89,214,'2016-10-09 00:00:00','Complete','2016-06-10 00:00:00','Card','5 Pearson Lane',NULL,'East London','South Africa','Emily Miller','5688',NULL,'2016-09-09 00:00:00',2.14),(4062,8,220,'2016-12-01 00:00:00','On Hold','2016-11-18 00:00:00','Card','30 Chinook Lane',NULL,'Selishche','Russia','Sarah Johnson','180536',NULL,'2017-03-09 00:00:00',3.76),(4063,48,220,'2017-03-05 00:00:00','Shipped','2016-05-20 00:00:00','Cash','72 Michigan Pass',NULL,'Sukasenang','Indonesia','Carolyn Reyes',NULL,NULL,'2016-11-30 00:00:00',6.52),(4064,31,214,'2016-07-19 00:00:00','Complete','2016-12-13 00:00:00','Card','43358 Packers Court',NULL,'Przystajń','Poland','Kathryn Coleman','42-141',NULL,'2016-08-16 00:00:00',1.68),(4065,41,205,'2016-12-09 00:00:00','Complete','2016-07-08 00:00:00','Cash','1675 Starling Point',NULL,'Zangbawa','China','Clarence Graham',NULL,NULL,'2016-03-20 00:00:00',5.82),(4066,41,205,'2016-05-25 00:00:00','New','2016-09-24 00:00:00','Cash','00 Warner Court',NULL,'Kabba','Netherlands','David Harris',NULL,NULL,'2016-11-15 00:00:00',7.24),(4067,13,218,'2016-07-24 00:00:00','New','2017-01-26 00:00:00','Cash','88567 Golf Course Plaza',NULL,'Mauá','Brazil','Ruth Fields','09300-000',NULL,'2016-12-06 00:00:00',6.82),(4068,11,206,'2016-05-04 00:00:00','On Hold','2016-06-17 00:00:00','Cash','88 Graedel Point',NULL,'Jablah','India','Todd Butler',NULL,NULL,'2016-07-10 00:00:00',3.83),(4069,55,215,'2016-12-22 00:00:00','Shipped','2016-08-24 00:00:00','Check','95 Troy Parkway',NULL,'Frampol','Poland','Catherine Perkins','23-440',NULL,'2016-03-28 00:00:00',7.60),(4070,40,220,'2016-10-17 00:00:00','Shipped','2016-09-06 00:00:00','Cash','3393 Weeping Birch Court',NULL,'Burunday','Denmark','Jeffrey Rodriguez',NULL,NULL,'2016-12-01 00:00:00',2.52),(4071,70,218,'2017-03-16 00:00:00','Complete','2016-04-02 00:00:00','Check','79327 Ridgeway Circle',NULL,'Dupnitsa','Denmark','Rachel Butler','2680',NULL,'2016-12-09 00:00:00',6.25),(4072,45,205,'2017-01-22 00:00:00','Complete','2017-03-06 00:00:00','Card','0 Susan Court',NULL,'Morohongō','Japan','Robin Fisher','357-0211',NULL,'2016-05-15 00:00:00',4.42),(4073,94,217,'2017-01-25 00:00:00','On Hold','2016-08-13 00:00:00','Cash','4 Glacier Hill Road',NULL,'Ngrejo','Indonesia','Ruth Carpenter',NULL,NULL,'2016-04-11 00:00:00',4.90),(4074,27,219,'2017-01-06 00:00:00','On Hold','2016-11-20 00:00:00','Check','0 Comanche Junction',NULL,'Chao','Peru','Irene Kelly',NULL,NULL,'2017-01-03 00:00:00',5.32),(4075,44,214,'2016-06-24 00:00:00','Complete','2017-02-27 00:00:00','Card','81709 Helena Park',NULL,'Dongmaku','China','Douglas Sims',NULL,NULL,'2016-12-20 00:00:00',3.35),(4076,27,216,'2016-09-23 00:00:00','Shipped','2016-05-27 00:00:00','Cash','5316 Dottie Way',NULL,'Olszówka','Poland','Kenneth Rose','62-641',NULL,'2016-10-05 00:00:00',2.63),(4077,84,211,'2016-11-24 00:00:00','On Hold','2016-09-09 00:00:00','Cash','42187 Shoshone Center',NULL,'Saltsjöbaden','Sweden','Jimmy Morgan','133 41','Stockholm','2016-08-04 00:00:00',1.11),(4078,57,202,'2016-05-28 00:00:00','On Hold','2016-11-14 00:00:00','Check','5 Lien Junction',NULL,'Al Qaţn','South Africa','Annie Vasquez',NULL,NULL,'2016-06-02 00:00:00',2.73),(4079,64,202,'2016-07-05 00:00:00','Shipped','2016-08-18 00:00:00','Card','58 Nelson Circle',NULL,'Tsaghkahovit','India','Henry Mccoy',NULL,NULL,'2016-05-20 00:00:00',3.29),(4080,44,216,'2017-02-20 00:00:00','Complete','2017-03-06 00:00:00','Check','27 Heffernan Pass',NULL,'Cairima','China','Norma Graham',NULL,NULL,'2016-10-08 00:00:00',7.02),(4081,60,218,'2017-03-16 00:00:00','New','2017-01-29 00:00:00','Check','572 Vahlen Place',NULL,'Drahovo','Ukraine','Albert Wright',NULL,NULL,'2016-08-06 00:00:00',4.92),(4082,15,219,'2016-12-26 00:00:00','Complete','2016-06-04 00:00:00','Card','21 Merchant Way',NULL,'Acacías','Argentina','Jane Wells','507009',NULL,'2017-02-17 00:00:00',6.53),(4083,61,212,'2016-06-24 00:00:00','On Hold','2016-10-19 00:00:00','Cash','4060 Carioca Drive',NULL,'Ntoroko','South Africa','Jesse Mitchell',NULL,NULL,'2016-03-23 00:00:00',9.41),(4084,3,216,'2016-08-20 00:00:00','On Hold','2016-12-22 00:00:00','Check','868 Pankratz Trail',NULL,'Bat Khela','Iran','Carlos Brooks','18351',NULL,'2017-02-15 00:00:00',1.00),(4085,25,209,'2016-12-03 00:00:00','New','2017-02-04 00:00:00','Card','8874 Starling Plaza',NULL,'Tarbes','France','Christopher Williamson','65951 CEDEX 9','Midi-Pyrénées','2016-06-01 00:00:00',4.15),(4086,2,205,'2016-06-19 00:00:00','Shipped','2016-07-22 00:00:00','Card','7223 Carpenter Road',NULL,'Chitral','Iran','Joseph Wells','17200',NULL,'2016-08-26 00:00:00',5.31),(4087,96,216,'2016-06-04 00:00:00','Shipped','2017-03-03 00:00:00','Cash','908 Ramsey Junction',NULL,'Dzerzhinskiy','Russia','Teresa Thomas','140083',NULL,'2016-12-31 00:00:00',4.29),(4088,35,203,'2016-09-21 00:00:00','New','2017-01-01 00:00:00','Cash','70537 Tennessee Crossing',NULL,'Bồng Sơn','Vietnam','Scott Gomez',NULL,NULL,'2017-01-08 00:00:00',6.93),(4089,18,210,'2017-02-17 00:00:00','On Hold','2016-11-17 00:00:00','Card','0 Jackson Place',NULL,'Šilheřovice','Czech Republic','Nicole Miller','747 15',NULL,'2016-10-28 00:00:00',5.64),(4090,8,201,'2016-11-12 00:00:00','Complete','2016-09-29 00:00:00','Cash','7320 Bunting Pass',NULL,'Namioka','Japan','Donald Nguyen','953-0062',NULL,'2016-06-02 00:00:00',7.07),(4091,67,212,'2016-04-08 00:00:00','New','2016-03-17 00:00:00','Card','1844 Esch Plaza',NULL,'Gračec','Canada','Shawn Myers','10370',NULL,'2016-11-21 00:00:00',4.84),(4092,16,220,'2017-01-12 00:00:00','Shipped','2016-12-08 00:00:00','Check','2 Donald Alley',NULL,'La Colorada','Denmark','Daniel Armstrong',NULL,NULL,'2016-08-04 00:00:00',2.98),(4093,60,203,'2016-04-17 00:00:00','New','2016-04-18 00:00:00','Check','23848 6th Center',NULL,'Guayatá','Argentina','Henry Gonzales','153047',NULL,'2016-05-10 00:00:00',1.54),(4094,37,209,'2016-08-07 00:00:00','New','2016-05-23 00:00:00','Card','1152 Morning Park',NULL,'Zhitan','China','Stephanie Snyder',NULL,NULL,'2016-04-26 00:00:00',9.76),(4095,46,205,'2016-09-01 00:00:00','Shipped','2017-01-25 00:00:00','Card','98050 Mitchell Point',NULL,'Bun Barat','Indonesia','Joan Butler',NULL,NULL,'2017-02-25 00:00:00',9.57),(4096,92,211,'2017-01-02 00:00:00','Shipped','2016-12-28 00:00:00','Card','8 Vidon Terrace',NULL,'Rumenka','India','Gloria Murray',NULL,NULL,'2016-12-06 00:00:00',5.33),(4097,66,210,'2016-07-04 00:00:00','Complete','2016-04-28 00:00:00','Check','0 Pearson Point',NULL,'Yevpatoriya','Ukraine','Dorothy Simpson',NULL,NULL,'2016-05-30 00:00:00',3.52),(4098,59,219,'2016-09-27 00:00:00','Complete','2016-12-19 00:00:00','Check','921 Anhalt Place',NULL,'Rietavas','Denmark','Katherine Brooks','90018',NULL,'2016-12-17 00:00:00',5.29),(4099,65,207,'2016-07-06 00:00:00','New','2016-07-08 00:00:00','Card','89712 Dryden Point',NULL,'Bronnitsy','Russia','Linda Reid','142451',NULL,'2016-10-11 00:00:00',5.68),(4100,61,212,'2016-04-14 00:00:00','Shipped','2016-08-03 00:00:00','Card','17032 Melrose Crossing',NULL,'White River','South Africa','Richard Carpenter','1256',NULL,'2016-05-02 00:00:00',7.22),(4101,23,206,'2016-03-28 00:00:00','Shipped','2016-08-19 00:00:00','Check','9167 Valley Edge Point',NULL,'Guocun','China','Clarence Coleman',NULL,NULL,'2016-12-01 00:00:00',5.86),(4102,16,202,'2016-07-26 00:00:00','Complete','2016-08-03 00:00:00','Check','178 Park Meadow Avenue',NULL,'Mlonggo','Indonesia','Kevin Dunn',NULL,NULL,'2017-01-18 00:00:00',4.15),(4103,65,211,'2017-01-17 00:00:00','Shipped','2016-10-15 00:00:00','Check','689 Anthes Pass',NULL,'Cibanten','Indonesia','Keith Lopez',NULL,NULL,'2016-11-09 00:00:00',8.25),(4104,86,218,'2017-03-12 00:00:00','New','2016-05-08 00:00:00','Cash','57974 Riverside Junction',NULL,'Ban Mai','Thailand','Chris Wright','80000',NULL,'2016-05-25 00:00:00',4.85),(4105,57,215,'2016-07-03 00:00:00','Shipped','2016-08-10 00:00:00','Card','93 Ohio Hill',NULL,'Bryan','United States','Michael Snyder','77806','Texas','2016-05-03 00:00:00',3.54),(4106,2,210,'2017-03-07 00:00:00','On Hold','2017-01-20 00:00:00','Cash','5024 Summerview Circle',NULL,'Itapira','Brazil','David Day','13970-000',NULL,'2016-09-18 00:00:00',3.60),(4107,4,218,'2016-10-10 00:00:00','On Hold','2016-06-11 00:00:00','Cash','4892 Huxley Center',NULL,'Tanjungagung','Indonesia','Lisa Kim',NULL,NULL,'2016-09-02 00:00:00',6.23),(4108,26,214,'2016-06-02 00:00:00','On Hold','2016-04-14 00:00:00','Check','1569 Mariners Cove Terrace',NULL,'Maszkienice','Poland','Teresa Ellis','32-854',NULL,'2016-10-05 00:00:00',7.65),(4109,51,201,'2016-10-07 00:00:00','Shipped','2016-09-30 00:00:00','Check','2165 Bluestem Center',NULL,'Kampungbaru','Indonesia','Jimmy Lawson',NULL,NULL,'2017-02-02 00:00:00',1.73),(4110,4,215,'2016-08-21 00:00:00','New','2016-06-26 00:00:00','Card','40070 Anderson Court',NULL,'Vicente Guerrero','Mexico','Jerry Murray','92440','Veracruz Llave','2017-02-05 00:00:00',1.57),(4111,56,210,'2016-07-06 00:00:00','New','2016-05-07 00:00:00','Cash','5322 Goodland Avenue',NULL,'Paris 17','France','Joan Adams','75853 CEDEX 17','Île-de-France','2016-09-19 00:00:00',7.52),(4112,77,214,'2016-09-04 00:00:00','New','2016-11-06 00:00:00','Card','7 Clove Center',NULL,'Gongjiahe','China','Chris Young',NULL,NULL,'2016-10-19 00:00:00',3.31),(4113,62,217,'2016-07-18 00:00:00','Complete','2016-09-25 00:00:00','Check','6002 Rieder Road',NULL,'Lingbei','China','Norma Oliver',NULL,NULL,'2016-09-30 00:00:00',8.85),(4114,72,213,'2016-08-01 00:00:00','New','2016-12-19 00:00:00','Card','88 Helena Drive',NULL,'Alcoutim','Portugal','Douglas Day','8970-055','Faro','2016-09-12 00:00:00',5.52),(4115,6,220,'2016-11-13 00:00:00','On Hold','2016-03-21 00:00:00','Cash','820 Westend Place',NULL,'Springfield','United States','Janet James','01129','Massachusetts','2017-02-22 00:00:00',4.72),(4116,72,201,'2016-09-01 00:00:00','Shipped','2016-12-10 00:00:00','Cash','2 Donald Hill',NULL,'Majiang','China','Martha Lee',NULL,NULL,'2016-09-07 00:00:00',4.39),(4117,40,202,'2017-02-04 00:00:00','Complete','2017-01-29 00:00:00','Check','02989 Morningstar Avenue',NULL,'Gīvī','Iran','Benjamin Cruz',NULL,NULL,'2016-12-09 00:00:00',1.77),(4118,48,213,'2016-12-24 00:00:00','On Hold','2016-05-31 00:00:00','Check','7 Kensington Center',NULL,'Pingyi','China','Diane Porter',NULL,NULL,'2017-01-06 00:00:00',4.69),(4119,69,205,'2016-06-30 00:00:00','New','2016-12-28 00:00:00','Cash','80411 Victoria Center',NULL,'Punsu','Indonesia','Brandon Myers',NULL,NULL,'2016-05-01 00:00:00',7.80),(4120,63,220,'2016-11-11 00:00:00','Shipped','2016-09-23 00:00:00','Check','2750 Sullivan Place',NULL,'San Jose','Philippines','Beverly Garza','8427',NULL,'2016-10-30 00:00:00',8.15),(4121,32,220,'2016-05-05 00:00:00','On Hold','2017-02-23 00:00:00','Card','0731 Clarendon Point',NULL,'Pomichna','Ukraine','Cynthia Simpson',NULL,NULL,'2016-09-05 00:00:00',5.56),(4122,38,201,'2016-04-24 00:00:00','On Hold','2016-06-17 00:00:00','Cash','4800 Dottie Parkway',NULL,'Tân Kỳ','Vietnam','Janet West',NULL,NULL,'2016-07-30 00:00:00',2.63),(4123,24,214,'2016-04-04 00:00:00','On Hold','2016-09-24 00:00:00','Card','85 Duke Avenue',NULL,'Shemonaīkha','Denmark','Kevin Stone',NULL,NULL,'2016-06-11 00:00:00',9.99),(4124,9,210,'2016-09-01 00:00:00','Complete','2016-08-29 00:00:00','Card','80663 Almo Park',NULL,'Zaječov','Czech Republic','Amy Austin','267 63',NULL,'2016-06-18 00:00:00',3.58),(4125,78,206,'2017-02-09 00:00:00','New','2016-12-26 00:00:00','Cash','6 Commercial Junction',NULL,'Hudong','China','Gregory Greene',NULL,NULL,'2016-07-07 00:00:00',7.34),(4126,48,215,'2016-07-30 00:00:00','On Hold','2016-09-28 00:00:00','Check','115 Ramsey Plaza',NULL,'Allentown','United States','Laura Woods','18105','Pennsylvania','2016-12-25 00:00:00',4.92),(4127,19,220,'2016-03-29 00:00:00','Shipped','2017-03-14 00:00:00','Card','452 Grayhawk Way',NULL,'Sicheng','China','Stephanie Reed',NULL,NULL,'2016-05-27 00:00:00',1.10),(4128,64,208,'2016-06-03 00:00:00','Complete','2016-06-23 00:00:00','Cash','6028 West Street',NULL,'Kliteh','Indonesia','Craig Gonzalez',NULL,NULL,'2016-08-13 00:00:00',1.73),(4129,28,201,'2016-09-05 00:00:00','Complete','2016-06-29 00:00:00','Card','4 Stone Corner Place',NULL,'Chechenglu','China','Raymond Gomez',NULL,NULL,'2016-04-03 00:00:00',4.32),(4130,83,215,'2016-11-14 00:00:00','Complete','2016-11-28 00:00:00','Card','7 Nevada Way',NULL,'Alīpur','Iran','Kenneth Taylor','34451',NULL,'2016-09-13 00:00:00',5.07),(4131,76,203,'2017-02-01 00:00:00','New','2016-11-18 00:00:00','Card','2493 Saint Paul Crossing',NULL,'Bofuer','Indonesia','Jose Peters',NULL,NULL,'2017-01-04 00:00:00',9.85),(4132,67,207,'2016-09-02 00:00:00','New','2017-02-05 00:00:00','Card','7251 Prairieview Place',NULL,'Espinillo','Argentina','Martin West','3460',NULL,'2017-03-10 00:00:00',7.90),(4133,78,208,'2016-08-27 00:00:00','Shipped','2016-12-22 00:00:00','Cash','4076 East Trail',NULL,'Caramanta','Argentina','Louise Dunn','056047',NULL,'2016-12-26 00:00:00',1.28),(4134,93,209,'2016-06-27 00:00:00','Complete','2016-09-17 00:00:00','Check','67 Namekagon Crossing',NULL,'Pasarkayu','Indonesia','Gregory Stanley',NULL,NULL,'2016-04-10 00:00:00',2.83),(4135,60,206,'2016-03-23 00:00:00','New','2016-12-22 00:00:00','Check','21 Old Shore Place',NULL,'Tujing','China','Ronald Palmer',NULL,NULL,'2016-06-19 00:00:00',9.01),(4136,10,209,'2016-11-07 00:00:00','New','2016-09-20 00:00:00','Card','740 Toban Court',NULL,'Liujiage','China','Harry Robinson',NULL,NULL,'2016-11-21 00:00:00',7.13),(4137,83,214,'2016-05-20 00:00:00','Complete','2016-09-13 00:00:00','Card','5167 Laurel Drive',NULL,'Nirji','China','Joan Torres',NULL,NULL,'2016-04-08 00:00:00',9.81),(4138,47,207,'2016-07-17 00:00:00','On Hold','2016-11-16 00:00:00','Card','4 Fuller Lane',NULL,'Detroit','United States','Carlos Jones','48258','Michigan','2016-10-03 00:00:00',8.02),(4139,92,214,'2016-07-17 00:00:00','Complete','2016-04-04 00:00:00','Check','738 Vernon Road',NULL,'Veverská Bítýška','Czech Republic','Terry Freeman','664 71',NULL,'2017-01-23 00:00:00',1.93),(4140,92,204,'2016-06-09 00:00:00','On Hold','2016-07-03 00:00:00','Check','3242 Bunting Trail',NULL,'Schaumburg','United States','Rose Hunt','60193','Illinois','2016-05-06 00:00:00',7.65),(4141,12,214,'2016-11-19 00:00:00','On Hold','2017-01-18 00:00:00','Card','395 Hauk Road',NULL,'Rudky','Ukraine','Harry Reid',NULL,NULL,'2017-03-16 00:00:00',5.23),(4142,88,212,'2016-12-25 00:00:00','New','2016-05-16 00:00:00','Check','9311 Old Gate Park',NULL,'Hejiabao','China','Fred Olson',NULL,NULL,'2016-12-14 00:00:00',4.02),(4143,79,217,'2016-06-14 00:00:00','New','2016-05-08 00:00:00','Card','08347 Comanche Pass',NULL,'Bukovec','Czech Republic','Paul Arnold','739 84',NULL,'2016-08-25 00:00:00',6.02),(4144,56,216,'2016-06-03 00:00:00','New','2016-07-27 00:00:00','Card','55 Stoughton Pass',NULL,'Shengmi','China','Carolyn Woods',NULL,NULL,'2016-07-22 00:00:00',7.32),(4145,84,218,'2016-07-02 00:00:00','New','2016-06-17 00:00:00','Check','2 Stephen Plaza',NULL,'Arhust','Japan','Craig Schmidt',NULL,NULL,'2016-11-05 00:00:00',3.31),(4146,13,219,'2016-09-02 00:00:00','Complete','2016-11-10 00:00:00','Card','452 Clemons Court',NULL,'København','Denmark','Antonio Jordan','1787','Region Hovedstaden','2017-01-29 00:00:00',4.84),(4147,51,212,'2016-10-19 00:00:00','On Hold','2017-03-08 00:00:00','Card','1649 Crescent Oaks Road',NULL,'Roubaix','France','Carol Evans','59100','Nord-Pas-de-Calais','2017-01-20 00:00:00',7.71),(4148,26,217,'2016-04-16 00:00:00','On Hold','2016-06-12 00:00:00','Card','73679 Morning Drive',NULL,'Ayotupas','Japan','Steven Torres',NULL,NULL,'2016-11-28 00:00:00',7.00),(4149,1,215,'2017-02-06 00:00:00','Complete','2016-07-22 00:00:00','Check','03 Golf View Way',NULL,'Madaoua','United Kingdom','Louis Watson',NULL,NULL,'2016-10-27 00:00:00',4.45),(4150,100,210,'2017-01-14 00:00:00','New','2017-02-09 00:00:00','Check','5 Hagan Hill',NULL,'Huacaschuque','Peru','Robin Reynolds',NULL,NULL,'2016-11-12 00:00:00',7.37),(4151,24,217,'2016-09-06 00:00:00','New','2016-07-16 00:00:00','Card','3 Manitowish Avenue',NULL,'Passos','Portugal','Julia Gilbert','4990-770','Viana do Castelo','2016-10-11 00:00:00',1.76),(4152,90,210,'2016-05-26 00:00:00','On Hold','2017-02-05 00:00:00','Cash','0 Birchwood Plaza',NULL,'Odivelas','Portugal','Chris Chavez','2675-080','Lisboa','2016-07-14 00:00:00',8.35),(4153,79,220,'2016-10-27 00:00:00','On Hold','2016-10-05 00:00:00','Check','04510 West Circle',NULL,'Weda','Japan','Adam Morrison',NULL,NULL,'2016-08-14 00:00:00',8.84),(4154,57,210,'2017-02-21 00:00:00','Complete','2016-12-02 00:00:00','Cash','37027 Hintze Parkway',NULL,'Vakhrushi','Russia','Doris Snyder','613110',NULL,'2016-09-28 00:00:00',2.75),(4155,24,202,'2017-02-03 00:00:00','New','2016-12-23 00:00:00','Check','919 Warner Circle',NULL,'Kanbe','India','Lisa Fisher',NULL,NULL,'2016-08-03 00:00:00',2.48),(4156,89,213,'2017-01-26 00:00:00','On Hold','2017-01-31 00:00:00','Cash','6750 Hansons Center',NULL,'Saint Petersburg','Russia','Gloria Murphy','190990',NULL,'2016-06-25 00:00:00',2.88),(4157,83,219,'2016-08-03 00:00:00','New','2016-09-22 00:00:00','Cash','88365 Namekagon Park',NULL,'Maofan','China','Sara Mcdonald',NULL,NULL,'2016-06-15 00:00:00',4.69),(4158,79,202,'2016-08-13 00:00:00','New','2016-11-25 00:00:00','Check','41 Springs Plaza',NULL,'Carangola','Brazil','John Barnes','36800-000',NULL,'2016-10-08 00:00:00',4.84),(4159,84,215,'2016-11-30 00:00:00','Shipped','2016-09-25 00:00:00','Cash','39153 Kipling Trail',NULL,'Now Zād','Germany','Bobby Matthews',NULL,NULL,'2017-02-27 00:00:00',7.56),(4160,40,216,'2016-07-27 00:00:00','New','2016-12-22 00:00:00','Card','899 Waubesa Alley',NULL,'Vellinge','Sweden','Robin Greene','235 93','Skåne','2016-12-05 00:00:00',4.17),(4161,91,211,'2017-03-12 00:00:00','On Hold','2016-10-26 00:00:00','Card','3 Nobel Terrace',NULL,'Bukabu','Japan','Joseph Long',NULL,NULL,'2016-09-11 00:00:00',2.26),(4162,94,204,'2016-10-08 00:00:00','Shipped','2016-06-15 00:00:00','Cash','880 Arizona Terrace',NULL,'Elena','Argentina','Lisa Rodriguez','5815',NULL,'2016-09-26 00:00:00',3.13),(4163,49,208,'2017-02-23 00:00:00','On Hold','2016-10-26 00:00:00','Cash','79 Mariners Cove Plaza',NULL,'Şafāshahr','Iran','Douglas Parker',NULL,NULL,'2016-06-05 00:00:00',1.83),(4164,23,201,'2016-10-31 00:00:00','Shipped','2017-03-08 00:00:00','Check','97911 Meadow Ridge Road',NULL,'Hexi','China','Laura Stewart',NULL,NULL,'2017-01-07 00:00:00',1.24),(4165,27,202,'2017-01-07 00:00:00','Shipped','2016-09-03 00:00:00','Card','29 Lakewood Trail',NULL,'Kalkal Barat','Japan','Matthew Jordan',NULL,NULL,'2016-10-05 00:00:00',9.19),(4166,61,218,'2016-03-31 00:00:00','New','2016-03-23 00:00:00','Card','79 Carberry Alley',NULL,'Vạn Giã','Vietnam','Denise Mason',NULL,NULL,'2017-03-03 00:00:00',7.78),(4167,56,220,'2016-11-12 00:00:00','Complete','2016-07-14 00:00:00','Card','9910 Reindahl Parkway',NULL,'Shangyanzhuang','China','Phillip Castillo',NULL,NULL,'2016-06-18 00:00:00',2.48),(4168,41,201,'2016-07-10 00:00:00','Shipped','2016-11-11 00:00:00','Check','8 Hermina Terrace',NULL,'Petrolina','Brazil','Dorothy Nelson','56300-000',NULL,'2016-07-29 00:00:00',1.52),(4169,100,218,'2016-12-18 00:00:00','New','2017-01-06 00:00:00','Card','21 Northland Trail',NULL,'Bukor','India','Lawrence Willis',NULL,NULL,'2016-12-02 00:00:00',2.28),(4170,6,218,'2016-10-31 00:00:00','Shipped','2016-06-02 00:00:00','Check','5748 Kings Hill',NULL,'Tianning','China','Jonathan Banks',NULL,NULL,'2016-10-20 00:00:00',5.71),(4171,93,211,'2016-11-16 00:00:00','Complete','2016-12-12 00:00:00','Cash','001 Straubel Point',NULL,'Huangshapu','China','Gary Green',NULL,NULL,'2017-01-20 00:00:00',3.60),(4172,46,203,'2016-10-16 00:00:00','Shipped','2017-02-15 00:00:00','Cash','367 Gateway Park',NULL,'Zhutang','China','Nancy Bryant',NULL,NULL,'2016-09-08 00:00:00',2.19),(4173,72,208,'2016-08-27 00:00:00','On Hold','2017-01-18 00:00:00','Check','8 Service Lane',NULL,'Jinshandian','China','Jeremy Rose',NULL,NULL,'2016-04-09 00:00:00',8.09),(4174,88,212,'2016-06-25 00:00:00','New','2017-02-08 00:00:00','Card','74 American Crossing',NULL,'Canmang','China','Rebecca Gibson',NULL,NULL,'2016-08-21 00:00:00',1.31),(4175,75,208,'2017-02-28 00:00:00','New','2017-02-18 00:00:00','Check','676 Service Crossing',NULL,'Racławice','Poland','Marilyn Hanson','32-222',NULL,'2017-01-03 00:00:00',2.88),(4176,1,204,'2016-09-23 00:00:00','On Hold','2016-12-30 00:00:00','Card','8 Lakewood Crossing',NULL,'Huaizhong','China','Denise Hanson',NULL,NULL,'2016-08-16 00:00:00',9.48),(4177,20,204,'2017-03-02 00:00:00','On Hold','2016-06-21 00:00:00','Check','4752 Meadow Ridge Lane',NULL,'Sosnovo-Ozerskoye','Russia','John Shaw','612955',NULL,'2016-12-27 00:00:00',7.17),(4178,30,202,'2016-03-20 00:00:00','On Hold','2017-01-05 00:00:00','Check','5941 Esch Lane',NULL,'Shuiyang','China','Russell Fernandez',NULL,NULL,'2016-10-17 00:00:00',1.04),(4179,27,202,'2017-01-14 00:00:00','Shipped','2016-05-12 00:00:00','Card','67778 Butterfield Trail',NULL,'Qalyūb','Germany','Annie Ruiz',NULL,NULL,'2016-07-31 00:00:00',5.51),(4180,1,208,'2017-03-16 00:00:00','Shipped','2016-07-26 00:00:00','Check','88504 Johnson Street',NULL,'Salingogan','Philippines','Ashley Gonzales','6417',NULL,'2016-04-04 00:00:00',7.56),(4181,70,203,'2016-03-25 00:00:00','New','2016-09-05 00:00:00','Cash','54 3rd Circle',NULL,'Haibeitou','China','Richard George',NULL,NULL,'2016-11-06 00:00:00',1.99),(4182,69,219,'2016-04-11 00:00:00','Shipped','2016-11-30 00:00:00','Check','2 Menomonie Pass',NULL,'Oslo','Greece','David Harris','0188','Oslo','2017-02-03 00:00:00',1.93),(4183,25,211,'2016-12-08 00:00:00','Shipped','2016-04-02 00:00:00','Cash','302 Autumn Leaf Parkway',NULL,'Lameiras','Portugal','Catherine Reynolds','2715-145','Lisboa','2016-11-16 00:00:00',6.68),(4184,73,217,'2016-06-19 00:00:00','New','2017-01-06 00:00:00','Check','690 Laurel Park',NULL,'Sinisian','Philippines','Donald Moreno','4212',NULL,'2016-11-29 00:00:00',3.10),(4185,34,210,'2016-07-03 00:00:00','Complete','2016-06-27 00:00:00','Cash','45044 Harper Place',NULL,'Madīnat Lab‘ūs','South Africa','Ryan Thomas',NULL,NULL,'2016-05-23 00:00:00',6.31),(4186,91,206,'2016-05-26 00:00:00','Shipped','2016-05-10 00:00:00','Check','8350 Karstens Parkway',NULL,'Puyo','Argentina','Ruby Lynch',NULL,NULL,'2016-09-09 00:00:00',6.07),(4187,64,208,'2016-05-31 00:00:00','Shipped','2016-05-15 00:00:00','Card','6069 Chive Plaza',NULL,'Joutseno','Finland','Linda Robinson','54101',NULL,'2016-10-16 00:00:00',3.11),(4188,41,216,'2017-02-07 00:00:00','New','2016-08-31 00:00:00','Check','2611 Comanche Junction',NULL,'Lacombe','Canada','Bonnie Morris','T4L','Alberta','2016-03-28 00:00:00',2.53),(4189,51,206,'2016-12-20 00:00:00','New','2016-11-28 00:00:00','Check','2348 Blue Bill Park Crossing',NULL,'Ngkiong','Japan','Dennis Gardner',NULL,NULL,'2016-12-08 00:00:00',5.10),(4190,54,220,'2016-08-06 00:00:00','On Hold','2016-03-22 00:00:00','Card','817 Ohio Point',NULL,'Orekhovo-Zuyevo','Russia','Carolyn Matthews','142609',NULL,'2016-08-27 00:00:00',7.52),(4191,96,207,'2016-07-03 00:00:00','New','2016-05-07 00:00:00','Check','3 Eastwood Terrace',NULL,'Berezovo','Ukraine','Jesse Parker',NULL,NULL,'2016-06-18 00:00:00',6.64),(4192,18,216,'2016-06-05 00:00:00','On Hold','2016-11-17 00:00:00','Cash','6 Oak Valley Lane',NULL,'Caijiang','China','Ann Gilbert',NULL,NULL,'2017-01-11 00:00:00',3.72),(4193,22,208,'2016-06-26 00:00:00','On Hold','2016-05-23 00:00:00','Cash','57581 Union Road',NULL,'Ilinden','Denmark','Martha Hawkins','1041',NULL,'2017-02-22 00:00:00',5.64),(4194,42,207,'2017-02-03 00:00:00','Shipped','2016-12-07 00:00:00','Check','83 Green Ridge Point',NULL,'Wangcheng','China','Jeffrey Hart',NULL,NULL,'2017-01-08 00:00:00',1.15),(4195,28,217,'2016-10-18 00:00:00','Complete','2016-04-23 00:00:00','Cash','54373 Coleman Street',NULL,'Karangbungur','Japan','Joseph Riley',NULL,NULL,'2016-05-01 00:00:00',5.90),(4196,78,207,'2016-07-09 00:00:00','On Hold','2016-07-09 00:00:00','Check','9 Stone Corner Hill',NULL,'Dambulla','United Kingdom','Brian Dean','21100',NULL,'2016-07-15 00:00:00',5.15),(4197,38,204,'2016-07-19 00:00:00','Complete','2016-11-07 00:00:00','Card','47302 Porter Junction',NULL,'Dananshan','China','Christine Campbell',NULL,NULL,'2016-04-13 00:00:00',6.74),(4198,7,201,'2017-03-02 00:00:00','New','2016-04-17 00:00:00','Cash','401 Erie Avenue',NULL,'Borkowice','Poland','Ruth Mcdonald','26-422',NULL,'2016-08-16 00:00:00',3.24),(4199,87,216,'2016-12-14 00:00:00','Complete','2016-07-11 00:00:00','Cash','450 Sullivan Avenue',NULL,'Carpenter','Philippines','Jean Armstrong','2009',NULL,'2017-03-05 00:00:00',4.25),(4200,8,218,'2017-02-01 00:00:00','Shipped','2016-07-09 00:00:00','Card','775 Butterfield Lane',NULL,'Vaasa','Finland','Gary Price','66999',NULL,'2016-04-17 00:00:00',5.36),(4201,77,217,'2016-11-10 00:00:00','New','2016-12-09 00:00:00','Card','5878 Badeau Lane',NULL,'Kazanskaya','Russia','Carolyn Scott','396614',NULL,'2016-11-13 00:00:00',7.94),(4202,10,204,'2016-08-12 00:00:00','Complete','2016-08-06 00:00:00','Card','9 Roth Court',NULL,'Governor’s Harbour','Canada','Earl Anderson',NULL,NULL,'2016-03-21 00:00:00',2.47),(4203,54,204,'2016-05-26 00:00:00','Shipped','2016-08-24 00:00:00','Cash','70 Burrows Street',NULL,'Fucheng','China','Elizabeth Kelley',NULL,NULL,'2016-04-18 00:00:00',9.94),(4204,58,208,'2017-03-09 00:00:00','New','2016-08-26 00:00:00','Card','46476 Burning Wood Crossing',NULL,'Koper','India','Julia Wilson','6600',NULL,'2016-04-17 00:00:00',3.82),(4205,85,208,'2016-05-04 00:00:00','Shipped','2016-09-23 00:00:00','Card','39 Tennessee Avenue',NULL,'Jejkowice','Poland','Jeffrey Oliver','44-290',NULL,'2016-03-18 00:00:00',7.22),(4206,8,220,'2016-06-16 00:00:00','Complete','2016-05-18 00:00:00','Check','579 Miller Street',NULL,'Hà Tĩnh','Vietnam','Angela Walker',NULL,NULL,'2017-01-03 00:00:00',1.04),(4207,55,212,'2016-07-04 00:00:00','New','2016-03-18 00:00:00','Check','953 Manufacturers Pass',NULL,'Lysekil','Sweden','Karen Hansen','453 35','Västra Götaland','2016-11-09 00:00:00',8.81),(4208,96,217,'2016-10-26 00:00:00','New','2016-09-15 00:00:00','Card','1 Browning Alley',NULL,'Huayang','China','Patricia West',NULL,NULL,'2016-07-11 00:00:00',7.54),(4209,71,203,'2016-08-04 00:00:00','Shipped','2016-03-31 00:00:00','Check','30438 Mariners Cove Way',NULL,'Phu Khiao','Thailand','Phillip Gardner','36110',NULL,'2017-01-01 00:00:00',3.03),(4210,30,207,'2017-03-08 00:00:00','On Hold','2016-07-14 00:00:00','Check','45981 Hovde Trail',NULL,'Suncheon','Finland','Fred Howard',NULL,NULL,'2016-07-21 00:00:00',1.13),(4211,57,217,'2016-05-28 00:00:00','New','2016-07-26 00:00:00','Check','24863 Messerschmidt Road',NULL,'Ningzhong','China','George Wagner',NULL,NULL,'2017-03-11 00:00:00',6.50),(4212,19,213,'2016-11-28 00:00:00','On Hold','2016-04-02 00:00:00','Check','85 Kropf Circle',NULL,'Ouro Branco','Brazil','Clarence Russell','59347-000',NULL,'2016-06-09 00:00:00',6.88),(4213,51,217,'2016-06-25 00:00:00','Complete','2016-10-12 00:00:00','Cash','1708 Corscot Pass',NULL,'Şafāshahr','Iran','Jane Johnston',NULL,NULL,'2016-05-25 00:00:00',9.16),(4214,88,203,'2017-02-19 00:00:00','Shipped','2016-11-19 00:00:00','Cash','100 Hollow Ridge Way',NULL,'Satita','India','John Adams',NULL,NULL,'2016-03-25 00:00:00',3.01),(4215,12,202,'2017-01-26 00:00:00','Shipped','2016-06-10 00:00:00','Check','12 Esch Park',NULL,'Krasnokamensk','Russia','Diana Graham','662955',NULL,'2016-10-07 00:00:00',9.29),(4216,66,211,'2016-07-19 00:00:00','Shipped','2016-09-22 00:00:00','Card','448 Hanover Trail',NULL,'Phitsanulok','Thailand','John Henry','65000',NULL,'2016-11-30 00:00:00',7.23),(4217,98,218,'2016-11-20 00:00:00','New','2016-12-18 00:00:00','Card','92136 Arkansas Avenue',NULL,'Balong Wetan','Japan','Donna Bradley',NULL,NULL,'2016-11-12 00:00:00',7.79),(4218,5,206,'2016-05-04 00:00:00','On Hold','2016-03-20 00:00:00','Card','2911 Laurel Point',NULL,'Patapan','Japan','Kevin Harper',NULL,NULL,'2016-08-19 00:00:00',1.52),(4219,76,205,'2016-11-15 00:00:00','Shipped','2017-03-14 00:00:00','Cash','9603 Northridge Junction',NULL,'Mwembe','India','Margaret Hanson',NULL,NULL,'2016-12-12 00:00:00',4.76),(4220,62,206,'2016-12-30 00:00:00','Complete','2017-02-23 00:00:00','Cash','84 Lake View Plaza',NULL,'Zheleznovodsk','Russia','Henry Bradley','357408',NULL,'2016-10-23 00:00:00',8.08),(4221,91,218,'2016-08-07 00:00:00','Complete','2017-01-10 00:00:00','Card','2484 Hoepker Hill',NULL,'Huangcun','China','Jane Fowler',NULL,NULL,'2016-08-31 00:00:00',9.34),(4222,19,207,'2016-05-22 00:00:00','Shipped','2016-04-25 00:00:00','Card','5851 Carey Crossing',NULL,'Pochuta','Japan','Kimberly Peterson','04008',NULL,'2016-06-25 00:00:00',9.16),(4223,69,203,'2017-02-13 00:00:00','On Hold','2017-01-01 00:00:00','Check','9 Hudson Way',NULL,'Chashan','China','Nicholas Simpson',NULL,NULL,'2016-09-18 00:00:00',5.37),(4224,71,214,'2017-02-28 00:00:00','Shipped','2016-10-06 00:00:00','Card','78 Grayhawk Place',NULL,'Luntas','Indonesia','Carol Rodriguez',NULL,NULL,'2016-06-18 00:00:00',1.76),(4225,34,207,'2017-03-06 00:00:00','New','2016-12-28 00:00:00','Card','65 Merrick Lane',NULL,'Křižanov','Czech Republic','Jessica Mason','789 01',NULL,'2016-07-20 00:00:00',9.75),(4226,74,209,'2016-06-04 00:00:00','Shipped','2016-05-19 00:00:00','Check','05441 Wayridge Pass',NULL,'Rennes','France','Jeffrey Sims','35047 CEDEX 9','Bretagne','2017-01-15 00:00:00',9.09),(4227,74,205,'2016-09-09 00:00:00','New','2017-01-25 00:00:00','Check','733 Logan Circle',NULL,'Dzhankoy','Ukraine','Arthur Simmons',NULL,NULL,'2017-01-06 00:00:00',2.51),(4228,52,207,'2017-01-30 00:00:00','On Hold','2016-06-24 00:00:00','Cash','3561 6th Trail',NULL,'Narganá','Denmark','Kevin Williams',NULL,NULL,'2017-01-08 00:00:00',7.32),(4229,76,209,'2016-05-05 00:00:00','Shipped','2016-05-06 00:00:00','Check','0314 Ryan Parkway',NULL,'San Jose','Mexico','Joe Stewart','69570','Oaxaca','2016-07-11 00:00:00',9.28),(4230,2,214,'2016-09-19 00:00:00','Shipped','2016-07-19 00:00:00','Check','80695 Stone Corner Road',NULL,'Busdi','Philippines','Walter Barnes','6210',NULL,'2016-09-08 00:00:00',5.97),(4231,55,211,'2016-08-27 00:00:00','Shipped','2016-06-14 00:00:00','Check','91 Becker Drive',NULL,'Gezan','China','Sean Holmes',NULL,NULL,'2016-10-04 00:00:00',3.81),(4232,14,209,'2016-04-01 00:00:00','Shipped','2017-01-22 00:00:00','Cash','45373 Buhler Park',NULL,'Ust’-Kut','Russia','Sandra Perez','162176',NULL,'2017-03-06 00:00:00',4.25),(4233,96,205,'2016-09-27 00:00:00','Complete','2016-12-14 00:00:00','Card','73457 Buhler Court',NULL,'Sima','Canada','Sara Kelly',NULL,NULL,'2016-07-03 00:00:00',7.20),(4234,74,217,'2016-11-22 00:00:00','New','2016-12-25 00:00:00','Cash','02 Westport Trail',NULL,'Tchaourou','India','Edward Reid',NULL,NULL,'2017-01-18 00:00:00',3.50),(4235,69,206,'2016-03-17 00:00:00','On Hold','2016-09-02 00:00:00','Check','83578 Ohio Avenue',NULL,'Stockholm','Sweden','Betty Cook','101 22','Stockholm','2016-10-29 00:00:00',6.17),(4236,97,217,'2017-02-06 00:00:00','Complete','2016-07-16 00:00:00','Check','49 Jenna Circle',NULL,'Yanshan','China','Diana Ellis',NULL,NULL,'2016-07-01 00:00:00',6.06),(4237,17,216,'2016-11-30 00:00:00','Complete','2016-11-01 00:00:00','Check','8581 Farragut Junction',NULL,'Yosowilangun','Indonesia','Donald Miller',NULL,NULL,'2016-10-02 00:00:00',8.90),(4238,21,203,'2017-02-09 00:00:00','Shipped','2016-06-07 00:00:00','Check','9242 Badeau Street',NULL,'Caiyuan','China','Eric Coleman',NULL,NULL,'2016-12-14 00:00:00',4.10),(4239,23,213,'2016-09-15 00:00:00','New','2016-10-25 00:00:00','Check','454 Gale Hill',NULL,'Susoh','Indonesia','Heather Vasquez',NULL,NULL,'2016-11-04 00:00:00',1.59),(4240,2,208,'2016-05-28 00:00:00','Complete','2016-12-15 00:00:00','Cash','30 Bunting Center',NULL,'Efeng','China','Martin Sims',NULL,NULL,'2016-05-21 00:00:00',1.92),(4241,85,202,'2017-02-05 00:00:00','On Hold','2016-12-20 00:00:00','Card','637 Hermina Court',NULL,'San Francisco','Mexico','Catherine Washington','46175','Jalisco','2016-08-13 00:00:00',6.49),(4242,17,204,'2016-10-04 00:00:00','Complete','2016-12-03 00:00:00','Card','2 Grasskamp Point',NULL,'Famaillá','Argentina','Gary Kennedy','4132',NULL,'2016-05-13 00:00:00',9.78),(4243,86,205,'2016-04-15 00:00:00','Shipped','2017-02-16 00:00:00','Card','43642 Utah Point',NULL,'Santa Rosa','Mexico','Pamela Parker','67803','Nuevo Leon','2016-05-25 00:00:00',1.78),(4244,3,208,'2016-08-02 00:00:00','New','2016-04-13 00:00:00','Cash','947 Jenna Place',NULL,'Kinshasa','Canada','Michelle Russell',NULL,NULL,'2017-03-13 00:00:00',8.43),(4245,32,210,'2016-06-16 00:00:00','On Hold','2016-03-17 00:00:00','Cash','1 Pepper Wood Road',NULL,'Kallinge','Sweden','Lois Jenkins','372 53','Blekinge','2016-07-14 00:00:00',4.77),(4246,39,203,'2017-02-04 00:00:00','Complete','2016-10-04 00:00:00','Cash','20490 Eagle Crest Circle',NULL,'Baraba','Russia','Kelly Ramirez','623509',NULL,'2016-08-08 00:00:00',8.65),(4247,24,202,'2016-05-05 00:00:00','New','2016-07-24 00:00:00','Cash','9033 Elmside Plaza',NULL,'N’dalatando','Netherlands','Harold Gray',NULL,NULL,'2016-11-26 00:00:00',2.78),(4248,16,210,'2017-01-27 00:00:00','On Hold','2016-05-12 00:00:00','Check','4 Sage Road',NULL,'Niederanven','United Kingdom','Dennis Fisher','L-6948',NULL,'2017-03-14 00:00:00',1.26),(4249,20,203,'2016-07-21 00:00:00','Complete','2016-05-28 00:00:00','Card','99743 Algoma Hill',NULL,'Mūdīyah','South Africa','Antonio Wells',NULL,NULL,'2016-12-08 00:00:00',4.36),(4250,88,217,'2016-05-31 00:00:00','New','2016-04-13 00:00:00','Check','3258 Holy Cross Way',NULL,'Yangdun','China','William Gonzales',NULL,NULL,'2016-10-17 00:00:00',7.06),(4251,1,211,'2017-03-04 00:00:00','On Hold','2016-09-22 00:00:00','Card','5 Logan Terrace',NULL,'Tanahmerah','Indonesia','Ronald Ward',NULL,NULL,'2016-10-27 00:00:00',4.38),(4252,87,217,'2016-12-29 00:00:00','On Hold','2016-08-01 00:00:00','Cash','10 Grayhawk Hill',NULL,'Boromlya','Ukraine','Gloria Boyd',NULL,NULL,'2016-09-18 00:00:00',4.84),(4253,99,212,'2017-02-02 00:00:00','On Hold','2016-12-06 00:00:00','Cash','3 Donald Trail',NULL,'Lakshmīpur','Canada','Raymond Scott','1553',NULL,'2016-04-28 00:00:00',8.37),(4254,7,201,'2016-11-28 00:00:00','Shipped','2016-06-14 00:00:00','Card','95 Doe Crossing Avenue',NULL,'Purwosari','Indonesia','Arthur Hamilton',NULL,NULL,'2016-04-11 00:00:00',6.84),(4255,100,220,'2016-09-30 00:00:00','Shipped','2017-01-06 00:00:00','Check','5690 Meadow Valley Alley',NULL,'Svedala','Sweden','Jean Wagner','233 94','Skåne','2016-10-08 00:00:00',8.57),(4256,78,218,'2016-04-28 00:00:00','New','2016-05-18 00:00:00','Check','6067 Twin Pines Hill',NULL,'Capinzal','Brazil','Kimberly Rose','89665-000',NULL,'2016-04-03 00:00:00',6.07),(4257,44,213,'2016-11-04 00:00:00','Shipped','2016-10-20 00:00:00','Card','170 Chive Court',NULL,'Lang','China','Doris Foster',NULL,NULL,'2016-03-28 00:00:00',1.72),(4258,46,208,'2017-01-11 00:00:00','On Hold','2016-10-16 00:00:00','Card','3 Prairie Rose Alley',NULL,'Tashang','China','Teresa Reynolds',NULL,NULL,'2016-09-25 00:00:00',4.84),(4259,89,215,'2016-07-07 00:00:00','New','2016-08-21 00:00:00','Cash','0746 Heffernan Center',NULL,'Henggang','China','Christine Turner',NULL,NULL,'2016-12-29 00:00:00',6.81),(4260,23,210,'2016-10-26 00:00:00','Complete','2017-01-10 00:00:00','Cash','903 Anniversary Trail',NULL,'Elaiochóri','Greece','Jimmy Jordan',NULL,NULL,'2017-02-10 00:00:00',9.66),(4261,20,207,'2016-11-07 00:00:00','Complete','2016-11-20 00:00:00','Cash','3 Pennsylvania Park',NULL,'Kansas City','United States','Andrew Baker','64130','Missouri','2017-02-17 00:00:00',5.46),(4262,32,203,'2017-02-21 00:00:00','On Hold','2017-01-09 00:00:00','Card','18520 Maryland Drive',NULL,'Santa Catalina','Philippines','Diana Dixon','2701',NULL,'2016-11-17 00:00:00',4.66),(4263,10,210,'2017-02-28 00:00:00','New','2016-11-30 00:00:00','Card','5608 Moose Court',NULL,'Torres Vedras','Portugal','Karen Miller','2560-234','Lisboa','2017-02-26 00:00:00',5.71),(4264,39,214,'2017-01-09 00:00:00','Shipped','2016-05-07 00:00:00','Check','9659 Vera Point',NULL,'Santiaoshi','China','Angela Austin',NULL,NULL,'2016-10-24 00:00:00',6.59),(4265,3,203,'2016-11-11 00:00:00','New','2017-01-01 00:00:00','Cash','7626 Hoepker Junction',NULL,'Wulan Hada','China','Steve Snyder',NULL,NULL,'2016-11-22 00:00:00',5.67),(4266,94,218,'2016-04-06 00:00:00','Shipped','2016-05-12 00:00:00','Card','24 Chinook Point',NULL,'Bhairāhawā','United Kingdom','Kevin Daniels',NULL,NULL,'2016-10-02 00:00:00',8.21),(4267,58,203,'2016-11-14 00:00:00','On Hold','2017-02-02 00:00:00','Card','60375 Corry Street',NULL,'Solidaridad','Mexico','Patricia Welch','94330','Veracruz Llave','2016-03-28 00:00:00',2.77),(4268,2,218,'2016-07-02 00:00:00','On Hold','2017-01-30 00:00:00','Check','965 Calypso Circle',NULL,'Dera Bugti','Iran','Wanda Reynolds','80100',NULL,'2016-08-14 00:00:00',8.86),(4269,47,216,'2017-03-11 00:00:00','Shipped','2016-06-01 00:00:00','Cash','14332 Texas Junction',NULL,'Mzimba','India','Harold Williamson',NULL,NULL,'2016-07-16 00:00:00',2.47),(4270,62,213,'2016-11-09 00:00:00','Shipped','2017-02-17 00:00:00','Card','17 Eagan Crossing',NULL,'Xiayang','China','Juan Fox',NULL,NULL,'2017-02-07 00:00:00',7.63),(4271,70,211,'2016-04-16 00:00:00','Complete','2016-09-10 00:00:00','Card','0 Harper Circle',NULL,'Blagoveshchenka','Russia','Ryan Long','658670',NULL,'2016-04-26 00:00:00',3.20),(4272,29,206,'2016-03-25 00:00:00','New','2016-05-01 00:00:00','Cash','07 Westend Place',NULL,'Laixi','China','Frank Cole',NULL,NULL,'2016-10-07 00:00:00',1.93),(4273,25,209,'2016-05-06 00:00:00','Complete','2016-10-29 00:00:00','Card','74278 Grim Pass',NULL,'Åkersberga','Sweden','Tammy Wilson','184 70','Stockholm','2016-04-13 00:00:00',2.83),(4274,82,206,'2017-02-07 00:00:00','Complete','2016-10-14 00:00:00','Check','40 Stephen Street',NULL,'Tlogoagung','Indonesia','Joan Gonzales',NULL,NULL,'2017-03-06 00:00:00',3.44),(4275,91,203,'2016-10-10 00:00:00','On Hold','2016-04-23 00:00:00','Card','38 Toban Plaza',NULL,'Privas','France','Jeffrey Hughes','07004 CEDEX','Rhône-Alpes','2016-11-04 00:00:00',8.33),(4276,89,210,'2016-05-14 00:00:00','Complete','2016-06-07 00:00:00','Cash','08 Lake View Hill',NULL,'Sandgerði','India','Rachel Martin','245',NULL,'2016-09-03 00:00:00',2.07),(4277,97,208,'2016-04-06 00:00:00','Shipped','2016-05-11 00:00:00','Check','1 Dexter Street',NULL,'Xintaimen','China','Laura Harper',NULL,NULL,'2016-07-02 00:00:00',8.08),(4278,3,215,'2017-03-04 00:00:00','Complete','2016-04-09 00:00:00','Check','5975 Debra Park',NULL,'Canchaque','Peru','Annie Rivera',NULL,NULL,'2017-03-08 00:00:00',5.65),(4279,6,201,'2017-03-01 00:00:00','New','2016-05-23 00:00:00','Check','2 Monument Avenue',NULL,'Danxi','China','Pamela Graham',NULL,NULL,'2016-08-06 00:00:00',2.05),(4280,35,202,'2017-02-04 00:00:00','New','2016-12-28 00:00:00','Card','00001 Fairfield Center',NULL,'Mashtūl as Sūq','Germany','Joseph Jenkins',NULL,NULL,'2016-06-09 00:00:00',5.32),(4281,76,203,'2016-05-19 00:00:00','Shipped','2016-10-20 00:00:00','Card','8308 Onsgard Lane',NULL,'Limoncito','India','Eugene Garcia',NULL,NULL,'2016-07-29 00:00:00',4.07),(4282,27,204,'2016-07-20 00:00:00','Complete','2016-07-21 00:00:00','Card','8 Thierer Center',NULL,'Saint-Étienne','France','Kevin Anderson','42963 CEDEX 9','Rhône-Alpes','2016-09-26 00:00:00',4.88),(4283,50,214,'2016-11-27 00:00:00','Complete','2016-04-20 00:00:00','Check','51949 Forster Parkway',NULL,'Laval','France','Robin Parker','53009 CEDEX','Pays de la Loire','2016-06-14 00:00:00',1.04),(4284,74,214,'2016-11-29 00:00:00','Complete','2016-10-08 00:00:00','Card','2 Hauk Hill',NULL,'Östersund','Sweden','Kelly Palmer','831 17','Jämtland','2016-12-08 00:00:00',4.26),(4285,76,214,'2016-10-22 00:00:00','New','2016-09-27 00:00:00','Check','5441 Petterle Way',NULL,'El Tambo','Peru','Diane Freeman',NULL,NULL,'2016-05-05 00:00:00',7.17),(4286,96,209,'2016-11-08 00:00:00','On Hold','2016-05-19 00:00:00','Cash','423 Talisman Point',NULL,'Kurume','Japan','Kathleen Adams','963-8846',NULL,'2016-08-26 00:00:00',1.99),(4287,76,204,'2016-10-18 00:00:00','On Hold','2016-10-03 00:00:00','Cash','818 Atwood Lane',NULL,'Mosteiro','Portugal','Teresa Mendoza','4980-125','Viana do Castelo','2017-01-15 00:00:00',3.29),(4288,45,210,'2016-10-15 00:00:00','On Hold','2016-10-13 00:00:00','Card','4 Rutledge Alley',NULL,'Saparua','Indonesia','Irene Anderson',NULL,NULL,'2016-12-14 00:00:00',4.35),(4289,61,209,'2017-02-12 00:00:00','New','2016-07-20 00:00:00','Card','351 Johnson Circle',NULL,'Quiling','Philippines','Terry Bennett','2902',NULL,'2016-07-15 00:00:00',6.77),(4290,1,203,'2017-03-02 00:00:00','New','2016-06-10 00:00:00','Cash','73609 Waywood Center',NULL,'Zheleznodorozhnyy','Russia','Ronald Mccoy','238411',NULL,'2016-08-25 00:00:00',1.05),(4291,73,211,'2016-09-13 00:00:00','New','2016-09-08 00:00:00','Cash','820 Lawn Crossing',NULL,'Japeri','Brazil','Andrew Matthews','26400-000',NULL,'2016-04-17 00:00:00',1.22),(4292,15,215,'2016-12-26 00:00:00','Shipped','2016-08-14 00:00:00','Check','88384 Ohio Park',NULL,'Dayr al Ghuşūn','India','Melissa Chapman',NULL,NULL,'2016-10-04 00:00:00',9.89),(4293,18,210,'2016-11-23 00:00:00','On Hold','2016-05-10 00:00:00','Check','6 Eliot Lane',NULL,'Changshu City','China','Russell Griffin',NULL,NULL,'2016-12-12 00:00:00',9.37),(4294,95,206,'2016-06-24 00:00:00','Shipped','2016-06-15 00:00:00','Cash','04078 Hudson Drive',NULL,'Luangwa','India','Jeffrey Gray',NULL,NULL,'2017-01-21 00:00:00',2.58),(4295,85,215,'2016-10-23 00:00:00','New','2017-01-01 00:00:00','Cash','724 Logan Drive',NULL,'Gent','Denmark','Lori Frazier','9052','Vlaanderen','2017-01-29 00:00:00',8.59),(4296,83,217,'2016-04-08 00:00:00','Complete','2016-09-01 00:00:00','Card','90 Merchant Avenue',NULL,'Irasan','Philippines','Joan Ortiz','3120',NULL,'2017-02-07 00:00:00',4.64),(4297,29,211,'2016-07-13 00:00:00','On Hold','2016-07-12 00:00:00','Cash','680 Artisan Pass',NULL,'Borås','Sweden','John Stanley','504 75','Västra Götaland','2017-02-06 00:00:00',1.77),(4298,65,208,'2016-12-28 00:00:00','On Hold','2017-01-28 00:00:00','Check','397 Kim Place',NULL,'Zhongxin','China','Dorothy Bell',NULL,NULL,'2016-04-19 00:00:00',1.20),(4299,43,201,'2017-01-12 00:00:00','Shipped','2016-08-13 00:00:00','Card','181 Prentice Terrace',NULL,'Severnyy','Russia','Doris Ramirez','141707',NULL,'2016-08-07 00:00:00',2.65),(4300,27,207,'2016-11-10 00:00:00','On Hold','2016-04-30 00:00:00','Check','067 Talisman Trail',NULL,'Guangang','China','Elizabeth Harrison',NULL,NULL,'2016-11-01 00:00:00',4.78),(4301,64,206,'2016-08-14 00:00:00','New','2016-10-29 00:00:00','Card','55095 Sloan Alley',NULL,'Longhua','China','Judith Howard',NULL,NULL,'2017-01-13 00:00:00',1.93),(4302,33,213,'2017-01-19 00:00:00','Shipped','2016-11-15 00:00:00','Card','87375 Londonderry Parkway',NULL,'Fufang','China','Julia Simpson',NULL,NULL,'2016-05-23 00:00:00',9.23),(4303,49,220,'2016-08-01 00:00:00','Complete','2017-02-01 00:00:00','Check','60 Ridgeview Trail',NULL,'Infantas','Portugal','Elizabeth Bell','4810-578','Braga','2016-04-23 00:00:00',3.22),(4304,56,217,'2016-09-07 00:00:00','On Hold','2016-04-04 00:00:00','Card','231 Graceland Terrace',NULL,'Pindamonhangaba','Brazil','Ernest Andrews','12400-000',NULL,'2016-08-13 00:00:00',2.77),(4305,44,219,'2016-06-11 00:00:00','Shipped','2016-04-14 00:00:00','Cash','76434 Havey Court',NULL,'Khvalovo','Russia','Jeffrey Lopez','187435',NULL,'2016-03-27 00:00:00',8.84),(4306,16,212,'2016-05-29 00:00:00','Shipped','2017-01-09 00:00:00','Card','15 Armistice Alley',NULL,'Odienné','Canada','Ralph Weaver',NULL,NULL,'2016-12-31 00:00:00',7.10),(4307,16,210,'2016-10-19 00:00:00','Complete','2016-08-24 00:00:00','Card','1928 Aberg Park',NULL,'Dzwola','Poland','Mary Stevens','23-304',NULL,'2017-01-10 00:00:00',4.04),(4308,50,220,'2016-09-23 00:00:00','Shipped','2016-10-13 00:00:00','Card','9 Ryan Circle',NULL,'Babakanloa','Indonesia','Douglas Welch',NULL,NULL,'2016-09-16 00:00:00',1.11),(4309,99,217,'2016-10-17 00:00:00','Complete','2016-06-02 00:00:00','Cash','0402 Burning Wood Alley',NULL,'Bucay','Philippines','Raymond Cruz','2805',NULL,'2017-01-01 00:00:00',9.27),(4310,65,219,'2016-04-14 00:00:00','New','2016-12-04 00:00:00','Check','43 Truax Terrace',NULL,'Halton','United Kingdom','Sara Frazier','LS9','England','2016-05-14 00:00:00',5.56),(4311,17,220,'2017-02-03 00:00:00','New','2016-12-27 00:00:00','Cash','414 Gina Point',NULL,'Fulong','China','Sarah Lane',NULL,NULL,'2016-07-09 00:00:00',3.35),(4312,77,205,'2017-02-27 00:00:00','Complete','2017-01-28 00:00:00','Cash','16664 Towne Point',NULL,'Yangchun','China','Michelle Bradley',NULL,NULL,'2016-04-10 00:00:00',8.64),(4313,68,210,'2016-08-29 00:00:00','Complete','2016-11-08 00:00:00','Cash','7802 Hovde Plaza',NULL,'Redakodi','Indonesia','Marie Porter',NULL,NULL,'2016-10-27 00:00:00',1.97),(4314,41,207,'2016-08-08 00:00:00','New','2017-01-17 00:00:00','Cash','438 Mendota Way',NULL,'Bensonville','United Kingdom','Melissa Moore',NULL,NULL,'2016-08-31 00:00:00',7.97),(4315,96,212,'2016-08-08 00:00:00','New','2016-03-29 00:00:00','Cash','76 Manley Park',NULL,'Xagmakajor','China','Katherine Bell',NULL,NULL,'2016-07-27 00:00:00',7.49),(4316,67,209,'2016-09-26 00:00:00','Complete','2016-04-28 00:00:00','Card','86 Nelson Point',NULL,'Boavista','Portugal','Katherine Elliott','4520-104','Aveiro','2017-02-03 00:00:00',1.92),(4317,40,219,'2016-10-09 00:00:00','Shipped','2017-02-21 00:00:00','Card','75962 Basil Drive',NULL,'Pécs','Denmark','Dorothy Rose','7610','Baranya','2016-12-21 00:00:00',3.23),(4318,68,209,'2017-01-15 00:00:00','Complete','2017-01-20 00:00:00','Check','5985 Crest Line Road',NULL,'Lingqiao','China','Larry Hicks',NULL,NULL,'2017-01-03 00:00:00',2.77),(4319,55,214,'2016-07-14 00:00:00','Shipped','2016-04-08 00:00:00','Check','6 Lawn Court',NULL,'Simajia','China','Paula Rodriguez',NULL,NULL,'2017-03-05 00:00:00',6.33),(4320,83,203,'2016-12-26 00:00:00','Complete','2016-09-14 00:00:00','Check','43297 Rigney Avenue',NULL,'Salto','India','Sharon Richards',NULL,NULL,'2016-10-07 00:00:00',7.32),(4321,29,215,'2016-12-27 00:00:00','On Hold','2016-04-02 00:00:00','Check','22 Thierer Center',NULL,'Alberton','Canada','Craig Day','P7K','Prince Edward Island','2016-07-21 00:00:00',5.32),(4322,80,207,'2016-12-06 00:00:00','New','2016-10-03 00:00:00','Check','4149 Bartelt Point',NULL,'Carbonear','Canada','Donna Butler','A1Y','Newfoundland and Labrador','2016-05-21 00:00:00',3.10),(4323,31,216,'2016-06-27 00:00:00','Complete','2016-05-22 00:00:00','Cash','97225 Bartelt Avenue',NULL,'Tinalmud','Philippines','Carolyn Ferguson','1531',NULL,'2017-03-13 00:00:00',7.11),(4324,78,212,'2016-05-19 00:00:00','Shipped','2016-09-09 00:00:00','Check','22977 Westridge Terrace',NULL,'Toulouse','France','Peter Romero','31029 CEDEX 4','Midi-Pyrénées','2016-11-14 00:00:00',2.97),(4325,73,213,'2017-02-18 00:00:00','Shipped','2016-12-12 00:00:00','Cash','40351 Rusk Place',NULL,'Vila Nova de Gaia','Portugal','Jose Greene','4400-005','Porto','2016-09-22 00:00:00',5.76),(4326,62,208,'2017-02-14 00:00:00','Shipped','2016-10-08 00:00:00','Check','8403 Melody Center',NULL,'Būsh','Germany','Betty Anderson',NULL,NULL,'2016-11-13 00:00:00',9.56),(4327,56,220,'2016-09-06 00:00:00','On Hold','2016-07-11 00:00:00','Card','47 Dapin Center',NULL,'Pasirmanggu','Indonesia','Amanda Frazier',NULL,NULL,'2016-08-17 00:00:00',2.25),(4328,24,201,'2016-10-29 00:00:00','Complete','2016-07-06 00:00:00','Card','6953 Stoughton Avenue',NULL,'Bokhan','Russia','Douglas Foster','669310',NULL,'2017-01-25 00:00:00',1.26),(4329,33,206,'2017-03-09 00:00:00','Complete','2016-08-09 00:00:00','Check','76 Little Fleur Park',NULL,'Shazhenxi','China','Louis Brown',NULL,NULL,'2017-03-12 00:00:00',3.40),(4330,61,205,'2016-04-14 00:00:00','Shipped','2016-10-18 00:00:00','Card','82 Springview Road',NULL,'Kimito','Finland','Elizabeth Butler','11710',NULL,'2016-09-26 00:00:00',1.92),(4331,39,220,'2016-06-10 00:00:00','Shipped','2016-12-15 00:00:00','Check','19 Talmadge Hill',NULL,'Almelo','Netherlands','Albert Flores','7604','Provincie Overijssel','2016-04-07 00:00:00',4.23),(4332,47,217,'2016-10-25 00:00:00','On Hold','2016-06-06 00:00:00','Check','0 Trailsway Crossing',NULL,'Iwata','Japan','Kimberly Fowler','925-0145',NULL,'2016-09-28 00:00:00',8.14),(4333,12,209,'2016-12-25 00:00:00','Shipped','2016-09-05 00:00:00','Cash','5 Everett Drive',NULL,'Bergen','Greece','Joe Powell','5895','Hordaland','2016-10-31 00:00:00',8.02),(4334,1,219,'2016-08-12 00:00:00','Complete','2017-01-06 00:00:00','Cash','78693 Cordelia Point',NULL,'San Benito','Philippines','Virginia Collins','8423',NULL,'2017-02-18 00:00:00',8.40),(4335,59,220,'2017-02-26 00:00:00','Complete','2016-06-09 00:00:00','Card','5 Golf View Street',NULL,'Gjinkar','Canada','Mary Howard',NULL,NULL,'2016-11-05 00:00:00',3.54),(4336,19,220,'2017-02-09 00:00:00','On Hold','2016-12-21 00:00:00','Card','57 Old Shore Crossing',NULL,'Bureng','United Kingdom','Ronald Stevens',NULL,NULL,'2017-01-26 00:00:00',8.21),(4337,59,204,'2016-05-14 00:00:00','Complete','2016-07-22 00:00:00','Card','44078 Warner Drive',NULL,'Amurzet','Russia','James Evans','679230',NULL,'2016-07-08 00:00:00',9.35),(4338,96,213,'2016-09-02 00:00:00','Complete','2016-04-10 00:00:00','Check','361 Stone Corner Pass',NULL,'Sindangsari','Indonesia','Willie Snyder',NULL,NULL,'2016-11-10 00:00:00',9.32),(4339,30,220,'2017-03-04 00:00:00','Shipped','2017-03-07 00:00:00','Cash','2922 Grasskamp Alley',NULL,'Cotonou','India','Julie Black',NULL,NULL,'2016-08-16 00:00:00',9.14),(4340,17,206,'2016-11-18 00:00:00','Shipped','2016-10-14 00:00:00','Check','4 Shopko Hill',NULL,'Binagadi','India','Roy Olson',NULL,NULL,'2016-11-24 00:00:00',5.22),(4341,28,202,'2016-11-18 00:00:00','On Hold','2016-12-16 00:00:00','Check','90 Crownhardt Center',NULL,'Bayshint','Japan','Evelyn Lawrence',NULL,NULL,'2017-02-18 00:00:00',7.25),(4342,37,209,'2016-10-30 00:00:00','On Hold','2016-11-05 00:00:00','Cash','69 Golf View Avenue',NULL,'Hezuoqiao','China','John Rodriguez',NULL,NULL,'2016-06-07 00:00:00',8.23),(4343,51,203,'2016-04-09 00:00:00','New','2016-03-28 00:00:00','Cash','0027 Dunning Pass',NULL,'Kuteynykove','Ukraine','Ruth Kim',NULL,NULL,'2016-12-17 00:00:00',2.46),(4344,34,217,'2016-12-16 00:00:00','New','2016-03-27 00:00:00','Cash','36 Little Fleur Circle',NULL,'Xiekou','China','Shawn Patterson',NULL,NULL,'2016-10-11 00:00:00',6.43),(4345,59,213,'2016-10-30 00:00:00','Complete','2016-12-02 00:00:00','Cash','47088 Crowley Junction',NULL,'Promna','Poland','Nancy Jones','26-803',NULL,'2016-07-10 00:00:00',5.67),(4346,70,217,'2016-12-27 00:00:00','New','2016-09-19 00:00:00','Cash','1 Summer Ridge Circle',NULL,'Bunobogu','Indonesia','Deborah Bishop',NULL,NULL,'2016-10-06 00:00:00',7.57),(4347,30,203,'2016-05-26 00:00:00','Shipped','2016-12-30 00:00:00','Cash','4393 Summer Ridge Crossing',NULL,'Hošťka','Czech Republic','Steve Hunt','348 06',NULL,'2016-08-14 00:00:00',5.78),(4348,9,203,'2016-04-14 00:00:00','New','2016-09-23 00:00:00','Cash','23 Nova Junction',NULL,'Sępólno Krajeńskie','Poland','Betty Black','89-400',NULL,'2016-10-19 00:00:00',8.55),(4349,95,211,'2017-01-28 00:00:00','Shipped','2016-12-18 00:00:00','Cash','96 Grasskamp Point',NULL,'Psará','Greece','Gregory Wood',NULL,NULL,'2016-04-13 00:00:00',8.47),(4350,97,218,'2016-03-22 00:00:00','On Hold','2016-05-15 00:00:00','Check','5 Towne Crossing',NULL,'Kista','Sweden','Martin Martinez','164 45','Stockholm','2016-04-13 00:00:00',8.07),(4351,80,215,'2016-06-20 00:00:00','Shipped','2016-09-18 00:00:00','Cash','82 Eggendart Junction',NULL,'Omuthiya','India','Margaret Cook',NULL,NULL,'2016-11-05 00:00:00',9.71),(4352,15,211,'2016-09-02 00:00:00','New','2016-05-12 00:00:00','Cash','6734 Continental Drive',NULL,'Tadabliro','Indonesia','Justin Myers',NULL,NULL,'2017-01-23 00:00:00',2.23),(4353,77,216,'2016-10-09 00:00:00','New','2016-06-04 00:00:00','Cash','2743 Harbort Center',NULL,'Pasar','Indonesia','Jane Ruiz',NULL,NULL,'2016-07-31 00:00:00',4.88),(4354,53,202,'2017-03-15 00:00:00','New','2016-05-16 00:00:00','Cash','6 Bartillon Park',NULL,'Aimorés','Brazil','Philip Bradley','35200-000',NULL,'2016-06-21 00:00:00',5.01),(4355,14,220,'2017-01-03 00:00:00','New','2016-10-18 00:00:00','Check','1 Schurz Crossing',NULL,'Tuzhai','China','Phillip White',NULL,NULL,'2016-05-07 00:00:00',7.06),(4356,85,208,'2016-12-26 00:00:00','New','2016-12-14 00:00:00','Cash','92 Morrow Road',NULL,'Nijmegen','Netherlands','George Ryan','6519','Provincie Gelderland','2016-07-28 00:00:00',5.76),(4357,73,208,'2016-04-06 00:00:00','Shipped','2016-12-19 00:00:00','Cash','134 Milwaukee Lane',NULL,'Tiechang','China','Evelyn Rose',NULL,NULL,'2016-04-01 00:00:00',5.37),(4358,77,202,'2016-04-14 00:00:00','On Hold','2016-06-07 00:00:00','Cash','09309 Dottie Park',NULL,'Ljubešćica','Canada','Janet Robertson','42222',NULL,'2016-10-21 00:00:00',5.27),(4359,35,202,'2016-05-08 00:00:00','New','2016-07-27 00:00:00','Card','95535 Lotheville Center',NULL,'Kvasice','Czech Republic','Diana Perry','768 21',NULL,'2017-01-27 00:00:00',7.10),(4360,86,210,'2016-11-23 00:00:00','Shipped','2016-04-05 00:00:00','Check','6737 Melrose Road',NULL,'Catumbela','Netherlands','Todd Elliott',NULL,NULL,'2016-10-12 00:00:00',2.19),(4361,45,209,'2016-04-07 00:00:00','Complete','2016-12-31 00:00:00','Cash','143 Ridge Oak Alley',NULL,'Diriá','United Kingdom','Emily Dean',NULL,NULL,'2016-06-30 00:00:00',1.33),(4362,88,208,'2016-05-08 00:00:00','Shipped','2016-06-21 00:00:00','Card','8113 Graceland Junction',NULL,'Borovoy','Russia','Eric Simpson','309135',NULL,'2016-04-14 00:00:00',3.81),(4363,84,211,'2016-12-31 00:00:00','Complete','2017-03-03 00:00:00','Card','461 Westport Center',NULL,'Inayauan','Philippines','Alan Chapman','3336',NULL,'2016-06-05 00:00:00',8.62),(4364,100,205,'2016-09-10 00:00:00','Shipped','2016-04-22 00:00:00','Check','066 Gerald Avenue',NULL,'Venëv','Russia','Denise Dixon','301320',NULL,'2017-02-19 00:00:00',4.82),(4365,7,211,'2017-03-09 00:00:00','Complete','2016-08-30 00:00:00','Check','03051 Grasskamp Way',NULL,'Póvoa','Portugal','Douglas Nelson','4870-130','Vila Real','2017-03-16 00:00:00',1.67),(4366,24,213,'2016-04-25 00:00:00','Complete','2016-12-20 00:00:00','Check','65 Buhler Circle',NULL,'Bīleh Savār','Iran','Louis Frazier',NULL,NULL,'2016-06-06 00:00:00',9.53),(4367,8,207,'2016-09-24 00:00:00','New','2016-04-08 00:00:00','Cash','487 Birchwood Point',NULL,'T’et’ri Tsqaro','United Kingdom','Theresa Stanley',NULL,NULL,'2016-04-06 00:00:00',5.06),(4368,76,207,'2016-12-21 00:00:00','New','2016-07-25 00:00:00','Check','3917 Miller Pass',NULL,'Andaray','Peru','Sean Chapman',NULL,NULL,'2016-05-03 00:00:00',4.36),(4369,90,215,'2016-03-30 00:00:00','Shipped','2017-01-23 00:00:00','Check','137 1st Hill',NULL,'Independencia','Mexico','Eugene Brooks','89888','Tamaulipas','2017-01-03 00:00:00',9.56),(4370,33,204,'2016-12-17 00:00:00','Shipped','2016-07-09 00:00:00','Cash','24 Hayes Point',NULL,'Dobrzeń Wielki','Poland','Joan Martin','46-081',NULL,'2016-10-22 00:00:00',8.87),(4371,13,204,'2016-12-11 00:00:00','On Hold','2016-08-05 00:00:00','Check','0 Sommers Point',NULL,'Jiamachi','China','Martha Mendoza',NULL,NULL,'2016-05-07 00:00:00',1.53),(4372,90,211,'2016-10-27 00:00:00','Shipped','2016-09-25 00:00:00','Card','64 Bluestem Drive',NULL,'Conde','Portugal','Joan Allen','4815-019','Braga','2017-02-14 00:00:00',2.66),(4373,81,208,'2016-08-20 00:00:00','Shipped','2016-05-03 00:00:00','Cash','15541 Ramsey Alley',NULL,'Gunungkendeng','Indonesia','Tammy Richards',NULL,NULL,'2017-03-16 00:00:00',5.66),(4374,19,216,'2017-01-22 00:00:00','Shipped','2016-10-12 00:00:00','Card','3 Goodland Pass',NULL,'Ḩarīb','South Africa','Andrea Medina',NULL,NULL,'2016-09-10 00:00:00',1.03),(4375,8,213,'2016-09-13 00:00:00','Complete','2017-01-26 00:00:00','Cash','453 Duke Point',NULL,'Rouen','France','Antonio Carpenter','76029 CEDEX','Haute-Normandie','2016-12-21 00:00:00',5.11),(4376,83,207,'2016-11-29 00:00:00','New','2016-11-08 00:00:00','Cash','7 Old Shore Center',NULL,'Licuan','Philippines','Jeffrey Smith','2500',NULL,'2016-04-13 00:00:00',8.55),(4377,13,216,'2016-11-06 00:00:00','Shipped','2017-01-06 00:00:00','Card','57 Troy Court',NULL,'Mojimán','Canada','Mark Perkins',NULL,NULL,'2016-10-08 00:00:00',2.03),(4378,4,219,'2016-08-05 00:00:00','New','2016-12-07 00:00:00','Cash','5 Armistice Street',NULL,'Labège','France','Louis Jordan','31673 CEDEX','Midi-Pyrénées','2017-03-04 00:00:00',3.61),(4379,66,218,'2017-02-26 00:00:00','Complete','2016-04-02 00:00:00','Cash','4 Dovetail Crossing',NULL,'Santa Cruz','India','Fred Johnson',NULL,NULL,'2016-11-18 00:00:00',1.08),(4380,27,201,'2016-09-01 00:00:00','Complete','2016-12-09 00:00:00','Check','8 Canary Plaza',NULL,'Pingtan','China','Rose Harvey',NULL,NULL,'2016-05-08 00:00:00',6.90),(4381,89,209,'2017-02-04 00:00:00','On Hold','2016-05-09 00:00:00','Card','008 Carberry Alley',NULL,'Logung','Indonesia','Christine Thomas',NULL,NULL,'2016-08-30 00:00:00',6.13),(4382,47,204,'2016-08-11 00:00:00','New','2016-06-15 00:00:00','Card','4337 Del Sol Hill',NULL,'Dayeuhluhur','Indonesia','Juan Reed',NULL,NULL,'2016-12-27 00:00:00',7.76),(4383,30,215,'2016-08-07 00:00:00','Complete','2016-12-26 00:00:00','Cash','899 Oneill Pass',NULL,'Alegrete','Brazil','Diane Gray','97540-000',NULL,'2016-07-22 00:00:00',5.62),(4384,88,212,'2016-07-23 00:00:00','Complete','2016-07-11 00:00:00','Card','46092 Kedzie Court',NULL,'Ban Mo','Thailand','Louise Baker','18130',NULL,'2016-05-07 00:00:00',4.00),(4385,62,203,'2017-02-20 00:00:00','Shipped','2016-12-23 00:00:00','Check','77444 Northwestern Pass',NULL,'Francisco I Madero','Mexico','Paul Thompson','26010','Coahuila De Zaragoza','2016-10-01 00:00:00',3.99),(4386,26,218,'2016-09-02 00:00:00','New','2016-04-05 00:00:00','Card','67814 Buena Vista Court',NULL,'Sanjie','China','Anne Kim',NULL,NULL,'2016-06-10 00:00:00',9.61),(4387,20,219,'2017-03-05 00:00:00','Shipped','2017-02-17 00:00:00','Check','33055 Evergreen Crossing',NULL,'Cusco','Peru','Matthew Gutierrez',NULL,NULL,'2016-12-19 00:00:00',6.52),(4388,71,219,'2016-09-06 00:00:00','New','2016-09-20 00:00:00','Cash','9243 Forest Run Parkway',NULL,'Ulanov','Ukraine','Janet Hernandez',NULL,NULL,'2016-05-24 00:00:00',3.04),(4389,2,207,'2016-04-25 00:00:00','On Hold','2017-02-18 00:00:00','Cash','878 Roth Alley',NULL,'Kusak','Russia','Louis Chapman','423430',NULL,'2017-02-16 00:00:00',5.78),(4390,64,218,'2016-09-25 00:00:00','On Hold','2016-12-01 00:00:00','Card','56 Artisan Park',NULL,'Xinjiang','China','Joe Carpenter',NULL,NULL,'2016-09-22 00:00:00',8.20),(4391,64,218,'2016-07-30 00:00:00','Shipped','2016-06-29 00:00:00','Cash','7 Sutherland Road',NULL,'Tatarbunary','Ukraine','Charles Harper',NULL,NULL,'2016-07-23 00:00:00',4.62),(4392,92,206,'2016-05-05 00:00:00','New','2017-02-03 00:00:00','Check','3 Erie Park',NULL,'East End','Canada','Craig Reynolds',NULL,NULL,'2016-07-17 00:00:00',2.03),(4393,45,212,'2016-06-29 00:00:00','Complete','2017-02-27 00:00:00','Card','792 Brown Trail',NULL,'Yangfang','China','Raymond Mcdonald',NULL,NULL,'2016-06-17 00:00:00',4.44),(4394,87,211,'2016-09-28 00:00:00','Complete','2017-01-05 00:00:00','Cash','7 Eagan Circle',NULL,'Baratleke','Indonesia','Sandra Medina',NULL,NULL,'2016-04-03 00:00:00',4.34),(4395,57,203,'2016-08-18 00:00:00','On Hold','2017-02-22 00:00:00','Cash','33 Dottie Park',NULL,'Sokal’','Ukraine','Sean Carpenter',NULL,NULL,'2017-03-05 00:00:00',5.39),(4396,87,203,'2016-06-19 00:00:00','New','2016-12-23 00:00:00','Cash','0399 Dixon Hill',NULL,'Privolzhskiy','Russia','Alice Ferguson','413138',NULL,'2016-07-10 00:00:00',8.74),(4397,61,216,'2016-08-01 00:00:00','On Hold','2016-07-12 00:00:00','Check','5052 Rigney Junction',NULL,'Guaynabo','Germany','Diana Nguyen','00971','Pr','2016-12-25 00:00:00',5.36),(4398,52,211,'2016-12-04 00:00:00','New','2016-07-21 00:00:00','Cash','32 Summit Avenue',NULL,'Maqbanah','South Africa','Earl Gutierrez',NULL,NULL,'2016-05-11 00:00:00',5.82),(4399,71,208,'2016-05-16 00:00:00','Complete','2016-05-24 00:00:00','Card','5 Prentice Trail',NULL,'Xichang','China','Gloria Gordon',NULL,NULL,'2017-02-25 00:00:00',3.20),(4400,7,218,'2016-09-06 00:00:00','Shipped','2016-08-16 00:00:00','Cash','83 Logan Circle',NULL,'Zhongshan','China','Robert Wheeler',NULL,NULL,'2016-03-21 00:00:00',9.15),(4401,53,210,'2016-09-05 00:00:00','New','2017-01-25 00:00:00','Check','8459 American Plaza',NULL,'Santo Rosario','Philippines','Walter Williamson','3114',NULL,'2016-05-01 00:00:00',7.71),(4402,92,216,'2016-10-10 00:00:00','Shipped','2016-07-15 00:00:00','Card','164 Bonner Hill',NULL,'Vale de Mendiz','Portugal','Jonathan James','5085-105','Vila Real','2016-03-28 00:00:00',2.96),(4403,12,212,'2016-09-15 00:00:00','On Hold','2016-04-30 00:00:00','Check','207 Scofield Place',NULL,'Lawa-an','Philippines','Judy Williams','5706',NULL,'2016-11-11 00:00:00',9.68),(4404,83,213,'2016-04-25 00:00:00','Complete','2016-11-02 00:00:00','Card','84189 Schurz Circle',NULL,'Ogoja','Netherlands','Amy Olson',NULL,NULL,'2016-05-14 00:00:00',5.18),(4405,7,209,'2016-12-01 00:00:00','Complete','2017-02-11 00:00:00','Card','82460 Ridgeway Hill',NULL,'La Guacamaya','Canada','Donna Vasquez',NULL,NULL,'2016-08-30 00:00:00',5.32),(4406,66,209,'2016-09-14 00:00:00','New','2016-11-11 00:00:00','Cash','17 Morningstar Lane',NULL,'Chedao','China','Susan Jacobs',NULL,NULL,'2016-05-13 00:00:00',4.12),(4407,57,214,'2016-05-04 00:00:00','New','2017-01-28 00:00:00','Cash','116 Hollow Ridge Park',NULL,'Comagascas','Philippines','Kathryn Burns','1950',NULL,'2016-06-03 00:00:00',1.05),(4408,64,201,'2017-02-11 00:00:00','Complete','2016-12-16 00:00:00','Cash','090 Lien Place',NULL,'Luotang','China','Doris Bennett',NULL,NULL,'2016-06-08 00:00:00',1.35),(4409,41,209,'2017-02-28 00:00:00','New','2017-01-01 00:00:00','Check','6 Eliot Center',NULL,'Abu Dhabi','Denmark','Cynthia Robertson',NULL,NULL,'2016-09-05 00:00:00',4.21),(4410,24,215,'2016-08-28 00:00:00','Shipped','2017-01-21 00:00:00','Card','0 Weeping Birch Hill',NULL,'Cienfuegos','Denmark','Jonathan Parker',NULL,NULL,'2016-10-30 00:00:00',1.69),(4411,10,206,'2016-08-30 00:00:00','On Hold','2016-09-09 00:00:00','Cash','8279 Ridgeview Place',NULL,'Cruz Alta','Brazil','Bobby Foster','98000-000',NULL,'2016-12-06 00:00:00',7.50),(4412,65,205,'2016-12-13 00:00:00','Shipped','2017-01-11 00:00:00','Cash','806 Acker Drive',NULL,'Paoay','Philippines','Phyllis Moore','2902',NULL,'2017-02-27 00:00:00',4.63),(4413,2,211,'2016-12-05 00:00:00','New','2016-07-31 00:00:00','Card','00875 Sherman Lane',NULL,'Wansheng','China','Kevin Gordon',NULL,NULL,'2016-12-07 00:00:00',2.70),(4414,25,219,'2017-02-08 00:00:00','On Hold','2017-03-05 00:00:00','Check','2 Killdeer Center',NULL,'Gresik','Indonesia','Jack Mccoy',NULL,NULL,'2016-06-22 00:00:00',4.10),(4415,9,220,'2017-01-02 00:00:00','New','2016-08-07 00:00:00','Cash','1960 Parkside Hill',NULL,'Kafr Zaytā','India','Margaret Fuller',NULL,NULL,'2016-08-28 00:00:00',1.09),(4416,100,214,'2017-01-07 00:00:00','On Hold','2016-03-31 00:00:00','Cash','6 Lakewood Gardens Avenue',NULL,'Stockholm','Sweden','Melissa Nichols','113 90','Stockholm','2017-02-07 00:00:00',4.10),(4417,87,210,'2017-01-23 00:00:00','Complete','2016-05-05 00:00:00','Card','84 Mifflin Junction',NULL,'Kanungu','South Africa','William Webb',NULL,NULL,'2016-12-14 00:00:00',4.38),(4418,29,213,'2017-01-05 00:00:00','Shipped','2016-05-23 00:00:00','Cash','7 Myrtle Plaza',NULL,'Davila','Philippines','Anne Gonzales','2012',NULL,'2017-02-07 00:00:00',5.45),(4419,94,212,'2016-10-19 00:00:00','Shipped','2016-07-31 00:00:00','Check','22 Forest Run Hill',NULL,'Mollepampa','Peru','Kathleen Graham',NULL,NULL,'2016-12-20 00:00:00',5.86),(4420,32,201,'2016-11-29 00:00:00','Complete','2016-08-10 00:00:00','Cash','8925 Kennedy Parkway',NULL,'San Miguel de Tucumán','Argentina','Diana Sanders','4137',NULL,'2016-09-24 00:00:00',3.71),(4421,58,208,'2017-03-02 00:00:00','Shipped','2016-10-09 00:00:00','Card','60 Old Shore Alley',NULL,'Jinjiang','China','Willie Wright',NULL,NULL,'2016-04-03 00:00:00',6.72),(4422,59,206,'2016-04-19 00:00:00','New','2016-05-13 00:00:00','Check','785 Little Fleur Center',NULL,'El Triunfo','Argentina','Frank Evans',NULL,NULL,'2016-12-29 00:00:00',9.43),(4423,68,209,'2016-08-22 00:00:00','New','2016-10-18 00:00:00','Check','6398 John Wall Center',NULL,'Shouxihu','China','Phillip Carter',NULL,NULL,'2016-11-20 00:00:00',4.22),(4424,31,205,'2016-10-05 00:00:00','On Hold','2016-04-17 00:00:00','Check','17560 Melrose Point',NULL,'Milwaukee','United States','Lillian Gomez','53205','Wisconsin','2016-10-09 00:00:00',1.16),(4425,7,202,'2016-07-24 00:00:00','On Hold','2016-10-13 00:00:00','Cash','45 Vera Place',NULL,'Kiel','Germany','John Ortiz','24109','Schleswig-Holstein','2017-02-22 00:00:00',5.86),(4426,80,214,'2016-10-04 00:00:00','On Hold','2016-12-19 00:00:00','Check','94792 Jackson Hill',NULL,'San Juan','Germany','Brandon Fields','00918','Pr','2016-09-01 00:00:00',2.54),(4427,23,209,'2016-06-23 00:00:00','Complete','2016-09-22 00:00:00','Cash','20 Sloan Terrace',NULL,'Mount Darwin','India','Willie Hart',NULL,NULL,'2016-04-29 00:00:00',3.71),(4428,7,211,'2016-09-07 00:00:00','Complete','2016-04-05 00:00:00','Check','67285 Crowley Road',NULL,'Wailolong','Indonesia','Walter Montgomery',NULL,NULL,'2016-10-28 00:00:00',9.79),(4429,10,217,'2017-03-02 00:00:00','On Hold','2016-05-18 00:00:00','Card','72 Monterey Circle',NULL,'Salvacion','Philippines','Sara Williamson','1114',NULL,'2016-11-27 00:00:00',3.33),(4430,12,210,'2017-02-18 00:00:00','New','2016-06-02 00:00:00','Card','21302 Valley Edge Pass',NULL,'Balakasap','Indonesia','Wayne Sanders',NULL,NULL,'2016-03-17 00:00:00',2.18),(4431,80,220,'2016-10-01 00:00:00','New','2016-08-21 00:00:00','Cash','1 Karstens Avenue',NULL,'Santo António das Areias','Portugal','Cynthia Allen','7330-254','Portalegre','2016-09-28 00:00:00',3.40),(4432,95,211,'2017-02-04 00:00:00','New','2016-10-01 00:00:00','Cash','93993 Fairview Junction',NULL,'Buje','Canada','Jonathan Hughes','52460',NULL,'2016-03-17 00:00:00',5.19),(4433,67,208,'2017-02-11 00:00:00','New','2016-07-15 00:00:00','Card','77811 Dennis Point',NULL,'Hohoe','United Kingdom','Gerald Wright',NULL,NULL,'2016-06-01 00:00:00',3.25),(4434,53,201,'2016-12-25 00:00:00','Shipped','2017-02-11 00:00:00','Card','182 High Crossing Terrace',NULL,'Bajiazi','China','Roy Anderson',NULL,NULL,'2017-01-07 00:00:00',8.80),(4435,3,207,'2016-05-30 00:00:00','On Hold','2017-02-02 00:00:00','Cash','98 Kim Drive',NULL,'Lillehammer','Greece','Brenda Wright','2605','Oppland','2016-04-07 00:00:00',5.76),(4436,29,204,'2016-07-19 00:00:00','On Hold','2016-11-05 00:00:00','Cash','16 Brown Plaza',NULL,'Čapljina','India','Philip Price',NULL,NULL,'2016-07-05 00:00:00',9.62),(4437,80,210,'2016-10-13 00:00:00','Complete','2016-07-11 00:00:00','Cash','4160 Everett Point',NULL,'Waepana','Indonesia','Michelle Webb',NULL,NULL,'2016-04-24 00:00:00',9.54),(4438,6,209,'2016-12-31 00:00:00','Shipped','2017-03-15 00:00:00','Cash','10 Fairview Center',NULL,'Złotniki Kujawskie','Poland','Heather Fields','88-180',NULL,'2017-01-27 00:00:00',1.81),(4439,53,216,'2017-02-01 00:00:00','New','2016-07-02 00:00:00','Cash','0 Gateway Avenue',NULL,'Pizhanka','Russia','Ryan Long','613380',NULL,'2016-09-12 00:00:00',9.34),(4440,25,211,'2017-02-03 00:00:00','On Hold','2017-01-29 00:00:00','Cash','61 Burrows Street',NULL,'Kushelevka','Russia','Joyce Stewart','658381',NULL,'2016-10-13 00:00:00',6.40),(4441,93,215,'2016-03-21 00:00:00','Shipped','2016-10-05 00:00:00','Cash','97613 Pond Avenue',NULL,'Looc','Philippines','Walter Arnold','5507',NULL,'2016-11-17 00:00:00',1.09),(4442,10,214,'2016-05-10 00:00:00','Complete','2017-01-13 00:00:00','Check','36 Larry Court',NULL,'Rozhdestveno','Russia','Irene Simmons','399768',NULL,'2016-05-31 00:00:00',4.82),(4443,19,208,'2017-02-09 00:00:00','Shipped','2016-09-14 00:00:00','Cash','1482 Rockefeller Point',NULL,'Rybatskoye','Russia','Christina Mccoy','196851',NULL,'2017-02-05 00:00:00',1.62),(4444,98,210,'2017-02-15 00:00:00','Complete','2017-02-22 00:00:00','Card','04 Prairie Rose Junction',NULL,'Chicago','United States','Marie Fowler','60604','Illinois','2016-05-17 00:00:00',7.47),(4445,32,218,'2017-02-12 00:00:00','New','2016-04-01 00:00:00','Cash','3 Charing Cross Pass',NULL,'Selce','Denmark','Louise Bell','1219',NULL,'2016-05-20 00:00:00',4.47),(4446,25,209,'2016-09-22 00:00:00','On Hold','2016-11-09 00:00:00','Check','697 Oneill Drive',NULL,'Shanghang','China','Barbara Black',NULL,NULL,'2016-12-03 00:00:00',4.66),(4447,100,209,'2016-08-26 00:00:00','On Hold','2016-12-04 00:00:00','Check','77 Marcy Court',NULL,'Estreito','Brazil','James Holmes','65975-000',NULL,'2017-01-16 00:00:00',9.85),(4448,72,210,'2016-06-25 00:00:00','On Hold','2016-06-09 00:00:00','Card','6400 Milwaukee Hill',NULL,'Wanshan','China','Kenneth Williams',NULL,NULL,'2016-12-07 00:00:00',3.66),(4449,16,213,'2016-12-13 00:00:00','Complete','2016-07-07 00:00:00','Cash','8 Judy Park',NULL,'Ágios Andréas','Greece','Joshua Jacobs',NULL,NULL,'2016-08-07 00:00:00',3.81),(4450,100,216,'2016-12-21 00:00:00','On Hold','2016-04-22 00:00:00','Cash','1 Dakota Court',NULL,'Huayllo','Peru','Aaron Sanders',NULL,NULL,'2017-02-13 00:00:00',7.59),(4451,50,211,'2016-08-22 00:00:00','New','2017-02-25 00:00:00','Card','03 Golden Leaf Point',NULL,'Stírion','Greece','Eugene Scott',NULL,NULL,'2016-06-05 00:00:00',8.99),(4452,86,220,'2016-05-07 00:00:00','On Hold','2016-04-27 00:00:00','Check','820 Merchant Way',NULL,'Mrongi Daja','Indonesia','Cynthia Phillips',NULL,NULL,'2016-07-20 00:00:00',2.21),(4453,58,213,'2016-10-30 00:00:00','Complete','2017-02-12 00:00:00','Cash','14 Meadow Vale Alley',NULL,'Jiangdong','China','Martin Reed',NULL,NULL,'2016-03-22 00:00:00',3.58),(4454,98,206,'2016-05-14 00:00:00','New','2016-06-12 00:00:00','Check','74391 Ronald Regan Park',NULL,'Lamakera Dua','Indonesia','Janet Porter',NULL,NULL,'2016-11-07 00:00:00',9.86),(4455,2,204,'2016-03-28 00:00:00','New','2016-07-09 00:00:00','Card','047 Jenna Road',NULL,'Tungawan','Philippines','Amanda Duncan','7018',NULL,'2016-04-11 00:00:00',2.04),(4456,58,211,'2016-08-05 00:00:00','New','2016-05-24 00:00:00','Check','14 Morningstar Pass',NULL,'Kolobolon','Indonesia','Joseph Henderson',NULL,NULL,'2016-11-19 00:00:00',6.44),(4457,21,215,'2017-02-15 00:00:00','Shipped','2016-07-05 00:00:00','Check','066 Surrey Pass',NULL,'Hưng Yên','Vietnam','Cynthia Bishop',NULL,NULL,'2016-06-11 00:00:00',1.61),(4458,10,211,'2016-08-08 00:00:00','New','2016-12-15 00:00:00','Cash','7 Mariners Cove Court',NULL,'Tuanchengshan','China','Craig Andrews',NULL,NULL,'2016-08-06 00:00:00',8.40),(4459,71,211,'2016-05-13 00:00:00','New','2016-06-29 00:00:00','Card','6702 Delladonna Point',NULL,'Pražmo','Czech Republic','Steve Warren','739 04',NULL,'2017-02-19 00:00:00',8.29),(4460,5,214,'2016-12-21 00:00:00','New','2016-07-08 00:00:00','Cash','77934 Prairieview Way',NULL,'Huafeng','China','Brenda Mills',NULL,NULL,'2016-06-21 00:00:00',6.76),(4461,34,212,'2016-04-27 00:00:00','Shipped','2016-03-20 00:00:00','Card','9 Thackeray Way',NULL,'Dvůr Králové nad Labem','Czech Republic','Randy Wright','544 01',NULL,'2016-07-22 00:00:00',9.45),(4462,47,202,'2016-10-31 00:00:00','New','2016-09-05 00:00:00','Card','0152 Old Shore Road',NULL,'Pulaupinang','Indonesia','Michelle Ramirez',NULL,NULL,'2016-06-30 00:00:00',2.42),(4463,86,209,'2016-07-30 00:00:00','Complete','2016-06-22 00:00:00','Card','67 Buell Terrace',NULL,'Krasne','Ukraine','Frank Duncan',NULL,NULL,'2016-04-29 00:00:00',2.71),(4464,62,204,'2017-03-01 00:00:00','Shipped','2016-03-22 00:00:00','Cash','978 Merrick Circle',NULL,'Penghua','China','Carlos Warren',NULL,NULL,'2017-03-11 00:00:00',7.29),(4465,87,202,'2016-06-23 00:00:00','New','2016-06-01 00:00:00','Card','0 Mcguire Terrace',NULL,'Cangqian','China','Tina Gardner',NULL,NULL,'2016-11-15 00:00:00',2.17),(4466,31,220,'2016-06-04 00:00:00','Shipped','2016-05-09 00:00:00','Check','17 Leroy Plaza',NULL,'Pedaringan','Indonesia','Stephen Turner',NULL,NULL,'2016-06-08 00:00:00',8.89),(4467,35,210,'2016-05-21 00:00:00','On Hold','2016-06-20 00:00:00','Card','61199 Forest Center',NULL,'Krmelín','Czech Republic','Melissa Wilson','739 24',NULL,'2016-09-26 00:00:00',2.35),(4468,50,216,'2016-09-10 00:00:00','Complete','2016-10-04 00:00:00','Cash','8940 Fisk Parkway',NULL,'San Jose','United States','Billy Harper','95113','California','2016-12-02 00:00:00',3.98),(4469,22,207,'2016-06-03 00:00:00','New','2017-02-03 00:00:00','Card','5 Lindbergh Street',NULL,'Taling Chan','Thailand','Carl Davis','10170',NULL,'2016-11-06 00:00:00',4.71),(4470,64,211,'2016-06-16 00:00:00','Shipped','2016-10-11 00:00:00','Cash','2221 Porter Crossing',NULL,'Mozdok','Russia','Gerald Henry','363759',NULL,'2016-05-26 00:00:00',9.57),(4471,25,206,'2016-07-27 00:00:00','On Hold','2016-06-23 00:00:00','Check','65379 Sunnyside Trail',NULL,'Jiadingzhen','China','Debra Garza',NULL,NULL,'2016-08-24 00:00:00',1.06),(4472,18,204,'2016-08-30 00:00:00','On Hold','2016-06-18 00:00:00','Check','3202 Marquette Point',NULL,'Oranzherei','Russia','Margaret Rodriguez','416368',NULL,'2016-10-09 00:00:00',3.35),(4473,88,212,'2016-10-29 00:00:00','Shipped','2017-02-12 00:00:00','Check','46 Kingsford Center',NULL,'San Juan','Denmark','William Burke','11301',NULL,'2016-05-25 00:00:00',3.85),(4474,9,217,'2017-02-19 00:00:00','New','2016-06-19 00:00:00','Card','731 Packers Point',NULL,'Trelleborg','Sweden','Larry Myers','231 68','Skåne','2016-05-29 00:00:00',4.46),(4475,40,202,'2016-11-03 00:00:00','Shipped','2016-11-13 00:00:00','Check','141 Rowland Way',NULL,'Aoji-ri','Denmark','Virginia Hall',NULL,NULL,'2016-04-25 00:00:00',7.58),(4476,16,211,'2017-03-07 00:00:00','On Hold','2016-03-19 00:00:00','Check','60 Rusk Lane',NULL,'Al Qamşīyah','India','Doris Berry',NULL,NULL,'2016-10-14 00:00:00',1.80),(4477,87,210,'2016-12-04 00:00:00','Complete','2016-08-05 00:00:00','Card','3830 Randy Parkway',NULL,'Nakhon Nayok','Thailand','Juan Richards','26120',NULL,'2016-03-22 00:00:00',1.22),(4478,34,203,'2017-01-28 00:00:00','On Hold','2016-07-06 00:00:00','Check','34957 Elka Way',NULL,'Santiago','Brazil','Kimberly Fox','97700-000',NULL,'2016-09-27 00:00:00',3.99),(4479,89,219,'2016-07-01 00:00:00','On Hold','2016-06-03 00:00:00','Cash','90581 American Hill',NULL,'Agudos','Brazil','Ruby Ruiz','17120-000',NULL,'2016-05-31 00:00:00',5.97),(4480,53,203,'2016-10-17 00:00:00','Complete','2016-12-01 00:00:00','Card','385 Carioca Plaza',NULL,'Kalangan','Indonesia','Ruby Robinson',NULL,NULL,'2016-11-07 00:00:00',8.71),(4481,91,207,'2017-02-25 00:00:00','Complete','2016-07-30 00:00:00','Check','170 Mariners Cove Circle',NULL,'Bressuire','France','Victor Lopez','79304 CEDEX','Poitou-Charentes','2016-03-31 00:00:00',8.59),(4482,58,215,'2017-02-15 00:00:00','On Hold','2016-04-21 00:00:00','Check','647 Summerview Circle',NULL,'Timahankrajan','Indonesia','Kimberly Marshall',NULL,NULL,'2016-07-25 00:00:00',3.07),(4483,76,207,'2016-06-27 00:00:00','New','2016-05-27 00:00:00','Card','9379 Summit Trail',NULL,'Brangsi','Indonesia','Pamela Matthews',NULL,NULL,'2016-10-15 00:00:00',1.35),(4484,98,210,'2017-02-03 00:00:00','Shipped','2016-10-31 00:00:00','Card','6641 American Ash Point',NULL,'Ivanec','Canada','Randy Patterson','42240',NULL,'2016-11-04 00:00:00',2.36),(4485,71,205,'2017-01-01 00:00:00','Shipped','2016-04-27 00:00:00','Check','281 Raven Lane',NULL,'Jingyang','China','Carolyn Garza',NULL,NULL,'2017-02-16 00:00:00',6.85),(4486,20,202,'2016-07-24 00:00:00','On Hold','2017-03-16 00:00:00','Cash','5656 Northview Lane',NULL,'Burevestnik','Russia','Ruth Perkins','607612',NULL,'2016-07-06 00:00:00',9.29),(4487,49,203,'2017-02-20 00:00:00','Shipped','2016-12-04 00:00:00','Check','249 Londonderry Pass',NULL,'Grande Rivière du Nord','Canada','Kelly Oliver',NULL,NULL,'2017-01-12 00:00:00',7.65),(4488,67,203,'2016-11-09 00:00:00','Complete','2016-06-14 00:00:00','Check','3045 Rowland Lane',NULL,'Midlands','Germany','Shirley Henry',NULL,NULL,'2016-07-19 00:00:00',5.35),(4489,100,209,'2017-01-24 00:00:00','Shipped','2016-04-20 00:00:00','Check','629 Crownhardt Junction',NULL,'El Paso','United States','Marie Ferguson','88546','Texas','2016-05-30 00:00:00',5.18),(4490,87,202,'2016-06-27 00:00:00','Shipped','2016-07-24 00:00:00','Cash','343 Schurz Road',NULL,'Cabiguan','Philippines','Rachel Scott','1144',NULL,'2016-09-05 00:00:00',1.05),(4491,93,211,'2017-01-16 00:00:00','Shipped','2016-06-02 00:00:00','Card','26143 Del Sol Avenue',NULL,'Huangduobu','China','Henry Fields',NULL,NULL,'2016-09-29 00:00:00',6.15),(4492,10,217,'2016-12-08 00:00:00','New','2016-04-07 00:00:00','Card','2 Oak Avenue',NULL,'Surkhakhi','Russia','Harold Jones','386147',NULL,'2016-10-01 00:00:00',9.96),(4493,35,217,'2016-05-05 00:00:00','On Hold','2016-10-26 00:00:00','Cash','12 Paget Road',NULL,'Siluman','Indonesia','Walter Wright',NULL,NULL,'2016-05-01 00:00:00',2.10),(4494,51,206,'2017-02-25 00:00:00','New','2016-06-22 00:00:00','Cash','4 5th Way',NULL,'Punkaharju','Finland','Marilyn Hayes','58501',NULL,'2016-10-24 00:00:00',3.57),(4495,3,208,'2016-12-27 00:00:00','New','2016-08-25 00:00:00','Cash','0384 Bowman Center',NULL,'Tagta','India','Sandra West',NULL,NULL,'2016-09-09 00:00:00',6.45),(4496,41,218,'2017-01-10 00:00:00','New','2016-09-28 00:00:00','Check','4 Cambridge Alley',NULL,'Cariamanga','Argentina','Dennis Meyer',NULL,NULL,'2016-12-11 00:00:00',5.33),(4497,76,216,'2016-09-28 00:00:00','Complete','2016-04-12 00:00:00','Cash','23227 Veith Park',NULL,'Fengqiao','China','Frank Dean',NULL,NULL,'2016-05-12 00:00:00',6.72),(4498,3,204,'2016-11-11 00:00:00','Shipped','2016-09-07 00:00:00','Card','7735 Maple Wood Road',NULL,'Działoszyce','Poland','Amy Palmer','28-440',NULL,'2016-12-01 00:00:00',3.08),(4499,96,211,'2017-02-04 00:00:00','On Hold','2016-09-25 00:00:00','Card','3 Crownhardt Plaza',NULL,'Oslob','Philippines','Emily Nelson','6025',NULL,'2016-03-27 00:00:00',6.41),(4500,7,204,'2016-04-29 00:00:00','Complete','2016-12-12 00:00:00','Card','687 Drewry Place',NULL,'Barberena','Japan','Randy Hanson','06002',NULL,'2017-01-20 00:00:00',2.51),(4501,92,215,'2017-02-27 00:00:00','Complete','2016-10-30 00:00:00','Card','826 Mendota Pass',NULL,'Chicago','United States','Raymond Banks','60681','Illinois','2016-09-26 00:00:00',3.34),(4502,24,220,'2016-10-01 00:00:00','Complete','2016-04-27 00:00:00','Check','2643 Becker Trail',NULL,'Columbus','United States','Kimberly Robertson','31904','United Kingdom','2016-09-26 00:00:00',3.07),(4503,52,215,'2017-02-25 00:00:00','On Hold','2016-08-16 00:00:00','Check','1 Tennessee Park',NULL,'Spokane','United States','Marilyn Miller','99252','Washington','2016-08-08 00:00:00',5.34),(4504,35,220,'2017-01-27 00:00:00','Shipped','2016-04-06 00:00:00','Cash','4575 Fair Oaks Hill',NULL,'Richmond','United States','Marie Carpenter','23293','Virginia','2016-09-08 00:00:00',7.01),(4505,10,203,'2016-06-24 00:00:00','On Hold','2016-06-17 00:00:00','Check','823 Duke Center',NULL,'Irvine','United States','Nicholas Wells','92710','California','2017-02-22 00:00:00',1.40),(4506,26,207,'2016-12-26 00:00:00','Shipped','2016-10-25 00:00:00','Cash','06 Spenser Place',NULL,'Charleston','United States','John Dean','29403','South Carolina','2017-03-14 00:00:00',1.31),(4507,28,216,'2016-08-22 00:00:00','Shipped','2016-04-13 00:00:00','Cash','26 Ridgeway Plaza',NULL,'Ogden','United States','Diana Spencer','84403','Utah','2016-12-13 00:00:00',9.42),(4508,90,213,'2016-08-31 00:00:00','Complete','2016-10-19 00:00:00','Cash','862 Iowa Avenue',NULL,'Kansas City','United States','Wanda Bowman','66160','Kansas','2017-01-13 00:00:00',7.10),(4509,93,204,'2016-07-07 00:00:00','Complete','2016-04-23 00:00:00','Check','27066 Gina Road',NULL,'El Paso','United States','Andrew Garrett','88558','Texas','2016-05-31 00:00:00',6.88),(4510,56,202,'2017-02-06 00:00:00','New','2016-05-20 00:00:00','Cash','6233 South Junction',NULL,'Lafayette','United States','Juan Webb','70505','Louisiana','2016-10-29 00:00:00',1.07),(4511,54,219,'2016-11-08 00:00:00','Complete','2016-05-25 00:00:00','Check','5 Meadow Ridge Terrace',NULL,'Tacoma','United States','William Gardner','98447','Washington','2016-06-17 00:00:00',4.46),(4512,4,215,'2016-09-09 00:00:00','New','2016-09-02 00:00:00','Cash','15 Ludington Junction',NULL,'San Rafael','United States','Fred Fernandez','94913','California','2016-08-21 00:00:00',4.30),(4513,54,206,'2016-10-28 00:00:00','Complete','2016-05-29 00:00:00','Card','41196 Rieder Avenue',NULL,'Baltimore','United States','Ruth Ellis','21211','Maryland','2016-06-30 00:00:00',8.39),(4514,73,215,'2017-02-26 00:00:00','Shipped','2016-04-18 00:00:00','Card','5813 Brown Parkway',NULL,'Shawnee Mission','United States','David Ferguson','66286','Kansas','2016-09-17 00:00:00',2.71),(4515,23,216,'2016-11-08 00:00:00','Shipped','2017-02-01 00:00:00','Check','0 Bashford Parkway',NULL,'Tucson','United States','Susan Freeman','85720','Arizona','2016-06-27 00:00:00',5.50),(4516,9,212,'2016-04-30 00:00:00','On Hold','2017-01-20 00:00:00','Cash','193 Declaration Plaza',NULL,'Louisville','United States','Alan Hunt','40256','Kentucky','2016-12-31 00:00:00',9.74),(4517,46,202,'2017-02-01 00:00:00','Complete','2016-11-04 00:00:00','Card','1860 Thompson Crossing',NULL,'Biloxi','United States','Phillip Romero','39534','Mississippi','2016-07-22 00:00:00',3.02),(4518,75,203,'2016-09-07 00:00:00','Shipped','2016-06-21 00:00:00','Check','6 Mcguire Center',NULL,'Mesa','United States','George Diaz','85210','Arizona','2016-11-14 00:00:00',7.84),(4519,68,217,'2016-10-07 00:00:00','Complete','2016-05-09 00:00:00','Check','7405 High Crossing Alley',NULL,'Sioux City','United States','Virginia King','51105','Iowa','2016-08-15 00:00:00',4.03),(4520,6,216,'2017-02-18 00:00:00','New','2016-11-13 00:00:00','Check','224 Badeau Street',NULL,'Corpus Christi','United States','Brenda Ruiz','78426','Texas','2017-02-17 00:00:00',9.11),(4521,84,201,'2016-09-17 00:00:00','Shipped','2017-03-10 00:00:00','Check','94 Morningstar Center',NULL,'San Francisco','United States','Debra Brown','94177','California','2016-06-15 00:00:00',6.59),(4522,89,205,'2016-10-22 00:00:00','Complete','2016-10-27 00:00:00','Cash','79 Manufacturers Center',NULL,'Los Angeles','United States','Emily Henry','90020','California','2017-03-13 00:00:00',4.11),(4523,67,211,'2016-04-17 00:00:00','Shipped','2016-08-25 00:00:00','Card','504 Schlimgen Terrace',NULL,'Bethesda','United States','Aaron Peterson','20892','Maryland','2017-02-12 00:00:00',5.42),(4524,83,215,'2016-08-22 00:00:00','Shipped','2016-08-09 00:00:00','Card','3 Mcbride Lane',NULL,'Washington','United States','Janice Burke','20073','District of Columbia','2016-07-31 00:00:00',3.76),(4525,100,217,'2016-03-31 00:00:00','On Hold','2016-12-29 00:00:00','Cash','18155 Northview Plaza',NULL,'Detroit','United States','Debra Kelley','48267','Michigan','2016-12-09 00:00:00',2.26),(4526,32,214,'2016-11-24 00:00:00','Shipped','2016-08-07 00:00:00','Check','86 Michigan Avenue',NULL,'Brooklyn','United States','Donald Sims','11231','New York','2016-03-28 00:00:00',5.05),(4527,100,205,'2016-05-13 00:00:00','Shipped','2016-10-22 00:00:00','Check','4 Hanover Road',NULL,'Reno','United States','Daniel Mason','89595','Nevada','2016-06-17 00:00:00',4.81),(4528,32,201,'2016-11-15 00:00:00','New','2016-11-07 00:00:00','Check','5 Weeping Birch Alley',NULL,'Jacksonville','United States','Howard Knight','32225','Florida','2016-11-16 00:00:00',5.99),(4529,99,213,'2016-12-02 00:00:00','Complete','2016-12-02 00:00:00','Card','629 Manufacturers Point',NULL,'Syracuse','United States','Virginia Hughes','13224','New York','2016-07-09 00:00:00',5.60),(4530,18,219,'2016-12-07 00:00:00','Complete','2016-10-18 00:00:00','Check','90 Heffernan Pass',NULL,'Saint Petersburg','United States','Carl Graham','33737','Florida','2017-02-07 00:00:00',9.35),(4531,57,201,'2016-12-26 00:00:00','On Hold','2016-12-05 00:00:00','Card','38 Bellgrove Crossing',NULL,'Tacoma','United States','Joan Murray','98447','Washington','2016-12-29 00:00:00',6.69),(4532,58,202,'2016-04-02 00:00:00','On Hold','2016-04-16 00:00:00','Card','09407 Northfield Circle',NULL,'Cedar Rapids','United States','Robert Williams','52410','Iowa','2016-07-01 00:00:00',6.56),(4533,36,218,'2017-02-07 00:00:00','Shipped','2017-01-24 00:00:00','Check','57199 Hoffman Place',NULL,'Jacksonville','United States','Ryan Black','32204','Florida','2016-05-05 00:00:00',8.54),(4534,92,208,'2016-07-09 00:00:00','New','2016-09-30 00:00:00','Cash','16179 Ludington Court',NULL,'Birmingham','United States','Brenda Hunter','35263','Alabama','2016-06-20 00:00:00',9.82),(4535,70,214,'2016-08-04 00:00:00','Complete','2017-02-24 00:00:00','Cash','08161 Barnett Parkway',NULL,'Van Nuys','United States','Anne Warren','91411','California','2016-06-29 00:00:00',7.04),(4536,99,213,'2017-01-11 00:00:00','Shipped','2016-09-03 00:00:00','Card','9 Badeau Court',NULL,'Davenport','United States','Betty Snyder','52804','Iowa','2017-01-21 00:00:00',8.72),(4537,76,217,'2016-07-31 00:00:00','On Hold','2016-04-21 00:00:00','Check','1031 Esch Drive',NULL,'Fresno','United States','Edward Wilson','93750','California','2017-02-13 00:00:00',1.64),(4538,60,210,'2016-06-22 00:00:00','Complete','2017-01-31 00:00:00','Check','124 Hoepker Pass',NULL,'San Antonio','United States','Terry Butler','78255','Texas','2016-04-10 00:00:00',2.35),(4539,5,220,'2016-11-12 00:00:00','Complete','2016-09-17 00:00:00','Card','990 Quincy Drive',NULL,'Richmond','United States','Emily Hawkins','23289','Virginia','2016-04-25 00:00:00',4.36),(4540,42,213,'2017-02-28 00:00:00','New','2016-04-14 00:00:00','Check','8881 Packers Trail',NULL,'Berkeley','United States','Cynthia Rose','94712','California','2017-02-11 00:00:00',6.09),(4541,27,204,'2016-09-30 00:00:00','Shipped','2016-05-07 00:00:00','Card','83 Graedel Terrace',NULL,'Oakland','United States','Lisa Turner','94611','California','2017-01-28 00:00:00',9.61),(4542,26,219,'2016-07-13 00:00:00','New','2016-06-10 00:00:00','Check','475 Meadow Valley Point',NULL,'Annapolis','United States','Jason Price','21405','Maryland','2016-03-23 00:00:00',2.93),(4543,63,202,'2016-07-29 00:00:00','Complete','2016-09-20 00:00:00','Card','7 Upham Center',NULL,'Temple','United States','Joan Hayes','76505','Texas','2016-05-20 00:00:00',7.39),(4544,97,212,'2016-10-31 00:00:00','Shipped','2016-07-07 00:00:00','Card','443 Debs Terrace',NULL,'Racine','United States','Paula Torres','53405','Wisconsin','2017-01-16 00:00:00',3.93),(4545,33,201,'2017-03-08 00:00:00','Complete','2016-11-19 00:00:00','Card','85395 Rusk Center',NULL,'Jackson','United States','Theresa Watkins','39210','Mississippi','2016-08-21 00:00:00',5.32),(4546,68,211,'2016-05-25 00:00:00','Shipped','2016-08-24 00:00:00','Cash','155 Northport Road',NULL,'Greensboro','United States','Clarence Nguyen','27455','North Carolina','2016-07-17 00:00:00',7.06),(4547,73,203,'2016-05-03 00:00:00','New','2016-04-07 00:00:00','Cash','03 Eagle Crest Lane',NULL,'Colorado Springs','United States','Jean Mason','80935','Colorado','2016-10-23 00:00:00',4.20),(4548,2,217,'2016-05-20 00:00:00','New','2016-04-30 00:00:00','Cash','364 Debra Lane',NULL,'Washington','United States','Nicole Brown','20046','District of Columbia','2016-08-07 00:00:00',7.97),(4549,89,220,'2016-04-11 00:00:00','Shipped','2017-02-05 00:00:00','Card','756 Muir Point',NULL,'Washington','United States','Carol Chapman','20397','District of Columbia','2016-12-11 00:00:00',2.21),(4550,13,211,'2016-04-16 00:00:00','New','2017-03-06 00:00:00','Check','8 Anhalt Terrace',NULL,'Indianapolis','United States','Roy George','46207','Indiana','2016-08-03 00:00:00',4.50),(4551,37,219,'2016-04-14 00:00:00','Shipped','2017-01-02 00:00:00','Card','0901 Tennessee Street',NULL,'Kingsport','United States','Heather Bishop','37665','Tennessee','2017-03-01 00:00:00',1.92),(4552,94,218,'2017-03-05 00:00:00','Complete','2016-12-31 00:00:00','Card','90645 Carberry Drive',NULL,'Madison','United States','Wayne Mason','53716','Wisconsin','2016-06-01 00:00:00',6.96),(4553,37,212,'2016-10-16 00:00:00','Shipped','2016-06-09 00:00:00','Cash','100 Granby Junction',NULL,'Miami','United States','Gloria Elliott','33153','Florida','2016-10-13 00:00:00',9.25),(4554,4,217,'2016-06-05 00:00:00','Complete','2016-03-30 00:00:00','Cash','6001 Elgar Circle',NULL,'Pensacola','United States','Timothy Hayes','32575','Florida','2016-07-26 00:00:00',6.50),(4555,49,207,'2016-08-19 00:00:00','Complete','2016-09-17 00:00:00','Check','3436 Briar Crest Park',NULL,'Newark','United States','Judith Baker','07188','New Jersey','2016-08-15 00:00:00',2.33),(4556,17,217,'2016-11-18 00:00:00','Complete','2016-04-08 00:00:00','Check','6401 Graedel Court',NULL,'Alexandria','United States','Roy Russell','22301','Virginia','2016-12-10 00:00:00',3.24),(4557,35,216,'2016-09-11 00:00:00','Shipped','2016-08-06 00:00:00','Card','864 Cherokee Lane',NULL,'Columbus','United States','Jacqueline Davis','43226','Ohio','2016-05-07 00:00:00',4.70),(4558,20,211,'2016-10-06 00:00:00','Complete','2016-10-06 00:00:00','Card','03090 Northland Circle',NULL,'Salt Lake City','United States','Eugene Castillo','84199','Utah','2016-07-15 00:00:00',9.36),(4559,13,216,'2017-01-13 00:00:00','On Hold','2016-05-15 00:00:00','Cash','522 Holmberg Alley',NULL,'Scottsdale','United States','Janice Mills','85271','Arizona','2016-03-28 00:00:00',7.31),(4560,77,211,'2016-08-24 00:00:00','On Hold','2016-07-17 00:00:00','Check','0070 Corben Way',NULL,'Naples','United States','Ruby White','34114','Florida','2017-03-13 00:00:00',3.71),(4561,55,219,'2016-08-13 00:00:00','Shipped','2016-06-12 00:00:00','Cash','25 Rigney Point',NULL,'Washington','United States','Frank Jackson','20420','District of Columbia','2016-11-19 00:00:00',1.94),(4562,96,207,'2016-10-12 00:00:00','New','2017-03-06 00:00:00','Check','830 Loftsgordon Junction',NULL,'Houston','United States','Pamela Peterson','77281','Texas','2016-12-04 00:00:00',1.45),(4563,70,204,'2016-07-23 00:00:00','New','2017-01-19 00:00:00','Cash','3 Gerald Lane',NULL,'Scottsdale','United States','Martha Frazier','85260','Arizona','2017-02-06 00:00:00',2.74),(4564,59,204,'2017-02-26 00:00:00','On Hold','2017-02-09 00:00:00','Cash','27305 Maple Crossing',NULL,'San Diego','United States','Kenneth Hawkins','92145','California','2016-10-23 00:00:00',9.41),(4565,66,203,'2016-08-06 00:00:00','New','2016-06-24 00:00:00','Card','8 Norway Maple Junction',NULL,'Fort Worth','United States','Barbara Collins','76198','Texas','2017-02-03 00:00:00',1.08),(4566,83,217,'2016-09-14 00:00:00','Shipped','2016-06-13 00:00:00','Card','97 Nobel Avenue',NULL,'Alexandria','United States','Gary Ellis','71307','Louisiana','2016-03-29 00:00:00',5.05),(4567,63,214,'2017-03-04 00:00:00','Shipped','2017-02-13 00:00:00','Card','98309 Mccormick Park',NULL,'Kansas City','United States','Douglas Hughes','66160','Kansas','2016-11-05 00:00:00',1.40),(4568,12,208,'2016-10-31 00:00:00','On Hold','2016-04-30 00:00:00','Check','1 Merchant Lane',NULL,'Duluth','United States','Harold Flores','30096','United Kingdom','2017-02-27 00:00:00',4.84),(4569,96,201,'2016-08-20 00:00:00','On Hold','2016-04-25 00:00:00','Cash','084 Stuart Hill',NULL,'Arlington','United States','Marie Nguyen','76004','Texas','2016-10-03 00:00:00',5.95),(4570,1,203,'2016-10-13 00:00:00','New','2016-05-05 00:00:00','Check','7541 Golf Course Way',NULL,'Kansas City','United States','Judy Fowler','64109','Missouri','2016-03-21 00:00:00',8.02),(4571,49,219,'2016-11-04 00:00:00','Complete','2016-10-28 00:00:00','Cash','5 Scott Hill',NULL,'Brooklyn','United States','Howard Rogers','11215','New York','2016-09-02 00:00:00',5.21),(4572,5,215,'2016-03-24 00:00:00','On Hold','2016-08-14 00:00:00','Card','0022 Reinke Trail',NULL,'Baton Rouge','United States','Stephanie Martinez','70894','Louisiana','2016-08-31 00:00:00',7.74),(4573,61,206,'2016-08-31 00:00:00','On Hold','2016-11-30 00:00:00','Check','780 Elka Place',NULL,'Cleveland','United States','Jacqueline Lane','44105','Ohio','2016-07-10 00:00:00',9.12),(4574,65,220,'2016-06-26 00:00:00','Complete','2016-03-30 00:00:00','Check','23089 Kensington Junction',NULL,'Greensboro','United States','Betty Harrison','27404','North Carolina','2016-06-25 00:00:00',5.63),(4575,81,212,'2016-04-28 00:00:00','On Hold','2017-01-25 00:00:00','Cash','7895 Weeping Birch Plaza',NULL,'Waterbury','United States','Robin Bradley','06721','Connecticut','2016-10-19 00:00:00',7.34),(4576,13,216,'2017-02-24 00:00:00','New','2017-02-02 00:00:00','Cash','4019 Harper Park',NULL,'Sacramento','United States','Ralph Bailey','94291','California','2016-07-18 00:00:00',6.77),(4577,43,203,'2016-09-24 00:00:00','Shipped','2016-07-23 00:00:00','Check','775 Lyons Road',NULL,'Bridgeport','United States','Melissa Ross','06606','Connecticut','2016-11-18 00:00:00',1.64),(4578,53,212,'2016-07-05 00:00:00','New','2016-04-09 00:00:00','Card','0 Kings Terrace',NULL,'Bloomington','United States','Joan Russell','61709','Illinois','2016-06-19 00:00:00',4.66),(4579,17,214,'2016-10-01 00:00:00','Complete','2016-06-16 00:00:00','Check','40131 Ronald Regan Road',NULL,'Washington','United States','Benjamin George','20525','District of Columbia','2016-10-18 00:00:00',8.04),(4580,69,207,'2016-04-19 00:00:00','Complete','2017-02-08 00:00:00','Check','37483 Melrose Parkway',NULL,'Fresno','United States','Katherine Stone','93794','California','2017-02-09 00:00:00',6.70),(4581,28,218,'2017-03-04 00:00:00','On Hold','2016-04-21 00:00:00','Cash','872 Nancy Street',NULL,'Pompano Beach','United States','Ernest Cruz','33069','Florida','2016-11-25 00:00:00',5.81),(4582,32,217,'2017-03-16 00:00:00','On Hold','2016-04-01 00:00:00','Cash','72309 Elmside Point',NULL,'San Francisco','United States','Joshua Edwards','94110','California','2016-06-08 00:00:00',2.49),(4583,83,219,'2017-01-24 00:00:00','New','2016-10-07 00:00:00','Card','88350 Wayridge Hill',NULL,'Charleston','United States','Justin Mills','25326','West Virginia','2016-07-25 00:00:00',6.03),(4584,45,208,'2016-10-18 00:00:00','Shipped','2016-08-21 00:00:00','Check','25 Carpenter Lane',NULL,'Reno','United States','Kathleen Gibson','89505','Nevada','2016-05-13 00:00:00',5.41),(4585,71,216,'2016-09-19 00:00:00','On Hold','2016-11-29 00:00:00','Cash','1 Muir Pass',NULL,'Las Vegas','United States','Ruby Bennett','89135','Nevada','2016-10-15 00:00:00',2.50),(4586,48,214,'2016-08-07 00:00:00','Complete','2017-01-09 00:00:00','Card','1125 Melvin Terrace',NULL,'Bethesda','United States','Richard Robinson','20816','Maryland','2016-08-12 00:00:00',4.02),(4587,62,212,'2016-12-17 00:00:00','Shipped','2016-08-07 00:00:00','Cash','534 Stoughton Lane',NULL,'Johnstown','United States','Debra Sanchez','15906','Pennsylvania','2017-01-23 00:00:00',8.78),(4588,30,216,'2016-10-24 00:00:00','New','2017-03-12 00:00:00','Card','680 Northview Circle',NULL,'Huntington','United States','Willie Dean','25775','West Virginia','2016-12-21 00:00:00',8.43),(4589,10,210,'2017-01-01 00:00:00','On Hold','2017-02-08 00:00:00','Cash','8706 Sundown Street',NULL,'Peoria','United States','Christina Kelley','61635','Illinois','2016-09-22 00:00:00',4.24),(4590,6,205,'2016-11-29 00:00:00','Complete','2016-05-30 00:00:00','Cash','977 Packers Drive',NULL,'Charlotte','United States','Russell Montgomery','28247','North Carolina','2017-02-23 00:00:00',2.87),(4591,15,206,'2016-03-28 00:00:00','Shipped','2017-03-10 00:00:00','Check','283 Bultman Way',NULL,'Jacksonville','United States','Edward Cunningham','32277','Florida','2017-02-23 00:00:00',6.55),(4592,82,209,'2016-12-20 00:00:00','On Hold','2016-04-19 00:00:00','Check','00 Oak Avenue',NULL,'Young America','United States','Michael Chavez','55551','Minnesota','2016-09-07 00:00:00',8.22),(4593,24,204,'2017-03-13 00:00:00','On Hold','2017-01-13 00:00:00','Card','506 Nevada Circle',NULL,'Portland','United States','David White','04109','Maine','2016-08-30 00:00:00',1.11),(4594,27,206,'2016-09-13 00:00:00','On Hold','2017-02-25 00:00:00','Card','9070 Di Loreto Court',NULL,'Van Nuys','United States','Cheryl Vasquez','91499','California','2017-03-12 00:00:00',7.42),(4595,94,211,'2016-07-03 00:00:00','Shipped','2016-10-04 00:00:00','Check','1337 Hooker Trail',NULL,'Honolulu','United States','Charles Garrett','96810','Hawaii','2016-05-08 00:00:00',9.57),(4596,56,216,'2016-07-08 00:00:00','New','2016-07-12 00:00:00','Check','1 Magdeline Lane',NULL,'Orlando','United States','Michelle Butler','32813','Florida','2017-02-28 00:00:00',7.05),(4597,26,217,'2016-09-24 00:00:00','Complete','2017-02-08 00:00:00','Cash','3677 Donald Alley',NULL,'Carol Stream','United States','Howard Reyes','60351','Illinois','2016-10-05 00:00:00',7.62),(4598,76,212,'2016-04-13 00:00:00','New','2016-10-23 00:00:00','Check','838 Becker Plaza',NULL,'Laredo','United States','Eugene Kelly','78044','Texas','2016-08-10 00:00:00',4.90),(4599,29,208,'2016-04-16 00:00:00','Complete','2017-01-14 00:00:00','Check','0 Dayton Place',NULL,'Rochester','United States','Jimmy Mcdonald','14646','New York','2016-05-15 00:00:00',1.56),(4600,2,208,'2016-04-26 00:00:00','On Hold','2017-01-22 00:00:00','Cash','7131 Scoville Terrace',NULL,'Phoenix','United States','Stephen Jacobs','85020','Arizona','2016-04-06 00:00:00',4.52);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `content` longtext NOT NULL,
  `description` varchar(250) NOT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`form_id`),
  UNIQUE KEY `UK_mchce1gm7f6otpphxd6ixsdps` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discontinued` int(11) DEFAULT NULL,
  `list_price` bigint(20) DEFAULT NULL,
  `minimum_reorder_quantity` int(11) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity_per_unit` varchar(255) DEFAULT NULL,
  `reorder_level` int(11) DEFAULT NULL,
  `standard_cost` bigint(20) DEFAULT NULL,
  `target_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=621 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (601,'Camera',NULL,1,1123,10,'P1','Nikon D810','50',10,1167,75),(602,'Camera',NULL,0,1294,15,'P2','Canon EOS 5D Mark IV','56',15,1383,90),(603,'Laptop',NULL,0,1394,30,'P3','Dell XPS 13','56',20,1483,95),(604,'Tablet',NULL,0,294,50,'P4','iPad Air','56',75,383,180),(605,'Laptop',NULL,0,794,15,'P5','Acer Aspire S 13','56',15,883,40),(606,'Phone',NULL,1,512,20,'P6','Nexus 6','79',10,634,75),(607,'Laptop',NULL,1,1309,10,'P7','ThinkPad T365','92',30,1441,100),(608,'Phone',NULL,1,462,20,'P8','Moto Z','54',20,538,75),(609,'Tablet',NULL,1,482,15,'P9','HTC 10','58',5,548,50),(610,'Laptop',NULL,1,1577,30,'P10','MacBook Pro 13.3','11',40,1626,120),(611,'Camera',NULL,1,723,15,'P11','Nikon D500','50',25,867,75),(612,'Camera',NULL,0,794,5,'P12','Pentax K-1','56',10,883,50),(613,'Laptop',NULL,0,1094,5,'P13','Asus Zenbook Ux305','56',10,1183,55),(614,'Laptop',NULL,0,1294,10,'P14','HP Envy m7-n109dx 17.3','56',10,1383,50),(615,'Tablet',NULL,0,1594,50,'P15','Microsft Surface Book','56',80,1683,200),(616,'Phone',NULL,1,712,50,'P16','Apple iPhone 7','79',100,834,250),(617,'Phone',NULL,1,609,20,'P17','Google Pixel','92',30,641,100),(618,'Phone',NULL,1,562,10,'P18','Samsung Galaxy S7','54',15,538,75),(619,'Tablet',NULL,1,482,15,'P19','Samasung Note','58',15,548,75),(620,'Laptop',NULL,1,1009,10,'P20','Chromebook 11.6','11',14,1079,80);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_bcf_exception_rules`
--

DROP TABLE IF EXISTS `rn_bcf_exception_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_bcf_exception_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tech_stack` varchar(45) DEFAULT NULL,
  `object_type` varchar(45) DEFAULT NULL,
  `sub_object_type` varchar(45) DEFAULT NULL,
  `object_name_variable` varchar(45) DEFAULT NULL,
  `object_name_dynamic_string` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_bcf_exception_rules`
--

LOCK TABLES `rn_bcf_exception_rules` WRITE;
/*!40000 ALTER TABLE `rn_bcf_exception_rules` DISABLE KEYS */;
INSERT INTO `rn_bcf_exception_rules` VALUES (1,'Angular-Springboot-Mysql','form','onlyHeader','controller_name_first_upper','Nil_final_controller','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(2,'Angular-Springboot-Mysql','form','onlyHeader','table_name_first_upper','Rn_nil_final','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(3,'Angular-Springboot-Mysql','form','onlyHeader','table_name_lower','rn_nil_final','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(4,'Angular-Springboot-Mysql','form','onlyHeader','table_name_upper','RN_NIL_FINAL','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(5,'Angular-Springboot-Mysql','form','onlyHeader','service_name_first_upper','Nil_final_service','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(6,'Angular-Springboot-Mysql','form','onlyHeader','service_name_lower','nil_final_service','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(7,'Angular-Springboot-Mysql','form','onlyHeader','service_impl_name_first_upper','Nil_final_serviceimpl','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(8,'Angular-Springboot-Mysql','form','onlyHeader','repository_name_first_upper','Rn_header_test1_repository','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(9,'Angular-Springboot-Mysql','form','onlyHeader','repository_name_lower','rn_header_test1_repository','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(10,'Angular-Springboot-Mysql','form','onlyHeader','ng_add_form_component_name','AddRn_header_test1Component','2020-12-22 20:07:01',1,'2020-12-22 20:07:01',NULL,NULL),(11,'Angular-Springboot-Mysql','form','onlyHeader','ng_all_grid_view_component_name','AllRn_header_test1Component','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(12,'Angular-Springboot-Mysql','form','onlyHeader','ng_read_only_component_name','Rn_header_test1DetailsComponent','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(13,'Angular-Springboot-Mysql','form','onlyHeader','ng_edit_component_name','EditRn_header_test1Component','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(14,'Angular-Springboot-Mysql','form','onlyHeader','ng_extension_add_component_name','AddExtRn_header_test1Component','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(15,'Angular-Springboot-Mysql','form','onlyHeader','ng_routing_module_ts_name','Rn_header_test1RoutingModule','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(16,'Angular-Springboot-Mysql','form','onlyHeader','ng_component_ts_name','Rn_header_test1Component','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(17,'Angular-Springboot-Mysql','form','onlyHeader','ng_module_ts_name','Rn_header_test1Module','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(18,'Angular-Springboot-Mysql','form','onlyHeader','ng_service_ts_name','Rn_header_test1Service','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(19,'Angular-Springboot-Mysql','form','onlyHeader','ng_model_ts_name','Rn_header_test1_t','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(20,'Angular-Springboot-Mysql','form','onlyHeader','ng_file_name','rn_header_test1','2020-12-22 20:07:02',1,'2020-12-22 20:07:02',NULL,NULL),(21,'SpringMVC-Hibernate-Mysql','form','onlyHeader','dao_name_lower','nil_final_dao','2021-01-07 23:33:00',1,'2021-01-07 23:33:00',NULL,NULL),(22,'SpringMVC-Hibernate-Mysql','form','onlyHeader','dao_name_first_upper','Nil_final_dao','2021-01-07 23:33:00',1,'2021-01-07 23:33:00',NULL,NULL);
/*!40000 ALTER TABLE `rn_bcf_exception_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_bcf_extractor_params_t`
--

DROP TABLE IF EXISTS `rn_bcf_extractor_params_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_bcf_extractor_params_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tech_stack` varchar(255) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `sub_object_type` varchar(255) DEFAULT NULL,
  `file_name_var` varchar(255) DEFAULT NULL,
  `file_name_dynamic_string` varchar(255) DEFAULT NULL,
  `name_string` varchar(255) DEFAULT NULL,
  `address_string` longtext,
  `description` varchar(255) DEFAULT NULL,
  `file_code` varchar(255) DEFAULT NULL,
  `moved_address_string` longtext,
  `reference_address_string` longtext,
  `is_creation_enabled` bit(1) DEFAULT NULL,
  `is_extraction_enabled` bit(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `header_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `header_id` (`header_id`),
  CONSTRAINT `rn_bcf_extractor_params_t_ibfk_1` FOREIGN KEY (`header_id`) REFERENCES `rn_bcf_extractor_t` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_bcf_extractor_params_t`
--

LOCK TABLES `rn_bcf_extractor_params_t` WRITE;
/*!40000 ALTER TABLE `rn_bcf_extractor_params_t` DISABLE KEYS */;
INSERT INTO `rn_bcf_extractor_params_t` VALUES (34,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Nil_final_controller.java','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/java/com/realnet/test_module1/controller/Nil_final_controller.java','java','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Nil_final_controller.java','/src/main/java/com/realnet/test_module1/controller/Nil_final_controller.java',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:01',NULL,3,4),(35,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Record_updateController.java','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/java/com/realnet/test_module1/controller/Record_updateController.java','java','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Record_updateController.java','/src/main/java/com/realnet/test_module1/controller/Record_updateController.java',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:01',NULL,3,4),(36,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Nil_final_dao.java','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/java/com/realnet/test_module1/dao/Nil_final_dao.java','java','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Nil_final_dao.java','/src/main/java/com/realnet/test_module1/dao/Nil_final_dao.java',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:01',NULL,3,4),(37,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Nil_final_daoimpl.java','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/java/com/realnet/test_module1/dao/Nil_final_daoimpl.java','java','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Nil_final_daoimpl.java','/src/main/java/com/realnet/test_module1/dao/Nil_final_daoimpl.java',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:01',NULL,3,4),(38,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Rn_nil_final.java','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/java/com/realnet/test_module1/model/Rn_nil_final.java','java','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Rn_nil_final.java','/src/main/java/com/realnet/test_module1/model/Rn_nil_final.java',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:02',NULL,3,4),(39,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Nil_final_service.java','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/java/com/realnet/test_module1/service/Nil_final_service.java','java','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Nil_final_service.java','/src/main/java/com/realnet/test_module1/service/Nil_final_service.java',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:02',NULL,3,4),(40,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Nil_final_serviceimpl.java','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/java/com/realnet/test_module1/service/Nil_final_serviceimpl.java','java','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Nil_final_serviceimpl.java','/src/main/java/com/realnet/test_module1/service/Nil_final_serviceimpl.java',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:02',NULL,3,4),(41,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'rn_nil_final_add_grid.jsp','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_add_grid.jsp','jsp','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/rn_nil_final_add_grid.jsp','/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_add_grid.jsp',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:02',NULL,3,4),(42,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'rn_nil_final_add_grid2.jsp','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_add_grid2.jsp','jsp','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/rn_nil_final_add_grid2.jsp','/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_add_grid2.jsp',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:02',NULL,3,4),(43,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'rn_nil_final_extension.jsp','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_extension.jsp','jsp','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/rn_nil_final_extension.jsp','/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_extension.jsp',_binary '',_binary '','2020-12-19 13:27:59',11,'2020-12-19 13:28:02',NULL,3,4),(44,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'rn_nil_final_ext_Readonly.jsp','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_ext_Readonly.jsp','jsp','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/rn_nil_final_ext_Readonly.jsp','/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_ext_Readonly.jsp',_binary '',_binary '','2020-12-19 13:28:00',11,'2020-12-19 13:28:02',NULL,3,4),(45,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'rn_nil_final_ext_Update.jsp','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_ext_Update.jsp','jsp','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/rn_nil_final_ext_Update.jsp','/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/rn_nil_final_ext_Update.jsp',_binary '',_binary '','2020-12-19 13:28:00',11,'2020-12-19 13:28:02',NULL,3,4),(46,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Rn_nil_final_grid.jsp','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/Rn_nil_final_grid.jsp','jsp','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Rn_nil_final_grid.jsp','/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/Rn_nil_final_grid.jsp',_binary '',_binary '','2020-12-19 13:28:00',11,'2020-12-19 13:28:02',NULL,3,4),(47,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Rn_nil_final_readonly.jsp','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/Rn_nil_final_readonly.jsp','jsp','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Rn_nil_final_readonly.jsp','/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/Rn_nil_final_readonly.jsp',_binary '',_binary '','2020-12-19 13:28:00',11,'2020-12-19 13:28:02',NULL,3,4),(48,'Angular-SpringBoot-Mysql','form','only header',NULL,NULL,'Rn_nil_final_update.jsp','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/Rn_nil_final_update.jsp','jsp','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Rn_nil_final_update.jsp','/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/Rn_nil_final_update.jsp',_binary '',_binary '','2020-12-19 13:28:00',11,'2020-12-19 13:28:02',NULL,3,4),(49,'Angular-SpringBoot-Mysql','form','only header','','','Rn_nil_final_view.jsp','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/spring_mvc_header_only_project/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/Rn_nil_final_view.jsp','jsp','200','D:/Office Project/BACKUP PROJECT/Angular-SpringBoot-REST-JWT-master/src/main/resources/extracted-files/spring_mvc_header_only_project_1608364678373/Rn_nil_final_view.jsp','/src/main/webapp/WEB-INF/tiles/acemaster/test_module1/Rn_nil_final_view.jsp',_binary '',_binary '','2020-12-19 13:28:01',11,'2021-01-21 20:05:53',1,3,4);
/*!40000 ALTER TABLE `rn_bcf_extractor_params_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_bcf_extractor_t`
--

DROP TABLE IF EXISTS `rn_bcf_extractor_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_bcf_extractor_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_type` varchar(255) DEFAULT NULL,
  `sub_object_type` varchar(255) DEFAULT NULL,
  `tech_stack` varchar(255) DEFAULT NULL,
  `tech_stack_key` varchar(255) DEFAULT NULL,
  `form_type_name` varchar(255) DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `sample_file_name` varchar(255) DEFAULT NULL,
  `std_wf_name` varchar(255) DEFAULT NULL,
  `extractor_stage` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_bcf_extractor_t`
--

LOCK TABLES `rn_bcf_extractor_t` WRITE;
/*!40000 ALTER TABLE `rn_bcf_extractor_t` DISABLE KEYS */;
INSERT INTO `rn_bcf_extractor_t` VALUES (4,'form','only header','Angular-SpringBoot-Mysql','smpy','HO','icon','spring_mvc_header_only_project.zip','HO',NULL,'2020-12-19 13:27:58',11,'2020-12-19 13:27:58',NULL,3);
/*!40000 ALTER TABLE `rn_bcf_extractor_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_bcf_rules`
--

DROP TABLE IF EXISTS `rn_bcf_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_bcf_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) DEFAULT NULL,
  `rule_name` varchar(255) DEFAULT NULL,
  `tech_stack` varchar(255) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `sub_object_type` varchar(255) DEFAULT NULL,
  `file_code` varchar(255) DEFAULT NULL,
  `rule_type` varchar(255) DEFAULT NULL,
  `identifier_start_string` longtext,
  `identifier_end_string` longtext,
  `replacement_string` longtext,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_bcf_rules`
--

LOCK TABLES `rn_bcf_rules` WRITE;
/*!40000 ALTER TABLE `rn_bcf_rules` DISABLE KEYS */;
INSERT INTO `rn_bcf_rules` VALUES (1,NULL,'java_model_who_columns','Angular-SpringBoot-Mysql','form','only header','','','// java_model_who_columns_start','// java_model_who_columns_end','model_class_who_columns +','2020-12-22 14:20:36',1,'2020-12-22 14:20:36',NULL,NULL),(2,NULL,'java_model_datatype','Angular-SpringBoot-Mysql','form','only header','','','// java_model_datatype_var_start','// java_model_datatype_var_end','model_class_datatype_variables +','2020-12-22 14:20:36',1,'2020-12-22 14:20:36',NULL,NULL),(3,NULL,'java_model_attribute_flex','Angular-SpringBoot-Mysql','form','only header','','','// java_model_attribute_flex_var_start','// java_model_attribute_flex_var_end','model_class_attribute_flex_variables +','2020-12-22 14:20:36',1,'2020-12-22 14:20:36',NULL,NULL),(4,NULL,'java_model_datatype_getter_setter','Angular-SpringBoot-Mysql','form','only header','','','// java_model_datatype_getter_setter_start','// java_model_datatype_getter_setter_end','model_class_getter_setter_attribute +','2020-12-22 14:20:36',1,'2020-12-22 14:20:36',NULL,NULL),(5,NULL,'java_model_attribute_flex_getter_setter','Angular-SpringBoot-Mysql','form','only header','','','// java_model_attribute_flex_getter_setter_start','// java_model_attribute_flex_getter_setter_end','model_class_attribute_flex_getter_setter +','2020-12-22 14:20:36',1,'2020-12-22 14:20:36',NULL,NULL),(6,NULL,'java_service_impl_getter_settter','Angular-SpringBoot-Mysql','form','only header','','','// java_service_impl_getter_settter_start','// java_service_impl_getter_settter_end','service_impl_class_get_set_attribute +','2020-12-22 14:20:36',1,'2020-12-22 14:20:36',NULL,NULL),(7,NULL,'ng_model_datatype','Angular-SpringBoot-Mysql','form','only header','','','// ng_model_datatype_start','// ng_model_datatype_end','ng_header_model_ts_attribute +','2020-12-22 14:20:36',1,'2020-12-22 14:20:36',NULL,NULL),(8,NULL,'ng_all_ts_default_columns','Angular-SpringBoot-Mysql','form','only header','','','// ng_all_ts_default_columns_start','// ng_all_ts_default_columns_end','ng_all_grid_view_component_ts_default_columns +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(9,NULL,'ng_all_ts_search_string','Angular-SpringBoot-Mysql','form','only header','','','// ng_all_ts_search_string_start','// ng_all_ts_search_string_end','ng_all_grid_view_component_ts_search_string.substring(0, ng_all_grid_view_component_ts_search_string.length() - 1) +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(10,NULL,'ng_all_ts_sort_string','Angular-SpringBoot-Mysql','form','only header','','','// ng_all_ts_sort_string_start','// ng_all_ts_sort_string_end','ng_all_grid_view_component_ts_sort_string +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(11,NULL,'ng_read_only_html_datatype_th','Angular-SpringBoot-Mysql','form','only header','','','<!-- ng_read_only_html_datatype_th_start -->','<!-- ng_read_only_html_datatype_th_end -->','ng_read_only_form_component_html_datatype_th +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(12,NULL,'ng_read_only_html_datatype_td','Angular-SpringBoot-Mysql','form','only header','','','<!-- ng_read_only_html_datatype_td_start -->','<!-- ng_read_only_html_datatype_td_end -->','ng_read_only_form_component_html_datatype_td +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(13,NULL,'ng_all_html_datatype','Angular-SpringBoot-Mysql','form','only header','','','<!-- ng_all_html_datatype_start -->','<!-- ng_all_html_datatype_end -->','ng_all_grid_view_component_html_datatype_attribute +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(14,NULL,'ng_add_html_datatype','Angular-SpringBoot-Mysql','form','only header','','','<!-- ng_add_html_datatype_start -->','<!-- ng_add_html_datatype_end -->','ng_add_form_component_html_datatype_attribute +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(15,NULL,'ng_add_ts_validation_variables','Angular-SpringBoot-Mysql','form','only header','','','// ng_add_ts_validation_variables_start','// ng_add_ts_validation_variables_end','ng_add_form_component_ts_validation_var +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(16,NULL,'ng_edit_html_datatype','Angular-SpringBoot-Mysql','form','only header','','','<!-- ng_edit_html_datatype_start -->','<!-- ng_edit_html_datatype_end -->','ng_edit_form_component_html_datatype_attribute +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(17,NULL,'ng_edit_html_flex_attribute_variables','Angular-SpringBoot-Mysql','form','only header','','','<!-- ng_edit_html_attribute_flex_start -->','<!-- ng_edit_html_attribute_flex_end -->','ng_edit_form_component_html_flex_attribute +','2020-12-22 14:20:37',1,'2020-12-22 14:20:37',NULL,NULL),(18,NULL,'ng_extension_add_html_flex_attribute_variables','Angular-SpringBoot-Mysql','form','only header','','','<!-- ng_extension_add_html_attribute_flex_start -->','<!-- ng_extension_add_html_attribute_flex_end -->','ng_extension_add_form_component_html_flex_attribute +','2020-12-22 14:20:38',1,'2020-12-22 14:20:38',NULL,NULL),(19,NULL,'ng_add_html_button','Angular-SpringBoot-Mysql','form','only header','','','<!-- ng_add_html_button_start -->','<!-- ng_add_html_button_end -->','ng_add_form_component_html_button_attribute +','2020-12-22 14:20:38',1,'2020-12-22 14:20:38',NULL,NULL),(20,NULL,'java_model_who_columns','SpringMVC-Hibernate-Mysql','api','only header','','','// java_model_who_columns_start','// java_model_who_columns_end','model_class_who_columns +','2020-12-22 14:23:06',1,'2020-12-22 14:23:06',NULL,NULL),(21,NULL,'java_model_datatype','SpringMVC-Hibernate-Mysql','api','only header','','','// java_model_datatype_var_start','// java_model_datatype_var_end','model_class_datatype_variables +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(22,NULL,'java_model_attribute_flex','SpringMVC-Hibernate-Mysql','api','only header','','','// java_model_attribute_flex_var_start','// java_model_attribute_flex_var_end','model_class_attribute_flex_variables +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(23,NULL,'java_model_datatype_getter_setter','SpringMVC-Hibernate-Mysql','api','only header','','','// java_model_datatype_getter_setter_start','// java_model_datatype_getter_setter_end','model_class_getter_setter_attribute +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(24,NULL,'java_model_attribute_flex_getter_setter','SpringMVC-Hibernate-Mysql','api','only header','','','// java_model_attribute_flex_getter_setter_start','// java_model_attribute_flex_getter_setter_end','model_class_attribute_flex_getter_setter +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(25,NULL,'java_service_impl_getter_settter','SpringMVC-Hibernate-Mysql','api','only header','','','// java_service_impl_getter_settter_start','// java_service_impl_getter_settter_end','service_impl_class_get_set_attribute +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(26,NULL,'ng_model_datatype','SpringMVC-Hibernate-Mysql','api','only header','','','// ng_model_datatype_start','// ng_model_datatype_end','ng_header_model_ts_attribute +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(27,NULL,'ng_all_ts_default_columns','SpringMVC-Hibernate-Mysql','api','only header','','','// ng_all_ts_default_columns_start','// ng_all_ts_default_columns_end','ng_all_grid_view_component_ts_default_columns +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(28,NULL,'ng_all_ts_search_string','SpringMVC-Hibernate-Mysql','api','only header','','','// ng_all_ts_search_string_start','// ng_all_ts_search_string_end','ng_all_grid_view_component_ts_search_string.substring(0, ng_all_grid_view_component_ts_search_string.length() - 1) +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(29,NULL,'ng_all_ts_sort_string','SpringMVC-Hibernate-Mysql','api','only header','','','// ng_all_ts_sort_string_start','// ng_all_ts_sort_string_end','ng_all_grid_view_component_ts_sort_string +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(30,NULL,'ng_read_only_html_datatype_th','SpringMVC-Hibernate-Mysql','api','only header','','','<!-- ng_read_only_html_datatype_th_start -->','<!-- ng_read_only_html_datatype_th_end -->','ng_read_only_form_component_html_datatype_th +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(31,NULL,'ng_read_only_html_datatype_td','SpringMVC-Hibernate-Mysql','api','only header','','','<!-- ng_read_only_html_datatype_td_start -->','<!-- ng_read_only_html_datatype_td_end -->','ng_read_only_form_component_html_datatype_td +','2020-12-22 14:23:07',1,'2020-12-22 14:23:07',NULL,NULL),(32,NULL,'ng_all_html_datatype','SpringMVC-Hibernate-Mysql','api','only header','','','<!-- ng_all_html_datatype_start -->','<!-- ng_all_html_datatype_end -->','ng_all_grid_view_component_html_datatype_attribute +','2020-12-22 14:23:08',1,'2020-12-22 14:23:08',NULL,NULL),(33,NULL,'ng_add_html_datatype','SpringMVC-Hibernate-Mysql','api','only header','','','<!-- ng_add_html_datatype_start -->','<!-- ng_add_html_datatype_end -->','ng_add_form_component_html_datatype_attribute +','2020-12-22 14:23:08',1,'2020-12-22 14:23:08',NULL,NULL),(34,NULL,'ng_add_ts_validation_variables','SpringMVC-Hibernate-Mysql','api','only header','','','// ng_add_ts_validation_variables_start','// ng_add_ts_validation_variables_end','ng_add_form_component_ts_validation_var +','2020-12-22 14:23:08',1,'2020-12-22 14:23:08',NULL,NULL),(35,NULL,'ng_edit_html_datatype','SpringMVC-Hibernate-Mysql','api','only header','','','<!-- ng_edit_html_datatype_start -->','<!-- ng_edit_html_datatype_end -->','ng_edit_form_component_html_datatype_attribute +','2020-12-22 14:23:08',1,'2020-12-22 14:23:08',NULL,NULL),(36,NULL,'ng_edit_html_flex_attribute_variables','SpringMVC-Hibernate-Mysql','api','only header','','','<!-- ng_edit_html_attribute_flex_start -->','<!-- ng_edit_html_attribute_flex_end -->','ng_edit_form_component_html_flex_attribute +','2020-12-22 14:23:08',1,'2020-12-22 14:23:08',NULL,NULL),(37,NULL,'ng_extension_add_html_flex_attribute_variables','SpringMVC-Hibernate-Mysql','api','only header','','','<!-- ng_extension_add_html_attribute_flex_start -->','<!-- ng_extension_add_html_attribute_flex_end -->','ng_extension_add_form_component_html_flex_attribute +','2020-12-22 14:23:08',1,'2020-12-22 14:23:08',NULL,NULL),(38,NULL,'ng_add_html_button','SpringMVC-Hibernate-Mysql','api','only header','','','<!-- ng_add_html_button_start -->','<!-- ng_add_html_button_end -->','ng_add_form_component_html_button_attribute +','2020-12-22 14:23:08',1,'2020-12-22 14:23:08',NULL,NULL),(39,NULL,'java_model_who_columns','MEAN','api','only header','','','// java_model_who_columns_start','// java_model_who_columns_end','model_class_who_columns +','2020-12-22 19:37:16',11,'2020-12-22 19:37:16',NULL,3),(40,NULL,'java_model_datatype','MEAN','api','only header','','','// java_model_datatype_var_start','// java_model_datatype_var_end','model_class_datatype_variables +','2020-12-22 19:37:16',11,'2020-12-22 19:37:16',NULL,3),(41,NULL,'java_model_attribute_flex','MEAN','api','only header','','','// java_model_attribute_flex_var_start','// java_model_attribute_flex_var_end','model_class_attribute_flex_variables +','2020-12-22 19:37:16',11,'2020-12-22 19:37:16',NULL,3),(42,NULL,'java_model_datatype_getter_setter','MEAN','api','only header','','','// java_model_datatype_getter_setter_start','// java_model_datatype_getter_setter_end','model_class_getter_setter_attribute +','2020-12-22 19:37:16',11,'2020-12-22 19:37:16',NULL,3),(43,NULL,'java_model_attribute_flex_getter_setter','MEAN','api','only header','','','// java_model_attribute_flex_getter_setter_start','// java_model_attribute_flex_getter_setter_end','model_class_attribute_flex_getter_setter +','2020-12-22 19:37:16',11,'2020-12-22 19:37:16',NULL,3),(44,NULL,'java_service_impl_getter_settter','MEAN','api','only header','','','// java_service_impl_getter_settter_start','// java_service_impl_getter_settter_end','service_impl_class_get_set_attribute +','2020-12-22 19:37:16',11,'2020-12-22 19:37:16',NULL,3),(45,NULL,'ng_model_datatype','MEAN','api','only header','','','// ng_model_datatype_start','// ng_model_datatype_end','ng_header_model_ts_attribute +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(46,NULL,'ng_all_ts_default_columns','MEAN','api','only header','','','// ng_all_ts_default_columns_start','// ng_all_ts_default_columns_end','ng_all_grid_view_component_ts_default_columns +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(47,NULL,'ng_all_ts_search_string','MEAN','api','only header','','','// ng_all_ts_search_string_start','// ng_all_ts_search_string_end','ng_all_grid_view_component_ts_search_string.substring(0, ng_all_grid_view_component_ts_search_string.length() - 1) +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(48,NULL,'ng_all_ts_sort_string','MEAN','api','only header','','','// ng_all_ts_sort_string_start','// ng_all_ts_sort_string_end','ng_all_grid_view_component_ts_sort_string +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(49,NULL,'ng_read_only_html_datatype_th','MEAN','api','only header','','','<!-- ng_read_only_html_datatype_th_start -->','<!-- ng_read_only_html_datatype_th_end -->','ng_read_only_form_component_html_datatype_th +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(50,NULL,'ng_read_only_html_datatype_td','MEAN','api','only header','','','<!-- ng_read_only_html_datatype_td_start -->','<!-- ng_read_only_html_datatype_td_end -->','ng_read_only_form_component_html_datatype_td +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(51,NULL,'ng_all_html_datatype','MEAN','api','only header','','','<!-- ng_all_html_datatype_start -->','<!-- ng_all_html_datatype_end -->','ng_all_grid_view_component_html_datatype_attribute +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(52,NULL,'ng_add_html_datatype','MEAN','api','only header','','','<!-- ng_add_html_datatype_start -->','<!-- ng_add_html_datatype_end -->','ng_add_form_component_html_datatype_attribute +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(53,NULL,'ng_add_ts_validation_variables','MEAN','api','only header','','','// ng_add_ts_validation_variables_start','// ng_add_ts_validation_variables_end','ng_add_form_component_ts_validation_var +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(54,NULL,'ng_edit_html_datatype','MEAN','api','only header','','','<!-- ng_edit_html_datatype_start -->','<!-- ng_edit_html_datatype_end -->','ng_edit_form_component_html_datatype_attribute +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(55,NULL,'ng_edit_html_flex_attribute_variables','MEAN','api','only header','','','<!-- ng_edit_html_attribute_flex_start -->','<!-- ng_edit_html_attribute_flex_end -->','ng_edit_form_component_html_flex_attribute +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(56,NULL,'ng_extension_add_html_flex_attribute_variables','MEAN','api','only header','','','<!-- ng_extension_add_html_attribute_flex_start -->','<!-- ng_extension_add_html_attribute_flex_end -->','ng_extension_add_form_component_html_flex_attribute +','2020-12-22 19:37:17',11,'2020-12-22 19:37:17',NULL,3),(57,NULL,'ng_add_html_button','MEAN','api','only header','','','<!-- ng_add_html_button_start -->','<!-- ng_add_html_button_end -->','ng_add_form_component_html_button_attribute +','2020-12-22 19:37:18',11,'2020-12-22 19:37:18',NULL,3);
/*!40000 ALTER TABLE `rn_bcf_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_bcf_technology_stack`
--

DROP TABLE IF EXISTS `rn_bcf_technology_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_bcf_technology_stack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `base_prj_file_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `tech_stack` varchar(255) DEFAULT NULL,
  `tech_stack_key` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_bcf_technology_stack`
--

LOCK TABLES `rn_bcf_technology_stack` WRITE;
/*!40000 ALTER TABLE `rn_bcf_technology_stack` DISABLE KEYS */;
INSERT INTO `rn_bcf_technology_stack` VALUES (1,1,1,'angular_backend_project','2020-12-23 17:13:06',11,'spting boot, mysql, angular','Angular-SpringBoot-Mysql','aspmy','2020-12-23 23:46:18',11);
/*!40000 ALTER TABLE `rn_bcf_technology_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_cff_action_builder_header_t`
--

DROP TABLE IF EXISTS `rn_cff_action_builder_header_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_cff_action_builder_header_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  `file_location` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `technology_stack` varchar(255) DEFAULT NULL,
  `rn_fb_header_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKahlp0hsa0epm54ct1heo2il6m` (`rn_fb_header_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_cff_action_builder_header_t`
--

LOCK TABLES `rn_cff_action_builder_header_t` WRITE;
/*!40000 ALTER TABLE `rn_cff_action_builder_header_t` DISABLE KEYS */;
INSERT INTO `rn_cff_action_builder_header_t` VALUES (2,1,'2021-01-13 19:14:19',1,'2021-01-13 19:14:19',1,'Test Action','TestController','src/main/java/com/realnet/builders/TestController.java','testMethod','SpringMVC-Hibernate-Mysql',6);
/*!40000 ALTER TABLE `rn_cff_action_builder_header_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_cff_action_builder_lines_t`
--

DROP TABLE IF EXISTS `rn_cff_action_builder_lines_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_cff_action_builder_lines_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `action_type1` varchar(255) DEFAULT NULL,
  `action_type2` varchar(255) DEFAULT NULL,
  `assignment` varchar(255) DEFAULT NULL,
  `conditions` varchar(255) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `equation` varchar(255) DEFAULT NULL,
  `forward` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `variable_name` varchar(255) DEFAULT NULL,
  `header_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi08p508vvlv1h0benua5pvhrh` (`header_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_cff_action_builder_lines_t`
--

LOCK TABLES `rn_cff_action_builder_lines_t` WRITE;
/*!40000 ALTER TABLE `rn_cff_action_builder_lines_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `rn_cff_action_builder_lines_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_cff_action_builder_rules_t`
--

DROP TABLE IF EXISTS `rn_cff_action_builder_rules_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_cff_action_builder_rules_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `action_type1` varchar(255) DEFAULT NULL,
  `action_type2` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_cff_action_builder_rules_t`
--

LOCK TABLES `rn_cff_action_builder_rules_t` WRITE;
/*!40000 ALTER TABLE `rn_cff_action_builder_rules_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `rn_cff_action_builder_rules_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_create_query_t`
--

DROP TABLE IF EXISTS `rn_create_query_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_create_query_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `is_build` bit(1) DEFAULT NULL,
  `create_query` varchar(255) DEFAULT NULL,
  `data` bit(1) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_create_query_t`
--

LOCK TABLES `rn_create_query_t` WRITE;
/*!40000 ALTER TABLE `rn_create_query_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `rn_create_query_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_dynamic_transaction`
--

DROP TABLE IF EXISTS `rn_dynamic_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_dynamic_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `comp1` varchar(255) DEFAULT NULL,
  `comp10` varchar(255) DEFAULT NULL,
  `comp11` varchar(255) DEFAULT NULL,
  `comp12` varchar(255) DEFAULT NULL,
  `comp13` varchar(255) DEFAULT NULL,
  `comp14` varchar(255) DEFAULT NULL,
  `comp15` varchar(255) DEFAULT NULL,
  `comp16` varchar(255) DEFAULT NULL,
  `comp17` varchar(255) DEFAULT NULL,
  `comp18` varchar(255) DEFAULT NULL,
  `comp19` varchar(255) DEFAULT NULL,
  `comp2` varchar(255) DEFAULT NULL,
  `comp20` varchar(255) DEFAULT NULL,
  `comp21` varchar(255) DEFAULT NULL,
  `comp22` varchar(255) DEFAULT NULL,
  `comp23` varchar(255) DEFAULT NULL,
  `comp24` varchar(255) DEFAULT NULL,
  `comp25` varchar(255) DEFAULT NULL,
  `comp3` varchar(255) DEFAULT NULL,
  `comp4` varchar(255) DEFAULT NULL,
  `comp5` varchar(255) DEFAULT NULL,
  `comp6` varchar(255) DEFAULT NULL,
  `comp7` varchar(255) DEFAULT NULL,
  `comp8` varchar(255) DEFAULT NULL,
  `comp9` varchar(255) DEFAULT NULL,
  `comp_l26` longtext,
  `comp_l27` longtext,
  `comp_l28` longtext,
  `comp_l29` longtext,
  `comp_l30` longtext,
  `form_id` int(11) DEFAULT NULL,
  `form_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_dynamic_transaction`
--

LOCK TABLES `rn_dynamic_transaction` WRITE;
/*!40000 ALTER TABLE `rn_dynamic_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `rn_dynamic_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_ext_field_t`
--

DROP TABLE IF EXISTS `rn_ext_field_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_ext_field_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `form_code` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `mapping` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_ext_field_t`
--

LOCK TABLES `rn_ext_field_t` WRITE;
/*!40000 ALTER TABLE `rn_ext_field_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `rn_ext_field_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_fb_header`
--

DROP TABLE IF EXISTS `rn_fb_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_fb_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `ui_name` varchar(255) DEFAULT NULL,
  `tech_stack` varchar(255) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `sub_object_type` varchar(255) DEFAULT NULL,
  `form_type` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `line_table_name` varchar(255) DEFAULT NULL,
  `multiline_table_name` varchar(255) DEFAULT NULL,
  `jsp_name` varchar(255) DEFAULT NULL,
  `form_code` varchar(255) DEFAULT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_impl_name` varchar(255) DEFAULT NULL,
  `dao_name` varchar(255) DEFAULT NULL,
  `dao_impl_name` varchar(255) DEFAULT NULL,
  `is_build` bit(1) DEFAULT NULL,
  `is_updated` bit(1) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `converted_table_name` varchar(255) DEFAULT NULL,
  `header_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiovlvev0uo95d08stayvyv9dr` (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_fb_header`
--

LOCK TABLES `rn_fb_header` WRITE;
/*!40000 ALTER TABLE `rn_fb_header` DISABLE KEYS */;
INSERT INTO `rn_fb_header` VALUES (4,2,'test1','Angular-SpringBoot-Mysql','form','only header','header_only',NULL,NULL,NULL,NULL,'test1_view',NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,'2021-01-08 17:06:35',1,'2021-01-08 18:11:41',1,1),(6,2,'test2','Angular-SpringBoot-Mysql','form','only header','header_only',NULL,NULL,NULL,NULL,'test1_view',NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,'2021-01-08 20:59:56',1,'2021-01-08 20:59:56',NULL,1),(7,2,'header_line_test','Angular-SpringBoot-Mysql','form','header line','header_line','header_line_test_header','header_line_test_t','header_line_test_t',NULL,'header_line_test_view',NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,'header_line_test_t_header','header_line_test','2021-01-22 16:55:47',1,'2021-01-22 16:55:47',1,1),(8,2,'only_line_test','Angular-SpringBoot-Mysql','form','only line','line_only','only_line_test_line','only_line_test_t','only_line_test_t',NULL,'only_line_test_view',NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,'only_line_test','2021-01-23 13:05:25',1,'2021-01-23 13:05:25',1,1);
/*!40000 ALTER TABLE `rn_fb_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_fb_lines`
--

DROP TABLE IF EXISTS `rn_fb_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_fb_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_id` int(11) NOT NULL,
  `form_code` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `mapping` varchar(255) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `type_field` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `key1` varchar(255) DEFAULT NULL,
  `type1` varchar(255) DEFAULT NULL,
  `type2` varchar(255) DEFAULT NULL,
  `form_type` varchar(255) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `section_num` int(11) DEFAULT NULL,
  `button_num` int(11) DEFAULT NULL,
  `line_table_name` varchar(255) DEFAULT NULL,
  `line_table_no` int(11) DEFAULT NULL,
  `is_mandatory` bit(1) DEFAULT NULL,
  `is_hidden` bit(1) DEFAULT NULL,
  `is_readonly` bit(1) DEFAULT NULL,
  `is_dependent` bit(1) DEFAULT NULL,
  `sequence` bit(1) DEFAULT NULL,
  `seq_name` varchar(255) DEFAULT NULL,
  `calculated_field` bit(1) DEFAULT NULL,
  `add_to_grid` bit(1) DEFAULT NULL,
  `default_1` bit(1) DEFAULT NULL,
  `default_sp` varchar(255) DEFAULT NULL,
  `default_sp_param` varchar(255) DEFAULT NULL,
  `default_type` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `dependent_sp_param` varchar(255) DEFAULT NULL,
  `dependent_on` varchar(255) DEFAULT NULL,
  `dependent_sp` varchar(255) DEFAULT NULL,
  `cal_sp` varchar(255) DEFAULT NULL,
  `cal_sp_param` varchar(255) DEFAULT NULL,
  `seq_sp` varchar(255) DEFAULT NULL,
  `seq_sp_param` varchar(255) DEFAULT NULL,
  `sp_for_autocomplete` bit(1) DEFAULT NULL,
  `sp_for_dropdown` bit(1) DEFAULT NULL,
  `sp_name_for_autocomplete` varchar(255) DEFAULT NULL,
  `sp_name_for_dropdown` varchar(255) DEFAULT NULL,
  `val_sp` varchar(255) DEFAULT NULL,
  `val_sp_param` varchar(255) DEFAULT NULL,
  `val_type` varchar(255) DEFAULT NULL,
  `validation_1` bit(1) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK35sl6nv4p7vl6gfbwixp1tllx` (`header_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_fb_lines`
--

LOCK TABLES `rn_fb_lines` WRITE;
/*!40000 ALTER TABLE `rn_fb_lines` DISABLE KEYS */;
INSERT INTO `rn_fb_lines` VALUES (22,4,'test1_view','section1','section1','N','section',NULL,NULL,'header_only','header','header_only',0,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 17:06:35',1,'2021-01-08 17:06:35',1),(23,4,'test1_view','select','id','int','id',NULL,'PRI','header_only','header','header_only',0,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 17:06:35',1,'2021-01-08 17:06:35',1),(24,4,'test1_view','label1','textfield1','varchar','textfield',NULL,'','header_only','header','header_only',1,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 17:06:35',1,'2021-01-08 17:06:35',1),(25,4,'test1_view','label2','textfield2','varchar','textfield',NULL,'','header_only','header','header_only',2,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 17:06:36',1,'2021-01-08 17:06:36',1),(26,4,'test1_view','label3','textfield3','varchar','textfield',NULL,'','header_only','header','header_only',3,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 17:06:36',1,'2021-01-08 17:06:36',1),(27,4,'test1_view','label4','textfield4','varchar','textfield',NULL,'','header_only','header','header_only',4,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 17:06:36',1,'2021-01-08 17:06:36',1),(28,4,'test1_view','submit','button1','N','button',NULL,'','header_only','header','header_only',0,0,1,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 17:06:36',1,'2021-01-08 17:06:36',1),(29,6,'test1_view','section1','section1','N','section',NULL,NULL,'header_only','header','header_only',0,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 20:59:56',1,'2021-01-08 20:59:56',1),(30,6,'test1_view','select','id','int','id',NULL,'PRI','header_only','header','header_only',0,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 20:59:57',1,'2021-01-08 20:59:57',1),(31,6,'test1_view','name','name','varchar','textfield',NULL,'','header_only','header','header_only',1,1,0,NULL,0,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 20:59:57',1,'2021-01-23 14:16:00',1),(32,6,'test1_view','class','class','int','textfield',NULL,'','header_only','header','header_only',2,1,0,NULL,0,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 20:59:57',1,'2021-01-23 14:16:49',1),(33,6,'test1_view','address','address','longtext','textarea',NULL,'','header_only','header','header_only',3,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 20:59:57',1,'2021-01-23 14:17:51',1),(34,6,'test1_view','label4','textfield4','varchar','textfield',NULL,'','header_only','header','header_only',4,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 20:59:57',1,'2021-01-08 20:59:57',1),(35,6,'test1_view','submit','button1','N','button',NULL,'','header_only','header','header_only',0,0,1,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-08 20:59:57',1,'2021-01-08 20:59:57',1),(36,7,'header_line_test_view','section1','section1','N','section',NULL,'','header_line','header','header_line',0,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(37,7,'header_line_test_view','select','id','int','id',NULL,'PRI','header_line','header','header_line',0,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(38,7,'header_line_test_view','label1','textfield1','varchar','textfield',NULL,'','header_line','header_only','header_line',1,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(39,7,'header_line_test_view','label2','textfield2','varchar','textfield',NULL,'','header_line','header_only','header_line',2,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(40,7,'header_line_test_view','label3','textfield3','varchar','textfield',NULL,'','header_line','header_only','header_line',3,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(41,7,'header_line_test_view','label4','textfield4','varchar','textfield',NULL,'','header_line','header_only','header_line',4,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(42,7,'header_line_test_view','line_section','line_section','N','line_section',NULL,'','header_line','line','header_line',0,0,0,NULL,1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(43,7,'header_line_test_view','select','l_id','int','l_id',NULL,'PRI','header_line','line','header_line',0,1,0,NULL,1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(44,7,'header_line_test_view','hid','id','int','hid',NULL,'hid','header_line','line','header_line',0,1,0,NULL,1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(45,7,'header_line_test_view','column5','l_textfield5','varchar','l_textfield',NULL,'','header_line','line','header_line',5,0,0,NULL,1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(46,7,'header_line_test_view','column6','l_textfield6','varchar','l_textfield',NULL,'','header_line','line','header_line',6,0,0,NULL,1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(47,7,'header_line_test_view','column7','l_textfield7','varchar','l_textfield',NULL,'','header_line','line','header_line',7,0,0,NULL,1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(48,7,'header_line_test_view','column8','l_textfield8','varchar','l_textfield',NULL,'','header_line','line','header_line',8,0,0,NULL,1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(49,7,'header_line_test_view','submit','button1','N','button',NULL,'','header_line','header','header_line',0,0,1,NULL,1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-22 16:55:48',1,'2021-01-22 16:55:48',1),(50,8,'only_line_test_view','section','section','N','section',NULL,'','line_only','line','line_only',0,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-23 13:05:26',1,'2021-01-23 13:05:26',1),(51,8,'only_line_test_view','select','id','int','id',NULL,'PRI','line_only','line','line_only',0,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-23 13:05:26',1,'2021-01-23 13:05:26',1),(52,8,'only_line_test_view','column1','textfield1','varchar','textfield',NULL,'','line_only','line','line_only',1,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-23 13:05:26',1,'2021-01-23 13:05:26',1),(53,8,'only_line_test_view','column2','textfield2','varchar','textfield',NULL,'','line_only','line','line_only',2,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-23 13:05:26',1,'2021-01-23 13:05:26',1),(54,8,'only_line_test_view','column3','textfield3','varchar','textfield',NULL,'','line_only','line','line_only',3,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-23 13:05:26',1,'2021-01-23 13:05:26',1),(55,8,'only_line_test_view','column4','textfield4','varchar','textfield',NULL,'','line_only','line','line_only',4,1,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-23 13:05:26',1,'2021-01-23 13:05:26',1),(56,8,'only_line_test_view','submit','button1','N','button',NULL,'','line_only','line','line_only',0,0,1,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',1,'2021-01-23 13:05:26',1,'2021-01-23 13:05:26',1),(61,7,'header_line_test_view','column9','textfield9','varchar','textfield',NULL,NULL,'header_line','line','header_line',9,0,0,NULL,0,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,'2021-01-23 19:53:02',1,'2021-01-23 19:53:02',1);
/*!40000 ALTER TABLE `rn_fb_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_forms_component_setup_t`
--

DROP TABLE IF EXISTS `rn_forms_component_setup_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_forms_component_setup_t` (
  `component_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `drop_values` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `mandatory` varchar(255) DEFAULT NULL,
  `mapping` varchar(255) DEFAULT NULL,
  `readonly` varchar(255) DEFAULT NULL,
  `sp` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`component_id`),
  KEY `FKmtx4j1faaytr7dxqv2ncwiblr` (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_forms_component_setup_t`
--

LOCK TABLES `rn_forms_component_setup_t` WRITE;
/*!40000 ALTER TABLE `rn_forms_component_setup_t` DISABLE KEYS */;
INSERT INTO `rn_forms_component_setup_t` VALUES (1,'2021-01-25 16:26:57',NULL,'2021-01-27 13:41:34',NULL,'enter name','name',NULL,'comp1',NULL,NULL,'textfield',1);
/*!40000 ALTER TABLE `rn_forms_component_setup_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_forms_setup_t`
--

DROP TABLE IF EXISTS `rn_forms_setup_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_forms_setup_t` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `button_caption` varchar(255) DEFAULT NULL,
  `form_desc` varchar(255) DEFAULT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `page_event` varchar(255) DEFAULT NULL,
  `related_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_forms_setup_t`
--

LOCK TABLES `rn_forms_setup_t` WRITE;
/*!40000 ALTER TABLE `rn_forms_setup_t` DISABLE KEYS */;
INSERT INTO `rn_forms_setup_t` VALUES (1,'2021-01-25 16:26:57',NULL,'2021-01-27 13:41:34',NULL,'submit','test 1','Address Book','OnClick','Menu');
/*!40000 ALTER TABLE `rn_forms_setup_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_func_register`
--

DROP TABLE IF EXISTS `rn_func_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_func_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `function_action_name` varchar(255) DEFAULT NULL,
  `function_icon` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_func_register`
--

LOCK TABLES `rn_func_register` WRITE;
/*!40000 ALTER TABLE `rn_func_register` DISABLE KEYS */;
INSERT INTO `rn_func_register` VALUES (1,'2020-06-10 22:02:00',NULL,NULL,NULL,'1',NULL,'menu-group','file-group','Menu Group',2),(2,'2020-06-10 22:02:00',NULL,NULL,NULL,'1',NULL,'menu-register','highlighter','Menu Register',2),(3,'2020-06-10 22:02:00',NULL,NULL,NULL,'1',NULL,'function-register','applications','Function Register',2);
/*!40000 ALTER TABLE `rn_func_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_instance_type_t`
--

DROP TABLE IF EXISTS `rn_instance_type_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_instance_type_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_instance_type_t`
--

LOCK TABLES `rn_instance_type_t` WRITE;
/*!40000 ALTER TABLE `rn_instance_type_t` DISABLE KEYS */;
INSERT INTO `rn_instance_type_t` VALUES (1,'Eclipse');
/*!40000 ALTER TABLE `rn_instance_type_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_instructor`
--

DROP TABLE IF EXISTS `rn_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_instructor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flex1` varchar(255) DEFAULT NULL,
  `flex2` varchar(255) DEFAULT NULL,
  `flex3` varchar(255) DEFAULT NULL,
  `flex4` varchar(255) DEFAULT NULL,
  `flex5` varchar(255) DEFAULT NULL,
  `extn1` varchar(255) DEFAULT NULL,
  `extn10` varchar(255) DEFAULT NULL,
  `extn11` varchar(255) DEFAULT NULL,
  `extn12` varchar(255) DEFAULT NULL,
  `extn13` varchar(255) DEFAULT NULL,
  `extn14` varchar(255) DEFAULT NULL,
  `extn15` varchar(255) DEFAULT NULL,
  `extn2` varchar(255) DEFAULT NULL,
  `extn3` varchar(255) DEFAULT NULL,
  `extn4` varchar(255) DEFAULT NULL,
  `extn5` varchar(255) DEFAULT NULL,
  `extn6` varchar(255) DEFAULT NULL,
  `extn7` varchar(255) DEFAULT NULL,
  `extn8` varchar(255) DEFAULT NULL,
  `extn9` varchar(255) DEFAULT NULL,
  `account_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_instructor`
--

LOCK TABLES `rn_instructor` WRITE;
/*!40000 ALTER TABLE `rn_instructor` DISABLE KEYS */;
INSERT INTO `rn_instructor` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','rajdeep','rajbanshi'),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','sandipan','saha'),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','niladri','sen'),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','abhishek','banerjee'),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','sayandeep','bhowmick'),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','titas','maity'),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','dip','chakraborty'),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','asif','baidya'),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'anus@gmail.com','anushree','sanyal'),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'trisha@gmail.com','trisha','das'),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'avijit@gmail.com','avijit','chakraborty'),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'dona@gmail.com','dona','sen'),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','disha','maitra'),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','sasa','saha'),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','vvvv','sen'),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','qqqq','banerjee'),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','saaaaayasndeep','bhowmick'),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','lllll','maity'),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','kkkkk','chakraborty'),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','ffffff','baidya'),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','rajaaQdesep','rajbanshi'),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','sandaaQipsan','saha'),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','nilaaQadri','sen'),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','abQhaaishek','banerjee'),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','sayanaadeep','bhowmick'),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','tiaatas','maity'),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','dittp','chakraborty'),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','attsif','baidya'),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'anus@gmail.com','anutttshree','sanyal'),(30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'trisha@gmail.com','trigggsha','das'),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'avijit@gmail.com','avijgggit','chakraborty'),(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'dona@gmail.com','dogggna','sen'),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','rgggajdeep','rajbanshi'),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','sangggdipan','saha'),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','nifgfladri','sen'),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','abhisfgfhek','banerjee'),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','safgfgyandeep','bhowmick'),(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','titfgfas','maity'),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','dfgfip','chakraborty'),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','asifgff','baidya'),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','fggfrajdeep','rajbanshi'),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','fgfgsandipan','saha'),(43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','ncxilgbgadri','sen'),(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','adghghbhishek','banerjee'),(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','sayandhyyueep','bhowmick'),(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','teritas','mereaity'),(47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','dipere','chakraborty'),(48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','asifcc','baidya'),(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'anus@gmail.com','anushrccee','sanyal'),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'trisha@gmail.com','trishawww','das'),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'avijit@gmail.com','avijiqqt','chakraborty'),(52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'dona@gmail.com','qqqdona','sen'),(53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','rajqqqdeep','rajbanshi'),(54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','sandipqqqqan','saha'),(55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','niladriwww','sen'),(56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','abhishewwwk','banerjee'),(57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','sayandeepbbb','bhowmick'),(58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','tbbbitas','maity'),(59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','dbbbip','chakraborty'),(60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','asbbbif','baidya'),(61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','rajdeAFep','rajbanshi'),(62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','sanSDFipan','saha'),(63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','nilaSDFdri','sen'),(64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','abhiSDFshek','banerjee'),(65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','sayaSDndeep','bhowmick'),(66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','tiAStas','maity'),(67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','diASp','chakraborty'),(68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','aASsif','baidya'),(69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'anus@gmail.com','anuASshree','sanyal'),(70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'trisha@gmail.com','triASsha','das'),(71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'avijit@gmail.com','avASCijit','chakraborty'),(72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'dona@gmail.com','donVa','sen'),(73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','rajCVdeep','rajbanshi'),(74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','saVndipan','saha'),(75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','nilVadri','sen'),(76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','abChishek','banerjee'),(77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','saCyandeep','bhowmick'),(78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','titCas','maity'),(79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','diCp','chakraborty'),(80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','asCif','baidya'),(81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','rajdeCep','rajbanshi'),(82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','saSndCipan','saha'),(83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','nilCadri','sen'),(84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','abhSCshek','banerjee'),(85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','saSyCandeep','bhowmick'),(86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','titSasCE','maity'),(87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','diCp','chakraborty'),(88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','asEif','baidya'),(89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'anus@gmail.com','anEushree','sanyal'),(90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'trisha@gmail.com','triEsha','das'),(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'avijit@gmail.com','avEijit','chakraborty'),(92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'dona@gmail.com','donEa','sen'),(93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','raEjdeep','rajbanshi'),(94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','sanEdipan','saha'),(95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','niladEri','sen'),(96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','abhEishek','banerjee'),(97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','sayEandeep','bhowmick'),(98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','tEitas','maity'),(99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','dEip','chakraborty'),(100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','aEsif','baidya'),(101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','rajSSdeep','rajbanshi'),(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','sandSSipan','saha'),(103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','nilaLSSdri','sen'),(104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','abLhishek','banerjee'),(105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','saLyandeep','bhowmick'),(106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','tLitas','maity'),(107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','diLp','chakraborty'),(108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','aLsif','baidya'),(109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'anus@gmail.com','anLushree','sanyal'),(110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'trisha@gmail.com','triLsha','das'),(111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'avijit@gmail.com','aviLjit','chakraborty'),(112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'dona@gmail.com','doLna','sen'),(113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'rjraj@gmail.com','rajLdeep','rajbanshi'),(114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sandy@gmail.com','sandLipan','saha'),(115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-04-25 17:17:36',NULL,'2020-07-26 18:10:59',NULL,'sen@gmail.com','niULladri','sen'),(116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-05-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'abhi@gmail.com','aLbhUishek','banerjee'),(117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-24 17:17:36',NULL,'2020-07-24 20:12:30',NULL,'sayndeep@gmail.com','sLLUayandeep','bhowmick'),(118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-10-22 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'titi@gmail.com','tiLUtas','maity'),(119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-09-04 17:17:36',NULL,'2020-10-24 20:12:30',NULL,'dipc@gmail.com','diUp','chakraborty'),(120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-08-24 18:17:36',NULL,'2020-07-24 20:12:30',NULL,'asif@gmail.com','asUif','baidya');
/*!40000 ALTER TABLE `rn_instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_lookup_values_t`
--

DROP TABLE IF EXISTS `rn_lookup_values_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_lookup_values_t` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOOKUP_CODE` longtext,
  `MEANING` longtext,
  `DESCRIPTION` longtext,
  `LOOKUP_TYPE` longtext,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ENABLED_FLAG` tinyint(1) DEFAULT NULL,
  `drop_value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_lookup_values_t`
--

LOCK TABLES `rn_lookup_values_t` WRITE;
/*!40000 ALTER TABLE `rn_lookup_values_t` DISABLE KEYS */;
INSERT INTO `rn_lookup_values_t` VALUES (1,'extn1','extn1','extn1','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:00',1,'2021-01-04 16:05:00',NULL),(2,'extn2','extn2','extn2','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:01',1,'2021-01-04 16:05:01',NULL),(3,'extn3','extn3','extn3','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:01',1,'2021-01-04 16:05:01',NULL),(4,'extn4','extn4','extn4','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:01',1,'2021-01-04 16:05:01',NULL),(5,'extn5','extn5','extn5','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:01',1,'2021-01-04 16:05:01',NULL),(6,'extn6','extn6','extn6','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:01',1,'2021-01-04 16:05:01',NULL),(7,'extn7','extn7','extn7','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:01',1,'2021-01-04 16:05:01',NULL),(8,'extn8','extn8','extn8','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:01',1,'2021-01-04 16:05:01',NULL),(9,'extn9','extn9','extn9','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:01',1,'2021-01-04 16:05:01',NULL),(10,'extn10','extn10','extn10','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:01',1,'2021-01-04 16:05:01',NULL),(11,'extn11','extn11','extn11','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(12,'extn12','extn12','extn12','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(13,'extn13','extn13','extn13','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(14,'extn14','extn14','extn14','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(15,'extn15','extn15','extn15','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(16,'FLEX1','FLEX1','FLEX1','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(17,'FLEX2','FLEX2','FLEX2','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(18,'FLEX3','FLEX3','FLEX3','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(19,'FLEX4','FLEX4','FLEX4','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(20,'FLEX5','FLEX5','FLEX5','Form_Ext',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(21,'textfield','textfield','textfield','DataType',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(22,'date','date','date','DataType',NULL,NULL,1,NULL,'2021-01-04 16:05:02',1,'2021-01-04 16:05:02',NULL),(23,'longText','longText','longText','DataType',NULL,NULL,1,NULL,'2021-01-04 16:05:03',1,'2021-01-04 16:05:03',NULL),(24,'textarea','textarea','textarea','DataType',NULL,NULL,0,NULL,'2021-01-04 16:05:03',1,'2021-01-04 16:05:03',NULL),(25,'checkbox','checkbox','checkbox','DataType',NULL,NULL,0,NULL,'2021-01-04 16:05:03',1,'2021-01-04 16:05:03',NULL),(26,'radiobutton','radiobutton','radiobutton','DataType',NULL,NULL,0,NULL,'2021-01-04 16:05:03',1,'2021-01-04 16:05:03',NULL),(27,'autocomplete','autocomplete','autocomplete','DataType',NULL,NULL,0,NULL,'2021-01-04 16:05:03',1,'2021-01-04 16:05:03',NULL),(28,'dropdown','dropdown','dropdown','DataType',NULL,NULL,0,NULL,'2021-01-04 16:05:03',1,'2021-01-04 16:05:03',NULL),(29,'sequence','sequence','sequence','DataType',NULL,NULL,0,NULL,'2021-01-04 16:05:03',1,'2021-01-04 16:05:03',NULL),(30,'togglebutton','togglebutton','togglebutton','DataType',NULL,NULL,0,NULL,'2021-01-04 16:05:03',1,'2021-01-04 16:05:03',NULL);
/*!40000 ALTER TABLE `rn_lookup_values_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_main_menu`
--

DROP TABLE IF EXISTS `rn_main_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_main_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `menu_action_link` varchar(255) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_main_menu`
--

LOCK TABLES `rn_main_menu` WRITE;
/*!40000 ALTER TABLE `rn_main_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `rn_main_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_menu_group_header`
--

DROP TABLE IF EXISTS `rn_menu_group_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_menu_group_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_menu_group_header`
--

LOCK TABLES `rn_menu_group_header` WRITE;
/*!40000 ALTER TABLE `rn_menu_group_header` DISABLE KEYS */;
INSERT INTO `rn_menu_group_header` VALUES (1,'2020-06-10 22:02:00',NULL,NULL,NULL,1,'admin menus',NULL,'Admin Menu Group',NULL),(2,'2020-06-10 22:02:00',NULL,NULL,NULL,1,'user menus',NULL,'User Menu Group',NULL);
/*!40000 ALTER TABLE `rn_menu_group_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_menu_group_line`
--

DROP TABLE IF EXISTS `rn_menu_group_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_menu_group_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `menu_group_header_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKanwl0cm9i2b53re4qd7l6630t` (`menu_group_header_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_menu_group_line`
--

LOCK TABLES `rn_menu_group_line` WRITE;
/*!40000 ALTER TABLE `rn_menu_group_line` DISABLE KEYS */;
INSERT INTO `rn_menu_group_line` VALUES (1,'2020-06-10 22:02:00',NULL,NULL,NULL,1,1,NULL,1,'admin',1),(2,'2020-06-10 22:02:00',NULL,NULL,NULL,1,2,NULL,2,'admin',1),(3,'2020-06-10 22:02:00',NULL,NULL,NULL,1,3,NULL,3,'admin',1),(4,'2020-06-10 22:02:00',NULL,NULL,NULL,1,4,NULL,4,'admin',1),(5,'2020-06-10 22:02:00',NULL,NULL,NULL,1,5,NULL,5,'admin',1),(6,'2020-12-25 14:32:13',NULL,'2020-12-25 14:32:13',NULL,1,6,NULL,6,'admin',1),(7,'2021-01-07 13:31:13',NULL,'2021-01-07 13:31:13',NULL,1,7,NULL,7,'admin',1),(8,'2021-01-25 13:31:13',NULL,'2021-01-25 13:31:13',NULL,1,8,NULL,8,'admin',1);
/*!40000 ALTER TABLE `rn_menu_group_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_menu_register`
--

DROP TABLE IF EXISTS `rn_menu_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_menu_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `enable_flag` tinyint(4) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `main_menu_action_name` varchar(255) DEFAULT NULL,
  `main_menu_icon` varchar(255) DEFAULT NULL,
  `main_menu_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_menu_register`
--

LOCK TABLES `rn_menu_register` WRITE;
/*!40000 ALTER TABLE `rn_menu_register` DISABLE KEYS */;
INSERT INTO `rn_menu_register` VALUES (1,'2020-06-10 22:02:00',NULL,NULL,NULL,1,NULL,'dashboard','dashboard','Dashboard'),(2,'2020-06-10 22:02:00',NULL,NULL,NULL,1,NULL,NULL,'tools','Access Management'),(3,'2020-06-10 22:02:00',NULL,NULL,NULL,1,NULL,'code-extraction','code','Code Extractor'),(4,'2020-06-10 22:02:00',NULL,NULL,NULL,1,NULL,'rule-library','factory','Rule Library'),(5,'2020-12-23 17:03:13',NULL,'2020-12-23 17:03:13',NULL,1,'2021-01-22','tech-stack','layers','Technology Stack'),(6,'2020-12-25 14:32:13',NULL,'2020-12-25 14:32:13',NULL,1,NULL,'projects','objects','Project Setup'),(7,'2021-01-07 13:31:13',NULL,'2021-01-07 13:31:13',NULL,1,NULL,'action-builder','file-settings','Action Builder'),(8,'2021-01-25 13:32:19',NULL,'2021-01-25 13:32:19',NULL,1,'2021-01-31','dynamic-form-setup','form','Dynamic Form');
/*!40000 ALTER TABLE `rn_menu_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_module_setup`
--

DROP TABLE IF EXISTS `rn_module_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_module_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `copy_to` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `module_prefix` varchar(255) DEFAULT NULL,
  `technology_stack` varchar(255) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs0a1tq87v28r4gs04ise53nwq` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_module_setup`
--

LOCK TABLES `rn_module_setup` WRITE;
/*!40000 ALTER TABLE `rn_module_setup` DISABLE KEYS */;
INSERT INTO `rn_module_setup` VALUES (2,NULL,'dummy description','test_module1','rn_','Angular-SpringBoot-Mysql',4,1,'2020-12-29 17:18:06',1,'2021-01-13 13:40:45',1);
/*!40000 ALTER TABLE `rn_module_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_project_setup`
--

DROP TABLE IF EXISTS `rn_project_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_project_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `copy_to` varchar(255) DEFAULT NULL,
  `db_name` varchar(255) DEFAULT NULL,
  `db_password` varchar(255) DEFAULT NULL,
  `db_username` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `port_no` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_prefix` varchar(255) DEFAULT NULL,
  `technology_stack` varchar(255) DEFAULT NULL,
  `tech_stack_id` int(11) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_project_setup`
--

LOCK TABLES `rn_project_setup` WRITE;
/*!40000 ALTER TABLE `rn_project_setup` DISABLE KEYS */;
INSERT INTO `rn_project_setup` VALUES (4,NULL,'realit','root','root','test 4','3600','nil_project','rn_','Angular-SpringBoot-Mysql',1,1,'2020-12-25 17:49:59',NULL,'2020-12-25 17:49:59',NULL);
/*!40000 ALTER TABLE `rn_project_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_query_builder_setup_t`
--

DROP TABLE IF EXISTS `rn_query_builder_setup_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_query_builder_setup_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `project_profile` varchar(255) DEFAULT NULL,
  `string1` varchar(255) DEFAULT NULL,
  `string2` varchar(255) DEFAULT NULL,
  `string3` varchar(255) DEFAULT NULL,
  `string4` varchar(255) DEFAULT NULL,
  `string5` varchar(255) DEFAULT NULL,
  `string6` varchar(255) DEFAULT NULL,
  `string7` varchar(255) DEFAULT NULL,
  `table_name_prefix` varchar(255) DEFAULT NULL,
  `table_name_sufix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_query_builder_setup_t`
--

LOCK TABLES `rn_query_builder_setup_t` WRITE;
/*!40000 ALTER TABLE `rn_query_builder_setup_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `rn_query_builder_setup_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_student_t`
--

DROP TABLE IF EXISTS `rn_student_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_student_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flex1` varchar(255) DEFAULT NULL,
  `flex2` varchar(255) DEFAULT NULL,
  `flex3` varchar(255) DEFAULT NULL,
  `flex4` varchar(255) DEFAULT NULL,
  `flex5` varchar(255) DEFAULT NULL,
  `extn1` varchar(255) DEFAULT NULL,
  `extn10` varchar(255) DEFAULT NULL,
  `extn11` varchar(255) DEFAULT NULL,
  `extn12` varchar(255) DEFAULT NULL,
  `extn13` varchar(255) DEFAULT NULL,
  `extn14` varchar(255) DEFAULT NULL,
  `extn15` varchar(255) DEFAULT NULL,
  `extn2` varchar(255) DEFAULT NULL,
  `extn3` varchar(255) DEFAULT NULL,
  `extn4` varchar(255) DEFAULT NULL,
  `extn5` varchar(255) DEFAULT NULL,
  `extn6` varchar(255) DEFAULT NULL,
  `extn7` varchar(255) DEFAULT NULL,
  `extn8` varchar(255) DEFAULT NULL,
  `extn9` varchar(255) DEFAULT NULL,
  `account_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `depertment` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `roll_number` int(11) DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg5ypjjgttbexcd0y3hg54pjbm` (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_student_t`
--

LOCK TABLES `rn_student_t` WRITE;
/*!40000 ALTER TABLE `rn_student_t` DISABLE KEYS */;
INSERT INTO `rn_student_t` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 16:22:20',NULL,'2021-01-19 16:22:20',NULL,'CS','paku',105,1);
/*!40000 ALTER TABLE `rn_student_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_sub_menu`
--

DROP TABLE IF EXISTS `rn_sub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `sub_menu_action_link` varchar(255) DEFAULT NULL,
  `sub_menu_icon` varchar(255) DEFAULT NULL,
  `sub_menu_name` varchar(255) DEFAULT NULL,
  `main_menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdoo379c0mri1m89vempju34ew` (`main_menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_sub_menu`
--

LOCK TABLES `rn_sub_menu` WRITE;
/*!40000 ALTER TABLE `rn_sub_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `rn_sub_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rn_teacher_t`
--

DROP TABLE IF EXISTS `rn_teacher_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rn_teacher_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` decimal(19,2) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `extn1` varchar(255) DEFAULT NULL,
  `extn2` varchar(255) DEFAULT NULL,
  `extn3` varchar(255) DEFAULT NULL,
  `extn4` varchar(255) DEFAULT NULL,
  `extn5` varchar(255) DEFAULT NULL,
  `extn6` varchar(255) DEFAULT NULL,
  `extn7` varchar(255) DEFAULT NULL,
  `extn8` varchar(255) DEFAULT NULL,
  `extn9` varchar(255) DEFAULT NULL,
  `extn10` varchar(255) DEFAULT NULL,
  `extn11` varchar(255) DEFAULT NULL,
  `extn12` varchar(255) DEFAULT NULL,
  `extn13` varchar(255) DEFAULT NULL,
  `extn14` varchar(255) DEFAULT NULL,
  `extn15` varchar(255) DEFAULT NULL,
  `flex1` varchar(255) DEFAULT NULL,
  `flex2` varchar(255) DEFAULT NULL,
  `flex3` varchar(255) DEFAULT NULL,
  `flex4` varchar(255) DEFAULT NULL,
  `flex5` varchar(255) DEFAULT NULL,
  `account_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rn_teacher_t`
--

LOCK TABLES `rn_teacher_t` WRITE;
/*!40000 ALTER TABLE `rn_teacher_t` DISABLE KEYS */;
INSERT INTO `rn_teacher_t` VALUES (1,'Sandipan Saha','sandy@gmail.com',9038409107.00,30000,'Bangalore','Bangalore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-19 16:22:20',NULL,'2021-01-19 16:33:49',NULL);
/*!40000 ALTER TABLE `rn_teacher_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE USER','USER'),(2,'ROLE ADMIN','ADMIN'),(3,'ROLE REVIEWER','REVIEWER'),(4,'ROLE COLLABORATOR','COLLABORATOR');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_accounts`
--

DROP TABLE IF EXISTS `sys_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(55) DEFAULT NULL,
  `gst_no` varchar(45) DEFAULT NULL,
  `workspace` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_accounts`
--

LOCK TABLES `sys_accounts` WRITE;
/*!40000 ALTER TABLE `sys_accounts` DISABLE KEYS */;
INSERT INTO `sys_accounts` VALUES (1,'REAL IT SOLUTIONS','545646',NULL),(2,'TCS','564565',NULL),(3,'ACCENTURE','682335',NULL);
/*!40000 ALTER TABLE `sys_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `security_provider_id` int(11) DEFAULT NULL,
  `default_customer_id` int(11) DEFAULT NULL,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `postal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `other_roles` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `is_blocked` tinyint(4) DEFAULT NULL,
  `secret_question` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `secret_answer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enable_beta_testing` tinyint(4) DEFAULT NULL,
  `enable_renewal` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `menu_group_id` int(11) DEFAULT NULL,
  `photos` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `FKrhfovtciq1l558cw6eee3` (`account_id`),
  CONSTRAINT `FKrhfovtciq1l558cw6eee3` FOREIGN KEY (`account_id`) REFERENCES `sys_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','$2b$10$AkngMoFbJhllHomzUFdwAehsPzbHxY31XXtWTr0Cnpo9OYs7enn0q','Theresa','Russell','admin@gmail.com',10001,20000,'Glover, Adams and Bins','383-(779)851-3208','30874 Graceland Terrace','99152','USA','51065','ADMIN',NULL,1,0,'knowledge base','Mauv',1,0,'2020-06-10 22:02:00',NULL,'2020-12-18 16:53:44',NULL,NULL,NULL,NULL,1,'profile-pic-1.jpg',NULL,1),(2,'user','$2b$10$AK/siGGl4ITIq0dZHDck0uAyLJHkGPOeLBSAyUL8j5OU5vlf79wjq','Virginia','Reynolds','user@gmail.com',10001,20000,'Rippin, Osinski and Beatty','84-(228)809-9998','0118 Burrows Plaza','496','USA','94086','USER',NULL,1,0,'Innovative','Turquoise',1,1,'2020-06-10 22:02:00',NULL,'2020-06-10 22:02:00',NULL,NULL,NULL,NULL,2,NULL,NULL,2),(3,NULL,'jowens3','Judy','Owens','jowens3@hp.com',10001,20001,'Altenwerth, Fisher and Heidenreich','30-(772)268-8227','98 Loeprich Way','447','Greece',NULL,'USER',NULL,0,0,'capacity','Fuscia',1,1,'2020-06-10 22:02:00',NULL,'2020-06-10 22:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'kburns4','Kelly','Burns','kburns4@icio.us',10000,20002,'McCullough-Morar','86-(857)185-5740','1638 Basil Alley','56297','China',NULL,'ADMIN',NULL,1,0,'user-facing','Crimson',1,1,'2020-06-10 22:02:00',NULL,'2020-06-10 22:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'jshaw5','Julie','Shaw','jshaw5@opera.com',10000,20000,'Steuber-Okuneva','1-(871)375-6188','389 Myrtle Pass','41444','Canada',NULL,'ADMIN',NULL,1,1,'software','Green',0,1,'2020-06-10 22:02:00',NULL,'2020-06-10 22:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,'pgilbert6','Peter','Gilbert','pgilbert6@eepurl.com',10000,20000,'Robel Inc','52-(372)555-4687','11522 Fuller Avenue','5','Mexico','39230','ADMIN',NULL,1,1,'multi-state','Puce',1,1,'2020-06-10 22:02:00',NULL,'2020-06-10 22:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,'jjacobs7','Justin','Jacobs','jjacobs7@google.co.uk',10000,20002,'Harris-Bashirian','963-(199)359-2552','95012 Hanover Street','2377','India',NULL,'USER',NULL,1,0,'motivating','Crimson',1,0,'2020-06-10 22:02:00',NULL,'2020-06-10 22:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,'kbennett8','Kevin','Bennett','kbennett8@hostgator.com',10001,20000,'Leannon Inc','62-(892)710-5713','459 Coleman Drive','397','Indonesia',NULL,'ADMIN',NULL,0,0,'Exclusive','Purple',1,1,'2020-06-10 22:02:00',NULL,'2020-06-10 22:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,'demo','Mrinmoy','Majumdar','arivera2@joomla.org',10001,20000,'Abshire Inc','7-(740)701-4547','80429 Garrison Crossing','4967','USA','64890','USER',NULL,1,0,'Diverse','Yellow',0,0,'2020-06-10 22:02:00',NULL,'2020-06-10 22:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,'$2b$10$AK/siGGl4ITIq0dZHDck0uAyLJHkGPOeLBSAyUL8j5OU5vlf79wjq','Chris','Murphy','dummy@gmail.com',10000,20000,'Mosciski LLC','64-(272)961-0086','2 Ludington Point','7','New Zealand',NULL,'ADMIN',NULL,1,1,'empowering','Maroon',0,1,'2020-06-10 22:02:00',NULL,'2020-06-10 22:02:00',NULL,NULL,NULL,NULL,2,NULL,'INVITED',1),(11,NULL,'$2a$10$vBFw1tbeg/e.97tMR./MPuwwdDQJSRrY2VuMNVoN.e0r5c7aO1gD.','Niladri','Sen','niladri@gmail.com',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,'2020-12-18 16:40:42',NULL,'2020-12-18 18:52:59',NULL,'I AM FROM KOLKATA','DEVELOPER','Niladri Sen',1,NULL,NULL,3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKrhfovtciq1l558cw6udg0h0d3` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(1,2),(2,1),(11,1),(11,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'realnet_rest'
--

--
-- Dumping routines for database 'realnet_rest'
--
/*!50003 DROP PROCEDURE IF EXISTS `active_technology` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `active_technology`()
BEGIN
	SELECT ID, BASE_PRJ_FILE_NAME FROM RN_BCF_TECHNOLOGY_STACK WHERE IS_ACTIVE = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customer_orders`
--

/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_orders` AS select `o`.`order_date` AS `order_date`,`o`.`order_status` AS `order_status`,`o`.`paid_date` AS `paid_date`,`o`.`payment_type` AS `payment_type`,`o`.`shipping_fee` AS `shipping_fee`,`o`.`customer_id` AS `customer_id`,`c`.`first_name` AS `customer_first_name`,`c`.`last_name` AS `customer_last_name`,`c`.`phone` AS `customer_phone`,`c`.`email` AS `customer_email`,`c`.`company` AS `company` from (`orders` `o` join `customers` `c`) where (`o`.`customer_id` = `c`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employee_orders`
--

/*!50001 DROP VIEW IF EXISTS `employee_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_orders` AS select `o`.`order_date` AS `order_date`,`o`.`order_status` AS `order_status`,`o`.`paid_date` AS `paid_date`,`o`.`payment_type` AS `payment_type`,`o`.`shipping_fee` AS `shipping_fee`,`o`.`employee_id` AS `employee_id`,`e`.`first_name` AS `employee_first_name`,`e`.`last_name` AS `employee_last_name`,`e`.`email` AS `employee_email`,`e`.`department` AS `department` from (`orders` `o` join `employees` `e`) where (`o`.`customer_id` = `e`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_details`
--

/*!50001 DROP VIEW IF EXISTS `order_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_details` AS select `oi`.`order_id` AS `order_id`,`oi`.`product_id` AS `product_id`,`oi`.`quantity` AS `quantity`,`oi`.`unit_price` AS `unit_price`,`oi`.`discount` AS `discount`,`oi`.`date_allocated` AS `date_allocated`,`oi`.`order_item_status` AS `order_item_status`,`o`.`order_date` AS `order_date`,`o`.`order_status` AS `order_status`,`o`.`paid_date` AS `paid_date`,`o`.`payment_type` AS `payment_type`,`o`.`shipped_date` AS `shipped_date`,`o`.`shipping_fee` AS `shipping_fee`,`o`.`ship_name` AS `ship_name`,`o`.`ship_address1` AS `ship_address1`,`o`.`ship_address2` AS `ship_address2`,`o`.`ship_city` AS `ship_city`,`o`.`ship_state` AS `ship_state`,`o`.`ship_postal_code` AS `ship_postal_code`,`o`.`ship_country` AS `ship_country`,`p`.`product_code` AS `product_code`,`p`.`product_name` AS `product_name`,`p`.`category` AS `category`,`p`.`description` AS `description`,`p`.`list_price` AS `list_price`,`o`.`customer_id` AS `customer_id`,concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`,`c`.`phone` AS `customer_phone`,`c`.`email` AS `customer_email`,`c`.`company` AS `customer_company`,`o`.`employee_id` AS `employee_id`,concat(`e`.`first_name`,' ',`e`.`last_name`) AS `employee_name`,`e`.`department` AS `employee_department`,`e`.`job_title` AS `employee_job_title` from ((((`orders` `o` join `products` `p`) join `order_items` `oi`) join `employees` `e`) join `customers` `c`) where ((`oi`.`order_id` = `o`.`id`) and (`oi`.`product_id` = `p`.`id`) and (`o`.`employee_id` = `e`.`id`) and (`o`.`customer_id` = `c`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_info`
--

/*!50001 DROP VIEW IF EXISTS `order_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_info` AS select `o`.`id` AS `order_id`,`o`.`order_date` AS `order_date`,`o`.`order_status` AS `order_status`,`o`.`paid_date` AS `paid_date`,`o`.`payment_type` AS `payment_type`,`o`.`shipped_date` AS `shipped_date`,`o`.`shipping_fee` AS `shipping_fee`,`o`.`ship_name` AS `ship_name`,`o`.`ship_address1` AS `ship_address1`,`o`.`ship_address2` AS `ship_address2`,`o`.`ship_city` AS `ship_city`,`o`.`ship_state` AS `ship_state`,`o`.`ship_postal_code` AS `ship_postal_code`,`o`.`ship_country` AS `ship_country`,`o`.`customer_id` AS `customer_id`,`o`.`employee_id` AS `employee_id`,concat(`c`.`first_name`,' ',`c`.`last_name`) AS `customer_name`,`c`.`phone` AS `customer_phone`,`c`.`email` AS `customer_email`,`c`.`company` AS `customer_company`,concat(`e`.`first_name`,' ',`e`.`last_name`) AS `employee_name`,`e`.`department` AS `employee_department`,`e`.`job_title` AS `employee_job_title` from ((`orders` `o` join `employees` `e`) join `customers` `c`) where ((`o`.`employee_id` = `e`.`id`) and (`o`.`customer_id` = `c`.`id`)) */;
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

-- Dump completed on 2021-01-28 20:18:24

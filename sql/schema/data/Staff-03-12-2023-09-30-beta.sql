-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-cll-lve

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
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Staff` (
  `Staff_ID` int(11) NOT NULL,
  `Staff_SSN` varchar(10) DEFAULT NULL,
  `Staff_Name` varchar(255) DEFAULT NULL,
  `Staff_Department` varchar(255) DEFAULT NULL,
  `Staff_email` varchar(255) DEFAULT NULL,
  `Staff_Phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`),
  UNIQUE KEY `Staff_SSN` (`Staff_SSN`),
  UNIQUE KEY `Staff_email` (`Staff_email`),
  UNIQUE KEY `Staff_Phone` (`Staff_Phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (1116898,'762363457','Monroe Torphy','','aluettgen@example.org','854.895.6795'),(1194457,'341968089','Jamar Swaniawski','','ramiro68@example.net','421-871-7760'),(1240727,'858651398','Tyrique Quigley Jr.','provident','chomenick@example.net','416-817-6433'),(1399830,'185350738','Jacques Leuschke','molestiae','bud.lowe@example.net','1-351-328-9607x'),(1437501,'336250377','Ryann Johnson','','fzieme@example.org','245.873.5869x39'),(1451933,'203166956','Margie Collier','','sedrick73@example.net','594.010.2428'),(1539470,'400908447','Elisa Predovic','qui','assunta30@example.net','(447)872-2903x4'),(1541251,'132640533','Mittie Rice','','haylie04@example.net','545-022-1943'),(1777511,'828946109','Prof. Kiara Johnson','autem','inolan@example.com','1-267-372-0809x'),(1935976,'913729007','Sarina Jenkins','','sherwood90@example.net','(021)919-5144x7'),(2061219,'444762560','Prof. Alfonso Feest','','cbreitenberg@example.com','397.164.2727x89'),(2063803,'943458949','Chanelle Thiel','','bernier.lemuel@example.net','276.938.9663'),(2087977,'365150605','Markus Langworth','','qkautzer@example.org','01986440109'),(2275208,'339316380','Mr. Micah Hessel Jr.','','vrutherford@example.org','1-232-071-9638x'),(2286748,'138645241','Prof. Frieda Block Jr.','','mayra.blick@example.com','870-530-4992x74'),(2322228,'946951376','Cindy Monahan','quaerat','gaston07@example.org','1-572-899-6590'),(2454441,'871458375','Sarai Padberg','nam','gussie95@example.com','1-266-216-7813x'),(2602897,'978137019','Ulices Bins','','kaycee57@example.org','879-611-2830'),(2656790,'153985469','Dedrick Glover','','mckenzie.chaz@example.org','+36(9)071627122'),(2944943,'773741828','Constantin Labadie','','bgusikowski@example.com','1-539-591-1922'),(3230335,'555448490','Jesse Upton PhD','','zwhite@example.net','(498)804-0957x1'),(3248267,'671095934','Lera Paucek','','ritchie.rupert@example.net','082-398-9963x34'),(3307987,'929890391','Johnnie Schamberger','sed','durgan.brianne@example.com','518-489-8349x11'),(3321065,'871743013','Patricia Tromp','sit','wehner.clay@example.org','702.216.9256'),(3401437,'804538289','Forest Kassulke','','klocko.hyman@example.org','08667414530'),(3451955,'583432411','Ezequiel Maggio DVM','autem','bins.isai@example.net','04151288110'),(3532065,'580023448','Arch Nitzsche','','cgrady@example.net','137-407-0185x01'),(3609453,'981180049','Henri Goldner','aperiam','theodora.bogan@example.org','330.625.9691x67'),(3662830,'674925243','Mr. Milo Grady','','bward@example.org','1-527-777-7559x'),(3752781,'699102399','Sharon Lesch DVM','','auer.lionel@example.org','(882)525-1879x6'),(3938175,'403318546','Mrs. Libbie Cormier IV','','johathan54@example.net','1-169-530-1635x'),(3962414,'777628078','Prof. Randi Ernser IV','porro','ogorczany@example.net','(824)421-1690'),(4001277,'854339333','Amos McDermott','','abel10@example.org','06502669203'),(4233058,'177126097','Alivia Stiedemann','','bsenger@example.net','(673)276-3375x3'),(4304740,'739169278','Dennis Bauch','','sister85@example.net','1-976-863-0488x'),(4386933,'977131673','Kaylin Armstrong','quis','ulices.pfannerstill@example.net','162-050-6456'),(4443081,'333556518','Prof. Queenie Cremin V','','henry.wolf@example.org','569-135-5223'),(4464048,'555868667','Marlene Smith','omnis','hodkiewicz.kaitlin@example.com','929-168-0987x96'),(4467343,'155091852','Mr. Maverick Kihn','','fabernathy@example.com','+57(7)438868960'),(4822759,'879400745','Dr. Dante Upton V','','pdickinson@example.org','1-409-306-3398x'),(4843645,'789032905','Madeline Lind','','padberg.mariano@example.net','197.404.8489x77'),(4880056,'928725397','Amber Schmidt','inventore','ozella44@example.org','1-034-871-4718x'),(4886947,'705121155','Jared Larkin','corrupti','hschmitt@example.org','+25(8)270895687'),(5057286,'918925949','Ethel Leffler','','iauer@example.net','+90(8)857654827'),(5081145,'402667484','Dane Reynolds','voluptatem','batz.madyson@example.com','(596)371-3735x7'),(5371351,'957940011','Harry Marks V','nulla','sincere20@example.com','+81(1)780455879'),(5449335,'243932769','Leola Ondricka','','rosario.morissette@example.com','1-785-585-3237'),(5499124,'245673652','Ollie Kuphal','neque','daugherty.frida@example.org','244-548-7287x02'),(5504482,'695655497','Raegan Heaney','','wisozk.rollin@example.org','1-894-136-9552'),(5559137,'363661809','Earnestine Gleichner','eos','donato05@example.org','025-876-0298'),(5572700,'119699029','Ms. Kelsi Zieme','non','emmet.weber@example.com','(780)505-9030x1'),(5582694,'468025505','Mr. Remington Abshire III','sed','dorcas.rolfson@example.org','010.092.3050'),(5606492,'361235423','Mrs. Lauryn Muller','','milton23@example.com','797.860.4675'),(5643663,'120214687','Donnie Paucek','qui','hilpert.brian@example.net','873-481-0376x21'),(5943733,'522433696','Vladimir Wolff','','emoen@example.org','658-329-2480x24'),(6010993,'106393854','Katarina Kuhn','itaque','norberto.turner@example.org','1-287-750-4424'),(6146245,'538712811','Estefania Mraz','nihil','greg69@example.com','(478)742-0611'),(6329511,'557780522','Landen Huels','voluptatem','marquis.bogisich@example.org','319.682.2831x22'),(6394333,'707895471','Bernadine Blick','soluta','justyn.muller@example.com','00330062877'),(6511758,'581792630','Dale Watsica','','waters.emie@example.com','(631)644-5824x1'),(6576809,'177419363','Brisa Lockman','numquam','yauer@example.com','(005)434-4599x1'),(6634201,'810983263','Graham Hand','vero','jerad.keebler@example.org','804.741.3976'),(6656380,'953336267','Mae Nolan','','jakubowski.kameron@example.net','1-886-999-6357x'),(6721785,'944472132','Kaelyn Stehr','','xkessler@example.com','1-350-226-6599'),(6724213,'924175916','Deion Nader','','conner93@example.org','(784)998-3529'),(6730648,'550250928','Terrance Stoltenberg','error','stokes.wanda@example.org','357.035.7192x93'),(6846424,'662959888','Ahmad Baumbach','','nheaney@example.net','1-821-872-7232x'),(7012115,'278130741','Joshuah Frami','','karianne.cruickshank@example.net','00432147870'),(7217549,'618610513','Jayson Abbott Jr.','voluptate','zion.hane@example.net','04419797749'),(7241764,'520607279','Guy Funk','nemo','istoltenberg@example.net','1-226-802-2136x'),(7395603,'899888585','Harrison Sporer','','david75@example.com','934-026-9820'),(7585663,'233317699','Avis Reichert','aut','matilda30@example.net','+61(7)384758823'),(7673374,'310134820','Dallin Koepp','in','sibyl89@example.net','09196391287'),(7813482,'673328381','Elenora Halvorson','magnam','kaci.reilly@example.com','+66(7)413078655'),(7992073,'826735438','Lottie Botsford IV','','destiney81@example.com','(312)158-3945'),(8104563,'929128517','Prof. Wilburn Farrell','dolores','xleuschke@example.org','369-266-6106x21'),(8156294,'461277363','Jazmin Wehner','accusantium','mayert.llewellyn@example.org','1-022-143-9116'),(8193255,'424085129','Isobel Purdy','sed','hackett.santiago@example.net','(142)919-4162'),(8237976,'626420220','Raphaelle Glover','dolores','tavares.denesik@example.com','424-383-3264'),(8335468,'430103400','Javier Treutel II','','mkunde@example.org','(441)779-1051x8'),(8374095,'886617494','Christy Rodriguez I','','ukuphal@example.org','686-514-2328x65'),(8440657,'275573372','Mr. Bobby Kertzmann','labore','tdenesik@example.org','441-978-9043x67'),(8498480,'159752944','Francisca Macejkovic','et','lcarter@example.org','540.156.3373'),(8758045,'924816958','Marguerite Weber','suscipit','fdooley@example.net','714.364.2063x50'),(8869282,'793012972','Ferne Wiza','provident','raymond.beer@example.org','392.311.7728x38'),(8927788,'326318645','Theresia Sawayn','','lang.vaughn@example.net','(769)366-6609x3'),(9007521,'849787576','Dr. Cydney Hackett II','','henri.bashirian@example.com','390-945-8137x19'),(9048039,'552668118','Jayda Gutkowski','','sipes.rhoda@example.org','059-985-2284x62'),(9106446,'394393809','Mrs. Shanelle Greenfelder III','','klowe@example.com','686.073.0447'),(9206405,'370424100','Neva Beatty MD','nemo','zora.pfannerstill@example.org','863-725-1248'),(9217572,'669674578','Rory Tromp PhD','ducimus','crooks.travis@example.org','+34(1)405286791'),(9254993,'108157506','Prof. Taurean Haag','veritatis','wtromp@example.net','1-848-508-7036x'),(9287921,'326830934','Israel Auer Sr.','quidem','cayla.schultz@example.org','1-983-789-6657x'),(9411722,'992828666','Dolores Schuppe PhD','iure','cooper59@example.com','(570)004-8754x7'),(9418842,'321875340','Stacy Flatley','','barrett.mante@example.net','+08(3)707916608'),(9529914,'908382634','Prof. Ramon Toy PhD','iusto','yadams@example.org','1-684-436-7071'),(9600452,'103491030','Mr. Cleveland Turner IV','','ngrimes@example.net','1-075-778-4527x'),(9661045,'465317282','Morris Lemke','','alanis.rath@example.net','1-093-507-4507x'),(9709933,'450612803','Else Frami','necessitatibus','fmohr@example.com','(069)482-3197'),(9768583,'882786346','Alexane Armstrong II','','tamara.davis@example.org','279-009-5788');
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03  9:30:59

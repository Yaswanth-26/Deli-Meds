#
# TABLE STRUCTURE FOR: Prescription
#

DROP TABLE IF EXISTS `Prescription`;

CREATE TABLE `Prescription` (
  `Customer_ID` int(11) NOT NULL,
  `Doctor_SSN` varchar(10) NOT NULL,
  `Cart_ID` int(11) NOT NULL,
  `Prescription_Date` date DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`,`Doctor_SSN`,`Cart_ID`),
  KEY `Doctor_SSN` (`Doctor_SSN`),
  KEY `Cart_ID` (`Cart_ID`),
  CONSTRAINT `Prescription_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`Customer_ID`),
  CONSTRAINT `Prescription_ibfk_2` FOREIGN KEY (`Doctor_SSN`) REFERENCES `Doctor` (`Doctor_SSN`),
  CONSTRAINT `Prescription_ibfk_3` FOREIGN KEY (`Cart_ID`) REFERENCES `Cart` (`Cart_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (1322869, '100373091', 10002201, '1987-06-25');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (1401628, '108536060', 10037845, '2020-04-01');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (1585260, '109719037', 10042840, '1982-05-25');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (1624012, '118564783', 10145877, '2011-01-26');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (1763972, '127667773', 10398881, '2014-06-11');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (1783553, '131118772', 10399351, '2019-09-27');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2014506, '134024375', 10415193, '1977-02-02');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2021743, '136827980', 10887824, '2002-09-08');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2247626, '139744467', 11093703, '1970-07-01');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2352184, '144170365', 11342980, '1985-04-10');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2373874, '153066657', 11459143, '2003-07-03');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2423070, '154926999', 11460889, '1980-02-05');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2457807, '159253044', 11634362, '2014-03-28');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2668443, '165188456', 11710697, '2003-04-20');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2768604, '168272432', 11711762, '1985-12-14');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2873681, '172742884', 11715696, '2019-10-04');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (2935256, '175524773', 11775907, '1997-01-24');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3020399, '175708990', 11893999, '1996-03-10');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3093593, '202662947', 11925379, '1980-08-17');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3120638, '216436548', 12008863, '1989-05-20');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3519014, '223704016', 12059315, '1973-10-27');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3600677, '225455692', 12294692, '2016-05-23');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3647551, '226189692', 12313501, '2007-08-01');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3689906, '228165753', 12318427, '1975-09-06');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3701145, '232534195', 12582946, '1982-10-19');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3817658, '237221278', 12590866, '2012-08-29');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (3859072, '250899275', 12660309, '1979-06-20');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4001226, '256824265', 12740506, '1998-12-28');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4020790, '262086709', 12800238, '1972-06-13');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4106003, '285616737', 12916671, '2004-07-12');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4153415, '297016687', 12928607, '1974-06-25');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4173672, '302637721', 13005389, '1971-07-30');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4206251, '304404768', 13038956, '1972-07-21');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4334924, '319784163', 13105000, '2023-09-17');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4355824, '333205009', 13255533, '2014-05-26');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4477893, '334195375', 13288235, '1996-07-26');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4541465, '353505059', 13377169, '2010-09-18');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4612529, '367408642', 13458167, '2017-11-18');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4655189, '390312512', 13485400, '2002-01-16');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4677240, '395053570', 13600938, '1997-04-15');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4751881, '423945166', 13772025, '2018-02-28');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4920757, '430813508', 13802377, '1991-06-25');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (4936358, '439352277', 13920866, '2014-02-05');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (5195108, '442725318', 14263062, '1982-12-03');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (5334241, '454151186', 14324623, '2010-11-18');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (5428456, '456965911', 14448869, '1973-05-07');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (5464536, '465454893', 14462976, '2002-09-13');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (5673587, '478435450', 14536326, '1997-02-19');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (5689428, '484562243', 14794230, '1973-09-13');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (5826363, '513311234', 14910392, '2022-01-02');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (6100116, '522072294', 14932544, '2001-09-08');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (6571835, '529926880', 14937512, '1991-07-02');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (6655153, '530711705', 15179918, '1996-12-27');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (6695046, '535267769', 15191669, '1984-10-08');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (6825326, '540154118', 15355866, '1997-04-20');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (6914278, '551274953', 15363803, '1979-11-22');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (6920135, '590065240', 15606808, '1988-04-05');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7017660, '590399014', 15822070, '2022-07-19');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7040726, '590896161', 15836092, '1990-10-31');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7146551, '591755238', 16071243, '2007-09-15');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7186222, '597569686', 16188838, '1996-05-19');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7223168, '608783409', 16240538, '1994-01-04');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7283666, '610048416', 16329939, '2015-03-15');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7699974, '611244621', 16430759, '1979-12-13');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7853011, '616170446', 16477192, '1975-11-14');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7863580, '638940263', 16489558, '1981-01-10');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7909107, '648465544', 16560754, '2015-03-20');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (7910440, '674528398', 16784074, '1972-07-20');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8031684, '695659016', 16786821, '2015-11-01');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8037282, '718791378', 16800280, '2016-01-13');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8164176, '724409068', 16894987, '2007-10-26');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8270349, '724542969', 17230177, '1992-07-16');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8271969, '734552703', 17534647, '1994-12-15');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8278533, '739565404', 17561004, '2002-03-30');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8343545, '752492846', 17625951, '1992-03-04');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8407685, '754532898', 17659098, '2023-09-26');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8482695, '776670047', 17727882, '2015-01-15');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8720734, '777608484', 17800164, '1974-09-10');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8770795, '779589227', 17818054, '2005-10-15');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8833693, '781415388', 17892908, '1987-05-12');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8903856, '787634944', 17904202, '1998-11-23');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8937986, '803882791', 17916233, '2004-06-26');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8972654, '804826635', 18316678, '2011-04-16');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8984829, '812602809', 18326838, '2002-08-26');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (8990759, '815488641', 18408545, '1993-08-28');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9007870, '815731527', 18507964, '2012-05-03');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9010188, '818659661', 18556642, '2019-08-26');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9040988, '822446328', 18635321, '2013-06-06');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9049802, '825796354', 18715720, '2020-06-03');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9088768, '832456858', 18864109, '1992-05-29');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9220754, '864418083', 18865375, '1991-04-08');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9264114, '865275134', 18898415, '1994-06-12');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9351750, '902035949', 19015787, '2002-08-29');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9369404, '914287705', 19070272, '1991-10-08');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9463538, '952425316', 19093139, '1979-07-17');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9565560, '957312656', 19158323, '2005-11-28');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9789695, '968277415', 19354874, '2023-03-14');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9862962, '969610302', 19471505, '1975-03-10');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9868030, '980673897', 19509245, '1978-09-16');
INSERT INTO `Prescription` (`Customer_ID`, `Doctor_SSN`, `Cart_ID`, `Prescription_Date`) VALUES (9939771, '982074032', 19584106, '2003-08-20');



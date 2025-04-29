#
# TABLE STRUCTURE FOR: Doctor
#

DROP TABLE IF EXISTS `Doctor`;

CREATE TABLE `Doctor` (
  `Doctor_SSN` char(10) NOT NULL,
  `Doctor_Name` varchar(255) DEFAULT NULL,
  `Specialty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Doctor_SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('100373091', 'Francis Farrell', 'error');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('108536060', 'Ronaldo Frami', 'quis');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('109719037', 'Esteban Collier', 'fugiat');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('118564783', 'Reuben Moen', 'explicabo');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('127667773', 'Helen Davis IV', 'quaerat');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('131118772', 'Brock Friesen II', 'odio');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('134024375', 'Salvatore Volkman', 'et');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('136827980', 'Miss Carli Torphy III', 'sapiente');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('139744467', 'Elisha Adams', 'est');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('144170365', 'Llewellyn Pacocha', 'est');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('153066657', 'Alyce Schmitt', 'et');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('154926999', 'Dedrick Beier', 'tenetur');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('159253044', 'Jennie Flatley', 'modi');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('165188456', 'Ella Kozey', 'saepe');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('168272432', 'Shany Kulas', 'aut');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('172742884', 'Ivah Casper', 'consequatur');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('175524773', 'Mr. Gayle Schmitt DVM', 'quas');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('175708990', 'Dr. Maxine Gleason MD', 'est');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('202662947', 'Olaf Ziemann', 'beatae');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('216436548', 'Mrs. Priscilla Hirthe', 'sed');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('223704016', 'Jaden Walker', 'id');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('225455692', 'Madge Jast', 'assumenda');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('226189692', 'Mr. Clement Wilderman', 'est');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('228165753', 'Penelope Mueller', 'repudiandae');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('232534195', 'Antwan Raynor', 'laudantium');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('237221278', 'Justina Kirlin', 'voluptate');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('250899275', 'Mazie Streich', 'fugit');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('256824265', 'Ismael Ferry', 'ut');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('262086709', 'Mrs. Christa Watsica III', 'molestiae');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('285616737', 'Kianna Stroman', 'tempora');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('297016687', 'Aleen Batz', 'aut');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('302637721', 'Prof. Alphonso Ernser', 'voluptates');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('304404768', 'Brycen Dicki', 'illo');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('319784163', 'Junius Kessler', 'aut');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('333205009', 'Elijah Corwin Sr.', 'sit');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('334195375', 'Mrs. Madelyn Lang', 'assumenda');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('353505059', 'Oceane Bechtelar', 'fuga');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('367408642', 'Anastacio Kautzer', 'mollitia');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('390312512', 'Casandra Weissnat', 'tempora');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('395053570', 'Zita Stroman', 'quaerat');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('423945166', 'Lyric Schmeler', 'magnam');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('430813508', 'Marian Kautzer', 'minima');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('439352277', 'Carmen Bechtelar', 'alias');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('442725318', 'Maude Ankunding', 'non');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('454151186', 'Mrs. Bonita Schinner IV', 'aut');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('456965911', 'Marlen Runolfsson II', 'sed');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('465454893', 'Gregg Cummerata', 'voluptatem');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('478435450', 'Prof. Destin Welch', 'ad');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('484562243', 'Mrs. Ima Jast DDS', 'neque');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('513311234', 'Prof. Catharine Rempel', 'architecto');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('522072294', 'Amelie Jerde', 'hic');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('529926880', 'Shanelle Rolfson DVM', 'doloremque');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('530711705', 'Claudie Rowe', 'architecto');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('535267769', 'Sheridan Anderson', 'nostrum');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('540154118', 'Mr. Elvis Kiehn PhD', 'amet');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('551274953', 'Russ Welch', 'maiores');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('590065240', 'Uriah Kilback', 'qui');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('590399014', 'Gordon Runolfsson', 'veniam');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('590896161', 'Prof. Noelia Cole II', 'praesentium');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('591755238', 'Jany Heidenreich', 'esse');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('597569686', 'Giovani Gulgowski', 'maxime');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('608783409', 'Dr. Dagmar Sanford', 'saepe');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('610048416', 'Bernardo West', 'est');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('611244621', 'Prof. Aletha Abbott', 'necessitatibus');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('616170446', 'Edward Rowe', 'voluptas');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('638940263', 'Catherine Carroll', 'sit');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('648465544', 'Sincere Kiehn', 'quod');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('674528398', 'Ms. Earline Gaylord', 'qui');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('695659016', 'Deshawn Hirthe', 'voluptatem');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('718791378', 'Abigail Farrell', 'et');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('724409068', 'Christine Swift', 'quia');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('724542969', 'Cortez Kub III', 'recusandae');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('734552703', 'Corrine Borer', 'accusantium');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('739565404', 'Fleta Heidenreich', 'reiciendis');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('752492846', 'Prof. Saige Raynor', 'aut');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('754532898', 'Emmett Lakin', 'consequatur');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('776670047', 'Miss Anna Kovacek III', 'est');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('777608484', 'Lera Zieme', 'non');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('779589227', 'Evert Harvey', 'error');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('781415388', 'Prof. Bette Ankunding', 'dicta');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('787634944', 'Weston Kulas II', 'natus');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('803882791', 'Evan Crona', 'voluptatem');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('804826635', 'Kathlyn Windler DDS', 'odio');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('812602809', 'Bernard Kling V', 'earum');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('815488641', 'Prof. Christop Bahringer Jr.', 'debitis');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('815731527', 'Ewell Mante', 'omnis');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('818659661', 'Prof. Joan Haag', 'in');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('822446328', 'Toy Mueller', 'dicta');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('825796354', 'Clement Leffler', 'quo');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('832456858', 'Esther Gleichner', 'odio');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('864418083', 'Mr. Osbaldo Kutch', 'aut');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('865275134', 'Kobe Harvey', 'eos');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('902035949', 'Prof. Sallie Hayes II', 'natus');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('914287705', 'Mr. Davin Klocko I', 'dolor');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('952425316', 'Camren Kiehn', 'totam');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('957312656', 'Mohamed Lebsack', 'necessitatibus');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('968277415', 'Prof. Dashawn Renner', 'et');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('969610302', 'Tyra Graham', 'ut');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('980673897', 'Mollie Satterfield', 'saepe');
INSERT INTO `Doctor` (`Doctor_SSN`, `Doctor_Name`, `Specialty`) VALUES ('982074032', 'Marian Waters', 'ipsa');



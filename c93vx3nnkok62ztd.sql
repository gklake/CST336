-- Adminer 4.8.0 MySQL 8.0.23 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartId` bigint NOT NULL AUTO_INCREMENT,
  `customerId` int DEFAULT NULL,
  `foodId` int DEFAULT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `cart` (`cartId`, `customerId`, `foodId`) VALUES
(94,	1,	15),
(111,	1,	6),
(112,	1,	4),
(113,	1,	14),
(114,	1,	2),
(115,	1,	2),
(116,	1,	15),
(117,	10,	1),
(119,	3,	15),
(120,	3,	8),
(127,	1,	3);

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customerId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `favoriteFood` varchar(50) NOT NULL,
  `username` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `passwordPlain` varchar(25) NOT NULL,
  `password` varchar(72) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `profilePicture` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `customers` (`customerId`, `firstName`, `lastName`, `favoriteFood`, `username`, `passwordPlain`, `password`, `profilePicture`) VALUES
(1,	'Gabrielle',	'Lake',	'Sushi',	'glake',	'glake',	'$2a$10$GLP1emw0bQS7sO0o6tZvEOqgr8hc3HYhU8f0CQTXzuYJuOMs7iy7S',	'https://files.catbox.moe/u49ean.jpg'),
(2,	'Ryan',	'P',	'Noodles',	'rpheang',	'rpheang',	'$2b$10$Z9nJVgMKj1zWIqWVsnfTGu9wQzQ1occClRwXlyY5aPj7rrwyAD1kO',	'https://files.catbox.moe/z0rcp0.jpg'),
(3,	'Erik',	'Morris',	'Vanilla',	'emorris',	'emorris',	'$2b$10$IzcSkm5ovlSaLeEvxuISoeNiw0/SA50sqLptdJOXyMcwkdflbt7YC',	'https://files.catbox.moe/5pg8pi.jpg'),
(4,	'Paul212224',	'Nguyen2313',	'Chicken Wings2',	'pnguyen',	'pnguyen',	'$2b$10$2PLqrLivLug/bcZWSjFMXeaZNDtwN5SNqQNIKEH4V14tQHQWorvlu',	'https://files.catbox.moe/yvjzx6.jpeg'),
(10,	'Administration',	'Executive',	'cookies',	'admin',	'secret',	'$2a$10$vNC5jyz7YzQb6MRIVAshWutG.s583m.vTlT06gyzZ2cTTsr1AeuVK',	'https://riverlegacy.org/wp-content/uploads/2021/07/blank-profile-photo.jpeg'),
(20,	'Tom',	'Cruise',	'Pizza',	'Maverick',	'TopGun',	'$2b$10$pEXTzKNabf2wiflF2LAws.FDuAV66W9KkkBiUHe5ZU22n/D4EeZkq',	'https://riverlegacy.org/wp-content/uploads/2021/07/blank-profile-photo.jpeg'),
(21,	'Joseph',	'Arredondo',	'Pizza',	'josephArr12',	'Secret',	'$2b$10$fI2zlacHpYUOee9b0Q781.VXCKcDR3M9eA5Z6qnDiJB7IZWyEOU2.',	'https://riverlegacy.org/wp-content/uploads/2021/07/blank-profile-photo.jpeg');

DROP TABLE IF EXISTS `fooditems`;
CREATE TABLE `fooditems` (
  `foodId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `category` varchar(25) NOT NULL,
  PRIMARY KEY (`foodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `fooditems` (`foodId`, `title`, `price`, `category`) VALUES
(1,	'French Fries',	4,	'Snacks'),
(2,	'Pizza',	9,	'Meals'),
(3,	'Hamburger',	12,	'Meals'),
(4,	'Sprite',	2,	'Drinks'),
(5,	'Dr.Pepper',	2,	'Drinks'),
(6,	'Vanilla Ice Cream',	3,	'Frozen'),
(7,	'Chocolate Ice Cream',	3,	'Frozen'),
(8,	'Chicken Nuggets',	8,	'Meals'),
(9,	'Coca-Cola',	2,	'Drinks'),
(10,	'Strawberry Ice Cream',	3,	'Frozen'),
(11,	'Twix',	2,	'Candy'),
(12,	'KitKat',	2,	'Candy'),
(13,	'Smart Water',	3,	'Drinks'),
(14,	'Skittles',	2,	'Candy'),
(15,	'Potato Chips',	2,	'Snacks'),
(16,	'Bacon',	1,	'Extra'),
(17,	'Cheese',	0,	'Extra'),
(18,	'Truffle',	2,	'Extra'),
(19,	'Pepperoni',	0,	'Extra'),
(20,	'Ham',	1,	'Extra'),
(21,	'Sausage',	1,	'Extra'),
(22,	'Chicken',	2,	'Extra'),
(23,	'Mushroom',	0.5,	'Extra'),
(24,	'Olives',	0.5,	'Extra'),
(25,	'Pineapple',	0.5,	'Extra'),
(26,	'Lettuce',	0,	'Extra'),
(27,	'Tomato',	0,	'Extra'),
(28,	'Pickles',	0.5,	'Extra');

-- 2021-12-08 05:47:43

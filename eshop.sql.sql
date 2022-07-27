-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: ecom_db
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FKg5uhi8vpsuy0lgloxk2h4w5o6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1),(2),(3),(4),(26),(32),(38),(57),(63);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `percentage` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('AAAA','AAAA',20),('Rock','Rock',10);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (66),(66),(66),(66),(66);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_main`
--

DROP TABLE IF EXISTS `order_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_main` (
  `order_id` bigint NOT NULL,
  `buyer_address` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `buyer_phone` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `order_amount` decimal(19,2) NOT NULL,
  `order_status` int NOT NULL DEFAULT '0',
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_main`
--

LOCK TABLES `order_main` WRITE;
/*!40000 ALTER TABLE `order_main` DISABLE KEYS */;
INSERT INTO `order_main` VALUES (6,'asd','asd@a','asd','asd','2022-07-26 19:45:01.988436',6099.00,0,'2022-07-26 19:45:01.988436'),(10,'asd','asd@a','asd','asd','2022-07-27 00:25:48.535550',22697.00,1,'2022-07-27 01:20:12.387271'),(35,'asd','asdfg@a','asd','asd','2022-07-27 01:18:43.634438',10999.00,2,'2022-07-27 01:20:06.431131'),(41,'hitech city, hyderababad, Telengana','chandan@gmail.com','chandan','1235464789','2022-07-27 09:32:35.376772',10999.00,0,'2022-07-27 09:32:35.376772'),(43,'hitech city, hyderababad, Telengana','chandan@gmail.com','chandan','1235464789','2022-07-27 09:32:46.746058',13690.00,0,'2022-07-27 09:32:46.746058'),(45,'hitech city, hyderababad, Telengana','chandan@gmail.com','chandan','1235464789','2022-07-27 09:33:01.774229',6995.00,0,'2022-07-27 09:33:01.774229'),(47,'hitech city, hyderababad, Telengana','chandan@gmail.com','chandan','1235464789','2022-07-27 09:33:10.274575',13690.00,0,'2022-07-27 09:33:10.274575'),(52,'hitech city, hyderababad, Telengana','chandan@gmail.com','chandan','1235464789','2022-07-27 09:33:38.221699',46556.00,0,'2022-07-27 09:33:38.221699'),(54,'hitech city, hyderababad, Telengana','chandan@gmail.com','chandan','1235464789','2022-07-27 09:33:58.330007',10999.00,0,'2022-07-27 09:33:58.330007'),(56,'hitech city, hyderababad, Telengana','chandan@gmail.com','chandan','1235464789','2022-07-27 09:34:16.667818',950.00,0,'2022-07-27 09:34:16.667818'),(65,'hyderabad','chan@gmail.com','chandan','123123','2022-07-27 20:13:38.881005',1395.00,0,'2022-07-27 20:13:38.882007');
/*!40000 ALTER TABLE `order_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_type` int DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `UK_6kq6iveuim6wd90cxo5bksumw` (`category_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (0,'HOME APPLIANCES',0,'2018-03-09 23:03:26.000000','2018-03-10 00:15:27.000000'),(1,'FURNITURE',1,'2018-03-10 00:15:02.000000','2018-03-10 00:15:21.000000'),(2,'KITCHEN AND DINING',2,'2018-03-10 00:15:02.000000','2018-03-10 00:15:21.000000'),(3,'HOME FURNISHING',3,'2018-03-10 01:01:09.000000','2018-03-10 01:01:09.000000'),(4,'STORAGE',4,'2018-03-10 00:26:05.000000','2018-03-10 00:26:05.000000'),(5,'HOME DECOR',5,'2018-03-10 00:26:05.000000','2018-03-10 00:26:05.000000'),(6,'LIGHTING',6,'2018-03-10 00:26:05.000000','2018-03-10 00:26:05.000000'),(7,'GARDEN AND OUTDOOR',7,'2018-03-10 00:26:05.000000','2018-03-10 00:26:05.000000'),(8,'TODAYS DEALS ',8,'2018-03-10 00:26:05.000000','2018-03-10 00:26:05.000000');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_in_order`
--

DROP TABLE IF EXISTS `product_in_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_in_order` (
  `id` bigint NOT NULL,
  `category_type` int NOT NULL,
  `count` int DEFAULT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_stock` int DEFAULT NULL,
  `cart_user_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhnivo3fl2qtco3ulm4mq0mbr5` (`cart_user_id`),
  KEY `FKt0sfj3ffasrift1c4lv3ra85e` (`order_id`),
  CONSTRAINT `FKhnivo3fl2qtco3ulm4mq0mbr5` FOREIGN KEY (`cart_user_id`) REFERENCES `cart` (`user_id`),
  CONSTRAINT `FKt0sfj3ffasrift1c4lv3ra85e` FOREIGN KEY (`order_id`) REFERENCES `order_main` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_in_order`
--

LOCK TABLES `product_in_order` WRITE;
/*!40000 ALTER TABLE `product_in_order` DISABLE KEYS */;
INSERT INTO `product_in_order` VALUES (5,0,1,'2000-Watt (White and Silver)','https://m.media-amazon.com/images/I/717gNQWC7kL._SL1500_.jpg','A001','KENT Force Cyclonic Vacuum Cleaner',6099.00,22,NULL,6),(8,0,1,'Portable Electric Bottle Blender Grinder Mixer, Rechargeable Bottle with 6 Blades (MULTI)','https://m.media-amazon.com/images/I/51LnhA737yL.jpg','A005','LEMBAR Electric Juice Maker',699.00,10,NULL,10),(9,0,2,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,22,NULL,10),(11,0,2,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,20,NULL,NULL),(12,0,9,'2000-Watt (White and Silver)','https://m.media-amazon.com/images/I/717gNQWC7kL._SL1500_.jpg','A001','KENT Force Cyclonic Vacuum Cleaner',6099.00,21,NULL,NULL),(13,0,11,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,20,NULL,NULL),(18,0,1,'Z8 Hot+ normal RO |10 L storage|100%RO|Mineralizer Tech| Wall mount Water Purifier for home','https://m.media-amazon.com/images/I/31wh3h-khZL._SL1000_.jpg','A0012','AO Smith Water Purifier',23278.00,50,NULL,NULL),(20,0,4,'Samsung 253 L 3 Star with Inverter Double Door Refrigerator','https://m.media-amazon.com/images/I/61EcvMbH7zL._SL1500_.jpg','A008','Samsung Double Door Refrigerator',24290.00,60,NULL,NULL),(28,0,1,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,20,26,NULL),(30,0,1,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,20,NULL,NULL),(31,0,1,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,20,NULL,NULL),(33,0,1,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,20,NULL,35),(36,7,2,'2000-Watt (White and Silver)','https://m.media-amazon.com/images/I/717gNQWC7kL._SL1500_.jpg','A001','KENT Force Cyclonic Vacuum Cleaner',6099.00,21,4,NULL),(40,0,1,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,20,NULL,41),(42,0,1,'6 Kg 5 Star (NA-F60LF1HRB, Grey)','https://m.media-amazon.com/images/I/61E5gS4YBIL._SL1500_.jpg','A0011','Panasonic Fully-Automatic Top Loading Washing Machine',13690.00,10,NULL,43),(44,0,5,'Apex-FX 1200mm Ceiling Fan (Brown)','https://m.media-amazon.com/images/I/61Ps-5ghwHL._SL1500_.jpg','A007','Orient Electric Ceiling Fan',1399.00,22,NULL,45),(46,0,1,'6 Kg 5 Star (NA-F60LF1HRB, Grey)','https://m.media-amazon.com/images/I/61E5gS4YBIL._SL1500_.jpg','A0011','Panasonic Fully-Automatic Top Loading Washing Machine',13690.00,9,NULL,47),(49,7,1,'2000-Watt (White and Silver)','https://m.media-amazon.com/images/I/717gNQWC7kL._SL1500_.jpg','A001','KENT Force Cyclonic Vacuum Cleaner',6099.00,21,NULL,NULL),(50,0,2,'Z8 Hot+ normal RO |10 L storage|100%RO|Mineralizer Tech| Wall mount Water Purifier for home','https://m.media-amazon.com/images/I/31wh3h-khZL._SL1000_.jpg','A0012','AO Smith Water Purifier',23278.00,50,NULL,52),(53,0,1,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,19,NULL,54),(55,4,1,'BROWN, 50 Ltr Capacity','https://m.media-amazon.com/images/I/81A-O+3dEeL._SL1500_.jpg','S002','Esquire Laundry Basket',950.00,40,NULL,56),(59,0,3,'Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','A0010','Havells Adonia Storage Water Heater',10999.00,18,4,NULL),(60,0,3,'2200 TMSS OTG with Motorised Rotisserie and Stainless Steel Body,22 Liter','https://m.media-amazon.com/images/I/51bxrDfB6XL._SL1500_.jpg','A003','Bajaj Oven Toaster Griller',5799.00,40,4,NULL),(64,8,5,'Wooden Chopping Board with Knife Set and Scissor, 5 Piece Stainless Steel Kitchen Knife Knives Set with Knife Scissor','https://m.media-amazon.com/images/I/51PfB9Eob9L._SX450_.jpg','TD001','Zoomstore Wooden Knive set',279.00,22,NULL,65);
/*!40000 ALTER TABLE `product_in_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `product_id` varchar(255) NOT NULL,
  `category_type` int DEFAULT '0',
  `create_time` datetime(6) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_status` int DEFAULT '0',
  `product_stock` int NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES ('A001',7,'2022-07-23 23:03:26.000000','2000-Watt (White and Silver)','https://m.media-amazon.com/images/I/717gNQWC7kL._SL1500_.jpg','KENT Force Cyclonic Vacuum Cleaner',6099.00,0,21,'2022-07-27 01:23:48.985000'),('A0010',0,'2022-07-23 23:03:26.000000','Spin 15-Litre Vertical Storage Water Heater (Geyser) White Blue 5 Star','https://m.media-amazon.com/images/I/61R1pxdUo7L._SL1500_.jpg','Havells Adonia Storage Water Heater',10999.00,0,18,'2022-07-27 09:33:58.338000'),('A0011',0,'2022-07-23 23:03:26.000000','6 Kg 5 Star (NA-F60LF1HRB, Grey)','https://m.media-amazon.com/images/I/61E5gS4YBIL._SL1500_.jpg','Panasonic Fully-Automatic Top Loading Washing Machine',13690.00,0,8,'2022-07-27 09:33:10.290000'),('A0012',0,'2022-07-23 23:03:26.000000','Z8 Hot+ normal RO |10 L storage|100%RO|Mineralizer Tech| Wall mount Water Purifier for home','https://m.media-amazon.com/images/I/31wh3h-khZL._SL1000_.jpg','AO Smith Water Purifier',23278.00,0,48,'2022-07-27 09:33:38.237000'),('A002',0,'2022-07-23 23:03:26.000000','Unique string function to chop vegetables and fruits with ease','https://m.media-amazon.com/images/I/312YOAG9luL.jpg','Butterfly Premium Vegetable Chopper',385.00,0,60,'2022-06-23 23:07:26.000000'),('A003',0,'2022-07-23 23:03:26.000000','2200 TMSS OTG with Motorised Rotisserie and Stainless Steel Body,22 Liter','https://m.media-amazon.com/images/I/51bxrDfB6XL._SL1500_.jpg','Bajaj Oven Toaster Griller',5799.00,0,40,'2022-07-23 23:03:26.000000'),('A004',0,'2022-07-23 23:03:26.000000','0.6L with 5 Cup Capacity, Keep Warm Function & Borosilicate Glass jar (600W)','https://m.media-amazon.com/images/I/61VEaIhKejS._SL1500_.jpg','Croma Drip Coffee Maker',1699.00,0,22,'2022-07-23 23:03:26.000000'),('A005',0,'2022-07-23 23:03:26.000000','Portable Electric Bottle Blender Grinder Mixer, Rechargeable Bottle with 6 Blades (MULTI)','https://m.media-amazon.com/images/I/51LnhA737yL.jpg','LEMBAR Electric Juice Maker',699.00,0,9,'2022-07-27 00:25:48.549000'),('A006',0,'2022-07-23 23:03:26.000000','60 cm 1000 m³/HR Pyramid Kitchen Chimney (HOOD CLASS PRO PB BK LTW 60, Baffle Filters,Black)','https://m.media-amazon.com/images/I/61QkGY-g-WL._SL1500_.jpg','Faber Kitchen Chimney',7390.00,0,50,'2022-07-23 23:03:26.000000'),('A007',0,'2022-07-23 23:03:26.000000','Apex-FX 1200mm Ceiling Fan (Brown)','https://m.media-amazon.com/images/I/61Ps-5ghwHL._SL1500_.jpg','Orient Electric Ceiling Fan',1399.00,0,17,'2022-07-27 09:33:01.782000'),('A008',0,'2022-07-23 23:03:26.000000','Samsung 253 L 3 Star with Inverter Double Door Refrigerator','https://m.media-amazon.com/images/I/61EcvMbH7zL._SL1500_.jpg','Samsung Double Door Refrigerator',24290.00,0,60,'2022-07-23 23:03:26.000000'),('A009',0,'2022-07-23 23:03:26.000000','Blue Star 0.8 Tons 3 Star Inverter Split AC(Copper, 2020 Model, IC309RBTU, White)','https://m.media-amazon.com/images/I/515axvaBL7L._SL1500_.jpg','Blue Star Split AC',29990.00,0,40,'2022-07-23 23:03:26.000000'),('D001',5,'2022-07-23 23:03:26.000000','Shooting Star Photo Frame Set of 16 Individual Photo Frames with Hanging Accessories','https://m.media-amazon.com/images/I/719hT771ehL._SL1100_.jpg','Art Streer Photoframe set',1349.00,0,50,'2022-07-23 23:03:26.000000'),('D002',5,'2022-07-23 23:03:26.000000','with Alexa Built-in (Misty Blue)','https://m.media-amazon.com/images/I/81hYFRo+oNL._SL1500_.jpg','Lenovo smart clock',2999.00,0,22,'2022-07-23 23:03:26.000000'),('D003',5,'2022-07-23 23:03:26.000000','Polystyrene Long Fiber Wood Rectangular Wall 15 x 40 inch (Natural Oak)','https://m.media-amazon.com/images/I/713n-a5gzML._SL1500_.jpg','Creative arts Rectangular Mirror',3993.00,0,60,'2022-07-23 23:03:26.000000'),('D004',5,'2022-07-23 23:03:26.000000','Mosaic Glass, Balcony Decoration Items Outdoor, Balcony Decor,Candle Stand|Pack of 2','https://m.media-amazon.com/images/I/81SX+y7vWLL._SL1500_.jpg','Homesake Candle holders',225.00,0,40,'2022-07-23 23:03:26.000000'),('D005',5,'2022-07-23 23:03:26.000000','Set of 2 Color for Home Decor(Black, Design 1)','https://m.media-amazon.com/images/I/51GXfG++IFL._SL1500_.jpg','SleekDeco candle holder set',498.00,0,22,'2022-07-23 23:03:26.000000'),('D006',5,'2022-07-23 23:03:26.000000','Home Décor Pack,2 ,Plastic','https://m.media-amazon.com/images/I/4103UfOv-UL._SL1000_.jpg','White colored vase for home decor',345.00,0,10,'2022-07-23 23:03:26.000000'),('D007',5,'2022-07-23 23:03:26.000000','Metal Flower vase for Home Decor and Living Room Vintage Decor (9 x 9 x 25 cm)','https://m.media-amazon.com/images/I/91YlWoqh21L._SL1500_.jpg','Urban Born Flower vase',699.00,0,50,'2022-07-23 23:03:26.000000'),('F001',1,'2022-07-23 23:03:26.000000','(Set of 4)','https://m.media-amazon.com/images/I/819oFboXbzL._SL1500_.jpg','Supreme Web Chairs',6999.00,0,22,'2022-07-23 23:03:26.000000'),('F0010',1,'2022-07-23 23:03:26.000000','Sheesham Wood Wooden Dining Set 4 Seater | Dining Table Set with 4 Chairs (Warm Chestnut Finish)','https://m.media-amazon.com/images/I/71Y8DAYVGpL._SL1500_.jpg','Porash Wooden Dining Table set (4)',17299.00,0,10,'2022-07-23 23:03:26.000000'),('F0011',1,'2022-07-23 23:03:26.000000','Wood Finish Office Modern Sturdy Office Desk PC Laptop Study Writing Table (White)','https://m.media-amazon.com/images/I/61tBgPGDdpL._SL1100_.jpg','Pazano Multipurpose desk',2849.00,0,50,'2022-07-23 23:03:26.000000'),('F0012',1,'2022-07-23 23:03:26.000000','Hanging Swing with Poly-Fibre Patio Seat Padded Cushion Pillow, Black','https://m.media-amazon.com/images/I/61uoVbloFXL._SL1000_.jpg','Carry basket chair Hanging swing',14898.00,0,22,'2022-07-23 23:03:26.000000'),('F0013',1,'2022-07-23 23:03:26.000000','Solimo Capella Engineered Wood Espresso Finish Modern Coffee Table (Brown)','https://m.media-amazon.com/images/I/81TYLcVONSL._SL1500_.jpg','Amazon Brand Modern Coffee Table',4189.00,0,60,'2022-07-23 23:03:26.000000'),('F0014',1,'2022-07-23 23:03:26.000000','Curvy Kitchen Stool/BAR Stool (Qty-1) (Martin, Black&Chrome)','https://m.media-amazon.com/images/I/71JFTxMQE3L._SL1500_.jpg','SAVYA HOME Kitchen Stool/BAR Stool',2999.00,0,40,'2022-07-23 23:03:26.000000'),('F002',1,'2022-07-23 23:03:26.000000','Medium Size Designer Bamboo Wooden Cane Chair for Lawn Chair, Arm Chair, Indoor Outdoor with Cushion','https://m.media-amazon.com/images/I/412CUyjDL1L.jpg','Cane Crafts Wooden Chair',2697.00,0,60,'2022-07-23 23:03:26.000000'),('F003',1,'2022-07-23 23:03:26.000000','Book Shelve Book Case,Book Storage Organizer Shelf for Study Room ( Set of 1 ,Black)','https://m.media-amazon.com/images/I/61fLA6a-hzL._SL1100_.jpg','TRADELLY Foldable Open Book Shelf',899.00,0,40,'2022-07-23 23:03:26.000000'),('F004',1,'2022-07-23 23:03:26.000000','XXXL Faux Leather Bean Bag Filled With Beans (Black and Brown)','https://m.media-amazon.com/images/I/81GlRvn7R5L._SL1500_.jpg','Amazon Brand Leather Bean Bag',1999.00,0,22,'2022-07-23 23:03:26.000000'),('F005',1,'2022-07-23 23:03:26.000000','Multi-Purpose 5 Shelves Shoe Rack Steel Dust-Proof for Footwear(Beige)','https://m.media-amazon.com/images/I/710UUcCHTjL._SL1500_.jpg','Wolpin Shoe rack shelve',959.00,0,10,'2022-07-23 23:03:26.000000'),('F006',1,'2022-07-23 23:03:26.000000','Solimo Medusa Engineered Wood 2 Door Wardrobe (Walnut finish)','https://m.media-amazon.com/images/I/81DqoAs9VbL._SL1500_.jpg','Amazon Brand Wooden 2 Door Wardrobe',6999.00,0,50,'2022-07-23 23:03:26.000000'),('F007',1,'2022-07-23 23:03:26.000000','Queen Size Taurus Engineered Wood Platform Bed with Storage - (Matte Finish_Brown)','https://m.media-amazon.com/images/I/61HcqU1ZFFL._SL1000_.jpg','Wakefit Queen Bed',9768.00,0,60,'2022-07-23 23:03:26.000000'),('F008',1,'2022-07-23 23:03:26.000000','Pressure Relieving,6 Inch Double Size Medium Firm Mattress with Superior Comfort and Anti Microbial Fabric','https://m.media-amazon.com/images/I/515Sxh1XVEL._SL1000_.jpg','Duroflex Memoryfoam Bed',11969.00,0,40,'2022-07-23 23:03:26.000000'),('F009',1,'2022-07-23 23:03:26.000000','Springtek Amaze Eco 4-inch Medium Firm Double Size High Density Foam Mattress (72x48x4 inches)','https://m.media-amazon.com/images/I/817dBQuaSdL._SL1500_.jpg','Springtek Foam Mattress',3959.00,0,22,'2022-07-23 23:03:26.000000'),('G001',7,'2022-07-23 23:03:26.000000','200 LPD Solar Water Heater, Standard (Multicolour, SS-003)','https://m.media-amazon.com/images/I/51WWf12puNL._SL1060_.jpg','Supreme Solar Water Heater',4899.00,0,60,'2022-07-23 23:03:26.000000'),('G0010',7,'2022-07-23 23:03:26.000000','Durable Premier Multi-Purpose Plant Care/Garden Tool kit for Home Garden','https://m.media-amazon.com/images/I/61mCS9kj2uS._SL1500_.jpg','Trustbasket toolkit for Home garden',499.00,0,50,'2022-07-23 23:03:26.000000'),('G0011',7,'2022-07-23 23:03:26.000000','40 Watt Solar Panel 12 V – Polycrystalline (1)','https://m.media-amazon.com/images/I/411hUquh7dL.jpg','Galo 40W Solar panel',2562.00,0,22,'2022-07-23 23:03:26.000000'),('G002',7,'2022-07-23 23:03:26.000000','for Balcony Outdoor Lounge Figurines Statue (19 X 16 cm, L X H)','https://m.media-amazon.com/images/I/91dw2KQfV2L._SL1500_.jpg','Tied Ribbons Birds on tree garden decor',749.00,0,40,'2022-07-23 23:03:26.000000'),('G003',7,'2022-07-23 23:03:26.000000','18 Pipe Big Wind Chime for Home, Garden & Balcony- Pipe Hanging Bell','https://m.media-amazon.com/images/I/71OmZf14VrL._SL1500_.jpg','Paradigm Home decor Garden Windchime',711.00,0,22,'2022-07-23 23:03:26.000000'),('G004',7,'2022-07-23 23:03:26.000000','Rechargeable Insect Killer Bat with LED Light, Black','https://m.media-amazon.com/images/I/61ZvXHcRrrL._SL1500_.jpg','HIT Anti mosquito racquet',499.00,0,10,'2022-07-23 23:03:26.000000'),('G005',7,'2022-07-23 23:03:26.000000','Succulent Planter Desk Mini Ornament (4pcs Combination)','https://m.media-amazon.com/images/I/61j+pIZtjTL._SL1000_.jpg','Youfui Flowerpots for desks',442.00,0,50,'2022-07-23 23:03:26.000000'),('G006',7,'2022-07-23 23:03:26.000000','Variety of Flowers, Fruits, Herbs & Vegetables Seeds 6000 seeds approx for all seasons','https://m.media-amazon.com/images/I/81OPEylE6ML._SL1411_.jpg','SAHAYA 56 variety of seeds',279.00,0,22,'2022-07-23 23:03:26.000000'),('G007',7,'2022-07-23 23:03:26.000000','Shehri Kissan The Urban Farmers Dolomite Garden Lime Fertilizer','https://m.media-amazon.com/images/I/81dfSCp-LOL._SL1500_.jpg','Shehri Kissan The Urban Farmers Dolomite Garden Lime Fertilizer',140.00,0,60,'2022-07-23 23:03:26.000000'),('G008',7,'2022-07-23 23:03:26.000000','Go Garden NPK 19 19 19 Fertilizer','https://m.media-amazon.com/images/I/612LJ7lHWTS._SL1181_.jpg','Go Garden NPK 19 19 19 Fertilizer',199.00,0,40,'2022-07-23 23:03:26.000000'),('G009',7,'2022-07-23 23:03:26.000000','6 Colored 4 inch Plastic Pots / Multicolour / Garden Needs for Live Plants','https://m.media-amazon.com/images/I/31M4csd27oL.jpg','Plants point pots',220.00,0,10,'2022-07-23 23:03:26.000000'),('H001',3,'2022-07-23 23:03:26.000000','King Size Bedsheets for Double Bed with 2 Pillow Covers','https://m.media-amazon.com/images/I/91a8hhh4X5L._SL1500_.jpg','Pledge Creations King size Bedsheet',329.00,0,22,'2022-07-23 23:03:26.000000'),('H0010',3,'2022-07-23 23:03:26.000000','Microfibre All-Weather Reversible Single Bed Comforter Blanket Light Weight Quilt Duvet','https://m.media-amazon.com/images/I/81WepE98QTL._SL1500_.jpg','Divine casa Blanket',799.00,0,22,'2022-07-23 23:03:26.000000'),('H0011',3,'2022-07-23 23:03:26.000000','Lily Supersoft Microfiber Anti-Slip Bathmats (40 x 60 cm, Set of 2)','https://m.media-amazon.com/images/I/819Kf0J2moS._SL1500_.jpg','Wakefit Bathmats',396.00,0,10,'2022-07-23 23:03:26.000000'),('H0012',3,'2022-07-23 23:03:26.000000','Cotton Kitchen Apron With Center Pocket, Free Size, Set of 2','https://m.media-amazon.com/images/I/81yFfl4y5bL._UL1500_.jpg','Ecotribe Kitchen Apron',414.00,0,50,'2022-07-23 23:03:26.000000'),('H0013',3,'2022-07-23 23:03:26.000000','100% Cotton Designer Checks Tablecloth,Use for 6 Seater Dinings,Pack of 1','https://m.media-amazon.com/images/I/81RkPerT61L._SL1500_.jpg','Olive fabs Tablecloth',299.00,0,22,'2022-07-23 23:03:26.000000'),('H002',3,'2022-07-23 23:03:26.000000','Polyester Waterproof Striped Shower Curtain with Rings - 72 Inch X 80 Inch, White','https://m.media-amazon.com/images/I/61w8MWn67aL._SL1000_.jpg','Housey Wousey Shower Curtain',599.00,0,60,'2022-07-23 23:03:26.000000'),('H003',3,'2022-07-23 23:03:26.000000','Polyester Anti Slip Shaggy Fluffy Fur Rug and Carpet for Living Room, Bedroom (Gold, 2x3 feet)','https://m.media-amazon.com/images/I/71PFsClPE3L._SL1500_.jpg','Naze Modern Fur Rug',699.00,0,40,'2022-07-23 23:03:26.000000'),('H004',3,'2022-07-23 23:03:26.000000','Premium Cotton Oval Shape Door mat Bath Mat / Home / Office / Room Mat Color Color brown','https://m.media-amazon.com/images/I/71veVV740LL._SL1000_.jpg','One Point scale mat',99.00,0,22,'2022-07-23 23:03:26.000000'),('H005',3,'2022-07-23 23:03:26.000000','Natural Plain Coir Doormat (Beige) Long-Lasting with Plain Design for Indoor & Covered Door Entrances','https://m.media-amazon.com/images/I/81j3kfaTKbS._SL1500_.jpg','Onlymat Doormat',250.00,0,10,'2022-07-23 23:03:26.000000'),('H006',3,'2022-07-23 23:03:26.000000','100% Room Darkening Blackout Door Curtain 7 feet Set of 2 Polyester Solid Curtain','https://m.media-amazon.com/images/I/61R31xgOA8L._SL1500_.jpg','Cloth fusion Door curtain',1549.00,0,50,'2022-07-23 23:03:26.000000'),('H007',3,'2022-07-23 23:03:26.000000','Set of 2 Royal Silky Cream Door Curtains(HF042) 7X4ft.','https://m.media-amazon.com/images/I/51QH5p3Yz7L.jpg','Homefab Door curtain',403.00,0,22,'2022-07-23 23:03:26.000000'),('H008',3,'2022-07-23 23:03:26.000000','Hollow Fibre Pillow ( 68.58 cm X 40.64 cm, White and Grey )- 2 Pieces, Cotton','https://m.media-amazon.com/images/I/61-Th9Ai7-L._SL1000_.jpg','Wakefit Fibre pillow',767.00,0,60,'2022-07-23 23:03:26.000000'),('H009',3,'2022-07-23 23:03:26.000000','Bed Pillow Set of 2 Pieces (17x27 Inches, Teal and Grey)','https://m.media-amazon.com/images/I/81Gt9Ez-PHL._SL1500_.jpg','Cloth fusion Pillow set(2)',799.00,0,40,'2022-07-23 23:03:26.000000'),('K001',2,'2022-07-23 23:03:26.000000','Set of 25 (Contains: 6 Table Spoons, 6 Tea Spoons, 6 Forks, 6 Knives, 1 Stand), Silver','https://m.media-amazon.com/images/I/81kyI4DNLKL._SL1500_.jpg','Parage Stainless Steel Cutlery Set',889.00,0,22,'2022-07-23 23:03:26.000000'),('K002',2,'2022-07-23 23:03:26.000000','280 mm, Black','https://m.media-amazon.com/images/I/61ItVkRPIuL._SL1000_.jpg','Prestige Granite Dosa Tawa',1120.00,0,10,'2022-07-23 23:03:26.000000'),('K003',2,'2022-07-23 23:03:26.000000','Fresh Hot Wave Inner Stainless Steel Lunch Box (Blue, 225ml, 375ml and 550ml)','https://m.media-amazon.com/images/I/71StScK+0HL._SL1500_.jpg','Cello Max Lunchbox',795.00,0,50,'2022-07-23 23:03:26.000000'),('K004',2,'2022-07-23 23:03:26.000000','6 Piece Set with Wooden Block','https://m.media-amazon.com/images/I/51BgScyg2qL._SL1000_.jpg','Pigeon Knives 6 piece set',569.00,0,22,'2022-07-23 23:03:26.000000'),('K005',2,'2022-07-23 23:03:26.000000','2 Burner, Black, Powder coater Mild Steel with Glass Top, Manual','https://m.media-amazon.com/images/I/614Q2qMRVBL._SL1500_.jpg','Prestige LPG Gas stove',3028.00,0,60,'2022-07-23 23:03:26.000000'),('K006',2,'2022-07-23 23:03:26.000000','Heat Resistant Long Waterproof Non-Slip Potholder for Barbecue, Cooking, Baking (2 Pcs of Gloves)','https://m.media-amazon.com/images/I/61mGVK0po3L._SL1200_.jpg','Voix Gloves',799.00,0,40,'2022-07-23 23:03:26.000000'),('K007',2,'2022-07-23 23:03:26.000000','Small Steel Plates for Snacks | Breakfast Plates, 200 ML, Set of 4','https://m.media-amazon.com/images/I/71N-BVPENqL._SL1500_.jpg','Hazel Stainless steel plates',449.00,0,22,'2022-07-23 23:03:26.000000'),('K008',2,'2022-07-23 23:03:26.000000','Favourite Induction Base Aluminium Pressure Cooker with Outer Lid, 3 Litres (Silver)','https://m.media-amazon.com/images/I/51qxl7UZFhL._SL1472_.jpg','Pigeon Aluminium Pressure cooker',745.00,0,10,'2022-07-23 23:03:26.000000'),('K009',2,'2022-07-23 23:03:26.000000','Aluminium Omega Deluxe Granite Fry Pan, 24 cm, Black (36305)','https://m.media-amazon.com/images/I/61Nh0dNqbsL._SL1000_.jpg','Prestige Fry pan',980.00,0,50,'2022-07-23 23:03:26.000000'),('L001',6,'2022-07-23 23:03:26.000000','10Watts Vega Round Surface LED Panel Light (Warm White)','https://m.media-amazon.com/images/I/4107mIInNUL._SL1500_.jpg','Murphy 10W LED Panel lights',395.00,0,22,'2022-07-23 23:03:26.000000'),('L002',6,'2022-07-23 23:03:26.000000','Study lamp Rechargeable Led Touch On Off Switch Dimmer Led Table Lamps White Desk Light','https://m.media-amazon.com/images/I/41+ERlW2gqL.jpg','One94store Studylamp',399.00,0,60,'2022-07-23 23:03:26.000000'),('L003',6,'2022-07-23 23:03:26.000000','Rechargeable Lantern (White)','https://m.media-amazon.com/images/I/71kuB8aP5zL._SL1500_.jpg','wipro Rechargeable Lantern',841.00,0,40,'2022-07-23 23:03:26.000000'),('L004',6,'2022-07-23 23:03:26.000000','E26 Brass Mid Century Modern Semi Flush Mount Ceiling 8-Light Fixtures (White)-AC','https://m.media-amazon.com/images/I/41Q838zK9-L._SL1000_.jpg','World of Chandelier Modern light fixture',3399.00,0,22,'2022-07-23 23:03:26.000000'),('L005',6,'2022-07-23 23:03:26.000000','9W Led bulb cool day light Bulb, Pack of 10','https://m.media-amazon.com/images/I/21X2Z8ovW+L.jpg','Roshani 9W LED (10)',459.00,0,10,'2022-07-23 23:03:26.000000'),('L006',6,'2022-07-23 23:03:26.000000','30W LED White Tubelight, Pack of 2, (8718696168684)','https://m.media-amazon.com/images/I/51F8e9NIesL._SL1500_.jpg','PHILIPS LED White',1054.00,0,50,'2022-07-23 23:03:26.000000'),('L007',6,'2022-07-23 23:03:26.000000','Energy Saving LED Lamp Nightlight for Children Kids Bedroom - Pack of 1 (Warm White)','https://m.media-amazon.com/images/I/71ac0MXYVrL._SL1500_.jpg','TARAM Night lamp',269.00,0,22,'2022-07-23 23:03:26.000000'),('S001',4,'2022-07-23 23:03:26.000000','Black Mesh Metal Desk Pen Pencil Organiser Cup Holder Office','https://m.media-amazon.com/images/I/61G7aQcEiML._SL1010_.jpg','OFIXO Desk pen pencil holder',99.00,0,60,'2022-07-23 23:03:26.000000'),('S002',4,'2022-07-23 23:03:26.000000','BROWN, 50 Ltr Capacity','https://m.media-amazon.com/images/I/81A-O+3dEeL._SL1500_.jpg','Esquire Laundry Basket',950.00,0,39,'2022-07-27 09:34:16.678000'),('S003',4,'2022-07-23 23:03:26.000000','Premium Stainless Steel Lockable Technology Hangers (Pack of 6)','https://m.media-amazon.com/images/I/61YGCDI3DQL._SL1100_.jpg','IVN Stainless steel hangers',220.00,0,22,'2022-07-23 23:03:26.000000'),('S004',4,'2022-07-23 23:03:26.000000','Clothes Drying Stand Foldable Cloth Racks for Drying Clothes (Bed)','https://m.media-amazon.com/images/I/71JEunmpBvL._SL1500_.jpg','Limetro Stainless steel Drying stand',1899.00,0,10,'2022-07-23 23:03:26.000000'),('S005',4,'2022-07-23 23:03:26.000000','Wooden Key Holder with 7 Key Hooks for Wall (Multicolor)','https://m.media-amazon.com/images/I/61XEGSrNNOL._SL1024_.jpg','Dinine craft Keyholder',209.00,0,22,'2022-07-23 23:03:26.000000'),('S006',4,'2022-07-23 23:03:26.000000','Wall Mounted Multipurpose Bathroom Cabinet with Double Door Shelf Organizer','https://m.media-amazon.com/images/I/61VbIBF8CRL._SL1500_.jpg','Cipla Multipurpose bathroom cabinet',999.00,0,60,'2022-07-23 23:03:26.000000'),('S007',4,'2022-07-23 23:03:26.000000','Umi Kids Book Rack Storage Bookshelf |Multi-Purpose Shelves for Books Storage','https://m.media-amazon.com/images/I/91QnvorjDKL._SL1500_.jpg','Amazon Brand kids Book rack',1349.00,0,40,'2022-07-23 23:03:26.000000'),('S008',4,'2022-07-23 23:03:26.000000','Classic Look Temple/Wooden Mandir/Prayer Unit in Sheesham Wood','https://m.media-amazon.com/images/I/415tzryeLwL.jpg','Shilpi Wooden prayer unit',16141.00,0,22,'2022-07-23 23:03:26.000000'),('S009',4,'2022-07-23 23:03:26.000000','Solid Sheesham Kitchen Medium Storage Crockery Cabinet in Honey Finish','https://m.media-amazon.com/images/I/71QDryM6whL._SL1200_.jpg','Angel Crockery cabinet',18290.00,0,10,'2022-07-23 23:03:26.000000'),('TD001',8,'2022-07-23 23:03:26.000000','Wooden Chopping Board with Knife Set and Scissor, 5 Piece Stainless Steel Kitchen Knife Knives Set with Knife Scissor','https://m.media-amazon.com/images/I/51PfB9Eob9L._SX450_.jpg','Zoomstore Wooden Knive set',279.00,0,17,'2022-07-27 20:13:38.895000'),('TD0010',8,'2022-07-23 23:03:26.000000','Green Lawn Floor Carpet for Outdoor and Indoor (2 X 3 feet, Green)','https://m.media-amazon.com/images/I/81FV+OxRYxS._SL1500_.jpg','Akshaya Artificial grass mat for balcony',399.00,0,10,'2022-07-23 23:03:26.000000'),('TD0011',8,'2022-07-23 23:03:26.000000','Combo Pack of 2 Double Bedsheet with 4 Pillow Covers|Glace Cotton -Pink & Green','https://m.media-amazon.com/images/I/61L1i3pHxBL.jpg','VAS Collections Combo of 2 Double Bedsheets',599.00,0,50,'2022-07-23 23:03:26.000000'),('TD0012',8,'2022-07-23 23:03:26.000000','Standard Size 24*16 inches Microfiber Soft Pillows for Bed, Set of 4 Pillows (Pack of 4)','https://m.media-amazon.com/images/I/51bWRvVRp3S._SL1500_.jpg','Indiyano Pillows (4)',301.00,0,22,'2022-07-23 23:03:26.000000'),('TD0013',8,'2022-07-23 23:03:26.000000','3 Sections Metal Lacquer Pen StaOfficial  Black','https://m.media-amazon.com/images/I/51ZczMeEdqL.jpg','SKYFUN Office Pen stand',260.00,0,60,'2022-07-23 23:03:26.000000'),('TD0014',8,'2022-07-23 23:03:26.000000','Stainless Steel / with Plastic Coating Hanger , Steel Pack of 12','https://m.media-amazon.com/images/I/61YGCDI3DQL._SL1100_.jpg','Rockfield Cloth hanger',180.00,0,40,'2022-07-23 23:03:26.000000'),('TD0015',8,'2022-07-23 23:03:26.000000','Metal Quartz Wall Clock (32 cm x 32 cm x 3.5 cm, White)','https://m.media-amazon.com/images/I/71Q7VeAsGRL._SL1200_.jpg','Ajanta Wall clock',429.00,0,22,'2022-07-23 23:03:26.000000'),('TD0016',8,'2022-07-23 23:03:26.000000','Gold, Classic Cubist Bed Lamp Festive Gifts perfect for Universal occasion','https://ii1.pepperfry.com/media/catalog/product/c/l/800x880/classic-cubist-wooden-table-lamp--with-golden-shade-classic-cubist-wooden-table-lamp--with-golden-sh-iaxdfl.jpg','Torchiere Cubist Wooden lamp',1590.00,0,10,'2022-07-23 23:03:26.000000'),('TD0017',8,'2022-07-23 23:03:26.000000','Black Matt Finish Multicolor Cups (Set of 6)','https://m.media-amazon.com/images/I/61HGZKNaU+L._SL1500_.jpg','Matt finish Multicolor cups',569.00,0,50,'2022-07-23 23:03:26.000000'),('TD0018',8,'2022-07-23 23:03:26.000000','Pigeon 1.5 litres 1500 Watts Electric Kettle','https://m.media-amazon.com/images/I/51DGcy8eBCL._SL1080_.jpg','PIGEON-ELECTRIC-KETTLE',549.00,0,22,'2022-07-23 23:03:26.000000'),('TD0019',8,'2022-07-23 23:03:26.000000','Sony Bravia (43 inches) 4K Ultra HD Smart LED Google TV KD-55X80AJ (Black) (2021 Model)','https://m.media-amazon.com/images/I/81lpllAGcBL._SL1500_.jpg','Sony Bravia (43 inches) Full HD Smart LED TV ',34999.00,0,60,'2022-07-23 23:03:26.000000'),('TD002',8,'2022-07-23 23:03:26.000000','4 Burner Gas Stove, Black (ISI Certified,1 year warranty with Doorstep Service)','https://m.media-amazon.com/images/I/61oUKvy9QLL._SL1500_.jpg','Lifelong Glass Top Gas Stove',1599.00,0,60,'2022-07-23 23:03:26.000000'),('TD0020',8,'2022-07-23 23:03:26.000000','Tufted Duvet Cover Set Boho Quilt Cover UO Bedding Cotton Blanket Cinnamon','https://i.ebayimg.com/images/g/HDQAAOSwNhJgbEJW/s-l1600.jpg','Eden tufted Duvet Cover set',5001.00,0,40,'2022-07-23 23:03:26.000000'),('TD003',8,'2022-07-23 23:03:26.000000','1000 W Dry Iron with Innovative Tail Light Indicator, Weilburger Soleplate (Black)','https://m.media-amazon.com/images/I/61mjqxyKeML._SL1500_.jpg','Usha Aurora Dry Iron',696.00,0,40,'2022-07-23 23:03:26.000000'),('TD007',8,'2022-07-23 23:03:26.000000','Plastic LED Desk light, White','https://m.media-amazon.com/images/I/61vG1VEvvmL._SL1500_.jpg','PHILIPS LED Desk light',583.00,0,60,'2022-07-23 23:03:26.000000'),('TD008',8,'2022-07-23 23:03:26.000000','12Pcs Plastic Gamla/Planter/Pot with Bottom Plate/Tray, 8 inch','https://m.media-amazon.com/images/I/61T2apnES9L._SL1280_.jpg','Kraft pots (12 Pcs)',588.00,0,40,'2022-07-23 23:03:26.000000'),('TD009',8,'2022-07-23 23:03:26.000000','LOOM SOLAR Panel 50 WATT/12 V MONO PERC','https://m.media-amazon.com/images/I/31QrpqoCUZL.jpg','LOOM solar panel',2684.00,0,22,'2022-07-23 23:03:26.000000');
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sx468g52bpetvlad2j9y0lptc` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','asd','asd@g','asd','$2a$10$YY0aLAwkx2FHGkupckTqyO7gGc1Lt2.UFVreRFL3YiGcMitl8f0.m','asd','ROLE_CUSTOMER'),(2,_binary '','asd','rock@q','asd','$2a$10$wM4oh57Ygcz4N/zEdjwYYOvVcz4I1BP5SJ7FArBF0t56gepenkBIW','asd','ROLE_CUSTOMER'),(3,_binary '','asd','asdf@a','asd','$2a$10$3YaMnJIRjlqMtjKBJ2MQnesbB/w99vDaQKD/iR8vhORRydoDEBAJ2','asd','ROLE_CUSTOMER'),(4,_binary '','asd','asd@a','asd','$2a$10$MpF4tv0.MghN6Yer9iFjsOJ0mw/L473TC2fstNJ.7vuVdHmUqLMlq','asd','ROLE_CUSTOMER'),(26,_binary '','asd','as@a','asd','$2a$10$HLGr7OAh13P9GkRy/2pP/ODlSeEJqx86V/UukOJc.JToPnpdK9y8W','asd','ROLE_CUSTOMER'),(32,_binary '','asd','asdfg@a','asd','$2a$10$P1sTgCxdJXP6E04TjobIb.t4JBXlFvpPn7ClU.yjzVSE7FDWuT9ri','asd','ROLE_CUSTOMER'),(38,_binary '','hitech city, hyderababad, Telengana','chandan@gmail.com','chandan','$2a$10$mYxDXK/UgUO4GicPP1KtZeeEnoEEYYHdhupHVDr67x9lXlwvoBc92','1235464789','ROLE_CUSTOMER'),(57,_binary '','hyderababad, Telengana','admin@gmail.com','owner','$2a$10$VjaQtSFNuTMaUIw5sk5pc.Hj1J/C.l5es8/c2Bz6cHDrAJEkS4m8S','1234568790','ROLE_MANAGER'),(63,_binary '','hyderabad','chan@gmail.com','chandan','$2a$10$SOVk0mbAtIxrK1sYSN7KouywQSL.4Iig1tAHGhcMIA0M3yfPtSQD.','123123','ROLE_CUSTOMER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` bigint NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKklfv8svemdde0od1rs6mgstb` (`product_id`),
  KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`),
  CONSTRAINT `FKklfv8svemdde0od1rs6mgstb` FOREIGN KEY (`product_id`) REFERENCES `product_info` (`product_id`),
  CONSTRAINT `FKtrd6335blsefl2gxpb8lr0gr7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (7,'2022-07-27 00:14:40.445000','A005',4),(14,'2022-07-27 00:36:18.282000','A0010',4),(15,'2022-07-27 00:36:30.363000','A001',4),(16,'2022-07-27 00:37:28.553000','A0010',4),(17,'2022-07-27 00:38:48.904000','A0010',4),(19,'2022-07-27 00:39:22.924000','A0012',4),(21,'2022-07-27 00:40:59.609000','A008',4),(22,'2022-07-27 00:44:18.711000','A001',4),(23,'2022-07-27 00:45:20.886000','A0010',4),(24,'2022-07-27 00:47:55.795000','A0010',4),(25,'2022-07-27 00:49:15.785000','A0010',4),(27,'2022-07-27 00:54:55.253000','A0010',26),(29,'2022-07-27 01:02:37.138000','A0010',4),(34,'2022-07-27 01:18:27.258000','A0010',32),(37,'2022-07-27 01:26:59.165000','A001',4),(39,'2022-07-27 09:32:18.578000','A0010',38),(48,'2022-07-27 09:33:23.182000','A001',38),(51,'2022-07-27 09:33:31.601000','A0012',38),(58,'2022-07-27 17:42:19.518000','A0010',4),(61,'2022-07-27 17:50:39.719000','A003',4),(62,'2022-07-27 17:51:33.416000','A001',4);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27 20:38:34

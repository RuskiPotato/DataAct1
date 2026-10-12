-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: car_repair_shop
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id_brand` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_brand`),
  UNIQUE KEY `brand_name_UNIQUE` (`brand_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (5,'Alfa Romeo'),(4,'Cadillac'),(3,'Ford'),(2,'Honda'),(1,'Toyota');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_models`
--

DROP TABLE IF EXISTS `car_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_models` (
  `idcar_models` int NOT NULL AUTO_INCREMENT,
  `id_brand` int NOT NULL,
  `model_name` varchar(45) NOT NULL,
  `model_year` int NOT NULL,
  PRIMARY KEY (`idcar_models`),
  KEY `id_brand_idx` (`id_brand`),
  CONSTRAINT `id_brand` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_models`
--

LOCK TABLES `car_models` WRITE;
/*!40000 ALTER TABLE `car_models` DISABLE KEYS */;
INSERT INTO `car_models` VALUES (1,1,'Vios',2016),(2,1,'Vios',2020),(3,1,'Innova',2018),(4,2,'City',2017),(5,2,'Civic',2019),(6,3,'Fiesta',2016),(7,3,'Explorer',2020),(8,4,'Escalade',2021),(9,5,'Giulia',2016);
/*!40000 ALTER TABLE `car_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id_customer` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Jason','Cruz','09171234567'),(2,'Maria','Santos','09181234567'),(3,'Jack','Reyes','09191234567'),(4,'Ana','Smith','09201234567'),(5,'Jose','Mendoza','09211234567'),(6,'Carla','Ramos','09221234567'),(7,'Miguel','Torres','09231234567'),(8,'Aaron','Navarro','09241234567');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanics`
--

DROP TABLE IF EXISTS `mechanics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanics` (
  `id_mechanic` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`id_mechanic`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanics`
--

LOCK TABLES `mechanics` WRITE;
/*!40000 ALTER TABLE `mechanics` DISABLE KEYS */;
INSERT INTO `mechanics` VALUES (1,'Ramon','Truli','09171112222','2019-03-15'),(2,'Isaiah','Veneration','09182223333','2021-07-01'),(3,'Marco','Villanueva','09193334444','2023-01-10');
/*!40000 ALTER TABLE `mechanics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_category`
--

DROP TABLE IF EXISTS `part_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_category` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_category`
--

LOCK TABLES `part_category` WRITE;
/*!40000 ALTER TABLE `part_category` DISABLE KEYS */;
INSERT INTO `part_category` VALUES (1,'Engine'),(2,'Brakes'),(3,'Electrical'),(4,'Filters'),(5,'Suspension'),(6,'Fluids'),(7,'Radiator'),(8,'Body Panels'),(9,'Transmission');
/*!40000 ALTER TABLE `part_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `id_parts` int NOT NULL AUTO_INCREMENT,
  `part_number` varchar(45) NOT NULL,
  `part_name` varchar(80) NOT NULL,
  `id_category` int NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `stock_qty` int NOT NULL,
  `id_supplier` int NOT NULL,
  PRIMARY KEY (`id_parts`),
  UNIQUE KEY `part_number_UNIQUE` (`part_number`),
  KEY `fk_parts_category` (`id_category`),
  KEY `fk_parts_supplier` (`id_supplier`),
  CONSTRAINT `fk_parts_category` FOREIGN KEY (`id_category`) REFERENCES `part_category` (`id_category`),
  CONSTRAINT `fk_parts_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `parts_supplier` (`id_partsupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,'OF-1001','Oil Filter',4,180.00,280.00,40,3),(2,'AF-1002','Air Filter',4,220.00,350.00,25,3),(3,'CF-1003','Cabin Filter',4,250.00,400.00,18,3),(4,'BP-2001','Front Brake Pads',2,900.00,1450.00,12,2),(5,'BP-2002','Rear Brake Pads',2,750.00,1200.00,9,2),(6,'BD-2003','Brake Disc Rotor',2,1800.00,2700.00,6,2),(7,'SP-3001','Spark Plug Set (4)',1,650.00,950.00,8,1),(8,'TB-3002','Timing Belt',1,1400.00,2100.00,5,1),(9,'WP-3003','Water Pump',1,1600.00,2400.00,4,1),(10,'BT-4001','Car Battery 12V',3,3200.00,4300.00,7,4),(11,'HB-4002','Headlight Bulb H4',3,250.00,450.00,30,4),(12,'SH-5001','Front Shock Absorber',5,2200.00,3300.00,6,1),(13,'SL-5002','Stabilizer Link',5,400.00,650.00,14,1),(14,'EO-6001','Engine Oil 4L',6,1100.00,1550.00,3,1),(15,'BF-6002','Brake Fluid 500ml',6,150.00,250.00,20,2);
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts_supplier`
--

DROP TABLE IF EXISTS `parts_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts_supplier` (
  `id_partsupplier` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(80) NOT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_partsupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts_supplier`
--

LOCK TABLES `parts_supplier` WRITE;
/*!40000 ALTER TABLE `parts_supplier` DISABLE KEYS */;
INSERT INTO `parts_supplier` VALUES (1,'RB Hub Trading','02-8555-0101','sales@autopartshub.gmail.com'),(2,'Reliable Brake Supply','02-8555-0102','orders@RBS.gmail.com'),(3,'Metro Filter Depot','02-8555-0103','info@metrofilter.gmail.com'),(4,'Fernando Electrical Parts','02-8555-0104','sales@primeelectrical.gmail.com');
/*!40000 ALTER TABLE `parts_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_order_parts`
--

DROP TABLE IF EXISTS `repair_order_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_order_parts` (
  `id_order` int NOT NULL,
  `id_parts` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_order`,`id_parts`),
  KEY `fk_rop_parts` (`id_parts`),
  CONSTRAINT `fk_rop_order` FOREIGN KEY (`id_order`) REFERENCES `repair_orders` (`id_order`),
  CONSTRAINT `fk_rop_parts` FOREIGN KEY (`id_parts`) REFERENCES `parts` (`id_parts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_order_parts`
--

LOCK TABLES `repair_order_parts` WRITE;
/*!40000 ALTER TABLE `repair_order_parts` DISABLE KEYS */;
INSERT INTO `repair_order_parts` VALUES (1,1,1,260.00),(1,2,1,350.00),(1,14,1,1550.00),(2,4,1,1450.00),(2,15,1,250.00),(3,7,1,950.00),(4,4,1,1450.00),(4,6,2,2700.00),(4,15,1,250.00),(5,10,1,4300.00),(6,1,1,280.00),(6,3,1,400.00),(7,12,2,3300.00),(7,13,2,650.00),(8,8,1,2100.00),(8,9,1,2400.00),(9,5,1,1200.00),(9,11,2,450.00);
/*!40000 ALTER TABLE `repair_order_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_orders`
--

DROP TABLE IF EXISTS `repair_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_orders` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `id_customer` int NOT NULL,
  `order_date` date NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `id_vehicle` int NOT NULL,
  `id_mechanic` int NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_customer_idx` (`id_customer`),
  KEY `fk_orders_vehicle` (`id_vehicle`),
  KEY `fk_orders_mechanic` (`id_mechanic`),
  CONSTRAINT `fk_orders_mechanic` FOREIGN KEY (`id_mechanic`) REFERENCES `mechanics` (`id_mechanic`),
  CONSTRAINT `fk_orders_vehicle` FOREIGN KEY (`id_vehicle`) REFERENCES `vehicles` (`id_vehicle`),
  CONSTRAINT `id_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_orders`
--

LOCK TABLES `repair_orders` WRITE;
/*!40000 ALTER TABLE `repair_orders` DISABLE KEYS */;
INSERT INTO `repair_orders` VALUES (1,1,'2026-09-02',500.00,1,1),(2,2,'2026-09-05',800.00,2,2),(3,3,'2026-09-09',350.00,3,3),(4,4,'2026-09-14',1200.00,4,1),(5,5,'2026-09-18',600.00,5,2),(6,6,'2026-09-22',450.00,6,3),(7,1,'2026-09-25',700.00,9,1),(8,7,'2026-10-01',900.00,7,2),(9,8,'2026-10-05',400.00,8,3),(10,2,'2026-10-08',300.00,2,1);
/*!40000 ALTER TABLE `repair_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id_vehicle` int NOT NULL AUTO_INCREMENT,
  `id_customer` int NOT NULL,
  `id_model` int NOT NULL,
  `plate_no` varchar(15) NOT NULL,
  PRIMARY KEY (`id_vehicle`),
  UNIQUE KEY `plate_no_UNIQUE` (`plate_no`),
  KEY `fk_vehicles_customer` (`id_customer`),
  KEY `fk_vehicles_model` (`id_model`),
  CONSTRAINT `fk_vehicles_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`),
  CONSTRAINT `fk_vehicles_model` FOREIGN KEY (`id_model`) REFERENCES `car_models` (`idcar_models`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,1,1,'NAB 1234'),(2,2,4,'NCD 5678'),(3,3,6,'NEF 9012'),(4,4,3,'NGH 3456'),(5,5,7,'NJK 7890'),(6,6,2,'NLM 2468'),(7,7,5,'NPQ 1357'),(8,8,9,'NRS 8642'),(9,1,8,'NTU 9753');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-12 22:17:04

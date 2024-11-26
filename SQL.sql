-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: talentmanagesystem
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `basic_dict_data`
--

DROP TABLE IF EXISTS `basic_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_dict_data` (
  `dict_data_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码主键id',
  `dict_sort` int NOT NULL DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '字典标签',
  `dict_label_jap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '日语',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志位',
  PRIMARY KEY (`dict_data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_dict_data`
--

LOCK TABLES `basic_dict_data` WRITE;
/*!40000 ALTER TABLE `basic_dict_data` DISABLE KEYS */;
INSERT INTO `basic_dict_data` VALUES (1,1,'系统管理员','システム管理者','0','dict_user_type',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(2,2,'普通管理员','管理者','2','dict_user_type',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(3,3,'普通用户','ユーザー','3','dict_user_type',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(4,1,'正常','正常','0','dict_disable',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(5,2,'停用','停止','1','dict_disable',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(6,1,'未删除','未削除','0','dict_delflag',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(7,2,'删除','削除','2','dict_delflag',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(8,1,'男','男','0','dict_sex',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(9,2,'女','女','1','dict_sex',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(10,2,'中国','中国','1','dict_nation',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(11,1,'母语','母語','0','dict_japanese_level',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(12,1,'日本','日本','0','dict_nation',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(13,3,'其它国家','その他','2','dict_nation',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(14,2,'N1','N1','1','dict_japanese_level',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(15,3,'N2','N2','2','dict_japanese_level',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(16,4,'N3','N3','3','dict_japanese_level',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(17,5,'N4','N4','4','dict_japanese_level',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(18,6,'N5','N5','5','dict_japanese_level',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(19,7,'不会','できない','6','dict_japanese_level',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(20,1,'理科','理科','0','dict_major',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(21,2,'文科','文科','1','dict_major',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(22,1,'所属社员','所属社員','0','dict_company',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(23,2,'UCL社员','UCL社員','1','dict_company',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(24,3,'二社下','二社下','2','dict_company',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(25,4,'三社下','三社下','3','dict_company',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(26,5,'四社下','四社下','4','dict_company',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(27,6,'五社下','五社下','5','dict_company',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(28,7,'个人事业主','個人事業主','6','dict_company',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(29,4,'超级管理员','スーパー管理者','1','dict_user_type',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(30,3,'未任用','未任用','2','dict_appoint_status',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(31,1,'任用中','任用中','0','dict_appoint_status',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(32,2,'任用过','任用経験あり','1','dict_appoint_status',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(33,1,'业务面试官','業務面接官','0','dict_interviewer_type',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(34,2,'技术面试官','技術面接官','1','dict_interviewer_type',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(35,1,'近一月','先月','1','dict_date',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(36,2,'近半年','6か月間','6','dict_date',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(37,3,'近一年','去年','12','dict_date',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(38,4,'自定义','カスタマイズ','100','dict_date',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(39,1,'采用','採用','1','dict_hire',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(40,2,'未采用','不採用','2','dict_hire',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(41,3,'待定','検討中','3','dict_hire',NULL,NULL,'N','0','何嘉楽','2024-04-12 15:11:48',NULL,NULL,NULL,'0'),(42,4,'管理表格管理员','管理シ表システム管理者','4','dict_user_type',NULL,NULL,'N','0',NULL,NULL,NULL,NULL,NULL,'0'),(43,5,'管理表格普通用户','管理シ表システム用户','5','dict_user_type',NULL,NULL,'N','0',NULL,NULL,NULL,NULL,NULL,'0');
/*!40000 ALTER TABLE `basic_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_dict_type`
--

DROP TABLE IF EXISTS `basic_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_dict_type` (
  `dict_type_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '字典名称',
  `dict_desc_jap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志位',
  PRIMARY KEY (`dict_type_id`),
  UNIQUE KEY `dict_type` (`dict_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_dict_type`
--

LOCK TABLES `basic_dict_type` WRITE;
/*!40000 ALTER TABLE `basic_dict_type` DISABLE KEYS */;
INSERT INTO `basic_dict_type` VALUES (1,'用户类型','ユーザータイプ','dict_user_type','0','何嘉楽','2024-04-12 15:09:48','',NULL,NULL,'0'),(2,'停启状态','停止状態','dict_disable','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(3,'删除状态','削除状態','dict_delflag','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(4,'性别','性別','dict_sex','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(5,'国籍','国籍','dict_nation','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(6,'日语等级','日本語レベル','dict_japanese_level','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(7,'学科','学科','dict_major','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(8,'所属公司','所属会社','dict_company','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(9,'任用状态','任用状態','dict_appoint_status','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(10,'面试官类别','面接官分類','dict_interviewer_type','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(11,'日期','日付','dict_date','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0'),(12,'是否采用','雇用する','dict_hire','0','何嘉楽','2024-04-12 15:09:47','',NULL,NULL,'0');
/*!40000 ALTER TABLE `basic_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_label_type`
--

DROP TABLE IF EXISTS `related_label_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_label_type` (
  `label_id` int NOT NULL COMMENT '标签id',
  `type_id` int NOT NULL COMMENT '标签类型id',
  PRIMARY KEY (`label_id`,`type_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `related_label_type_ibfk_1` FOREIGN KEY (`label_id`) REFERENCES `basic_label` (`label_id`),
  CONSTRAINT `related_label_type_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `basic_label_type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='标签类型关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_label_type`
--

LOCK TABLES `related_label_type` WRITE;
/*!40000 ALTER TABLE `related_label_type` DISABLE KEYS */;
INSERT INTO `related_label_type` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(81,1),(89,1),(96,1),(104,1),(108,1),(109,1),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(82,2),(83,2),(84,2),(86,2),(87,2),(90,2),(103,2),(107,2),(110,2),(111,2),(112,2),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,3),(42,3),(43,3),(44,3),(45,3),(46,3),(47,3),(48,3),(97,3),(49,4),(50,4),(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(88,4),(93,4),(95,4),(105,4),(57,5),(58,5),(59,5),(60,5),(61,5),(62,5),(63,5),(64,5),(65,5),(66,5),(67,5),(68,5),(69,5),(70,5),(71,5),(72,5),(73,5),(74,5),(75,5),(76,5),(77,5),(78,5),(79,5),(80,5),(91,5),(92,5),(94,5),(98,5),(99,5),(100,5),(101,5),(102,5),(106,5),(85,6);
/*!40000 ALTER TABLE `related_label_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_usertype_permission`
--

DROP TABLE IF EXISTS `related_usertype_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_usertype_permission` (
  `user_type` char(1) NOT NULL COMMENT '用户类型',
  `permission_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限码',
  PRIMARY KEY (`user_type`,`permission_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户类型权限关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_usertype_permission`
--

LOCK TABLES `related_usertype_permission` WRITE;
/*!40000 ALTER TABLE `related_usertype_permission` DISABLE KEYS */;
INSERT INTO `related_usertype_permission` VALUES ('0','1101'),('0','1102'),('0','1103'),('0','1104'),('0','1105'),('0','1106'),('0','1107'),('0','1108'),('0','1201'),('0','1202'),('0','1203'),('0','1204'),('0','1301'),('0','1302'),('0','2101'),('0','2102'),('0','2103'),('0','2104'),('0','2105'),('0','2201'),('0','2202'),('0','2203'),('0','2204'),('0','2205'),('0','2301'),('0','2302'),('0','2303'),('0','2304'),('0','2305'),('0','3101'),('0','4101'),('0','4102'),('0','4103'),('0','4104'),('0','5101'),('0','5102'),('0','5103'),('0','5104'),('0','5201'),('1','1101'),('1','1102'),('1','1103'),('1','1104'),('1','1105'),('1','1106'),('1','1107'),('1','1108'),('1','1201'),('1','1202'),('1','1203'),('1','1204'),('1','1301'),('1','1302'),('1','2201'),('1','2202'),('1','2203'),('1','2204'),('1','2205'),('1','2301'),('1','2302'),('1','2303'),('1','2304'),('1','2305'),('1','3101'),('1','4101'),('1','4102'),('1','4103'),('1','4104'),('1','5101'),('1','5102'),('1','5103'),('1','5104'),('1','5201'),('2','1102'),('2','1103'),('2','1104'),('2','1105'),('2','1106'),('2','1107'),('2','1108'),('2','1201'),('2','1203'),('2','1204'),('2','2301'),('2','2302'),('2','2303'),('2','2304'),('2','2305'),('2','4101'),('2','4102'),('2','4103'),('2','4104'),('2','5101'),('2','5102'),('2','5103'),('2','5104'),('2','5201'),('3','1103'),('3','1104'),('3','1203'),('3','5101'),('4','1108'),('4','6101'),('4','6201'),('5','6101');
/*!40000 ALTER TABLE `related_usertype_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_engineer`
--

DROP TABLE IF EXISTS `basic_engineer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_engineer` (
  `engineer_id` int NOT NULL AUTO_INCREMENT COMMENT '工程id',
  `engineer_name` varchar(100) NOT NULL COMMENT '工程名称',
  `engineer_name_jap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '日语',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态位0正常 1停用',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除状态位0正常 2删除',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  `created_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`engineer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='对应工程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_engineer`
--

LOCK TABLES `basic_engineer` WRITE;
/*!40000 ALTER TABLE `basic_engineer` DISABLE KEYS */;
INSERT INTO `basic_engineer` VALUES (1,'上流设计','上流設計','0','0',NULL,'劉馨怡','2024-05-20 16:17:38',NULL,NULL),(2,'要件定义','要件定義','0','0',NULL,'劉馨怡','2024-05-20 16:17:37',NULL,NULL),(3,'基本设计','基本設計','0','0',NULL,'劉馨怡','2024-05-20 16:17:37',NULL,NULL),(4,'详细设计','詳細設計','0','0',NULL,'劉馨怡','2024-05-20 16:17:37',NULL,NULL),(5,'制造','製造','0','0',NULL,'劉馨怡','2024-05-20 16:17:37',NULL,NULL),(6,'测试','テスト','0','0',NULL,'劉馨怡','2024-05-20 16:17:37',NULL,NULL),(7,'发布','リリース','0','0',NULL,'劉馨怡','2024-05-20 16:17:37',NULL,NULL);
/*!40000 ALTER TABLE `basic_engineer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_permission`
--

DROP TABLE IF EXISTS `basic_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_permission` (
  `permission_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `permission_code` varchar(255) NOT NULL COMMENT '权限编号',
  `permission_name` varchar(255) NOT NULL COMMENT '名称',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态位0正常 1停用',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除标志位0存在 2删除',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  `created_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_permission`
--

LOCK TABLES `basic_permission` WRITE;
/*!40000 ALTER TABLE `basic_permission` DISABLE KEYS */;
INSERT INTO `basic_permission` VALUES (1,'1101','talent_search_lev1secret_info','0','0','查询人才一级保密信息','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(2,'1102','talent_search_lev2secret_info','0','0','查询人才二级保密信息','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(3,'1103','talent_search_basic_info','0','0','查询人才基本信息','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(4,'1104','talent_add','0','0','人才增加','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(5,'1105','talent_update','0','0','人才修改','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(6,'1106','talent_delete','0','0','人才删除','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(7,'1107','talent_export','0','0','多选excel导出（导出各自能看到的信息）','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(8,'1108','talent_skill_sheet','0','0','skill sheet下载','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(9,'1201','talent_add_blacklist','0','0','拉入黑名单','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(10,'1202','talent_remove_blacklist','0','0','拉出黑名单','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(11,'1203','talent_search_blacklist','0','0','查看黑名单','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(12,'1204','talent_update_blacklist','0','0','修改黑名单原因','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(13,'1301','talent_search_deletelist','0','0','查看已删除人才','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(14,'1302','talent_recover_deletelist','0','0','恢复已删除人才','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(15,'2101','supadm_search','0','0','查询超级管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(16,'2102','supadm_create','0','0','创建超级管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(17,'2103','supadm_delete','0','0','删除超级管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(18,'2104','supadm_update','0','0','修改超级管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(19,'2105','supadm_disable','0','0','禁用超级管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(20,'2201','ordadm_search','0','0','查询普通管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(21,'2202','ordadm_create','0','0','创建普通管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(22,'2203','ordadm_delete','0','0','删除普通管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(23,'2204','ordadm_update','0','0','修改普通管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(24,'2205','ordadm_disable','0','0','禁用普通管理员','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(25,'2301','user_search','0','0','查询普通用户','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(26,'2302','user_create','0','0','创建普通用户','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(27,'2303','user_delete','0','0','删除普通用户','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(28,'2304','user_update','0','0','修改普通用户','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(29,'2305','user_disable','0','0','禁用普通用户','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(30,'3101','log','0','0','查看日志','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(31,'4101','label_search','0','0','查看标签','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(32,'4102','label_add','0','0','新增标签','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(33,'4103','label_update','0','0','修改标签','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(34,'4104','label_delete','0','0','删除标签','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(35,'5101','interviewer_add','0','0','增加面试官','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(36,'5102','interviewer_del','0','0','删除面试官','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(37,'5103','interviewer_update','0','0','更新面试官','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(38,'5104','interviewer_search','0','0','查询面试官','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(39,'5201','inter_statistics','0','0','查看统计数据','刘馨怡','2024-04-12 15:14:10',NULL,NULL),(40,'6101','excel_edit','0','0','修改表格系统数据','丁永涛','2024-08-05 12:16:07','',NULL),(41,'6201','price_search','0','0','查看技术者单价','丁永涛','2024-08-05 12:16:07',NULL,NULL);
/*!40000 ALTER TABLE `basic_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_business`
--

DROP TABLE IF EXISTS `basic_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_business` (
  `business_id` int NOT NULL AUTO_INCREMENT,
  `business_name` varchar(100) NOT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态0正常 1停用',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除状态位0存在 2删除',
  `remark` varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`business_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_business`
--

LOCK TABLES `basic_business` WRITE;
/*!40000 ALTER TABLE `basic_business` DISABLE KEYS */;
INSERT INTO `basic_business` VALUES (1,'人才类','0','0',NULL,'刘馨怡','2024-10-09 11:43:21',NULL,NULL),(2,'物流流通类','0','0',NULL,'刘馨怡','2024-10-09 11:44:39',NULL,NULL);
/*!40000 ALTER TABLE `basic_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_label`
--

DROP TABLE IF EXISTS `basic_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_label` (
  `label_id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(100) NOT NULL COMMENT '标签名称',
  `name_jap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '日语',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态0正常 1停用',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除状态位0存在 2删除',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  `created_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_label`
--

LOCK TABLES `basic_label` WRITE;
/*!40000 ALTER TABLE `basic_label` DISABLE KEYS */;
INSERT INTO `basic_label` VALUES (1,'Windows','Windows','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(2,'Mac','Mac','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(3,'Linux','Linux','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(4,'AIX','AIX','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(5,'Solaris','Solaris','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(6,'HP-UX','HP-UX','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(7,'iOS','iOS','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(8,'Android','Android','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(9,'Java','Java','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(10,'C/C++','C/C++','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(11,'C#','C#','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(12,'COBOL','COBOL','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(13,'Perl','Perl','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(14,'Perl6','Perl6','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(15,'VB/VBA','VB/VBA','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(16,'VB.NET','VB.NET','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(17,'Python','Python','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(18,'Ruby','Ruby','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(19,'PHP','PHP','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(20,'JavaScript','JavaScript','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(21,'Shell','Shell','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(22,'PL/SQL','PL/SQL','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(23,'Objective-C','Objective-C','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(24,'Swift','Swift','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(25,'Scala','Scala','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(26,'Haskell','Haskell','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(27,'Delphi','Delphi','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(28,'Go','Go','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(29,'HTML','HTML','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(30,'CSS','CSS','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(31,'Sass','Sass','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(32,'Markdown','Markdown','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(33,'Spring','Spring','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(34,'Struts','Struts','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(35,'Play','Play','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(36,'ASP.NET','ASP.NET','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(37,'Django','Django','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(38,'Flask','Flask','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(39,'Rails','Rails','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(40,'Catalyst','Catalyst','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(41,'Laravel','Laravel','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(42,'CakePHP','CakePHP','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(43,'CodeIgniter','CodeIgniter','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(44,'Bootstrap','Bootstrap','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(45,'Vue.js','Vue.js','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(46,'AngularJS','AngularJS','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(47,'Node.js','Node.js','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(48,'Express.js','Express.js','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(49,'Oracle','Oracle','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(50,'SQL Server','SQL Server','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(51,'Aceess','Aceess','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(52,'PostgreSQL','PostgreSQL','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(53,'MySQL','MySQL','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(54,'HiRDB','HiRDB','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(55,'Symfoware','Symfoware','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(56,'DB2','DB2','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(57,'Eclipse','Eclipse','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(58,'Visual Studio','Visual Studio','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(59,'Access','Access','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(60,'jQuery','jQuery','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(61,'React.js','React.js','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(62,'Delphi','Delphi','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(63,'Pycharm','Pycharm','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(64,'NetBeans','NetBeans','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(65,'Vim','Vim','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(66,'Emacs','Emacs','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(67,'Atom','Atom','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(68,'Brackets','Brackets','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(69,'SublimeText','SublimeText','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(70,'Dreamweaver','Dreamweaver','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(71,'IntelliJ IDEA','IntelliJ IDEA','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(72,'Xcode','Xcode','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(73,'EXCEL','EXCEL','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(74,'Power Point','Power Point','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(75,'TeraTerm','TeraTerm','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(76,'WordPress','WordPress','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(77,'MovableType','MovableType','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(78,'Git','Git','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(79,'SubVersion','SubVersion','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(80,'AndroidStudio','AndroidStudio','0','0',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(81,'test','test','0','2',NULL,'何嘉楽','2024-05-01 10:30:54',NULL,NULL),(82,'test2','test2','0','2',NULL,'何嘉楽','2024-05-01 10:34:18',NULL,NULL),(83,'1','1','0','2',NULL,'何嘉楽','2024-05-01 12:14:53',NULL,NULL),(84,'test1','test1','0','2',NULL,'刘馨怡','2024-05-29 16:26:55','刘馨怡','2024-05-29 16:27:08'),(85,'hbase','hbase','0','2',NULL,'刘馨怡','2024-05-30 12:10:39',NULL,NULL),(86,'Pro*C','Pro*C','0','0',NULL,'李san','2024-10-04 12:40:26',NULL,NULL),(87,'RPG','RPG','0','0',NULL,'李san','2024-10-04 12:42:52',NULL,NULL),(88,'DataStage','DataStage','0','0',NULL,'李san','2024-10-04 12:44:14',NULL,NULL),(89,'Unix-Shell','Unix-Shell','0','0',NULL,'李san','2024-10-04 12:46:47',NULL,NULL),(90,'PL/I','PL/I','0','0',NULL,'李san','2024-10-04 12:48:08',NULL,NULL),(91,'PowerCenter','PowerCenter','0','0',NULL,'李san','2024-10-04 12:50:13',NULL,NULL),(92,'JSP','JSP','0','0',NULL,'李san','2024-10-04 12:52:19',NULL,NULL),(93,'Sybase','Sybase','0','0',NULL,'李san','2024-10-04 12:54:25',NULL,NULL),(94,'EBS','EBS','0','0',NULL,'李san','2024-10-04 14:21:53',NULL,NULL),(95,'DynamoDB','DynamoDB','0','0',NULL,'李san','2024-10-04 14:44:24',NULL,NULL),(96,'SpringBoot','SpringBoot','0','0',NULL,'李san','2024-10-04 14:55:00',NULL,NULL),(97,'React','React','0','0',NULL,'李san','2024-10-04 14:58:24',NULL,NULL),(98,'Backlo','Backlo','0','0',NULL,'李san','2024-10-04 15:02:44',NULL,NULL),(99,'Slack','Slack','0','0',NULL,'李san','2024-10-04 15:05:53',NULL,NULL),(100,'Backlog','Backlog','0','0',NULL,'李san','2024-10-04 15:11:37',NULL,NULL),(101,'Maven','Maven','0','0',NULL,'李san','2024-10-04 15:17:14',NULL,NULL),(102,'JUnit','JUnit','0','0',NULL,'李san','2024-10-04 15:21:46',NULL,NULL),(103,'SAP','SAP','0','0',NULL,'coco桑','2024-10-04 15:37:43',NULL,NULL),(104,'macOS','macOS','0','0',NULL,'李san','2024-10-04 16:00:26',NULL,NULL),(105,'SQL','SQL','0','0',NULL,'李san','2024-10-04 16:01:27',NULL,NULL),(106,'springbatch','springbatch','0','0',NULL,'李san','2024-10-04 18:46:23',NULL,NULL),(107,'AWS','AWS','0','0',NULL,'李san','2024-10-04 18:47:52',NULL,NULL),(108,'UNIX','UNIX','0','0',NULL,'李san','2024-10-07 11:44:09',NULL,NULL),(109,'Mainframe','Mainframe','0','0',NULL,'李san','2024-10-07 11:52:16',NULL,NULL),(110,'JCL','JCL','0','0',NULL,'李san','2024-10-17 10:50:28',NULL,NULL),(111,'UML','UML','0','0',NULL,'李san','2024-10-30 14:42:11',NULL,NULL),(112,'SVF','SVF','0','0',NULL,'李san','2024-10-30 14:43:56',NULL,NULL);
/*!40000 ALTER TABLE `basic_label` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-21 17:06:12










-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: talentmanagesystem
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `basic_v2_project`
--

DROP TABLE IF EXISTS `basic_v2_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_v2_project` (
  `project_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `customer_id` bigint NOT NULL COMMENT '顾客主键id',
  `project_name` varchar(100) NOT NULL COMMENT '项目名称',
  `principal` varchar(100) DEFAULT NULL COMMENT '责任者',
  `principal_company` varchar(100) DEFAULT NULL COMMENT '责任者所属公司',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志位',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人姓名',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`project_id`),
  KEY `basic_v2_project_basic_v2_customer_FK` (`customer_id`),
  CONSTRAINT `basic_v2_project_basic_v2_customer_FK` FOREIGN KEY (`customer_id`) REFERENCES `basic_v2_customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_v2_technician`
--

DROP TABLE IF EXISTS `basic_v2_technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_v2_technician` (
  `technician_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `picture` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '个人图片',
  `katakana` varchar(100) DEFAULT NULL COMMENT '假名',
  `roman` varchar(100) DEFAULT NULL COMMENT '罗马名',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `belong_company` varchar(100) DEFAULT NULL COMMENT '所属公司',
  `representative` varchar(100) DEFAULT NULL COMMENT '営業担当者',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志位。0存在 1删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人姓名',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`technician_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='技术者表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `related_v2_project_technician`
--

DROP TABLE IF EXISTS `related_v2_project_technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_v2_project_technician` (
  `project_technician_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `technician_id` bigint NOT NULL COMMENT '技术者主键id',
  `project_id` bigint NOT NULL COMMENT '项目主键id',
  `status` varchar(100) DEFAULT NULL COMMENT '形态',
  `c_begin_month` date DEFAULT NULL COMMENT '契约开始时间',
  `c_end_month` date DEFAULT NULL COMMENT '契约结束时间',
  `stop_month` date DEFAULT NULL COMMENT '退场月',
  `price_month` date DEFAULT NULL COMMENT '价格变动月',
  `c_lower_hours` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '契约精算幅（下限）',
  `c_higher_hours` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '契约精算幅（上限）',
  `c_reduct_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '契约減単金',
  `c_increase_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '契约増単金',
  `c_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '契約単価（顧客先）',
  `h_begin_month` date DEFAULT NULL COMMENT '下請开始时间',
  `h_end_month` date DEFAULT NULL COMMENT '下請结束时间',
  `h_lower_hours` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下請精算幅（下限）',
  `h_higher_hours` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下請精算幅（上限）',
  `h_reduct_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下請減単金',
  `h_increase_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下請増単金',
  `h_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下請単価',
  `standard_hours` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '1日標準稼働時間',
  `contract` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '契約書',
  `contract_num` varchar(100) DEFAULT NULL COMMENT '契約書番号',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志位。0存在 1删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人姓名',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  `parent_id` bigint NOT NULL DEFAULT '0' COMMENT '存放价格变动者父子关系',
  `c_real_begin_month` date DEFAULT NULL COMMENT '真正的契约开始时间。只用于数据显示，不参与逻辑处理。',
  `c_real_end_month` date DEFAULT NULL COMMENT '真正的契约结束时间。只用于数据显示，不参与逻辑处理。',
  `real_stop_month` date DEFAULT NULL COMMENT '真正的退场月。只用于数据显示，不参与逻辑处理。',
  PRIMARY KEY (`project_technician_id`),
  KEY `related_v2_project_technician_basic_v2_technician_FK` (`technician_id`),
  KEY `related_v2_project_technician_basic_v2_project_FK` (`project_id`),
  CONSTRAINT `related_v2_project_technician_basic_v2_project_FK` FOREIGN KEY (`project_id`) REFERENCES `basic_v2_project` (`project_id`),
  CONSTRAINT `related_v2_project_technician_basic_v2_technician_FK` FOREIGN KEY (`technician_id`) REFERENCES `basic_v2_technician` (`technician_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目-技术者关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_v2_month`
--

DROP TABLE IF EXISTS `basic_v2_month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_v2_month` (
  `month_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `project_technician_id` bigint NOT NULL COMMENT '项目技术者主键id',
  `month_days` int DEFAULT NULL COMMENT '稼働日',
  `presumed_time` decimal(10,2) DEFAULT NULL COMMENT '想定時',
  `expected_price` decimal(10,2) DEFAULT NULL COMMENT '見込単価',
  `actual_hours` decimal(10,2) DEFAULT NULL COMMENT '実時間',
  `actual_price` decimal(10,2) DEFAULT NULL COMMENT '実績単価',
  `from` decimal(10,2) DEFAULT NULL COMMENT '乖離',
  `subcontract_price` decimal(10,2) DEFAULT NULL COMMENT '下請単価',
  `total_number` int DEFAULT NULL COMMENT '合計人数',
  `year_month` date DEFAULT NULL COMMENT '用于检索的时间',
  `product_num` varchar(100) DEFAULT NULL COMMENT '品番',
  `product_name` varchar(100) DEFAULT NULL COMMENT '品名',
  `summary` varchar(900) DEFAULT NULL COMMENT '案件概要',
  `person_month` decimal(10,2) DEFAULT NULL COMMENT '人月',
  `order_amount` decimal(10,2) DEFAULT NULL COMMENT '発注金額',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志位。0存在 1删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人姓名',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  `actual_price_edit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'false自动（默认） true人工',
  `from_edit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '修改标志（false自动（默认） true人工）',
  PRIMARY KEY (`month_id`),
  KEY `basic_v2_month_related_v2_project_technician_FK` (`project_technician_id`),
  CONSTRAINT `basic_v2_month_related_v2_project_technician_FK` FOREIGN KEY (`project_technician_id`) REFERENCES `related_v2_project_technician` (`project_technician_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1477 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目月份表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_interviewer`
--

DROP TABLE IF EXISTS `basic_interviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_interviewer` (
  `interviewer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `pseudonym` varchar(100) DEFAULT NULL COMMENT '假名',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字典dict_interviewer_type',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态0正常 1停用',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除状态位0存在 2删除',
  `created_time` datetime DEFAULT NULL,
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `remark` varchar(900) DEFAULT NULL,
  PRIMARY KEY (`interviewer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_permission`
--

DROP TABLE IF EXISTS `basic_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_permission` (
  `permission_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `permission_code` varchar(255) NOT NULL COMMENT '权限编号',
  `permission_name` varchar(255) NOT NULL COMMENT '名称',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态位0正常 1停用',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除标志位0存在 2删除',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  `created_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_project_info`
--

DROP TABLE IF EXISTS `basic_project_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_project_info` (
  `project_id` int NOT NULL AUTO_INCREMENT COMMENT '项目主键id',
  `name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `appoint_start_time` date DEFAULT NULL COMMENT '任用开始时间',
  `appoint_end_time` date DEFAULT NULL COMMENT '任用结束时间',
  `appoint_evalution` varchar(900) DEFAULT NULL COMMENT '任用评价;从5个方面评价：技术评价、沟通能力、态度评价、勤务评价、leader评价',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态0正常 1停用',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除标志位0存在 2删除',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  `created_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `related_talent_engineer`
--

DROP TABLE IF EXISTS `related_talent_engineer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_talent_engineer` (
  `talent_id` int NOT NULL COMMENT '人才id',
  `engineer_id` int NOT NULL COMMENT '工程id',
  PRIMARY KEY (`talent_id`,`engineer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='人才工程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `related_talent_project`
--

DROP TABLE IF EXISTS `related_talent_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_talent_project` (
  `talent_id` int NOT NULL COMMENT '人才id',
  `project_id` int NOT NULL COMMENT '项目id',
  PRIMARY KEY (`talent_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='人才项目关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_v2_stats`
--

DROP TABLE IF EXISTS `basic_v2_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_v2_stats` (
  `stats_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ucl_member` decimal(10,2) DEFAULT NULL COMMENT 'UCL社員数',
  `bp_member` decimal(10,2) DEFAULT NULL COMMENT 'BP社員数',
  `total_number` decimal(10,2) DEFAULT NULL COMMENT '合計人数',
  `bp_ucl_rate` decimal(10,2) DEFAULT NULL COMMENT 'BP・UCL社員比率',
  `year_month` date NOT NULL COMMENT '年月',
  PRIMARY KEY (`stats_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_v2_date`
--

DROP TABLE IF EXISTS `basic_v2_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_v2_date` (
  `date_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `month_id` bigint NOT NULL COMMENT '项目月份id',
  `name` varchar(100) DEFAULT NULL COMMENT '表头',
  `month_date` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`date_id`),
  KEY `basic_v2_date_basic_v2_month_FK` (`month_id`),
  CONSTRAINT `basic_v2_date_basic_v2_month_FK` FOREIGN KEY (`month_id`) REFERENCES `basic_v2_month` (`month_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目-技术者日期表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_oper_log`
--

DROP TABLE IF EXISTS `basic_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0=其它 1=新增,2=修改,3=删除,4=授权,5=导出,6=导入,7=强退,8=生成代码,9=清空数据）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_basic_oper_log_bt` (`business_type`) USING BTREE,
  KEY `idx_basic_oper_log_ot` (`oper_time`) USING BTREE,
  KEY `idx_basic_oper_log_s` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `related_talent_interview`
--

DROP TABLE IF EXISTS `related_talent_interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_talent_interview` (
  `talent_id` int NOT NULL COMMENT '人才id',
  `inter_id` int NOT NULL COMMENT '面试信息id',
  PRIMARY KEY (`talent_id`,`inter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='人才面试关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_talent`
--

DROP TABLE IF EXISTS `basic_talent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_talent` (
  `talent_id` int NOT NULL AUTO_INCREMENT COMMENT '人才id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '人才姓名',
  `pseudonym` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '人才姓名平假名',
  `english_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '人才英语名',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '性别',
  `birth` date DEFAULT NULL COMMENT '出生年月日',
  `expr_year` int DEFAULT NULL COMMENT '经验年数',
  `nation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '国籍;<字典:bus.nation>',
  `in_japan_year` int DEFAULT NULL COMMENT '在日年数',
  `japan_level` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '日语等级;<字典:bus.japanlevel>',
  `station` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '最近车站',
  `school` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '学校名',
  `major` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '学科;<字典:bus.major>',
  `picture` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '人才图片',
  `price` int DEFAULT NULL COMMENT '价格信息(单位：日元/月)',
  `skill_sheet` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '人才简历',
  `talent_description` varchar(900) DEFAULT NULL COMMENT '人才简介',
  `email` varchar(50) DEFAULT NULL COMMENT '邮件',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `wechat` varchar(50) DEFAULT NULL COMMENT '微信',
  `line` varchar(50) DEFAULT NULL COMMENT 'line账户',
  `belong_company` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '所属公司;<字典:bus.belongcompany>',
  `appoint_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '任用状态;字典:bus.appoint.status',
  `blacklist_reason` varchar(900) DEFAULT NULL COMMENT '黑名单原因',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '状态（黑名单）;<字典:sys.yesno>',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除状态位;<字典:sys.delFlag>',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  `created_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `blacklist_by` varchar(100) DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  `blacklist_time` datetime DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `predict_month` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`talent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='人才表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_user`
--

DROP TABLE IF EXISTS `basic_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_user` (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日语名',
  `pseudonym` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '假名',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '123456' COMMENT '账号，保留字段',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '123456' COMMENT '密码，保留字段',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `code` varchar(50) DEFAULT NULL COMMENT '员工编号',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户类型;<字典:sys.user.status>',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '禁用状态;<字典:sys.yesno>',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除标志;<字典:sys.delFlag>',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  `created_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_interview_info`
--

DROP TABLE IF EXISTS `basic_interview_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_interview_info` (
  `inter_id` int NOT NULL AUTO_INCREMENT COMMENT '面试信息主键id',
  `bus_date` date DEFAULT NULL COMMENT '业务面试日期',
  `bus_interviewer` int DEFAULT NULL COMMENT '业务面试官',
  `bus_evaluation` varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务面试评价',
  `tech_date` date DEFAULT NULL COMMENT '技术面试日期',
  `tech_interviewer` int DEFAULT NULL COMMENT '技术面试官',
  `tech_evaluation` varchar(900) DEFAULT NULL COMMENT '技术面试评价',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '3' COMMENT '状态位1采用 2未采用3待定',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除状态位0存在 2删除',
  `remark` varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `created_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`inter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='面试信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basic_v2_customer`
--

DROP TABLE IF EXISTS `basic_v2_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_v2_customer` (
  `customer_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `customer_name` varchar(100) NOT NULL COMMENT '顾客名称（公司）',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标志位。0存在 1删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人姓名',
  `remark` varchar(900) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='顾客表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `related_talent_label`
--

DROP TABLE IF EXISTS `related_talent_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_talent_label` (
  `talent_id` int NOT NULL COMMENT '人才主键id',
  `label_id` int NOT NULL COMMENT '标签id',
  `label_year` int NOT NULL DEFAULT '0' COMMENT '经验年数',
  PRIMARY KEY (`talent_id`,`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='人才标签关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `related_talent_business`
--

DROP TABLE IF EXISTS `related_talent_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_talent_business` (
  `talent_id` int NOT NULL,
  `business_id` int NOT NULL,
  `business_year` double NOT NULL,
  PRIMARY KEY (`talent_id`,`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-21 17:07:57

-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: petadopt
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','LAPTOP-6RGHAD0S1581920268017',1581924877422,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1581920270000,-1,5,'PAUSED','CRON',1581920268000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1581920280000,-1,5,'PAUSED','CRON',1581920268000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1581920280000,-1,5,'PAUSED','CRON',1581920268000,0,NULL,2,'');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作'),(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作'),(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作'),(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作'),(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作'),(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作'),(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作'),(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作'),(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(29,1,'雄性','1','sys_pet_sex','','','Y','0','admin','2019-12-18 10:45:19','admin','2019-12-18 11:08:59','性别雄性'),(30,2,'雌性','0','sys_pet_sex','','','Y','0','admin','2019-12-18 10:46:07','admin','2019-12-18 11:08:50','性别雌性'),(100,1,'这不是寄养的宠物','1','sys_pet_foststatu',NULL,NULL,'Y','0','admin','2019-12-18 10:55:34','',NULL,NULL),(101,2,'这是寄养的宠物','0','sys_pet_foststatu',NULL,NULL,'Y','0','admin','2019-12-18 10:55:45','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表'),(100,'宠物性别','sys_pet_sex','0','admin','2019-12-18 10:52:15','admin','2019-12-18 10:54:14','宠物性别列表'),(101,'宠物寄养状态','sys_pet_foststatu','0','admin','2019-12-18 10:55:08','',NULL,'宠物寄养状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_info`
--

DROP TABLE IF EXISTS `sys_file_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_info` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `file_name` varchar(50) DEFAULT '' COMMENT '文件名称',
  `file_path` varchar(255) DEFAULT '' COMMENT '文件路径',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_info`
--

LOCK TABLES `sys_file_info` WRITE;
/*!40000 ALTER TABLE `sys_file_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-16 11:56:43'),(101,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-16 12:02:13'),(102,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-16 13:27:09'),(103,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-16 13:30:03'),(104,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-16 13:30:44'),(105,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-16 13:30:54'),(106,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-17 10:46:48'),(107,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-17 12:55:34'),(108,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-17 13:35:30'),(109,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-17 13:43:05'),(110,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-17 13:43:12'),(111,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-17 14:10:34'),(112,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-17 14:10:37'),(113,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','1','验证码错误','2019-12-17 14:58:54'),(114,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-17 14:58:58'),(115,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-17 15:26:04'),(116,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 10:03:15'),(117,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 11:57:16'),(118,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:02:00'),(119,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 13:05:15'),(120,'ruoyi','127.0.0.1','内网IP','Chrome','Mac OS X','1','用户不存在/密码错误','2019-12-18 13:07:17'),(121,'ruoyi','127.0.0.1','内网IP','Chrome','Mac OS X','1','用户不存在/密码错误','2019-12-18 13:07:57'),(122,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:10:34'),(123,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 13:12:15'),(124,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:12:25'),(125,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 13:12:41'),(126,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:12:45'),(127,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:13:13'),(128,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 13:14:14'),(129,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:14:23'),(130,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 13:15:20'),(131,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:15:23'),(132,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 13:16:04'),(133,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:16:11'),(134,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 13:16:42'),(135,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:16:44'),(136,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 13:17:12'),(137,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 13:17:21'),(138,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-18 13:41:07'),(139,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-18 14:07:31'),(140,'ry','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-18 14:09:58'),(141,'ry','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-18 14:13:06'),(142,'ry','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-18 14:13:10'),(143,'ry','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-18 14:14:18'),(144,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-18 14:14:27'),(145,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-18 14:14:32'),(146,'ry','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-18 14:14:37'),(147,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 14:47:46'),(148,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 14:51:14'),(149,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 14:51:21'),(150,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 14:58:06'),(151,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 14:58:13'),(152,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 15:00:56'),(153,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 16:02:17'),(154,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 16:02:24'),(155,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 16:02:31'),(156,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 16:02:52'),(157,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 16:02:57'),(158,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 16:04:56'),(159,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 16:12:52'),(160,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 16:17:47'),(161,'ry','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-18 16:20:46'),(162,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 16:25:43'),(163,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 16:25:52'),(164,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 17:09:41'),(165,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 17:09:45'),(166,'ry','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 17:12:41'),(167,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','1','验证码错误','2019-12-18 17:12:48'),(168,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','1','密码输入错误1次','2019-12-18 17:12:51'),(169,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 17:12:59'),(170,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 17:20:26'),(171,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 17:20:32'),(172,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-18 17:24:05'),(173,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-18 17:25:34'),(174,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-19 09:23:17'),(175,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-19 09:24:06'),(176,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-19 09:24:33'),(177,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-19 09:35:38'),(178,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-19 09:53:05'),(179,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-19 10:57:34'),(180,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-19 11:38:53'),(181,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','1','验证码错误','2019-12-19 13:03:58'),(182,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-19 13:04:03'),(183,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-19 13:37:53'),(184,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-19 15:15:18'),(185,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-19 15:30:30'),(186,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-19 15:32:09'),(187,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-19 15:43:15'),(188,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-19 15:43:21'),(189,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-19 16:13:09'),(190,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-19 16:14:30'),(191,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-20 09:16:40'),(192,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 09:18:51'),(193,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 10:00:35'),(194,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-20 10:15:22'),(195,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','1','密码输入错误1次','2019-12-20 10:15:32'),(196,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 10:15:37'),(197,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-20 11:00:45'),(198,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 11:00:53'),(199,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-20 11:09:48'),(200,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 11:09:57'),(201,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-20 11:12:47'),(202,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 11:12:50'),(203,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 11:49:48'),(204,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 13:08:34'),(205,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-20 13:18:09'),(206,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 13:28:44'),(207,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-20 13:35:25'),(208,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-20 14:43:04'),(209,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 14:44:47'),(210,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 17:03:40'),(211,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-20 17:10:53'),(212,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','1','验证码错误','2019-12-21 08:30:53'),(213,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 08:30:56'),(214,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-21 08:32:31'),(215,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 08:32:34'),(216,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','1','验证码错误','2019-12-21 08:58:00'),(217,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 08:58:05'),(218,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 10:17:54'),(219,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 10:53:47'),(220,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 11:14:56'),(221,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-21 11:32:40'),(222,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-21 12:38:22'),(223,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 16:12:01'),(224,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','退出成功','2019-12-21 16:14:19'),(225,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-21 16:14:29'),(226,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 16:14:39'),(227,'user','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 17:47:32'),(228,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-21 17:52:17'),(229,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-21 19:14:11'),(230,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 19:29:52'),(231,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-21 19:36:17'),(232,'user','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-21 19:36:39'),(233,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 14:18:15'),(234,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-17 14:18:59'),(235,'ry','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 14:19:07'),(236,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 15:32:13'),(237,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-17 15:33:40'),(238,'ry','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 15:33:50');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2016 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'#','','M','0','','fa fa-video-camera','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统监控目录'),(3,'系统工具',0,3,'#','','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录'),(100,'用户管理',1,2,'/system/user','menuItem','C','0','system:user:view','#','admin','2018-03-16 11:33:00','admin','2019-12-16 13:32:28','用户管理菜单'),(101,'角色管理',1,3,'/system/role','menuItem','C','0','system:role:view','#','admin','2018-03-16 11:33:00','admin','2019-12-19 10:59:40','角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','menuItem','C','1','system:dept:view','#','admin','2018-03-16 11:33:00','admin','2019-12-19 15:42:04','部门管理菜单'),(104,'岗位管理',1,5,'/system/post','menuItem','C','1','system:post:view','#','admin','2018-03-16 11:33:00','admin','2019-12-19 15:41:56','岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),(106,'参数设置',1,7,'/system/config','menuItem','C','1','system:config:view','#','admin','2018-03-16 11:33:00','admin','2019-12-19 15:41:30','参数设置菜单'),(107,'通知公告',1,8,'/system/notice','menuItem','C','1','system:notice:view','#','admin','2018-03-16 11:33:00','admin','2019-12-19 15:41:40','通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),(112,'服务监控',2,3,'/monitor/server','','C','0','monitor:server:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','服务监控菜单'),(113,'表单构建',3,1,'/tool/build','','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单'),(114,'代码生成',3,2,'/tool/gen','','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),(115,'系统接口',3,3,'/tool/swagger','','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户导出',100,5,'#','','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'用户导入',100,6,'#','','F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'重置密码',100,7,'#','','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'角色查询',101,1,'#','','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色新增',101,2,'#','','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色修改',101,3,'#','','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色删除',101,4,'#','','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'角色导出',101,5,'#','','F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'菜单查询',102,1,'#','','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单新增',102,2,'#','','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单修改',102,3,'#','','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单删除',102,4,'#','','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'部门查询',103,1,'#','','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门新增',103,2,'#','','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门修改',103,3,'#','','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门删除',103,4,'#','','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'岗位查询',104,1,'#','','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'岗位新增',104,2,'#','','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'岗位修改',104,3,'#','','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'岗位删除',104,4,'#','','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'岗位导出',104,5,'#','','F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'字典查询',105,1,'#','','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典新增',105,2,'#','','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典修改',105,3,'#','','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典删除',105,4,'#','','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典导出',105,5,'#','','F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'参数查询',106,1,'#','','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数新增',106,2,'#','','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数修改',106,3,'#','','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数删除',106,4,'#','','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数导出',106,5,'#','','F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'公告查询',107,1,'#','','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'公告新增',107,2,'#','','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'公告修改',107,3,'#','','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'公告删除',107,4,'#','','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'操作查询',500,1,'#','','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'操作删除',500,2,'#','','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'详细信息',500,3,'#','','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'日志导出',500,4,'#','','F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'登录查询',501,1,'#','','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录删除',501,2,'#','','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'日志导出',501,3,'#','','F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'账户解锁',501,4,'#','','F','0','monitor:logininfor:unlock','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'在线查询',109,1,'#','','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'批量强退',109,2,'#','','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'单条强退',109,3,'#','','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务查询',110,1,'#','','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务新增',110,2,'#','','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务修改',110,3,'#','','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'任务删除',110,4,'#','','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'状态修改',110,5,'#','','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'任务详细',110,6,'#','','F','0','monitor:job:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'任务导出',110,7,'#','','F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'生成查询',114,1,'#','','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1058,'生成修改',114,2,'#','','F','0','tool:gen:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1059,'生成删除',114,3,'#','','F','0','tool:gen:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1060,'预览代码',114,4,'#','','F','0','tool:gen:preview','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1061,'生成代码',114,5,'#','','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2000,'宠物信息管理',1,1,'/system/pet','menuItem','C','0','system:pet:view','#','admin','2019-12-16 13:31:51','',NULL,''),(2001,'添加',2000,1,'#','menuItem','F','0','system:pet:add','#','admin','2019-12-16 13:32:19','',NULL,''),(2002,'修改',2000,2,'#','menuItem','F','0','system:pet:edit','#','admin','2019-12-16 13:32:52','',NULL,''),(2003,'删除',2000,3,'#','menuItem','F','0','system:pet:delete','#','admin','2019-12-16 13:33:10','',NULL,''),(2004,'宠物查询',2000,1,'#','menuItem','F','0','system:pet:list','#','admin','2019-12-16 14:33:06','',NULL,''),(2007,'基础服务',0,1,'#','menuItem','M','0','','fa fa-reorder','admin','2019-12-18 17:13:20','admin','2019-12-19 09:23:30',''),(2008,'宠物信息',2007,1,'/user/pet/petInfo','menuItem','C','0','user:pet:view','#','admin','2019-12-18 17:15:32','',NULL,''),(2009,'宠物领养管理',1,1,'/system/applyAdopt','menuItem','C','0','system:adopt:view','#','admin','2019-12-19 10:59:16','admin','2019-12-19 11:40:12',''),(2010,'申请寄养',2007,2,'/user/pet/applyfost','menuItem','C','0','user:pet:fost','#','admin','2019-12-20 09:18:18','',NULL,''),(2011,'宠物寄养管理',1,1,'/system/applyFost','menuItem','C','0','system:fost:view','#','admin','2019-12-20 11:14:42','admin','2019-12-20 11:14:57',''),(2012,'给驿站留言',2007,4,'/user/leaveMsg','menuItem','C','0','user:leaveMsg:view','#','admin','2019-12-20 13:32:17','admin','2019-12-20 14:45:00',''),(2013,'留言管理',1,1,'/system/leaveMsg','menuItem','C','0','system:leaveMsg:view','#','admin','2019-12-20 15:36:03','',NULL,''),(2014,'捐赠管理',1,1,'/system/pet/donate','menuItem','C','0','system:donate:view','#','admin','2019-12-21 09:32:08','',NULL,''),(2015,'捐赠宠物',2007,4,'/user/pet/donate','menuItem','C','0','user:donate:view','#','admin','2019-12-21 16:13:37','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物信息管理\" ],\n  \"url\" : [ \"/system/pet\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:pet:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-16 13:31:51'),(101,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"2000\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"添加\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:pet:add\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-16 13:32:19'),(102,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"100\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"用户管理\" ],\n  \"url\" : [ \"/system/user\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:user:view\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-16 13:32:28'),(103,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"2000\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"修改\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:pet:edit\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-16 13:32:52'),(104,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"2000\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"删除\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:pet:delete\" ],\n  \"orderNum\" : [ \"3\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-16 13:33:10'),(105,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"2000\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"宠物查询\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:pet:list\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-16 14:33:06'),(106,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.addSave()','POST',1,'admin','研发部门','/system/pet/add','127.0.0.1','内网IP','{\n  \"fileName\" : [ \"undefined\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-17 13:48:17'),(107,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.addSave()','POST',1,'admin','研发部门','/system/pet/add','127.0.0.1','内网IP','{\n  \"name\" : [ \"ff\" ],\n  \"type\" : [ \"ww\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"ww\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-17 14:11:12'),(108,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.addSave()','POST',1,'admin','研发部门','/system/pet/add','127.0.0.1','内网IP','{\n  \"name\" : [ \"ff\" ],\n  \"type\" : [ \"ww\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"2\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','null',1,'\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'id\' at row 1\n### The error may involve com.ruoyi.system.mapper.SysPetMapper.savePet-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO  sys_pet  VALUES(REPLACE(UUID(), \'-\', \'\'),?,?,?,?,?,?,?,?,?,?,?,?)\n### Cause: java.sql.SQLException: Data truncated for column \'id\' at row 1\n; Data truncated for column \'id\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'id\' at row 1','2019-12-17 14:28:17'),(109,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.addSave()','POST',1,'admin','研发部门','/system/pet/add','127.0.0.1','内网IP','{\n  \"name\" : [ \"w\" ],\n  \"type\" : [ \"ww\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"w\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-17 14:29:51'),(110,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.addSave()','POST',1,'admin','研发部门','/system/pet/add','127.0.0.1','内网IP','{\n  \"name\" : [ \"w2\" ],\n  \"type\" : [ \"ww\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"2312\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','null',1,'\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may involve com.ruoyi.system.mapper.SysPetMapper.savePet-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO  sys_pet  VALUES(REPLACE(UUID(), \'-\', \'\'),?,?,?,?,?,?,?,?,?,?,?,?)\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1','2019-12-17 15:50:25'),(111,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.addSave()','POST',1,'admin','研发部门','/system/pet/add','127.0.0.1','内网IP','{\n  \"name\" : [ \"2\" ],\n  \"type\" : [ \"ww\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"sd\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-17 15:54:03'),(112,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"2,w\" ]\n}','{\n  \"msg\" : \"操作失败\",\n  \"code\" : 500\n}',0,NULL,'2019-12-17 16:17:56'),(113,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"2,阿拉斯加犬\" ]\n}','{\n  \"msg\" : \"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'array\' in \'class java.lang.String\'\",\n  \"code\" : 500\n}',0,NULL,'2019-12-17 16:25:35'),(114,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.addSave()','POST',1,'admin','研发部门','/system/pet/add','127.0.0.1','内网IP','{\n  \"name\" : [ \"ff\" ],\n  \"type\" : [ \"ww\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"w\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-17 16:29:13'),(115,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"ff,2\" ]\n}','{\n  \"msg\" : \"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'ids\' in \'class java.lang.String\'\",\n  \"code\" : 500\n}',0,NULL,'2019-12-17 16:29:20'),(116,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"ff,2\" ]\n}','{\n  \"msg\" : \"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'String\' in \'class java.lang.String\'\",\n  \"code\" : 500\n}',0,NULL,'2019-12-17 16:31:02'),(117,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"ff\" ]\n}','{\n  \"msg\" : \"nested exception is org.apache.ibatis.binding.BindingException: Parameter \'ids\' not found. Available parameters are [array]\",\n  \"code\" : 500\n}',0,NULL,'2019-12-17 16:38:13'),(118,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/106','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"存在子菜单,不允许删除\",\n  \"code\" : 301\n}',0,NULL,'2019-12-17 16:40:27'),(119,'岗位管理',3,'com.ruoyi.web.controller.system.SysPostController.remove()','POST',1,'admin','研发部门','/system/post/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"3\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-17 16:41:03'),(120,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"ff\" ]\n}','{\n  \"msg\" : \"操作失败\",\n  \"code\" : 500\n}',0,NULL,'2019-12-17 16:45:47'),(121,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"ff\" ]\n}','{\n  \"msg\" : \"操作失败\",\n  \"code\" : 500\n}',0,NULL,'2019-12-17 16:48:24'),(122,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"4e1c7b2020a711ea972d02c5d9ef22d8\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-17 16:50:16'),(123,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"a140cb5a209611ea972d02c5d9ef22d8\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-17 16:50:22'),(124,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"64ddcd0020a211ea972d02c5d9ef22d8\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-17 16:58:54'),(125,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.addSave()','POST',1,'admin','研发部门','/system/dict/add','127.0.0.1','内网IP','{\n  \"dictName\" : [ \"宠物性别\" ],\n  \"dictType\" : [ \"sys_pet_sex\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"宠物性别列表\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 10:52:15'),(126,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\n  \"dictCode\" : [ \"30\" ],\n  \"dictLabel\" : [ \"雌性\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_pet_sex\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"性别雌性\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 10:53:17'),(127,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\n  \"dictCode\" : [ \"29\" ],\n  \"dictLabel\" : [ \"雄性\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_pet_sex\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"性别雄性\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 10:53:26'),(128,'字典类型',2,'com.ruoyi.web.controller.system.SysDictTypeController.editSave()','POST',1,'admin','研发部门','/system/dict/edit','127.0.0.1','内网IP','{\n  \"dictId\" : [ \"100\" ],\n  \"dictName\" : [ \"宠物信息选项\" ],\n  \"dictType\" : [ \"sys_pet_sex\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"宠物性别列表\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 10:54:01'),(129,'字典类型',2,'com.ruoyi.web.controller.system.SysDictTypeController.editSave()','POST',1,'admin','研发部门','/system/dict/edit','127.0.0.1','内网IP','{\n  \"dictId\" : [ \"100\" ],\n  \"dictName\" : [ \"宠物性别\" ],\n  \"dictType\" : [ \"sys_pet_sex\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"宠物性别列表\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 10:54:14'),(130,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.addSave()','POST',1,'admin','研发部门','/system/dict/add','127.0.0.1','内网IP','{\n  \"dictName\" : [ \"宠物寄养状态\" ],\n  \"dictType\" : [ \"sys_pet_foststatu\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"宠物寄养状态列表\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 10:55:08'),(131,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()','POST',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\n  \"dictLabel\" : [ \"这不是寄养的宠物\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_pet_foststatu\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 10:55:34'),(132,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.addSave()','POST',1,'admin','研发部门','/system/dict/data/add','127.0.0.1','内网IP','{\n  \"dictLabel\" : [ \"这是寄养的宠物\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_pet_foststatu\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 10:55:45'),(133,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\n  \"dictCode\" : [ \"30\" ],\n  \"dictLabel\" : [ \"雌性\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_pet_sex\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"性别雌性\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 11:08:50'),(134,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.editSave()','POST',1,'admin','研发部门','/system/dict/data/edit','127.0.0.1','内网IP','{\n  \"dictCode\" : [ \"29\" ],\n  \"dictLabel\" : [ \"雄性\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_pet_sex\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"性别雄性\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 11:08:59'),(135,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.addSave()','POST',1,'admin','研发部门','/system/pet/add','127.0.0.1','内网IP','{\n  \"name\" : [ \"萨摩\" ],\n  \"type\" : [ \"雪橇犬\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 11:11:57'),(136,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.editSave()','POST',1,'admin','研发部门','/system/pet/edit','127.0.0.1','内网IP','{\n  \"name\" : [ \"萨摩\" ],\n  \"type\" : [ \"雪橇犬\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','null',1,'\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERR id=null\' at line 1\n### The error may involve com.ruoyi.system.mapper.SysPetMapper.editPet-Inline\n### The error occurred while setting parameters\n### SQL: UPDATE sys_pet SET  name=?,type=?, adoptStatu=?,fostStatu=?,sex=?,imageUrl=?,updateBy=?,updateTime=?,remark=? WHERR id=?\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERR id=null\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERR id=null\' at line 1','2019-12-18 11:46:59'),(137,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.editSave()','POST',1,'admin','研发部门','/system/pet/edit','127.0.0.1','内网IP','{\n  \"id\" : [ \"26b56306214411eaab5a9a7da1b39bee\" ],\n  \"name\" : [ \"萨摩\" ],\n  \"type\" : [ \"雪橇犬\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','null',1,'\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERR id=\'26b56306214411eaab5a9a7da1b39bee\'\' at line 1\n### The error may involve com.ruoyi.system.mapper.SysPetMapper.editPet-Inline\n### The error occurred while setting parameters\n### SQL: UPDATE sys_pet SET  name=?,type=?, adoptStatu=?,fostStatu=?,sex=?,imageUrl=?,updateBy=?,updateTime=?,remark=? WHERR id=?\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERR id=\'26b56306214411eaab5a9a7da1b39bee\'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERR id=\'26b56306214411eaab5a9a7da1b39bee\'\' at line 1','2019-12-18 11:54:22'),(138,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.editSave()','POST',1,'admin','研发部门','/system/pet/edit','127.0.0.1','内网IP','{\n  \"id\" : [ \"26b56306214411eaab5a9a7da1b39bee\" ],\n  \"name\" : [ \"萨摩\" ],\n  \"type\" : [ \"雪橇犬\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','null',1,'\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'updateTime\' in \'field list\'\n### The error may involve com.ruoyi.system.mapper.SysPetMapper.editPet-Inline\n### The error occurred while setting parameters\n### SQL: UPDATE sys_pet SET  name=?,type=?, adoptStatu=?,fostStatu=?,sex=?,imageUrl=?,updateBy=?,updateTime=?,remark=? WHERE id=?\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'updateTime\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'updateTime\' in \'field list\'','2019-12-18 11:57:33'),(139,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.editSave()','POST',1,'admin','研发部门','/system/pet/edit','127.0.0.1','内网IP','{\n  \"id\" : [ \"26b56306214411eaab5a9a7da1b39bee\" ],\n  \"name\" : [ \"萨摩\" ],\n  \"type\" : [ \"雪橇犬\" ],\n  \"sex\" : [ \"1\" ],\n  \"fostStatu\" : [ \"1\" ],\n  \"remark\" : [ \"\" ],\n  \"fileName\" : [ \"undefined\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 11:58:59'),(140,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"105\" ],\n  \"userName\" : [ \"user\" ],\n  \"deptName\" : [ \"测试部门\" ],\n  \"phonenumber\" : [ \"13422212222\" ],\n  \"email\" : [ \"1026320617@qq.com\" ],\n  \"loginName\" : [ \"user\" ],\n  \"password\" : [ \"123456\" ],\n  \"sex\" : [ \"0\" ],\n  \"role\" : [ \"2\" ],\n  \"remark\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"2\" ],\n  \"postIds\" : [ \"4\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 13:12:01'),(141,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()','GET',1,'admin','研发部门','/system/user/resetPwd/2','127.0.0.1','内网IP','{ }','\"system/user/resetPwd\"',0,NULL,'2019-12-18 13:12:05'),(142,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()','POST',1,'admin','研发部门','/system/user/resetPwd','127.0.0.1','内网IP','{\n  \"userId\" : [ \"2\" ],\n  \"loginName\" : [ \"ry\" ],\n  \"password\" : [ \"123456\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 13:12:12'),(143,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"1,2000,2001,2004,2002,2003,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 13:15:57'),(144,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"1,2000,2001,2004,2002,2003,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 13:16:01'),(145,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"1,2000,2001,2004,2002,2003,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 13:17:09'),(146,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"宠物信息\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:02:13'),(147,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2005\" ],\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物信息\" ],\n  \"url\" : [ \"/user/petInfo\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:03:07'),(148,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"1,2000,2001,2004,2002,2003,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2005,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:03:36'),(149,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"1\" ],\n  \"roleName\" : [ \"管理员\" ],\n  \"roleKey\" : [ \"admin\" ],\n  \"roleSort\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"管理员\" ],\n  \"menuIds\" : [ \"1,2000,2001,2004,2002,2003,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','null',1,'不允许操作超级管理员角色','2019-12-18 14:03:47'),(150,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"1,2000,2001,2004,2002,2003,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2005,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:03:55'),(151,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"2005\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:05:05'),(152,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.addSave()','POST',1,'admin','研发部门','/system/role/add','127.0.0.1','内网IP','{\n  \"roleName\" : [ \"普通管理员\" ],\n  \"roleKey\" : [ \"commonAdmin\" ],\n  \"roleSort\" : [ \"3\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,2000,2001,2004,2002,2003,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:05:57'),(153,'角色管理',4,'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()','POST',1,'admin','研发部门','/system/role/authUser/selectAll','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"100\" ],\n  \"userIds\" : [ \"2\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:06:17'),(154,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'ry','测试部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2005\" ],\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物信息\" ],\n  \"url\" : [ \"/user/petInfo\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"common\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:10:50'),(155,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'ry','测试部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2005\" ],\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物信息\" ],\n  \"url\" : [ \"/user/petInfo\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"user:pet:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:12:49'),(156,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'ry','测试部门','/system/role/authDataScope','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"100\" ],\n  \"roleName\" : [ \"普通管理员\" ],\n  \"roleKey\" : [ \"commonAdmin\" ],\n  \"dataScope\" : [ \"2\" ],\n  \"deptIds\" : [ \"\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:13:40'),(157,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'ry','测试部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"100\" ],\n  \"roleName\" : [ \"普通管理员\" ],\n  \"roleKey\" : [ \"commonAdmin\" ],\n  \"roleSort\" : [ \"3\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2005,1,2000,2001,2004,2002,2003,101,1007,1008,1009,1010,1011,100,1000,1001,1002,1003,1004,1005,1006,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:14:00'),(158,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'ry','测试部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"100\" ],\n  \"roleName\" : [ \"普通管理员\" ],\n  \"roleKey\" : [ \"commonAdmin\" ],\n  \"roleSort\" : [ \"3\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,2000,2001,2004,2002,2003,101,1007,1008,1009,1010,1011,100,1000,1001,1002,1003,1004,1005,1006,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:14:07'),(159,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'ry','测试部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2005\" ],\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物信息\" ],\n  \"url\" : [ \"/user/pet/petInfo\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"user:pet:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 14:30:48'),(160,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'ry','测试部门','/system/role/authDataScope','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"100\" ],\n  \"roleName\" : [ \"普通管理员\" ],\n  \"roleKey\" : [ \"commonAdmin\" ],\n  \"dataScope\" : [ \"1\" ],\n  \"deptIds\" : [ \"\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 16:03:12'),(161,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'ry','测试部门','/system/role/authDataScope','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"dataScope\" : [ \"1\" ],\n  \"deptIds\" : [ \"\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 16:03:43'),(162,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'ry','测试部门','/system/role/authDataScope','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"100\" ],\n  \"roleName\" : [ \"普通管理员\" ],\n  \"roleKey\" : [ \"commonAdmin\" ],\n  \"dataScope\" : [ \"2\" ],\n  \"deptIds\" : [ \"\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 16:20:06'),(163,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'ry','测试部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"基础服务\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:10:49'),(164,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"基础服务\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:13:21'),(165,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2005\" ],\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"宠物信息\" ],\n  \"url\" : [ \"/user/pet/petInfo\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"user:pet:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:13:38'),(166,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"2007\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物信息\" ],\n  \"url\" : [ \"/user/pet/petInfo\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"user:pet:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:15:32'),(167,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2005','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"菜单已分配,不允许删除\",\n  \"code\" : 301\n}',0,NULL,'2019-12-18 17:15:38'),(168,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:15:51'),(169,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/system/menu/remove/2005','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:16:03'),(170,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"2007,2008\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:16:16'),(171,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"100\" ],\n  \"roleName\" : [ \"普通管理员\" ],\n  \"roleKey\" : [ \"commonAdmin\" ],\n  \"roleSort\" : [ \"3\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,2000,2001,2004,2002,2003,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:16:21'),(172,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"2007,2008,3,113,114,1057,1058,1059,1060,1061,115\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:17:41'),(173,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"2007,2008\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-18 17:25:48'),(174,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2007\" ],\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"基础服务\" ],\n  \"url\" : [ \"#\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"fa fa-reorder\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 09:23:31'),(175,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"领养管理\" ],\n  \"url\" : [ \"/system/adpotInfo\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:adopt:view\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 10:59:16'),(176,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"101\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"角色管理\" ],\n  \"url\" : [ \"/system/role\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:role:view\" ],\n  \"orderNum\" : [ \"3\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 10:59:41'),(177,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2009\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物领养管理\" ],\n  \"url\" : [ \"/system/adpotInfo\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:adopt:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 11:00:07'),(178,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2009\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物领养管理\" ],\n  \"url\" : [ \"/system/applyadpot\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:adopt:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 11:00:28'),(179,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2009\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物领养管理\" ],\n  \"url\" : [ \"/system/applyAdopt\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:adopt:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 11:40:12'),(180,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()','POST',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\n  \"userId\" : [ \"100\" ],\n  \"deptId\" : [ \"105\" ],\n  \"userName\" : [ \"爱心市民\" ],\n  \"dept.deptName\" : [ \"测试部门\" ],\n  \"phonenumber\" : [ \"13422212222\" ],\n  \"email\" : [ \"1026320617@qq.com\" ],\n  \"loginName\" : [ \"user\" ],\n  \"sex\" : [ \"0\" ],\n  \"role\" : [ \"2\" ],\n  \"remark\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"2\" ],\n  \"postIds\" : [ \"4\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 15:32:33'),(181,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"106\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"参数设置\" ],\n  \"url\" : [ \"/system/config\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:config:view\" ],\n  \"orderNum\" : [ \"7\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"1\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 15:41:30'),(182,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"107\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"通知公告\" ],\n  \"url\" : [ \"/system/notice\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:notice:view\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"1\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 15:41:40'),(183,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"104\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"岗位管理\" ],\n  \"url\" : [ \"/system/post\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:post:view\" ],\n  \"orderNum\" : [ \"5\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"1\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 15:41:56'),(184,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"103\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"部门管理\" ],\n  \"url\" : [ \"/system/dept\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:dept:view\" ],\n  \"orderNum\" : [ \"4\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"1\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-19 15:42:04'),(185,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"2007\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"申请寄养\" ],\n  \"url\" : [ \"/user/pet/applyfost\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"user:pet:fost\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-20 09:18:18'),(186,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"2007,2008,2010\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-20 09:18:29'),(187,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物寄养管理\" ],\n  \"url\" : [ \"/system/applyFost\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:fost:view\" ],\n  \"orderNum\" : [ \"3\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-20 11:14:42'),(188,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2011\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"宠物寄养管理\" ],\n  \"url\" : [ \"/system/applyFost\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:fost:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-20 11:14:58'),(189,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"2007\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"给驿站留言\" ],\n  \"url\" : [ \"/user/leaveMsg\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"4\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-20 13:32:17'),(190,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"2007,2008,2010,2012\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-20 13:35:42'),(191,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"2012\" ],\n  \"parentId\" : [ \"2007\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"给驿站留言\" ],\n  \"url\" : [ \"/user/leaveMsg\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"user:leaveMsg:view\" ],\n  \"orderNum\" : [ \"4\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-20 14:45:00'),(192,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"2007,2008,2010,2012\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-20 14:46:34'),(193,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"留言管理\" ],\n  \"url\" : [ \"/system/leaveMsg\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:leaveMsg:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-20 15:36:03'),(194,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"捐赠管理\" ],\n  \"url\" : [ \"/system/pet/donate\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:donate:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-21 09:32:08'),(195,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"2007\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"捐赠宠物\" ],\n  \"url\" : [ \"/user/pet/donate\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"user:donate:view\" ],\n  \"orderNum\" : [ \"4\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-21 16:13:37'),(196,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"2007,2008,2010,2012,2015\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-21 16:15:18'),(197,'宠物管理',1,'com.ruoyi.web.controller.system.SysPetController.remove()','POST',1,'admin','研发部门','/system/pet/remove','127.0.0.1','内网IP','{\n  \"ids\" : [ \"b6a815ea22e711ea823e91afbb9bd661\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-21 19:55:10'),(198,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()','GET',1,'admin','研发部门','/system/user/resetPwd/2','127.0.0.1','内网IP','{ }','\"system/user/resetPwd\"',0,NULL,'2020-02-17 14:18:51');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_pet`
--

DROP TABLE IF EXISTS `sys_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_pet` (
  `id` varchar(36) NOT NULL COMMENT '宠物id',
  `name` varchar(255) DEFAULT NULL COMMENT '宠物名称',
  `type` varchar(255) DEFAULT NULL COMMENT '宠物类型',
  `create_time` datetime DEFAULT NULL COMMENT '入站时间',
  `adoptStatu` int(11) DEFAULT NULL COMMENT '领养状态（0表示未被领养 1表示已被领养）',
  `fostStatu` int(11) DEFAULT NULL COMMENT '是否为寄养',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `imageUrl` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `createBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updateBy` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` varchar(255) DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_pet`
--

LOCK TABLES `sys_pet` WRITE;
/*!40000 ALTER TABLE `sys_pet` DISABLE KEYS */;
INSERT INTO `sys_pet` VALUES ('1','二哈','雪橇犬','2019-12-16 14:36:46',0,0,1,'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576490779740&di=1ab8905079727e05e66db218b93b96cb&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FgDocjyIE%3DrAKuSnFNZbsZKpLVpRicfdP0hKbQbN1ZUPWT1523430130235.jpg','ruoyi','admin','2019-12-19 13:46:56','这是一只二哈','0'),('2','阿拉斯加犬','雪橇犬','2019-12-16 16:47:30',0,0,1,'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3834139921,1086274215&fm=173&app=49&f=JPEG?w=634&h=419&s=23A3DA05428754F198B9147D03008073','ruoyi','admin','2019-12-19 13:46:56','这是雪橇三傻之一','0'),('25e45d8c22e911ea823e91afbb9bd661','二哈哈哈','雪橇犬','2019-12-20 13:25:35',0,1,1,'http://127.0.0.1:8889/profile/upload/2019/12/20/c59c2724fe4dd2a346ad5b66f01fc76f.jpeg','admin',NULL,'2019-12-20 13:25:35','1231','0'),('26b56306214411eaab5a9a7da1b39bee','萨摩','雪橇犬','2019-12-18 11:11:58',1,0,1,'http://127.0.0.1:8889/profile/upload/2019/12/18/989bf7f479d3871ef1310ed1c281d977.jpeg','admin','admin','2019-12-19 14:29:46','','0'),('3ef96e7223e611eaaef9a7371ade0b99','sasd','asd','2019-12-21 19:37:19',0,0,1,'http://127.0.0.1:8889/profile/upload/2019/12/21/0c759bc6b6a574d626405f4615c1e90b.jpeg','admin','admin','2019-12-21 19:37:19','123123','0'),('4e1c7b2020a711ea972d02c5d9ef22d8','ff','ww','2019-12-17 16:29:13',0,0,1,'http://127.0.0.1:8889/profile/upload/2019/12/17/70790eb4e84a0aa1afaabe1e319e7e99.jpeg','admin','admin','2019-12-19 13:46:56','w','2'),('64ddcd0020a211ea972d02c5d9ef22d8','2','ww','2019-12-17 15:54:04',0,0,1,'http://127.0.0.1:8889/profile/upload/2019/12/17/5bf8fbe586601e31f45abc239d66350a.jpeg','admin','admin','2019-12-19 13:46:56','sd','2'),('977bcda223e511eaaef9a7371ade0b99','萨摩犬','雪橇犬','2019-12-21 19:32:38',0,1,1,'http://127.0.0.1:8889/profile/upload/2019/12/21/ca1bb2c4bd34efae381f6e816f28b545.jpeg','admin','admin','2019-12-21 19:32:38','111','0'),('a140cb5a209611ea972d02c5d9ef22d8','w','ww','2019-12-17 14:29:51',0,0,1,'http://127.0.0.1:8889/profile/upload/2019/12/17/cfd2e4890b693a3d6e7ef1eaedfc3253.jpeg','admin','admin','2019-12-19 13:46:56','w','0'),('b6a815ea22e711ea823e91afbb9bd661','12','12','2019-12-20 13:15:19',0,1,1,'http://127.0.0.1:8889/profile/upload/2019/12/20/a787df206b2bba9255eea8276327348b.jpeg','admin',NULL,NULL,'12','2');
/*!40000 ALTER TABLE `sys_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_pet_copy1`
--

DROP TABLE IF EXISTS `sys_pet_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_pet_copy1` (
  `id` varchar(36) NOT NULL COMMENT '宠物id',
  `name` varchar(255) DEFAULT NULL COMMENT '宠物名称',
  `type` varchar(255) DEFAULT NULL COMMENT '宠物类型',
  `create_time` datetime DEFAULT NULL COMMENT '入站时间',
  `adoptStatu` int(11) DEFAULT NULL COMMENT '领养状态（0表示未被领养 1表示已被领养）',
  `fostStatu` int(11) DEFAULT NULL COMMENT '是否为寄养',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `imageUrl` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `createBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updateBy` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` varchar(255) DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_pet_copy1`
--

LOCK TABLES `sys_pet_copy1` WRITE;
/*!40000 ALTER TABLE `sys_pet_copy1` DISABLE KEYS */;
INSERT INTO `sys_pet_copy1` VALUES ('1','二哈','雪橇犬','2019-12-16 14:36:46',0,0,1,'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576490779740&di=1ab8905079727e05e66db218b93b96cb&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FgDocjyIE%3DrAKuSnFNZbsZKpLVpRicfdP0hKbQbN1ZUPWT1523430130235.jpg','ruoyi','admin','2019-12-19 13:46:56','这是一只二哈','0'),('2','阿拉斯加犬','雪橇犬','2019-12-16 16:47:30',0,0,1,'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3834139921,1086274215&fm=173&app=49&f=JPEG?w=634&h=419&s=23A3DA05428754F198B9147D03008073','ruoyi','admin','2019-12-19 13:46:56','这是雪橇三傻之一','0'),('25e45d8c22e911ea823e91afbb9bd661','二哈哈哈','雪橇犬','2019-12-20 13:25:35',0,1,1,'http://127.0.0.1:8889/profile/upload/2019/12/20/c59c2724fe4dd2a346ad5b66f01fc76f.jpeg','admin',NULL,'2019-12-20 13:25:35','1231','0'),('26b56306214411eaab5a9a7da1b39bee','萨摩','雪橇犬','2019-12-18 11:11:58',1,0,1,'http://127.0.0.1:8889/profile/upload/2019/12/18/989bf7f479d3871ef1310ed1c281d977.jpeg','admin','admin','2019-12-19 14:29:46','','0'),('4e1c7b2020a711ea972d02c5d9ef22d8','ff','ww','2019-12-17 16:29:13',0,0,1,'http://127.0.0.1:8889/profile/upload/2019/12/17/70790eb4e84a0aa1afaabe1e319e7e99.jpeg','admin','admin','2019-12-19 13:46:56','w','2'),('64ddcd0020a211ea972d02c5d9ef22d8','2','ww','2019-12-17 15:54:04',0,0,1,'http://127.0.0.1:8889/profile/upload/2019/12/17/5bf8fbe586601e31f45abc239d66350a.jpeg','admin','admin','2019-12-19 13:46:56','sd','2'),('a140cb5a209611ea972d02c5d9ef22d8','w','ww','2019-12-17 14:29:51',0,0,1,'http://127.0.0.1:8889/profile/upload/2019/12/17/cfd2e4890b693a3d6e7ef1eaedfc3253.jpeg','admin','admin','2019-12-19 13:46:56','w','0'),('b6a815ea22e711ea823e91afbb9bd661','12','12','2019-12-20 13:15:19',0,1,1,'http://127.0.0.1:8889/profile/upload/2019/12/20/a787df206b2bba9255eea8276327348b.jpeg','admin',NULL,NULL,'12','0');
/*!40000 ALTER TABLE `sys_pet_copy1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(4,'user','普通员工',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'普通角色','common',2,'1','0','0','admin','2018-03-16 11:33:00','admin','2019-12-21 16:15:18','普通角色'),(100,'普通管理员','commonAdmin',3,'2','0','0','admin','2019-12-18 14:05:57','admin','2019-12-18 17:16:21','');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,2007),(2,2008),(2,2010),(2,2012),(2,2015),(100,1),(100,2),(100,3),(100,100),(100,101),(100,102),(100,103),(100,104),(100,105),(100,106),(100,107),(100,108),(100,109),(100,110),(100,111),(100,112),(100,113),(100,114),(100,115),(100,500),(100,501),(100,1000),(100,1001),(100,1002),(100,1003),(100,1004),(100,1005),(100,1006),(100,1007),(100,1008),(100,1009),(100,1010),(100,1011),(100,1012),(100,1013),(100,1014),(100,1015),(100,1016),(100,1017),(100,1018),(100,1019),(100,1020),(100,1021),(100,1022),(100,1023),(100,1024),(100,1025),(100,1026),(100,1027),(100,1028),(100,1029),(100,1030),(100,1031),(100,1032),(100,1033),(100,1034),(100,1035),(100,1036),(100,1037),(100,1038),(100,1039),(100,1040),(100,1041),(100,1042),(100,1043),(100,1044),(100,1045),(100,1046),(100,1047),(100,1048),(100,1049),(100,1050),(100,1051),(100,1052),(100,1053),(100,1054),(100,1055),(100,1056),(100,1057),(100,1058),(100,1059),(100,1060),(100,1061),(100,2000),(100,2001),(100,2002),(100,2003),(100,2004);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2020-02-17 15:32:14','admin','2018-03-16 11:33:00','ry','2020-02-17 15:32:13','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','ce8a6bff0cfb7c927f7a3ab41822e6a6','0e17b7','0','0','127.0.0.1','2020-02-17 15:33:50','admin','2018-03-16 11:33:00','ry','2020-02-17 15:33:50','测试员'),(100,105,'user','爱心市民','00','1026320617@qq.com','13422212222','0','','fe5a799a8a2e6d2974dd753614f19b6d','ea52aa','0','0','127.0.0.1','2019-12-21 19:36:40','admin','2019-12-18 13:12:01','admin','2019-12-21 19:36:39','');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('c8f29bb4-cb0e-4531-a096-833059e825fb','ry','测试部门','127.0.0.1','内网IP','Chrome 8','Windows 10','on_line','2020-02-17 15:33:41','2020-02-17 15:33:50',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2),(100,4);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2),(2,100),(100,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_leavemsg`
--

DROP TABLE IF EXISTS `user_leavemsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_leavemsg` (
  `id` varchar(36) NOT NULL COMMENT '留言id',
  `uId` int(11) DEFAULT NULL COMMENT '留言者id',
  `msg` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `create_time` datetime DEFAULT NULL COMMENT '留言时间',
  `createBy` varchar(255) DEFAULT NULL COMMENT '留言人用户名',
  `replayStatu` int(255) DEFAULT NULL COMMENT '回复状态（0为未回复 1 为有回复）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_leavemsg`
--

LOCK TABLES `user_leavemsg` WRITE;
/*!40000 ALTER TABLE `user_leavemsg` DISABLE KEYS */;
INSERT INTO `user_leavemsg` VALUES ('0348d84622fa11ea823e91afbb9bd661',100,'sdasd','2019-12-20 15:26:18','爱上',1),('5b7db21623ae11eaaef9a7371ade0b99',100,'sd','2019-12-21 12:57:15','sd',1),('e0bc5df5515711ea8162a0510b8f993f',2,'是','2020-02-17 15:34:06','是',0);
/*!40000 ALTER TABLE `user_leavemsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_leavemsg_reply`
--

DROP TABLE IF EXISTS `user_leavemsg_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_leavemsg_reply` (
  `id` varchar(36) NOT NULL COMMENT '回复留言id',
  `msgId` varchar(36) DEFAULT NULL COMMENT '回复的那条留言的id',
  `replyTime` datetime DEFAULT NULL COMMENT '回复时间',
  `replayerId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复者id',
  `replayName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复者用户名',
  `msg` varchar(255) DEFAULT NULL COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_leavemsg_reply`
--

LOCK TABLES `user_leavemsg_reply` WRITE;
/*!40000 ALTER TABLE `user_leavemsg_reply` DISABLE KEYS */;
INSERT INTO `user_leavemsg_reply` VALUES ('047217fa23a911eaaef9a7371ade0b99','0348d84622fa11ea823e91afbb9bd661','2019-12-21 12:19:02','1','admin','hello啊ss'),('1d5e933023ac11eaaef9a7371ade0b99','0348d84622fa11ea823e91afbb9bd661','2019-12-21 12:41:12','100','user','sss'),('633e75bc23ae11eaaef9a7371ade0b99','5b7db21623ae11eaaef9a7371ade0b99','2019-12-21 12:57:28','1','admin','hello啊'),('e2d4d8c023a911eaaef9a7371ade0b99','0348d84622fa11ea823e91afbb9bd661','2019-12-21 12:25:15','1','admin','as'),('fe19222823a211eaaef9a7371ade0b99','0348d84622fa11ea823e91afbb9bd661','2019-12-21 11:35:54','1','admin','hello啊');
/*!40000 ALTER TABLE `user_leavemsg_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pet_apply`
--

DROP TABLE IF EXISTS `user_pet_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_pet_apply` (
  `id` varchar(36) NOT NULL,
  `uId` bigint(30) DEFAULT NULL COMMENT '申请人Id',
  `pId` varchar(36) DEFAULT NULL COMMENT '宠物id',
  `confirm` int(30) DEFAULT NULL COMMENT '是否同意申请（0表示暂未处理  1 同意 2 不同意）',
  `create_time` datetime DEFAULT NULL COMMENT '申请时间',
  `update_time` datetime DEFAULT NULL COMMENT '处理时间',
  `updateBy` varchar(36) DEFAULT NULL COMMENT '处理人',
  `del_flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '逻辑删除 0 表示未删除 2表示删除 ',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pet_apply`
--

LOCK TABLES `user_pet_apply` WRITE;
/*!40000 ALTER TABLE `user_pet_apply` DISABLE KEYS */;
INSERT INTO `user_pet_apply` VALUES ('3f7edca0222511ea98541eb84221e001',100,'26b56306214411eaab5a9a7da1b39bee',1,'2019-12-19 14:03:16','2019-12-19 14:29:46','admin','0','sss');
/*!40000 ALTER TABLE `user_pet_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pet_applyfost`
--

DROP TABLE IF EXISTS `user_pet_applyfost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_pet_applyfost` (
  `id` varchar(36) NOT NULL COMMENT '宠物id',
  `name` varchar(255) DEFAULT NULL COMMENT '宠物名称',
  `type` varchar(255) DEFAULT NULL COMMENT '宠物类型',
  `create_time` datetime DEFAULT NULL COMMENT '入站时间',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `imageUrl` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `createBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updateBy` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` varchar(255) DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  `confirm` int(11) DEFAULT NULL COMMENT '申请状态 0 待处理 1 同意寄养',
  `uId` bigint(36) DEFAULT NULL COMMENT '用户id',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pet_applyfost`
--

LOCK TABLES `user_pet_applyfost` WRITE;
/*!40000 ALTER TABLE `user_pet_applyfost` DISABLE KEYS */;
INSERT INTO `user_pet_applyfost` VALUES ('2a3b437e22e811ea823e91afbb9bd661','二哈哈哈','雪橇犬','2019-12-20 13:18:32',1,'http://127.0.0.1:8889/profile/upload/2019/12/20/c59c2724fe4dd2a346ad5b66f01fc76f.jpeg','user','admin','2019-12-20 13:25:35','1231','0',1,100,'10086'),('647af0c822d611ea823e91afbb9bd661','12','12','2019-12-20 11:11:19',1,'http://127.0.0.1:8889/profile/upload/2019/12/20/a787df206b2bba9255eea8276327348b.jpeg','user','admin','2019-12-20 13:15:19','12','0',1,100,'10086');
/*!40000 ALTER TABLE `user_pet_applyfost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pet_donate`
--

DROP TABLE IF EXISTS `user_pet_donate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_pet_donate` (
  `id` varchar(36) NOT NULL COMMENT '宠物id',
  `name` varchar(255) DEFAULT NULL COMMENT '宠物名称',
  `type` varchar(255) DEFAULT NULL COMMENT '宠物类型',
  `create_time` datetime DEFAULT NULL COMMENT '入站时间',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `imageUrl` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `createBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updateBy` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` varchar(255) DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  `confirm` int(11) DEFAULT NULL COMMENT '申请状态 0 待处理 1 同意寄养',
  `uId` bigint(36) DEFAULT NULL COMMENT '用户id',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pet_donate`
--

LOCK TABLES `user_pet_donate` WRITE;
/*!40000 ALTER TABLE `user_pet_donate` DISABLE KEYS */;
INSERT INTO `user_pet_donate` VALUES ('377761ea23e611eaaef9a7371ade0b99','sasd','asd','2019-12-21 19:37:07',1,'http://127.0.0.1:8889/profile/upload/2019/12/21/0c759bc6b6a574d626405f4615c1e90b.jpeg','user','admin','2019-12-21 19:37:19','123123','0',1,100,'111121212121'),('44e774da23d911eaaef9a7371ade0b99','萨摩犬','雪橇犬','2019-12-21 18:54:52',1,'http://127.0.0.1:8889/profile/upload/2019/12/21/ca1bb2c4bd34efae381f6e816f28b545.jpeg','user','admin','2019-12-21 19:32:38','111','0',1,100,'1000086');
/*!40000 ALTER TABLE `user_pet_donate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_pet_applyadopt`
--

DROP TABLE IF EXISTS `v_pet_applyadopt`;
/*!50001 DROP VIEW IF EXISTS `v_pet_applyadopt`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pet_applyadopt` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `type`,
 1 AS `sex`,
 1 AS `petremark`,
 1 AS `petId`,
 1 AS `applyName`,
 1 AS `applyremark`,
 1 AS `create_time`,
 1 AS `update_time`,
 1 AS `updateBy`,
 1 AS `confirm`,
 1 AS `del_flag`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pet_applyfost`
--

DROP TABLE IF EXISTS `v_pet_applyfost`;
/*!50001 DROP VIEW IF EXISTS `v_pet_applyfost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pet_applyfost` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `type`,
 1 AS `sex`,
 1 AS `petremark`,
 1 AS `applyName`,
 1 AS `create_time`,
 1 AS `update_time`,
 1 AS `updateBy`,
 1 AS `confirm`,
 1 AS `del_flag`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pet_myapplyfostview`
--

DROP TABLE IF EXISTS `v_pet_myapplyfostview`;
/*!50001 DROP VIEW IF EXISTS `v_pet_myapplyfostview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pet_myapplyfostview` AS SELECT 
 1 AS `petName`,
 1 AS `type`,
 1 AS `sex`,
 1 AS `createTime`,
 1 AS `confirm`,
 1 AS `uId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pet_myapplyview`
--

DROP TABLE IF EXISTS `v_pet_myapplyview`;
/*!50001 DROP VIEW IF EXISTS `v_pet_myapplyview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pet_myapplyview` AS SELECT 
 1 AS `petName`,
 1 AS `type`,
 1 AS `sex`,
 1 AS `createTime`,
 1 AS `confirm`,
 1 AS `uId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pet_systemdonateview`
--

DROP TABLE IF EXISTS `v_pet_systemdonateview`;
/*!50001 DROP VIEW IF EXISTS `v_pet_systemdonateview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pet_systemdonateview` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `type`,
 1 AS `sex`,
 1 AS `petremark`,
 1 AS `applyName`,
 1 AS `create_time`,
 1 AS `update_time`,
 1 AS `updateBy`,
 1 AS `confirm`,
 1 AS `del_flag`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_pet_applyadopt`
--

/*!50001 DROP VIEW IF EXISTS `v_pet_applyadopt`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pet_applyadopt` AS select `user_pet_apply`.`id` AS `id`,`sys_pet`.`name` AS `name`,`sys_pet`.`type` AS `type`,`sys_pet`.`sex` AS `sex`,`sys_pet`.`remark` AS `petremark`,`sys_pet`.`id` AS `petId`,`sys_user`.`user_name` AS `applyName`,`user_pet_apply`.`remark` AS `applyremark`,`user_pet_apply`.`create_time` AS `create_time`,`user_pet_apply`.`update_time` AS `update_time`,`user_pet_apply`.`updateBy` AS `updateBy`,`user_pet_apply`.`confirm` AS `confirm`,`user_pet_apply`.`del_flag` AS `del_flag` from ((`user_pet_apply` left join `sys_user` on((`user_pet_apply`.`uId` = `sys_user`.`user_id`))) left join `sys_pet` on((`sys_pet`.`id` = `user_pet_apply`.`pId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pet_applyfost`
--

/*!50001 DROP VIEW IF EXISTS `v_pet_applyfost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pet_applyfost` AS select `user_pet_applyfost`.`id` AS `id`,`user_pet_applyfost`.`name` AS `name`,`user_pet_applyfost`.`type` AS `type`,`user_pet_applyfost`.`sex` AS `sex`,`user_pet_applyfost`.`remark` AS `petremark`,`sys_user`.`user_name` AS `applyName`,`user_pet_applyfost`.`create_time` AS `create_time`,`user_pet_applyfost`.`update_time` AS `update_time`,`user_pet_applyfost`.`updateBy` AS `updateBy`,`user_pet_applyfost`.`confirm` AS `confirm`,`user_pet_applyfost`.`del_flag` AS `del_flag`,`user_pet_applyfost`.`phone` AS `phone` from (`user_pet_applyfost` left join `sys_user` on((`user_pet_applyfost`.`uId` = `sys_user`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pet_myapplyfostview`
--

/*!50001 DROP VIEW IF EXISTS `v_pet_myapplyfostview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pet_myapplyfostview` AS select `user_pet_applyfost`.`name` AS `petName`,`user_pet_applyfost`.`type` AS `type`,`user_pet_applyfost`.`sex` AS `sex`,`user_pet_applyfost`.`create_time` AS `createTime`,`user_pet_applyfost`.`confirm` AS `confirm`,`user_pet_applyfost`.`uId` AS `uId` from (`user_pet_applyfost` left join `sys_user` on((`sys_user`.`user_id` = `user_pet_applyfost`.`uId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pet_myapplyview`
--

/*!50001 DROP VIEW IF EXISTS `v_pet_myapplyview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pet_myapplyview` AS select `sys_pet`.`name` AS `petName`,`sys_pet`.`type` AS `type`,`sys_pet`.`sex` AS `sex`,`user_pet_apply`.`create_time` AS `createTime`,`user_pet_apply`.`confirm` AS `confirm`,`user_pet_apply`.`uId` AS `uId` from ((`user_pet_apply` left join `sys_pet` on((`user_pet_apply`.`pId` = `sys_pet`.`id`))) left join `sys_user` on((`sys_user`.`user_id` = `user_pet_apply`.`uId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pet_systemdonateview`
--

/*!50001 DROP VIEW IF EXISTS `v_pet_systemdonateview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pet_systemdonateview` AS select `user_pet_donate`.`id` AS `id`,`user_pet_donate`.`name` AS `name`,`user_pet_donate`.`type` AS `type`,`user_pet_donate`.`sex` AS `sex`,`user_pet_donate`.`remark` AS `petremark`,`sys_user`.`user_name` AS `applyName`,`user_pet_donate`.`create_time` AS `create_time`,`user_pet_donate`.`update_time` AS `update_time`,`user_pet_donate`.`updateBy` AS `updateBy`,`user_pet_donate`.`confirm` AS `confirm`,`user_pet_donate`.`del_flag` AS `del_flag`,`user_pet_donate`.`phone` AS `phone` from (`user_pet_donate` left join `sys_user` on((`user_pet_donate`.`uId` = `sys_user`.`user_id`))) */;
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

-- Dump completed on 2020-02-17 15:43:05
